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


# Required packages


##############################################################################
##############################       MAIN        #############################
##############################################################################


# Create the file "fpga.bin" with board-specific programming files.
# At host program runtime, when the device needs to be reprogrammed
# an in-memory buffer with the contents of this "fpga.bin" file will be
# given to the board-specific communication layer.
# The memory buffer will be aligned to 128 bytes.
#
# This script expects four arguments:
#  1. Name of the SOF file, typically "top.sof"
#  2. Name of the Core RBF file, typically "top.core.rbf"
#  3. Name of a text file containing hash of the FPGA periphery
#  4. Revision name being compiled, typically either "base" or "top"

# In this flow we create an ELF-formatted file with five sections.
# Section ".acl.sof" contains the contents of the SOF file.
# Section ".acl.core.rbf" contains the contents of the Core RBF file.
# Section ".acl.base_revision.rbf" with RBF from the *base* revision compile
# Section ".acl.periph.hash" - hash of the compiled periphery bitstream
# Section ".acl.compile_revision" - revision (base or top) that produced the AOCX

# Constants
set num_expected_args 4
set num_expected_file_args 3
set base_revision_name "base"
set base_compile_aocx_filename "base.aocx"
set base_rbf_filename "base.rbf"
set temp_fpga_bin "acl.temp.fpga.bin"
set temp_filename "acl.temp.section_extract.bin"
set revision_name_filename "revision.txt"
set board_qsys_filename "board.qsys"
set pcie_dev_id_filename "pcie_device_id.txt"

set prog "create_fpga_bin.tcl"
set outfile "fpga.bin"
post_message "Creating $outfile from with args: $argv"

set num_files 0
set file_sizes [list]
set files [list]

# Make sure OpenCL SDK installation exists
post_message "Checking for OpenCL SDK installation, environment should have INTELFPGAOCLSDKROOT defined"
if {[catch {set sdk_root $::env(INTELFPGAOCLSDKROOT)} result]} {
  post_message -type error "OpenCL SDK installation not found.  Make sure INTELFPGAOCLSDKROOT is correctly set"
  exit 2
} else {
  post_message "INTELFPGAOCLSDKROOT=$::env(INTELFPGAOCLSDKROOT)"
}

if { $argc != $num_expected_args } {
   post_message "$prog: Need exactly four arguments: a SOF file, a Core RBF file, a Periphery RBF hash file, and the revision name"
   exit 2
}

for {set i 0} {$i < $num_expected_file_args} {incr i} {
   set f [lindex $argv $i]

   if { [file exists $f] } {
     incr num_files
     lappend file_sizes [file size $f]
     lappend files $f
   }
}

set revision_name [lindex $argv 3]
post_message "$prog: Creating fpga.bin for compile revision name: $revision_name"

if { $num_files != $num_expected_file_args } {
   post_message "$prog: Need exactly three file arguments before the revision name: a SOF file, a Core RBF file, and a Periphery RBF hash file"
   exit 2
}
set sof_file [ lindex $files 0 ]
set core_rbf_file [ lindex $files 1 ]
set periph_rbf_hash [ lindex $files 2 ]

post_message "$prog: Input files: $files"
file delete $outfile

if {[catch {qexec "aocl binedit $outfile create"} res]} {
  post_message "$prog: Can't create device specific binary file fragment $outfile: $res"
  exit 2
}
if {[catch {qexec "aocl binedit $outfile add .acl.sof $sof_file"} res]} {
  post_message "$prog: Can't add SOF file $sof_file to $outfile: $res"
  exit 2
}
if {[catch {qexec "aocl binedit $outfile add .acl.core.rbf $core_rbf_file"} res]} {
  post_message "$prog: Can't add Core RBF file $core_rbf_file to $outfile: $res"
  exit 2
}

