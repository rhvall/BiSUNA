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
# This .sbc file is created by Terasic Tool.
# Users are recommended to modify this file to match users logic.
#**************************************************************

#**************************************************************
# Create Clock
#**************************************************************
derive_pll_clocks
derive_clock_uncertainty
create_clock -period 50MHz [get_ports kernel_pll_refclk]
create_clock -period 50MHz [get_ports pll_ref_clk]
create_clock -period 50MHz [get_ports config_clk]
create_clock -period 100MHz [get_ports pcie_refclk_p]


create_clock -name {altera_reserved_tck} -period 41.667 [get_ports { altera_reserved_tck }]
set_input_delay -clock altera_reserved_tck -clock_fall -max 5 [get_ports altera_reserved_tdi]
set_input_delay -clock altera_reserved_tck -clock_fall -max 5 [get_ports altera_reserved_tms]
set_output_delay -clock altera_reserved_tck 5 [get_ports altera_reserved_tdo]


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
}

#**************************************************************
# Set Clock Latency
#**************************************************************

#**************************************************************
# Set Input Delay
#**************************************************************

#**************************************************************
# Set Output Delay
#**************************************************************

#**************************************************************
# Set Multicycle Path
#**************************************************************

#**************************************************************
# Set Maximum Delay
#**************************************************************

#**************************************************************
# Set Minimum Delay
#**************************************************************

#**************************************************************
# Set Input Transition
#**************************************************************

#**************************************************************
# Set Load
#**************************************************************

#**************************************************************
# Set False Paths
#**************************************************************
set_false_path -from [get_ports {pcie_perstn}]
set_false_path -from [get_ports {cpu_resetn}]
set_false_path -to [get_ports {user_led[*]}]

set_false_path -from [get_clocks {*arriav_hd_altpe2_hip_top|coreclkout}] -to [get_clocks {*|pll0|pll_afi_clk}]
set_false_path -from [get_ports {*rs_hip|app_rstn}]
set_false_path -from [get_clocks {*arriav_hd_altpe2_hip_top|coreclkout}] -to [get_clocks {*|pll0|pll_avl_clk}]
set_false_path -from [get_clocks {*arriav_hd_altpe2_hip_top|coreclkout}] -to [get_clocks {*|pll0|pll_config_clk}]
set_false_path -from [get_clocks {config_clk}] -to [get_clocks {system_inst|board|pcie|c5_hip_ast|altpcie_av_hip_ast_hwtcl|altpcie_av_hip_128bit_atom|g_cavhip.arriav_hd_altpe2_hip_top|coreclkout}]
