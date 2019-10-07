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

# This is so that re-compiling within the same directory produces the same
# result from Quartus.
post_message "Deleting incremental_db to ensure imported partition is only used"
file delete -force incremental_db


# Make sure OpenCL SDK installation exists
post_message "Checking for OpenCL SDK installation, environment should have INTELFPGAOCLSDKROOT defined"
if {[catch {set sdk_root $::env(INTELFPGAOCLSDKROOT)} result]} {
  post_message -type warning "OpenCL SDK installation not found.  Make sure INTELFPGAOCLSDKROOT is correctly set"
} else {
  post_message "INTELFPGAOCLSDKROOT=$::env(INTELFPGAOCLSDKROOT)"
}

# If for some reason system.qsys wasn't generated, generate it!
if { ! [file exists system/synthesis/system.v] } {
  post_message "Generating system.qsys system since system.v does not exist:"
  post_message "    ip-generate --component-file=system.qsys --file-set=QUARTUS_SYNTH --output-directory=system/synthesis --report-file=qip:system/synthesis/system.qip"
  qexec "ip-generate --component-file=system.qsys --file-set=QUARTUS_SYNTH --output-directory=system/synthesis --report-file=qip:system/synthesis/system.qip"
}

# copy over verilog files into Qsys generated system.qsys for CvP revision flow fixes
#file copy -force $sdk_root/ip/board/migrate/cvpupdatefix/altpcie_hip_256_pipen1b.v system/synthesis/submodules/altpcie_hip_256_pipen1b.v
#file copy -force $sdk_root/ip/board/migrate/cvpupdatefix/altpcie_sv_hip_ast_hwtcl.v system/synthesis/submodules/altpcie_sv_hip_ast_hwtcl.v
#file copy -force $sdk_root/ip/board/migrate/cvpupdatefix/cvp_update_reset.v system/synthesis/submodules/cvp_update_reset.v
#file copy -force $sdk_root/ip/board/migrate/cvpupdatefix/cvp_update_reset_zero.v system/synthesis/submodules/cvp_update_reset_zero.v

# Cvp revision or base revision
if { [string match [lindex $quartus(args) 2] "base" ] == 0 } {
  post_message "Compiling CvP!"
} else {
  post_message "Compiling Base!"
}
