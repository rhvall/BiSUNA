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
    

#**************************************************************
# Create Generated Clock
#**************************************************************
derive_pll_clocks

#**************************************************************
# Set Clock Uncertainty
#**************************************************************
derive_clock_uncertainty

#**************************************************************
# Set Clock Groups
#**************************************************************
set_clock_groups -asynchronous \
-group { \
   kernel_pll_refclk \
} -group { \
   pll_ref_clk \
} -group { \
   config_clk \
} -group { \
   pcie_refclk_p \
   [get_clocks {system_inst|board|pcie|*}] \
   [get_clocks {system_inst|board|pcie|c5_hip_ast|altpcie_av_hip_ast_hwtcl|altpcie_av_hip_128bit_atom|g_cavhip.arriav_hd_altpe2_hip_top|coreclkout}] \
} -group { \
   [get_clocks {system_inst|board|acl_kernel_clk|kernel_pll|*}] \
} -group { \
   altera_reserved_tck \
} -group { \
    ddr3a_clk_p \
    ddr3a_clk_n \
    ddr3a_dqs_p[0]_IN \
    ddr3a_dqs_p[0]_OUT \
    ddr3a_dqs_p[1]_IN \
    ddr3a_dqs_p[1]_OUT \
    ddr3a_dqs_p[2]_IN \
    ddr3a_dqs_p[2]_OUT \
    ddr3a_dqs_p[3]_IN \
    ddr3a_dqs_p[3]_OUT \
    ddr3a_dqs_n[0]_OUT \
    ddr3a_dqs_n[1]_OUT \
    ddr3a_dqs_n[2]_OUT \
    ddr3a_dqs_n[3]_OUT \
    [get_clocks {system_inst|board|ddr3a|*}] \
}

#**************************************************************
# Set False Path
#**************************************************************

# Cut path to pcie npor - this signal is asynchronous
#set_false_path -from system:system_inst|system_board:board|sw_reset:por_reset_counter|sw_reset_n_out -to system:system_inst|system_board:board|altpcie_av_hip_ast_hwtcl:pcie*

# Make the kernel reset multicycle
set_multicycle_path -to * -setup 2 -from {system:system_inst|system_board:board|system_board_kernel_interface:kernel_interface|altera_reset_controller:reset_controller_sw|altera_reset_synchronizer:alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out}
set_multicycle_path -to * -hold 1 -from {system:system_inst|system_board:board|system_board_kernel_interface:kernel_interface|altera_reset_controller:reset_controller_sw|altera_reset_synchronizer:alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out}

#Relax Kernel constraints - only do this during base revision compiles
if {! [string equal $::TimeQuestInfo(nameofexecutable) "quartus_map"]} {
# Case 196028 can't call get_current_revision in parallel map

if { [get_current_revision] eq "base" } {

  post_message -type critical_warning "Compiling with slowed OpenCL Kernel clock.  This is to help achieve timing closure for board bringup."

  if {! [string equal $::TimeQuestInfo(nameofexecutable) "quartus_sta"]} {
    set kernel_keepers [get_keepers system_inst\|kernel_system\|*] 
    set_max_delay 5 -from $kernel_keepers -to $kernel_keepers
  }
}

}