# Add full RBF to the fpga.bin.  The catch is that the full RBF *MUST* be a base
# revision compile, not a CvP compile.  This is to get around a silicon bug.
# As a result, we name the section .acl.base_revision.rbf.  The special name
# is to indicate that the rbf does not correspond to the compiled design, but
# instead to the base revision.  In a base revision compile, that compile's RBF
# is used.  During a CvP compile, the base revision files are extracted from
# base.aocx, which must have been generated as a base compile.
# Also add section .acl.base_revision.periph.hash.
# The base.aocx file must come from the same compile as the personax.  Otherwise,
# CvP failures will be seen after the periphery is replaced due to periph/core
# mismatches.
if { [string equal $revision_name $base_revision_name] }  {
  # Base revision compile, so populate the fpga.bin with base revision sections using THIS compile's output
  # This fpga.bin will become part of base.aocx for CvP revision compiles
  post_message "This is a base revision compile, so creating base sections of fpga.bin using THIS compile, not base.aocx"
  if { [file exists $base_rbf_filename] } {
    # Add base revision RBF to output fpga.bin file
    if {[catch {qexec "aocl binedit $outfile add .acl.base_revision.rbf $base_rbf_filename"} res]} {
      post_message "$prog: Can't add base revision RBF file $base_rbf_filename to $outfile: $res"
      exit 2
    }
  } else {
    post_message -type error "Couldn't find base compile RBF in current directory: $base_rbf_filename"
    exit 2
  }
  if {[catch {qexec "aocl binedit $outfile add .acl.periph.hash $periph_rbf_hash"} res]} {
    post_message "$prog: Can't add perihpery hash ($periph_rbf_hash) to $outfile: $res"
  }
} else {
  # Else not base compile, so grab base revision sections from base.aocx
  if { [file exists $base_compile_aocx_filename] } {
    file delete $temp_fpga_bin
    file delete $temp_filename
    # Extract fpga.bin from base.aocx
    if {[catch {qexec "aocl binedit $base_compile_aocx_filename get .acl.fpga.bin $temp_fpga_bin"} res]} {
      post_message "$prog: Can't extract base revision RBF section from $base_compile_aocx_filename to $temp_fpga_bin: $res"
      exit 2
    }
    # Extract base_revision rbf from fpga.bin
    if {[catch {qexec "aocl binedit $temp_fpga_bin get .acl.base_revision.rbf $temp_filename"} res]} {
      post_message "$prog: Can't extract base revision RBF section from $temp_fpga_bin to $temp_filename: $res"
      exit 2
    }
    # Add base revision RBF to output (design's) fpga.bin file
    if {[catch {qexec "aocl binedit $outfile add .acl.base_revision.rbf $temp_filename"} res]} {
      post_message "$prog: Can't add base revision RBF file $temp_filename to $outfile: $res"
      exit 2
    }
    file delete $temp_filename
    # Extract periphery_hash rbf from base.aocx
    if {[catch {qexec "aocl binedit $temp_fpga_bin get .acl.periph.hash $temp_filename"} res]} {
      post_message "$prog: Can't extract base revision periphery hash section from $temp_fpga_bin to $temp_filename: $res"
      exit 2
    }
    # Add base revision periphery hash to output (design's) fpga.bin file
    if {[catch {qexec "aocl binedit $outfile add .acl.base_revision.periph.hash $temp_filename"} res]} {
      post_message "$prog: Can't add base revision periphery hash file $temp_filename to $outfile: $res"
      exit 2
    }
    file delete $temp_fpga_bin
    file delete $temp_filename
  } else {
    post_message -type error "Couldn't find base compile AOCX: $base_compile_aocx_filename"
    exit 2
  }
}

# Add this design's periphery hash file as section to the fpga.bin
if {[catch {qexec "aocl binedit $outfile add .acl.periph.hash $periph_rbf_hash"} res]} {
  post_message "$prog: Can't add perihpery hash ($periph_rbf_hash) to $outfile: $res"
}

# Add compile revision name to the fpga.bin:
# 1. Create file with revision name
set revision_file [open $revision_name_filename "w"]
puts $revision_file $revision_name
close $revision_file
# 2. Add revision name to fpga.bin
if {[catch {qexec "aocl binedit $outfile add .acl.compile_revision $revision_name_filename"} res]} {
  post_message "$prog: Can't add compile revision name $revision_name_filename to $outfile: $res"
  exit 2
}

# Add pcie device id to the fpga.bin
if {[catch {qexec "$::env(QUARTUS_ROOTDIR)/sopc_builder/bin/qsys-script --script=scripts/get_pcie_device_id.tcl --system-file=$board_qsys_filename > $pcie_dev_id_filename"} res]} {
  post_message -type error "$prog: Can't get pcie device id from $board_qsys_filename : $res"
}
if {[catch {qexec "aocl binedit $outfile add .acl.pcie.dev_id $pcie_dev_id_filename"} res]} {
  post_message -type error "$prog: Can't add device id ($pcie_dev_id_filename) to $outfile: $res"
}

# For regtest tracking, embed periphery hash in the quartus log file.
# Otherwise we need to unzip files and run aocl binedit twice to extract the hash.
if { [file exists $periph_rbf_hash] } {
  set hashfile [open $periph_rbf_hash r]
  set hash [read $hashfile]
  close $hashfile
  post_message "Periphery hash: $hash"
}

post_message "$prog: Created $outfile with four sections"
