# (C) 1992-2017 Intel Corporation.                            
# Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
# and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
# and/or other countries. Other marks and brands may be claimed as the property  
# of others. See Trademarks on intel.com for full list of Intel trademarks or    
# the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
# Your use of Intel Corporation's design tools, logic functions and other        
# software and tools, and its AMPP partner logic functions, and any output       
# files any of the foregoing (including device programming or simulation         
# files), and any associated documentation or information are expressly subject  
# to the terms and conditions of the Altera Program License Subscription         
# Agreement, Intel MegaCore Function License Agreement, or other applicable      
# license agreement, including, without limitation, that your use is for the     
# sole purpose of programming logic devices manufactured by Intel and sold by    
# Intel or its authorized distributors.  Please refer to the applicable          
# agreement for further details.                                                 


package require ::quartus::flow
package require ::quartus::project
package require ::quartus::incremental_compilation

post_message "Running post-flow script"

set project_name UNKNOWN
set revision_name UNKNOWN

# Wrapper to call a script as a function
# Sourcing defines the function, making it available to call later.
source scripts/call_script_as_function.tcl

if { [llength $quartus(args) ] == 0 } {
  # If this script is run manually, just compile the default revision
  set qpf_files [glob -nocomplain *.qpf]

  if {[llength $qpf_files] == 0} {
    error "No QSF detected"
  } elseif {[llength $qpf_files] > 1} {
    post_message "Warning: More than one QSF detected. Picking the first one."
  }
  set qpf_file [lindex $qpf_files 0]
  set project_name [string range $qpf_file 0 [expr [string first . $qpf_file] - 1]]
  set revision_name [get_current_revision $project_name]
} else {
  set project_name [lindex $quartus(args) 1]
  set revision_name [lindex $quartus(args) 2]
}

post_message "Project name: $project_name"
post_message "Revision name: $revision_name"

project_open $project_name -revision $revision_name

# Generate CvP files - run before adjust_plls so that we can hash the unmodified periphery.
post_message "Generating CvP files - first stage (before adjusting PLLs)"
if {[catch {execute_module -tool cpf -args "-c $revision_name.sof $revision_name.rbf"} result]} {
  post_message -type error "Error generating CvP files - first stage! $result"
  exit 2
}

# Hash the periphery and then run PLL adjustment script (after hashing since adjust_plls changes periph rbf)
post_message "Running PLL adjustment script"
if {[catch {set sdk_root $::env(INTELFPGAOCLSDKROOT)} result]} {
  post_message -type error "OpenCL SDK installation not found.  Make sure INTELFPGAOCLSDKROOT is correctly set" -submsgs [list "Guaranteed timing flow not run - you may have timing failures on the kernel clock\n"]
} else { 

  # Hash the periphery to file $revision_name.periph_hash
  if {[file exists $revision_name.rbf]} {
    if {[catch {qexec "aocl hash $revision_name.rbf > $revision_name.periph_hash"} res]} {
      post_message "$prog: Can't hash RBF file : $revision_name.rbf : $res"
    }
  }

  # Create memory init file for the iface onchip_ram component.  It includes
  # a version number and the periphery hash string.
  # Critical: Create the MIF/HEX file before adjust_plls, since we piggyback
  # on adjust_pll's update_mif call.
  call_script_as_function scripts/create_hash_hex.tcl $revision_name.periph_hash

  source $::env(INTELFPGAOCLSDKROOT)/ip/board/bsp/adjust_plls.tcl
}

# Generate CvP files
post_message "Generating CvP files - second stage (after adjusting PLLs)"
if {[catch {execute_module -tool cpf -args "-c $revision_name.sof $revision_name.rbf"} result]} {
  post_message -type error "Error generating CvP files - second stage! $result"
  exit 2
}

# Generate fpga.bin used for reprogramming
post_message "Generating fpga.bin"
if {[catch { call_script_as_function scripts/create_fpga_bin.tcl $revision_name.sof $revision_name.rbf $revision_name.periph_hash $revision_name } res]} {
  post_message -type error "Error in create_fpga_bin.tcl! $res"
  exit 2
}

# Generate forward version compatible personax file only in base revision compile
if { [string match $revision_name "base" ] == 0 } {
  post_message "Compiling CvP revision -> not creating personax!"
} else {
  post_message "Compiling base revision -> creating personax!"
  export_persona -overwrite -partition Top
}
