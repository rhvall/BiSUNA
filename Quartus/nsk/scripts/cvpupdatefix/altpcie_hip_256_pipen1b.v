// (C) 1992-2017 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                 

// (C) 2001-2014 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License Subscription 
// Agreement, Altera MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings
// altera message_level Level1
// altera message_off 10034 10035 10036 10037 10230 10240 10030

(* altera_attribute = "-name ALLOW_CHILD_PARTITIONS off" *) module altpcie_hip_256_pipen1b # (

      parameter ACDS_V10=1,
      parameter MEM_CHECK=0,
      parameter USE_INTERNAL_250MHZ_PLL = 1,
      parameter use_config_bypass_hwtcl = 0,
      parameter pll_refclk_freq = "100 MHz", //legal value = "100 MHz", "125 MHz"
      parameter set_pld_clk_x1_625MHz = 0,
      parameter reconfig_to_xcvr_width = 350,
      parameter reconfig_from_xcvr_width = 230,
      parameter hip_reconfig = 0,
      parameter enable_pipe32_sim = 0, // When set enable simulation for HIP Pipe 32 bit interface across G1/G2/G3
      parameter enable_tl_only_sim = 0,
      parameter enable_pcisigtest = 0,

      parameter enable_slot_register = "false",
      parameter pcie_mode = "shared_mode",
      parameter bypass_cdc = "false",
      parameter enable_rx_buffer_checking = "false",
      parameter [3:0] single_rx_detect = 4'b0,
      parameter use_crc_forwarding = "false",
      parameter gen123_lane_rate_mode = "gen1",
      parameter lane_mask = "x4",
      parameter coreclkout_hip_phaseshift = "0 ps",
      parameter disable_link_x2_support = "false",
      parameter hip_hard_reset = "disable",
      parameter enable_power_on_rst_pulse = 0,
      parameter use_atx_pll = "true",
      parameter dis_paritychk = "enable",
      parameter wrong_device_id = "disable",
      parameter data_pack_rx = "disable",
      parameter ast_width = "rx_tx_64",
      parameter rx_sop_ctrl = "boundary_64",
      parameter tx_sop_ctrl = "boundary_64",
      parameter rx_ast_parity = "disable",
      parameter tx_ast_parity = "disable",
      parameter ltssm_1ms_timeout = "disable",
      parameter ltssm_freqlocked_check = "disable",
      parameter deskew_comma = "com_deskw",
      parameter [7:0] port_link_number = 8'b1,
      parameter [4:0] device_number = 5'b0,
      parameter bypass_clk_switch = "TRUE",
      parameter pipex1_debug_sel = "disable",
      parameter pclk_out_sel = "pclk",
      parameter [15:0] vendor_id = 16'b1000101110010,
      parameter [15:0] device_id = 16'b1,
      parameter [7:0] revision_id = 8'b1,
      parameter [23:0] class_code = 24'b111111110000000000000000,
      parameter [15:0] subsystem_vendor_id = 16'b1000101110010,
      parameter [15:0] subsystem_device_id = 16'b1,
      parameter no_soft_reset = "false",
      parameter [2:0] maximum_current = 3'b0,
      parameter d1_support = "false",
      parameter d2_support = "false",
      parameter d0_pme = "false",
      parameter d1_pme = "false",
      parameter d2_pme = "false",
      parameter d3_hot_pme = "false",
      parameter d3_cold_pme = "false",
      parameter use_aer = "false",
      parameter low_priority_vc = "single_vc",
      parameter disable_snoop_packet = "false",
      parameter max_payload_size = "payload_512",
      parameter surprise_down_error_support = "false",
      parameter dll_active_report_support = "false",
      parameter extend_tag_field = "false",
      parameter [2:0] endpoint_l0_latency = 3'b0,
      parameter [2:0] endpoint_l1_latency = 3'b0,
      parameter [2:0] indicator = 3'b111,
      parameter [1:0] slot_power_scale = 2'b0,
      parameter max_link_width = "x4",
      parameter enable_l0s_aspm = "true",
      parameter enable_l1_aspm = "false",
      parameter [52:0] retry_buffer_memory_settings  = 53'b0_1000_1011_0010_0001_0101_0010_0000_0101_1100_1010_0010_0110_0000,
      parameter [52:0] vc0_rx_buffer_memory_settings = 53'b0_1000_1011_0010_0001_0101_0010_0000_0101_1100_1010_0010_0110_0000,
      parameter [2:0] l1_exit_latency_sameclock = 3'b0,
      parameter [2:0] l1_exit_latency_diffclock = 3'b0,
      parameter [6:0] hot_plug_support = 7'b0,
      parameter [7:0] slot_power_limit = 8'b0,
      parameter [12:0] slot_number = 13'b0,
      parameter [7:0] diffclock_nfts_count = 8'b1000_0000,
      parameter [7:0] sameclock_nfts_count = 8'b1000_0000,
      parameter completion_timeout = "abcd",
      parameter enable_completion_timeout_disable = "true",
      parameter extended_tag_reset = "false",
      parameter ecrc_check_capable = "true",
      parameter ecrc_gen_capable = "true",
      parameter no_command_completed = "true",
      parameter msi_multi_message_capable = "count_4",
      parameter msi_64bit_addressing_capable = "true",
      parameter msi_masking_capable = "false",
      parameter msi_support = "true",
      parameter interrupt_pin = "inta",
      parameter enable_function_msix_support = "true",
      parameter [10:0] msix_table_size = 11'b0,
      parameter [2:0] msix_table_bir = 3'b0,
      parameter [28:0] msix_table_offset = 29'b0,
      parameter [2:0] msix_pba_bir = 3'b0,
      parameter [28:0] msix_pba_offset = 29'b0,
      parameter bridge_port_vga_enable = "false",
      parameter bridge_port_ssid_support = "false",
      parameter [15:0] ssvid = 16'b0,
      parameter [15:0] ssid = 16'b0,
      parameter [3:0] eie_before_nfts_count = 4'b100,
      parameter [7:0] gen2_diffclock_nfts_count = 8'b11111111,
      parameter [7:0] gen2_sameclock_nfts_count = 8'b11111111,
      parameter deemphasis_enable = "false",
      parameter pcie_spec_version = "v2",
      parameter [2:0] l0_exit_latency_sameclock = 3'b110,
      parameter [2:0] l0_exit_latency_diffclock = 3'b110,
      parameter rx_ei_l0s = "disable",
      parameter l2_async_logic = "enable",
      parameter aspm_config_management = "true",
      parameter atomic_op_routing = "false",
      parameter atomic_op_completer_32bit = "false",
      parameter atomic_op_completer_64bit = "false",
      parameter cas_completer_128bit = "false",
      parameter ltr_mechanism = "false",
      parameter tph_completer = "false",
      parameter extended_format_field = "false",
      parameter atomic_malformed = "false",
      parameter flr_capability = "true",
      parameter enable_adapter_half_rate_mode = "false",
      parameter vc0_clk_enable = "true",
      parameter register_pipe_signals = "false",
      parameter bar0_io_space = "false",
      parameter bar0_64bit_mem_space = "true",
      parameter bar0_prefetchable = "true",
      parameter [27:0] bar0_size_mask = 28'b1111111111111111111111111111,
      parameter bar1_io_space = "false",
      parameter bar1_64bit_mem_space = "false",
      parameter bar1_prefetchable = "false",
      parameter [27:0] bar1_size_mask = 28'b0,
      parameter bar2_io_space = "false",
      parameter bar2_64bit_mem_space = "false",
      parameter bar2_prefetchable = "false",
      parameter [27:0] bar2_size_mask = 28'b0,
      parameter bar3_io_space = "false",
      parameter bar3_64bit_mem_space = "false",
      parameter bar3_prefetchable = "false",
      parameter [27:0] bar3_size_mask = 28'b0,
      parameter bar4_io_space = "false",
      parameter bar4_64bit_mem_space = "false",
      parameter bar4_prefetchable = "false",
      parameter [27:0] bar4_size_mask = 28'b0,
      parameter bar5_io_space = "false",
      parameter bar5_64bit_mem_space = "false",
      parameter bar5_prefetchable = "false",
      parameter [27:0] bar5_size_mask = 28'b0,
      parameter [31:0]expansion_base_address_register = 32'h0,
      parameter io_window_addr_width = "window_32_bit",
      parameter prefetchable_mem_window_addr_width = "prefetch_32",
      parameter [10:0] skp_os_gen3_count = 11'h0,
      parameter [3:0] tx_cdc_almost_empty = 4'b101,
      parameter [3:0] rx_cdc_almost_full = 4'b1100,
      parameter [3:0] tx_cdc_almost_full = 4'b1100,
      parameter [7:0] rx_l0s_count_idl = 8'h0,
      parameter [3:0] cdc_dummy_insert_limit = 4'b1011,
      parameter [7:0] ei_delay_powerdown_count = 8'b1010,
      parameter [19:0] millisecond_cycle_count = 20'h0,
      parameter [10:0] skp_os_schedule_count = 11'h0,
      parameter [10:0] fc_init_timer = 11'b10000000000,
      parameter [4:0] l01_entry_latency = 5'b11111,
      parameter [4:0] flow_control_update_count = 5'b11110,
      parameter [7:0] flow_control_timeout_count = 8'b11001000,
      parameter [7:0] vc0_rx_flow_ctrl_posted_header = 8'b110010,
      parameter [11:0] vc0_rx_flow_ctrl_posted_data = 12'b101101000,
      parameter [7:0] vc0_rx_flow_ctrl_nonposted_header = 8'b110110,
      parameter [7:0] vc0_rx_flow_ctrl_nonposted_data = 8'h0,
      parameter [7:0] vc0_rx_flow_ctrl_compl_header = 8'b1110000,
      parameter [11:0] vc0_rx_flow_ctrl_compl_data = 12'b111000000,
      parameter [10:0] rx_ptr0_posted_dpram_min = 11'h0,
      parameter [10:0] rx_ptr0_posted_dpram_max = 11'h0,
      parameter [10:0] rx_ptr0_nonposted_dpram_min = 11'h0,
      parameter [10:0] rx_ptr0_nonposted_dpram_max = 11'h0,
      parameter [9:0] retry_buffer_last_active_address = 10'b1111111111,
      parameter [74:0] bist_memory_settings = 75'h0,
      parameter credit_buffer_allocation_aux = "balanced",
      parameter iei_enable_settings = "gen3gen2_infei_infsd_gen1_infei_sd",
      parameter rpltim_set = "false",
      parameter rpltim_base_data = 13'h0,
      parameter acknak_set = "false",
      parameter acknak_base_data = 13'h0,

      parameter gen3_skip_ph2_ph3  = "true",
      parameter gen3_dcbal_en  = "true",
      parameter g3_bypass_equlz = "true",
      parameter [15:0] vsec_id = 16'b1000101110010,
      parameter cvp_rate_sel = "full_rate",
      parameter hard_reset_bypass = "true",
      parameter cvp_data_compressed = "false",
      parameter cvp_data_encrypted = "false",
      parameter cvp_mode_reset = "false",
      parameter cvp_clk_reset = "false",
      parameter in_cvp_mode = "not_in_cvp_mode",
      parameter core_clk_sel = "pld_clk",
      parameter pipe_low_latency_syncronous_mode = 0,
      parameter [3:0] vsec_rev = 4'h0,
      parameter [127:0] jtag_id = 128'h0,
      parameter [15:0] user_id = 16'h0,
      parameter cseb_extend_pci = "false",
      parameter cseb_extend_pcie = "false",
      parameter cseb_cpl_status_during_cvp = "config_retry_status",
      parameter cseb_route_to_avl_rx_st = "cseb",
      parameter cseb_config_bypass = "disable",
      parameter cseb_cpl_tag_checking = "enable",
      parameter cseb_bar_match_checking = "enable",
      parameter cseb_min_error_checking = "false",
      parameter cseb_temp_busy_crs = "completer_abort",
      parameter cseb_disable_auto_crs = "false",
      parameter [7:0] gen3_diffclock_nfts_count = 8'b10000000,
      parameter [7:0] gen3_sameclock_nfts_count = 8'b10000000,
      parameter gen3_coeff_errchk = "enable",
      parameter gen3_paritychk = "enable",
      parameter [6:0] gen3_coeff_delay_count = 7'b1111101,
      parameter [17:0]gen3_coeff_1 = 18'b0,
      parameter       gen3_coeff_1_sel = "coeff_1",
      parameter [2:0] gen3_coeff_1_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_1_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_1_nxtber_more = "g3_coeff_1_nxtber_more",
      parameter [3:0] gen3_coeff_1_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_1_nxtber_less = "g3_coeff_1_nxtber_less",
      parameter [4:0] gen3_coeff_1_reqber = 5'b0,
      parameter [5:0] gen3_coeff_1_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_2 = 18'b0,
      parameter       gen3_coeff_2_sel = "coeff_2",
      parameter [2:0] gen3_coeff_2_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_2_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_2_nxtber_more = "g3_coeff_2_nxtber_more",
      parameter [3:0] gen3_coeff_2_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_2_nxtber_less = "g3_coeff_2_nxtber_less",
      parameter [4:0] gen3_coeff_2_reqber = 5'b0,
      parameter [5:0] gen3_coeff_2_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_3 = 18'b0,
      parameter       gen3_coeff_3_sel = "coeff_3",
      parameter [2:0] gen3_coeff_3_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_3_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_3_nxtber_more = "g3_coeff_3_nxtber_more",
      parameter [3:0] gen3_coeff_3_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_3_nxtber_less = "g3_coeff_3_nxtber_less",
      parameter [4:0] gen3_coeff_3_reqber = 5'b0,
      parameter [5:0] gen3_coeff_3_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_4 = 18'b0,
      parameter       gen3_coeff_4_sel = "coeff_4",
      parameter [2:0] gen3_coeff_4_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_4_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_4_nxtber_more = "g3_coeff_4_nxtber_more",
      parameter [3:0] gen3_coeff_4_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_4_nxtber_less = "g3_coeff_4_nxtber_less",
      parameter [4:0] gen3_coeff_4_reqber = 5'b0,
      parameter [5:0] gen3_coeff_4_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_5 = 18'b0,
      parameter       gen3_coeff_5_sel = "coeff_5",
      parameter [2:0] gen3_coeff_5_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_5_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_5_nxtber_more = "g3_coeff_5_nxtber_more",
      parameter [3:0] gen3_coeff_5_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_5_nxtber_less = "g3_coeff_5_nxtber_less",
      parameter [4:0] gen3_coeff_5_reqber = 5'b0,
      parameter [5:0] gen3_coeff_5_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_6 = 18'b0,
      parameter       gen3_coeff_6_sel = "coeff_6",
      parameter [2:0] gen3_coeff_6_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_6_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_6_nxtber_more = "g3_coeff_6_nxtber_more",
      parameter [3:0] gen3_coeff_6_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_6_nxtber_less = "g3_coeff_6_nxtber_less",
      parameter [4:0] gen3_coeff_6_reqber = 5'b0,
      parameter [5:0] gen3_coeff_6_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_7 = 18'b0,
      parameter       gen3_coeff_7_sel = "coeff_7",
      parameter [2:0] gen3_coeff_7_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_7_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_7_nxtber_more = "g3_coeff_7_nxtber_more",
      parameter [3:0] gen3_coeff_7_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_7_nxtber_less = "g3_coeff_7_nxtber_less",
      parameter [4:0] gen3_coeff_7_reqber = 5'b0,
      parameter [5:0] gen3_coeff_7_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_8 = 18'b0,
      parameter       gen3_coeff_8_sel = "coeff_8",
      parameter [2:0] gen3_coeff_8_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_8_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_8_nxtber_more = "g3_coeff_8_nxtber_more",
      parameter [3:0] gen3_coeff_8_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_8_nxtber_less = "g3_coeff_8_nxtber_less",
      parameter [4:0] gen3_coeff_8_reqber = 5'b0,
      parameter [5:0] gen3_coeff_8_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_9 = 18'b0,
      parameter       gen3_coeff_9_sel = "coeff_9",
      parameter [2:0] gen3_coeff_9_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_9_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_9_nxtber_more = "g3_coeff_9_nxtber_more",
      parameter [3:0] gen3_coeff_9_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_9_nxtber_less = "g3_coeff_9_nxtber_less",
      parameter [4:0] gen3_coeff_9_reqber = 5'b0,
      parameter [5:0] gen3_coeff_9_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_10 = 18'b0,
      parameter       gen3_coeff_10_sel = "coeff_10",
      parameter [2:0] gen3_coeff_10_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_10_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_10_nxtber_more = "g3_coeff_10_nxtber_more",
      parameter [3:0] gen3_coeff_10_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_10_nxtber_less = "g3_coeff_10_nxtber_less",
      parameter [4:0] gen3_coeff_10_reqber = 5'b0,
      parameter [5:0] gen3_coeff_10_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_11 = 18'b0,
      parameter       gen3_coeff_11_sel = "coeff_11",
      parameter [2:0] gen3_coeff_11_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_11_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_11_nxtber_more = "g3_coeff_11_nxtber_more",
      parameter [3:0] gen3_coeff_11_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_11_nxtber_less = "g3_coeff_11_nxtber_less",
      parameter [4:0] gen3_coeff_11_reqber = 5'b0,
      parameter [5:0] gen3_coeff_11_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_12 = 18'b0,
      parameter       gen3_coeff_12_sel = "coeff_12",
      parameter [2:0] gen3_coeff_12_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_12_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_12_nxtber_more = "g3_coeff_12_nxtber_more",
      parameter [3:0] gen3_coeff_12_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_12_nxtber_less = "g3_coeff_12_nxtber_less",
      parameter [4:0] gen3_coeff_12_reqber = 5'b0,
      parameter [5:0] gen3_coeff_12_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_13 = 18'b0,
      parameter       gen3_coeff_13_sel = "coeff_13",
      parameter [2:0] gen3_coeff_13_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_13_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_13_nxtber_more = "g3_coeff_13_nxtber_more",
      parameter [3:0] gen3_coeff_13_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_13_nxtber_less = "g3_coeff_13_nxtber_less",
      parameter [4:0] gen3_coeff_13_reqber = 5'b0,
      parameter [5:0] gen3_coeff_13_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_14 = 18'b0,
      parameter       gen3_coeff_14_sel = "coeff_14",
      parameter [2:0] gen3_coeff_14_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_14_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_14_nxtber_more = "g3_coeff_14_nxtber_more",
      parameter [3:0] gen3_coeff_14_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_14_nxtber_less = "g3_coeff_14_nxtber_less",
      parameter [4:0] gen3_coeff_14_reqber = 5'b0,
      parameter [5:0] gen3_coeff_14_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_15 = 18'b0,
      parameter       gen3_coeff_15_sel = "coeff_15",
      parameter [2:0] gen3_coeff_15_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_15_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_15_nxtber_more = "g3_coeff_15_nxtber_more",
      parameter [3:0] gen3_coeff_15_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_15_nxtber_less = "g3_coeff_15_nxtber_less",
      parameter [4:0] gen3_coeff_15_reqber = 5'b0,
      parameter [5:0] gen3_coeff_15_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_16 = 18'b0,
      parameter       gen3_coeff_16_sel = "coeff_16",
      parameter [2:0] gen3_coeff_16_preset_hint = 3'b0,
      parameter [3:0] gen3_coeff_16_nxtber_more_ptr = 4'b0,
      parameter       gen3_coeff_16_nxtber_more = "g3_coeff_16_nxtber_more",
      parameter [3:0] gen3_coeff_16_nxtber_less_ptr = 4'b0,
      parameter       gen3_coeff_16_nxtber_less = "g3_coeff_16_nxtber_less",
      parameter [4:0] gen3_coeff_16_reqber = 5'b0,
      parameter [5:0] gen3_coeff_16_ber_meas = 6'b0,
      parameter [17:0]gen3_coeff_17 = 18'b110000000000000000,
      parameter       gen3_coeff_17_sel = "coeff_17",
      parameter [2:0] gen3_coeff_17_preset_hint = 3'b111,
      parameter [3:0] gen3_coeff_17_nxtber_more_ptr = 4'b0111,
      parameter       gen3_coeff_17_nxtber_more = "g3_coeff_17_nxtber_more",
      parameter [3:0] gen3_coeff_17_nxtber_less_ptr = 4'b0111,
      parameter       gen3_coeff_17_nxtber_less = "g3_coeff_17_nxtber_less",
      parameter [4:0] gen3_coeff_17_reqber = 5'b01111,
      parameter [5:0] gen3_coeff_17_ber_meas = 6'b000001,
      parameter [17:0]gen3_coeff_18 = 18'b110000000000000001,
      parameter       gen3_coeff_18_sel = "coeff_18",
      parameter [2:0] gen3_coeff_18_preset_hint = 3'b111,
      parameter [3:0] gen3_coeff_18_nxtber_more_ptr = 4'b0111,
      parameter       gen3_coeff_18_nxtber_more = "g3_coeff_18_nxtber_more",
      parameter [3:0] gen3_coeff_18_nxtber_less_ptr = 4'b0111,
      parameter       gen3_coeff_18_nxtber_less = "g3_coeff_18_nxtber_less",
      parameter [4:0] gen3_coeff_18_reqber = 5'b01111,
      parameter [5:0] gen3_coeff_18_ber_meas = 6'b000001,
      parameter [17:0]gen3_coeff_19 = 18'b110000000000000001,
      parameter       gen3_coeff_19_sel = "coeff_19",
      parameter [2:0] gen3_coeff_19_preset_hint = 3'b111,
      parameter [3:0] gen3_coeff_19_nxtber_more_ptr = 4'b0111,
      parameter       gen3_coeff_19_nxtber_more = "g3_coeff_19_nxtber_more",
      parameter [3:0] gen3_coeff_19_nxtber_less_ptr = 4'b0111,
      parameter       gen3_coeff_19_nxtber_less = "g3_coeff_19_nxtber_less",
      parameter [4:0] gen3_coeff_19_reqber = 5'b01111,
      parameter [5:0] gen3_coeff_19_ber_meas = 6'b000001,
      parameter [17:0]gen3_coeff_20 = 18'b110000000000000001,
      parameter       gen3_coeff_20_sel = "coeff_20",
      parameter [2:0] gen3_coeff_20_preset_hint = 3'b111,
      parameter [3:0] gen3_coeff_20_nxtber_more_ptr = 4'b0111,
      parameter       gen3_coeff_20_nxtber_more = "g3_coeff_20_nxtber_more",
      parameter [3:0] gen3_coeff_20_nxtber_less_ptr = 4'b0111,
      parameter       gen3_coeff_20_nxtber_less = "g3_coeff_20_nxtber_less",
      parameter [4:0] gen3_coeff_20_reqber = 5'b01111,
      parameter [5:0] gen3_coeff_20_ber_meas = 6'b000001,
      parameter [17:0]gen3_coeff_21 = 18'b110000000000000001,
      parameter       gen3_coeff_21_sel = "coeff_21",
      parameter [2:0] gen3_coeff_21_preset_hint = 3'b111,
      parameter [3:0] gen3_coeff_21_nxtber_more_ptr = 4'b0111,
      parameter       gen3_coeff_21_nxtber_more = "g3_coeff_21_nxtber_more",
      parameter [3:0] gen3_coeff_21_nxtber_less_ptr = 4'b0111,
      parameter       gen3_coeff_21_nxtber_less = "g3_coeff_21_nxtber_less",
      parameter [4:0] gen3_coeff_21_reqber = 5'b01111,
      parameter [5:0] gen3_coeff_21_ber_meas = 6'b000001,
      parameter [17:0]gen3_coeff_22 = 18'b110000000000000001,
      parameter       gen3_coeff_22_sel = "coeff_22",
      parameter [2:0] gen3_coeff_22_preset_hint = 3'b111,
      parameter [3:0] gen3_coeff_22_nxtber_more_ptr = 4'b0111,
      parameter       gen3_coeff_22_nxtber_more = "g3_coeff_22_nxtber_more",
      parameter [3:0] gen3_coeff_22_nxtber_less_ptr = 4'b0111,
      parameter       gen3_coeff_22_nxtber_less = "g3_coeff_22_nxtber_less",
      parameter [4:0] gen3_coeff_22_reqber = 5'b01111,
      parameter [5:0] gen3_coeff_22_ber_meas = 6'b000001,
      parameter [17:0]gen3_coeff_23 = 18'b110000000000000001,
      parameter       gen3_coeff_23_sel = "coeff_23",
      parameter [2:0] gen3_coeff_23_preset_hint = 3'b111,
      parameter [3:0] gen3_coeff_23_nxtber_more_ptr = 4'b0111,
      parameter       gen3_coeff_23_nxtber_more = "g3_coeff_23_nxtber_more",
      parameter [3:0] gen3_coeff_23_nxtber_less_ptr = 4'b0111,
      parameter       gen3_coeff_23_nxtber_less = "g3_coeff_23_nxtber_less",
      parameter [4:0] gen3_coeff_23_reqber = 5'b01111,
      parameter [5:0] gen3_coeff_23_ber_meas = 6'b000001,
      parameter [17:0]gen3_coeff_24 = 18'b110000000000000001,
      parameter       gen3_coeff_24_sel = "coeff_24",
      parameter [2:0] gen3_coeff_24_preset_hint = 3'b111,
      parameter [3:0] gen3_coeff_24_nxtber_more_ptr = 4'b0111,
      parameter       gen3_coeff_24_nxtber_more = "g3_coeff_24_nxtber_more",
      parameter [3:0] gen3_coeff_24_nxtber_less_ptr = 4'b0111,
      parameter       gen3_coeff_24_nxtber_less = "g3_coeff_24_nxtber_less",
      parameter [4:0] gen3_coeff_24_reqber = 5'b01111,
      parameter [5:0] gen3_coeff_24_ber_meas = 6'b000001,


      parameter [17:0]  gen3_preset_coeff_1 = 18'b000000110010000000,
      parameter [17:0]  gen3_preset_coeff_2 = 18'b001001101001000000,
      parameter [17:0]  gen3_preset_coeff_3 = 18'b001101100101000000,
      parameter [17:0]  gen3_preset_coeff_4 = 18'b000000101001001001,
      parameter [17:0]  gen3_preset_coeff_5 = 18'b000110100110000110,
      parameter [17:0]  gen3_preset_coeff_6 = 18'b001010100011000101,
      parameter [17:0]  gen3_preset_coeff_7 = 18'b000000101101000101,
      parameter [17:0]  gen3_preset_coeff_8 = 18'b000000101011000111,
      parameter [17:0]  gen3_preset_coeff_9 = 18'b000111101011000000,
      parameter [17:0]  gen3_preset_coeff_10 = 18'b001010101000000000,
      parameter [17:0]  gen3_preset_coeff_11 = 18'b000111101011000000,
      parameter [5:0]   gen3_full_swing      = 6'b100011,
      parameter [5:0]   gen3_low_freq        = 6'b001001,
      parameter [19:0]  gen3_rxfreqlock_counter = 20'b0,

      // Exposing the Pre-emphasis and VOD static values
      parameter rpre_emph_a_val = 6'd0,
      parameter rpre_emph_b_val = 6'd0,
      parameter rpre_emph_c_val = 6'd0,
      parameter rpre_emph_d_val = 6'd0,
      parameter rpre_emph_e_val = 6'd0,
      parameter rvod_sel_a_val  = 6'd0,
      parameter rvod_sel_b_val  = 6'd0,
      parameter rvod_sel_c_val  = 6'd0,
      parameter rvod_sel_d_val  = 6'd0,
      parameter rvod_sel_e_val  = 6'd0,
      parameter g3_dis_rx_use_prst     = "false",
      parameter g3_dis_rx_use_prst_ep  = "false",

      // PCIe Toolkit
      parameter pcie_toolkit_enable = "false"

      //Serdes related parameters
) (
      // Reset signals
      input                 pipe8_sim_only, // when set, enable pipe 8-bit simulation
      input                 pin_perst,
      input                 npor,
      input                 cvp_tx_analogreset,
      output reg            reset_status,
      output                serdes_pll_locked,

      // Clock
      input                 pld_clk,
      input                 pclk_in,
      output                clk250_out,
      output                clk500_out,
      output reg            pld_clk_inuse,
      input                 pld_core_ready,        // TBD CVP related

      // Serdes related
      input                 refclk,

      // Reconfig GXB
      input                [reconfig_to_xcvr_width-1:0]   reconfig_to_xcvr,
      output               [reconfig_from_xcvr_width-1:0] reconfig_from_xcvr,
      output               fixedclk_locked,

      // HIP control signals
      input  [1 : 0]        mode,
      input  [4 : 0]        hpg_ctrler,
      input  [1 : 0]        swctmod,
      input  [63 : 0]       test_in,
      output [319 : 0]      test_out,
      input  [31:0]         reservedin,
      input                 reservedclkin,
      output [31:0]         reservedout,
      output                reservedclkout,

      // Input PIPE simulation _ext for simulation only
      input                 phystatus0_ext,
      input                 phystatus1_ext,
      input                 phystatus2_ext,
      input                 phystatus3_ext,
      input                 phystatus4_ext,
      input                 phystatus5_ext,
      input                 phystatus6_ext,
      input                 phystatus7_ext,
      input  [7 : 0]        rxdata0_ext,
      input  [7 : 0]        rxdata1_ext,
      input  [7 : 0]        rxdata2_ext,
      input  [7 : 0]        rxdata3_ext,
      input  [7 : 0]        rxdata4_ext,
      input  [7 : 0]        rxdata5_ext,
      input  [7 : 0]        rxdata6_ext,
      input  [7 : 0]        rxdata7_ext,
      input                 rxdatak0_ext,
      input                 rxdatak1_ext,
      input                 rxdatak2_ext,
      input                 rxdatak3_ext,
      input                 rxdatak4_ext,
      input                 rxdatak5_ext,
      input                 rxdatak6_ext,
      input                 rxdatak7_ext,
      input                 rxelecidle0_ext,
      input                 rxelecidle1_ext,
      input                 rxelecidle2_ext,
      input                 rxelecidle3_ext,
      input                 rxelecidle4_ext,
      input                 rxelecidle5_ext,
      input                 rxelecidle6_ext,
      input                 rxelecidle7_ext,
      input                 rxfreqlocked0_ext,
      input                 rxfreqlocked1_ext,
      input                 rxfreqlocked2_ext,
      input                 rxfreqlocked3_ext,
      input                 rxfreqlocked4_ext,
      input                 rxfreqlocked5_ext,
      input                 rxfreqlocked6_ext,
      input                 rxfreqlocked7_ext,
      input  [2 : 0]        rxstatus0_ext,
      input  [2 : 0]        rxstatus1_ext,
      input  [2 : 0]        rxstatus2_ext,
      input  [2 : 0]        rxstatus3_ext,
      input  [2 : 0]        rxstatus4_ext,
      input  [2 : 0]        rxstatus5_ext,
      input  [2 : 0]        rxstatus6_ext,
      input  [2 : 0]        rxstatus7_ext,
      input                 rxdataskip0_ext,
      input                 rxdataskip1_ext,
      input                 rxdataskip2_ext,
      input                 rxdataskip3_ext,
      input                 rxdataskip4_ext,
      input                 rxdataskip5_ext,
      input                 rxdataskip6_ext,
      input                 rxdataskip7_ext,
      input                 rxblkst0_ext,
      input                 rxblkst1_ext,
      input                 rxblkst2_ext,
      input                 rxblkst3_ext,
      input                 rxblkst4_ext,
      input                 rxblkst5_ext,
      input                 rxblkst6_ext,
      input                 rxblkst7_ext,
      input  [1 : 0]        rxsynchd0_ext,
      input  [1 : 0]        rxsynchd1_ext,
      input  [1 : 0]        rxsynchd2_ext,
      input  [1 : 0]        rxsynchd3_ext,
      input  [1 : 0]        rxsynchd4_ext,
      input  [1 : 0]        rxsynchd5_ext,
      input  [1 : 0]        rxsynchd6_ext,
      input  [1 : 0]        rxsynchd7_ext,
      input                 rxvalid0_ext,
      input                 rxvalid1_ext,
      input                 rxvalid2_ext,
      input                 rxvalid3_ext,
      input                 rxvalid4_ext,
      input                 rxvalid5_ext,
      input                 rxvalid6_ext,
      input                 rxvalid7_ext,

      //TL BFM Ports
      output [1000 : 0]    tlbfm_in,
      input  [1000 : 0]    tlbfm_out,

      // Application signals inputs
      input  [4 : 0]        aer_msi_num,
      input                 app_int_sts,
      input  [4 : 0]        app_msi_num,
      input                 app_msi_req,
      input  [2 : 0]        app_msi_tc,
      input  [4 : 0]        pex_msi_num,
      input  [11 : 0]       lmi_addr,
      input  [31 : 0]       lmi_din,
      input                 lmi_rden,
      input                 lmi_wren,
      input                 pm_auxpwr,
      input  [9 : 0]        pm_data,
      input                 pme_to_cr,
      input                 pm_event,
      input                 rx_st_mask,
      input                 rx_st_ready,
      input  [255 : 0]      tx_st_data,
      input  [1 :0]        tx_st_empty,
      input  [3 :0]        tx_st_eop,
      input  [3 :0]        tx_st_err,
      input  [31:0]        tx_st_parity,
      input  [3 :0]        tx_st_sop,
      input                tx_st_valid,
      input  [12:0]        cfglink2csrpld,
      input  [6 :0]        cpl_err,
      input                cpl_pending,
      input                tl_slotclk_cfg,

      // Input for internal test port (PE/TE)
      input                 frzlogic,
      input                 frzreg,
      input  [7 : 0]        idrcv,
      input  [7 : 0]        idrpl,
      input                 bistenrcv,
      input                 bistenrpl,
      input                 bistscanen,
      input                 bistscanin,
      input                 bisttesten,
      input                 memhiptestenable,
      input                 memredenscan,
      input                 memredscen,
      input                 memredscin,
      input                 memredsclk,
      input                 memredscrst,
      input                 memredscsel,
      input                 memregscanen,
      input                 memregscanin,
      input                 scanmoden,
      input                 usermode,
      input                 scanshiftn,
      input                 nfrzdrv,

      // Input for past QII 10.0 support
      input  [31 : 0]       csebrddata,
      input  [3 : 0]        csebrddataparity,
      input  [4 : 0]        csebrdresponse,
      input                 csebwaitrequest,
      input  [4 : 0]        csebwrresponse,
      input                 csebwrrespvalid,
      input  [43 : 0]       dbgpipex1rx,


      // Output Pipe interface
      output [2 : 0]        eidleinfersel0_ext,
      output [2 : 0]        eidleinfersel1_ext,
      output [2 : 0]        eidleinfersel2_ext,
      output [2 : 0]        eidleinfersel3_ext,
      output [2 : 0]        eidleinfersel4_ext,
      output [2 : 0]        eidleinfersel5_ext,
      output [2 : 0]        eidleinfersel6_ext,
      output [2 : 0]        eidleinfersel7_ext,
      output [1 : 0]        powerdown0_ext,
      output [1 : 0]        powerdown1_ext,
      output [1 : 0]        powerdown2_ext,
      output [1 : 0]        powerdown3_ext,
      output [1 : 0]        powerdown4_ext,
      output [1 : 0]        powerdown5_ext,
      output [1 : 0]        powerdown6_ext,
      output [1 : 0]        powerdown7_ext,
      output                rxpolarity0_ext,
      output                rxpolarity1_ext,
      output                rxpolarity2_ext,
      output                rxpolarity3_ext,
      output                rxpolarity4_ext,
      output                rxpolarity5_ext,
      output                rxpolarity6_ext,
      output                rxpolarity7_ext,
      output                txcompl0_ext,
      output                txcompl1_ext,
      output                txcompl2_ext,
      output                txcompl3_ext,
      output                txcompl4_ext,
      output                txcompl5_ext,
      output                txcompl6_ext,
      output                txcompl7_ext,
      output [7 : 0]        txdata0_ext,
      output [7 : 0]        txdata1_ext,
      output [7 : 0]        txdata2_ext,
      output [7 : 0]        txdata3_ext,
      output [7 : 0]        txdata4_ext,
      output [7 : 0]        txdata5_ext,
      output [7 : 0]        txdata6_ext,
      output [7 : 0]        txdata7_ext,
      output                txdatak0_ext,
      output                txdatak1_ext,
      output                txdatak2_ext,
      output                txdatak3_ext,
      output                txdatak4_ext,
      output                txdatak5_ext,
      output                txdatak6_ext,
      output                txdatak7_ext,
      output                txdatavalid0_ext,
      output                txdatavalid1_ext,
      output                txdatavalid2_ext,
      output                txdatavalid3_ext,
      output                txdatavalid4_ext,
      output                txdatavalid5_ext,
      output                txdatavalid6_ext,
      output                txdatavalid7_ext,
      output                txdetectrx0_ext,
      output                txdetectrx1_ext,
      output                txdetectrx2_ext,
      output                txdetectrx3_ext,
      output                txdetectrx4_ext,
      output                txdetectrx5_ext,
      output                txdetectrx6_ext,
      output                txdetectrx7_ext,
      output                txelecidle0_ext,
      output                txelecidle1_ext,
      output                txelecidle2_ext,
      output                txelecidle3_ext,
      output                txelecidle4_ext,
      output                txelecidle5_ext,
      output                txelecidle6_ext,
      output                txelecidle7_ext,
      output [2 : 0]        txmargin0_ext,
      output [2 : 0]        txmargin1_ext,
      output [2 : 0]        txmargin2_ext,
      output [2 : 0]        txmargin3_ext,
      output [2 : 0]        txmargin4_ext,
      output [2 : 0]        txmargin5_ext,
      output [2 : 0]        txmargin6_ext,
      output [2 : 0]        txmargin7_ext,
      output                txdeemph0_ext,
      output                txdeemph1_ext,
      output                txdeemph2_ext,
      output                txdeemph3_ext,
      output                txdeemph4_ext,
      output                txdeemph5_ext,
      output                txdeemph6_ext,
      output                txdeemph7_ext,
      output                txswing0_ext,
      output                txswing1_ext,
      output                txswing2_ext,
      output                txswing3_ext,
      output                txswing4_ext,
      output                txswing5_ext,
      output                txswing6_ext,
      output                txswing7_ext,
      output                txblkst0_ext,
      output                txblkst1_ext,
      output                txblkst2_ext,
      output                txblkst3_ext,
      output                txblkst4_ext,
      output                txblkst5_ext,
      output                txblkst6_ext,
      output                txblkst7_ext,
      output [1 : 0]        txsynchd0_ext,
      output [1 : 0]        txsynchd1_ext,
      output [1 : 0]        txsynchd2_ext,
      output [1 : 0]        txsynchd3_ext,
      output [1 : 0]        txsynchd4_ext,
      output [1 : 0]        txsynchd5_ext,
      output [1 : 0]        txsynchd6_ext,
      output [1 : 0]        txsynchd7_ext,
      output [17 : 0]       currentcoeff0_ext,
      output [17 : 0]       currentcoeff1_ext,
      output [17 : 0]       currentcoeff2_ext,
      output [17 : 0]       currentcoeff3_ext,
      output [17 : 0]       currentcoeff4_ext,
      output [17 : 0]       currentcoeff5_ext,
      output [17 : 0]       currentcoeff6_ext,
      output [17 : 0]       currentcoeff7_ext,
      output [2 : 0]        currentrxpreset0_ext,
      output [2 : 0]        currentrxpreset1_ext,
      output [2 : 0]        currentrxpreset2_ext,
      output [2 : 0]        currentrxpreset3_ext,
      output [2 : 0]        currentrxpreset4_ext,
      output [2 : 0]        currentrxpreset5_ext,
      output [2 : 0]        currentrxpreset6_ext,
      output [2 : 0]        currentrxpreset7_ext,


      // Output HIP Status signals
      output                coreclkout_hip,
      output [1 : 0]        currentspeed,
      output                derr_cor_ext_rcv,
      output                derr_cor_ext_rpl,
      output                derr_rpl,
      output                rx_par_err ,
      output [1:0]          tx_par_err ,
      output                cfg_par_err,
      output                dlup,
      output                dlup_exit,
      output                ev128ns,
      output                ev1us,
      output                hotrst_exit,
      output [3 : 0]        int_status,
      output                l2_exit,
      output [3 : 0]        lane_act,
      output [4 : 0]        ltssmstate,
      output [1 : 0]        rate,

      // Output Application interface
      output                app_int_ack,
      output                app_msi_ack,
      output                lmi_ack,
      output [31 : 0]       lmi_dout,
      output                pme_to_sr,
      output [7 : 0]        rx_st_bardec1,
      output [7 : 0]        rx_st_bardec2,
      output [31 : 0]       rx_st_be,
      output [255 : 0]      rx_st_data,
      output [1 : 0]        rx_st_empty,
      output [3 : 0]        rx_st_eop,
      output [3 : 0]        rx_st_err,
      output [31 : 0]       rx_st_parity,
      output [3 : 0]        rx_st_sop,
      output [3 : 0]        rx_st_valid,
      output                serr_out,
      output [3 : 0]        tl_cfg_add,
      output [31 : 0]       tl_cfg_ctl,
      output [52 : 0]       tl_cfg_sts,
      output [11 : 0]       tx_cred_datafccp,
      output [11 : 0]       tx_cred_datafcnp,
      output [11 : 0]       tx_cred_datafcp,
      output [5 : 0]        tx_cred_fchipcons,
      output [5 : 0]        tx_cred_fcinfinite,
      output [7 : 0]        tx_cred_hdrfccp,
      output [7 : 0]        tx_cred_hdrfcnp,
      output [7 : 0]        tx_cred_hdrfcp,
      output                tx_st_ready,

      // serial interface
      input    rx_in0,
      input    rx_in1,
      input    rx_in2,
      input    rx_in3,
      input    rx_in4,
      input    rx_in5,
      input    rx_in6,
      input    rx_in7,

      output   tx_out0,
      output   tx_out1,
      output   tx_out2,
      output   tx_out3,
      output   tx_out4,
      output   tx_out5,
      output   tx_out6,
      output   tx_out7,

      // HIP Reconfig
      input             avmm_rst_n,      // DPRIO reset
      input             avmm_clk,        // DPRIO clock
      input             avmm_write,      // write enable input
      input             avmm_read,       // read enable input
      input   [3:0]     avmm_byte_en,    // Byte enable
      input   [9:0]     avmm_address,    // address input
      input   [31:0]    avmm_writedata,  // write data input
      output  [31:0]    avmm_readdata,   // Read data output
      input             ser_shift_load,  // 1'b1=shift in data from si into scan flop
                                         // 1'b0=load data from writedata into scan flop
      input             interface_sel,   // Interface selection inputs
                                         // 1'b1: select CSR as a source for CRAM
                                         // 1'b0: select Avalon-MM interface

      // Output for past QII 10.0 support
      output [32 : 0]       csebaddr,
      output [4 : 0]        csebaddrparity,
      output [3 : 0]        csebbe,
      output                csebisshadow,
      output                csebrden,
      output [31 : 0]       csebwrdata,
      output [3 : 0]        csebwrdataparity,
      output                csebwren,
      output                csebwrrespreq,

      // Output for internal test port (PE/TE)
      output                bistdonearcv,
      output                bistdonearcv1,
      output                bistdonearpl,
      output                bistdonebrcv,
      output                bistdonebrcv1,
      output                bistdonebrpl,
      output                bistpassrcv,
      output                bistpassrcv1,
      output                bistpassrpl,
      output                bistscanoutrcv,
      output                bistscanoutrcv1,
      output                bistscanoutrpl,
      output                memredscout,
      output                memregscanout,
      output                wakeoen
      );

   function [8*25:1] low_str;
   // Convert parameter strings to lower case
      input [8*25:1] input_string;
      reg [8*25:1] return_string;
      reg [8*25:1] reg_string;
      reg [8:1] tmp;
      reg [8:1] conv_char;
      integer byte_count;
      begin
         reg_string = input_string;
         for (byte_count = 25; byte_count >= 1; byte_count = byte_count - 1) begin
            tmp = reg_string[8*25:(8*(25-1)+1)];
            reg_string = reg_string << 8;
            if ((tmp >= 65) && (tmp <= 90)) // ASCII number of 'A' is 65, 'Z' is 90
               begin
               conv_char = tmp + 32; // 32 is the difference in the position of 'A' and 'a' in the ASCII char set
               return_string = {return_string, conv_char};
               end
            else
               return_string = {return_string, tmp};
         end
      low_str = return_string;
      end
   endfunction

   function [8*25:1] get_core_clk_divider_param;
      input [8*25:1] l_ast_width;
      input [8*25:1] l_gen123_lane_rate_mode;
      input [8*25:1] l_lane_mask;
      input x1_625MHz;
      begin
         if      ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param=(x1_625MHz==1)?"div_4":"div_2"; // Gen1 : pllfixedclk = 250MHz
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param="div_2";
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param="div_2";
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param="div_1";
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param=(x1_625MHz==1)?"div_8":"div_4"; // Gen2 : pllfixedclk = 500MHz
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param="div_4";
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param="div_2";
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param="div_1"; //NA
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2_gen3") && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param="div_4"; // Gen2 : pllfixedclk = 500MHz
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2_gen3") && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param="div_2";
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2_gen3") && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param="div_1"; //NA
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2_gen3") && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param="div_1"; //NA

         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param="div_4"; // Gen1 : pllfixedclk = 250MHz
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param="div_2"; // NA
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param="div_2";
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param="div_2";
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param="div_8"; // Gen2 : pllfixedclk = 500MHz
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param="div_4"; //NA
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param="div_4";
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param="div_2";
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2_gen3") && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param="div_1"; // NA
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2_gen3") && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param="div_4";
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2_gen3") && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param="div_2";
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2_gen3") && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param="div_1";  //NA

         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param="div_4"; // Gen1 : pllfixedclk = 250MHz
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param="div_4"; //NA
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param="div_2";
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param="div_2";
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param="div_8"; // Gen2 : pllfixedclk = 500MHz
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param="div_4"; //NA
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param="div_4";
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param="div_4";
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2_gen3") && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param="div_1"; // NA
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2_gen3") && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param="div_1"; //NA
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2_gen3") && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param="div_4";
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2_gen3") && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param="div_2";
         else                                                                                                                              get_core_clk_divider_param="div_1";
      end
   endfunction

   function [8*25:1] get_core_clk_divider_param_atx_es;
      input [8*25:1] l_ast_width;
      input [8*25:1] l_gen123_lane_rate_mode;
      input [8*25:1] l_lane_mask;
      input x1_625MHz;
      begin
         if      ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param_atx_es="div_8"; // pllfixedclk = 1000MHz for Gen1 and Gen2
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param_atx_es="div_8";
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param_atx_es="div_8";
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param_atx_es="div_4";
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param_atx_es="div_8";
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param_atx_es="div_8";
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param_atx_es="div_4";

         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param_atx_es="div_8";
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param_atx_es="div_8"; //NA
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param_atx_es="div_8";
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param_atx_es="div_8";
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param_atx_es="div_8";
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param_atx_es="div_8"; //NA
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param_atx_es="div_8";
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param_atx_es="div_4";

         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param_atx_es="div_8";
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param_atx_es="div_8";  //NA
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param_atx_es="div_8";
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param_atx_es="div_8";
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param_atx_es="div_8";
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param_atx_es="div_8";  //NA
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param_atx_es="div_8";
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param_atx_es="div_8";
         else                                                                                                                              get_core_clk_divider_param_atx_es="div_8";
      end
   endfunction

   function [8*25:1] get_core_clk_divider_param_atx_gen1;
      input [8*25:1] l_ast_width;
      input [8*25:1] l_gen123_lane_rate_mode;
      input [8*25:1] l_lane_mask;
      input x1_625MHz;
      begin
         if      ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param_atx_gen1="div_4"; // pllfixedclk = 500MHz for Gen1 on Prod
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param_atx_gen1="div_4";
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param_atx_gen1="div_4";
         else if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param_atx_gen1="div_2";

         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param_atx_gen1="div_4";
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param_atx_gen1="div_4"; //NA
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param_atx_gen1="div_4";
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param_atx_gen1="div_4";

         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x1"))  get_core_clk_divider_param_atx_gen1="div_4";
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x2"))  get_core_clk_divider_param_atx_gen1="div_4";  //NA
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x4"))  get_core_clk_divider_param_atx_gen1="div_4";
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1"     ) && (low_str(l_lane_mask)=="x8"))  get_core_clk_divider_param_atx_gen1="div_4";
         else                                                                                                                              get_core_clk_divider_param_atx_gen1="div_4";
      end
   endfunction



   function integer is_pld_clk_250MHz;
      input [8*25:1] l_ast_width;
      input [8*25:1] l_gen123_lane_rate_mode;
      input [8*25:1] l_lane_mask;
      begin
              if ((low_str(l_ast_width)=="rx_tx_64" ) && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x4"))  is_pld_clk_250MHz=USE_INTERNAL_250MHZ_PLL;
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2") && (low_str(l_lane_mask)=="x8"))  is_pld_clk_250MHz=USE_INTERNAL_250MHZ_PLL;
         else if ((low_str(l_ast_width)=="rx_tx_64") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2_gen3") && (low_str(l_lane_mask)=="x2"))  is_pld_clk_250MHz=USE_INTERNAL_250MHZ_PLL;
         else if ((low_str(l_ast_width)=="rx_tx_128") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2_gen3") && (low_str(l_lane_mask)=="x4"))  is_pld_clk_250MHz=USE_INTERNAL_250MHZ_PLL;
         else if ((low_str(l_ast_width)=="rx_tx_256") && (low_str(l_gen123_lane_rate_mode)=="gen1_gen2_gen3") && (low_str(l_lane_mask)=="x8"))  is_pld_clk_250MHz=USE_INTERNAL_250MHZ_PLL;
         else                                                                                                                              is_pld_clk_250MHz=0;
      end
   endfunction

   // Convert parameter strings to lower case
   genvar i;

   //synthesis translate_off
   localparam ALTPCIE_HIP_256_PIPEN1B_SIM_ONLY  = 1;
   //synthesis translate_on

   //synthesis read_comments_as_HDL on
   //localparam ALTPCIE_HIP_256_PIPEN1B_SIM_ONLY = 0;
   //synthesis read_comments_as_HDL off

   localparam [4:0] LTSSM_EQ_DET_QUIET   = 5'b00000 ; // 5'h0
   localparam [4:0] LTSSM_EQ_DET_ACT     = 5'b00001 ; // 5'h1
   localparam [4:0] LTSSM_EQ_POL_ACT     = 5'b00010 ; // 5'h2
   localparam [4:0] LTSSM_EQ_POL_COMP    = 5'b00011 ; // 5'h3
   localparam [4:0] LTSSM_EQ_POL_CFG     = 5'b00100 ; // 5'h4
   localparam [4:0] LTSSM_EQ_CFG_LKST    = 5'b00110 ; // 5'h6
   localparam [4:0] LTSSM_EQ_CFG_LKAC    = 5'b00111 ; // 5'h7
   localparam [4:0] LTSSM_EQ_CFG_LNAC    = 5'b01000 ; // 5'h8
   localparam [4:0] LTSSM_EQ_CFG_LNWT    = 5'b01001 ; // 5'h9
   localparam [4:0] LTSSM_EQ_CFG_CPL     = 5'b01010 ; // 5'hA
   localparam [4:0] LTSSM_EQ_CFG_IDL     = 5'b01011 ; // 5'hB
   localparam [4:0] LTSSM_EQ_REC_RXLK    = 5'b01100 ; // 5'hC
   localparam [4:0] LTSSM_EQ_REC_RXCFG   = 5'b01101 ; // 5'hD
   localparam [4:0] LTSSM_EQ_REC_IDL     = 5'b01110 ; // 5'hE
   localparam [4:0] LTSSM_EQ_L0          = 5'b01111 ; // 5'hF
   localparam [4:0] LTSSM_EQ_DISAB       = 5'b10000 ; // 5'h10
   localparam [4:0] LTSSM_EQ_LPBK_ENT    = 5'b10001 ; // 5'h11
   localparam [4:0] LTSSM_EQ_LPBK_ACT    = 5'b10010 ; // 5'h12
   localparam [4:0] LTSSM_EQ_LPBK_EXIT   = 5'b10011 ; // 5'h13
   localparam [4:0] LTSSM_EQ_HOT_RST     = 5'b10100 ; // 5'h14
   localparam [4:0] LTSSM_EQ_L0S         = 5'b10101 ; // 5'h15
   localparam [4:0] LTSSM_EQ_L1_ENT      = 5'b10110 ; // 5'h16
   localparam [4:0] LTSSM_EQ_L1_IDL      = 5'b10111 ; // 5'h17
   localparam [4:0] LTSSM_EQ_L2_IDL      = 5'b11000 ; // 5'h18
   localparam [4:0] LTSSM_EQ_REC_SPEED   = 5'b11010 ; // 5'h1A
   localparam [4:0] LTSSM_EQ_EQZ_PHASE_0 = 5'b11011 ; // 5'h1B
   localparam [4:0] LTSSM_EQ_EQZ_PHASE_1 = 5'b11100 ; // 5'h1C
   localparam [4:0] LTSSM_EQ_EQZ_PHASE_2 = 5'b11101 ; // 5'h1D
   localparam [4:0] LTSSM_EQ_EQZ_PHASE_3 = 5'b11110 ; // 5'h1E

   localparam PIPE32_SIM_ONLY   = (ALTPCIE_HIP_256_PIPEN1B_SIM_ONLY==0)?0:enable_pipe32_sim;
   localparam PLD_CLK_IS_250MHZ = is_pld_clk_250MHz(ast_width, gen123_lane_rate_mode, lane_mask);
   localparam USE_HARD_RESET    = (low_str(hip_hard_reset)=="disable") ? 0:1;
   localparam ST_DATA_WIDTH     = (low_str(ast_width)=="rx_tx_256")?256:(low_str(ast_width)=="rx_tx_128")?128:64;
   localparam ST_BE_WIDTH       = (low_str(ast_width)=="rx_tx_256")? 32:(low_str(ast_width)=="rx_tx_128")? 16: 8;
   localparam ST_CTRL_WIDTH     = (low_str(ast_width)=="rx_tx_256")?  4:(low_str(ast_width)=="rx_tx_128")?  2: 1;

   // To enable Hard Offset Calibration -  by default turned off - set to true to turn on
   localparam hard_oc_enable              = "false";    //legal value - "true", "false"

   // Control HRC fabric input reset
   localparam HIPRST_USE_LOCAL_NPOR       = 0;
   localparam HIPRST_USE_DLUP_EXIT        = 1; // 0 in RP mode

   localparam LANES                = (low_str(lane_mask)=="x1")?1:(low_str(lane_mask)=="x2")?2:(low_str(lane_mask)=="x4")?4:8; //legal value: 1+
   localparam LANES_P1             = LANES+1;
   localparam enable_ch0_pclk_out  = (LANES==8)?"pclk_central":"pclk_ch01";
   localparam enable_ch01_pclk_out = ((LANES==2)||(LANES==4))?"pclk_ch1":"pclk_ch0";

   localparam national_inst_thru_enhance   = "false";
   localparam vc_enable                    = "single_vc" ;
   localparam bypass_tl                    = "false";
   localparam vc1_clk_enable               = (ALTPCIE_HIP_256_PIPEN1B_SIM_ONLY==0)?"false":enable_tl_only_sim;
   localparam vc_arbitration               = "single_vc";
   localparam enable_rx_reordering         = "true";

   localparam starting_channel_number = 0; //legal value: 0+
   localparam protocol_version = (low_str(gen123_lane_rate_mode)=="gen1")?"Gen 1":
                                 (low_str(gen123_lane_rate_mode)=="gen1_gen2")?"Gen 2":
                                 (low_str(gen123_lane_rate_mode)=="gen1_gen2_gen3")?"Gen 3":"<invalid>"; //legal value: "Gen 1", "Gen 2", "Gen 3"

   localparam core_clk_out_sel  = "div_1";
   localparam core_clk_source   = "pll_fixed_clk";
   `ifdef ALTERA_RESERVED_QIS_ES
   localparam core_clk_divider  = (use_atx_pll=="true")?get_core_clk_divider_param_atx_es(ast_width, gen123_lane_rate_mode, lane_mask, set_pld_clk_x1_625MHz):get_core_clk_divider_param(ast_width, gen123_lane_rate_mode, lane_mask, set_pld_clk_x1_625MHz);
   `else
   localparam core_clk_divider = ((use_atx_pll=="true") && (low_str(gen123_lane_rate_mode)=="gen1"))?get_core_clk_divider_param_atx_gen1(ast_width, gen123_lane_rate_mode, lane_mask, set_pld_clk_x1_625MHz):get_core_clk_divider_param(ast_width, gen123_lane_rate_mode, lane_mask, set_pld_clk_x1_625MHz);
   `endif
   localparam deser_factor = 32;
   localparam hip_enable = "true";

   localparam [255:0] ONES  = 256'HFFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF;
   localparam [255:0] ZEROS = 256'H0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;

   // Hard Reset Controller parameters
   localparam rstctrl_pld_clr                    = "true";// "false", "true".
   localparam rstctrl_debug_en                   = "false";// "false", "true".
   localparam rstctrl_force_inactive_rst         = "false";// "false", "true".
   localparam rstctrl_perst_enable               = "level";   // "level", "neg_edge", "not_used".
   localparam hrdrstctrl_en                      = "hrdrstctrl_en";     //Quartus only "hrdrstctrl_dis", "hrdrstctrl_en".
   localparam rstctrl_hip_ep                     = "hip_ep";      //"hip_ep", "hip_not_ep".
   localparam rstctrl_hard_block_enable          = (low_str(hip_hard_reset) == "disable") ? "pld_rst_ctl" : "hard_rst_ctl";
   localparam rstctrl_rx_pma_rstb_inv            = "false";//"false", "true".
   localparam rstctrl_tx_pma_rstb_inv            = "false";//"false", "true".
   localparam rstctrl_rx_pcs_rst_n_inv           = "false";//"false", "true".
   localparam rstctrl_tx_pcs_rst_n_inv           = "false";//"false", "true".
   localparam rstctrl_altpe3_crst_n_inv          = "false";//"false", "true".
   localparam rstctrl_altpe3_srst_n_inv          = "false";//"false", "true".
   localparam rstctrl_altpe3_rst_n_inv           = "false";//"false", "true".
   localparam rstctrl_tx_pma_syncp_inv           = "false";//"false", "true".
   localparam rstctrl_1us_count_fref_clk         = "rstctrl_1us_cnt";//
   localparam [19:0] rstctrl_1us_count_fref_clk_value   = (pll_refclk_freq == "125 MHz")?20'b00000000000001111101:20'b00000000000001100100;//
   localparam rstctrl_1ms_count_fref_clk         = "rstctrl_1ms_cnt";//
   localparam [19:0] rstctrl_1ms_count_fref_clk_value   = (pll_refclk_freq == "125 MHz")?20'b00001110100001001000:20'b00011000011010100000;//
   localparam rstctrl_off_cal_done_select        = (low_str(hard_oc_enable) == "true"):(LANES==1)?"ch0_sel":(LANES==2)?"ch01_sel":(LANES==4)?"ch0123_sel":(LANES==8)?"ch0123_5678_sel":"not_active":"not_active";
   localparam rstctrl_rx_pma_rstb_cmu_select     = (LANES==1)?"ch1cmu_sel":(LANES==2)?"ch4cmu_sel":(LANES==4)?"ch4cmu_sel":(LANES==8)?(low_str(gen123_lane_rate_mode)=="gen1_gen2_gen3")? "ch4_10cmu_sel":"ch4cmu_sel":"not_active"; // "ch1cmu_sel", "ch4cmu_sel", "ch4_10cmu_sel", "not_active".
   localparam rstctrl_rx_pma_rstb_select        =  (LANES==1)?"ch01_out":(LANES==2)?"ch014_out":(LANES==4)?"ch01234_out":(LANES==8)?(low_str(gen123_lane_rate_mode)=="gen1_gen2_gen3")? "ch012345678_10_out":"ch012345678_out":"not_active";        // "ch0_out", "ch01_out", "ch0123_out", "ch012345678_out", "ch012345678_10_out", "not_active".
   localparam rstctrl_rx_pll_freq_lock_select    = (LANES==1)?"ch0_sel":(LANES==2)?"ch01_sel":(LANES==4)?"ch0123_sel":(LANES==8)?"ch0123_5678_sel":"not_active"; // "ch0_sel", "ch01_sel", "ch0123_sel", "ch0123_5678_sel", "not_active", "ch0_phs_sel", "ch01_phs_sel", "ch0123_phs_sel", "ch0123_5678_phs_sel".
   localparam rstctrl_mask_tx_pll_lock_select    = "not_active";// "ch1_sel", "ch4_sel", "ch4_10_sel", "not_active".
   localparam rstctrl_rx_pll_lock_select         = (LANES==1)?"ch0_sel":(LANES==2)?"ch01_sel":(LANES==4)?"ch0123_sel":(LANES==8)?"ch0123_5678_sel":"not_active"; // "ch0_sel", "ch01_sel", "ch0123_sel", "ch0123_5678_sel", "not_active".
   localparam rstctrl_perstn_select              = "perstn_pin";// "perstn_pin", "perstn_pld".
   localparam rstctrl_tx_lc_pll_rstb_select      = (low_str(gen123_lane_rate_mode)=="gen1_gen2_gen3")?(LANES==1)?"ch1_sel":(LANES==2)?"ch4_sel":(LANES==4)?"ch4_sel":(LANES==8)?"ch4_10_sel":"not_active":"not_active"; //LC1 and LC3 used in Gen3 "ch1_out", "ch7_out", "not_active".
   localparam rstctrl_fref_clk_select            = "ch0_sel";// "ch0_sel", "ch1_sel", "ch2_sel", "ch3_sel", "ch4_sel", "ch5_sel", "ch6_sel", "ch7_sel", "ch8_sel", "ch9_sel", "ch10_sel", "ch11_sel".
   localparam rstctrl_off_cal_en_select          = (low_str(hard_oc_enable) == "true"):(LANES==1)?"ch0_out":(LANES==2)?"ch01_out":(LANES==4)?"ch0123_out":(LANES==8)?"ch0123_5678_out":"not_active":"not_active";
   localparam rstctrl_tx_pma_syncp_select        = (LANES==1)?"ch1_out":(LANES==2)?"ch4_out":(LANES==4)?"ch4_out":(LANES==8)?"ch4_10_out":"not_active";   // "ch1_out", "ch4_out", "ch4_10_out", "not_active".
   localparam rstctrl_rx_pcs_rst_n_select        = (LANES==1)?"ch0_out":(LANES==2)?"ch01_out":(LANES==4)?"ch0123_out":(LANES==8)?(low_str(gen123_lane_rate_mode)=="gen1_gen2_gen3")? "ch012345678_10_out":"ch012345678_out":"not_active";        //  "ch0_out", "ch01_out", "ch0123_out", "ch012345678_out", "ch012345678_10_out", "not_active".
   localparam rstctrl_tx_cmu_pll_lock_select     = (LANES==1)?"ch1_sel":(LANES==2)?"ch4_sel":(LANES==4)?"ch4_sel":(LANES==8)?(low_str(gen123_lane_rate_mode)=="gen1_gen2_gen3")? "ch4_10_sel":"ch4_sel":"not_active";   //  "ch1_sel", "ch4_sel", "ch4_10_sel", "not_active".
   localparam rstctrl_tx_pcs_rst_n_select        = (LANES==1)?"ch0_out":(LANES==2)?"ch01_out":(LANES==4)?"ch0123_out":(LANES==8)?(low_str(gen123_lane_rate_mode)=="gen1_gen2_gen3")? "ch012345678_10_out":"ch012345678_out":"not_active";       // "ch0_out", "ch01_out", "ch0123_out", "ch012345678_out", "ch012345678_10_out", "not_active".
   localparam rstctrl_tx_lc_pll_lock_select      = (low_str(gen123_lane_rate_mode)=="gen1_gen2_gen3")?(LANES==1)?"ch1_sel":(LANES==2)?"ch4_sel":(LANES==4)?"ch4_sel":(LANES==8)?"ch4_10_sel":"not_active":"not_active";// "ch1_sel", "ch7_sel", "not_active".
   localparam rstctrl_timer_a                    = "rstctrl_timer_a";
   localparam rstctrl_timer_a_type               = "fref_cycles";       // "milli_secs";//possible values are: "not_enabled", "milli_secs", "micro_secs", "fref_cycles"
   localparam [7:0] rstctrl_timer_a_value        = 8'd10;
   localparam rstctrl_timer_b                    = "rstctrl_timer_b";
   localparam rstctrl_timer_b_type               = "fref_cycles";        // "milli_secs";//possible values are: "not_enabled", "milli_secs", "micro_secs", "fref_cycles"
   localparam [7:0] rstctrl_timer_b_value        = 8'd10;
   localparam rstctrl_timer_c                    = "rstctrl_timer_c";
   localparam rstctrl_timer_c_type               = "fref_cycles";        // "milli_secs";//possible values are: "not_enabled", "milli_secs", "micro_secs", "fref_cycles"
   localparam [7:0] rstctrl_timer_c_value        = 8'd10;
   localparam rstctrl_timer_d                    = "rstctrl_timer_d";
   localparam rstctrl_timer_d_type               = "fref_cycles";        // "milli_secs";//possible values are: "not_enabled", "milli_secs", "micro_secs", "fref_cycles"
   localparam [7:0] rstctrl_timer_d_value        = 8'd20;
   localparam rstctrl_timer_e                    = "rstctrl_timer_e";
   localparam rstctrl_timer_e_type               = "fref_cycles";        // "milli_secs";//possible values are: "not_enabled", "milli_secs", "micro_secs", "fref_cycles"
   localparam [7:0] rstctrl_timer_e_value        = 8'd01;
   localparam rstctrl_timer_f                    = "rstctrl_timer_f";
   localparam rstctrl_timer_f_type               = "fref_cycles";        // "milli_secs";//possible values are: "not_enabled", "milli_secs", "micro_secs", "fref_cycles"
   localparam [7:0] rstctrl_timer_f_value        = 8'd10;
   localparam rstctrl_timer_g                    = "rstctrl_timer_g";
   localparam rstctrl_timer_g_type               = "fref_cycles";        // "milli_secs";//possible values are: "not_enabled", "milli_secs", "micro_secs", "fref_cycles"
   localparam [7:0] rstctrl_timer_g_value        = 8'd10;
   localparam rstctrl_timer_h                    = "rstctrl_timer_h";

   localparam rstctrl_timer_h_type               = (ALTPCIE_HIP_256_PIPEN1B_SIM_ONLY==1)?"micro_secs":"milli_secs";        // "milli_secs";//possible values are: "not_enabled", "milli_secs", "micro_secs", "fref_cycles"

   localparam [7:0] rstctrl_timer_h_value        = 8'd01;

   localparam rstctrl_timer_i                    = "rstctrl_timer_i";
   localparam rstctrl_timer_i_type               = "fref_cycles";        // "milli_secs";//possible values are: "not_enabled", "milli_secs", "micro_secs", "fref_cycles"
   localparam [7:0] rstctrl_timer_i_value        = 8'd20;
   localparam rstctrl_timer_j                    = "rstctrl_timer_j";
   localparam rstctrl_timer_j_type               = "micro_secs";        // "milli_secs";//possible values are: "not_enabled", "milli_secs", "micro_secs", "fref_cycles"
   localparam [7:0] rstctrl_timer_j_value        = 8'h1;

   localparam role_based_error_reporting         = "true";
   localparam gen3_ltssm_debug                   = (ALTPCIE_HIP_256_PIPEN1B_SIM_ONLY==1)?"false":"true";



// SERDES
//
   //input from reset controller
   wire  [LANES-1:0]                   serdes_xcvr_powerdown;  //
   wire                                serdes_tx_analogreset;
   wire                                serdes_fixedclk;
   wire                                fboutclk_fixedclk;
   wire                                open_fbclk_serdes;
   wire  [LANES-1:0]                   serdes_tx_digitalreset;
   wire  [LANES-1:0]                   serdes_rx_analogreset; // for rx pma
   wire  [LANES-1:0]                   serdes_rx_digitalreset; //for rx pcs
   wire  [LANES-1:0]                   serdes_rx_cal_busy;
   wire  [LANES-1:0]                   serdes_tx_cal_busy;
   wire  [LANES-1:0]                   serdes_rxpcs_rst_g3;
   wire                                serdes_txpma_rst_g3;

   //pipe interface ports
   wire  [LANES * deser_factor - 1:0]        serdes_pipe_txdata;
   wire  [((LANES * deser_factor)/8) - 1:0]  serdes_pipe_txdatak;
   wire  [LANES - 1:0]                       serdes_pipe_txdetectrx_loopback;
   wire  [LANES - 1:0]                       serdes_pipe_txcompliance;
   wire  [LANES - 1:0]                       serdes_pipe_txelecidle;
   wire  [LANES - 1:0]                       serdes_pipe_txdeemph;
   wire  [LANES - 1:0]                       serdes_pipe_txswing;
   wire  [LANES - 1:0]                       serdes_pipe_tx_data_valid;
   wire  [LANES - 1:0]                       serdes_pipe_tx_blk_start;
   wire  [8 - 1:0]                       serdes_pipe_rx_data_valid;
   wire  [8 - 1:0]                       serdes_pipe_rx_blk_start;
   wire  [LANES*18 -1:0]                     serdes_current_coeff;
   wire  [LANES*3  -1:0]                     serdes_current_rxpreset;
   wire  [LANES*2  -1:0]                     serdes_pipe_tx_sync_hdr;
   wire  [8*2  -1:0]                     serdes_pipe_rx_sync_hdr;

   wire  [LANES*3 - 1:0]                     serdes_pipe_txmargin;
   wire  [LANES*2 - 1:0]                     serdes_pipe_rate;
   wire  [1:0]                               serdes_ratectrl;
   wire  [LANES*2 - 1:0]                     serdes_pipe_powerdown;

   wire  [8 * deser_factor - 1:0]        serdes_pipe_rxdata;
   wire  [((8 * deser_factor)/8) - 1:0]  serdes_pipe_rxdatak;
   wire  [8 - 1:0]                       serdes_pipe_rxvalid;
   wire  [LANES - 1:0]                       serdes_pipe_rxpolarity;
   wire  [8 - 1:0]                       serdes_pipe_rxelecidle;
   wire  [8 - 1:0]                       serdes_pipe_phystatus;
   wire  [8*3 - 1:0]                     serdes_pipe_rxstatus;
   wire  [9*3 - 1:0]                     serdes_pld8grxstatus;

   //non-PIPE ports
   //MM ports
   wire  [LANES*3-1:0]                 serdes_rx_eidleinfersel;
   wire  [LANES-1:0]                   serdes_rx_set_locktodata;
   wire  [LANES-1:0]                   serdes_rx_set_locktoref;
   wire  [LANES-1:0]                   serdes_tx_invpolarity;
   wire  [((LANES*deser_factor)/8) -1:0] serdes_rx_errdetect;
   wire  [((LANES*deser_factor)/8) -1:0] serdes_rx_disperr;
   wire  [((LANES*deser_factor)/8) -1:0] serdes_rx_patterndetect;
   wire  [((LANES*deser_factor)/8) -1:0] serdes_rx_syncstatus;
   wire  [LANES-1:0]                   serdes_rx_phase_comp_fifo_error;
   wire  [LANES-1:0]                   serdes_tx_phase_comp_fifo_error;
   wire  [LANES-1:0]                   serdes_rx_is_lockedtoref;
   wire  [LANES-1:0]                   serdes_rx_signaldetect;
   wire  [LANES-1:0]                   serdes_rx_is_lockedtodata;

   //non-MM ports
   wire  [LANES-1:0]                   serdes_rx_serial_data;
   wire  [LANES-1:0]                   serdes_tx_serial_data;
   wire                                serdes_pipe_pclk;
   wire                                serdes_pipe_pclkch1      ;
   wire                                serdes_pllfixedclkch0;
   wire                                serdes_pllfixedclkch1;
   wire                                serdes_pipe_pclkcentral  ;
   wire                                serdes_pllfixedclkcentral;

   wire                                mserdes_pipe_pclk;
   wire                                mserdes_pipe_pclkch1      ;
   wire                                mserdes_pipe_pclkcentral  ;
   wire                                mserdes_pllfixedclkch0;
   wire                                mserdes_pllfixedclkch1;
   wire                                mserdes_pllfixedclkcentral;

   wire                                sim_pipe32_pclk;
   wire                                reset_status_hip;
   reg                                 reset_status_hip_sync;

   // reset controller signal
   wire rst_ctrl_rx_pll_locked  ; //
   wire rst_ctrl_rxanalogreset  ;
   wire rst_ctrl_rxdigitalreset ;
   wire rst_ctrl_xcvr_powerdown  ;
   wire rst_ctrl_txdigitalreset ;

   // Pull to known values
   wire unconnected_wire = 1'b0;
   wire [512:0] unconnected_bus = {512{1'b0}};
   wire [512:0] UNCON;

   ////////////////////////////////////////////////////////////////////////////////////
   //
   // HIP Control signals
   //
   reg     flrreset; // Hip input
   wire    flrsts;   // HIP Output Open

   wire npor_sync;
   wire npor_int;

   ////////////////////////////////////////////////////////////////////////////////////
   //
   // Application AST interface
   //
   wire  [255 : 0]      txstdata;
   wire  [1 : 0]        txstempty;
   wire  [3 : 0]        txsteop;
   wire  [3 : 0]        txsterr;
   wire  [31 : 0]       txstparity;
   wire  [3 : 0]        txstsop;
   wire                 txstvalid;
   wire                 txstready;

   wire                 rxstmask;
   wire                 rxstready;
   wire  [7 : 0]        rxstbardec1;
   wire  [7 : 0]        rxstbardec2;
   wire  [31 : 0]       rxstbe;
   wire  [255 : 0]      rxstdata;
   wire  [1 : 0]        rxstempty;
   wire  [3 : 0]        rxsteop;
   wire  [3 : 0]        rxsterr;
   wire  [31 : 0]       rxstparity;
   wire  [3 : 0]        rxstsop;
   wire  [3 : 0]        rxstvalid;

// For PCI-SIG tests
   wire [31:0]          test_in_hip_eq;
   wire [31:0]          test_in_1_hip_eq;
   wire [31:0]          reserved_in_eq;
   wire [8*18-1:0]      tx_coeff_pma_eq;
   wire                 hip_dprio_clk;
   wire                 hip_dprio_reset_n;
   wire                 hip_dprio_ser_shift_load;
   wire                 hip_dprio_interface_sel;
   wire [9:0]           hip_dprio_address;
   wire                 hip_dprio_read;
   wire [15:0]          hip_dprio_readdata;
   wire                 hip_dprio_write;
   wire [15:0]          hip_dprio_writedata;
   wire [1:0]           hip_dprio_byteen;

   wire swdnout                        ;
   wire swupout                        ;




   assign  txstdata   =  (ST_DATA_WIDTH==256)?tx_st_data  [ST_DATA_WIDTH-1 :0]:(ST_DATA_WIDTH==128)?{128'h0,tx_st_data  [ST_DATA_WIDTH-1 :0]}:{192'h0,tx_st_data  [ST_DATA_WIDTH-1 :0]};
   assign  txsteop    =  (ST_DATA_WIDTH==256)?tx_st_eop   [ST_CTRL_WIDTH-1 :0]:(ST_DATA_WIDTH==128)?{2'h0  ,tx_st_eop   [ST_CTRL_WIDTH-1 :0]}:{3'h0  ,tx_st_eop   [ST_CTRL_WIDTH-1 :0]};
   assign  txsterr    =  (ST_DATA_WIDTH==256)?tx_st_err   [ST_CTRL_WIDTH-1 :0]:(ST_DATA_WIDTH==128)?{2'h0  ,tx_st_err   [ST_CTRL_WIDTH-1 :0]}:{3'h0  ,tx_st_err   [ST_CTRL_WIDTH-1 :0]};
   assign  txstparity =  (ST_DATA_WIDTH==256)?tx_st_parity[ST_BE_WIDTH-1   :0]:(ST_DATA_WIDTH==128)?{16'h0 ,tx_st_parity[ST_BE_WIDTH-1   :0]}:{24'h0 ,tx_st_parity[ST_BE_WIDTH-1   :0]};
   assign  txstsop    =  (ST_DATA_WIDTH==256)?tx_st_sop   [ST_CTRL_WIDTH-1 :0]:(ST_DATA_WIDTH==128)?{2'h0  ,tx_st_sop   [ST_CTRL_WIDTH-1 :0]}:{3'h0  ,tx_st_sop   [ST_CTRL_WIDTH-1 :0]};
   assign  txstvalid  =  tx_st_valid                     ;
   assign  txstempty  =  tx_st_empty [1               :0];
   assign  tx_st_ready=  txstready   ;

   assign  rxstmask                         = rx_st_mask ;
   assign  rxstready                        = rx_st_ready;
   assign  rx_st_bardec1[7              :0] = rxstbardec1[7              :0];
   assign  rx_st_bardec2[7              :0] = rxstbardec2[7              :0];
   assign  rx_st_be     [ST_BE_WIDTH-1  :0] = rxstbe     [ST_BE_WIDTH-1  :0];
   assign  rx_st_data   [ST_DATA_WIDTH-1:0] = rxstdata   [ST_DATA_WIDTH-1:0];
   assign  rx_st_empty  [1              :0] = rxstempty  [1              :0];
   assign  rx_st_eop    [ST_CTRL_WIDTH-1:0] = rxsteop    [ST_CTRL_WIDTH-1:0];
   assign  rx_st_err                        = rxsterr;
   assign  rx_st_parity [ST_BE_WIDTH-1  :0] = rxstparity [ST_BE_WIDTH-1  :0];
   assign  rx_st_sop    [ST_CTRL_WIDTH-1:0] = rxstsop    [ST_CTRL_WIDTH-1:0];
   assign  rx_st_valid  [ST_CTRL_WIDTH-1:0] = rxstvalid  [ST_CTRL_WIDTH-1:0];

   generate begin : g_rx_st_data_ext
      if ((ST_DATA_WIDTH<256)&&(ST_CTRL_WIDTH<4)&&(ST_BE_WIDTH<32)) begin
         assign  rx_st_be      [31  :ST_BE_WIDTH]   = ZEROS [31  :ST_BE_WIDTH]    ;
         assign  rx_st_data    [255 :ST_DATA_WIDTH] = ZEROS [255 :ST_DATA_WIDTH]  ;
         assign  rx_st_parity  [31  :ST_BE_WIDTH]   = ZEROS [31  :ST_BE_WIDTH]    ;
         assign  rx_st_eop     [3   :ST_CTRL_WIDTH] = ZEROS [3   :ST_CTRL_WIDTH]  ;
         assign  rx_st_sop     [3   :ST_CTRL_WIDTH] = ZEROS [3   :ST_CTRL_WIDTH]  ;
         assign  rx_st_valid   [3   :ST_CTRL_WIDTH] = ZEROS [3   :ST_CTRL_WIDTH]  ;
      end
   end
   endgenerate
   ////////////////////////////////////////////////////////////////////////////////////
   //
   // PIPE signals interface
   //
   wire                phystatus0     ;// HIP input
   wire                phystatus1     ;// HIP input
   wire                phystatus2     ;// HIP input
   wire                phystatus3     ;// HIP input
   wire                phystatus4     ;// HIP input
   wire                phystatus5     ;// HIP input
   wire                phystatus6     ;// HIP input
   wire                phystatus7     ;// HIP input
   wire                rxblkst0       ;//= 1'b0;// HIP input
   wire                rxblkst1       ;//= 1'b0;// HIP input
   wire                rxblkst2       ;//= 1'b0;// HIP input
   wire                rxblkst3       ;//= 1'b0;// HIP input
   wire                rxblkst4       ;//= 1'b0;// HIP input
   wire                rxblkst5       ;//= 1'b0;// HIP input
   wire                rxblkst6       ;//= 1'b0;// HIP input
   wire                rxblkst7       ;//= 1'b0;// HIP input
   wire [31 : 0]       rxdata0        ;// HIP input  [31 : 0]
   wire [31 : 0]       rxdata1        ;// HIP input  [31 : 0]
   wire [31 : 0]       rxdata2        ;// HIP input  [31 : 0]
   wire [31 : 0]       rxdata3        ;// HIP input  [31 : 0]
   wire [31 : 0]       rxdata4        ;// HIP input  [31 : 0]
   wire [31 : 0]       rxdata5        ;// HIP input  [31 : 0]
   wire [31 : 0]       rxdata6        ;// HIP input  [31 : 0]
   wire [31 : 0]       rxdata7        ;// HIP input  [31 : 0]
   wire [3 : 0]        rxdatak0       ;// HIP input  [3 : 0]
   wire [3 : 0]        rxdatak1       ;// HIP input  [3 : 0]
   wire [3 : 0]        rxdatak2       ;// HIP input  [3 : 0]
   wire [3 : 0]        rxdatak3       ;// HIP input  [3 : 0]
   wire [3 : 0]        rxdatak4       ;// HIP input  [3 : 0]
   wire [3 : 0]        rxdatak5       ;// HIP input  [3 : 0]
   wire [3 : 0]        rxdatak6       ;// HIP input  [3 : 0]
   wire [3 : 0]        rxdatak7       ;// HIP input  [3 : 0]
   wire                rxdataskip0    ;//= 1'b0;// HIP input
   wire                rxdataskip1    ;//= 1'b0;// HIP input
   wire                rxdataskip2    ;//= 1'b0;// HIP input
   wire                rxdataskip3    ;//= 1'b0;// HIP input
   wire                rxdataskip4    ;//= 1'b0;// HIP input
   wire                rxdataskip5    ;//= 1'b0;// HIP input
   wire                rxdataskip6    ;//= 1'b0;// HIP input
   wire                rxdataskip7    ;//= 1'b0;// HIP input
   wire                rxelecidle0    ;// HIP input
   wire                rxelecidle1    ;// HIP input
   wire                rxelecidle2    ;// HIP input
   wire                rxelecidle3    ;// HIP input
   wire                rxelecidle4    ;// HIP input
   wire                rxelecidle5    ;// HIP input
   wire                rxelecidle6    ;// HIP input
   wire                rxelecidle7    ;// HIP input
   wire                rxfreqlocked0  = 1'b0;// HIP input
   wire                rxfreqlocked1  = 1'b0;// HIP input
   wire                rxfreqlocked2  = 1'b0;// HIP input
   wire                rxfreqlocked3  = 1'b0;// HIP input
   wire                rxfreqlocked4  = 1'b0;// HIP input
   wire                rxfreqlocked5  = 1'b0;// HIP input
   wire                rxfreqlocked6  = 1'b0;// HIP input
   wire                rxfreqlocked7  = 1'b0;// HIP input
   wire [2 : 0]        rxstatus0      ;// HIP input  [2 : 0]
   wire [2 : 0]        rxstatus1      ;// HIP input  [2 : 0]
   wire [2 : 0]        rxstatus2      ;// HIP input  [2 : 0]
   wire [2 : 0]        rxstatus3      ;// HIP input  [2 : 0]
   wire [2 : 0]        rxstatus4      ;// HIP input  [2 : 0]
   wire [2 : 0]        rxstatus5      ;// HIP input  [2 : 0]
   wire [2 : 0]        rxstatus6      ;// HIP input  [2 : 0]
   wire [2 : 0]        rxstatus7      ;// HIP input  [2 : 0]
   wire [1 : 0]        rxsynchd0      ;//= 2'b00;// HIP input  [1 : 0]
   wire [1 : 0]        rxsynchd1      ;//= 2'b00;// HIP input  [1 : 0]
   wire [1 : 0]        rxsynchd2      ;//= 2'b00;// HIP input  [1 : 0]
   wire [1 : 0]        rxsynchd3      ;//= 2'b00;// HIP input  [1 : 0]
   wire [1 : 0]        rxsynchd4      ;//= 2'b00;// HIP input  [1 : 0]
   wire [1 : 0]        rxsynchd5      ;//= 2'b00;// HIP input  [1 : 0]
   wire [1 : 0]        rxsynchd6      ;//= 2'b00;// HIP input  [1 : 0]
   wire [1 : 0]        rxsynchd7      ;//= 2'b00;// HIP input  [1 : 0]
   wire                rxvalid0       ;// HIP input
   wire                rxvalid1       ;// HIP input
   wire                rxvalid2       ;// HIP input
   wire                rxvalid3       ;// HIP input
   wire                rxvalid4       ;// HIP input
   wire                rxvalid5       ;// HIP input
   wire                rxvalid6       ;// HIP input
   wire                rxvalid7       ;// HIP input
   wire [17 : 0]       currentcoeff0             ;// HIP output [17 : 0]
   wire [17 : 0]       currentcoeff1             ;// HIP output [17 : 0]
   wire [17 : 0]       currentcoeff2             ;// HIP output [17 : 0]
   wire [17 : 0]       currentcoeff3             ;// HIP output [17 : 0]
   wire [17 : 0]       currentcoeff4             ;// HIP output [17 : 0]
   wire [17 : 0]       currentcoeff5             ;// HIP output [17 : 0]
   wire [17 : 0]       currentcoeff6             ;// HIP output [17 : 0]
   wire [17 : 0]       currentcoeff7             ;// HIP output [17 : 0]
   wire [2 : 0]        currentrxpreset0          ;// HIP output [2 : 0]
   wire [2 : 0]        currentrxpreset1          ;// HIP output [2 : 0]
   wire [2 : 0]        currentrxpreset2          ;// HIP output [2 : 0]
   wire [2 : 0]        currentrxpreset3          ;// HIP output [2 : 0]
   wire [2 : 0]        currentrxpreset4          ;// HIP output [2 : 0]
   wire [2 : 0]        currentrxpreset5          ;// HIP output [2 : 0]
   wire [2 : 0]        currentrxpreset6          ;// HIP output [2 : 0]
   wire [2 : 0]        currentrxpreset7          ;// HIP output [2 : 0]
   wire [2 : 0]        eidleinfersel0            ;// HIP output [2 : 0]
   wire [2 : 0]        eidleinfersel1            ;// HIP output [2 : 0]
   wire [2 : 0]        eidleinfersel2            ;// HIP output [2 : 0]
   wire [2 : 0]        eidleinfersel3            ;// HIP output [2 : 0]
   wire [2 : 0]        eidleinfersel4            ;// HIP output [2 : 0]
   wire [2 : 0]        eidleinfersel5            ;// HIP output [2 : 0]
   wire [2 : 0]        eidleinfersel6            ;// HIP output [2 : 0]
   wire [2 : 0]        eidleinfersel7            ;// HIP output [2 : 0]
   wire [1 : 0]        powerdown0                ;// HIP output [1 : 0]
   wire [1 : 0]        powerdown1                ;// HIP output [1 : 0]
   wire [1 : 0]        powerdown2                ;// HIP output [1 : 0]
   wire [1 : 0]        powerdown3                ;// HIP output [1 : 0]
   wire [1 : 0]        powerdown4                ;// HIP output [1 : 0]
   wire [1 : 0]        powerdown5                ;// HIP output [1 : 0]
   wire [1 : 0]        powerdown6                ;// HIP output [1 : 0]
   wire [1 : 0]        powerdown7                ;// HIP output [1 : 0]
   wire                rxpolarity0               ;// HIP output
   wire                rxpolarity1               ;// HIP output
   wire                rxpolarity2               ;// HIP output
   wire                rxpolarity3               ;// HIP output
   wire                rxpolarity4               ;// HIP output
   wire                rxpolarity5               ;// HIP output
   wire                rxpolarity6               ;// HIP output
   wire                rxpolarity7               ;// HIP output
   wire                txblkst0                  ;// HIP output
   wire                txblkst1                  ;// HIP output
   wire                txblkst2                  ;// HIP output
   wire                txblkst3                  ;// HIP output
   wire                txblkst4                  ;// HIP output
   wire                txblkst5                  ;// HIP output
   wire                txblkst6                  ;// HIP output
   wire                txblkst7                  ;// HIP output
   wire                txcompl0                  ;// HIP output
   wire                txcompl1                  ;// HIP output
   wire                txcompl2                  ;// HIP output
   wire                txcompl3                  ;// HIP output
   wire                txcompl4                  ;// HIP output
   wire                txcompl5                  ;// HIP output
   wire                txcompl6                  ;// HIP output
   wire                txcompl7                  ;// HIP output
   wire [31 : 0]       txdata0                   ;// HIP output [31 : 0]
   wire [31 : 0]       txdata1                   ;// HIP output [31 : 0]
   wire [31 : 0]       txdata2                   ;// HIP output [31 : 0]
   wire [31 : 0]       txdata3                   ;// HIP output [31 : 0]
   wire [31 : 0]       txdata4                   ;// HIP output [31 : 0]
   wire [31 : 0]       txdata5                   ;// HIP output [31 : 0]
   wire [31 : 0]       txdata6                   ;// HIP output [31 : 0]
   wire [31 : 0]       txdata7                   ;// HIP output [31 : 0]
   wire [3 : 0]        txdatak0                  ;// HIP output [3 : 0]
   wire [3 : 0]        txdatak1                  ;// HIP output [3 : 0]
   wire [3 : 0]        txdatak2                  ;// HIP output [3 : 0]
   wire [3 : 0]        txdatak3                  ;// HIP output [3 : 0]
   wire [3 : 0]        txdatak4                  ;// HIP output [3 : 0]
   wire [3 : 0]        txdatak5                  ;// HIP output [3 : 0]
   wire [3 : 0]        txdatak6                  ;// HIP output [3 : 0]
   wire [3 : 0]        txdatak7                  ;// HIP output [3 : 0]
   wire                txdatavalid0              ;// Going nowhere to remove
   wire                txdatavalid1              ;// Going nowhere to remove
   wire                txdatavalid2              ;// Going nowhere to remove
   wire                txdatavalid3              ;// Going nowhere to remove
   wire                txdatavalid4              ;// Going nowhere to remove
   wire                txdatavalid5              ;// Going nowhere to remove
   wire                txdatavalid6              ;// Going nowhere to remove
   wire                txdatavalid7              ;// Going nowhere to remove
   wire                txswing0                  ;// HIP output
   wire                txswing1                  ;// HIP output
   wire                txswing2                  ;// HIP output
   wire                txswing3                  ;// HIP output
   wire                txswing4                  ;// HIP output
   wire                txswing5                  ;// HIP output
   wire                txswing6                  ;// HIP output
   wire                txswing7                  ;// HIP output
   wire                txdataskip0               ;//HIP output
   wire                txdataskip1               ;//HIP output
   wire                txdataskip2               ;//HIP output
   wire                txdataskip3               ;//HIP output
   wire                txdataskip4               ;//HIP output
   wire                txdataskip5               ;//HIP output
   wire                txdataskip6               ;//HIP output
   wire                txdataskip7               ;//HIP output
   wire                txdeemph0                 ;// HIP output
   wire                txdeemph1                 ;// HIP output
   wire                txdeemph2                 ;// HIP output
   wire                txdeemph3                 ;// HIP output
   wire                txdeemph4                 ;// HIP output
   wire                txdeemph5                 ;// HIP output
   wire                txdeemph6                 ;// HIP output
   wire                txdeemph7                 ;// HIP output
   wire                txdetectrx0               ;// HIP output
   wire                txdetectrx1               ;// HIP output
   wire                txdetectrx2               ;// HIP output
   wire                txdetectrx3               ;// HIP output
   wire                txdetectrx4               ;// HIP output
   wire                txdetectrx5               ;// HIP output
   wire                txdetectrx6               ;// HIP output
   wire                txdetectrx7               ;// HIP output
   wire                txelecidle0               ;// HIP output
   wire                txelecidle1               ;// HIP output
   wire                txelecidle2               ;// HIP output
   wire                txelecidle3               ;// HIP output
   wire                txelecidle4               ;// HIP output
   wire                txelecidle5               ;// HIP output
   wire                txelecidle6               ;// HIP output
   wire                txelecidle7               ;// HIP output
   wire [2 : 0]        txmargin0                 ;// HIP output [2 : 0]
   wire [2 : 0]        txmargin1                 ;// HIP output [2 : 0]
   wire [2 : 0]        txmargin2                 ;// HIP output [2 : 0]
   wire [2 : 0]        txmargin3                 ;// HIP output [2 : 0]
   wire [2 : 0]        txmargin4                 ;// HIP output [2 : 0]
   wire [2 : 0]        txmargin5                 ;// HIP output [2 : 0]
   wire [2 : 0]        txmargin6                 ;// HIP output [2 : 0]
   wire [2 : 0]        txmargin7                 ;// HIP output [2 : 0]
   wire [1 : 0]        txsynchd0                 ;// HIP output [1 : 0]
   wire [1 : 0]        txsynchd1                 ;// HIP output [1 : 0]
   wire [1 : 0]        txsynchd2                 ;// HIP output [1 : 0]
   wire [1 : 0]        txsynchd3                 ;// HIP output [1 : 0]
   wire [1 : 0]        txsynchd4                 ;// HIP output [1 : 0]
   wire [1 : 0]        txsynchd5                 ;// HIP output [1 : 0]
   wire [1 : 0]        txsynchd6                 ;// HIP output [1 : 0]
   wire [1 : 0]        txsynchd7                 ;// HIP output [1 : 0]
   wire [2 : 0]        pld8grxstatus0            ;// RX status from PCS
   wire [2 : 0]        pld8grxstatus1            ;// RX status from PCS
   wire [2 : 0]        pld8grxstatus2            ;// RX status from PCS
   wire [2 : 0]        pld8grxstatus3            ;// RX status from PCS
   wire [2 : 0]        pld8grxstatus4            ;// RX status from PCS
   wire [2 : 0]        pld8grxstatus5            ;// RX status from PCS
   wire [2 : 0]        pld8grxstatus6            ;// RX status from PCS
   wire [2 : 0]        pld8grxstatus7            ;// RX status from PCS


   wire [ 1:0 ]        rate0;
   wire [ 1:0 ]        rate1;
   wire [ 1:0 ]        rate2;
   wire [ 1:0 ]        rate3;
   wire [ 1:0 ]        rate4;
   wire [ 1:0 ]        rate5;
   wire [ 1:0 ]        rate6;
   wire [ 1:0 ]        rate7;
   wire [ 1:0 ]        ratectrl;

   wire                phystatus0_ext32b;
   wire                phystatus1_ext32b;
   wire                phystatus2_ext32b;
   wire                phystatus3_ext32b;
   wire                phystatus4_ext32b;
   wire                phystatus5_ext32b;
   wire                phystatus6_ext32b;
   wire                phystatus7_ext32b;
   wire [31 : 0]       rxdata0_ext32b;
   wire [31 : 0]       rxdata1_ext32b;
   wire [31 : 0]       rxdata2_ext32b;
   wire [31 : 0]       rxdata3_ext32b;
   wire [31 : 0]       rxdata4_ext32b;
   wire [31 : 0]       rxdata5_ext32b;
   wire [31 : 0]       rxdata6_ext32b;
   wire [31 : 0]       rxdata7_ext32b;
   wire [3  : 0]       rxdatak0_ext32b;
   wire [3  : 0]       rxdatak1_ext32b;
   wire [3  : 0]       rxdatak2_ext32b;
   wire [3  : 0]       rxdatak3_ext32b;
   wire [3  : 0]       rxdatak4_ext32b;
   wire [3  : 0]       rxdatak5_ext32b;
   wire [3  : 0]       rxdatak6_ext32b;
   wire [3  : 0]       rxdatak7_ext32b;
   wire                rxelecidle0_ext32b;
   wire                rxelecidle1_ext32b;
   wire                rxelecidle2_ext32b;
   wire                rxelecidle3_ext32b;
   wire                rxelecidle4_ext32b;
   wire                rxelecidle5_ext32b;
   wire                rxelecidle6_ext32b;
   wire                rxelecidle7_ext32b;
   wire                rxfreqlocked0_ext32b;
   wire                rxfreqlocked1_ext32b;
   wire                rxfreqlocked2_ext32b;
   wire                rxfreqlocked3_ext32b;
   wire                rxfreqlocked4_ext32b;
   wire                rxfreqlocked5_ext32b;
   wire                rxfreqlocked6_ext32b;
   wire                rxfreqlocked7_ext32b;
   wire [2 : 0]        rxstatus0_ext32b;
   wire [2 : 0]        rxstatus1_ext32b;
   wire [2 : 0]        rxstatus2_ext32b;
   wire [2 : 0]        rxstatus3_ext32b;
   wire [2 : 0]        rxstatus4_ext32b;
   wire [2 : 0]        rxstatus5_ext32b;
   wire [2 : 0]        rxstatus6_ext32b;
   wire [2 : 0]        rxstatus7_ext32b;
   wire                rxdataskip0_ext32b;
   wire                rxdataskip1_ext32b;
   wire                rxdataskip2_ext32b;
   wire                rxdataskip3_ext32b;
   wire                rxdataskip4_ext32b;
   wire                rxdataskip5_ext32b;
   wire                rxdataskip6_ext32b;
   wire                rxdataskip7_ext32b;
   wire                rxblkst0_ext32b;
   wire                rxblkst1_ext32b;
   wire                rxblkst2_ext32b;
   wire                rxblkst3_ext32b;
   wire                rxblkst4_ext32b;
   wire                rxblkst5_ext32b;
   wire                rxblkst6_ext32b;
   wire                rxblkst7_ext32b;
   wire [1 : 0]        rxsynchd0_ext32b;
   wire [1 : 0]        rxsynchd1_ext32b;
   wire [1 : 0]        rxsynchd2_ext32b;
   wire [1 : 0]        rxsynchd3_ext32b;
   wire [1 : 0]        rxsynchd4_ext32b;
   wire [1 : 0]        rxsynchd5_ext32b;
   wire [1 : 0]        rxsynchd6_ext32b;
   wire [1 : 0]        rxsynchd7_ext32b;
   wire                rxvalid0_ext32b;
   wire                rxvalid1_ext32b;
   wire                rxvalid2_ext32b;
   wire                rxvalid3_ext32b;
   wire                rxvalid4_ext32b;
   wire                rxvalid5_ext32b;
   wire                rxvalid6_ext32b;
   wire                rxvalid7_ext32b;

   wire [31 : 0]       pipe32_sim_rxdata0        ;// HIP input  [31 : 0]
   wire [31 : 0]       pipe32_sim_rxdata1        ;// HIP input  [31 : 0]
   wire [31 : 0]       pipe32_sim_rxdata2        ;// HIP input  [31 : 0]
   wire [31 : 0]       pipe32_sim_rxdata3        ;// HIP input  [31 : 0]
   wire [31 : 0]       pipe32_sim_rxdata4        ;// HIP input  [31 : 0]
   wire [31 : 0]       pipe32_sim_rxdata5        ;// HIP input  [31 : 0]
   wire [31 : 0]       pipe32_sim_rxdata6        ;// HIP input  [31 : 0]
   wire [31 : 0]       pipe32_sim_rxdata7        ;// HIP input  [31 : 0]
   wire [3 : 0]        pipe32_sim_rxdatak0       ;// HIP input  [3 : 0]
   wire [3 : 0]        pipe32_sim_rxdatak1       ;// HIP input  [3 : 0]
   wire [3 : 0]        pipe32_sim_rxdatak2       ;// HIP input  [3 : 0]
   wire [3 : 0]        pipe32_sim_rxdatak3       ;// HIP input  [3 : 0]
   wire [3 : 0]        pipe32_sim_rxdatak4       ;// HIP input  [3 : 0]
   wire [3 : 0]        pipe32_sim_rxdatak5       ;// HIP input  [3 : 0]
   wire [3 : 0]        pipe32_sim_rxdatak6       ;// HIP input  [3 : 0]
   wire [3 : 0]        pipe32_sim_rxdatak7       ;// HIP input  [3 : 0]
   wire                pipe32_sim_rxvalid0       ;// HIP input
   wire                pipe32_sim_rxvalid1       ;// HIP input
   wire                pipe32_sim_rxvalid2       ;// HIP input
   wire                pipe32_sim_rxvalid3       ;// HIP input
   wire                pipe32_sim_rxvalid4       ;// HIP input
   wire                pipe32_sim_rxvalid5       ;// HIP input
   wire                pipe32_sim_rxvalid6       ;// HIP input
   wire                pipe32_sim_rxvalid7       ;// HIP input
   wire                pipe32_sim_rxelecidle0    ;// HIP input
   wire                pipe32_sim_rxelecidle1    ;// HIP input
   wire                pipe32_sim_rxelecidle2    ;// HIP input
   wire                pipe32_sim_rxelecidle3    ;// HIP input
   wire                pipe32_sim_rxelecidle4    ;// HIP input
   wire                pipe32_sim_rxelecidle5    ;// HIP input
   wire                pipe32_sim_rxelecidle6    ;// HIP input
   wire                pipe32_sim_rxelecidle7    ;// HIP input
   wire                pipe32_sim_phystatus0     ;// HIP input
   wire                pipe32_sim_phystatus1     ;// HIP input
   wire                pipe32_sim_phystatus2     ;// HIP input
   wire                pipe32_sim_phystatus3     ;// HIP input
   wire                pipe32_sim_phystatus4     ;// HIP input
   wire                pipe32_sim_phystatus5     ;// HIP input
   wire                pipe32_sim_phystatus6     ;// HIP input
   wire                pipe32_sim_phystatus7     ;// HIP input
   wire [2 : 0]        pipe32_sim_rxstatus0      ;// HIP input  [2 : 0]
   wire [2 : 0]        pipe32_sim_rxstatus1      ;// HIP input  [2 : 0]
   wire [2 : 0]        pipe32_sim_rxstatus2      ;// HIP input  [2 : 0]
   wire [2 : 0]        pipe32_sim_rxstatus3      ;// HIP input  [2 : 0]
   wire [2 : 0]        pipe32_sim_rxstatus4      ;// HIP input  [2 : 0]
   wire [2 : 0]        pipe32_sim_rxstatus5      ;// HIP input  [2 : 0]
   wire [2 : 0]        pipe32_sim_rxstatus6      ;// HIP input  [2 : 0]
   wire [2 : 0]        pipe32_sim_rxstatus7      ;// HIP input  [2 : 0]
   wire                pipe32_sim_rxdataskip0    ;//= 1'b0;// HIP input
   wire                pipe32_sim_rxdataskip1    ;//= 1'b0;// HIP input
   wire                pipe32_sim_rxdataskip2    ;//= 1'b0;// HIP input
   wire                pipe32_sim_rxdataskip3    ;//= 1'b0;// HIP input
   wire                pipe32_sim_rxdataskip4    ;//= 1'b0;// HIP input
   wire                pipe32_sim_rxdataskip5    ;//= 1'b0;// HIP input
   wire                pipe32_sim_rxdataskip6    ;//= 1'b0;// HIP input
   wire                pipe32_sim_rxdataskip7    ;//= 1'b0;// HIP input
   wire                pipe32_sim_rxblkst0       ;//= 1'b0;// HIP input
   wire                pipe32_sim_rxblkst1       ;//= 1'b0;// HIP input
   wire                pipe32_sim_rxblkst2       ;//= 1'b0;// HIP input
   wire                pipe32_sim_rxblkst3       ;//= 1'b0;// HIP input
   wire                pipe32_sim_rxblkst4       ;//= 1'b0;// HIP input
   wire                pipe32_sim_rxblkst5       ;//= 1'b0;// HIP input
   wire                pipe32_sim_rxblkst6       ;//= 1'b0;// HIP input
   wire                pipe32_sim_rxblkst7       ;//= 1'b0;// HIP input
   wire [1 : 0]        pipe32_sim_rxsynchd0      ;//= 2'b00;// HIP input  [1 : 0]
   wire [1 : 0]        pipe32_sim_rxsynchd1      ;//= 2'b00;// HIP input  [1 : 0]
   wire [1 : 0]        pipe32_sim_rxsynchd2      ;//= 2'b00;// HIP input  [1 : 0]
   wire [1 : 0]        pipe32_sim_rxsynchd3      ;//= 2'b00;// HIP input  [1 : 0]
   wire [1 : 0]        pipe32_sim_rxsynchd4      ;//= 2'b00;// HIP input  [1 : 0]
   wire [1 : 0]        pipe32_sim_rxsynchd5      ;//= 2'b00;// HIP input  [1 : 0]
   wire [1 : 0]        pipe32_sim_rxsynchd6      ;//= 2'b00;// HIP input  [1 : 0]
   wire [1 : 0]        pipe32_sim_rxsynchd7      ;//= 2'b00;// HIP input  [1 : 0]
   wire                pipe32_sim_pipe_pclk;
   wire                pipe32_sim_pipe_pclkch1      ;
   wire                pipe32_sim_pipe_pclkcentral  ;
   wire                pipe32_sim_pllfixedclkch0;
   wire                pipe32_sim_pllfixedclkch1;
   wire                pipe32_sim_pllfixedclkcentral;

   // Hardreset signals
   // Reset Control Interface Ch0
   wire [11:0] txpcsrstn;          // HIP output
   wire [11:0] rxpcsrstn;          // HIP output
   wire [11:0] g3txpcsrstn;        // HIP output
   wire [11:0] g3rxpcsrstn;        // HIP output
   wire [11:0] txpmasyncp;         // HIP output
   wire [11:0] rxpmarstb;          // HIP output
   wire [11:0] txlcpllrstb;        // HIP output
   wire [11:0] offcalen;           // HIP output
   wire [11:0] frefclk;            // HIP input
   wire [11:0] offcaldone;         // HIP input
   wire [11:0] txlcplllock;        // HIP input
   wire [11:0] rxfreqtxcmuplllock; // HIP input
   wire [11:0] rxpllphaselock;     // HIP input
   wire [11:0] masktxplllock;      // HIP input

   wire [LANES:0] serdes_txpcsrstn;                         // HIP output
   wire [LANES:0] serdes_rxpcsrstn;                         // HIP output
   wire [LANES:0] serdes_g3txpcsrstn;                       // HIP output
   wire [LANES:0] serdes_g3rxpcsrstn;                       // HIP output
   wire [LANES:0] serdes_txpmasyncp;                        // HIP output
   wire [((LANES==2)?4:LANES):0] serdes_rxpmarstb;          // HIP output
   wire [LANES:0] serdes_txlcpllrstb;                       // HIP output
   wire [LANES:0] serdes_offcalen;                          // HIP output
   wire [LANES:0] serdes_frefclk;                           // HIP input
   wire [LANES:0] serdes_offcaldone;                        // HIP input
   wire [LANES:0] serdes_txlcplllock;                       // HIP input
   wire [((LANES==2)?4:LANES):0] serdes_rxfreqtxcmuplllock; // HIP input
   wire [LANES:0] serdes_rxpllphaselock;                    // HIP input
   wire [LANES:0] serdes_masktxplllock;                     // HIP input
   wire           serdes_pll_locked_xcvr;
   wire crst;
   wire srst;
   wire hiprst;
   wire [LANES-1:0]            int_sigdet;

   wire pld_clk_inuse_hip;
   wire arst         ; // npor synchronized to pld_clk
   reg  [2:0] arst_r ;
   wire  hold_ltssm_rec;
   wire [4:0] ltssmstate_int;

   // PCIe Toolkit
   wire [31:0] avmm_readdata_ptk;
   wire [15:0] avmm_readdata_hip;

   // serial assignment
   assign serdes_pll_locked=((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b1:serdes_pll_locked_xcvr;


   generate begin : g_npor_int
      if ((enable_power_on_rst_pulse==1)&&(USE_HARD_RESET==0)&&(ALTPCIE_HIP_256_PIPEN1B_SIM_ONLY==0)) begin
         // When using soft reset controller, generate a pulse at power up to
         // reset Hard IP,this ensures that the Hard IP and associated transceiver are being reseted
         // after programming the device, regardless of the behavior of the
         // dedicated PCI Express reset pin perstn or local reset npor
         // Note: Using a 3 bit counter ensures register lab packing and prevents
         // nfreeze register initialization discrepancies
         // Self reset logic
         reg [2:0] src_pulsen_cnt  = 3'h0;
         reg       src_pulsen      = 1'b0;
         reg       src_pulsen_r    = 1'b0;
         reg       start_dly_cnt   = 1'b0;
         reg [9:0] dly_cnt         = 10'h0;
         wire      self_resetn     ;

         assign self_resetn = dly_cnt[9];
         always @(posedge refclk) begin
            if (src_pulsen_cnt < 3'h7) begin
               src_pulsen_cnt <= src_pulsen_cnt + 3'h1;
            end
            if (src_pulsen_cnt == 3'h7) begin
               src_pulsen <= 1'b1;
            end
            src_pulsen_r   <= src_pulsen;
            start_dly_cnt  <= ((src_pulsen==1'b1) && (src_pulsen_r==1'b0))?1'b1:1'b0;
            // 5.11 us pulse
            if ( (start_dly_cnt == 1'b1) || (dly_cnt > 10'h0  && dly_cnt[9]==1'b0)) begin
               dly_cnt <= dly_cnt + 10'h1 ;
            end
         end
         assign npor_int = npor & pin_perst & self_resetn;
      end
      else begin
         assign npor_int = npor & pin_perst;
      end
   end
   endgenerate

   always @(posedge pld_clk or negedge npor_int) begin
      if (npor_int == 1'b0) begin
         arst_r[2:0] <= 3'b111;
      end
      else begin
         arst_r[2:0] <= {arst_r[1],arst_r[0],1'b0};
      end
   end
   assign arst = arst_r[2];
   assign npor_sync = ~arst;

   always @(posedge pld_clk or posedge arst) begin
      if (arst==1'b1) begin
         pld_clk_inuse         <= 1'b0;
         flrreset              <= 1'b0;
         reset_status          <= 1'b1;
         reset_status_hip_sync <= 1'b1;
      end
      else begin
         pld_clk_inuse         <= pld_clk_inuse_hip;
         flrreset              <= (flr_capability=="true")?flrsts:1'b0;
         reset_status_hip_sync <= reset_status_hip;
         reset_status          <= reset_status_hip_sync;
      end
   end

   generate begin : g_soft_reset
      if (USE_HARD_RESET==0) begin
         altpcie_rs_serdes altpcie_rs_serdes (
            .pld_clk(pld_clk),                                                          // input
            .test_in({33'h0,test_in[6],5'h00,test_in[0]}),                              // input  [39:0]
            .ltssm(ltssmstate_int),                                                         // input  [4:0]
            .dlup_exit (dlup_exit),
            .hotrst_exit (hotrst_exit),
            .l2_exit (l2_exit),
            .npor_serdes((PIPE32_SIM_ONLY==1)?1'b0:(pipe8_sim_only==1'b1)?1'b0:npor_int),// input
            .npor_core(npor_int & pld_clk_inuse),                                           // input
            .tx_cal_busy(|serdes_tx_cal_busy),
            .rx_cal_busy(|serdes_rx_cal_busy),
            .pll_locked(serdes_pll_locked),                                             // input
            .rx_freqlocked  ((LANES==1)?{7'h7F,serdes_rx_is_lockedtodata[LANES-1:0]}:(LANES==2)?{6'h3F,serdes_rx_is_lockedtodata[LANES-1:0]}:(LANES==4)?{4'hF, serdes_rx_is_lockedtodata[LANES-1:0]}:serdes_rx_is_lockedtodata[LANES-1:0]),                                                            // input  [7:0]
            .rx_pll_locked  ((LANES==1)?{7'h7F,serdes_rx_is_lockedtoref[LANES-1:0] }:(LANES==2)?{6'h3F,serdes_rx_is_lockedtoref[LANES-1:0]}:(LANES==4)?{4'hF, serdes_rx_is_lockedtoref[LANES-1:0] }:serdes_rx_is_lockedtoref[LANES-1:0] ),                                                            // input  [7:0]
            .rx_signaldetect  ((LANES==1)?{7'h00,int_sigdet[LANES-1:0]}:(LANES==2)?{6'h00,int_sigdet[LANES-1:0]}:(LANES==4)?{4'h0, int_sigdet[LANES-1:0]}:int_sigdet[LANES-1:0]),
            .simu_serial((PIPE32_SIM_ONLY==1)?1'b0:!pipe8_sim_only),                     // input
            .fifo_err(1'b0),                                                             // input
            .rc_inclk_eq_125mhz((PLD_CLK_IS_250MHZ==0)?1'b1:1'b0),                       // input
            .detect_mask_rxdrst(1'b1),                                                   // input
            .crst (crst),
            .srst (srst),
            .txdigitalreset (rst_ctrl_txdigitalreset),                                   // output
            .rxanalogreset  (rst_ctrl_rxanalogreset),                                    // output
            .rxdigitalreset (rst_ctrl_rxdigitalreset)                                    // output
            );
         assign rst_ctrl_xcvr_powerdown = (PIPE32_SIM_ONLY==1)?1'b1:(pipe8_sim_only==1'b1)?1'b1:~npor_int;
      end
      else begin
      // HIP complementary reset circuit when using Hard Reset Controller
         altpcie_rs_hip # (
            .HIPRST_USE_LOCAL_NPOR(HIPRST_USE_LOCAL_NPOR),
            .HIPRST_USE_DLUP_EXIT (HIPRST_USE_DLUP_EXIT )
         ) altpcie_rs_hip (
            .pld_clk       (pld_clk),
            .dlup_exit     (dlup_exit),
            .hotrst_exit   (hotrst_exit),
            .ltssm         (ltssmstate_int),
            .l2_exit       (l2_exit),
            .npor_core     (npor & pld_clk_inuse),
            .hiprst        (hiprst));
         assign rst_ctrl_rx_pll_locked  =1'b0 ; // PM TODO
         assign rst_ctrl_rxanalogreset  =1'b0 ;
         assign rst_ctrl_rxdigitalreset =1'b0 ;
         assign rst_ctrl_xcvr_powerdown =1'b0 ;
         assign rst_ctrl_txdigitalreset =1'b0 ;
      end
   end
   endgenerate

   assign serdes_fixedclk = refclk;
   assign fixedclk_locked = 1'b1;

   generate begin : g_serdes_soft_rst_input
      for (i=0;i<LANES;i=i+1) begin : g_serdes_rst
         assign serdes_xcvr_powerdown  [i]= ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b1:(low_str(hip_hard_reset)=="disable")?rst_ctrl_xcvr_powerdown    :1'b0;
         assign serdes_tx_digitalreset[i] = ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b1:(low_str(hip_hard_reset)=="disable")?rst_ctrl_txdigitalreset    :1'b0;
         assign serdes_rx_analogreset [i] = ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b1:(low_str(hip_hard_reset)=="disable")?rst_ctrl_rxanalogreset     :1'b0;
         assign serdes_rx_digitalreset[i] = ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b1:(low_str(hip_hard_reset)=="disable")?rst_ctrl_rxdigitalreset    :1'b0;
      end
   end
   endgenerate

   //assign serdes_tx_analogreset      = ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b0           :(low_str(hip_hard_reset)=="disable")?~npor_int:1'b0;
   assign serdes_tx_analogreset      = ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b0           : ~npor_int;
   assign serdes_rx_set_locktodata   = {LANES{1'b0}};
   assign serdes_rx_set_locktoref    = {LANES{1'b0}};
   assign serdes_tx_invpolarity      = {LANES{1'b0}};

   assign serdes_txpcsrstn           = txpcsrstn[LANES:0]   ;// HIP Hard Reset Controller output
   assign serdes_rxpcsrstn           = rxpcsrstn[LANES:0]   ;// HIP Hard Reset Controller output
   assign serdes_g3txpcsrstn         = g3txpcsrstn[LANES:0] ;// HIP Hard Reset Controller output
   assign serdes_g3rxpcsrstn         = g3rxpcsrstn[LANES:0] ;// HIP Hard Reset Controller output
   assign serdes_txpmasyncp          = txpmasyncp[LANES:0]  ;// HIP Hard Reset Controller output
   assign serdes_txlcpllrstb         = txlcpllrstb[LANES:0] ;// HIP Hard Reset Controller output
   assign serdes_offcalen            = offcalen[LANES:0]    ;// HIP Hard Reset Controller output
   assign serdes_rxpmarstb           = (LANES == 2) ? rxpmarstb[4:0] : rxpmarstb[LANES:0]   ;// HIP Hard Reset Controller output

   assign frefclk[LANES:0]           = ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?{LANES_P1{refclk}}:serdes_frefclk           ;// HIP Hard Reset Controller input
   assign offcaldone[LANES:0]        = ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?ONES[LANES:0]     :serdes_offcaldone        ;// HIP Hard Reset Controller input
   assign txlcplllock[LANES:0]       = ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?ONES[LANES:0]     :serdes_txlcplllock       ;// HIP Hard Reset Controller input
   assign rxpllphaselock[LANES:0]    = ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?ONES[LANES:0]     :serdes_rxpllphaselock    ;// HIP Hard Reset Controller input
   assign masktxplllock[LANES:0]     = ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?ONES[LANES:0]     :serdes_masktxplllock     ;// HIP Hard Reset Controller input
   assign rxfreqtxcmuplllock[((LANES == 2) ? 4 : LANES):0] = ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?ONES[((LANES == 2) ? 4 : LANES):0] :serdes_rxfreqtxcmuplllock;// HIP Hard Reset Controller input

   //tying off the unconnected wires
   assign frefclk[11:LANES+1]            = ONES[11-LANES-1:0]    ;// HIP Hard Reset Controller input
   assign offcaldone[11:LANES+1]         = ONES[11-LANES-1:0]    ;// HIP Hard Reset Controller input
   assign txlcplllock[11:LANES+1]        = ONES[11-LANES-1:0]    ;// HIP Hard Reset Controller input
   assign rxpllphaselock[11:LANES+1]     = ONES[11-LANES-1:0]    ;// HIP Hard Reset Controller input
   assign masktxplllock[11:LANES+1]      = ONES[11-LANES-1:0]    ;// HIP Hard Reset Controller input
   assign rxfreqtxcmuplllock[11:((LANES == 2)?5:LANES+1)] = ONES[((LANES == 2)?6:11-LANES-1):0]    ;// HIP Hard Reset Controller input


   generate begin : g_serdes_pipe_io
      if (LANES==1) begin
         assign int_sigdet = serdes_rx_is_lockedtodata;

         // TX
         assign serdes_ratectrl                    = unconnected_bus[1:0];
         assign serdes_pipe_rate[1:0]              = rate0[1:0];   // Currently only Gen2 rate0[1] is unconnected
         assign serdes_pipe_txdata[31 :0  ]        = txdata0;
         assign serdes_pipe_txdatak[ 3: 0]         = txdatak0;
         assign serdes_pipe_txcompliance[0]        = txcompl0;
         assign serdes_pipe_txelecidle[0]          = txelecidle0;
         assign serdes_pipe_txdeemph[0]            = txdeemph0;              //Gen 3
         assign serdes_pipe_txswing[0]             = txswing0;
         assign serdes_current_coeff[17:0]         = currentcoeff0;          //Gen 3
         assign serdes_current_rxpreset[2:0]       = currentrxpreset0;       //Gen 3
         assign serdes_pipe_tx_data_valid[0]       = txdataskip0;            //Gen 3
         assign serdes_pipe_tx_blk_start[0]        = txblkst0;               //Gen 3
         assign serdes_pipe_tx_sync_hdr[1:0]       = txsynchd0;              //Gen 3
         assign serdes_pipe_txmargin[ 2: 0]        = txmargin0;
         assign serdes_pipe_powerdown[ 1 : 0]      = powerdown0;
         assign serdes_pipe_rxpolarity[0]          = rxpolarity0 ;
         assign serdes_pipe_txdetectrx_loopback[0] = txdetectrx0;
         assign serdes_rx_serial_data[0]           = rx_in0;
         assign serdes_rx_eidleinfersel[2:0]       = eidleinfersel0;

         //RX
         //
         assign tx_out0                            = serdes_tx_serial_data[0];
         assign mserdes_pipe_pclk                  = serdes_pipe_pclk;
         assign mserdes_pipe_pclkch1               = unconnected_wire;
         assign mserdes_pllfixedclkch0             = serdes_pllfixedclkch0;
         assign mserdes_pllfixedclkch1             = unconnected_wire;
         assign mserdes_pipe_pclkcentral           = unconnected_wire;
         assign mserdes_pllfixedclkcentral         = unconnected_wire;

         // Reset signals

      end
      else if (LANES==2) begin
         assign int_sigdet = {
         serdes_rx_is_lockedtodata[1] | serdes_rx_is_lockedtodata[0],
         serdes_rx_is_lockedtodata[0] | serdes_rx_is_lockedtodata[0]
         };
         // TX
         assign serdes_ratectrl                    = unconnected_bus[1:0];
         assign serdes_pipe_rate[1:0]              = rate0[1:0];
         assign serdes_pipe_rate[3:2]              = rate1[1:0];
         assign serdes_pipe_txdata[31 :0  ]        = txdata0;
         assign serdes_pipe_txdata[63 :32 ]        = txdata1;
         assign serdes_pipe_txdatak[ 3: 0]         = txdatak0;
         assign serdes_pipe_txdatak[ 7: 4]         = txdatak1;
         assign serdes_pipe_txcompliance[0]        = txcompl0;
         assign serdes_pipe_txcompliance[1]        = txcompl1;
         assign serdes_pipe_txelecidle[0]          = txelecidle0;
         assign serdes_pipe_txelecidle[1]          = txelecidle1;
         assign serdes_pipe_txdeemph[0]            = txdeemph0;
         assign serdes_pipe_txdeemph[1]            = txdeemph1;
         assign serdes_pipe_txswing[0]             = txswing0;
         assign serdes_pipe_txswing[1]             = txswing1;
         assign serdes_current_coeff[17:0]         = currentcoeff0;
         assign serdes_current_coeff[35:18]        = currentcoeff1;
         assign serdes_current_rxpreset[2:0]       = currentrxpreset0;
         assign serdes_current_rxpreset[5:3]       = currentrxpreset1;
         assign serdes_pipe_tx_data_valid[0]       = txdataskip0;
         assign serdes_pipe_tx_data_valid[1]       = txdataskip1;
         assign serdes_pipe_tx_blk_start[0]        = txblkst0;
         assign serdes_pipe_tx_blk_start[1]        = txblkst1;
         assign serdes_pipe_tx_sync_hdr[1:0]       = txsynchd0;
         assign serdes_pipe_tx_sync_hdr[3:2]       = txsynchd1;
         assign serdes_pipe_txmargin[ 2: 0]        = txmargin0;
         assign serdes_pipe_txmargin[ 5: 3]        = txmargin1;
         assign serdes_pipe_powerdown[ 1 : 0]      = powerdown0;
         assign serdes_pipe_powerdown[ 3 : 2]      = powerdown1;
         assign serdes_pipe_rxpolarity[0]          = rxpolarity0 ;
         assign serdes_pipe_rxpolarity[1]          = rxpolarity1 ;
         assign serdes_pipe_txdetectrx_loopback[0] = txdetectrx0;
         assign serdes_pipe_txdetectrx_loopback[1] = txdetectrx1;
         assign serdes_rx_eidleinfersel[2:0]       = eidleinfersel0;
         assign serdes_rx_eidleinfersel[5:3]       = eidleinfersel1;
         assign     tx_out0                        = serdes_tx_serial_data[0];
         assign     tx_out1                        = serdes_tx_serial_data[1];

         //RX
         //
         assign  serdes_rx_serial_data[0]=rx_in0;
         assign  serdes_rx_serial_data[1]=rx_in1;

         assign mserdes_pipe_pclk         = unconnected_wire;
         assign mserdes_pipe_pclkch1      = serdes_pipe_pclkch1;
         assign mserdes_pllfixedclkch0    = unconnected_wire;
         assign mserdes_pllfixedclkch1    = serdes_pllfixedclkch1 ;
         assign mserdes_pipe_pclkcentral  = unconnected_wire;
         assign mserdes_pllfixedclkcentral= unconnected_wire;

      end
      else if (LANES==4) begin
         assign int_sigdet = {
         serdes_rx_is_lockedtodata[3] | serdes_rx_is_lockedtodata[0],
         serdes_rx_is_lockedtodata[2] | serdes_rx_is_lockedtodata[0],
         serdes_rx_is_lockedtodata[1] | serdes_rx_is_lockedtodata[0],
         serdes_rx_is_lockedtodata[0] | serdes_rx_is_lockedtodata[0]
         };
         // TX
         assign serdes_ratectrl                    = unconnected_bus[1:0];
         assign serdes_pipe_rate[1:0]              = rate0[1:0];
         assign serdes_pipe_rate[3:2]              = rate1[1:0];
         assign serdes_pipe_rate[5:4]              = rate2[1:0];
         assign serdes_pipe_rate[7:6]              = rate3[1:0];
         assign serdes_pipe_txdata[31 :0  ]        = txdata0;
         assign serdes_pipe_txdata[63 :32 ]        = txdata1;
         assign serdes_pipe_txdata[95 :64 ]        = txdata2;
         assign serdes_pipe_txdata[127:96 ]        = txdata3;
         assign serdes_pipe_txdatak[ 3: 0]         = txdatak0;
         assign serdes_pipe_txdatak[ 7: 4]         = txdatak1;
         assign serdes_pipe_txdatak[11: 8]         = txdatak2;
         assign serdes_pipe_txdatak[15:12]         = txdatak3;
         assign serdes_pipe_txcompliance[0]        = txcompl0;
         assign serdes_pipe_txcompliance[1]        = txcompl1;
         assign serdes_pipe_txcompliance[2]        = txcompl2;
         assign serdes_pipe_txcompliance[3]        = txcompl3;
         assign serdes_pipe_txelecidle[0]          = txelecidle0;
         assign serdes_pipe_txelecidle[1]          = txelecidle1;
         assign serdes_pipe_txelecidle[2]          = txelecidle2;
         assign serdes_pipe_txelecidle[3]          = txelecidle3;
         assign serdes_pipe_txdeemph[0]            = txdeemph0;
         assign serdes_pipe_txdeemph[1]            = txdeemph1;
         assign serdes_pipe_txdeemph[2]            = txdeemph2;
         assign serdes_pipe_txdeemph[3]            = txdeemph3;
         assign serdes_pipe_txswing[0]             = txswing0;
         assign serdes_pipe_txswing[1]             = txswing1;
         assign serdes_pipe_txswing[2]             = txswing2;
         assign serdes_pipe_txswing[3]             = txswing3;
         assign serdes_current_coeff[17:0]         = currentcoeff0;
         assign serdes_current_coeff[35:18]        = currentcoeff1;
         assign serdes_current_coeff[53:36]        = currentcoeff2;
         assign serdes_current_coeff[71:54]        = currentcoeff3;
         assign serdes_current_rxpreset[2:0]       = currentrxpreset0;
         assign serdes_current_rxpreset[5:3]       = currentrxpreset1;
         assign serdes_current_rxpreset[8:6]       = currentrxpreset2;
         assign serdes_current_rxpreset[11:9]      = currentrxpreset3;
         assign serdes_pipe_tx_data_valid[0]       = txdataskip0;
         assign serdes_pipe_tx_data_valid[1]       = txdataskip1;
         assign serdes_pipe_tx_data_valid[2]       = txdataskip2;
         assign serdes_pipe_tx_data_valid[3]       = txdataskip3;
         assign serdes_pipe_tx_blk_start[0]        = txblkst0;
         assign serdes_pipe_tx_blk_start[1]        = txblkst1;
         assign serdes_pipe_tx_blk_start[2]        = txblkst2;
         assign serdes_pipe_tx_blk_start[3]        = txblkst3;
         assign serdes_pipe_tx_sync_hdr[1:0]       = txsynchd0;
         assign serdes_pipe_tx_sync_hdr[3:2]       = txsynchd1;
         assign serdes_pipe_tx_sync_hdr[5:4]       = txsynchd2;
         assign serdes_pipe_tx_sync_hdr[7:6]       = txsynchd3;
         assign serdes_pipe_txmargin[ 2: 0]        = txmargin0;
         assign serdes_pipe_txmargin[ 5: 3]        = txmargin1;
         assign serdes_pipe_txmargin[ 8: 6]        = txmargin2;
         assign serdes_pipe_txmargin[11: 9]        = txmargin3;
         assign serdes_pipe_powerdown[ 1 : 0]      = powerdown0;
         assign serdes_pipe_powerdown[ 3 : 2]      = powerdown1;
         assign serdes_pipe_powerdown[ 5 : 4]      = powerdown2;
         assign serdes_pipe_powerdown[ 7 : 6]      = powerdown3;
         assign serdes_pipe_rxpolarity[0]          = rxpolarity0 ;
         assign serdes_pipe_rxpolarity[1]          = rxpolarity1 ;
         assign serdes_pipe_rxpolarity[2]          = rxpolarity2 ;
         assign serdes_pipe_rxpolarity[3]          = rxpolarity3 ;
         assign serdes_pipe_txdetectrx_loopback[0] = txdetectrx0;
         assign serdes_pipe_txdetectrx_loopback[1] = txdetectrx1;
         assign serdes_pipe_txdetectrx_loopback[2] = txdetectrx2;
         assign serdes_pipe_txdetectrx_loopback[3] = txdetectrx3;
         assign  serdes_rx_eidleinfersel[2:0]      = eidleinfersel0;
         assign  serdes_rx_eidleinfersel[5:3]      = eidleinfersel1;
         assign  serdes_rx_eidleinfersel[8:6]      = eidleinfersel2;
         assign  serdes_rx_eidleinfersel[11:9]     = eidleinfersel3;

         assign     tx_out0                = serdes_tx_serial_data[0];
         assign     tx_out1                = serdes_tx_serial_data[1];
         assign     tx_out2                = serdes_tx_serial_data[2];
         assign     tx_out3                = serdes_tx_serial_data[3];

         //RX
         //
         assign  serdes_rx_serial_data[0]=rx_in0;
         assign  serdes_rx_serial_data[1]=rx_in1;
         assign  serdes_rx_serial_data[2]=rx_in2;
         assign  serdes_rx_serial_data[3]=rx_in3;

         assign mserdes_pipe_pclk         = unconnected_wire;
         assign mserdes_pipe_pclkch1      = serdes_pipe_pclkch1;
         assign mserdes_pllfixedclkch0    = unconnected_wire;
         assign mserdes_pllfixedclkch1    = serdes_pllfixedclkch1;
         assign mserdes_pipe_pclkcentral  = unconnected_wire;
         assign mserdes_pllfixedclkcentral= unconnected_wire;

      end
      else begin // x8
         assign int_sigdet = {
         serdes_rx_is_lockedtodata[7] | serdes_rx_is_lockedtodata[0],
         serdes_rx_is_lockedtodata[6] | serdes_rx_is_lockedtodata[0],
         serdes_rx_is_lockedtodata[5] | serdes_rx_is_lockedtodata[0],
         serdes_rx_is_lockedtodata[4] | serdes_rx_is_lockedtodata[0],
         serdes_rx_is_lockedtodata[3] | serdes_rx_is_lockedtodata[0],
         serdes_rx_is_lockedtodata[2] | serdes_rx_is_lockedtodata[0],
         serdes_rx_is_lockedtodata[1] | serdes_rx_is_lockedtodata[0],
         serdes_rx_is_lockedtodata[0] | serdes_rx_is_lockedtodata[0]
         };
         // TX
         assign serdes_ratectrl                    = ratectrl;
         assign serdes_pipe_rate[1 : 0]            = rate0[1:0];
         assign serdes_pipe_rate[3 : 2]            = rate1[1:0];
         assign serdes_pipe_rate[5 : 4]            = rate2[1:0];
         assign serdes_pipe_rate[7 : 6]            = rate3[1:0];
         assign serdes_pipe_rate[9 : 8]            = rate4[1:0];
         assign serdes_pipe_rate[11:10]            = rate5[1:0];
         assign serdes_pipe_rate[13:12]            = rate6[1:0];
         assign serdes_pipe_rate[15:14]            = rate7[1:0];
         assign serdes_pipe_txdata[31 :0  ]        = txdata0;
         assign serdes_pipe_txdata[63 :32 ]        = txdata1;
         assign serdes_pipe_txdata[95 :64 ]        = txdata2;
         assign serdes_pipe_txdata[127:96 ]        = txdata3;
         assign serdes_pipe_txdata[159:128]        = txdata4;
         assign serdes_pipe_txdata[191:160]        = txdata5;
         assign serdes_pipe_txdata[223:192]        = txdata6;
         assign serdes_pipe_txdata[255:224]        = txdata7;
         assign serdes_pipe_txdatak[ 3: 0]         = txdatak0;
         assign serdes_pipe_txdatak[ 7: 4]         = txdatak1;
         assign serdes_pipe_txdatak[11: 8]         = txdatak2;
         assign serdes_pipe_txdatak[15:12]         = txdatak3;
         assign serdes_pipe_txdatak[19:16]         = txdatak4;
         assign serdes_pipe_txdatak[23:20]         = txdatak5;
         assign serdes_pipe_txdatak[27:24]         = txdatak6;
         assign serdes_pipe_txdatak[31:28]         = txdatak7;
         assign serdes_pipe_txcompliance[0]        = txcompl0;
         assign serdes_pipe_txcompliance[1]        = txcompl1;
         assign serdes_pipe_txcompliance[2]        = txcompl2;
         assign serdes_pipe_txcompliance[3]        = txcompl3;
         assign serdes_pipe_txcompliance[4]        = txcompl4;
         assign serdes_pipe_txcompliance[5]        = txcompl5;
         assign serdes_pipe_txcompliance[6]        = txcompl6;
         assign serdes_pipe_txcompliance[7]        = txcompl7;
         assign serdes_pipe_txelecidle[0]          = txelecidle0;
         assign serdes_pipe_txelecidle[1]          = txelecidle1;
         assign serdes_pipe_txelecidle[2]          = txelecidle2;
         assign serdes_pipe_txelecidle[3]          = txelecidle3;
         assign serdes_pipe_txelecidle[4]          = txelecidle4;
         assign serdes_pipe_txelecidle[5]          = txelecidle5;
         assign serdes_pipe_txelecidle[6]          = txelecidle6;
         assign serdes_pipe_txelecidle[7]          = txelecidle7;
         assign serdes_pipe_txdeemph[0]            = txdeemph0;
         assign serdes_pipe_txdeemph[1]            = txdeemph1;
         assign serdes_pipe_txdeemph[2]            = txdeemph2;
         assign serdes_pipe_txdeemph[3]            = txdeemph3;
         assign serdes_pipe_txdeemph[4]            = txdeemph4;
         assign serdes_pipe_txdeemph[5]            = txdeemph5;
         assign serdes_pipe_txdeemph[6]            = txdeemph6;
         assign serdes_pipe_txdeemph[7]            = txdeemph7;
         assign serdes_pipe_txswing[0]             = txswing0;
         assign serdes_pipe_txswing[1]             = txswing1;
         assign serdes_pipe_txswing[2]             = txswing2;
         assign serdes_pipe_txswing[3]             = txswing3;
         assign serdes_pipe_txswing[4]             = txswing4;
         assign serdes_pipe_txswing[5]             = txswing5;
         assign serdes_pipe_txswing[6]             = txswing6;
         assign serdes_pipe_txswing[7]             = txswing7;
         assign serdes_current_coeff[17:0]         = currentcoeff0;
         assign serdes_current_coeff[35:18]        = currentcoeff1;
         assign serdes_current_coeff[53:36]        = currentcoeff2;
         assign serdes_current_coeff[71:54]        = currentcoeff3;
         assign serdes_current_coeff[89:72]        = currentcoeff4;
         assign serdes_current_coeff[107:90]       = currentcoeff5;
         assign serdes_current_coeff[125:108]      = currentcoeff6;
         assign serdes_current_coeff[143:126]      = currentcoeff7;
         assign serdes_current_rxpreset[2:0]       = currentrxpreset0;
         assign serdes_current_rxpreset[5:3]       = currentrxpreset1;
         assign serdes_current_rxpreset[8:6]       = currentrxpreset2;
         assign serdes_current_rxpreset[11:9]      = currentrxpreset3;
         assign serdes_current_rxpreset[14:12]     = currentrxpreset4;
         assign serdes_current_rxpreset[17:15]     = currentrxpreset5;
         assign serdes_current_rxpreset[20:18]     = currentrxpreset6;
         assign serdes_current_rxpreset[23:21]     = currentrxpreset7;
         assign serdes_pipe_tx_data_valid[0]       = txdataskip0;
         assign serdes_pipe_tx_data_valid[1]       = txdataskip1;
         assign serdes_pipe_tx_data_valid[2]       = txdataskip2;
         assign serdes_pipe_tx_data_valid[3]       = txdataskip3;
         assign serdes_pipe_tx_data_valid[4]       = txdataskip4;
         assign serdes_pipe_tx_data_valid[5]       = txdataskip5;
         assign serdes_pipe_tx_data_valid[6]       = txdataskip6;
         assign serdes_pipe_tx_data_valid[7]       = txdataskip7;
         assign serdes_pipe_tx_blk_start[0]        = txblkst0;
         assign serdes_pipe_tx_blk_start[1]        = txblkst1;
         assign serdes_pipe_tx_blk_start[2]        = txblkst2;
         assign serdes_pipe_tx_blk_start[3]        = txblkst3;
         assign serdes_pipe_tx_blk_start[4]        = txblkst4;
         assign serdes_pipe_tx_blk_start[5]        = txblkst5;
         assign serdes_pipe_tx_blk_start[6]        = txblkst6;
         assign serdes_pipe_tx_blk_start[7]        = txblkst7;
         assign serdes_pipe_tx_sync_hdr[1:0]       = txsynchd0;
         assign serdes_pipe_tx_sync_hdr[3:2]       = txsynchd1;
         assign serdes_pipe_tx_sync_hdr[5:4]       = txsynchd2;
         assign serdes_pipe_tx_sync_hdr[7:6]       = txsynchd3;
         assign serdes_pipe_tx_sync_hdr[9:8]       = txsynchd4;
         assign serdes_pipe_tx_sync_hdr[11:10]     = txsynchd5;
         assign serdes_pipe_tx_sync_hdr[13:12]     = txsynchd6;
         assign serdes_pipe_tx_sync_hdr[15:14]     = txsynchd7;
         assign serdes_pipe_txmargin[ 2: 0]        = txmargin0;
         assign serdes_pipe_txmargin[ 5: 3]        = txmargin1;
         assign serdes_pipe_txmargin[ 8: 6]        = txmargin2;
         assign serdes_pipe_txmargin[11: 9]        = txmargin3;
         assign serdes_pipe_txmargin[14:12]        = txmargin4;
         assign serdes_pipe_txmargin[17:15]        = txmargin5;
         assign serdes_pipe_txmargin[20:18]        = txmargin6;
         assign serdes_pipe_txmargin[23:21]        = txmargin7;
         assign serdes_pipe_powerdown[ 1 : 0]      = powerdown0;
         assign serdes_pipe_powerdown[ 3 : 2]      = powerdown1;
         assign serdes_pipe_powerdown[ 5 : 4]      = powerdown2;
         assign serdes_pipe_powerdown[ 7 : 6]      = powerdown3;
         assign serdes_pipe_powerdown[ 9 : 8]      = powerdown4;
         assign serdes_pipe_powerdown[11 :10]      = powerdown5;
         assign serdes_pipe_powerdown[13 :12]      = powerdown6;
         assign serdes_pipe_powerdown[15 :14]      = powerdown7;
         assign  serdes_pipe_rxpolarity[0]         = rxpolarity0 ;
         assign  serdes_pipe_rxpolarity[1]         = rxpolarity1 ;
         assign  serdes_pipe_rxpolarity[2]         = rxpolarity2 ;
         assign  serdes_pipe_rxpolarity[3]         = rxpolarity3 ;
         assign  serdes_pipe_rxpolarity[4]         = rxpolarity4 ;
         assign  serdes_pipe_rxpolarity[5]         = rxpolarity5 ;
         assign  serdes_pipe_rxpolarity[6]         = rxpolarity6 ;
         assign  serdes_pipe_rxpolarity[7]         = rxpolarity7 ;
         assign serdes_pipe_txdetectrx_loopback[0] = txdetectrx0;
         assign serdes_pipe_txdetectrx_loopback[1] = txdetectrx1;
         assign serdes_pipe_txdetectrx_loopback[2] = txdetectrx2;
         assign serdes_pipe_txdetectrx_loopback[3] = txdetectrx3;
         assign serdes_pipe_txdetectrx_loopback[4] = txdetectrx4;
         assign serdes_pipe_txdetectrx_loopback[5] = txdetectrx5;
         assign serdes_pipe_txdetectrx_loopback[6] = txdetectrx6;
         assign serdes_pipe_txdetectrx_loopback[7] = txdetectrx7;
         assign  serdes_rx_eidleinfersel[2:0]      = eidleinfersel0;
         assign  serdes_rx_eidleinfersel[5:3]      = eidleinfersel1;
         assign  serdes_rx_eidleinfersel[8:6]      = eidleinfersel2;
         assign  serdes_rx_eidleinfersel[11:9]     = eidleinfersel3;
         assign  serdes_rx_eidleinfersel[14:12]    = eidleinfersel4;
         assign  serdes_rx_eidleinfersel[17:15]    = eidleinfersel5;
         assign  serdes_rx_eidleinfersel[20:18]    = eidleinfersel6;
         assign  serdes_rx_eidleinfersel[23:21]    = eidleinfersel7;

         assign tx_out0                            = serdes_tx_serial_data[0];
         assign tx_out1                            = serdes_tx_serial_data[1];
         assign tx_out2                            = serdes_tx_serial_data[2];
         assign tx_out3                            = serdes_tx_serial_data[3];
         assign tx_out4                            = serdes_tx_serial_data[4];
         assign tx_out5                            = serdes_tx_serial_data[5];
         assign tx_out6                            = serdes_tx_serial_data[6];
         assign tx_out7                            = serdes_tx_serial_data[7];

         //RX
         //
         assign  serdes_rx_serial_data[0]=rx_in0;
         assign  serdes_rx_serial_data[1]=rx_in1;
         assign  serdes_rx_serial_data[2]=rx_in2;
         assign  serdes_rx_serial_data[3]=rx_in3;
         assign  serdes_rx_serial_data[4]=rx_in4;
         assign  serdes_rx_serial_data[5]=rx_in5;
         assign  serdes_rx_serial_data[6]=rx_in6;
         assign  serdes_rx_serial_data[7]=rx_in7;

         assign mserdes_pipe_pclk         = unconnected_wire;
         assign mserdes_pipe_pclkch1      = unconnected_wire;
         assign mserdes_pllfixedclkch0    = unconnected_wire;
         assign mserdes_pllfixedclkch1    = unconnected_wire;
         assign mserdes_pipe_pclkcentral  = serdes_pipe_pclkcentral;
         assign mserdes_pllfixedclkcentral= serdes_pllfixedclkcentral;

      end
   end
   endgenerate

   assign rate          = (pipe8_sim_only==1'b1)?rate0:2'b00;

   // HIP Pipe inputs
   assign rxdata0       = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdata0     :(pipe8_sim_only==1'b1)?rxdata0_ext32b    :                                              serdes_pipe_rxdata[31 :0  ];
   assign rxdata1       = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdata1     :(pipe8_sim_only==1'b1)?rxdata1_ext32b    :((LANES<2)                      )?ZEROS[31:0]:serdes_pipe_rxdata[63 :32 ];
   assign rxdata2       = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdata2     :(pipe8_sim_only==1'b1)?rxdata2_ext32b    :((LANES<2)||(LANES<4)           )?ZEROS[31:0]:serdes_pipe_rxdata[95 :64 ];
   assign rxdata3       = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdata3     :(pipe8_sim_only==1'b1)?rxdata3_ext32b    :((LANES<2)||(LANES<4)           )?ZEROS[31:0]:serdes_pipe_rxdata[127:96 ];
   assign rxdata4       = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdata4     :(pipe8_sim_only==1'b1)?rxdata4_ext32b    :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[31:0]:serdes_pipe_rxdata[159:128];
   assign rxdata5       = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdata5     :(pipe8_sim_only==1'b1)?rxdata5_ext32b    :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[31:0]:serdes_pipe_rxdata[191:160];
   assign rxdata6       = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdata6     :(pipe8_sim_only==1'b1)?rxdata6_ext32b    :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[31:0]:serdes_pipe_rxdata[223:192];
   assign rxdata7       = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdata7     :(pipe8_sim_only==1'b1)?rxdata7_ext32b    :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[31:0]:serdes_pipe_rxdata[255:224];
   assign rxdatak0      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdatak0    :(pipe8_sim_only==1'b1)?rxdatak0_ext32b   :                                              serdes_pipe_rxdatak[ 3: 0] ;
   assign rxdatak1      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdatak1    :(pipe8_sim_only==1'b1)?rxdatak1_ext32b   :((LANES<2)                      )?ZEROS[ 3:0]:serdes_pipe_rxdatak[ 7: 4] ;
   assign rxdatak2      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdatak2    :(pipe8_sim_only==1'b1)?rxdatak2_ext32b   :((LANES<2)||(LANES<4)           )?ZEROS[ 3:0]:serdes_pipe_rxdatak[11: 8] ;
   assign rxdatak3      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdatak3    :(pipe8_sim_only==1'b1)?rxdatak3_ext32b   :((LANES<2)||(LANES<4)           )?ZEROS[ 3:0]:serdes_pipe_rxdatak[15:12] ;
   assign rxdatak4      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdatak4    :(pipe8_sim_only==1'b1)?rxdatak4_ext32b   :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 3:0]:serdes_pipe_rxdatak[19:16] ;
   assign rxdatak5      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdatak5    :(pipe8_sim_only==1'b1)?rxdatak5_ext32b   :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 3:0]:serdes_pipe_rxdatak[23:20] ;
   assign rxdatak6      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdatak6    :(pipe8_sim_only==1'b1)?rxdatak6_ext32b   :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 3:0]:serdes_pipe_rxdatak[27:24] ;
   assign rxdatak7      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdatak7    :(pipe8_sim_only==1'b1)?rxdatak7_ext32b   :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 3:0]:serdes_pipe_rxdatak[31:28] ;
   assign rxvalid0      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxvalid0    :(pipe8_sim_only==1'b1)?rxvalid0_ext32b   :                                              serdes_pipe_rxvalid[0] ;
   assign rxvalid1      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxvalid1    :(pipe8_sim_only==1'b1)?rxvalid1_ext32b   :((LANES<2)                      )?ZEROS[ 0:0]:serdes_pipe_rxvalid[1] ;
   assign rxvalid2      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxvalid2    :(pipe8_sim_only==1'b1)?rxvalid2_ext32b   :((LANES<2)||(LANES<4)           )?ZEROS[ 0:0]:serdes_pipe_rxvalid[2] ;
   assign rxvalid3      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxvalid3    :(pipe8_sim_only==1'b1)?rxvalid3_ext32b   :((LANES<2)||(LANES<4)           )?ZEROS[ 0:0]:serdes_pipe_rxvalid[3] ;
   assign rxvalid4      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxvalid4    :(pipe8_sim_only==1'b1)?rxvalid4_ext32b   :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rxvalid[4] ;
   assign rxvalid5      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxvalid5    :(pipe8_sim_only==1'b1)?rxvalid5_ext32b   :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rxvalid[5] ;
   assign rxvalid6      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxvalid6    :(pipe8_sim_only==1'b1)?rxvalid6_ext32b   :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rxvalid[6] ;
   assign rxvalid7      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxvalid7    :(pipe8_sim_only==1'b1)?rxvalid7_ext32b   :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rxvalid[7] ;
   assign rxelecidle0   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxelecidle0 :(pipe8_sim_only==1'b1)?rxelecidle0_ext32b:                                              serdes_pipe_rxelecidle[0] ;
   assign rxelecidle1   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxelecidle1 :(pipe8_sim_only==1'b1)?rxelecidle1_ext32b:((LANES<2)                      )?ZEROS[ 0:0]:serdes_pipe_rxelecidle[1] ;
   assign rxelecidle2   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxelecidle2 :(pipe8_sim_only==1'b1)?rxelecidle2_ext32b:((LANES<2)||(LANES<4)           )?ZEROS[ 0:0]:serdes_pipe_rxelecidle[2] ;
   assign rxelecidle3   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxelecidle3 :(pipe8_sim_only==1'b1)?rxelecidle3_ext32b:((LANES<2)||(LANES<4)           )?ZEROS[ 0:0]:serdes_pipe_rxelecidle[3] ;
   assign rxelecidle4   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxelecidle4 :(pipe8_sim_only==1'b1)?rxelecidle4_ext32b:((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rxelecidle[4] ;
   assign rxelecidle5   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxelecidle5 :(pipe8_sim_only==1'b1)?rxelecidle5_ext32b:((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rxelecidle[5] ;
   assign rxelecidle6   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxelecidle6 :(pipe8_sim_only==1'b1)?rxelecidle6_ext32b:((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rxelecidle[6] ;
   assign rxelecidle7   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxelecidle7 :(pipe8_sim_only==1'b1)?rxelecidle7_ext32b:((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rxelecidle[7] ;
   assign phystatus0    = (PIPE32_SIM_ONLY==1)?pipe32_sim_phystatus0  :(pipe8_sim_only==1'b1)?phystatus0_ext32b :                                              serdes_pipe_phystatus[0] ;
   assign phystatus1    = (PIPE32_SIM_ONLY==1)?pipe32_sim_phystatus1  :(pipe8_sim_only==1'b1)?phystatus1_ext32b :((LANES<2)                      )?ZEROS[ 0:0]:serdes_pipe_phystatus[1] ;
   assign phystatus2    = (PIPE32_SIM_ONLY==1)?pipe32_sim_phystatus2  :(pipe8_sim_only==1'b1)?phystatus2_ext32b :((LANES<2)||(LANES<4)           )?ZEROS[ 0:0]:serdes_pipe_phystatus[2] ;
   assign phystatus3    = (PIPE32_SIM_ONLY==1)?pipe32_sim_phystatus3  :(pipe8_sim_only==1'b1)?phystatus3_ext32b :((LANES<2)||(LANES<4)           )?ZEROS[ 0:0]:serdes_pipe_phystatus[3] ;
   assign phystatus4    = (PIPE32_SIM_ONLY==1)?pipe32_sim_phystatus4  :(pipe8_sim_only==1'b1)?phystatus4_ext32b :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_phystatus[4] ;
   assign phystatus5    = (PIPE32_SIM_ONLY==1)?pipe32_sim_phystatus5  :(pipe8_sim_only==1'b1)?phystatus5_ext32b :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_phystatus[5] ;
   assign phystatus6    = (PIPE32_SIM_ONLY==1)?pipe32_sim_phystatus6  :(pipe8_sim_only==1'b1)?phystatus6_ext32b :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_phystatus[6] ;
   assign phystatus7    = (PIPE32_SIM_ONLY==1)?pipe32_sim_phystatus7  :(pipe8_sim_only==1'b1)?phystatus7_ext32b :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_phystatus[7] ;
   assign rxstatus0     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxstatus0   :(pipe8_sim_only==1'b1)?rxstatus0_ext32b  :                                              serdes_pipe_rxstatus[ 2: 0];
   assign rxstatus1     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxstatus1   :(pipe8_sim_only==1'b1)?rxstatus1_ext32b  :((LANES<2)                      )?ZEROS[ 2:0]:serdes_pipe_rxstatus[ 5: 3];
   assign rxstatus2     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxstatus2   :(pipe8_sim_only==1'b1)?rxstatus2_ext32b  :((LANES<2)||(LANES<4)           )?ZEROS[ 2:0]:serdes_pipe_rxstatus[ 8: 6];
   assign rxstatus3     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxstatus3   :(pipe8_sim_only==1'b1)?rxstatus3_ext32b  :((LANES<2)||(LANES<4)           )?ZEROS[ 2:0]:serdes_pipe_rxstatus[11: 9];
   assign rxstatus4     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxstatus4   :(pipe8_sim_only==1'b1)?rxstatus4_ext32b  :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 2:0]:serdes_pipe_rxstatus[14:12];
   assign rxstatus5     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxstatus5   :(pipe8_sim_only==1'b1)?rxstatus5_ext32b  :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 2:0]:serdes_pipe_rxstatus[17:15];
   assign rxstatus6     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxstatus6   :(pipe8_sim_only==1'b1)?rxstatus6_ext32b  :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 2:0]:serdes_pipe_rxstatus[20:18];
   assign rxstatus7     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxstatus7   :(pipe8_sim_only==1'b1)?rxstatus7_ext32b  :((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 2:0]:serdes_pipe_rxstatus[23:21];
   assign rxdataskip0   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdataskip0 :                                                                                   serdes_pipe_rx_data_valid[0];
   assign rxdataskip1   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdataskip1 :                                     ((LANES<2)                      )?ZEROS[ 0:0]:serdes_pipe_rx_data_valid[1];
   assign rxdataskip2   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdataskip2 :                                     ((LANES<2)||(LANES<4)           )?ZEROS[ 0:0]:serdes_pipe_rx_data_valid[2];
   assign rxdataskip3   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdataskip3 :                                     ((LANES<2)||(LANES<4)           )?ZEROS[ 0:0]:serdes_pipe_rx_data_valid[3];
   assign rxdataskip4   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdataskip4 :                                     ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rx_data_valid[4];
   assign rxdataskip5   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdataskip5 :                                     ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rx_data_valid[5];
   assign rxdataskip6   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdataskip6 :                                     ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rx_data_valid[6];
   assign rxdataskip7   = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxdataskip7 :                                     ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rx_data_valid[7];
   assign rxblkst0      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxblkst0    :                                                                                   serdes_pipe_rx_blk_start[0];
   assign rxblkst1      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxblkst1    :                                     ((LANES<2)                      )?ZEROS[ 0:0]:serdes_pipe_rx_blk_start[1];
   assign rxblkst2      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxblkst2    :                                     ((LANES<2)||(LANES<4)           )?ZEROS[ 0:0]:serdes_pipe_rx_blk_start[2];
   assign rxblkst3      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxblkst3    :                                     ((LANES<2)||(LANES<4)           )?ZEROS[ 0:0]:serdes_pipe_rx_blk_start[3];
   assign rxblkst4      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxblkst4    :                                     ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rx_blk_start[4];
   assign rxblkst5      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxblkst5    :                                     ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rx_blk_start[5];
   assign rxblkst6      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxblkst6    :                                     ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rx_blk_start[6];
   assign rxblkst7      = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxblkst7    :                                     ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 0:0]:serdes_pipe_rx_blk_start[7];
   assign rxsynchd0     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxsynchd0   :                                                                                   serdes_pipe_rx_sync_hdr[1:0];
   assign rxsynchd1     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxsynchd1   :                                     ((LANES<2)                      )?ZEROS[ 1:0]:serdes_pipe_rx_sync_hdr[3:2];
   assign rxsynchd2     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxsynchd2   :                                     ((LANES<2)||(LANES<4)           )?ZEROS[ 1:0]:serdes_pipe_rx_sync_hdr[5:4];
   assign rxsynchd3     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxsynchd3   :                                     ((LANES<2)||(LANES<4)           )?ZEROS[ 1:0]:serdes_pipe_rx_sync_hdr[7:6];
   assign rxsynchd4     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxsynchd4   :                                     ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 1:0]:serdes_pipe_rx_sync_hdr[9:8];
   assign rxsynchd5     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxsynchd5   :                                     ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 1:0]:serdes_pipe_rx_sync_hdr[11:10];
   assign rxsynchd6     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxsynchd6   :                                     ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 1:0]:serdes_pipe_rx_sync_hdr[13:12];
   assign rxsynchd7     = (PIPE32_SIM_ONLY==1)?pipe32_sim_rxsynchd7   :                                     ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 1:0]:serdes_pipe_rx_sync_hdr[15:14];

   assign pld8grxstatus0     =                                               serdes_pld8grxstatus[2:0];
   assign pld8grxstatus1     = ((LANES<2)                      )?ZEROS[ 2:0]:serdes_pld8grxstatus[5:3];
   assign pld8grxstatus2     = ((LANES<2)||(LANES<4)           )?ZEROS[ 2:0]:serdes_pld8grxstatus[8:6];
   assign pld8grxstatus3     = ((LANES<2)||(LANES<4)           )?ZEROS[ 2:0]:serdes_pld8grxstatus[11:9];
   assign pld8grxstatus4     = ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 2:0]:serdes_pld8grxstatus[17:15];
   assign pld8grxstatus5     = ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 2:0]:serdes_pld8grxstatus[20:18];
   assign pld8grxstatus6     = ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 2:0]:serdes_pld8grxstatus[23:21];
   assign pld8grxstatus7     = ((LANES<2)||(LANES<4)||(LANES<8))?ZEROS[ 2:0]:serdes_pld8grxstatus[26:24];


   // HIP Atom

   stratixv_hssi_gen3_pcie_hip  # (
               .func_mode("enable"),
               .bonding_mode(((low_str(gen123_lane_rate_mode)=="gen1_gen2_gen3")&&(low_str(lane_mask)=="x8"))?"x8_g3"  :
                                                                         (low_str(lane_mask)=="x8")?"x8_g1g2":
                                                                         (low_str(lane_mask)=="x4")?"x4"     :
                                                                         (low_str(lane_mask)=="x2")?"x2"     :"x1"),
               .prot_mode((low_str(gen123_lane_rate_mode)=="gen1_gen2_gen3")?"pipe_g3":
                          (low_str(gen123_lane_rate_mode)=="gen1_gen2")?"pipe_g2":"pipe_g1"),
               .vc_enable(vc_enable),
               .enable_slot_register(enable_slot_register),
               .pcie_mode(pcie_mode),
               .bypass_cdc(bypass_cdc),
               .enable_rx_reordering(enable_rx_reordering),
               .enable_rx_buffer_checking(enable_rx_buffer_checking),
               .single_rx_detect_data(single_rx_detect),
               .use_crc_forwarding(use_crc_forwarding),
               .bypass_tl(bypass_tl),
               .gen123_lane_rate_mode(gen123_lane_rate_mode),
               .lane_mask(lane_mask),
               .disable_link_x2_support(disable_link_x2_support),
               .national_inst_thru_enhance(national_inst_thru_enhance),
               .hip_hard_reset                     (hip_hard_reset),
               .rstctrl_pld_clr                    ((USE_HARD_RESET==0)?"false"                 :rstctrl_pld_clr                    ),
               .rstctrl_debug_en                   ((USE_HARD_RESET==0)?"false"                 :rstctrl_debug_en                   ),
               .rstctrl_force_inactive_rst         ((USE_HARD_RESET==0)?"false"                 :rstctrl_force_inactive_rst         ),
               .rstctrl_perst_enable               ((USE_HARD_RESET==0)?"level"                 :rstctrl_perst_enable               ),
               .hrdrstctrl_en                      ((USE_HARD_RESET==0)?"hrdrstctrl_dis"        :hrdrstctrl_en                      ),
               .rstctrl_hip_ep                     ((USE_HARD_RESET==0)?"hip_ep"                :rstctrl_hip_ep                     ),
               .rstctrl_hard_block_enable          ((USE_HARD_RESET==0)?"pld_rst_ctl"           :rstctrl_hard_block_enable          ),
               .rstctrl_rx_pma_rstb_inv            ((USE_HARD_RESET==0)?"false"                 :rstctrl_rx_pma_rstb_inv            ),
               .rstctrl_tx_pma_rstb_inv            ((USE_HARD_RESET==0)?"false"                 :rstctrl_tx_pma_rstb_inv            ),
               .rstctrl_rx_pcs_rst_n_inv           ((USE_HARD_RESET==0)?"false"                 :rstctrl_rx_pcs_rst_n_inv           ),
               .rstctrl_tx_pcs_rst_n_inv           ((USE_HARD_RESET==0)?"false"                 :rstctrl_tx_pcs_rst_n_inv           ),
               .rstctrl_altpe3_crst_n_inv          ((USE_HARD_RESET==0)?"false"                 :rstctrl_altpe3_crst_n_inv          ),
               .rstctrl_altpe3_srst_n_inv          ((USE_HARD_RESET==0)?"false"                 :rstctrl_altpe3_srst_n_inv          ),
               .rstctrl_altpe3_rst_n_inv           ((USE_HARD_RESET==0)?"false"                 :rstctrl_altpe3_rst_n_inv           ),
               .rstctrl_tx_pma_syncp_inv           ((USE_HARD_RESET==0)?"false"                 :rstctrl_tx_pma_syncp_inv           ),
               .rstctrl_1us_count_fref_clk         ((USE_HARD_RESET==0)?"rstctrl_1us_cnt"       :rstctrl_1us_count_fref_clk         ),
               .rstctrl_1us_count_fref_clk_value   ((USE_HARD_RESET==0)?20'b00000000000000111111:rstctrl_1us_count_fref_clk_value   ),
               .rstctrl_1ms_count_fref_clk         ((USE_HARD_RESET==0)?"rstctrl_1ms_cnt"       :rstctrl_1ms_count_fref_clk         ),
               .rstctrl_1ms_count_fref_clk_value   ((USE_HARD_RESET==0)?20'b00001111010000100100:rstctrl_1ms_count_fref_clk_value   ),
               .rstctrl_off_cal_done_select        ((USE_HARD_RESET==0)?"not_active"            :rstctrl_off_cal_done_select        ),
               .rstctrl_rx_pma_rstb_cmu_select     ((USE_HARD_RESET==0)?"not_active"            :rstctrl_rx_pma_rstb_cmu_select     ),
               .rstctrl_rx_pma_rstb_select         ((USE_HARD_RESET==0)?"not_active"            :rstctrl_rx_pma_rstb_select     ),
               .rstctrl_rx_pll_freq_lock_select    ((USE_HARD_RESET==0)?"not_active"            :rstctrl_rx_pll_freq_lock_select    ),
               .rstctrl_mask_tx_pll_lock_select    ((USE_HARD_RESET==0)?"not_active"            :rstctrl_mask_tx_pll_lock_select    ),
               .rstctrl_rx_pll_lock_select         ((USE_HARD_RESET==0)?"not_active"            :rstctrl_rx_pll_lock_select         ),
               .rstctrl_perstn_select              ((USE_HARD_RESET==0)?"perstn_pin"            :rstctrl_perstn_select              ),
               .rstctrl_tx_lc_pll_rstb_select      ((USE_HARD_RESET==0)?"not_active"            :rstctrl_tx_lc_pll_rstb_select      ),
               .rstctrl_fref_clk_select            ((USE_HARD_RESET==0)?"ch0_sel"               :rstctrl_fref_clk_select            ),
               .rstctrl_off_cal_en_select          ((USE_HARD_RESET==0)?"not_active"            :rstctrl_off_cal_en_select          ),
               .rstctrl_tx_pma_syncp_select        ((USE_HARD_RESET==0)?"not_active"            :rstctrl_tx_pma_syncp_select        ),
               .rstctrl_rx_pcs_rst_n_select        ((USE_HARD_RESET==0)?"not_active"            :rstctrl_rx_pcs_rst_n_select        ),
               .rstctrl_tx_cmu_pll_lock_select     ((USE_HARD_RESET==0)?"not_active"            :rstctrl_tx_cmu_pll_lock_select     ),
               .rstctrl_tx_pcs_rst_n_select        ((USE_HARD_RESET==0)?"not_active"            :rstctrl_tx_pcs_rst_n_select        ),
               .rstctrl_tx_lc_pll_lock_select      ((USE_HARD_RESET==0)?"not_active"            :rstctrl_tx_lc_pll_lock_select      ),
               .rstctrl_timer_a                    ((USE_HARD_RESET==0)?"rstctrl_timer_a"       :rstctrl_timer_a                    ),
               .rstctrl_timer_a_type               ((USE_HARD_RESET==0)?"milli_secs"            :rstctrl_timer_a_type               ),
               .rstctrl_timer_a_value              ((USE_HARD_RESET==0)?8'h1                    :rstctrl_timer_a_value              ),
               .rstctrl_timer_b                    ((USE_HARD_RESET==0)?"rstctrl_timer_b"       :rstctrl_timer_b                    ),
               .rstctrl_timer_b_type               ((USE_HARD_RESET==0)?"milli_secs"            :rstctrl_timer_b_type               ),
               .rstctrl_timer_b_value              ((USE_HARD_RESET==0)?8'h1                    :rstctrl_timer_b_value              ),
               .rstctrl_timer_c                    ((USE_HARD_RESET==0)?"rstctrl_timer_c"       :rstctrl_timer_c                    ),
               .rstctrl_timer_c_type               ((USE_HARD_RESET==0)?"milli_secs"            :rstctrl_timer_c_type               ),
               .rstctrl_timer_c_value              ((USE_HARD_RESET==0)?8'h1                    :rstctrl_timer_c_value              ),
               .rstctrl_timer_d                    ((USE_HARD_RESET==0)?"rstctrl_timer_d"       :rstctrl_timer_d                    ),
               .rstctrl_timer_d_type               ((USE_HARD_RESET==0)?"milli_secs"            :rstctrl_timer_d_type               ),
               .rstctrl_timer_d_value              ((USE_HARD_RESET==0)?8'h1                    :rstctrl_timer_d_value              ),
               .rstctrl_timer_e                    ((USE_HARD_RESET==0)?"rstctrl_timer_e"       :rstctrl_timer_e                    ),
               .rstctrl_timer_e_type               ((USE_HARD_RESET==0)?"milli_secs"            :rstctrl_timer_e_type               ),
               .rstctrl_timer_e_value              ((USE_HARD_RESET==0)?8'h1                    :rstctrl_timer_e_value              ),
               .rstctrl_timer_f                    ((USE_HARD_RESET==0)?"rstctrl_timer_f"       :rstctrl_timer_f                    ),
               .rstctrl_timer_f_type               ((USE_HARD_RESET==0)?"milli_secs"            :rstctrl_timer_f_type               ),
               .rstctrl_timer_f_value              ((USE_HARD_RESET==0)?8'h1                    :rstctrl_timer_f_value              ),
               .rstctrl_timer_g                    ((USE_HARD_RESET==0)?"rstctrl_timer_g"       :rstctrl_timer_g                    ),
               .rstctrl_timer_g_type               ((USE_HARD_RESET==0)?"milli_secs"            :rstctrl_timer_g_type               ),
               .rstctrl_timer_g_value              ((USE_HARD_RESET==0)?8'h1                    :rstctrl_timer_g_value              ),
               .rstctrl_timer_h                    ((USE_HARD_RESET==0)?"rstctrl_timer_h"       :rstctrl_timer_h                    ),
               .rstctrl_timer_h_type               ((USE_HARD_RESET==0)?"milli_secs"            :rstctrl_timer_h_type               ),
               .rstctrl_timer_h_value              ((USE_HARD_RESET==0)?8'h1                    :rstctrl_timer_h_value              ),
               .rstctrl_timer_i                    ((USE_HARD_RESET==0)?"rstctrl_timer_i"       :rstctrl_timer_i                    ),
               .rstctrl_timer_i_type               ((USE_HARD_RESET==0)?"milli_secs"            :rstctrl_timer_i_type               ),
               .rstctrl_timer_i_value              ((USE_HARD_RESET==0)?8'h1                    :rstctrl_timer_i_value              ),
               .rstctrl_timer_j                    ((USE_HARD_RESET==0)?"rstctrl_timer_j"       :rstctrl_timer_j                    ),
               .rstctrl_timer_j_type               ((USE_HARD_RESET==0)?"milli_secs"            :rstctrl_timer_j_type               ),
               .rstctrl_timer_j_value              ((USE_HARD_RESET==0)?8'h1                    :rstctrl_timer_j_value              ),
               .role_based_error_reporting         (role_based_error_reporting),
               .gen3_ltssm_debug(gen3_ltssm_debug),
               .dis_paritychk(dis_paritychk),
               .wrong_device_id(wrong_device_id),
               .data_pack_rx(data_pack_rx),
               .ast_width(ast_width),
               .ast_width_tx((low_str(ast_width)=="rx_tx_256")?"tx_256":(low_str(ast_width)=="rx_tx_128")?"tx_128":"tx_64"),
               .ast_width_rx((low_str(ast_width)=="rx_tx_256")?"rx_256":(low_str(ast_width)=="rx_tx_128")?"rx_128":"rx_64"),
               .rx_sop_ctrl(rx_sop_ctrl),
               .tx_sop_ctrl(tx_sop_ctrl),
               .rx_ast_parity(rx_ast_parity),
               .tx_ast_parity(tx_ast_parity),
               .ltssm_1ms_timeout(ltssm_1ms_timeout),
               .ltssm_freqlocked_check(ltssm_freqlocked_check),
               .deskew_comma(deskew_comma),
               .port_link_number_data(port_link_number),
               .device_number_data(device_number),
               .bypass_clk_switch(bypass_clk_switch),
               .core_clk_out_sel(core_clk_out_sel),
               .core_clk_divider(core_clk_divider),
               .core_clk_source(core_clk_source),
               .core_clk_sel(core_clk_sel),
               .enable_ch0_pclk_out(enable_ch0_pclk_out),
               .enable_ch01_pclk_out(enable_ch01_pclk_out),
               .pipex1_debug_sel(pipex1_debug_sel),
               .pclk_out_sel(pclk_out_sel),
               .vendor_id_data(vendor_id),
               .device_id_data(device_id),
               .revision_id_data(revision_id),
               .class_code_data(class_code),
               .subsystem_vendor_id_data(subsystem_vendor_id),
               .subsystem_device_id_data(subsystem_device_id),
               .no_soft_reset(no_soft_reset),
               .maximum_current_data(maximum_current),
               .d1_support(d1_support),
               .d2_support(d2_support),
               .d0_pme(d0_pme),
               .d1_pme(d1_pme),
               .d2_pme(d2_pme),
               .d3_hot_pme(d3_hot_pme),
               .d3_cold_pme(d3_cold_pme),
               .use_aer(use_aer),
               .low_priority_vc(low_priority_vc),
               .vc_arbitration(vc_arbitration),
               .disable_snoop_packet(disable_snoop_packet),
               .max_payload_size(max_payload_size),
               .surprise_down_error_support(surprise_down_error_support),
               .dll_active_report_support(dll_active_report_support),
               .extend_tag_field(extend_tag_field),
               .endpoint_l0_latency_data(endpoint_l0_latency),
               .endpoint_l1_latency_data(endpoint_l1_latency),
               .indicator_data(indicator),
               .slot_power_scale_data(slot_power_scale),
               .max_link_width(lane_mask),
               .enable_l0s_aspm(enable_l0s_aspm),
               .enable_l1_aspm(enable_l1_aspm),
               .l1_exit_latency_sameclock_data(l1_exit_latency_sameclock),
               .l1_exit_latency_diffclock_data(l1_exit_latency_diffclock),
               .hot_plug_support_data(hot_plug_support),
               .slot_power_limit_data(slot_power_limit),
               .slot_number_data(slot_number),
               .diffclock_nfts_count_data(diffclock_nfts_count),
               .sameclock_nfts_count_data(sameclock_nfts_count),
               .completion_timeout(completion_timeout),
               .enable_completion_timeout_disable(enable_completion_timeout_disable),
               .extended_tag_reset(extended_tag_reset),
               .ecrc_check_capable(ecrc_check_capable),
               .ecrc_gen_capable(ecrc_gen_capable),
               .no_command_completed(no_command_completed),
               .msi_multi_message_capable(msi_multi_message_capable),
               .msi_64bit_addressing_capable(msi_64bit_addressing_capable),
               .msi_masking_capable(msi_masking_capable),
               .msi_support(msi_support),
               .interrupt_pin(interrupt_pin),
               .enable_function_msix_support(enable_function_msix_support),
               .msix_table_size_data(msix_table_size),
               .msix_table_bir_data(msix_table_bir),
               .msix_table_offset_data(msix_table_offset),
               .msix_pba_bir_data(msix_pba_bir),
               .msix_pba_offset_data(msix_pba_offset),
               .bridge_port_vga_enable(bridge_port_vga_enable),
               .bridge_port_ssid_support(bridge_port_ssid_support),
               .ssvid_data(ssvid),
               .ssid_data(ssid),
               .eie_before_nfts_count_data(eie_before_nfts_count),
               .gen2_diffclock_nfts_count_data(gen2_diffclock_nfts_count),
               .gen2_sameclock_nfts_count_data(gen2_sameclock_nfts_count),
               .deemphasis_enable(deemphasis_enable),
               .pcie_spec_version(pcie_spec_version),
               .l0_exit_latency_sameclock_data(l0_exit_latency_sameclock),
               .l0_exit_latency_diffclock_data(l0_exit_latency_diffclock),
               .rx_ei_l0s(rx_ei_l0s),
               .l2_async_logic(l2_async_logic),
               .aspm_config_management(aspm_config_management),
               .atomic_op_routing(atomic_op_routing),
               .atomic_op_completer_32bit(atomic_op_completer_32bit),
               .atomic_op_completer_64bit(atomic_op_completer_64bit),
               .cas_completer_128bit(cas_completer_128bit),
               .ltr_mechanism(ltr_mechanism),
               .tph_completer(tph_completer),
               .extended_format_field(extended_format_field),
               .atomic_malformed(atomic_malformed),
               .flr_capability(flr_capability),
               .enable_adapter_half_rate_mode(enable_adapter_half_rate_mode),
               .vc0_clk_enable(vc0_clk_enable),
               .vc1_clk_enable(vc1_clk_enable),
               .register_pipe_signals(register_pipe_signals),
               .bar0_io_space(bar0_io_space),
               .bar0_64bit_mem_space(bar0_64bit_mem_space),
               .bar0_prefetchable(bar0_prefetchable),
               .bar0_size_mask_data(bar0_size_mask),
               .bar1_io_space(bar1_io_space),
               .bar1_64bit_mem_space(bar1_64bit_mem_space),
               .bar1_prefetchable(bar1_prefetchable),
               .bar1_size_mask_data(bar1_size_mask),
               .bar2_io_space(bar2_io_space),
               .bar2_64bit_mem_space(bar2_64bit_mem_space),
               .bar2_prefetchable(bar2_prefetchable),
               .bar2_size_mask_data(bar2_size_mask),
               .bar3_io_space(bar3_io_space),
               .bar3_64bit_mem_space(bar3_64bit_mem_space),
               .bar3_prefetchable(bar3_prefetchable),
               .bar3_size_mask_data(bar3_size_mask),
               .bar4_io_space(bar4_io_space),
               .bar4_64bit_mem_space(bar4_64bit_mem_space),
               .bar4_prefetchable(bar4_prefetchable),
               .bar4_size_mask_data(bar4_size_mask),
               .bar5_io_space(bar5_io_space),
               .bar5_64bit_mem_space(bar5_64bit_mem_space),
               .bar5_prefetchable(bar5_prefetchable),
               .bar5_size_mask_data(bar5_size_mask),
               .expansion_base_address_register_data(expansion_base_address_register),
               .io_window_addr_width(io_window_addr_width),
               .prefetchable_mem_window_addr_width(prefetchable_mem_window_addr_width),
               .skp_os_gen3_count_data(skp_os_gen3_count),
               .tx_cdc_almost_empty_data(tx_cdc_almost_empty),
               .rx_cdc_almost_full_data(rx_cdc_almost_full),
               .tx_cdc_almost_full_data(tx_cdc_almost_full),
               .rx_l0s_count_idl_data(rx_l0s_count_idl),
               .cdc_dummy_insert_limit_data(cdc_dummy_insert_limit),
               .ei_delay_powerdown_count_data(ei_delay_powerdown_count),
               .millisecond_cycle_count_data(millisecond_cycle_count),
               .skp_os_schedule_count_data(skp_os_schedule_count),
               .fc_init_timer_data(fc_init_timer),
               .l01_entry_latency_data(l01_entry_latency),
               .flow_control_update_count_data(flow_control_update_count),
               .flow_control_timeout_count_data(flow_control_timeout_count),
               .vc0_rx_flow_ctrl_posted_header_data(vc0_rx_flow_ctrl_posted_header),
               .vc0_rx_flow_ctrl_posted_data_data(vc0_rx_flow_ctrl_posted_data),
               .vc0_rx_flow_ctrl_nonposted_header_data(vc0_rx_flow_ctrl_nonposted_header),
               .vc0_rx_flow_ctrl_nonposted_data_data(vc0_rx_flow_ctrl_nonposted_data),
               .vc0_rx_flow_ctrl_compl_header_data(vc0_rx_flow_ctrl_compl_header),
               .vc0_rx_flow_ctrl_compl_data_data(vc0_rx_flow_ctrl_compl_data),
               .rx_ptr0_posted_dpram_min_data(rx_ptr0_posted_dpram_min),
               .rx_ptr0_posted_dpram_max_data(rx_ptr0_posted_dpram_max),
               .rx_ptr0_nonposted_dpram_min_data(rx_ptr0_nonposted_dpram_min),
               .rx_ptr0_nonposted_dpram_max_data(rx_ptr0_nonposted_dpram_max),
               .retry_buffer_last_active_address_data(retry_buffer_last_active_address),
               .retry_buffer_memory_settings_data(retry_buffer_memory_settings),
               .vc0_rx_buffer_memory_settings_data(vc0_rx_buffer_memory_settings),
               .bist_memory_settings_data(bist_memory_settings),
               .credit_buffer_allocation_aux(credit_buffer_allocation_aux),
               .iei_enable_settings(iei_enable_settings),
               .rpltim_set(rpltim_set),
               .rpltim_base_data(rpltim_base_data),
               .acknak_set(acknak_set),
               .acknak_base_data(acknak_base_data),
               .gen3_skip_ph2_ph3(gen3_skip_ph2_ph3),
               .gen3_dcbal_en(gen3_dcbal_en),
               .g3_bypass_equlz(g3_bypass_equlz),
               .vsec_id_data(vsec_id),
               .cvp_rate_sel(cvp_rate_sel),
               .hard_reset_bypass(hard_reset_bypass),
               .cvp_data_compressed(cvp_data_compressed),
               .cvp_data_encrypted(cvp_data_encrypted),
               .cvp_mode_reset(cvp_mode_reset),
               .cvp_clk_reset(cvp_clk_reset),
               .in_cvp_mode(in_cvp_mode),
               .vsec_rev_data(vsec_rev),
               .jtag_id_data(jtag_id),
               .user_id_data(user_id),
               .cseb_extend_pci(cseb_extend_pci),
               .cseb_extend_pcie(cseb_extend_pcie),
               .cseb_cpl_status_during_cvp(cseb_cpl_status_during_cvp),
               .cseb_route_to_avl_rx_st(cseb_route_to_avl_rx_st),
               .cseb_config_bypass(cseb_config_bypass),
               .cseb_cpl_tag_checking(cseb_cpl_tag_checking),
               .cseb_bar_match_checking(cseb_bar_match_checking),
               .cseb_min_error_checking(cseb_min_error_checking),
               .cseb_temp_busy_crs(cseb_temp_busy_crs),
               .cseb_disable_auto_crs(cseb_disable_auto_crs),
               .gen3_diffclock_nfts_count_data(gen3_diffclock_nfts_count),
               .gen3_sameclock_nfts_count_data(gen3_sameclock_nfts_count),
               .gen3_coeff_errchk(gen3_coeff_errchk),
               .gen3_paritychk(gen3_paritychk),
               .gen3_coeff_delay_count_data(gen3_coeff_delay_count),
               .gen3_coeff_1_data(gen3_coeff_1),
               .gen3_coeff_1_sel(gen3_coeff_1_sel),
               .gen3_coeff_1_preset_hint_data(gen3_coeff_1_preset_hint),
               .gen3_coeff_1_nxtber_more_ptr(gen3_coeff_1_nxtber_more_ptr),
               .gen3_coeff_1_nxtber_more(gen3_coeff_1_nxtber_more),
               .gen3_coeff_1_nxtber_less_ptr(gen3_coeff_1_nxtber_less_ptr),
               .gen3_coeff_1_nxtber_less(gen3_coeff_1_nxtber_less),
               .gen3_coeff_1_reqber_data(gen3_coeff_1_reqber),
               .gen3_coeff_1_ber_meas_data(gen3_coeff_1_ber_meas),
               .gen3_coeff_2_data(gen3_coeff_2),
               .gen3_coeff_2_sel(gen3_coeff_2_sel),
               .gen3_coeff_2_preset_hint_data(gen3_coeff_2_preset_hint),
               .gen3_coeff_2_nxtber_more_ptr(gen3_coeff_2_nxtber_more_ptr),
               .gen3_coeff_2_nxtber_more(gen3_coeff_2_nxtber_more),
               .gen3_coeff_2_nxtber_less_ptr(gen3_coeff_2_nxtber_less_ptr),
               .gen3_coeff_2_nxtber_less(gen3_coeff_2_nxtber_less),
               .gen3_coeff_2_reqber_data(gen3_coeff_2_reqber),
               .gen3_coeff_2_ber_meas_data(gen3_coeff_2_ber_meas),
               .gen3_coeff_3_data(gen3_coeff_3),
               .gen3_coeff_3_sel(gen3_coeff_3_sel),
               .gen3_coeff_3_preset_hint_data(gen3_coeff_3_preset_hint),
               .gen3_coeff_3_nxtber_more_ptr(gen3_coeff_3_nxtber_more_ptr),
               .gen3_coeff_3_nxtber_more(gen3_coeff_3_nxtber_more),
               .gen3_coeff_3_nxtber_less_ptr(gen3_coeff_3_nxtber_less_ptr),
               .gen3_coeff_3_nxtber_less(gen3_coeff_3_nxtber_less),
               .gen3_coeff_3_reqber_data(gen3_coeff_3_reqber),
               .gen3_coeff_3_ber_meas_data(gen3_coeff_3_ber_meas),
               .gen3_coeff_4_data(gen3_coeff_4),
               .gen3_coeff_4_sel(gen3_coeff_4_sel),
               .gen3_coeff_4_preset_hint_data(gen3_coeff_4_preset_hint),
               .gen3_coeff_4_nxtber_more_ptr(gen3_coeff_4_nxtber_more_ptr),
               .gen3_coeff_4_nxtber_more(gen3_coeff_4_nxtber_more),
               .gen3_coeff_4_nxtber_less_ptr(gen3_coeff_4_nxtber_less_ptr),
               .gen3_coeff_4_nxtber_less(gen3_coeff_4_nxtber_less),
               .gen3_coeff_4_reqber_data(gen3_coeff_4_reqber),
               .gen3_coeff_4_ber_meas_data(gen3_coeff_4_ber_meas),
               .gen3_coeff_5_data(gen3_coeff_5),
               .gen3_coeff_5_sel(gen3_coeff_5_sel),
               .gen3_coeff_5_preset_hint_data(gen3_coeff_5_preset_hint),
               .gen3_coeff_5_nxtber_more_ptr(gen3_coeff_5_nxtber_more_ptr),
               .gen3_coeff_5_nxtber_more(gen3_coeff_5_nxtber_more),
               .gen3_coeff_5_nxtber_less_ptr(gen3_coeff_5_nxtber_less_ptr),
               .gen3_coeff_5_nxtber_less(gen3_coeff_5_nxtber_less),
               .gen3_coeff_5_reqber_data(gen3_coeff_5_reqber),
               .gen3_coeff_5_ber_meas_data(gen3_coeff_5_ber_meas),
               .gen3_coeff_6_data(gen3_coeff_6),
               .gen3_coeff_6_sel(gen3_coeff_6_sel),
               .gen3_coeff_6_preset_hint_data(gen3_coeff_6_preset_hint),
               .gen3_coeff_6_nxtber_more_ptr(gen3_coeff_6_nxtber_more_ptr),
               .gen3_coeff_6_nxtber_more(gen3_coeff_6_nxtber_more),
               .gen3_coeff_6_nxtber_less_ptr(gen3_coeff_6_nxtber_less_ptr),
               .gen3_coeff_6_nxtber_less(gen3_coeff_6_nxtber_less),
               .gen3_coeff_6_reqber_data(gen3_coeff_6_reqber),
               .gen3_coeff_6_ber_meas_data(gen3_coeff_6_ber_meas),
               .gen3_coeff_7_data(gen3_coeff_7),
               .gen3_coeff_7_sel(gen3_coeff_7_sel),
               .gen3_coeff_7_preset_hint_data(gen3_coeff_7_preset_hint),
               .gen3_coeff_7_nxtber_more_ptr(gen3_coeff_7_nxtber_more_ptr),
               .gen3_coeff_7_nxtber_more(gen3_coeff_7_nxtber_more),
               .gen3_coeff_7_nxtber_less_ptr(gen3_coeff_7_nxtber_less_ptr),
               .gen3_coeff_7_nxtber_less(gen3_coeff_7_nxtber_less),
               .gen3_coeff_7_reqber_data(gen3_coeff_7_reqber),
               .gen3_coeff_7_ber_meas_data(gen3_coeff_7_ber_meas),
               .gen3_coeff_8_data(gen3_coeff_8),
               .gen3_coeff_8_sel(gen3_coeff_8_sel),
               .gen3_coeff_8_preset_hint_data(gen3_coeff_8_preset_hint),
               .gen3_coeff_8_nxtber_more_ptr(gen3_coeff_8_nxtber_more_ptr),
               .gen3_coeff_8_nxtber_more(gen3_coeff_8_nxtber_more),
               .gen3_coeff_8_nxtber_less_ptr(gen3_coeff_8_nxtber_less_ptr),
               .gen3_coeff_8_nxtber_less(gen3_coeff_8_nxtber_less),
               .gen3_coeff_8_reqber_data(gen3_coeff_8_reqber),
               .gen3_coeff_8_ber_meas_data(gen3_coeff_8_ber_meas),
               .gen3_coeff_9_data(gen3_coeff_9),
               .gen3_coeff_9_sel(gen3_coeff_9_sel),
               .gen3_coeff_9_preset_hint_data(gen3_coeff_9_preset_hint),
               .gen3_coeff_9_nxtber_more_ptr(gen3_coeff_9_nxtber_more_ptr),
               .gen3_coeff_9_nxtber_more(gen3_coeff_9_nxtber_more),
               .gen3_coeff_9_nxtber_less_ptr(gen3_coeff_9_nxtber_less_ptr),
               .gen3_coeff_9_nxtber_less(gen3_coeff_9_nxtber_less),
               .gen3_coeff_9_reqber_data(gen3_coeff_9_reqber),
               .gen3_coeff_9_ber_meas_data(gen3_coeff_9_ber_meas),
               .gen3_coeff_10_data(gen3_coeff_10),
               .gen3_coeff_10_sel(gen3_coeff_10_sel),
               .gen3_coeff_10_preset_hint_data(gen3_coeff_10_preset_hint),
               .gen3_coeff_10_nxtber_more_ptr(gen3_coeff_10_nxtber_more_ptr),
               .gen3_coeff_10_nxtber_more(gen3_coeff_10_nxtber_more),
               .gen3_coeff_10_nxtber_less_ptr(gen3_coeff_10_nxtber_less_ptr),
               .gen3_coeff_10_nxtber_less(gen3_coeff_10_nxtber_less),
               .gen3_coeff_10_reqber_data(gen3_coeff_10_reqber),
               .gen3_coeff_10_ber_meas_data(gen3_coeff_10_ber_meas),
               .gen3_coeff_11_data(gen3_coeff_11),
               .gen3_coeff_11_sel(gen3_coeff_11_sel),
               .gen3_coeff_11_preset_hint_data(gen3_coeff_11_preset_hint),
               .gen3_coeff_11_nxtber_more_ptr(gen3_coeff_11_nxtber_more_ptr),
               .gen3_coeff_11_nxtber_more(gen3_coeff_11_nxtber_more),
               .gen3_coeff_11_nxtber_less_ptr(gen3_coeff_11_nxtber_less_ptr),
               .gen3_coeff_11_nxtber_less(gen3_coeff_11_nxtber_less),
               .gen3_coeff_11_reqber_data(gen3_coeff_11_reqber),
               .gen3_coeff_11_ber_meas_data(gen3_coeff_11_ber_meas),
               .gen3_coeff_12_data(gen3_coeff_12),
               .gen3_coeff_12_sel(gen3_coeff_12_sel),
               .gen3_coeff_12_preset_hint_data(gen3_coeff_12_preset_hint),
               .gen3_coeff_12_nxtber_more_ptr(gen3_coeff_12_nxtber_more_ptr),
               .gen3_coeff_12_nxtber_more(gen3_coeff_12_nxtber_more),
               .gen3_coeff_12_nxtber_less_ptr(gen3_coeff_12_nxtber_less_ptr),
               .gen3_coeff_12_nxtber_less(gen3_coeff_12_nxtber_less),
               .gen3_coeff_12_reqber_data(gen3_coeff_12_reqber),
               .gen3_coeff_12_ber_meas_data(gen3_coeff_12_ber_meas),
               .gen3_coeff_13_data(gen3_coeff_13),
               .gen3_coeff_13_sel(gen3_coeff_13_sel),
               .gen3_coeff_13_preset_hint_data(gen3_coeff_13_preset_hint),
               .gen3_coeff_13_nxtber_more_ptr(gen3_coeff_13_nxtber_more_ptr),
               .gen3_coeff_13_nxtber_more(gen3_coeff_13_nxtber_more),
               .gen3_coeff_13_nxtber_less_ptr(gen3_coeff_13_nxtber_less_ptr),
               .gen3_coeff_13_nxtber_less(gen3_coeff_13_nxtber_less),
               .gen3_coeff_13_reqber_data(gen3_coeff_13_reqber),
               .gen3_coeff_13_ber_meas_data(gen3_coeff_13_ber_meas),
               .gen3_coeff_14_data(gen3_coeff_14),
               .gen3_coeff_14_sel(gen3_coeff_14_sel),
               .gen3_coeff_14_preset_hint_data(gen3_coeff_14_preset_hint),
               .gen3_coeff_14_nxtber_more_ptr(gen3_coeff_14_nxtber_more_ptr),
               .gen3_coeff_14_nxtber_more(gen3_coeff_14_nxtber_more),
               .gen3_coeff_14_nxtber_less_ptr(gen3_coeff_14_nxtber_less_ptr),
               .gen3_coeff_14_nxtber_less(gen3_coeff_14_nxtber_less),
               .gen3_coeff_14_reqber_data(gen3_coeff_14_reqber),
               .gen3_coeff_14_ber_meas_data(gen3_coeff_14_ber_meas),
               .gen3_coeff_15_data(gen3_coeff_15),
               .gen3_coeff_15_sel(gen3_coeff_15_sel),
               .gen3_coeff_15_preset_hint_data(gen3_coeff_15_preset_hint),
               .gen3_coeff_15_nxtber_more_ptr(gen3_coeff_15_nxtber_more_ptr),
               .gen3_coeff_15_nxtber_more(gen3_coeff_15_nxtber_more),
               .gen3_coeff_15_nxtber_less_ptr(gen3_coeff_15_nxtber_less_ptr),
               .gen3_coeff_15_nxtber_less(gen3_coeff_15_nxtber_less),
               .gen3_coeff_15_reqber_data(gen3_coeff_15_reqber),
               .gen3_coeff_15_ber_meas_data(gen3_coeff_15_ber_meas),
               .gen3_coeff_16_data(gen3_coeff_16),
               .gen3_coeff_16_sel(gen3_coeff_16_sel),
               .gen3_coeff_16_preset_hint_data(gen3_coeff_16_preset_hint),
               .gen3_coeff_16_nxtber_more_ptr(gen3_coeff_16_nxtber_more_ptr),
               .gen3_coeff_16_nxtber_more(gen3_coeff_16_nxtber_more),
               .gen3_coeff_16_nxtber_less_ptr(gen3_coeff_16_nxtber_less_ptr),
               .gen3_coeff_16_nxtber_less(gen3_coeff_16_nxtber_less),
               .gen3_coeff_16_reqber_data(gen3_coeff_16_reqber),
               .gen3_coeff_16_ber_meas_data(gen3_coeff_16_ber_meas),
               .gen3_coeff_17_data(gen3_coeff_17),
               .gen3_coeff_17_sel(gen3_coeff_17_sel),
               .gen3_coeff_17_preset_hint_data(gen3_coeff_17_preset_hint),
               .gen3_coeff_17_nxtber_more_ptr(gen3_coeff_17_nxtber_more_ptr),
               .gen3_coeff_17_nxtber_more(gen3_coeff_17_nxtber_more),
               .gen3_coeff_17_nxtber_less_ptr(gen3_coeff_17_nxtber_less_ptr),
               .gen3_coeff_17_nxtber_less(gen3_coeff_17_nxtber_less),
               .gen3_coeff_17_reqber_data(gen3_coeff_17_reqber),
               .gen3_coeff_17_ber_meas_data(gen3_coeff_17_ber_meas),
               .gen3_coeff_18_data(gen3_coeff_18),
               .gen3_coeff_18_sel(gen3_coeff_18_sel),
               .gen3_coeff_18_preset_hint_data(gen3_coeff_18_preset_hint),
               .gen3_coeff_18_nxtber_more_ptr(gen3_coeff_18_nxtber_more_ptr),
               .gen3_coeff_18_nxtber_more(gen3_coeff_18_nxtber_more),
               .gen3_coeff_18_nxtber_less_ptr(gen3_coeff_18_nxtber_less_ptr),
               .gen3_coeff_18_nxtber_less(gen3_coeff_18_nxtber_less),
               .gen3_coeff_18_reqber_data(gen3_coeff_18_reqber),
               .gen3_coeff_18_ber_meas_data(gen3_coeff_18_ber_meas),
               .gen3_coeff_19_data(gen3_coeff_19),
               .gen3_coeff_19_sel(gen3_coeff_19_sel),
               .gen3_coeff_19_preset_hint_data(gen3_coeff_19_preset_hint),
               .gen3_coeff_19_nxtber_more_ptr(gen3_coeff_19_nxtber_more_ptr),
               .gen3_coeff_19_nxtber_more(gen3_coeff_19_nxtber_more),
               .gen3_coeff_19_nxtber_less_ptr(gen3_coeff_19_nxtber_less_ptr),
               .gen3_coeff_19_nxtber_less(gen3_coeff_19_nxtber_less),
               .gen3_coeff_19_reqber_data(gen3_coeff_19_reqber),
               .gen3_coeff_19_ber_meas_data(gen3_coeff_19_ber_meas),
               .gen3_coeff_20_data(gen3_coeff_20),
               .gen3_coeff_20_sel(gen3_coeff_20_sel),
               .gen3_coeff_20_preset_hint_data(gen3_coeff_20_preset_hint),
               .gen3_coeff_20_nxtber_more_ptr(gen3_coeff_20_nxtber_more_ptr),
               .gen3_coeff_20_nxtber_more(gen3_coeff_20_nxtber_more),
               .gen3_coeff_20_nxtber_less_ptr(gen3_coeff_20_nxtber_less_ptr),
               .gen3_coeff_20_nxtber_less(gen3_coeff_20_nxtber_less),
               .gen3_coeff_20_reqber_data(gen3_coeff_20_reqber),
               .gen3_coeff_20_ber_meas_data(gen3_coeff_20_ber_meas),
               .gen3_coeff_21_data(gen3_coeff_21),
               .gen3_coeff_21_sel(gen3_coeff_21_sel),
               .gen3_coeff_21_preset_hint_data(gen3_coeff_21_preset_hint),
               .gen3_coeff_21_nxtber_more_ptr(gen3_coeff_21_nxtber_more_ptr),
               .gen3_coeff_21_nxtber_more(gen3_coeff_21_nxtber_more),
               .gen3_coeff_21_nxtber_less_ptr(gen3_coeff_21_nxtber_less_ptr),
               .gen3_coeff_21_nxtber_less(gen3_coeff_21_nxtber_less),
               .gen3_coeff_21_reqber_data(gen3_coeff_21_reqber),
               .gen3_coeff_21_ber_meas_data(gen3_coeff_21_ber_meas),
               .gen3_coeff_22_data(gen3_coeff_22),
               .gen3_coeff_22_sel(gen3_coeff_22_sel),
               .gen3_coeff_22_preset_hint_data(gen3_coeff_22_preset_hint),
               .gen3_coeff_22_nxtber_more_ptr(gen3_coeff_22_nxtber_more_ptr),
               .gen3_coeff_22_nxtber_more(gen3_coeff_22_nxtber_more),
               .gen3_coeff_22_nxtber_less_ptr(gen3_coeff_22_nxtber_less_ptr),
               .gen3_coeff_22_nxtber_less(gen3_coeff_22_nxtber_less),
               .gen3_coeff_22_reqber_data(gen3_coeff_22_reqber),
               .gen3_coeff_22_ber_meas_data(gen3_coeff_22_ber_meas),
               .gen3_coeff_23_data(gen3_coeff_23),
               .gen3_coeff_23_sel(gen3_coeff_23_sel),
               .gen3_coeff_23_preset_hint_data(gen3_coeff_23_preset_hint),
               .gen3_coeff_23_nxtber_more_ptr(gen3_coeff_23_nxtber_more_ptr),
               .gen3_coeff_23_nxtber_more(gen3_coeff_23_nxtber_more),
               .gen3_coeff_23_nxtber_less_ptr(gen3_coeff_23_nxtber_less_ptr),
               .gen3_coeff_23_nxtber_less(gen3_coeff_23_nxtber_less),
               .gen3_coeff_23_reqber_data(gen3_coeff_23_reqber),
               .gen3_coeff_23_ber_meas_data(gen3_coeff_23_ber_meas),
               .gen3_coeff_24_data(gen3_coeff_24),
               .gen3_coeff_24_sel(gen3_coeff_24_sel),
               .gen3_coeff_24_preset_hint_data(gen3_coeff_24_preset_hint),
               .gen3_coeff_24_nxtber_more_ptr(gen3_coeff_24_nxtber_more_ptr),
               .gen3_coeff_24_nxtber_more(gen3_coeff_24_nxtber_more),
               .gen3_coeff_24_nxtber_less_ptr(gen3_coeff_24_nxtber_less_ptr),
               .gen3_coeff_24_nxtber_less(gen3_coeff_24_nxtber_less),
               .gen3_coeff_24_reqber_data(gen3_coeff_24_reqber),
               .gen3_coeff_24_ber_meas_data(gen3_coeff_24_ber_meas),
               .gen3_preset_coeff_1_data(gen3_preset_coeff_1),
               .gen3_preset_coeff_2_data(gen3_preset_coeff_2),
               .gen3_preset_coeff_3_data(gen3_preset_coeff_3),
               .gen3_preset_coeff_4_data(gen3_preset_coeff_4),
               .gen3_preset_coeff_5_data(gen3_preset_coeff_5),
               .gen3_preset_coeff_6_data(gen3_preset_coeff_6),
               .gen3_preset_coeff_7_data(gen3_preset_coeff_7),
               .gen3_preset_coeff_8_data(gen3_preset_coeff_8),
               .gen3_preset_coeff_9_data(gen3_preset_coeff_9),
               .gen3_preset_coeff_10_data(gen3_preset_coeff_10),
               .gen3_preset_coeff_11_data(gen3_preset_coeff_11),
               .gen3_full_swing_data(gen3_full_swing),
               .gen3_low_freq_data(gen3_low_freq),
               .gen3_rxfreqlock_counter_data(gen3_rxfreqlock_counter),
               .rx_use_prst(g3_dis_rx_use_prst),
               .rx_use_prst_ep(g3_dis_rx_use_prst_ep)
         ) stratixv_hssi_gen3_pcie_hip  (
               .aermsinum                  (aer_msi_num                                      ),
               .appintasts                 (app_int_sts                                      ),
               .appmsinum                  (app_msi_num                                      ),
               .appmsireq                  (app_msi_req                                      ),
               .appmsitc                   (app_msi_tc                                       ),
               .bistenrcv                  (((ACDS_V10==1)||(MEM_CHECK==0))?1'b1:bistenrcv   ),
               .bistenrpl                  (((ACDS_V10==1)||(MEM_CHECK==0))?1'b1:bistenrpl   ),
               .bistscanen                 (((ACDS_V10==1)||(MEM_CHECK==0))?1'b0:bistscanen  ),
               .bistscanin                 (((ACDS_V10==1)||(MEM_CHECK==0))?1'b0:bistscanin  ),
               .bisttesten                 (((ACDS_V10==1)||(MEM_CHECK==0))?1'b1:bisttesten  ),
               .cfglink2csrpld             (cfglink2csrpld                                   ),
               .coreclkin                  (pld_clk                                          ),
               .flrreset                   (flrreset                                         ),
               .flrsts                     (flrsts                                           ),
               .pldclrpmapcshipn           (1'b1                                             ),
               .pldclrpcshipn              (1'b1                                             ),
               .pldperstn                  (1'b1                                             ),
               .pldclrhipn                 ((USE_HARD_RESET==0)?1'b1      : ~hiprst          ),
               .pinperstn                  ((USE_HARD_RESET==0)?1'b1      : pin_perst        ),
               .corecrst                   ((USE_HARD_RESET==0)?crst      : 1'b0             ),
               .corepor                    ((USE_HARD_RESET==0)?~npor_int : 1'b0             ),
               .corerst                    ((USE_HARD_RESET==0)?~npor_int : 1'b0             ),
               .coresrst                   ((USE_HARD_RESET==0)?srst      : 1'b0             ),
               .cplerr                     (cpl_err                                          ),
               .cplpending                 (cpl_pending                                      ),
               .csebrddata                 (csebrddata                                       ),
               .csebrddataparity           (csebrddataparity                                 ),
               .csebrdresponse             (csebrdresponse                                   ),
               .csebwaitrequest            (csebwaitrequest                                  ),
               .csebwrresponse             (csebwrresponse                                   ),
               .csebwrrespvalid            (csebwrrespvalid                                  ),
               .dbgpipex1rx                ((ACDS_V10==1)?44'h0 :dbgpipex1rx                 ),
               .frzlogic                   (frzlogic                                         ),
               .frzreg                     (frzreg                                           ),
               .hpgctrler                  (hpg_ctrler                                       ),
               .idrcv                      (idrcv                                            ),
               .idrpl                      (idrpl                                            ),
               .lmiaddr                    (lmi_addr                                         ),
               .lmidin                     (lmi_din                                          ),
               .lmirden                    (lmi_rden                                         ),
               .lmiwren                    (lmi_wren                                         ),
               .memhiptestenable           (((ACDS_V10==1)||(MEM_CHECK==0))?1'b0:memhiptestenable           ),
               .memredenscan               (((ACDS_V10==1)||(MEM_CHECK==0))?1'b0:memredenscan               ),
               .memredscen                 (((ACDS_V10==1)||(MEM_CHECK==0))?1'b0:memredscen                 ),
               .memredscin                 (((ACDS_V10==1)||(MEM_CHECK==0))?1'b0:memredscin                 ),
               .memredsclk                 (((ACDS_V10==1)||(MEM_CHECK==0))?1'b0:memredsclk                 ),
               .memredscrst                (((ACDS_V10==1)||(MEM_CHECK==0))?1'b1:memredscrst                ),
               .memredscsel                (((ACDS_V10==1)||(MEM_CHECK==0))?1'b0:memredscsel                ),
               .memregscanen               (((ACDS_V10==1)||(MEM_CHECK==0))?1'b1:memregscanen               ),
               .memregscanin               (((ACDS_V10==1)||(MEM_CHECK==0))?1'b1:memregscanin               ),
               .mode                       (mode                       ),
               .nfrzdrv                    (((ACDS_V10==1)||(MEM_CHECK==0))?1'b0:nfrzdrv                    ),
               .pclkcentral                ((PIPE32_SIM_ONLY==1)?pipe32_sim_pipe_pclkcentral:(pipe8_sim_only==1'b1)? sim_pipe32_pclk: mserdes_pipe_pclkcentral), //
               .pclkch0                    ((PIPE32_SIM_ONLY==1)?pipe32_sim_pipe_pclk       :(pipe8_sim_only==1'b1)? sim_pipe32_pclk: mserdes_pipe_pclk       ),
               .pclkch1                    ((PIPE32_SIM_ONLY==1)?pipe32_sim_pipe_pclkch1    :(pipe8_sim_only==1'b1)? sim_pipe32_pclk: mserdes_pipe_pclkch1    ),//
               .pexmsinum                  (pex_msi_num                  ),
               .phyrst                     ((USE_HARD_RESET==0)?~npor_int:1'b0),
               .physrst                    ((USE_HARD_RESET==0)?srst:1'b0    ), //
               .phystatus0                 (phystatus0                 ),
               .phystatus1                 (phystatus1                 ),
               .phystatus2                 (phystatus2                 ),
               .phystatus3                 (phystatus3                 ),
               .phystatus4                 (phystatus4                 ),
               .phystatus5                 (phystatus5                 ),
               .phystatus6                 (phystatus6                 ),
               .phystatus7                 (phystatus7                 ),
               .pldclk                     (pld_clk                ),  //
               .pldrst                     ((USE_HARD_RESET==0)?~npor_int:1'b0),
               .pldsrst                    ((USE_HARD_RESET==0)?srst:1'b0),
               // PIPE32_SIM_ONLY = 3rd party BFM
               // pipe8_sim_only = pipe mode
               // Fixed clocks are 500Mhz for Gen2/Gen3 Capable cores, 250Mhz for Gen1 Capable cores
               .pllfixedclkcentral         ((PIPE32_SIM_ONLY==1)?pipe32_sim_pllfixedclkcentral:(pipe8_sim_only==1'b0)? mserdes_pllfixedclkcentral:(low_str(gen123_lane_rate_mode)!="gen1")? clk500_out : (use_atx_pll=="true")? clk500_out : clk250_out),  //
               .pllfixedclkch0             ((PIPE32_SIM_ONLY==1)?pipe32_sim_pllfixedclkch0    :(pipe8_sim_only==1'b0)? mserdes_pllfixedclkch0    :(low_str(gen123_lane_rate_mode)!="gen1")? clk500_out : (use_atx_pll=="true")? clk500_out : clk250_out),  //
               .pllfixedclkch1             ((PIPE32_SIM_ONLY==1)?pipe32_sim_pllfixedclkch1    :(pipe8_sim_only==1'b0)? mserdes_pllfixedclkch1    :(low_str(gen123_lane_rate_mode)!="gen1")? clk500_out : (use_atx_pll=="true")? clk500_out : clk250_out),  //
               .pmauxpwr                   (pm_auxpwr                   ),
               .pmdata                     (pm_data                     ),
               .pmetocr                    (pme_to_cr                    ),
               .pmevent                    (pm_event                    ),
               .rxblkst0                   (rxblkst0                   ),//
               .rxblkst1                   (rxblkst1                   ),//
               .rxblkst2                   (rxblkst2                   ),//
               .rxblkst3                   (rxblkst3                   ),//
               .rxblkst4                   (rxblkst4                   ),//
               .rxblkst5                   (rxblkst5                   ),//
               .rxblkst6                   (rxblkst6                   ),//
               .rxblkst7                   (rxblkst7                   ),//
               .rxdata0                    (rxdata0                    ),
               .rxdata1                    (rxdata1                    ),
               .rxdata2                    (rxdata2                    ),
               .rxdata3                    (rxdata3                    ),
               .rxdata4                    (rxdata4                    ),
               .rxdata5                    (rxdata5                    ),
               .rxdata6                    (rxdata6                    ),
               .rxdata7                    (rxdata7                    ),
               .rxdatak0                   (rxdatak0                   ),
               .rxdatak1                   (rxdatak1                   ),
               .rxdatak2                   (rxdatak2                   ),
               .rxdatak3                   (rxdatak3                   ),
               .rxdatak4                   (rxdatak4                   ),
               .rxdatak5                   (rxdatak5                   ),
               .rxdatak6                   (rxdatak6                   ),
               .rxdatak7                   (rxdatak7                   ),
               .rxdataskip0                (rxdataskip0                ),
               .rxdataskip1                (rxdataskip1                ),
               .rxdataskip2                (rxdataskip2                ),
               .rxdataskip3                (rxdataskip3                ),
               .rxdataskip4                (rxdataskip4                ),
               .rxdataskip5                (rxdataskip5                ),
               .rxdataskip6                (rxdataskip6                ),
               .rxdataskip7                (rxdataskip7                ),
               .rxelecidle0                (rxelecidle0                ),
               .rxelecidle1                (rxelecidle1                ),
               .rxelecidle2                (rxelecidle2                ),
               .rxelecidle3                (rxelecidle3                ),
               .rxelecidle4                (rxelecidle4                ),
               .rxelecidle5                (rxelecidle5                ),
               .rxelecidle6                (rxelecidle6                ),
               .rxelecidle7                (rxelecidle7                ),
               .rxfreqlocked0              (rxfreqlocked0              ),
               .rxfreqlocked1              (rxfreqlocked1              ),
               .rxfreqlocked2              (rxfreqlocked2              ),
               .rxfreqlocked3              (rxfreqlocked3              ),
               .rxfreqlocked4              (rxfreqlocked4              ),
               .rxfreqlocked5              (rxfreqlocked5              ),
               .rxfreqlocked6              (rxfreqlocked6              ),
               .rxfreqlocked7              (rxfreqlocked7              ),
               .rxstatus0                  (rxstatus0                  ),
               .rxstatus1                  (rxstatus1                  ),
               .rxstatus2                  (rxstatus2                  ),
               .rxstatus3                  (rxstatus3                  ),
               .rxstatus4                  (rxstatus4                  ),
               .rxstatus5                  (rxstatus5                  ),
               .rxstatus6                  (rxstatus6                  ),
               .rxstatus7                  (rxstatus7                  ),
               .rxstmask                   (rxstmask                   ),
               .rxstready                  (rxstready                  ),
               .rxsynchd0                  (rxsynchd0                  ),
               .rxsynchd1                  (rxsynchd1                  ),
               .rxsynchd2                  (rxsynchd2                  ),
               .rxsynchd3                  (rxsynchd3                  ),
               .rxsynchd4                  (rxsynchd4                  ),
               .rxsynchd5                  (rxsynchd5                  ),
               .rxsynchd6                  (rxsynchd6                  ),
               .rxsynchd7                  (rxsynchd7                  ),
               .rxvalid0                   (rxvalid0                   ),
               .rxvalid1                   (rxvalid1                   ),
               .rxvalid2                   (rxvalid2                   ),
               .rxvalid3                   (rxvalid3                   ),
               .rxvalid4                   (rxvalid4                   ),
               .rxvalid5                   (rxvalid5                   ),
               .rxvalid6                   (rxvalid6                   ),
               .rxvalid7                   (rxvalid7                   ),
               .scanmoden                  (((ACDS_V10==1)||(MEM_CHECK==0))?1'b1:scanmoden),
               .scanshiftn                 (((ACDS_V10==1)||(MEM_CHECK==0))?1'b1:scanshiftn),
               .slotclkcfg                 (tl_slotclk_cfg               ),
               .swctmod                    (swctmod                    ),
               .swdnin                     (3'b000                     ),
               .swupin                     (7'b0000000                 ),
               .testinhip                  (((enable_pcisigtest==1)&&(low_str(gen123_lane_rate_mode)=="gen1_gen2_gen3"))?test_in_hip_eq:test_in[31:0]),
               .testin1hip                 (((enable_pcisigtest==1)&&(low_str(gen123_lane_rate_mode)=="gen1_gen2_gen3"))?test_in_1_hip_eq:test_in[63:32]),
               .txstdata                   (txstdata                   ),//
               .txstempty                  (txstempty                  ),//
               .txsteop                    (txsteop                    ),//
               .txsterr                    (txsterr                    ),//
               .txstparity                 (txstparity                 ),//
               .txstsop                    (txstsop                    ),//
               .txstvalid                  (txstvalid                  ),//
               .usermode                   (((ACDS_V10==1)||(MEM_CHECK==0))?1'b1:usermode),
               .appintaack                 (app_int_ack                 ),
               .appmsiack                  (app_msi_ack                  ),
               .bistdonearcv               (bistdonearcv                ),
               .bistdonearcv1              (bistdonearcv1               ),
               .bistdonearpl               (bistdonearpl                ),
               .bistdonebrcv               (bistdonebrcv                ),
               .bistdonebrcv1              (bistdonebrcv1               ),
               .bistdonebrpl               (bistdonebrpl                ),
               .bistpassrcv                (bistpassrcv                 ),
               .bistpassrcv1               (bistpassrcv1                ),
               .bistpassrpl                (bistpassrpl                 ),
               .bistscanoutrcv             (bistscanoutrcv              ),
               .bistscanoutrcv1            (bistscanoutrcv1             ),
               .bistscanoutrpl             (bistscanoutrpl              ),
               .coreclkout                 (coreclkout_hip             ),
               .csebaddr                   (csebaddr                   ),
               .csebaddrparity             (csebaddrparity             ),
               .csebbe                     (csebbe                     ),
               .csebisshadow               (csebisshadow               ),
               .csebrden                   (csebrden                   ),
               .csebwrdata                 (csebwrdata                 ),
               .csebwrdataparity           (csebwrdataparity           ),
               .csebwren                   (csebwren                   ),
               .csebwrrespreq              (csebwrrespreq              ),
               .currentcoeff0              (currentcoeff0              ),
               .currentcoeff1              (currentcoeff1              ),
               .currentcoeff2              (currentcoeff2              ),
               .currentcoeff3              (currentcoeff3              ),
               .currentcoeff4              (currentcoeff4              ),
               .currentcoeff5              (currentcoeff5              ),
               .currentcoeff6              (currentcoeff6              ),
               .currentcoeff7              (currentcoeff7              ),
               .currentrxpreset0           (currentrxpreset0           ),
               .currentrxpreset1           (currentrxpreset1           ),
               .currentrxpreset2           (currentrxpreset2           ),
               .currentrxpreset3           (currentrxpreset3           ),
               .currentrxpreset4           (currentrxpreset4           ),
               .currentrxpreset5           (currentrxpreset5           ),
               .currentrxpreset6           (currentrxpreset6           ),
               .currentrxpreset7           (currentrxpreset7           ),
               .currentspeed               (currentspeed               ),
               .derrcorextrcv              (derr_cor_ext_rcv           ),
               .derrcorextrpl              (derr_cor_ext_rpl           ),
               .derrrpl                    (derr_rpl                   ),
               .rxparerr                   (rx_par_err                 ),
               .txparerr                   (tx_par_err                 ),
               .r2cparerr                  (cfg_par_err                ),
               .dlup                       (dlup                       ),
               .dlupexit                   (dlup_exit                  ),
               .eidleinfersel0             (eidleinfersel0             ),
               .eidleinfersel1             (eidleinfersel1             ),
               .eidleinfersel2             (eidleinfersel2             ),
               .eidleinfersel3             (eidleinfersel3             ),
               .eidleinfersel4             (eidleinfersel4             ),
               .eidleinfersel5             (eidleinfersel5             ),
               .eidleinfersel6             (eidleinfersel6             ),
               .eidleinfersel7             (eidleinfersel7             ),
               .ev128ns                    (ev128ns                    ),
               .ev1us                      (ev1us                      ),
               .hotrstexit                 (hotrst_exit                ),
               .intstatus                  (int_status                 ),
               .l2exit                     (l2_exit                    ),
               .laneact                    (lane_act                   ),
               .lmiack                     (lmi_ack                    ),
               .lmidout                    (lmi_dout                   ),
               .ltssmstate                 (ltssmstate_int                 ),
               .memredscout                (memredscout                ),
               .memregscanout              (memregscanout              ),
               .pmetosr                    (pme_to_sr                  ),
               .powerdown0                 (powerdown0                 ),
               .powerdown1                 (powerdown1                 ),
               .powerdown2                 (powerdown2                 ),
               .powerdown3                 (powerdown3                 ),
               .powerdown4                 (powerdown4                 ),
               .powerdown5                 (powerdown5                 ),
               .powerdown6                 (powerdown6                 ),
               .powerdown7                 (powerdown7                 ),
               .rate0                      (rate0                      ),
               .rate1                      (rate1                      ),
               .rate2                      (rate2                      ),
               .rate3                      (rate3                      ),
               .rate4                      (rate4                      ),
               .rate5                      (rate5                      ),
               .rate6                      (rate6                      ),
               .rate7                      (rate7                      ),
               .ratectrl                   (ratectrl                   ),
               .resetstatus                (reset_status_hip           ),
               .rxpolarity0                (rxpolarity0                ),
               .rxpolarity1                (rxpolarity1                ),
               .rxpolarity2                (rxpolarity2                ),
               .rxpolarity3                (rxpolarity3                ),
               .rxpolarity4                (rxpolarity4                ),
               .rxpolarity5                (rxpolarity5                ),
               .rxpolarity6                (rxpolarity6                ),
               .rxpolarity7                (rxpolarity7                ),
               .rxstbardec1                (rxstbardec1                ),//
               .rxstbardec2                (rxstbardec2                ),//
               .rxstbe                     (rxstbe                     ),//
               .rxstdata                   (rxstdata                   ),//
               .rxstempty                  (rxstempty                  ),//
               .rxsteop                    (rxsteop                    ),//
               .rxsterr                    (rxsterr                    ),//
               .rxstparity                 (rxstparity                 ),//
               .rxstsop                    (rxstsop                    ),//
               .rxstvalid                  (rxstvalid                  ),//
               .serrout                    (serr_out                   ),
               .swdnout                    (swdnout                    ),
               .swupout                    (swupout                    ),
               .testouthip                 (test_out[319:64]           ),
               .testout1hip                (test_out[63:0]             ),
               .holdltssmrec               (hold_ltssm_rec             ),
               .forcetxeidle               (1'b0                       ),
               .reservedin                 ((enable_pcisigtest==1)?{reserved_in_eq[29:10],reservedin[9:1],pld_core_ready}:{reservedin[29:1],pld_core_ready}),
               .reservedclkin              (reservedclkin              ),
               .reservedout                ({reservedout[31:1],pld_clk_inuse_hip}),
               .reservedclkout             (reservedclkout             ),
               .tlcfgadd                   (tl_cfg_add                 ),
               .tlcfgctl                   (tl_cfg_ctl                 ),
               .tlcfgsts                   (tl_cfg_sts                 ),
               .txblkst0                   (txblkst0                   ),
               .txblkst1                   (txblkst1                   ),
               .txblkst2                   (txblkst2                   ),
               .txblkst3                   (txblkst3                   ),
               .txblkst4                   (txblkst4                   ),
               .txblkst5                   (txblkst5                   ),
               .txblkst6                   (txblkst6                   ),
               .txblkst7                   (txblkst7                   ),
               .txdataskip0                (txdataskip0                ),
               .txdataskip1                (txdataskip1                ),
               .txdataskip2                (txdataskip2                ),
               .txdataskip3                (txdataskip3                ),
               .txdataskip4                (txdataskip4                ),
               .txdataskip5                (txdataskip5                ),
               .txdataskip6                (txdataskip6                ),
               .txdataskip7                (txdataskip7                ),
               .txcompl0                   (txcompl0                   ),
               .txcompl1                   (txcompl1                   ),
               .txcompl2                   (txcompl2                   ),
               .txcompl3                   (txcompl3                   ),
               .txcompl4                   (txcompl4                   ),
               .txcompl5                   (txcompl5                   ),
               .txcompl6                   (txcompl6                   ),
               .txcompl7                   (txcompl7                   ),
               .txcreddatafccp             (tx_cred_datafccp           ),
               .txcreddatafcnp             (tx_cred_datafcnp           ),
               .txcreddatafcp              (tx_cred_datafcp            ),
               .txcredfchipcons            (tx_cred_fchipcons          ),
               .txcredfcinfinite           (tx_cred_fcinfinite         ),
               .txcredhdrfccp              (tx_cred_hdrfccp            ),
               .txcredhdrfcnp              (tx_cred_hdrfcnp            ),
               .txcredhdrfcp               (tx_cred_hdrfcp             ),
               .txdata0                    (txdata0                    ),
               .txdata1                    (txdata1                    ),
               .txdata2                    (txdata2                    ),
               .txdata3                    (txdata3                    ),
               .txdata4                    (txdata4                    ),
               .txdata5                    (txdata5                    ),
               .txdata6                    (txdata6                    ),
               .txdata7                    (txdata7                    ),
               .txdatak0                   (txdatak0                   ),
               .txdatak1                   (txdatak1                   ),
               .txdatak2                   (txdatak2                   ),
               .txdatak3                   (txdatak3                   ),
               .txdatak4                   (txdatak4                   ),
               .txdatak5                   (txdatak5                   ),
               .txdatak6                   (txdatak6                   ),
               .txdatak7                   (txdatak7                   ),
               .txdeemph0                  (txdeemph0                  ),
               .txdeemph1                  (txdeemph1                  ),
               .txdeemph2                  (txdeemph2                  ),
               .txdeemph3                  (txdeemph3                  ),
               .txdeemph4                  (txdeemph4                  ),
               .txdeemph5                  (txdeemph5                  ),
               .txdeemph6                  (txdeemph6                  ),
               .txdeemph7                  (txdeemph7                  ),
               .txswing0                   (txswing0                   ),
               .txswing1                   (txswing1                   ),
               .txswing2                   (txswing2                   ),
               .txswing3                   (txswing3                   ),
               .txswing4                   (txswing4                   ),
               .txswing5                   (txswing5                   ),
               .txswing6                   (txswing6                   ),
               .txswing7                   (txswing7                   ),
               .txdetectrx0                (txdetectrx0                ),
               .txdetectrx1                (txdetectrx1                ),
               .txdetectrx2                (txdetectrx2                ),
               .txdetectrx3                (txdetectrx3                ),
               .txdetectrx4                (txdetectrx4                ),
               .txdetectrx5                (txdetectrx5                ),
               .txdetectrx6                (txdetectrx6                ),
               .txdetectrx7                (txdetectrx7                ),
               .txelecidle0                (txelecidle0                ),
               .txelecidle1                (txelecidle1                ),
               .txelecidle2                (txelecidle2                ),
               .txelecidle3                (txelecidle3                ),
               .txelecidle4                (txelecidle4                ),
               .txelecidle5                (txelecidle5                ),
               .txelecidle6                (txelecidle6                ),
               .txelecidle7                (txelecidle7                ),
               .txmargin0                  (txmargin0                  ),
               .txmargin1                  (txmargin1                  ),
               .txmargin2                  (txmargin2                  ),
               .txmargin3                  (txmargin3                  ),
               .txmargin4                  (txmargin4                  ),
               .txmargin5                  (txmargin5                  ),
               .txmargin6                  (txmargin6                  ),
               .txmargin7                  (txmargin7                  ),
               .txstready                  (txstready                  ),
               .txsynchd0                  (txsynchd0                  ),
               .txsynchd1                  (txsynchd1                  ),
               .txsynchd2                  (txsynchd2                  ),
               .txsynchd3                  (txsynchd3                  ),
               .txsynchd4                  (txsynchd4                  ),
               .txsynchd5                  (txsynchd5                  ),
               .txsynchd6                  (txsynchd6                  ),
               .txsynchd7                  (txsynchd7                  ),
               .txpcsrstn0                 (txpcsrstn[0]           ),
               .rxpcsrstn0                 (rxpcsrstn[0]           ),
               .g3txpcsrstn0               (g3txpcsrstn[0]         ),
               .g3rxpcsrstn0               (g3rxpcsrstn[0]         ),
               .txpmasyncp0                (txpmasyncp[0]          ),
               .rxpmarstb0                 (rxpmarstb[0]           ),
               .txlcpllrstb0               (txlcpllrstb[0]         ),
               .offcalen0                  (offcalen[0]            ),
               .frefclk0                   (frefclk[0]             ),
               .offcaldone0                (offcaldone[0]          ),
               .txlcplllock0               (txlcplllock[0]         ),
               .rxfreqtxcmuplllock0        (rxfreqtxcmuplllock[0]  ),
               .rxpllphaselock0            (rxpllphaselock[0]      ),
               .masktxplllock0             (masktxplllock[0]       ),
               .txpcsrstn1                 (txpcsrstn[1]           ),
               .rxpcsrstn1                 (rxpcsrstn[1]           ),
               .g3txpcsrstn1               (g3txpcsrstn[1]         ),
               .g3rxpcsrstn1               (g3rxpcsrstn[1]         ),
               .txpmasyncp1                (txpmasyncp[1]          ),
               .rxpmarstb1                 (rxpmarstb[1]           ),
               .txlcpllrstb1               (txlcpllrstb[1]         ),
               .offcalen1                  (offcalen[1]            ),
               .frefclk1                   (frefclk[1]             ),
               .offcaldone1                (offcaldone[1]          ),
               .txlcplllock1               (txlcplllock[1]         ),
               .rxfreqtxcmuplllock1        (rxfreqtxcmuplllock[1]  ),
               .rxpllphaselock1            (rxpllphaselock[1]      ),
               .masktxplllock1             (masktxplllock[1]       ),
               .txpcsrstn2                 (txpcsrstn[2]           ),
               .rxpcsrstn2                 (rxpcsrstn[2]           ),
               .g3txpcsrstn2               (g3txpcsrstn[2]         ),
               .g3rxpcsrstn2               (g3rxpcsrstn[2]         ),
               .txpmasyncp2                (txpmasyncp[2]          ),
               .rxpmarstb2                 (rxpmarstb[2]           ),
               .txlcpllrstb2               (txlcpllrstb[2]         ),
               .offcalen2                  (offcalen[2]            ),
               .frefclk2                   (frefclk[2]             ),
               .offcaldone2                (offcaldone[2]          ),
               .txlcplllock2               (txlcplllock[2]         ),
               .rxfreqtxcmuplllock2        (rxfreqtxcmuplllock[2]  ),
               .rxpllphaselock2            (rxpllphaselock[2]      ),
               .masktxplllock2             (masktxplllock[2]       ),
               .txpcsrstn3                 (txpcsrstn[3]           ),
               .rxpcsrstn3                 (rxpcsrstn[3]           ),
               .g3txpcsrstn3               (g3txpcsrstn[3]         ),
               .g3rxpcsrstn3               (g3rxpcsrstn[3]         ),
               .txpmasyncp3                (txpmasyncp[3]          ),
               .rxpmarstb3                 (rxpmarstb[3]           ),
               .txlcpllrstb3               (txlcpllrstb[3]         ),
               .offcalen3                  (offcalen[3]            ),
               .frefclk3                   (frefclk[3]             ),
               .offcaldone3                (offcaldone[3]          ),
               .txlcplllock3               (txlcplllock[3]         ),
               .rxfreqtxcmuplllock3        (rxfreqtxcmuplllock[3]  ),
               .rxpllphaselock3            (rxpllphaselock[3]      ),
               .masktxplllock3             (masktxplllock[3]       ),
               .txpcsrstn4                 (txpcsrstn[4]           ),
               .rxpcsrstn4                 (rxpcsrstn[4]           ),
               .g3txpcsrstn4               (g3txpcsrstn[4]         ),
               .g3rxpcsrstn4               (g3rxpcsrstn[4]         ),
               .txpmasyncp4                (txpmasyncp[4]          ),
               .rxpmarstb4                 (rxpmarstb[4]           ),
               .txlcpllrstb4               (txlcpllrstb[4]         ),
               .offcalen4                  (offcalen[4]            ),
               .frefclk4                   (frefclk[4]             ),
               .offcaldone4                (offcaldone[4]          ),
               .txlcplllock4               (txlcplllock[4]         ),
               .rxfreqtxcmuplllock4        (rxfreqtxcmuplllock[4]  ),
               .rxpllphaselock4            (rxpllphaselock[4]      ),
               .masktxplllock4             (masktxplllock[4]       ),
               .txpcsrstn5                 (txpcsrstn[5]           ),
               .rxpcsrstn5                 (rxpcsrstn[5]           ),
               .g3txpcsrstn5               (g3txpcsrstn[5]         ),
               .g3rxpcsrstn5               (g3rxpcsrstn[5]         ),
               .txpmasyncp5                (txpmasyncp[5]          ),
               .rxpmarstb5                 (rxpmarstb[5]           ),
               .txlcpllrstb5               (txlcpllrstb[5]         ),
               .offcalen5                  (offcalen[5]            ),
               .frefclk5                   (frefclk[5]             ),
               .offcaldone5                (offcaldone[5]          ),
               .txlcplllock5               (txlcplllock[5]         ),
               .rxfreqtxcmuplllock5        (rxfreqtxcmuplllock[5]  ),
               .rxpllphaselock5            (rxpllphaselock[5]      ),
               .masktxplllock5             (masktxplllock[5]       ),
               .txpcsrstn6                 (txpcsrstn[6]           ),
               .rxpcsrstn6                 (rxpcsrstn[6]           ),
               .g3txpcsrstn6               (g3txpcsrstn[6]         ),
               .g3rxpcsrstn6               (g3rxpcsrstn[6]         ),
               .txpmasyncp6                (txpmasyncp[6]          ),
               .rxpmarstb6                 (rxpmarstb[6]           ),
               .txlcpllrstb6               (txlcpllrstb[6]         ),
               .offcalen6                  (offcalen[6]            ),
               .frefclk6                   (frefclk[6]             ),
               .offcaldone6                (offcaldone[6]          ),
               .txlcplllock6               (txlcplllock[6]         ),
               .rxfreqtxcmuplllock6        (rxfreqtxcmuplllock[6]  ),
               .rxpllphaselock6            (rxpllphaselock[6]      ),
               .masktxplllock6             (masktxplllock[6]       ),
               .txpcsrstn7                 (txpcsrstn[7]           ),
               .rxpcsrstn7                 (rxpcsrstn[7]           ),
               .g3txpcsrstn7               (g3txpcsrstn[7]         ),
               .g3rxpcsrstn7               (g3rxpcsrstn[7]         ),
               .txpmasyncp7                (txpmasyncp[7]          ),
               .rxpmarstb7                 (rxpmarstb[7]           ),
               .txlcpllrstb7               (txlcpllrstb[7]         ),
               .offcalen7                  (offcalen[7]            ),
               .frefclk7                   (frefclk[7]             ),
               .offcaldone7                (offcaldone[7]          ),
               .txlcplllock7               (txlcplllock[7]         ),
               .rxfreqtxcmuplllock7        (rxfreqtxcmuplllock[7]  ),
               .rxpllphaselock7            (rxpllphaselock[7]      ),
               .masktxplllock7             (masktxplllock[7]       ),
               .txpcsrstn8                 (txpcsrstn[8]           ),
               .rxpcsrstn8                 (rxpcsrstn[8]           ),
               .g3txpcsrstn8               (g3txpcsrstn[8]         ),
               .g3rxpcsrstn8               (g3rxpcsrstn[8]         ),
               .txpmasyncp8                (txpmasyncp[8]          ),
               .rxpmarstb8                 (rxpmarstb[8]           ),
               .txlcpllrstb8               (txlcpllrstb[8]         ),
               .offcalen8                  (offcalen[8]            ),
               .frefclk8                   (frefclk[8]             ),
               .offcaldone8                (offcaldone[8]          ),
               .txlcplllock8               (txlcplllock[8]         ),
               .rxfreqtxcmuplllock8        (rxfreqtxcmuplllock[8]  ),
               .rxpllphaselock8            (rxpllphaselock[8]      ),
               .masktxplllock8             (masktxplllock[8]       ),
               .txpcsrstn9                 (txpcsrstn[9]           ),
               .rxpcsrstn9                 (rxpcsrstn[9]           ),
               .g3txpcsrstn9               (g3txpcsrstn[9]         ),
               .g3rxpcsrstn9               (g3rxpcsrstn[9]         ),
               .txpmasyncp9                (txpmasyncp[9]          ),
               .rxpmarstb9                 (rxpmarstb[9]           ),
               .txlcpllrstb9               (txlcpllrstb[9]         ),
               .offcalen9                  (offcalen[9]            ),
               .frefclk9                   (frefclk[9]             ),
               .offcaldone9                (offcaldone[9]          ),
               .txlcplllock9               (txlcplllock[9]         ),
               .rxfreqtxcmuplllock9        (rxfreqtxcmuplllock[9]  ),
               .rxpllphaselock9            (rxpllphaselock[9]      ),
               .masktxplllock9             (masktxplllock[9]       ),
               .txpcsrstn10                (txpcsrstn[10]          ),
               .rxpcsrstn10                (rxpcsrstn[10]          ),
               .g3txpcsrstn10              (g3txpcsrstn[10]        ),
               .g3rxpcsrstn10              (g3rxpcsrstn[10]        ),
               .txpmasyncp10               (txpmasyncp[10]         ),
               .rxpmarstb10                (rxpmarstb[10]          ),
               .txlcpllrstb10              (txlcpllrstb[10]        ),
               .offcalen10                 (offcalen[10]           ),
               .frefclk10                  (frefclk[10]            ),
               .offcaldone10               (offcaldone[10]         ),
               .txlcplllock10              (txlcplllock[10]        ),
               .rxfreqtxcmuplllock10       (rxfreqtxcmuplllock[10] ),
               .rxpllphaselock10           (rxpllphaselock[10]     ),
               .masktxplllock10            (masktxplllock[10]      ),
               .txpcsrstn11                (txpcsrstn[11]          ),
               .rxpcsrstn11                (rxpcsrstn[11]          ),
               .g3txpcsrstn11              (g3txpcsrstn[11]        ),
               .g3rxpcsrstn11              (g3rxpcsrstn[11]        ),
               .txpmasyncp11               (txpmasyncp[11]         ),
               .rxpmarstb11                (rxpmarstb[11]          ),
               .txlcpllrstb11              (txlcpllrstb[11]        ),
               .offcalen11                 (offcalen[11]           ),
               .frefclk11                  (frefclk[11]            ),
               .offcaldone11               (offcaldone[11]         ),
               .txlcplllock11              (txlcplllock[11]        ),
               .rxfreqtxcmuplllock11       (rxfreqtxcmuplllock[11] ),
               .rxpllphaselock11           (rxpllphaselock[11]     ),
               .masktxplllock11            (masktxplllock[11]      ),

               .avmmrstn                   ((enable_pcisigtest==1)?hip_dprio_reset_n:((hip_reconfig==1)?avmm_rst_n:1'b1)),
               .avmmclk                    ((enable_pcisigtest==1)?hip_dprio_clk:((hip_reconfig==1)?avmm_clk:1'b1)),
               .avmmwrite                  ((enable_pcisigtest==1)?hip_dprio_write:((hip_reconfig==1)?avmm_write:1'b1)),
               .avmmread                   ((enable_pcisigtest==1)?hip_dprio_read:((hip_reconfig==1)?avmm_read:1'b1)),
               .avmmbyteen                 ((enable_pcisigtest==1)?hip_dprio_byteen:((hip_reconfig==1)?avmm_byte_en[1:0]:1'b1)),
               .avmmaddress                ((enable_pcisigtest==1)?hip_dprio_address:((hip_reconfig==1)?avmm_address:1'b1)),
               .avmmwritedata              ((enable_pcisigtest==1)?hip_dprio_writedata:((hip_reconfig==1)?avmm_writedata[15:0]:1'b1)),
               .avmmreaddata               (avmm_readdata_hip),
               .sershiftload               ((enable_pcisigtest==1)?hip_dprio_ser_shift_load:((hip_reconfig==1)?ser_shift_load:1'b1)),
               .interfacesel               ((enable_pcisigtest==1)?hip_dprio_interface_sel:((hip_reconfig==1)?interface_sel:1'b1)),
               .wakeoen                    (wakeoen               )
        );


   generate begin : g_xcvr
      if ( (USE_HARD_RESET==0) && (protocol_version!="Gen 3") ) begin
         sv_xcvr_pipe_native #(
               .lanes                              (LANES                             ), //legal value: 1+
               .starting_channel_number            (starting_channel_number           ), //legal value: 0+
               .protocol_version                   (protocol_version                  ), //legal value: "gen1", "gen2"
               .deser_factor                       (deser_factor                      ),
               .pll_type                           ((use_atx_pll=="true")?"ATX":"AUTO"),
               `ifdef ALTERA_RESERVED_QIS_ES
               .base_data_rate                     ((use_atx_pll=="true")?"10000 Mbps":"0 Mbps"),
               `else
               .base_data_rate                     (((use_atx_pll=="true")&&(low_str(gen123_lane_rate_mode)=="gen1"))?"5000 Mbps":"0 Mbps"),
               `endif
               .pll_refclk_freq                    (pll_refclk_freq                   ), //legal value = "100 MHz", "125 MHz"
               .hip_hard_reset                     (hip_hard_reset                    ), //legal value = "100 MHz", "125 MHz"
               .hip_enable                         (hip_enable                        ),
               .hard_oc_enable                     (hard_oc_enable                    ),
               .pipe_low_latency_syncronous_mode   (pipe_low_latency_syncronous_mode  ),
               .pipe12_rpre_emph_a_val             (rpre_emph_a_val                   ),
               .pipe12_rpre_emph_b_val             (rpre_emph_b_val                   ),
               .pipe12_rpre_emph_c_val             (rpre_emph_c_val                   ),
               .pipe12_rpre_emph_d_val             (rpre_emph_d_val                   ),
               .pipe12_rpre_emph_e_val             (rpre_emph_e_val                   ),
               .pipe12_rvod_sel_a_val              (rvod_sel_a_val                    ),
               .pipe12_rvod_sel_b_val              (rvod_sel_b_val                    ),
               .pipe12_rvod_sel_c_val              (rvod_sel_c_val                    ),
               .pipe12_rvod_sel_d_val              (rvod_sel_d_val                    ),
               .pipe12_rvod_sel_e_val              (rvod_sel_e_val                    )
            ) sv_xcvr_pipe_native     (
               .pll_powerdown                      (1'b0), //
               .tx_digitalreset                    (serdes_tx_digitalreset [LANES-1:0]), //
               .rx_analogreset                     (serdes_rx_analogreset  [LANES-1:0]), //
               .tx_analogreset                     (serdes_tx_analogreset           ), //
               .rx_digitalreset                    (serdes_rx_digitalreset [LANES-1:0]), //
               .rx_cal_busy                        (serdes_rx_cal_busy [LANES-1:0]),
               .tx_cal_busy                        (serdes_tx_cal_busy [LANES-1:0]),

               //clk signal
               .pll_ref_clk                        (((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b0:refclk), //
               .fixedclk                           (((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b0:serdes_fixedclk), //

               //pipe interface ports
               .pipe_txdata                        (serdes_pipe_txdata             [LANES * deser_factor - 1:0]), //
               .pipe_txdatak                       (serdes_pipe_txdatak            [((LANES * deser_factor)/8) - 1:0] ), //
               .pipe_txdetectrx_loopback           (serdes_pipe_txdetectrx_loopback[LANES - 1:0]    ), //?
               .pipe_txcompliance                  (serdes_pipe_txcompliance       [LANES - 1:0]    ), //
               .pipe_txelecidle                    (serdes_pipe_txelecidle         [LANES - 1:0]    ), //

               .pipe_txdeemph                      (serdes_pipe_txdeemph           [LANES - 1:0]    ), //
               .pipe_txswing                       (serdes_pipe_txswing            [LANES - 1:0]    ), //


               .pipe_txmargin                      (serdes_pipe_txmargin           [LANES * 3 - 1:0]), //
               .pipe_rate                          (serdes_pipe_rate               [LANES * 2 - 1:0]),
               .rate_ctrl                          (serdes_ratectrl                                 ),
               .pipe_powerdown                     (serdes_pipe_powerdown          [LANES * 2 - 1:0]), //

               .pipe_rxdata                        (serdes_pipe_rxdata             [LANES * deser_factor - 1:0]      ), //
               .pipe_rxdatak                       (serdes_pipe_rxdatak            [((LANES * deser_factor)/8) - 1:0]), //
               .pipe_rxvalid                       (serdes_pipe_rxvalid            [LANES - 1:0]                     ), //
               .pipe_rxpolarity                    (serdes_pipe_rxpolarity         [LANES - 1:0]                     ), //
               .pipe_rxelecidle                    (serdes_pipe_rxelecidle         [LANES - 1:0]                     ), //
               .pipe_phystatus                     (serdes_pipe_phystatus          [LANES - 1:0]                     ), //
               .pipe_rxstatus                      (serdes_pipe_rxstatus           [LANES * 3 - 1:0]                 ), //
               .pld8grxstatus                      (serdes_pld8grxstatus           [((LANES == 8) ? LANES_P1:LANES)*3 - 1 : 0] ), //
               .pipe_rx_data_valid                 (serdes_pipe_rx_data_valid      [LANES - 1:0]    ), // GEN 3 (tied off here)
               .pipe_rx_blk_start                  (serdes_pipe_rx_blk_start       [LANES - 1:0]    ), // GEN 3 (tied off here)
               .pipe_rx_sync_hdr                   (serdes_pipe_rx_sync_hdr        [LANES * 2  -1:0]), // GEN 3 (tied off here)

               //non-PIPE ports
               .rx_eidleinfersel                   (serdes_rx_eidleinfersel        [LANES*3  -1:0]),
               .rx_set_locktodata                  (serdes_rx_set_locktodata       [LANES-1:0]  ),
               .rx_set_locktoref                   (serdes_rx_set_locktoref        [LANES-1:0]  ),
               .tx_invpolarity                     (serdes_tx_invpolarity          [LANES-1:0]  ),
               .rx_errdetect                       (serdes_rx_errdetect            [((LANES*deser_factor)/8) -1:0]),
               .rx_disperr                         (serdes_rx_disperr              [((LANES*deser_factor)/8) -1:0]),
               .rx_patterndetect                   (serdes_rx_patterndetect        [((LANES*deser_factor)/8) -1:0]),
               .rx_syncstatus                      (serdes_rx_syncstatus           [((LANES*deser_factor)/8) -1:0]),
               .rx_phase_comp_fifo_error           (serdes_rx_phase_comp_fifo_error[LANES-1:0]  ),
               .tx_phase_comp_fifo_error           (serdes_tx_phase_comp_fifo_error[LANES-1:0]  ),
               .rx_is_lockedtoref                  (serdes_rx_is_lockedtoref       [LANES-1:0]  ),
               .rx_signaldetect                    (serdes_rx_signaldetect         [LANES-1:0]  ),
               .rx_is_lockedtodata                 (serdes_rx_is_lockedtodata      [LANES-1:0]  ),
               .pll_locked                         (serdes_pll_locked_xcvr                           ),
               .frefclk                            (serdes_frefclk           ),// HIP input
               //non-MM ports
               .rx_serial_data                     (serdes_rx_serial_data[LANES-1:0]            ),
               .tx_serial_data                     (serdes_tx_serial_data[LANES-1:0]            ),

               // Reconfig interface
               .reconfig_to_xcvr                    (reconfig_to_xcvr                             ),
               .reconfig_from_xcvr                  (reconfig_from_xcvr                           ),

               .pllfixedclkcentral                 (serdes_pllfixedclkcentral                   ),
               .pllfixedclkch0                     (serdes_pllfixedclkch0                       ),
               .pllfixedclkch1                     (serdes_pllfixedclkch1                       ),
               .pipe_pclk                          (serdes_pipe_pclk                            ),
               .pipe_pclkch1                       (serdes_pipe_pclkch1                         ),
               .pipe_pclkcentral                   (serdes_pipe_pclkcentral                     )
               );
               assign serdes_offcaldone         = ONES[LANES-1:0]; // Only used with HRC
               assign serdes_rxfreqtxcmuplllock = ONES[LANES-1:0]; // Only used with HRC
               assign serdes_rxpllphaselock     = ONES[LANES-1:0]; // Only used with HRC
      end
      else if ( (USE_HARD_RESET==0) && (protocol_version=="Gen 3") ) begin


         sv_xcvr_pipe_native #(
               .lanes                              (LANES                             ), //legal value: 1+
               .starting_channel_number            (starting_channel_number           ), //legal value: 0+
               .protocol_version                   (protocol_version                  ), //legal value: "gen1", "gen2"
               .deser_factor                       (deser_factor                      ),
               .pll_refclk_freq                    (pll_refclk_freq                   ), //legal value = "100 MHz", "125 MHz"
               .hip_hard_reset                     (hip_hard_reset                    ), //legal value = "100 MHz", "125 MHz"
               .hip_enable                         (hip_enable                        ),
               .hard_oc_enable                     (hard_oc_enable                    ),
               .pipe_low_latency_syncronous_mode   (pipe_low_latency_syncronous_mode  ),
               .pipe12_rpre_emph_a_val             (rpre_emph_a_val                   ),
               .pipe12_rpre_emph_b_val             (rpre_emph_b_val                   ),
               .pipe12_rpre_emph_c_val             (rpre_emph_c_val                   ),
               .pipe12_rpre_emph_d_val             (rpre_emph_d_val                   ),
               .pipe12_rpre_emph_e_val             (rpre_emph_e_val                   ),
               .pipe12_rvod_sel_a_val              (rvod_sel_a_val                    ),
               .pipe12_rvod_sel_b_val              (rvod_sel_b_val                    ),
               .pipe12_rvod_sel_c_val              (rvod_sel_c_val                    ),
               .pipe12_rvod_sel_d_val              (rvod_sel_d_val                    ),
               .pipe12_rvod_sel_e_val              (rvod_sel_e_val                    )
               //new parameters for Gen3
               //.pipe_low_latency_syncronous_mode                                       //legal value: 0, 1
               //.pipe_run_length_violation_checking                                     //legal value:[160:5:5], max (6'b0) is the default value
               //.pipe_elec_idle_infer_enable                                            //legal value: true, false              //
            ) sv_xcvr_pipe_native     (
               .pll_powerdown                      (1'b0), //
               .tx_digitalreset                    (serdes_tx_digitalreset [LANES-1:0]), //
               .rx_analogreset                     (serdes_rx_analogreset  [LANES-1:0]), //
               .tx_analogreset                     (serdes_tx_analogreset | serdes_txpma_rst_g3 ), //
               .rx_digitalreset                    (serdes_rx_digitalreset [LANES-1:0]|serdes_rxpcs_rst_g3[LANES-1:0]), //
               .rx_cal_busy                        (serdes_rx_cal_busy [LANES-1:0]),
               .tx_cal_busy                        (serdes_tx_cal_busy [LANES-1:0]),

               //clk signal
               .pll_ref_clk                        (((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b0:refclk), //
               .fixedclk                           (((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b0:serdes_fixedclk), //

               //pipe interface ports
               .pipe_txdata                        (serdes_pipe_txdata             [LANES * deser_factor - 1:0]), //
               .pipe_txdatak                       (serdes_pipe_txdatak            [((LANES * deser_factor)/8) - 1:0]), //
               .pipe_txdetectrx_loopback           (serdes_pipe_txdetectrx_loopback[LANES - 1:0]    ), //?
               .pipe_txcompliance                  (serdes_pipe_txcompliance       [LANES - 1:0]    ), //
               .pipe_txelecidle                    (serdes_pipe_txelecidle         [LANES - 1:0]    ), //

               .pipe_txdeemph                      (serdes_pipe_txdeemph           [LANES - 1:0]    ), // GEN 3
               .pipe_txswing                       (serdes_pipe_txswing            [LANES - 1:0]    ), // GEN 3
               .current_coeff                      (serdes_current_coeff           [LANES * 18 -1:0]), // GEN 3
               .current_rxpreset                   (serdes_current_rxpreset        [LANES * 3  -1:0]), // GEN 3
               .pipe_tx_data_valid                 (serdes_pipe_tx_data_valid      [LANES - 1:0]    ), // GEN 3
               .pipe_tx_blk_start                  (serdes_pipe_tx_blk_start       [LANES - 1:0]    ), // GEN 3
               .pipe_tx_sync_hdr                   (serdes_pipe_tx_sync_hdr        [LANES * 2  -1:0]), // GEN 3
               .pipe_rx_data_valid                 (serdes_pipe_rx_data_valid      [LANES - 1:0]    ), // GEN 3
               .pipe_rx_blk_start                  (serdes_pipe_rx_blk_start       [LANES - 1:0]    ), // GEN 3
               .pipe_rx_sync_hdr                   (serdes_pipe_rx_sync_hdr        [LANES * 2  -1:0]), // GEN 3


               .pipe_txmargin                      (serdes_pipe_txmargin           [LANES * 3 - 1:0]), //
               .pipe_rate                          (serdes_pipe_rate               [LANES * 2 - 1:0]),
               .rate_ctrl                          (serdes_ratectrl                                 ),
               .pipe_powerdown                     (serdes_pipe_powerdown          [LANES * 2 - 1:0]), //

               .pipe_rxdata                        (serdes_pipe_rxdata             [LANES * deser_factor - 1:0]      ), //
               .pipe_rxdatak                       (serdes_pipe_rxdatak            [((LANES * deser_factor)/8) - 1:0]), //
               .pipe_rxvalid                       (serdes_pipe_rxvalid            [LANES - 1:0]                     ), //
               .pipe_rxpolarity                    (serdes_pipe_rxpolarity         [LANES - 1:0]                     ), //
               .pipe_rxelecidle                    (serdes_pipe_rxelecidle         [LANES - 1:0]                     ), //
               .pipe_phystatus                     (serdes_pipe_phystatus          [LANES - 1:0]                     ), //
               .pipe_rxstatus                      (serdes_pipe_rxstatus           [LANES * 3 - 1:0]                 ), //
               .pld8grxstatus                      (serdes_pld8grxstatus           [((LANES == 8) ? LANES_P1:LANES)*3 - 1 : 0] ),//

               //non-PIPE ports
               .rx_eidleinfersel                   (serdes_rx_eidleinfersel        [LANES*3  -1:0]),
               .rx_set_locktodata                  (serdes_rx_set_locktodata       [LANES-1:0]  ),
               .rx_set_locktoref                   (serdes_rx_set_locktoref        [LANES-1:0]  ),
               .tx_invpolarity                     (serdes_tx_invpolarity          [LANES-1:0]  ),
               .rx_errdetect                       (serdes_rx_errdetect            [((LANES*deser_factor)/8) -1:0]),
               .rx_disperr                         (serdes_rx_disperr              [((LANES*deser_factor)/8) -1:0]),
               .rx_patterndetect                   (serdes_rx_patterndetect        [((LANES*deser_factor)/8) -1:0]),
               .rx_syncstatus                      (serdes_rx_syncstatus           [((LANES*deser_factor)/8) -1:0]),
               .rx_phase_comp_fifo_error           (serdes_rx_phase_comp_fifo_error[LANES-1:0]  ),
               .tx_phase_comp_fifo_error           (serdes_tx_phase_comp_fifo_error[LANES-1:0]  ),
               .rx_is_lockedtoref                  (serdes_rx_is_lockedtoref       [LANES-1:0]  ),
               .rx_signaldetect                    (serdes_rx_signaldetect         [LANES-1:0]  ),
               .rx_is_lockedtodata                 (serdes_rx_is_lockedtodata      [LANES-1:0]  ),
               .pll_locked                         (serdes_pll_locked_xcvr                           ),

               //non-MM ports
               .rx_serial_data                     (serdes_rx_serial_data[LANES-1:0]            ),
               .tx_serial_data                     (serdes_tx_serial_data[LANES-1:0]            ),

               // Reconfig interface
               .reconfig_to_xcvr                    (reconfig_to_xcvr                             ),
               .reconfig_from_xcvr                  (reconfig_from_xcvr                           ),

               .pllfixedclkcentral                 (serdes_pllfixedclkcentral                   ),
               .pllfixedclkch0                     (serdes_pllfixedclkch0                       ),
               .pllfixedclkch1                     (serdes_pllfixedclkch1                       ),
               .pipe_pclk                          (serdes_pipe_pclk                            ),
               .pipe_pclkch1                       (serdes_pipe_pclkch1                         ),
               .pipe_pclkcentral                   (serdes_pipe_pclkcentral                     )
               );
               assign serdes_offcaldone         = ONES[LANES-1:0]; // Only used with HRC
               assign serdes_rxfreqtxcmuplllock = ONES[LANES-1:0]; // Only used with HRC
               assign serdes_rxpllphaselock     = ONES[LANES-1:0]; // Only used with HRC
      end
      else if  ( (USE_HARD_RESET==1) && (protocol_version!="Gen 3") ) begin
         sv_xcvr_pipe_native #(
               .lanes                              (LANES                             ), //legal value: 1+
               .starting_channel_number            (starting_channel_number           ), //legal value: 0+
               .protocol_version                   (protocol_version                  ), //legal value: "Gen 1", "Gen 2", "Gen 3"
               .deser_factor                       (deser_factor                      ),
               .pll_refclk_freq                    (pll_refclk_freq                   ), //legal value = "100 MHz", "125 MHz"
               .hip_hard_reset                     (hip_hard_reset                    ), //legal value = "100 MHz", "125 MHz"
               .in_cvp_mode                        (in_cvp_mode                       ),
               .hip_enable                         (hip_enable                        ),
               .hard_oc_enable                     (hard_oc_enable                    ),
               .pipe_low_latency_syncronous_mode   (pipe_low_latency_syncronous_mode  ),
               .pipe12_rpre_emph_a_val             (rpre_emph_a_val                   ),
               .pipe12_rpre_emph_b_val             (rpre_emph_b_val                   ),
               .pipe12_rpre_emph_c_val             (rpre_emph_c_val                   ),
               .pipe12_rpre_emph_d_val             (rpre_emph_d_val                   ),
               .pipe12_rpre_emph_e_val             (rpre_emph_e_val                   ),
               .pipe12_rvod_sel_a_val              (rvod_sel_a_val                    ),
               .pipe12_rvod_sel_b_val              (rvod_sel_b_val                    ),
               .pipe12_rvod_sel_c_val              (rvod_sel_c_val                    ),
               .pipe12_rvod_sel_d_val              (rvod_sel_d_val                    ),
               .pipe12_rvod_sel_e_val              (rvod_sel_e_val                    )
            ) sv_xcvr_pipe_native     (
               .pll_powerdown                      (1'b0), //
               .tx_digitalreset                    (serdes_tx_digitalreset [LANES-1:0]), //
               .rx_analogreset                     (serdes_rx_analogreset  [LANES-1:0]), //
               //.tx_analogreset                     (1'b0), //
               .tx_analogreset                     (cvp_tx_analogreset           ), //
               .rx_digitalreset                    (serdes_rx_digitalreset [LANES-1:0]), //

               //clk signal
               .pll_ref_clk                        (((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b0:refclk), //
               .fixedclk                           (((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b0:serdes_fixedclk), //

               //pipe interface ports
               .pipe_txdata                        (serdes_pipe_txdata             [LANES * deser_factor - 1:0]), //
               .pipe_txdatak                       (serdes_pipe_txdatak            [((LANES * deser_factor)/8) - 1:0] ), //
               .pipe_txdetectrx_loopback           (serdes_pipe_txdetectrx_loopback[LANES - 1:0]    ), //?
               .pipe_txcompliance                  (serdes_pipe_txcompliance       [LANES - 1:0]    ), //
               .pipe_txelecidle                    (serdes_pipe_txelecidle         [LANES - 1:0]    ), //
               .pipe_txdeemph                      (serdes_pipe_txdeemph           [LANES - 1:0]    ), //
               .pipe_txswing                       (serdes_pipe_txswing            [LANES - 1:0]    ), //
               .pipe_txmargin                      (serdes_pipe_txmargin           [LANES * 3 - 1:0]), //
               .pipe_rate                          (serdes_pipe_rate               [LANES * 2 - 1:0]),
               .rate_ctrl                          (serdes_ratectrl                                 ),
               .pipe_powerdown                     (serdes_pipe_powerdown          [LANES * 2 - 1:0]), //

               .pipe_rxdata                        (serdes_pipe_rxdata             [LANES * deser_factor - 1:0]      ), //
               .pipe_rxdatak                       (serdes_pipe_rxdatak            [((LANES * deser_factor)/8) - 1:0]), //
               .pipe_rxvalid                       (serdes_pipe_rxvalid            [LANES - 1:0]                     ), //
               .pipe_rxpolarity                    (serdes_pipe_rxpolarity         [LANES - 1:0]                     ), //
               .pipe_rxelecidle                    (serdes_pipe_rxelecidle         [LANES - 1:0]                     ), //
               .pipe_phystatus                     (serdes_pipe_phystatus          [LANES - 1:0]                     ), //
               .pipe_rxstatus                      (serdes_pipe_rxstatus           [LANES * 3 - 1:0]                 ), //
               .pld8grxstatus                      (serdes_pld8grxstatus           [((LANES == 8) ? LANES_P1:LANES)*3 - 1 : 0] ),//
               .pipe_rx_data_valid                 (serdes_pipe_rx_data_valid      [LANES - 1:0]    ), // GEN 3 (tied off here)
               .pipe_rx_blk_start                  (serdes_pipe_rx_blk_start       [LANES - 1:0]    ), // GEN 3 (tied off here)
               .pipe_rx_sync_hdr                   (serdes_pipe_rx_sync_hdr        [LANES * 2  -1:0]), // GEN 3 (tied off here)

               //non-PIPE ports
               .rx_eidleinfersel                   (serdes_rx_eidleinfersel        [LANES*3  -1:0]),
               .rx_set_locktodata                  (serdes_rx_set_locktodata       [LANES-1:0]  ),
               .rx_set_locktoref                   (serdes_rx_set_locktoref        [LANES-1:0]  ),
               .tx_invpolarity                     (serdes_tx_invpolarity          [LANES-1:0]  ),
               .rx_errdetect                       (serdes_rx_errdetect            [((LANES*deser_factor)/8) -1:0]),
               .rx_disperr                         (serdes_rx_disperr              [((LANES*deser_factor)/8) -1:0]),
               .rx_patterndetect                   (serdes_rx_patterndetect        [((LANES*deser_factor)/8) -1:0]),
               .rx_syncstatus                      (serdes_rx_syncstatus           [((LANES*deser_factor)/8) -1:0]),
               .rx_phase_comp_fifo_error           (serdes_rx_phase_comp_fifo_error[LANES-1:0]  ),
               .tx_phase_comp_fifo_error           (serdes_tx_phase_comp_fifo_error[LANES-1:0]  ),
               .rx_is_lockedtoref                  (serdes_rx_is_lockedtoref       [LANES-1:0]  ),
               .rx_signaldetect                    (serdes_rx_signaldetect         [LANES-1:0]  ),
               .rx_is_lockedtodata                 (serdes_rx_is_lockedtodata      [LANES-1:0]  ),
               .pll_locked                         (serdes_pll_locked_xcvr                      ),

               //non-MM ports
               .rx_serial_data                     (serdes_rx_serial_data[LANES-1:0]            ),
               .tx_serial_data                     (serdes_tx_serial_data[LANES-1:0]            ),

               // Reconfig interface
               .reconfig_to_xcvr                    (reconfig_to_xcvr                             ),
               .reconfig_from_xcvr                  (reconfig_from_xcvr                           ),

               .txpcsrstn                           (serdes_txpcsrstn         ),// HIP output
               .rxpcsrstn                           (serdes_rxpcsrstn         ),// HIP output
               .g3txpcsrstn                         (serdes_g3txpcsrstn       ),// HIP output
               .g3rxpcsrstn                         (serdes_g3rxpcsrstn       ),// HIP output
               .txpmasyncp                          (serdes_txpmasyncp        ),// HIP output
               .rxpmarstb                           (serdes_rxpmarstb         ),// HIP output
               //.txlcpllrstb                         (serdes_txlcpllrstb       ),// HIP output
               .offcalen                            (serdes_offcalen          ),// HIP output
               .frefclk                             (serdes_frefclk           ),// HIP input
               .offcaldone                          (serdes_offcaldone        ),// HIP input
               //.txlcplllock                         (serdes_txlcplllock       ),// HIP input
               .rxfreqtxcmuplllock                  (serdes_rxfreqtxcmuplllock),// HIP input
               .rxpllphaselock                      (serdes_rxpllphaselock    ),// HIP input
               //.masktxplllock                       (serdes_masktxplllock     ),// HIP input

               .pllfixedclkcentral                 (serdes_pllfixedclkcentral                   ),
               .pllfixedclkch0                     (serdes_pllfixedclkch0                       ),
               .pllfixedclkch1                     (serdes_pllfixedclkch1                       ),
               .pipe_pclk                          (serdes_pipe_pclk                            ),
               .pipe_pclkch1                       (serdes_pipe_pclkch1                         ),
               .pipe_pclkcentral                   (serdes_pipe_pclkcentral                     )
         );
      end
      else begin
         sv_xcvr_pipe_native #(
               .lanes                              (LANES                             ), //legal value: 1+
               .starting_channel_number            (starting_channel_number           ), //legal value: 0+
               .protocol_version                   (protocol_version                  ), //legal value: "Gen 1", "Gen 2", "Gen 3"
               .deser_factor                       (deser_factor                      ),
               .pll_refclk_freq                    (pll_refclk_freq                   ), //legal value = "100 MHz", "125 MHz"
               .hip_hard_reset                     (hip_hard_reset                    ), //legal value = "100 MHz", "125 MHz"
               .in_cvp_mode                        (in_cvp_mode                       ),
               .hip_enable                         (hip_enable                        ),
               .hard_oc_enable                     (hard_oc_enable                    ),
               .pipe_low_latency_syncronous_mode   (pipe_low_latency_syncronous_mode  ),
               .pipe12_rpre_emph_a_val             (rpre_emph_a_val                   ),
               .pipe12_rpre_emph_b_val             (rpre_emph_b_val                   ),
               .pipe12_rpre_emph_c_val             (rpre_emph_c_val                   ),
               .pipe12_rpre_emph_d_val             (rpre_emph_d_val                   ),
               .pipe12_rpre_emph_e_val             (rpre_emph_e_val                   ),
               .pipe12_rvod_sel_a_val              (rvod_sel_a_val                    ),
               .pipe12_rvod_sel_b_val              (rvod_sel_b_val                    ),
               .pipe12_rvod_sel_c_val              (rvod_sel_c_val                    ),
               .pipe12_rvod_sel_d_val              (rvod_sel_d_val                    ),
               .pipe12_rvod_sel_e_val              (rvod_sel_e_val                    )
               //new parameters for Gen3
            ) sv_xcvr_pipe_native     (
               .pll_powerdown                      (1'b0), //
               .tx_digitalreset                    (serdes_tx_digitalreset [LANES-1:0]), //
               .rx_analogreset                     (serdes_rx_analogreset  [LANES-1:0]), //
               .tx_analogreset                     (1'b0), //
               .rx_digitalreset                    (serdes_rx_digitalreset [LANES-1:0]), //

               //clk signal
               .pll_ref_clk                        (((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b0:refclk), //
               .fixedclk                           (((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b0:serdes_fixedclk), //

               //pipe interface ports
               .pipe_txdata                        (serdes_pipe_txdata             [LANES * deser_factor - 1:0]), //
               .pipe_txdatak                       (serdes_pipe_txdatak            [((LANES * deser_factor)/8) - 1:0]), //
               .pipe_txdetectrx_loopback           (serdes_pipe_txdetectrx_loopback[LANES - 1:0]    ), //?
               .pipe_txcompliance                  (serdes_pipe_txcompliance       [LANES - 1:0]    ), //
               .pipe_txelecidle                    (serdes_pipe_txelecidle         [LANES - 1:0]    ), //

               .pipe_txdeemph                      (serdes_pipe_txdeemph           [LANES - 1:0]    ), //
               .pipe_txswing                       (serdes_pipe_txswing            [LANES - 1:0]    ), //
               .current_coeff                      (serdes_current_coeff           [LANES * 18 -1:0]), // GEN 3
               .current_rxpreset                   (serdes_current_rxpreset        [LANES * 3  -1:0]), // GEN 3
               .pipe_tx_data_valid                 (serdes_pipe_tx_data_valid      [LANES - 1:0]    ), // GEN 3
               .pipe_tx_blk_start                  (serdes_pipe_tx_blk_start       [LANES - 1:0]    ), // GEN 3
               .pipe_tx_sync_hdr                   (serdes_pipe_tx_sync_hdr        [LANES * 2  -1:0]), // GEN 3
               .pipe_rx_data_valid                 (serdes_pipe_rx_data_valid      [LANES - 1:0]    ), // GEN 3
               .pipe_rx_blk_start                  (serdes_pipe_rx_blk_start       [LANES - 1:0]    ), // GEN 3
               .pipe_rx_sync_hdr                   (serdes_pipe_rx_sync_hdr        [LANES * 2  -1:0]), // GEN 3


               .pipe_txmargin                      (serdes_pipe_txmargin           [LANES * 3 - 1:0]), //
               .pipe_rate                          (serdes_pipe_rate               [LANES * 2 - 1:0]),
               .rate_ctrl                          (serdes_ratectrl                                 ),
               .pipe_powerdown                     (serdes_pipe_powerdown          [LANES * 2 - 1:0]), //


               .pipe_rxdata                        (serdes_pipe_rxdata             [LANES * deser_factor - 1:0]      ), //
               .pipe_rxdatak                       (serdes_pipe_rxdatak            [((LANES * deser_factor)/8) - 1:0]), //
               .pipe_rxvalid                       (serdes_pipe_rxvalid            [LANES - 1:0]                     ), //
               .pipe_rxpolarity                    (serdes_pipe_rxpolarity         [LANES - 1:0]                     ), //
               .pipe_rxelecidle                    (serdes_pipe_rxelecidle         [LANES - 1:0]                     ), //
               .pipe_phystatus                     (serdes_pipe_phystatus          [LANES - 1:0]                     ), //
               .pipe_rxstatus                      (serdes_pipe_rxstatus           [LANES * 3 - 1:0]                 ), //
               .pld8grxstatus                      (serdes_pld8grxstatus           [((LANES == 8) ? LANES_P1:LANES)*3 - 1 : 0] ),

               //non-PIPE ports
               .rx_eidleinfersel                   (serdes_rx_eidleinfersel        [LANES*3  -1:0]),
               .rx_set_locktodata                  (serdes_rx_set_locktodata       [LANES-1:0]  ),
               .rx_set_locktoref                   (serdes_rx_set_locktoref        [LANES-1:0]  ),
               .tx_invpolarity                     (serdes_tx_invpolarity          [LANES-1:0]  ),
               .rx_errdetect                       (serdes_rx_errdetect            [((LANES*deser_factor)/8) -1:0]),
               .rx_disperr                         (serdes_rx_disperr              [((LANES*deser_factor)/8) -1:0]),
               .rx_patterndetect                   (serdes_rx_patterndetect        [((LANES*deser_factor)/8) -1:0]),
               .rx_syncstatus                      (serdes_rx_syncstatus           [((LANES*deser_factor)/8) -1:0]),
               .rx_phase_comp_fifo_error           (serdes_rx_phase_comp_fifo_error[LANES-1:0]  ),
               .tx_phase_comp_fifo_error           (serdes_tx_phase_comp_fifo_error[LANES-1:0]  ),
               .rx_is_lockedtoref                  (serdes_rx_is_lockedtoref       [LANES-1:0]  ),
               .rx_signaldetect                    (serdes_rx_signaldetect         [LANES-1:0]  ),
               .rx_is_lockedtodata                 (serdes_rx_is_lockedtodata      [LANES-1:0]  ),
               .pll_locked                         (serdes_pll_locked_xcvr                           ),

               //non-MM ports
               .rx_serial_data                     (serdes_rx_serial_data[LANES-1:0]            ),
               .tx_serial_data                     (serdes_tx_serial_data[LANES-1:0]            ),

               // Reconfig interface
               .reconfig_to_xcvr                    (reconfig_to_xcvr                             ),
               .reconfig_from_xcvr                  (reconfig_from_xcvr                           ),

               .txpcsrstn                           (serdes_txpcsrstn         ),// HIP output
               .rxpcsrstn                           (serdes_rxpcsrstn         ),// HIP output
               .g3txpcsrstn                         (serdes_g3txpcsrstn       ),// HIP output
               .g3rxpcsrstn                         (serdes_g3rxpcsrstn       ),// HIP output
               .txpmasyncp                          (serdes_txpmasyncp        ),// HIP output
               .rxpmarstb                           (serdes_rxpmarstb         ),// HIP output
               .txlcpllrstb                         (serdes_txlcpllrstb       ),// HIP output
               .offcalen                            (serdes_offcalen          ),// HIP output
               .frefclk                             (serdes_frefclk           ),// HIP input
               .offcaldone                          (serdes_offcaldone        ),// HIP input
               .txlcplllock                         (serdes_txlcplllock       ),// HIP input
               .rxfreqtxcmuplllock                  (serdes_rxfreqtxcmuplllock),// HIP input
               .rxpllphaselock                      (serdes_rxpllphaselock    ),// HIP input
               .masktxplllock                       (serdes_masktxplllock     ),// HIP input

               .pllfixedclkcentral                 (serdes_pllfixedclkcentral                   ),
               .pllfixedclkch0                     (serdes_pllfixedclkch0                       ),
               .pllfixedclkch1                     (serdes_pllfixedclkch1                       ),
               .pipe_pclk                          (serdes_pipe_pclk                            ),
               .pipe_pclkch1                       (serdes_pipe_pclkch1                         ),
               .pipe_pclkcentral                   (serdes_pipe_pclkcentral                     )
         );
      end
   end
   endgenerate

   assign serdes_txlcplllock[LANES:0]   = ONES[LANES-1:0];
   assign serdes_masktxplllock[LANES:0] = ONES[LANES-1:0];


   ///////////////////////////////////////////////
   // G3 reset fixes
   //
   generate begin : g_txpma_serdes_rxpcs_rst_g3
      if ((USE_HARD_RESET==0)&&(protocol_version=="Gen 3")&&(PIPE32_SIM_ONLY==0)) begin
         //pcsrst generation logic
         reg [7:0] g3_rxdigitalrst_cnt;
         reg L0_gen3;
         reg serdes_rxpcs_rst_g3_r;
         reg [4:0] ltssm_r;
         reg [4:0] ltssm_rr;

         ///////////////////////////////
         // pcsrst generation logic
         //
         always @(posedge pld_clk or posedge arst) begin
            if (arst == 1'b1) begin
               g3_rxdigitalrst_cnt     <= 8'h7f;
               L0_gen3                 <= 1'b0;
               serdes_rxpcs_rst_g3_r   <= 1'b0;
               ltssm_r                 <= 5'h0;
               ltssm_rr                <= 5'h0;
            end
            else begin
               ltssm_r                 <= ltssmstate_int;
               ltssm_rr                <= ltssm_r;
               serdes_rxpcs_rst_g3_r   <= ((g3_rxdigitalrst_cnt != 8'h7f) || (hold_ltssm_rec == 1'b1))?1'b1:1'b0;
               if ((currentspeed[1] == 1'b0)||(ltssm_r==LTSSM_EQ_DET_QUIET)) begin
                  L0_gen3   <= 1'b0;
               end
               else if ((ltssm_r == LTSSM_EQ_L0) && (currentspeed == 2'b11)) begin
                  L0_gen3   <= 1'b1;
               end

               if ((ltssm_r == LTSSM_EQ_REC_RXLK) && (ltssm_rr == LTSSM_EQ_L0) && (L0_gen3==1'b1)) begin
                  g3_rxdigitalrst_cnt <= 8'h0;
               end
               else if (g3_rxdigitalrst_cnt < 8'h7f) begin
                  g3_rxdigitalrst_cnt <= g3_rxdigitalrst_cnt + 8'h1;
               end
            end
         end
         assign serdes_rxpcs_rst_g3 = {LANES{serdes_rxpcs_rst_g3_r}} ;

   `ifdef ALTERA_RESERVED_QIS_ES
         ///////////////////////////////
         // txpma_rst - For ES only
         (* altera_attribute = {"-name SDC_STATEMENT \"set_false_path  -to [get_registers *g3_to_g1_speedchange_r]\" "} *)

         reg [1:0] currentspeed_r;
         reg [1:0] currentspeed_rr;
         reg   g3_to_g1_speedchange;
         reg   g3_to_g1_speedchange_r;
         reg   g3_to_g1_speedchange_rr;
         reg    [11:0]   g3_txpcs_count;
         reg txpma_rst_reg;
         reg npor_sync_fixedclk_r,npor_sync_fixedclk;

         always @(posedge pld_clk or posedge arst) begin
            if (arst==1'b1) begin
               g3_to_g1_speedchange <= 1'b0;
               currentspeed_r       <= 2'b00;
               currentspeed_rr      <= 2'b00;
            end
            else begin
               currentspeed_r <= currentspeed;
               currentspeed_rr <= currentspeed_r;
               if ((currentspeed_rr == 2'b11) & (currentspeed_r != 2'b11)) begin
                  // sending toggle signal to the other clock domain when speed down changes from Gen3
                  g3_to_g1_speedchange <= ~g3_to_g1_speedchange;
               end
            end
         end

         always@( posedge serdes_fixedclk or negedge npor_int ) begin
            if( ~npor_int ) begin
               npor_sync_fixedclk_r <= 1'b0;
               npor_sync_fixedclk   <= 1'b0;
            end
            else begin
               npor_sync_fixedclk_r <= 1'b1;
               npor_sync_fixedclk <= npor_sync_fixedclk_r;
            end
         end

         always@( posedge serdes_fixedclk or negedge npor_sync_fixedclk ) begin
            if( ~npor_sync_fixedclk ) begin
               g3_txpcs_count          <= 12'h0;
               txpma_rst_reg           <= 0;
               g3_to_g1_speedchange_r  <= 1'b0;
               g3_to_g1_speedchange_rr <= 1'b0;
            end
            else begin
               g3_to_g1_speedchange_r <= g3_to_g1_speedchange;
               g3_to_g1_speedchange_rr <= g3_to_g1_speedchange_r;
               if( g3_txpcs_count > 12'h0 ) begin
                  if( g3_txpcs_count == 12'hF ) begin
                     g3_txpcs_count <= 12'h0;
                  end
                  else begin
                     g3_txpcs_count <= g3_txpcs_count + 12'h1;
                  end
               end
               else if( g3_to_g1_speedchange_rr != g3_to_g1_speedchange_r ) begin
                  g3_txpcs_count <= 12'h1;
               end

               if( g3_txpcs_count != 12'h0 ) begin
                  txpma_rst_reg <= 1'b1;
               end
               else begin
                  txpma_rst_reg <= 1'b0;
               end
            end
         end
         assign serdes_txpma_rst_g3 = txpma_rst_reg;
   `else
         assign serdes_txpma_rst_g3 = 1'b0;
   `endif
      end
      else begin
         assign serdes_rxpcs_rst_g3 = ZEROS[LANES-1:0];
         assign serdes_txpma_rst_g3 = 1'b0;
      end
   end
   endgenerate


   /////////////////////////////////////////////
   //
   // hold REC_RXLK
   // 'hold_ltssm_rec'
   //

   generate begin : g2g3_hold_ltssm
      if ((protocol_version=="Gen 1")||(ALTPCIE_HIP_256_PIPEN1B_SIM_ONLY==1)) begin
         assign ltssmstate       = ltssmstate_int;
         assign hold_ltssm_rec   = 1'b0;
      end
      else begin
         localparam INACT          = 2'b00;
         localparam HOLD           = 2'b01;
         localparam HOLD_AEQ       = 2'b10;
         localparam WAIT_COUNT_MAX = 18'd175000;
         localparam WAIT_COUNT_AEQ = 18'd175000;

         reg               hold_ltssm_r;
         reg [4:0]         ltssm_reg1;
         reg [4:0]         ltssm_reg2;
         reg [4:0]         ltssm_reg3;
         reg [1:0]         hold_state;
         reg [17:0]        wait_count;
         reg [LANES-1:0]   rx_is_lockedtodata_r;
         reg [LANES-1:0]   rx_is_lockedtodata_sync;
         reg [LANES-1:0]   rx_signaldetect_r;
         reg [LANES-1:0]   rx_signaldetect_sync;
         reg [4:0]         ltssmstate_out;
         reg               freqlock_ok;


         assign ltssmstate       = ltssmstate_out;
         assign hold_ltssm_rec   = hold_ltssm_r    ;

         always@( posedge pld_clk or negedge npor_sync ) begin :p_freqlock_ok
            if(npor_sync==1'b0) begin
              freqlock_ok <= ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b1:1'b0;
              rx_is_lockedtodata_sync <= ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?ONES[LANES-1:0]:ZEROS[LANES-1:0];
              rx_is_lockedtodata_r    <= ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?ONES[LANES-1:0]:ZEROS[LANES-1:0];
              rx_signaldetect_r       <= ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?ONES[LANES-1:0]:ZEROS[LANES-1:0];
              rx_signaldetect_sync    <= ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?ONES[LANES-1:0]:ZEROS[LANES-1:0];
            end
            else begin
               if ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1)) begin
                  freqlock_ok             <= 1'b1;
                  rx_is_lockedtodata_sync <= ONES[LANES-1:0];
                  rx_is_lockedtodata_r    <= ONES[LANES-1:0];
                  rx_signaldetect_r       <= ONES[LANES-1:0];
                  rx_signaldetect_sync    <= ONES[LANES-1:0];
               end
               else begin
                  rx_is_lockedtodata_r    <= serdes_rx_is_lockedtodata;
                  rx_is_lockedtodata_sync <= rx_is_lockedtodata_r;
                  rx_signaldetect_r       <= serdes_rx_signaldetect;
                  rx_signaldetect_sync    <= rx_signaldetect_r;
                  if (LANES==1) begin
                     freqlock_ok <= rx_is_lockedtodata_sync[0];
                  end
                  else if (LANES==2) begin
                     if (lane_act==4'b0010) begin
                        freqlock_ok <= &rx_is_lockedtodata_sync[1:0];
                     end
                     else begin
                        freqlock_ok <= (rx_signaldetect_sync[0]==1'b1)?rx_is_lockedtodata_sync[0]:rx_is_lockedtodata_sync[1];
                     end
                  end
                  else if (LANES==4) begin
                     if (lane_act==4'b0100) begin
                        freqlock_ok <= &rx_is_lockedtodata_sync[3:0];
                     end
                     else if (lane_act==4'b0010) begin
                        freqlock_ok <= (rx_signaldetect_sync[0]==1'b1)?&rx_is_lockedtodata_sync[1:0]:&rx_is_lockedtodata_sync[3:2];
                     end
                     else begin
                        freqlock_ok <= (rx_signaldetect_sync[0]==1'b1)?rx_is_lockedtodata_sync[0]:
                                       (rx_signaldetect_sync[1]==1'b1)?rx_is_lockedtodata_sync[1]:
                                       (rx_signaldetect_sync[2]==1'b1)?rx_is_lockedtodata_sync[2]:rx_is_lockedtodata_sync[3];
                     end
                  end
                  else if (LANES==8) begin
                     if (lane_act==4'b1000) begin
                        freqlock_ok <= &rx_is_lockedtodata_sync[7:0];
                     end
                     else if (lane_act==4'b0100) begin
                        freqlock_ok <= (rx_signaldetect_sync[0]==1'b1)?&rx_is_lockedtodata_sync[3:0]:&rx_is_lockedtodata_sync[7:4];
                     end
                     else if (lane_act==4'b0010) begin
                        freqlock_ok <= (rx_signaldetect_sync[0]==1'b1)?&rx_is_lockedtodata_sync[1:0]:
                                       (rx_signaldetect_sync[2]==1'b1)?&rx_is_lockedtodata_sync[3:2]:
                                       (rx_signaldetect_sync[4]==1'b1)?&rx_is_lockedtodata_sync[5:4]:&rx_is_lockedtodata_sync[7:6];
                     end
                     else begin
                        freqlock_ok <= (rx_signaldetect_sync[0]==1'b1)?rx_is_lockedtodata_sync[0]:
                                       (rx_signaldetect_sync[1]==1'b1)?rx_is_lockedtodata_sync[1]:
                                       (rx_signaldetect_sync[2]==1'b1)?rx_is_lockedtodata_sync[2]:
                                       (rx_signaldetect_sync[3]==1'b1)?rx_is_lockedtodata_sync[3]:
                                       (rx_signaldetect_sync[4]==1'b1)?rx_is_lockedtodata_sync[4]:
                                       (rx_signaldetect_sync[5]==1'b1)?rx_is_lockedtodata_sync[5]:
                                       (rx_signaldetect_sync[6]==1'b1)?rx_is_lockedtodata_sync[6]:rx_is_lockedtodata_sync[7];
                     end
                  end
               end
            end
         end
         //state machine
         always@( posedge pld_clk or negedge npor_sync ) begin
            if(npor_sync==1'b0) begin
               ltssm_reg1     <= 5'h0;
               ltssm_reg2     <= 5'h0;
               ltssm_reg3     <= 5'h0;
               hold_state     <= INACT;
               wait_count     <= 18'h0;
               hold_ltssm_r   <= 1'b0;
               ltssmstate_out <= 5'h0;
            end
            else begin
               ltssm_reg1 <= ltssmstate_int;
               ltssm_reg2 <= ltssm_reg1;
               ltssm_reg3 <= ltssm_reg2;

               case(hold_state)
               INACT : begin
                  if ((ltssm_reg2==LTSSM_EQ_REC_RXLK)&&(ltssm_reg3==LTSSM_EQ_REC_SPEED)&&(PIPE32_SIM_ONLY==0)&&(pipe8_sim_only==1'b0)) begin
                     ltssmstate_out <= 5'h1a;
                     hold_ltssm_r   <= 1'b1;
                     hold_state     <= HOLD;
                     wait_count     <= 18'h0;
                  end
                  else begin
                     ltssmstate_out <= ltssm_reg2;
                     hold_ltssm_r   <= 1'b0;
                  end
               end
               HOLD : begin
                  if (freqlock_ok==1'b1) begin
                     if ((wait_count == WAIT_COUNT_MAX)||(test_in[0]==1'b1)) begin
                        ltssmstate_out   <= ltssm_reg2;
                        wait_count       <= 18'h0;
                        if ((currentspeed == 2'b11)&&(protocol_version=="Gen 3")) begin
                           hold_ltssm_r     <= 1'b1;
                           hold_state       <= HOLD_AEQ;
                        end
                        else begin
                           hold_state       <= INACT;
                           hold_ltssm_r     <= 1'b0;
                        end
                     end
                     else begin
                        hold_ltssm_r         <= 1'b1;
                        ltssmstate_out       <= 5'h1a;
                        wait_count           <= wait_count + 18'h1;
                     end
                  end
                  else begin
                    ltssmstate_out <= 5'h1a;
                    wait_count <= 18'h0;
                  end
               end
               HOLD_AEQ : begin
                  ltssmstate_out <= ltssm_reg2;
                  if ((wait_count == WAIT_COUNT_AEQ)||(test_in[0]==1'b1)) begin
                     hold_ltssm_r   <= 1'b0;
                     hold_state     <= INACT;
                     wait_count     <= 18'h0;
                  end
                  else begin
                     wait_count        <= wait_count + 18'h1;
                     hold_ltssm_r      <= 1'b1;
                  end
               end
               default: begin
                  hold_ltssm_r   <= 1'b0;
                  hold_state     <= INACT;
                  wait_count     <= 18'h0;
                  ltssmstate_out <= ltssm_reg2;
               end
               endcase
            end
         end
      end
      //
   end
   endgenerate

///////////////////////////////////////////////////////////////////////////
// PCI-SIG test additional logic
// EP Phase 3 EQ bypass for PTC and CV

generate begin : sigtesten

   if (enable_pcisigtest == 0) begin
      assign test_in_hip_eq           = 32'h0;
      assign test_in_1_hip_eq         = 32'h0;
      assign reserved_in_eq           = 32'h0;
      assign hip_dprio_clk            = 1'b0;
      assign hip_dprio_reset_n        = 1'b0;
      assign hip_dprio_ser_shift_load = 1'b0;
      assign hip_dprio_interface_sel  = 1'b0;
      assign hip_dprio_address        = 10'h0;
      assign hip_dprio_read           = 1'b0;
      assign hip_dprio_write          = 1'b0;
      assign hip_dprio_writedata      = 16'h0;
      assign hip_dprio_byteen         = 2'h0;
      assign hip_dprio_readdata       = 16'h0;
   end
   else begin
      reg npor_sync_coreclkout_hip;
      reg npor_sync_coreclkout_hip_r;
      reg npor_sync_dprio_reconfig_clk;
      reg npor_sync_dprio_reconfig_clk_r;
      assign hip_dprio_readdata   = avmm_readdata;
      wire dprio_reconfig_reset_n = npor_sync_dprio_reconfig_clk;
      reg dprio_reconfig_clk;
      reg npor_int_sync_fixedclk_r, npor_int_sync_fixedclk;

      always@( posedge serdes_fixedclk or negedge npor_int ) begin
         if( ~npor_int ) begin
            npor_int_sync_fixedclk_r <= 1'b0;
            npor_int_sync_fixedclk   <= 1'b0;
         end
         else begin
            npor_int_sync_fixedclk_r <= 1'b1;
            npor_int_sync_fixedclk <= npor_int_sync_fixedclk_r;
         end
      end

      always@( posedge serdes_fixedclk or negedge npor_int_sync_fixedclk ) begin
         if( ~npor_int_sync_fixedclk )
            dprio_reconfig_clk <= 1'b0;
         else
            dprio_reconfig_clk <= ~dprio_reconfig_clk;
      end

      always@( posedge dprio_reconfig_clk or negedge npor_int ) begin
         if( ~npor_int ) begin
            npor_sync_dprio_reconfig_clk_r <= 1'b0;
            npor_sync_dprio_reconfig_clk   <= 1'b0;
         end
         else begin
            npor_sync_dprio_reconfig_clk_r <= 1'b1;
            npor_sync_dprio_reconfig_clk   <= npor_sync_dprio_reconfig_clk_r;
         end
      end

      always@( posedge coreclkout_hip or negedge npor_int ) begin
         if( ~npor_int ) begin
            npor_sync_coreclkout_hip_r <= 1'b0;
            npor_sync_coreclkout_hip   <= 1'b0;
         end
         else begin
            npor_sync_coreclkout_hip_r <= 1'b1;
            npor_sync_coreclkout_hip   <= npor_sync_coreclkout_hip_r;
         end
      end

      hd_altpe3_hip_eq_bypass_ph3
      #(
         .K_G3_FULL_SWING       ( gen3_full_swing ),       // Local Full Swing FS
         .K_G3_LOW_FREQ         ( gen3_low_freq ),         // Local Low Freq LF
         .K_G3_EN_HALF_SWING    ( 1'b0 ),                  // Enable Half Swing
         .PRST_COEFF_MAP0       ( gen3_preset_coeff_1 ),   // Preset to Coefficient Mapping
         .PRST_COEFF_MAP1       ( gen3_preset_coeff_2 ),
         .PRST_COEFF_MAP2       ( gen3_preset_coeff_3 ),
         .PRST_COEFF_MAP3       ( gen3_preset_coeff_4 ),
         .PRST_COEFF_MAP4       ( gen3_preset_coeff_5 ),
         .PRST_COEFF_MAP5       ( gen3_preset_coeff_6 ),
         .PRST_COEFF_MAP6       ( gen3_preset_coeff_7 ),
         .PRST_COEFF_MAP7       ( gen3_preset_coeff_8 ),
         .PRST_COEFF_MAP8       ( gen3_preset_coeff_9 ),
         .PRST_COEFF_MAP9       ( gen3_preset_coeff_10 ),
         .PRST_COEFF_MAP10      ( gen3_preset_coeff_11 ),
         .PRST_COEFF_MAPERR     ( {6'd0,6'd0,6'd0} ),
         .DEFAULT_PRST          ( gen3_preset_coeff_5 ),   // Default PMA preset
         .TIMEOUT_32MS          ( 23'd7999500 ),           // 32 ms calculated using 250 Mhz clock - 500 clocks
         .ACT_LANES             ( 8'b0000_0001 )
      )
      ep_eq_bypass_ph3_inst(
         // Clocks & Resets
         .rst_n                 ( npor_sync_coreclkout_hip ),// Active low Async rst
         .pld_clk               ( coreclkout_hip ),     // Core CLK
         //--------------- HIP Connections
         // Inputs
         .test_out_hip          ( test_out[319:64] ),   // Test Bus from HIP
         .test_out_1_hip        ( test_out[63:0] ),     // Test Bus from HIP
         .ltssm_state           ( ltssmstate_int ),     // LTSSM state from HIP
         .current_speed         ( currentspeed ),       // Current Speed from HIP
         // Outputs
         .test_in_hip           ( test_in_hip_eq ),     // Test In to HIP  [10-12] are only used
         .test_in_1_hip         ( test_in_1_hip_eq ),   // test In to HIP  [0-4,15-16,31-20] are only used
         .reserved_in           ( reserved_in_eq ),     // Reserved Input to HIP [29-10] are only used
         // Output to PMA
         .tx_coeff_pma          ( tx_coeff_pma_eq )     // Value to be programmed into PMA
      );


      // DPRIO for EQ
      hip_eq_dprio #(
         .MODE                  ( "EP" ),
         .use_config_bypass_hwtcl (use_config_bypass_hwtcl),
         .default_speed   ((low_str(gen123_lane_rate_mode)=="gen1_gen2_gen3") ? 2'b11 :
                        (low_str(gen123_lane_rate_mode)=="gen1_gen2") ? 2'b10 :
                        (low_str(gen123_lane_rate_mode)=="gen1") ? 2'b01 : 2'b11)
      )
      hip_eq_dprio_inst (
         .pld_clk               ( coreclkout_hip ),
         .pld_reset_n           ( npor_sync_coreclkout_hip ),
         .ltssm_state           ( ltssmstate_int ),
         .tl_cfg_add            ( tl_cfg_add ),
         .tl_cfg_ctl            ( tl_cfg_ctl ),
         .cfglink2csrpld        ( cfglink2csrpld),
         .reconfig_clk          ( dprio_reconfig_clk ),
         .reconfig_reset_n      ( dprio_reconfig_reset_n),
         .hip_reconfig_clk      ( hip_dprio_clk ),
         .hip_reconfig_reset_n  ( hip_dprio_reset_n ),
         .hip_reconfig_write    ( hip_dprio_write ),
         .hip_reconfig_writedata( hip_dprio_writedata ),
         .hip_reconfig_byteen   ( hip_dprio_byteen ),
         .hip_reconfig_address  ( hip_dprio_address ),
         .hip_reconfig_read     ( hip_dprio_read ),
         .hip_reconfig_readdata ( hip_dprio_readdata ),
         .ser_shift_load        ( hip_dprio_ser_shift_load ),
         .interface_sel         ( hip_dprio_interface_sel )
      );
   end  //enable_pcisigtest
end
endgenerate     //sigtesten

// End PTC CV
// End enable_pcisigtest
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////
// grounding simulation only signal when running synthsesis
//
generate begin : g_altpcie_hip_256_pipen1b_syn_only
   if (ALTPCIE_HIP_256_PIPEN1B_SIM_ONLY==0) begin
      assign eidleinfersel0_ext                                      = ZEROS [2 : 0];
      assign eidleinfersel1_ext                                      = ZEROS [2 : 0];
      assign eidleinfersel2_ext                                      = ZEROS [2 : 0];
      assign eidleinfersel3_ext                                      = ZEROS [2 : 0];
      assign eidleinfersel4_ext                                      = ZEROS [2 : 0];
      assign eidleinfersel5_ext                                      = ZEROS [2 : 0];
      assign eidleinfersel6_ext                                      = ZEROS [2 : 0];
      assign eidleinfersel7_ext                                      = ZEROS [2 : 0];
      assign powerdown0_ext                                          = ZEROS [1 : 0];
      assign powerdown1_ext                                          = ZEROS [1 : 0];
      assign powerdown2_ext                                          = ZEROS [1 : 0];
      assign powerdown3_ext                                          = ZEROS [1 : 0];
      assign powerdown4_ext                                          = ZEROS [1 : 0];
      assign powerdown5_ext                                          = ZEROS [1 : 0];
      assign powerdown6_ext                                          = ZEROS [1 : 0];
      assign powerdown7_ext                                          = ZEROS [1 : 0];
      assign rxpolarity0_ext                                         = ZEROS [0];
      assign rxpolarity1_ext                                         = ZEROS [0];
      assign rxpolarity2_ext                                         = ZEROS [0];
      assign rxpolarity3_ext                                         = ZEROS [0];
      assign rxpolarity4_ext                                         = ZEROS [0];
      assign rxpolarity5_ext                                         = ZEROS [0];
      assign rxpolarity6_ext                                         = ZEROS [0];
      assign rxpolarity7_ext                                         = ZEROS [0];
      assign txcompl0_ext                                            = ZEROS [0];
      assign txcompl1_ext                                            = ZEROS [0];
      assign txcompl2_ext                                            = ZEROS [0];
      assign txcompl3_ext                                            = ZEROS [0];
      assign txcompl4_ext                                            = ZEROS [0];
      assign txcompl5_ext                                            = ZEROS [0];
      assign txcompl6_ext                                            = ZEROS [0];
      assign txcompl7_ext                                            = ZEROS [0];
      assign txdata0_ext                                             = ZEROS [7 : 0];
      assign txdata1_ext                                             = ZEROS [7 : 0];
      assign txdata2_ext                                             = ZEROS [7 : 0];
      assign txdata3_ext                                             = ZEROS [7 : 0];
      assign txdata4_ext                                             = ZEROS [7 : 0];
      assign txdata5_ext                                             = ZEROS [7 : 0];
      assign txdata6_ext                                             = ZEROS [7 : 0];
      assign txdata7_ext                                             = ZEROS [7 : 0];
      assign txdatak0_ext                                            = ZEROS [0];
      assign txdatak1_ext                                            = ZEROS [0];
      assign txdatak2_ext                                            = ZEROS [0];
      assign txdatak3_ext                                            = ZEROS [0];
      assign txdatak4_ext                                            = ZEROS [0];
      assign txdatak5_ext                                            = ZEROS [0];
      assign txdatak6_ext                                            = ZEROS [0];
      assign txdatak7_ext                                            = ZEROS [0];
      assign txdatavalid0_ext                                        = ZEROS [0];
      assign txdatavalid1_ext                                        = ZEROS [0];
      assign txdatavalid2_ext                                        = ZEROS [0];
      assign txdatavalid3_ext                                        = ZEROS [0];
      assign txdatavalid4_ext                                        = ZEROS [0];
      assign txdatavalid5_ext                                        = ZEROS [0];
      assign txdatavalid6_ext                                        = ZEROS [0];
      assign txdatavalid7_ext                                        = ZEROS [0];
      assign txdetectrx0_ext                                         = ZEROS [0];
      assign txdetectrx1_ext                                         = ZEROS [0];
      assign txdetectrx2_ext                                         = ZEROS [0];
      assign txdetectrx3_ext                                         = ZEROS [0];
      assign txdetectrx4_ext                                         = ZEROS [0];
      assign txdetectrx5_ext                                         = ZEROS [0];
      assign txdetectrx6_ext                                         = ZEROS [0];
      assign txdetectrx7_ext                                         = ZEROS [0];
      assign txelecidle0_ext                                         = ZEROS [0];
      assign txelecidle1_ext                                         = ZEROS [0];
      assign txelecidle2_ext                                         = ZEROS [0];
      assign txelecidle3_ext                                         = ZEROS [0];
      assign txelecidle4_ext                                         = ZEROS [0];
      assign txelecidle5_ext                                         = ZEROS [0];
      assign txelecidle6_ext                                         = ZEROS [0];
      assign txelecidle7_ext                                         = ZEROS [0];
      assign txmargin0_ext                                           = ZEROS [2 : 0];
      assign txmargin1_ext                                           = ZEROS [2 : 0];
      assign txmargin2_ext                                           = ZEROS [2 : 0];
      assign txmargin3_ext                                           = ZEROS [2 : 0];
      assign txmargin4_ext                                           = ZEROS [2 : 0];
      assign txmargin5_ext                                           = ZEROS [2 : 0];
      assign txmargin6_ext                                           = ZEROS [2 : 0];
      assign txmargin7_ext                                           = ZEROS [2 : 0];
      assign txdeemph0_ext                                           = ZEROS [0];
      assign txdeemph1_ext                                           = ZEROS [0];
      assign txdeemph2_ext                                           = ZEROS [0];
      assign txdeemph3_ext                                           = ZEROS [0];
      assign txdeemph4_ext                                           = ZEROS [0];
      assign txdeemph5_ext                                           = ZEROS [0];
      assign txdeemph6_ext                                           = ZEROS [0];
      assign txdeemph7_ext                                           = ZEROS [0];
      assign txswing0_ext                                            = ZEROS [0];
      assign txswing1_ext                                            = ZEROS [0];
      assign txswing2_ext                                            = ZEROS [0];
      assign txswing3_ext                                            = ZEROS [0];
      assign txswing4_ext                                            = ZEROS [0];
      assign txswing5_ext                                            = ZEROS [0];
      assign txswing6_ext                                            = ZEROS [0];
      assign txswing7_ext                                            = ZEROS [0];
      assign txblkst0_ext                                            = ZEROS [0];
      assign txblkst1_ext                                            = ZEROS [0];
      assign txblkst2_ext                                            = ZEROS [0];
      assign txblkst3_ext                                            = ZEROS [0];
      assign txblkst4_ext                                            = ZEROS [0];
      assign txblkst5_ext                                            = ZEROS [0];
      assign txblkst6_ext                                            = ZEROS [0];
      assign txblkst7_ext                                            = ZEROS [0];
      assign txsynchd0_ext                                           = ZEROS [1 : 0];
      assign txsynchd1_ext                                           = ZEROS [1 : 0];
      assign txsynchd2_ext                                           = ZEROS [1 : 0];
      assign txsynchd3_ext                                           = ZEROS [1 : 0];
      assign txsynchd4_ext                                           = ZEROS [1 : 0];
      assign txsynchd5_ext                                           = ZEROS [1 : 0];
      assign txsynchd6_ext                                           = ZEROS [1 : 0];
      assign txsynchd7_ext                                           = ZEROS [1 : 0];
      assign currentcoeff0_ext                                       = ZEROS [17 : 0];
      assign currentcoeff1_ext                                       = ZEROS [17 : 0];
      assign currentcoeff2_ext                                       = ZEROS [17 : 0];
      assign currentcoeff3_ext                                       = ZEROS [17 : 0];
      assign currentcoeff4_ext                                       = ZEROS [17 : 0];
      assign currentcoeff5_ext                                       = ZEROS [17 : 0];
      assign currentcoeff6_ext                                       = ZEROS [17 : 0];
      assign currentcoeff7_ext                                       = ZEROS [17 : 0];
      assign currentrxpreset0_ext                                    = ZEROS [2 : 0];
      assign currentrxpreset1_ext                                    = ZEROS [2 : 0];
      assign currentrxpreset2_ext                                    = ZEROS [2 : 0];
      assign currentrxpreset3_ext                                    = ZEROS [2 : 0];
      assign currentrxpreset4_ext                                    = ZEROS [2 : 0];
      assign currentrxpreset5_ext                                    = ZEROS [2 : 0];
      assign currentrxpreset6_ext                                    = ZEROS [2 : 0];
      assign currentrxpreset7_ext                                    = ZEROS [2 : 0];
      assign phystatus0_ext32b                                       = ZEROS [0];
      assign phystatus1_ext32b                                       = ZEROS [0];
      assign phystatus2_ext32b                                       = ZEROS [0];
      assign phystatus3_ext32b                                       = ZEROS [0];
      assign phystatus4_ext32b                                       = ZEROS [0];
      assign phystatus5_ext32b                                       = ZEROS [0];
      assign phystatus6_ext32b                                       = ZEROS [0];
      assign phystatus7_ext32b                                       = ZEROS [0];
      assign rxdata0_ext32b                                          = ZEROS [31 : 0];
      assign rxdata1_ext32b                                          = ZEROS [31 : 0];
      assign rxdata2_ext32b                                          = ZEROS [31 : 0];
      assign rxdata3_ext32b                                          = ZEROS [31 : 0];
      assign rxdata4_ext32b                                          = ZEROS [31 : 0];
      assign rxdata5_ext32b                                          = ZEROS [31 : 0];
      assign rxdata6_ext32b                                          = ZEROS [31 : 0];
      assign rxdata7_ext32b                                          = ZEROS [31 : 0];
      assign rxdatak0_ext32b                                         = ZEROS [3  : 0];
      assign rxdatak1_ext32b                                         = ZEROS [3  : 0];
      assign rxdatak2_ext32b                                         = ZEROS [3  : 0];
      assign rxdatak3_ext32b                                         = ZEROS [3  : 0];
      assign rxdatak4_ext32b                                         = ZEROS [3  : 0];
      assign rxdatak5_ext32b                                         = ZEROS [3  : 0];
      assign rxdatak6_ext32b                                         = ZEROS [3  : 0];
      assign rxdatak7_ext32b                                         = ZEROS [3  : 0];
      assign rxelecidle0_ext32b                                      = ZEROS [0];
      assign rxelecidle1_ext32b                                      = ZEROS [0];
      assign rxelecidle2_ext32b                                      = ZEROS [0];
      assign rxelecidle3_ext32b                                      = ZEROS [0];
      assign rxelecidle4_ext32b                                      = ZEROS [0];
      assign rxelecidle5_ext32b                                      = ZEROS [0];
      assign rxelecidle6_ext32b                                      = ZEROS [0];
      assign rxelecidle7_ext32b                                      = ZEROS [0];
      assign rxfreqlocked0_ext32b                                    = ZEROS [0];
      assign rxfreqlocked1_ext32b                                    = ZEROS [0];
      assign rxfreqlocked2_ext32b                                    = ZEROS [0];
      assign rxfreqlocked3_ext32b                                    = ZEROS [0];
      assign rxfreqlocked4_ext32b                                    = ZEROS [0];
      assign rxfreqlocked5_ext32b                                    = ZEROS [0];
      assign rxfreqlocked6_ext32b                                    = ZEROS [0];
      assign rxfreqlocked7_ext32b                                    = ZEROS [0];
      assign rxstatus0_ext32b                                        = ZEROS [2 : 0];
      assign rxstatus1_ext32b                                        = ZEROS [2 : 0];
      assign rxstatus2_ext32b                                        = ZEROS [2 : 0];
      assign rxstatus3_ext32b                                        = ZEROS [2 : 0];
      assign rxstatus4_ext32b                                        = ZEROS [2 : 0];
      assign rxstatus5_ext32b                                        = ZEROS [2 : 0];
      assign rxstatus6_ext32b                                        = ZEROS [2 : 0];
      assign rxstatus7_ext32b                                        = ZEROS [2 : 0];
      assign rxdataskip0_ext32b                                      = ZEROS [0];
      assign rxdataskip1_ext32b                                      = ZEROS [0];
      assign rxdataskip2_ext32b                                      = ZEROS [0];
      assign rxdataskip3_ext32b                                      = ZEROS [0];
      assign rxdataskip4_ext32b                                      = ZEROS [0];
      assign rxdataskip5_ext32b                                      = ZEROS [0];
      assign rxdataskip6_ext32b                                      = ZEROS [0];
      assign rxdataskip7_ext32b                                      = ZEROS [0];
      assign rxblkst0_ext32b                                         = ZEROS [0];
      assign rxblkst1_ext32b                                         = ZEROS [0];
      assign rxblkst2_ext32b                                         = ZEROS [0];
      assign rxblkst3_ext32b                                         = ZEROS [0];
      assign rxblkst4_ext32b                                         = ZEROS [0];
      assign rxblkst5_ext32b                                         = ZEROS [0];
      assign rxblkst6_ext32b                                         = ZEROS [0];
      assign rxblkst7_ext32b                                         = ZEROS [0];
      assign rxsynchd0_ext32b                                        = ZEROS [1 : 0];
      assign rxsynchd1_ext32b                                        = ZEROS [1 : 0];
      assign rxsynchd2_ext32b                                        = ZEROS [1 : 0];
      assign rxsynchd3_ext32b                                        = ZEROS [1 : 0];
      assign rxsynchd4_ext32b                                        = ZEROS [1 : 0];
      assign rxsynchd5_ext32b                                        = ZEROS [1 : 0];
      assign rxsynchd6_ext32b                                        = ZEROS [1 : 0];
      assign rxsynchd7_ext32b                                        = ZEROS [1 : 0];
      assign rxvalid0_ext32b                                         = ZEROS [0];
      assign rxvalid1_ext32b                                         = ZEROS [0];
      assign rxvalid2_ext32b                                         = ZEROS [0];
      assign rxvalid3_ext32b                                         = ZEROS [0];
      assign rxvalid4_ext32b                                         = ZEROS [0];
      assign rxvalid5_ext32b                                         = ZEROS [0];
      assign rxvalid6_ext32b                                         = ZEROS [0];
      assign rxvalid7_ext32b                                         = ZEROS [0];
      assign pipe32_sim_rxdata0                                      = ZEROS [31 : 0];
      assign pipe32_sim_rxdata1                                      = ZEROS [31 : 0];
      assign pipe32_sim_rxdata2                                      = ZEROS [31 : 0];
      assign pipe32_sim_rxdata3                                      = ZEROS [31 : 0];
      assign pipe32_sim_rxdata4                                      = ZEROS [31 : 0];
      assign pipe32_sim_rxdata5                                      = ZEROS [31 : 0];
      assign pipe32_sim_rxdata6                                      = ZEROS [31 : 0];
      assign pipe32_sim_rxdata7                                      = ZEROS [31 : 0];
      assign pipe32_sim_rxdatak0                                     = ZEROS [3 : 0];
      assign pipe32_sim_rxdatak1                                     = ZEROS [3 : 0];
      assign pipe32_sim_rxdatak2                                     = ZEROS [3 : 0];
      assign pipe32_sim_rxdatak3                                     = ZEROS [3 : 0];
      assign pipe32_sim_rxdatak4                                     = ZEROS [3 : 0];
      assign pipe32_sim_rxdatak5                                     = ZEROS [3 : 0];
      assign pipe32_sim_rxdatak6                                     = ZEROS [3 : 0];
      assign pipe32_sim_rxdatak7                                     = ZEROS [3 : 0];
      assign pipe32_sim_rxvalid0                                     = ZEROS [0];
      assign pipe32_sim_rxvalid1                                     = ZEROS [0];
      assign pipe32_sim_rxvalid2                                     = ZEROS [0];
      assign pipe32_sim_rxvalid3                                     = ZEROS [0];
      assign pipe32_sim_rxvalid4                                     = ZEROS [0];
      assign pipe32_sim_rxvalid5                                     = ZEROS [0];
      assign pipe32_sim_rxvalid6                                     = ZEROS [0];
      assign pipe32_sim_rxvalid7                                     = ZEROS [0];
      assign pipe32_sim_rxelecidle0                                  = ZEROS [0];
      assign pipe32_sim_rxelecidle1                                  = ZEROS [0];
      assign pipe32_sim_rxelecidle2                                  = ZEROS [0];
      assign pipe32_sim_rxelecidle3                                  = ZEROS [0];
      assign pipe32_sim_rxelecidle4                                  = ZEROS [0];
      assign pipe32_sim_rxelecidle5                                  = ZEROS [0];
      assign pipe32_sim_rxelecidle6                                  = ZEROS [0];
      assign pipe32_sim_rxelecidle7                                  = ZEROS [0];
      assign pipe32_sim_phystatus0                                   = ZEROS [0];
      assign pipe32_sim_phystatus1                                   = ZEROS [0];
      assign pipe32_sim_phystatus2                                   = ZEROS [0];
      assign pipe32_sim_phystatus3                                   = ZEROS [0];
      assign pipe32_sim_phystatus4                                   = ZEROS [0];
      assign pipe32_sim_phystatus5                                   = ZEROS [0];
      assign pipe32_sim_phystatus6                                   = ZEROS [0];
      assign pipe32_sim_phystatus7                                   = ZEROS [0];
      assign pipe32_sim_rxstatus0                                    = ZEROS [2 : 0];
      assign pipe32_sim_rxstatus1                                    = ZEROS [2 : 0];
      assign pipe32_sim_rxstatus2                                    = ZEROS [2 : 0];
      assign pipe32_sim_rxstatus3                                    = ZEROS [2 : 0];
      assign pipe32_sim_rxstatus4                                    = ZEROS [2 : 0];
      assign pipe32_sim_rxstatus5                                    = ZEROS [2 : 0];
      assign pipe32_sim_rxstatus6                                    = ZEROS [2 : 0];
      assign pipe32_sim_rxstatus7                                    = ZEROS [2 : 0];
      assign pipe32_sim_rxdataskip0                                  = ZEROS [0];
      assign pipe32_sim_rxdataskip1                                  = ZEROS [0];
      assign pipe32_sim_rxdataskip2                                  = ZEROS [0];
      assign pipe32_sim_rxdataskip3                                  = ZEROS [0];
      assign pipe32_sim_rxdataskip4                                  = ZEROS [0];
      assign pipe32_sim_rxdataskip5                                  = ZEROS [0];
      assign pipe32_sim_rxdataskip6                                  = ZEROS [0];
      assign pipe32_sim_rxdataskip7                                  = ZEROS [0];
      assign pipe32_sim_rxblkst0                                     = ZEROS [0];
      assign pipe32_sim_rxblkst1                                     = ZEROS [0];
      assign pipe32_sim_rxblkst2                                     = ZEROS [0];
      assign pipe32_sim_rxblkst3                                     = ZEROS [0];
      assign pipe32_sim_rxblkst4                                     = ZEROS [0];
      assign pipe32_sim_rxblkst5                                     = ZEROS [0];
      assign pipe32_sim_rxblkst6                                     = ZEROS [0];
      assign pipe32_sim_rxblkst7                                     = ZEROS [0];
      assign pipe32_sim_rxsynchd0                                    = ZEROS [1 : 0];
      assign pipe32_sim_rxsynchd1                                    = ZEROS [1 : 0];
      assign pipe32_sim_rxsynchd2                                    = ZEROS [1 : 0];
      assign pipe32_sim_rxsynchd3                                    = ZEROS [1 : 0];
      assign pipe32_sim_rxsynchd4                                    = ZEROS [1 : 0];
      assign pipe32_sim_rxsynchd5                                    = ZEROS [1 : 0];
      assign pipe32_sim_rxsynchd6                                    = ZEROS [1 : 0];
      assign pipe32_sim_rxsynchd7                                    = ZEROS [1 : 0];
      assign pipe32_sim_pipe_pclk                                    = ZEROS [0];
      assign pipe32_sim_pipe_pclkch1                                 = ZEROS [0];
      assign pipe32_sim_pipe_pclkcentral                             = ZEROS [0];
      assign pipe32_sim_pllfixedclkch0                               = ZEROS [0];
      assign pipe32_sim_pllfixedclkch1                               = ZEROS [0];
      assign pipe32_sim_pllfixedclkcentral                           = ZEROS [0];
   end
end
endgenerate // g_altpcie_hip_256_pipen1b_syn_only

// End PTC CV
// End enable_pcisigtest
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////
// Simulation only

// synthesis translate_off
   initial begin
      $display("Info:===============================================================");
      $display("Info: Stratix V Hard IP for PCI Express - altpcie_hip_256_pipen1b.v ");
      $display("Info:===============================================================");
      $display("Info: Lane : %s", lane_mask);
      $display("Info: Rate : %s", protocol_version);
      `ifndef ALTPCIE_MONITOR_SV_HIP_DL
         $display("Info: To generate a simulation DUT TLP dump file and info, set the define ALTPCIE_MONITOR_SV_HIP_DL ");
         $display("Info:     e.g    +define+ALTPCIE_MONITOR_SV_HIP_DL in the verilog simulation script");
         $display("Info:     note that ALTPCIE_MONITOR_SV_HIP_DL uses the monitor file altpcie_monitor_sv_dlhip_sim.v");
         $display("                                                 ");
      `endif
   end
   generate begin : g_altpcietb_pipe32_hip_interface
      if (PIPE32_SIM_ONLY==1) begin

      // PIPE TX
         always @ (*) begin
            altpcietb_pipe32_hip_interface.ratectrl[1:0]        = ratectrl[1:0]        ;

            altpcietb_pipe32_hip_interface.rate0[1:0]           = rate0[1:0]           ;
            altpcietb_pipe32_hip_interface.txdata0[31 :0  ]     = txdata0[31 :0  ]     ;
            altpcietb_pipe32_hip_interface.txdatak0[ 3: 0]      = txdatak0[ 3: 0]      ;
            altpcietb_pipe32_hip_interface.txcompl0             = txcompl0             ;
            altpcietb_pipe32_hip_interface.txelecidle0          = txelecidle0          ;
            altpcietb_pipe32_hip_interface.txdeemph0            = txdeemph0            ;
            altpcietb_pipe32_hip_interface.txswing0             = txswing0             ;
            altpcietb_pipe32_hip_interface.currentcoeff0[17:0]  = currentcoeff0[17:0]  ;
            altpcietb_pipe32_hip_interface.currentrxpreset0[2:0]= currentrxpreset0[2:0];
            altpcietb_pipe32_hip_interface.txdataskip0          = txdataskip0          ;
            altpcietb_pipe32_hip_interface.txblkst0             = txblkst0             ;
            altpcietb_pipe32_hip_interface.txsynchd0[1:0]       = txsynchd0[1:0]       ;
            altpcietb_pipe32_hip_interface.txmargin0[ 2: 0]     = txmargin0[ 2: 0]     ;
            altpcietb_pipe32_hip_interface.powerdown0[ 1 : 0]   = powerdown0[ 1 : 0]   ;
            altpcietb_pipe32_hip_interface.rxpolarity0          = rxpolarity0          ;
            altpcietb_pipe32_hip_interface.txdetectrx0          = txdetectrx0          ;
            altpcietb_pipe32_hip_interface.eidleinfersel0[2:0]  = eidleinfersel0[2:0]  ;

            altpcietb_pipe32_hip_interface.rate1[1:0]           = rate1[1:0]           ;
            altpcietb_pipe32_hip_interface.txdata1[31 :0  ]     = txdata1[31 :0  ]     ;
            altpcietb_pipe32_hip_interface.txdatak1[ 3: 0]      = txdatak1[ 3: 0]      ;
            altpcietb_pipe32_hip_interface.txcompl1             = txcompl1             ;
            altpcietb_pipe32_hip_interface.txelecidle1          = txelecidle1          ;
            altpcietb_pipe32_hip_interface.txdeemph1            = txdeemph1            ;
            altpcietb_pipe32_hip_interface.txswing1             = txswing1             ;
            altpcietb_pipe32_hip_interface.currentcoeff1[17:0]  = currentcoeff1[17:0]  ;
            altpcietb_pipe32_hip_interface.currentrxpreset1[2:0]= currentrxpreset1[2:0];
            altpcietb_pipe32_hip_interface.txdataskip1          = txdataskip1          ;
            altpcietb_pipe32_hip_interface.txblkst1             = txblkst1             ;
            altpcietb_pipe32_hip_interface.txsynchd1[1:0]       = txsynchd1[1:0]       ;
            altpcietb_pipe32_hip_interface.txmargin1[ 2: 0]     = txmargin1[ 2: 0]     ;
            altpcietb_pipe32_hip_interface.powerdown1[ 1 : 0]   = powerdown1[ 1 : 0]   ;
            altpcietb_pipe32_hip_interface.rxpolarity1          = rxpolarity1          ;
            altpcietb_pipe32_hip_interface.txdetectrx1          = txdetectrx1          ;
            altpcietb_pipe32_hip_interface.eidleinfersel1[2:0]  = eidleinfersel1[2:0]  ;

            altpcietb_pipe32_hip_interface.rate2[1:0]           = rate2[1:0]           ;
            altpcietb_pipe32_hip_interface.txdata2[31 :0  ]     = txdata2[31 :0  ]     ;
            altpcietb_pipe32_hip_interface.txdatak2[ 3: 0]      = txdatak2[ 3: 0]      ;
            altpcietb_pipe32_hip_interface.txcompl2             = txcompl2             ;
            altpcietb_pipe32_hip_interface.txelecidle2          = txelecidle2          ;
            altpcietb_pipe32_hip_interface.txdeemph2            = txdeemph2            ;
            altpcietb_pipe32_hip_interface.txswing2             = txswing2             ;
            altpcietb_pipe32_hip_interface.currentcoeff2[17:0]  = currentcoeff2[17:0]  ;
            altpcietb_pipe32_hip_interface.currentrxpreset2[2:0]= currentrxpreset2[2:0];
            altpcietb_pipe32_hip_interface.txdataskip2          = txdataskip2          ;
            altpcietb_pipe32_hip_interface.txblkst2             = txblkst2             ;
            altpcietb_pipe32_hip_interface.txsynchd2[1:0]       = txsynchd2[1:0]       ;
            altpcietb_pipe32_hip_interface.txmargin2[ 2: 0]     = txmargin2[ 2: 0]     ;
            altpcietb_pipe32_hip_interface.powerdown2[ 1 : 0]   = powerdown2[ 1 : 0]   ;
            altpcietb_pipe32_hip_interface.rxpolarity2          = rxpolarity2          ;
            altpcietb_pipe32_hip_interface.txdetectrx2          = txdetectrx2          ;
            altpcietb_pipe32_hip_interface.eidleinfersel2[2:0]  = eidleinfersel2[2:0]  ;

            altpcietb_pipe32_hip_interface.rate3[1:0]           = rate3[1:0]           ;
            altpcietb_pipe32_hip_interface.txdata3[31 :0  ]     = txdata3[31 :0  ]     ;
            altpcietb_pipe32_hip_interface.txdatak3[ 3: 0]      = txdatak3[ 3: 0]      ;
            altpcietb_pipe32_hip_interface.txcompl3             = txcompl3             ;
            altpcietb_pipe32_hip_interface.txelecidle3          = txelecidle3          ;
            altpcietb_pipe32_hip_interface.txdeemph3            = txdeemph3            ;
            altpcietb_pipe32_hip_interface.txswing3             = txswing3             ;
            altpcietb_pipe32_hip_interface.currentcoeff3[17:0]  = currentcoeff3[17:0]  ;
            altpcietb_pipe32_hip_interface.currentrxpreset3[2:0]= currentrxpreset3[2:0];
            altpcietb_pipe32_hip_interface.txdataskip3          = txdataskip3          ;
            altpcietb_pipe32_hip_interface.txblkst3             = txblkst3             ;
            altpcietb_pipe32_hip_interface.txsynchd3[1:0]       = txsynchd3[1:0]       ;
            altpcietb_pipe32_hip_interface.txmargin3[ 2: 0]     = txmargin3[ 2: 0]     ;
            altpcietb_pipe32_hip_interface.powerdown3[ 1 : 0]   = powerdown3[ 1 : 0]   ;
            altpcietb_pipe32_hip_interface.rxpolarity3          = rxpolarity3          ;
            altpcietb_pipe32_hip_interface.txdetectrx3          = txdetectrx3          ;
            altpcietb_pipe32_hip_interface.eidleinfersel3[2:0]  = eidleinfersel3[2:0]  ;

            altpcietb_pipe32_hip_interface.rate4[1:0]           = rate4[1:0]           ;
            altpcietb_pipe32_hip_interface.txdata4[31 :0  ]     = txdata4[31 :0  ]     ;
            altpcietb_pipe32_hip_interface.txdatak4[ 3: 0]      = txdatak4[ 3: 0]      ;
            altpcietb_pipe32_hip_interface.txcompl4             = txcompl4             ;
            altpcietb_pipe32_hip_interface.txelecidle4          = txelecidle4          ;
            altpcietb_pipe32_hip_interface.txdeemph4            = txdeemph4            ;
            altpcietb_pipe32_hip_interface.txswing4             = txswing4             ;
            altpcietb_pipe32_hip_interface.currentcoeff4[17:0]  = currentcoeff4[17:0]  ;
            altpcietb_pipe32_hip_interface.currentrxpreset4[2:0]= currentrxpreset4[2:0];
            altpcietb_pipe32_hip_interface.txdataskip4          = txdataskip4          ;
            altpcietb_pipe32_hip_interface.txblkst4             = txblkst4             ;
            altpcietb_pipe32_hip_interface.txsynchd4[1:0]       = txsynchd4[1:0]       ;
            altpcietb_pipe32_hip_interface.txmargin4[ 2: 0]     = txmargin4[ 2: 0]     ;
            altpcietb_pipe32_hip_interface.powerdown4[ 1 : 0]   = powerdown4[ 1 : 0]   ;
            altpcietb_pipe32_hip_interface.rxpolarity4          = rxpolarity4          ;
            altpcietb_pipe32_hip_interface.txdetectrx4          = txdetectrx4          ;
            altpcietb_pipe32_hip_interface.eidleinfersel4[2:0]  = eidleinfersel4[2:0]  ;

            altpcietb_pipe32_hip_interface.rate5[1:0]           = rate5[1:0]           ;
            altpcietb_pipe32_hip_interface.txdata5[31 :0  ]     = txdata5[31 :0  ]     ;
            altpcietb_pipe32_hip_interface.txdatak5[ 3: 0]      = txdatak5[ 3: 0]      ;
            altpcietb_pipe32_hip_interface.txcompl5             = txcompl5             ;
            altpcietb_pipe32_hip_interface.txelecidle5          = txelecidle5          ;
            altpcietb_pipe32_hip_interface.txdeemph5            = txdeemph5            ;
            altpcietb_pipe32_hip_interface.txswing5             = txswing5             ;
            altpcietb_pipe32_hip_interface.currentcoeff5[17:0]  = currentcoeff5[17:0]  ;
            altpcietb_pipe32_hip_interface.currentrxpreset5[2:0]= currentrxpreset5[2:0];
            altpcietb_pipe32_hip_interface.txdataskip5          = txdataskip5          ;
            altpcietb_pipe32_hip_interface.txblkst5             = txblkst5             ;
            altpcietb_pipe32_hip_interface.txsynchd5[1:0]       = txsynchd5[1:0]       ;
            altpcietb_pipe32_hip_interface.txmargin5[ 2: 0]     = txmargin5[ 2: 0]     ;
            altpcietb_pipe32_hip_interface.powerdown5[ 1 : 0]   = powerdown5[ 1 : 0]   ;
            altpcietb_pipe32_hip_interface.rxpolarity5          = rxpolarity5          ;
            altpcietb_pipe32_hip_interface.txdetectrx5          = txdetectrx5          ;
            altpcietb_pipe32_hip_interface.eidleinfersel5[2:0]  = eidleinfersel5[2:0]  ;

            altpcietb_pipe32_hip_interface.rate6[1:0]           = rate6[1:0]           ;
            altpcietb_pipe32_hip_interface.txdata6[31 :0  ]     = txdata6[31 :0  ]     ;
            altpcietb_pipe32_hip_interface.txdatak6[ 3: 0]      = txdatak6[ 3: 0]      ;
            altpcietb_pipe32_hip_interface.txcompl6             = txcompl6             ;
            altpcietb_pipe32_hip_interface.txelecidle6          = txelecidle6          ;
            altpcietb_pipe32_hip_interface.txdeemph6            = txdeemph6            ;
            altpcietb_pipe32_hip_interface.txswing6             = txswing6             ;
            altpcietb_pipe32_hip_interface.currentcoeff6[17:0]  = currentcoeff6[17:0]  ;
            altpcietb_pipe32_hip_interface.currentrxpreset6[2:0]= currentrxpreset6[2:0];
            altpcietb_pipe32_hip_interface.txdataskip6          = txdataskip6          ;
            altpcietb_pipe32_hip_interface.txblkst6             = txblkst6             ;
            altpcietb_pipe32_hip_interface.txsynchd6[1:0]       = txsynchd6[1:0]       ;
            altpcietb_pipe32_hip_interface.txmargin6[ 2: 0]     = txmargin6[ 2: 0]     ;
            altpcietb_pipe32_hip_interface.powerdown6[ 1 : 0]   = powerdown6[ 1 : 0]   ;
            altpcietb_pipe32_hip_interface.rxpolarity6          = rxpolarity6          ;
            altpcietb_pipe32_hip_interface.txdetectrx6          = txdetectrx6          ;
            altpcietb_pipe32_hip_interface.eidleinfersel6[2:0]  = eidleinfersel6[2:0]  ;

            altpcietb_pipe32_hip_interface.rate7[1:0]           = rate7[1:0]           ;
            altpcietb_pipe32_hip_interface.txdata7[31 :0  ]     = txdata7[31 :0  ]     ;
            altpcietb_pipe32_hip_interface.txdatak7[ 3: 0]      = txdatak7[ 3: 0]      ;
            altpcietb_pipe32_hip_interface.txcompl7             = txcompl7             ;
            altpcietb_pipe32_hip_interface.txelecidle7          = txelecidle7          ;
            altpcietb_pipe32_hip_interface.txdeemph7            = txdeemph7            ;
            altpcietb_pipe32_hip_interface.txswing7             = txswing7             ;
            altpcietb_pipe32_hip_interface.currentcoeff7[17:0]  = currentcoeff7[17:0]  ;
            altpcietb_pipe32_hip_interface.currentrxpreset7[2:0]= currentrxpreset7[2:0];
            altpcietb_pipe32_hip_interface.txdataskip7          = txdataskip7          ;
            altpcietb_pipe32_hip_interface.txblkst7             = txblkst7             ;
            altpcietb_pipe32_hip_interface.txsynchd7[1:0]       = txsynchd7[1:0]       ;
            altpcietb_pipe32_hip_interface.txmargin7[ 2: 0]     = txmargin7[ 2: 0]     ;
            altpcietb_pipe32_hip_interface.powerdown7[ 1 : 0]   = powerdown7[ 1 : 0]   ;
            altpcietb_pipe32_hip_interface.rxpolarity7          = rxpolarity7          ;
            altpcietb_pipe32_hip_interface.txdetectrx7          = txdetectrx7          ;
            altpcietb_pipe32_hip_interface.eidleinfersel7[2:0]  = eidleinfersel7[2:0]  ;
         end
        //PIPE RX
        assign pipe32_sim_rxdata0[31:0]     = altpcietb_pipe32_hip_interface.rxdata0[31:0] ;
        assign pipe32_sim_rxdatak0[3:0]     = altpcietb_pipe32_hip_interface.rxdatak0[3:0] ;
        assign pipe32_sim_rxvalid0          = altpcietb_pipe32_hip_interface.rxvalid0      ;
        assign pipe32_sim_rxelecidle0       = altpcietb_pipe32_hip_interface.rxelecidle0   ;
        assign pipe32_sim_phystatus0        = altpcietb_pipe32_hip_interface.phystatus0    ;
        assign pipe32_sim_rxstatus0[2:0]    = altpcietb_pipe32_hip_interface.rxstatus0[2:0];
        assign pipe32_sim_rxdataskip0       = altpcietb_pipe32_hip_interface.rxdataskip0   ;
        assign pipe32_sim_rxblkst0          = altpcietb_pipe32_hip_interface.rxblkst0      ;
        assign pipe32_sim_rxsynchd0[1:0]    = altpcietb_pipe32_hip_interface.rxsynchd0[1:0];

        assign pipe32_sim_rxdata1[31:0]     = altpcietb_pipe32_hip_interface.rxdata1[31:0] ;
        assign pipe32_sim_rxdatak1[3:0]     = altpcietb_pipe32_hip_interface.rxdatak1[3:0] ;
        assign pipe32_sim_rxvalid1          = altpcietb_pipe32_hip_interface.rxvalid1      ;
        assign pipe32_sim_rxelecidle1       = altpcietb_pipe32_hip_interface.rxelecidle1   ;
        assign pipe32_sim_phystatus1        = altpcietb_pipe32_hip_interface.phystatus1    ;
        assign pipe32_sim_rxstatus1[2:0]    = altpcietb_pipe32_hip_interface.rxstatus1[2:0];
        assign pipe32_sim_rxdataskip1       = altpcietb_pipe32_hip_interface.rxdataskip1   ;
        assign pipe32_sim_rxblkst1          = altpcietb_pipe32_hip_interface.rxblkst1      ;
        assign pipe32_sim_rxsynchd1[1:0]    = altpcietb_pipe32_hip_interface.rxsynchd1[1:0];

        assign pipe32_sim_rxdata2[31:0]     = altpcietb_pipe32_hip_interface.rxdata2[31:0] ;
        assign pipe32_sim_rxdatak2[3:0]     = altpcietb_pipe32_hip_interface.rxdatak2[3:0] ;
        assign pipe32_sim_rxvalid2          = altpcietb_pipe32_hip_interface.rxvalid2      ;
        assign pipe32_sim_rxelecidle2       = altpcietb_pipe32_hip_interface.rxelecidle2   ;
        assign pipe32_sim_phystatus2        = altpcietb_pipe32_hip_interface.phystatus2    ;
        assign pipe32_sim_rxstatus2[2:0]    = altpcietb_pipe32_hip_interface.rxstatus2[2:0];
        assign pipe32_sim_rxdataskip2       = altpcietb_pipe32_hip_interface.rxdataskip2   ;
        assign pipe32_sim_rxblkst2          = altpcietb_pipe32_hip_interface.rxblkst2      ;
        assign pipe32_sim_rxsynchd2[1:0]    = altpcietb_pipe32_hip_interface.rxsynchd2[1:0];

        assign pipe32_sim_rxdata3[31:0]     = altpcietb_pipe32_hip_interface.rxdata3[31:0] ;
        assign pipe32_sim_rxdatak3[3:0]     = altpcietb_pipe32_hip_interface.rxdatak3[3:0] ;
        assign pipe32_sim_rxvalid3          = altpcietb_pipe32_hip_interface.rxvalid3      ;
        assign pipe32_sim_rxelecidle3       = altpcietb_pipe32_hip_interface.rxelecidle3   ;
        assign pipe32_sim_phystatus3        = altpcietb_pipe32_hip_interface.phystatus3    ;
        assign pipe32_sim_rxstatus3[2:0]    = altpcietb_pipe32_hip_interface.rxstatus3[2:0];
        assign pipe32_sim_rxdataskip3       = altpcietb_pipe32_hip_interface.rxdataskip3   ;
        assign pipe32_sim_rxblkst3          = altpcietb_pipe32_hip_interface.rxblkst3      ;
        assign pipe32_sim_rxsynchd3[1:0]    = altpcietb_pipe32_hip_interface.rxsynchd3[1:0];

        assign pipe32_sim_rxdata4[31:0]     = altpcietb_pipe32_hip_interface.rxdata4[31:0] ;
        assign pipe32_sim_rxdatak4[3:0]     = altpcietb_pipe32_hip_interface.rxdatak4[3:0] ;
        assign pipe32_sim_rxvalid4          = altpcietb_pipe32_hip_interface.rxvalid4      ;
        assign pipe32_sim_rxelecidle4       = altpcietb_pipe32_hip_interface.rxelecidle4   ;
        assign pipe32_sim_phystatus4        = altpcietb_pipe32_hip_interface.phystatus4    ;
        assign pipe32_sim_rxstatus4[2:0]    = altpcietb_pipe32_hip_interface.rxstatus4[2:0];
        assign pipe32_sim_rxdataskip4       = altpcietb_pipe32_hip_interface.rxdataskip4   ;
        assign pipe32_sim_rxblkst4          = altpcietb_pipe32_hip_interface.rxblkst4      ;
        assign pipe32_sim_rxsynchd4[1:0]    = altpcietb_pipe32_hip_interface.rxsynchd4[1:0];

        assign pipe32_sim_rxdata5[31:0]     = altpcietb_pipe32_hip_interface.rxdata5[31:0] ;
        assign pipe32_sim_rxdatak5[3:0]     = altpcietb_pipe32_hip_interface.rxdatak5[3:0] ;
        assign pipe32_sim_rxvalid5          = altpcietb_pipe32_hip_interface.rxvalid5      ;
        assign pipe32_sim_rxelecidle5       = altpcietb_pipe32_hip_interface.rxelecidle5   ;
        assign pipe32_sim_phystatus5        = altpcietb_pipe32_hip_interface.phystatus5    ;
        assign pipe32_sim_rxstatus5[2:0]    = altpcietb_pipe32_hip_interface.rxstatus5[2:0];
        assign pipe32_sim_rxdataskip5       = altpcietb_pipe32_hip_interface.rxdataskip5   ;
        assign pipe32_sim_rxblkst5          = altpcietb_pipe32_hip_interface.rxblkst5      ;
        assign pipe32_sim_rxsynchd5[1:0]    = altpcietb_pipe32_hip_interface.rxsynchd5[1:0];

        assign pipe32_sim_rxdata6[31:0]     = altpcietb_pipe32_hip_interface.rxdata6[31:0] ;
        assign pipe32_sim_rxdatak6[3:0]     = altpcietb_pipe32_hip_interface.rxdatak6[3:0] ;
        assign pipe32_sim_rxvalid6          = altpcietb_pipe32_hip_interface.rxvalid6      ;
        assign pipe32_sim_rxelecidle6       = altpcietb_pipe32_hip_interface.rxelecidle6   ;
        assign pipe32_sim_phystatus6        = altpcietb_pipe32_hip_interface.phystatus6    ;
        assign pipe32_sim_rxstatus6[2:0]    = altpcietb_pipe32_hip_interface.rxstatus6[2:0];
        assign pipe32_sim_rxdataskip6       = altpcietb_pipe32_hip_interface.rxdataskip6   ;
        assign pipe32_sim_rxblkst6          = altpcietb_pipe32_hip_interface.rxblkst6      ;
        assign pipe32_sim_rxsynchd6[1:0]    = altpcietb_pipe32_hip_interface.rxsynchd6[1:0];

        assign pipe32_sim_rxdata7[31:0]     = altpcietb_pipe32_hip_interface.rxdata7[31:0] ;
        assign pipe32_sim_rxdatak7[3:0]     = altpcietb_pipe32_hip_interface.rxdatak7[3:0] ;
        assign pipe32_sim_rxvalid7          = altpcietb_pipe32_hip_interface.rxvalid7      ;
        assign pipe32_sim_rxelecidle7       = altpcietb_pipe32_hip_interface.rxelecidle7   ;
        assign pipe32_sim_phystatus7        = altpcietb_pipe32_hip_interface.phystatus7    ;
        assign pipe32_sim_rxstatus7[2:0]    = altpcietb_pipe32_hip_interface.rxstatus7[2:0];
        assign pipe32_sim_rxdataskip7       = altpcietb_pipe32_hip_interface.rxdataskip7   ;
        assign pipe32_sim_rxblkst7          = altpcietb_pipe32_hip_interface.rxblkst7      ;
        assign pipe32_sim_rxsynchd7[1:0]    = altpcietb_pipe32_hip_interface.rxsynchd7[1:0];

        assign pipe32_sim_pipe_pclk         = altpcietb_pipe32_hip_interface.pipe_pclk         ;
        assign pipe32_sim_pipe_pclkch1      = altpcietb_pipe32_hip_interface.pipe_pclkch1      ;
        assign pipe32_sim_pipe_pclkcentral  = altpcietb_pipe32_hip_interface.pipe_pclkcentral  ;
        assign pipe32_sim_pllfixedclkch0    = altpcietb_pipe32_hip_interface.pllfixedclkch0    ;
        assign pipe32_sim_pllfixedclkch1    = altpcietb_pipe32_hip_interface.pllfixedclkch1    ;
        assign pipe32_sim_pllfixedclkcentral= altpcietb_pipe32_hip_interface.pllfixedclkcentral;

      end
      else begin
        assign pipe32_sim_rxdata0[31:0]      = ZEROS[31:0];
        assign pipe32_sim_rxdatak0[3:0]      = ZEROS[3:0];
        assign pipe32_sim_rxvalid0           = ZEROS[0];
        assign pipe32_sim_rxelecidle0        = ZEROS[0];
        assign pipe32_sim_phystatus0         = ZEROS[0];
        assign pipe32_sim_rxstatus0[2:0]     = ZEROS[2:0];
        assign pipe32_sim_rxdataskip0        = ZEROS[0];
        assign pipe32_sim_rxblkst0           = ZEROS[0];
        assign pipe32_sim_rxsynchd0[1:0]     = ZEROS[1:0];

        assign pipe32_sim_rxdata1[31:0]      = ZEROS[31:0];
        assign pipe32_sim_rxdatak1[3:0]      = ZEROS[3:0];
        assign pipe32_sim_rxvalid1           = ZEROS[0];
        assign pipe32_sim_rxelecidle1        = ZEROS[0];
        assign pipe32_sim_phystatus1         = ZEROS[0];
        assign pipe32_sim_rxstatus1[2:0]     = ZEROS[2:0];
        assign pipe32_sim_rxdataskip1        = ZEROS[0];
        assign pipe32_sim_rxblkst1           = ZEROS[0];
        assign pipe32_sim_rxsynchd1[1:0]     = ZEROS[1:0];

        assign pipe32_sim_rxdata2[31:0]      = ZEROS[31:0];
        assign pipe32_sim_rxdatak2[3:0]      = ZEROS[3:0];
        assign pipe32_sim_rxvalid2           = ZEROS[0];
        assign pipe32_sim_rxelecidle2        = ZEROS[0];
        assign pipe32_sim_phystatus2         = ZEROS[0];
        assign pipe32_sim_rxstatus2[2:0]     = ZEROS[2:0];
        assign pipe32_sim_rxdataskip2        = ZEROS[0];
        assign pipe32_sim_rxblkst2           = ZEROS[0];
        assign pipe32_sim_rxsynchd2[1:0]     = ZEROS[1:0];

        assign pipe32_sim_rxdata3[31:0]      = ZEROS[31:0];
        assign pipe32_sim_rxdatak3[3:0]      = ZEROS[3:0];
        assign pipe32_sim_rxvalid3           = ZEROS[0];
        assign pipe32_sim_rxelecidle3        = ZEROS[0];
        assign pipe32_sim_phystatus3         = ZEROS[0];
        assign pipe32_sim_rxstatus3[2:0]     = ZEROS[2:0];
        assign pipe32_sim_rxdataskip3        = ZEROS[0];
        assign pipe32_sim_rxblkst3           = ZEROS[0];
        assign pipe32_sim_rxsynchd3[1:0]     = ZEROS[1:0];

        assign pipe32_sim_rxdata4[31:0]      = ZEROS[31:0];
        assign pipe32_sim_rxdatak4[3:0]      = ZEROS[3:0];
        assign pipe32_sim_rxvalid4           = ZEROS[0];
        assign pipe32_sim_rxelecidle4        = ZEROS[0];
        assign pipe32_sim_phystatus4         = ZEROS[0];
        assign pipe32_sim_rxstatus4[2:0]     = ZEROS[2:0];
        assign pipe32_sim_rxdataskip4        = ZEROS[0];
        assign pipe32_sim_rxblkst4           = ZEROS[0];
        assign pipe32_sim_rxsynchd4[1:0]     = ZEROS[1:0];

        assign pipe32_sim_rxdata5[31:0]      = ZEROS[31:0];
        assign pipe32_sim_rxdatak5[3:0]      = ZEROS[3:0];
        assign pipe32_sim_rxvalid5           = ZEROS[0];
        assign pipe32_sim_rxelecidle5        = ZEROS[0];
        assign pipe32_sim_phystatus5         = ZEROS[0];
        assign pipe32_sim_rxstatus5[2:0]     = ZEROS[2:0];
        assign pipe32_sim_rxdataskip5        = ZEROS[0];
        assign pipe32_sim_rxblkst5           = ZEROS[0];
        assign pipe32_sim_rxsynchd5[1:0]     = ZEROS[1:0];

        assign pipe32_sim_rxdata6[31:0]      = ZEROS[31:0];
        assign pipe32_sim_rxdatak6[3:0]      = ZEROS[3:0];
        assign pipe32_sim_rxvalid6           = ZEROS[0];
        assign pipe32_sim_rxelecidle6        = ZEROS[0];
        assign pipe32_sim_phystatus6         = ZEROS[0];
        assign pipe32_sim_rxstatus6[2:0]     = ZEROS[2:0];
        assign pipe32_sim_rxdataskip6        = ZEROS[0];
        assign pipe32_sim_rxblkst6           = ZEROS[0];
        assign pipe32_sim_rxsynchd6[1:0]     = ZEROS[1:0];

        assign pipe32_sim_rxdata7[31:0]      = ZEROS[31:0];
        assign pipe32_sim_rxdatak7[3:0]      = ZEROS[3:0];
        assign pipe32_sim_rxvalid7           = ZEROS[0];
        assign pipe32_sim_rxelecidle7        = ZEROS[0];
        assign pipe32_sim_phystatus7         = ZEROS[0];
        assign pipe32_sim_rxstatus7[2:0]     = ZEROS[2:0];
        assign pipe32_sim_rxdataskip7        = ZEROS[0];
        assign pipe32_sim_rxblkst7           = ZEROS[0];
        assign pipe32_sim_rxsynchd7[1:0]     = ZEROS[1:0];

        assign pipe32_sim_pipe_pclk          = 1'b0;
        assign pipe32_sim_pipe_pclkch1       = 1'b0;
        assign pipe32_sim_pipe_pclkcentral   = 1'b0;
        assign pipe32_sim_pllfixedclkch0     = 1'b0;
        assign pipe32_sim_pllfixedclkch1     = 1'b0;
        assign pipe32_sim_pllfixedclkcentral = 1'b0;
      end
   end
   endgenerate

   wire open_locked;
   wire open_fbclkout;

   generic_pll #        ( .reference_clock_frequency(pll_refclk_freq), .output_clock_frequency("250.0 MHz") )
      refclk_to_250mhz      ( .refclk(refclk), .outclk(clk250_out), .locked(open_locked),    .fboutclk(open_fbclkout), .rst(1'b0), .fbclk(fbclkout));

   generic_pll #        ( .reference_clock_frequency(pll_refclk_freq), .output_clock_frequency("500.0 MHz") )
      pll_100mhz_to_500mhz      ( .refclk(refclk), .outclk(clk500_out), .locked(open_locked),    .fboutclk(open_fbclkout), .rst(1'b0), .fbclk(fbclkout));

   altpcietb_bfm_txpipe_8bit_to_32_bit altpcietb_bfm_txpipe_8bit_to_32_bit (
      .sim_pipe8_pclk         (pclk_in),
      .sim_pipe32_pclk        (sim_pipe32_pclk),
      .aclr                   (npor_int),
      .pipe_mode_simu_only    ((ALTPCIE_HIP_256_PIPEN1B_SIM_ONLY==0)?1'b0:pipe8_sim_only),

      .eidleinfersel0                     (eidleinfersel0          ),
      .eidleinfersel1                     (eidleinfersel1          ),
      .eidleinfersel2                     (eidleinfersel2          ),
      .eidleinfersel3                     (eidleinfersel3          ),
      .eidleinfersel4                     (eidleinfersel4          ),
      .eidleinfersel5                     (eidleinfersel5          ),
      .eidleinfersel6                     (eidleinfersel6          ),
      .eidleinfersel7                     (eidleinfersel7          ),
      .powerdown0                         (powerdown0              ),
      .powerdown1                         (powerdown1              ),
      .powerdown2                         (powerdown2              ),
      .powerdown3                         (powerdown3              ),
      .powerdown4                         (powerdown4              ),
      .powerdown5                         (powerdown5              ),
      .powerdown6                         (powerdown6              ),
      .powerdown7                         (powerdown7              ),
      .rxpolarity0                        (rxpolarity0             ),
      .rxpolarity1                        (rxpolarity1             ),
      .rxpolarity2                        (rxpolarity2             ),
      .rxpolarity3                        (rxpolarity3             ),
      .rxpolarity4                        (rxpolarity4             ),
      .rxpolarity5                        (rxpolarity5             ),
      .rxpolarity6                        (rxpolarity6             ),
      .rxpolarity7                        (rxpolarity7             ),
      .txcompl0                           (txcompl0                ),
      .txcompl1                           (txcompl1                ),
      .txcompl2                           (txcompl2                ),
      .txcompl3                           (txcompl3                ),
      .txcompl4                           (txcompl4                ),
      .txcompl5                           (txcompl5                ),
      .txcompl6                           (txcompl6                ),
      .txcompl7                           (txcompl7                ),
      .txdata0                            (txdata0                 ),
      .txdata1                            (txdata1                 ),
      .txdata2                            (txdata2                 ),
      .txdata3                            (txdata3                 ),
      .txdata4                            (txdata4                 ),
      .txdata5                            (txdata5                 ),
      .txdata6                            (txdata6                 ),
      .txdata7                            (txdata7                 ),
      .txdatak0                           (txdatak0                ),
      .txdatak1                           (txdatak1                ),
      .txdatak2                           (txdatak2                ),
      .txdatak3                           (txdatak3                ),
      .txdatak4                           (txdatak4                ),
      .txdatak5                           (txdatak5                ),
      .txdatak6                           (txdatak6                ),
      .txdatak7                           (txdatak7                ),
      //.txdatavalid0                       (txdatavalid0            ),
      //.txdatavalid1                       (txdatavalid1            ),
      //.txdatavalid2                       (txdatavalid2            ),
      //.txdatavalid3                       (txdatavalid3            ),
      //.txdatavalid4                       (txdatavalid4            ),
      //.txdatavalid5                       (txdatavalid5            ),
      //.txdatavalid6                       (txdatavalid6            ),
      //.txdatavalid7                       (txdatavalid7            ),
      .txdetectrx0                        (txdetectrx0             ),
      .txdetectrx1                        (txdetectrx1             ),
      .txdetectrx2                        (txdetectrx2             ),
      .txdetectrx3                        (txdetectrx3             ),
      .txdetectrx4                        (txdetectrx4             ),
      .txdetectrx5                        (txdetectrx5             ),
      .txdetectrx6                        (txdetectrx6             ),
      .txdetectrx7                        (txdetectrx7             ),
      .txelecidle0                        (txelecidle0             ),
      .txelecidle1                        (txelecidle1             ),
      .txelecidle2                        (txelecidle2             ),
      .txelecidle3                        (txelecidle3             ),
      .txelecidle4                        (txelecidle4             ),
      .txelecidle5                        (txelecidle5             ),
      .txelecidle6                        (txelecidle6             ),
      .txelecidle7                        (txelecidle7             ),
      .txmargin0                          (txmargin0               ),
      .txmargin1                          (txmargin1               ),
      .txmargin2                          (txmargin2               ),
      .txmargin3                          (txmargin3               ),
      .txmargin4                          (txmargin4               ),
      .txmargin5                          (txmargin5               ),
      .txmargin6                          (txmargin6               ),
      .txmargin7                          (txmargin7               ),
      .txdeemph0                          (txdeemph0               ),
      .txdeemph1                          (txdeemph1               ),
      .txdeemph2                          (txdeemph2               ),
      .txdeemph3                          (txdeemph3               ),
      .txdeemph4                          (txdeemph4               ),
      .txdeemph5                          (txdeemph5               ),
      .txdeemph6                          (txdeemph6               ),
      .txdeemph7                          (txdeemph7               ),
      .txswing0                           (txswing0                ),
      .txswing1                           (txswing1                ),
      .txswing2                           (txswing2                ),
      .txswing3                           (txswing3                ),
      .txswing4                           (txswing4                ),
      .txswing5                           (txswing5                ),
      .txswing6                           (txswing6                ),
      .txswing7                           (txswing7                ),
      .txblkst0                           (txblkst0                ),
      .txblkst1                           (txblkst1                ),
      .txblkst2                           (txblkst2                ),
      .txblkst3                           (txblkst3                ),
      .txblkst4                           (txblkst4                ),
      .txblkst5                           (txblkst5                ),
      .txblkst6                           (txblkst6                ),
      .txblkst7                           (txblkst7                ),
      .txsynchd0                          (txsynchd0               ),
      .txsynchd1                          (txsynchd1               ),
      .txsynchd2                          (txsynchd2               ),
      .txsynchd3                          (txsynchd3               ),
      .txsynchd4                          (txsynchd4               ),
      .txsynchd5                          (txsynchd5               ),
      .txsynchd6                          (txsynchd6               ),
      .txsynchd7                          (txsynchd7               ),
      .currentcoeff0                      (currentcoeff0           ),
      .currentcoeff1                      (currentcoeff1           ),
      .currentcoeff2                      (currentcoeff2           ),
      .currentcoeff3                      (currentcoeff3           ),
      .currentcoeff4                      (currentcoeff4           ),
      .currentcoeff5                      (currentcoeff5           ),
      .currentcoeff6                      (currentcoeff6           ),
      .currentcoeff7                      (currentcoeff7           ),
      .currentrxpreset0                   (currentrxpreset0        ),
      .currentrxpreset1                   (currentrxpreset1        ),
      .currentrxpreset2                   (currentrxpreset2        ),
      .currentrxpreset3                   (currentrxpreset3        ),
      .currentrxpreset4                   (currentrxpreset4        ),
      .currentrxpreset5                   (currentrxpreset5        ),
      .currentrxpreset6                   (currentrxpreset6        ),
      .currentrxpreset7                   (currentrxpreset7        ),

      .eidleinfersel0_ext                 (eidleinfersel0_ext      ),
      .eidleinfersel1_ext                 (eidleinfersel1_ext      ),
      .eidleinfersel2_ext                 (eidleinfersel2_ext      ),
      .eidleinfersel3_ext                 (eidleinfersel3_ext      ),
      .eidleinfersel4_ext                 (eidleinfersel4_ext      ),
      .eidleinfersel5_ext                 (eidleinfersel5_ext      ),
      .eidleinfersel6_ext                 (eidleinfersel6_ext      ),
      .eidleinfersel7_ext                 (eidleinfersel7_ext      ),
      .powerdown0_ext                     (powerdown0_ext          ),
      .powerdown1_ext                     (powerdown1_ext          ),
      .powerdown2_ext                     (powerdown2_ext          ),
      .powerdown3_ext                     (powerdown3_ext          ),
      .powerdown4_ext                     (powerdown4_ext          ),
      .powerdown5_ext                     (powerdown5_ext          ),
      .powerdown6_ext                     (powerdown6_ext          ),
      .powerdown7_ext                     (powerdown7_ext          ),
      .rxpolarity0_ext                    (rxpolarity0_ext         ),
      .rxpolarity1_ext                    (rxpolarity1_ext         ),
      .rxpolarity2_ext                    (rxpolarity2_ext         ),
      .rxpolarity3_ext                    (rxpolarity3_ext         ),
      .rxpolarity4_ext                    (rxpolarity4_ext         ),
      .rxpolarity5_ext                    (rxpolarity5_ext         ),
      .rxpolarity6_ext                    (rxpolarity6_ext         ),
      .rxpolarity7_ext                    (rxpolarity7_ext         ),
      .txcompl0_ext                       (txcompl0_ext            ),
      .txcompl1_ext                       (txcompl1_ext            ),
      .txcompl2_ext                       (txcompl2_ext            ),
      .txcompl3_ext                       (txcompl3_ext            ),
      .txcompl4_ext                       (txcompl4_ext            ),
      .txcompl5_ext                       (txcompl5_ext            ),
      .txcompl6_ext                       (txcompl6_ext            ),
      .txcompl7_ext                       (txcompl7_ext            ),
      .txdata0_ext                        (txdata0_ext             ),
      .txdata1_ext                        (txdata1_ext             ),
      .txdata2_ext                        (txdata2_ext             ),
      .txdata3_ext                        (txdata3_ext             ),
      .txdata4_ext                        (txdata4_ext             ),
      .txdata5_ext                        (txdata5_ext             ),
      .txdata6_ext                        (txdata6_ext             ),
      .txdata7_ext                        (txdata7_ext             ),
      .txdatak0_ext                       (txdatak0_ext            ),
      .txdatak1_ext                       (txdatak1_ext            ),
      .txdatak2_ext                       (txdatak2_ext            ),
      .txdatak3_ext                       (txdatak3_ext            ),
      .txdatak4_ext                       (txdatak4_ext            ),
      .txdatak5_ext                       (txdatak5_ext            ),
      .txdatak6_ext                       (txdatak6_ext            ),
      .txdatak7_ext                       (txdatak7_ext            ),
      //.txdatavalid0_ext                   (txdatavalid0_ext        ),
      //.txdatavalid1_ext                   (txdatavalid1_ext        ),
      //.txdatavalid2_ext                   (txdatavalid2_ext        ),
      //.txdatavalid3_ext                   (txdatavalid3_ext        ),
      //.txdatavalid4_ext                   (txdatavalid4_ext        ),
      //.txdatavalid5_ext                   (txdatavalid5_ext        ),
      //.txdatavalid6_ext                   (txdatavalid6_ext        ),
      //.txdatavalid7_ext                   (txdatavalid7_ext        ),
      .txdetectrx0_ext                    (txdetectrx0_ext         ),
      .txdetectrx1_ext                    (txdetectrx1_ext         ),
      .txdetectrx2_ext                    (txdetectrx2_ext         ),
      .txdetectrx3_ext                    (txdetectrx3_ext         ),
      .txdetectrx4_ext                    (txdetectrx4_ext         ),
      .txdetectrx5_ext                    (txdetectrx5_ext         ),
      .txdetectrx6_ext                    (txdetectrx6_ext         ),
      .txdetectrx7_ext                    (txdetectrx7_ext         ),
      .txelecidle0_ext                    (txelecidle0_ext         ),
      .txelecidle1_ext                    (txelecidle1_ext         ),
      .txelecidle2_ext                    (txelecidle2_ext         ),
      .txelecidle3_ext                    (txelecidle3_ext         ),
      .txelecidle4_ext                    (txelecidle4_ext         ),
      .txelecidle5_ext                    (txelecidle5_ext         ),
      .txelecidle6_ext                    (txelecidle6_ext         ),
      .txelecidle7_ext                    (txelecidle7_ext         ),
      .txmargin0_ext                      (txmargin0_ext           ),
      .txmargin1_ext                      (txmargin1_ext           ),
      .txmargin2_ext                      (txmargin2_ext           ),
      .txmargin3_ext                      (txmargin3_ext           ),
      .txmargin4_ext                      (txmargin4_ext           ),
      .txmargin5_ext                      (txmargin5_ext           ),
      .txmargin6_ext                      (txmargin6_ext           ),
      .txmargin7_ext                      (txmargin7_ext           ),
      .txdeemph0_ext                      (txdeemph0_ext           ),
      .txdeemph1_ext                      (txdeemph1_ext           ),
      .txdeemph2_ext                      (txdeemph2_ext           ),
      .txdeemph3_ext                      (txdeemph3_ext           ),
      .txdeemph4_ext                      (txdeemph4_ext           ),
      .txdeemph5_ext                      (txdeemph5_ext           ),
      .txdeemph6_ext                      (txdeemph6_ext           ),
      .txdeemph7_ext                      (txdeemph7_ext           ),
      .txswing0_ext                       (txswing0_ext            ),
      .txswing1_ext                       (txswing1_ext            ),
      .txswing2_ext                       (txswing2_ext            ),
      .txswing3_ext                       (txswing3_ext            ),
      .txswing4_ext                       (txswing4_ext            ),
      .txswing5_ext                       (txswing5_ext            ),
      .txswing6_ext                       (txswing6_ext            ),
      .txswing7_ext                       (txswing7_ext            ),
      .txblkst0_ext                       (txblkst0_ext            ),
      .txblkst1_ext                       (txblkst1_ext            ),
      .txblkst2_ext                       (txblkst2_ext            ),
      .txblkst3_ext                       (txblkst3_ext            ),
      .txblkst4_ext                       (txblkst4_ext            ),
      .txblkst5_ext                       (txblkst5_ext            ),
      .txblkst6_ext                       (txblkst6_ext            ),
      .txblkst7_ext                       (txblkst7_ext            ),
      .txsynchd0_ext                      (txsynchd0_ext           ),
      .txsynchd1_ext                      (txsynchd1_ext           ),
      .txsynchd2_ext                      (txsynchd2_ext           ),
      .txsynchd3_ext                      (txsynchd3_ext           ),
      .txsynchd4_ext                      (txsynchd4_ext           ),
      .txsynchd5_ext                      (txsynchd5_ext           ),
      .txsynchd6_ext                      (txsynchd6_ext           ),
      .txsynchd7_ext                      (txsynchd7_ext           ),
      .currentcoeff0_ext                  (currentcoeff0_ext       ),
      .currentcoeff1_ext                  (currentcoeff1_ext       ),
      .currentcoeff2_ext                  (currentcoeff2_ext       ),
      .currentcoeff3_ext                  (currentcoeff3_ext       ),
      .currentcoeff4_ext                  (currentcoeff4_ext       ),
      .currentcoeff5_ext                  (currentcoeff5_ext       ),
      .currentcoeff6_ext                  (currentcoeff6_ext       ),
      .currentcoeff7_ext                  (currentcoeff7_ext       ),
      .currentrxpreset0_ext               (currentrxpreset0_ext    ),
      .currentrxpreset1_ext               (currentrxpreset1_ext    ),
      .currentrxpreset2_ext               (currentrxpreset2_ext    ),
      .currentrxpreset3_ext               (currentrxpreset3_ext    ),
      .currentrxpreset4_ext               (currentrxpreset4_ext    ),
      .currentrxpreset5_ext               (currentrxpreset5_ext    ),
      .currentrxpreset6_ext               (currentrxpreset6_ext    ),
      .currentrxpreset7_ext               (currentrxpreset7_ext    )

      );


   altpcietb_bfm_rxpipe_8bit_to_32_bit altpcietb_bfm_rxpipe_8bit_to_32_bit (
      // Input PIPE simulation _ext for simulation only
      .sim_pipe8_pclk                  (pclk_in),
      .aclr                            (npor_int),

      .phystatus0_ext                   (phystatus0_ext                   ),
      .phystatus1_ext                   (phystatus1_ext                   ),
      .phystatus2_ext                   (phystatus2_ext                   ),
      .phystatus3_ext                   (phystatus3_ext                   ),
      .phystatus4_ext                   (phystatus4_ext                   ),
      .phystatus5_ext                   (phystatus5_ext                   ),
      .phystatus6_ext                   (phystatus6_ext                   ),
      .phystatus7_ext                   (phystatus7_ext                   ),
      .rxdata0_ext                      (rxdata0_ext                      ),
      .rxdata1_ext                      (rxdata1_ext                      ),
      .rxdata2_ext                      (rxdata2_ext                      ),
      .rxdata3_ext                      (rxdata3_ext                      ),
      .rxdata4_ext                      (rxdata4_ext                      ),
      .rxdata5_ext                      (rxdata5_ext                      ),
      .rxdata6_ext                      (rxdata6_ext                      ),
      .rxdata7_ext                      (rxdata7_ext                      ),
      .rxdatak0_ext                     (rxdatak0_ext                     ),
      .rxdatak1_ext                     (rxdatak1_ext                     ),
      .rxdatak2_ext                     (rxdatak2_ext                     ),
      .rxdatak3_ext                     (rxdatak3_ext                     ),
      .rxdatak4_ext                     (rxdatak4_ext                     ),
      .rxdatak5_ext                     (rxdatak5_ext                     ),
      .rxdatak6_ext                     (rxdatak6_ext                     ),
      .rxdatak7_ext                     (rxdatak7_ext                     ),
      .rxelecidle0_ext                  (rxelecidle0_ext                  ),
      .rxelecidle1_ext                  (rxelecidle1_ext                  ),
      .rxelecidle2_ext                  (rxelecidle2_ext                  ),
      .rxelecidle3_ext                  (rxelecidle3_ext                  ),
      .rxelecidle4_ext                  (rxelecidle4_ext                  ),
      .rxelecidle5_ext                  (rxelecidle5_ext                  ),
      .rxelecidle6_ext                  (rxelecidle6_ext                  ),
      .rxelecidle7_ext                  (rxelecidle7_ext                  ),
      .rxfreqlocked0_ext                (rxfreqlocked0_ext                ),
      .rxfreqlocked1_ext                (rxfreqlocked1_ext                ),
      .rxfreqlocked2_ext                (rxfreqlocked2_ext                ),
      .rxfreqlocked3_ext                (rxfreqlocked3_ext                ),
      .rxfreqlocked4_ext                (rxfreqlocked4_ext                ),
      .rxfreqlocked5_ext                (rxfreqlocked5_ext                ),
      .rxfreqlocked6_ext                (rxfreqlocked6_ext                ),
      .rxfreqlocked7_ext                (rxfreqlocked7_ext                ),
      .rxstatus0_ext                    (rxstatus0_ext                    ),
      .rxstatus1_ext                    (rxstatus1_ext                    ),
      .rxstatus2_ext                    (rxstatus2_ext                    ),
      .rxstatus3_ext                    (rxstatus3_ext                    ),
      .rxstatus4_ext                    (rxstatus4_ext                    ),
      .rxstatus5_ext                    (rxstatus5_ext                    ),
      .rxstatus6_ext                    (rxstatus6_ext                    ),
      .rxstatus7_ext                    (rxstatus7_ext                    ),
      .rxdataskip0_ext                  (rxdataskip0_ext                  ),
      .rxdataskip1_ext                  (rxdataskip1_ext                  ),
      .rxdataskip2_ext                  (rxdataskip2_ext                  ),
      .rxdataskip3_ext                  (rxdataskip3_ext                  ),
      .rxdataskip4_ext                  (rxdataskip4_ext                  ),
      .rxdataskip5_ext                  (rxdataskip5_ext                  ),
      .rxdataskip6_ext                  (rxdataskip6_ext                  ),
      .rxdataskip7_ext                  (rxdataskip7_ext                  ),
      .rxblkst0_ext                     (rxblkst0_ext                     ),
      .rxblkst1_ext                     (rxblkst1_ext                     ),
      .rxblkst2_ext                     (rxblkst2_ext                     ),
      .rxblkst3_ext                     (rxblkst3_ext                     ),
      .rxblkst4_ext                     (rxblkst4_ext                     ),
      .rxblkst5_ext                     (rxblkst5_ext                     ),
      .rxblkst6_ext                     (rxblkst6_ext                     ),
      .rxblkst7_ext                     (rxblkst7_ext                     ),
      .rxsynchd0_ext                    (rxsynchd0_ext                    ),
      .rxsynchd1_ext                    (rxsynchd1_ext                    ),
      .rxsynchd2_ext                    (rxsynchd2_ext                    ),
      .rxsynchd3_ext                    (rxsynchd3_ext                    ),
      .rxsynchd4_ext                    (rxsynchd4_ext                    ),
      .rxsynchd5_ext                    (rxsynchd5_ext                    ),
      .rxsynchd6_ext                    (rxsynchd6_ext                    ),
      .rxsynchd7_ext                    (rxsynchd7_ext                    ),
      .rxvalid0_ext                     (rxvalid0_ext                     ),
      .rxvalid1_ext                     (rxvalid1_ext                     ),
      .rxvalid2_ext                     (rxvalid2_ext                     ),
      .rxvalid3_ext                     (rxvalid3_ext                     ),
      .rxvalid4_ext                     (rxvalid4_ext                     ),
      .rxvalid5_ext                     (rxvalid5_ext                     ),
      .rxvalid6_ext                     (rxvalid6_ext                     ),
      .rxvalid7_ext                     (rxvalid7_ext                     ),

      .sim_pipe32_pclk                  (sim_pipe32_pclk                  ),
      .phystatus0_ext32b                (phystatus0_ext32b                ),
      .phystatus1_ext32b                (phystatus1_ext32b                ),
      .phystatus2_ext32b                (phystatus2_ext32b                ),
      .phystatus3_ext32b                (phystatus3_ext32b                ),
      .phystatus4_ext32b                (phystatus4_ext32b                ),
      .phystatus5_ext32b                (phystatus5_ext32b                ),
      .phystatus6_ext32b                (phystatus6_ext32b                ),
      .phystatus7_ext32b                (phystatus7_ext32b                ),
      .rxdata0_ext32b                   (rxdata0_ext32b                   ),
      .rxdata1_ext32b                   (rxdata1_ext32b                   ),
      .rxdata2_ext32b                   (rxdata2_ext32b                   ),
      .rxdata3_ext32b                   (rxdata3_ext32b                   ),
      .rxdata4_ext32b                   (rxdata4_ext32b                   ),
      .rxdata5_ext32b                   (rxdata5_ext32b                   ),
      .rxdata6_ext32b                   (rxdata6_ext32b                   ),
      .rxdata7_ext32b                   (rxdata7_ext32b                   ),
      .rxdatak0_ext32b                  (rxdatak0_ext32b                  ),
      .rxdatak1_ext32b                  (rxdatak1_ext32b                  ),
      .rxdatak2_ext32b                  (rxdatak2_ext32b                  ),
      .rxdatak3_ext32b                  (rxdatak3_ext32b                  ),
      .rxdatak4_ext32b                  (rxdatak4_ext32b                  ),
      .rxdatak5_ext32b                  (rxdatak5_ext32b                  ),
      .rxdatak6_ext32b                  (rxdatak6_ext32b                  ),
      .rxdatak7_ext32b                  (rxdatak7_ext32b                  ),
      .rxelecidle0_ext32b               (rxelecidle0_ext32b               ),
      .rxelecidle1_ext32b               (rxelecidle1_ext32b               ),
      .rxelecidle2_ext32b               (rxelecidle2_ext32b               ),
      .rxelecidle3_ext32b               (rxelecidle3_ext32b               ),
      .rxelecidle4_ext32b               (rxelecidle4_ext32b               ),
      .rxelecidle5_ext32b               (rxelecidle5_ext32b               ),
      .rxelecidle6_ext32b               (rxelecidle6_ext32b               ),
      .rxelecidle7_ext32b               (rxelecidle7_ext32b               ),
      .rxfreqlocked0_ext32b             (rxfreqlocked0_ext32b             ),
      .rxfreqlocked1_ext32b             (rxfreqlocked1_ext32b             ),
      .rxfreqlocked2_ext32b             (rxfreqlocked2_ext32b             ),
      .rxfreqlocked3_ext32b             (rxfreqlocked3_ext32b             ),
      .rxfreqlocked4_ext32b             (rxfreqlocked4_ext32b             ),
      .rxfreqlocked5_ext32b             (rxfreqlocked5_ext32b             ),
      .rxfreqlocked6_ext32b             (rxfreqlocked6_ext32b             ),
      .rxfreqlocked7_ext32b             (rxfreqlocked7_ext32b             ),
      .rxstatus0_ext32b                 (rxstatus0_ext32b                 ),
      .rxstatus1_ext32b                 (rxstatus1_ext32b                 ),
      .rxstatus2_ext32b                 (rxstatus2_ext32b                 ),
      .rxstatus3_ext32b                 (rxstatus3_ext32b                 ),
      .rxstatus4_ext32b                 (rxstatus4_ext32b                 ),
      .rxstatus5_ext32b                 (rxstatus5_ext32b                 ),
      .rxstatus6_ext32b                 (rxstatus6_ext32b                 ),
      .rxstatus7_ext32b                 (rxstatus7_ext32b                 ),
      .rxdataskip0_ext32b               (rxdataskip0_ext32b               ),
      .rxdataskip1_ext32b               (rxdataskip1_ext32b               ),
      .rxdataskip2_ext32b               (rxdataskip2_ext32b               ),
      .rxdataskip3_ext32b               (rxdataskip3_ext32b               ),
      .rxdataskip4_ext32b               (rxdataskip4_ext32b               ),
      .rxdataskip5_ext32b               (rxdataskip5_ext32b               ),
      .rxdataskip6_ext32b               (rxdataskip6_ext32b               ),
      .rxdataskip7_ext32b               (rxdataskip7_ext32b               ),
      .rxblkst0_ext32b                  (rxblkst0_ext32b                  ),
      .rxblkst1_ext32b                  (rxblkst1_ext32b                  ),
      .rxblkst2_ext32b                  (rxblkst2_ext32b                  ),
      .rxblkst3_ext32b                  (rxblkst3_ext32b                  ),
      .rxblkst4_ext32b                  (rxblkst4_ext32b                  ),
      .rxblkst5_ext32b                  (rxblkst5_ext32b                  ),
      .rxblkst6_ext32b                  (rxblkst6_ext32b                  ),
      .rxblkst7_ext32b                  (rxblkst7_ext32b                  ),
      .rxsynchd0_ext32b                 (rxsynchd0_ext32b                 ),
      .rxsynchd1_ext32b                 (rxsynchd1_ext32b                 ),
      .rxsynchd2_ext32b                 (rxsynchd2_ext32b                 ),
      .rxsynchd3_ext32b                 (rxsynchd3_ext32b                 ),
      .rxsynchd4_ext32b                 (rxsynchd4_ext32b                 ),
      .rxsynchd5_ext32b                 (rxsynchd5_ext32b                 ),
      .rxsynchd6_ext32b                 (rxsynchd6_ext32b                 ),
      .rxsynchd7_ext32b                 (rxsynchd7_ext32b                 ),
      .rxvalid0_ext32b                  (rxvalid0_ext32b                  ),
      .rxvalid1_ext32b                  (rxvalid1_ext32b                  ),
      .rxvalid2_ext32b                  (rxvalid2_ext32b                  ),
      .rxvalid3_ext32b                  (rxvalid3_ext32b                  ),
      .rxvalid4_ext32b                  (rxvalid4_ext32b                  ),
      .rxvalid5_ext32b                  (rxvalid5_ext32b                  ),
      .rxvalid6_ext32b                  (rxvalid6_ext32b                  ),
      .rxvalid7_ext32b                  (rxvalid7_ext32b                  )
      );

   generate
      begin : g_simu_hard_rst
         for (i=LANES+1;i<12;i=i+1) begin : g_serdes_rst
            assign  frefclk[i]            = 1'b1;// HIP input
            assign  offcaldone[i]         = 1'b1;// HIP input
            assign  txlcplllock[i]        = 1'b1;// HIP input
            //assign  rxfreqtxcmuplllock[i] = 1'b1;// HIP input
            //assign  rxpllphaselock[i]     = 1'b1;// HIP input
            assign  masktxplllock[i]      = 1'b1;// HIP input
         end
      end
   endgenerate
// synthesis translate_on

   // PCIe Toolkit inst
   generate if (pcie_toolkit_enable == "true") begin
         altpcie_ptk  #(
            .pcie_mode                        (pcie_mode),
            .ltssmstate_num                   (36),
            .LANES                            (LANES)
         ) ptk_inst (
            .pld_clk_i                        (pld_clk),
            .pld_rstn_i                       (npor_sync),
            .avmm_clk_i                       (avmm_clk),
            .avmm_rstn_i                      (avmm_rst_n),
            .avmm_read_i                      (avmm_read),
            .avmm_write_i                     (avmm_write),
            .avmm_address_i                   (avmm_address[9:0]),
            .avmm_writedata_i                 (avmm_writedata),
            .avmm_byte_en_i                   (avmm_byte_en),
            .avmm_readdata_o                  (avmm_readdata_ptk),
            .avmm_readdata_hip_i              (avmm_readdata_hip),
            .ltssmstate_i                     (ltssmstate_int),
            .currentspeed_i                   (currentspeed),
            .signaldetect_i                   (serdes_rx_signaldetect),
            .is_lockedtodata_i                (serdes_rx_is_lockedtodata),
            .tl_cfg_sts_i                     (tl_cfg_sts),
            .tl_cfg_add_i                     (tl_cfg_add),
            .tl_cfg_ctl_i                     (tl_cfg_ctl)
         );
      end
      else begin
         assign avmm_readdata_ptk = 32'h0; // Remove warning
      end
   endgenerate

   assign avmm_readdata = (pcie_toolkit_enable=="true")? avmm_readdata_ptk:{16'b0,avmm_readdata_hip};

endmodule



// synthesis translate_off
`timescale 1ns / 1ps
// For Mentor cosim
`ifdef ALTPCIETB_COSIM_MENTOR

module global (in, out);
    input in;
    output out;

    assign out = in;
endmodule

`endif
////////////////////////////////////////////////////////////
//
// 32 to 8 bit pipe simulation conversion
//
module altpcietb_bfm_rxpipe_8bit_to_32_bit (
      // Input PIPE simulation _ext for simulation only
      input                 sim_pipe8_pclk,
      input                 aclr,

      input                 phystatus0_ext,
      input                 phystatus1_ext,
      input                 phystatus2_ext,
      input                 phystatus3_ext,
      input                 phystatus4_ext,
      input                 phystatus5_ext,
      input                 phystatus6_ext,
      input                 phystatus7_ext,
      input  [7 : 0]        rxdata0_ext,
      input  [7 : 0]        rxdata1_ext,
      input  [7 : 0]        rxdata2_ext,
      input  [7 : 0]        rxdata3_ext,
      input  [7 : 0]        rxdata4_ext,
      input  [7 : 0]        rxdata5_ext,
      input  [7 : 0]        rxdata6_ext,
      input  [7 : 0]        rxdata7_ext,
      input                 rxdatak0_ext,
      input                 rxdatak1_ext,
      input                 rxdatak2_ext,
      input                 rxdatak3_ext,
      input                 rxdatak4_ext,
      input                 rxdatak5_ext,
      input                 rxdatak6_ext,
      input                 rxdatak7_ext,
      input                 rxelecidle0_ext,
      input                 rxelecidle1_ext,
      input                 rxelecidle2_ext,
      input                 rxelecidle3_ext,
      input                 rxelecidle4_ext,
      input                 rxelecidle5_ext,
      input                 rxelecidle6_ext,
      input                 rxelecidle7_ext,
      input                 rxfreqlocked0_ext,
      input                 rxfreqlocked1_ext,
      input                 rxfreqlocked2_ext,
      input                 rxfreqlocked3_ext,
      input                 rxfreqlocked4_ext,
      input                 rxfreqlocked5_ext,
      input                 rxfreqlocked6_ext,
      input                 rxfreqlocked7_ext,
      input  [2 : 0]        rxstatus0_ext,
      input  [2 : 0]        rxstatus1_ext,
      input  [2 : 0]        rxstatus2_ext,
      input  [2 : 0]        rxstatus3_ext,
      input  [2 : 0]        rxstatus4_ext,
      input  [2 : 0]        rxstatus5_ext,
      input  [2 : 0]        rxstatus6_ext,
      input  [2 : 0]        rxstatus7_ext,
      input                 rxdataskip0_ext,
      input                 rxdataskip1_ext,
      input                 rxdataskip2_ext,
      input                 rxdataskip3_ext,
      input                 rxdataskip4_ext,
      input                 rxdataskip5_ext,
      input                 rxdataskip6_ext,
      input                 rxdataskip7_ext,
      input                 rxblkst0_ext,
      input                 rxblkst1_ext,
      input                 rxblkst2_ext,
      input                 rxblkst3_ext,
      input                 rxblkst4_ext,
      input                 rxblkst5_ext,
      input                 rxblkst6_ext,
      input                 rxblkst7_ext,
      input  [1 : 0]        rxsynchd0_ext,
      input  [1 : 0]        rxsynchd1_ext,
      input  [1 : 0]        rxsynchd2_ext,
      input  [1 : 0]        rxsynchd3_ext,
      input  [1 : 0]        rxsynchd4_ext,
      input  [1 : 0]        rxsynchd5_ext,
      input  [1 : 0]        rxsynchd6_ext,
      input  [1 : 0]        rxsynchd7_ext,
      input                 rxvalid0_ext,
      input                 rxvalid1_ext,
      input                 rxvalid2_ext,
      input                 rxvalid3_ext,
      input                 rxvalid4_ext,
      input                 rxvalid5_ext,
      input                 rxvalid6_ext,
      input                 rxvalid7_ext,

      output                    sim_pipe32_pclk,
      output reg                phystatus0_ext32b,
      output reg                phystatus1_ext32b,
      output reg                phystatus2_ext32b,
      output reg                phystatus3_ext32b,
      output reg                phystatus4_ext32b,
      output reg                phystatus5_ext32b,
      output reg                phystatus6_ext32b,
      output reg                phystatus7_ext32b,
      output reg [31 : 0]       rxdata0_ext32b,
      output reg [31 : 0]       rxdata1_ext32b,
      output reg [31 : 0]       rxdata2_ext32b,
      output reg [31 : 0]       rxdata3_ext32b,
      output reg [31 : 0]       rxdata4_ext32b,
      output reg [31 : 0]       rxdata5_ext32b,
      output reg [31 : 0]       rxdata6_ext32b,
      output reg [31 : 0]       rxdata7_ext32b,
      output reg [3  : 0]       rxdatak0_ext32b,
      output reg [3  : 0]       rxdatak1_ext32b,
      output reg [3  : 0]       rxdatak2_ext32b,
      output reg [3  : 0]       rxdatak3_ext32b,
      output reg [3  : 0]       rxdatak4_ext32b,
      output reg [3  : 0]       rxdatak5_ext32b,
      output reg [3  : 0]       rxdatak6_ext32b,
      output reg [3  : 0]       rxdatak7_ext32b,
      output reg                rxelecidle0_ext32b,
      output reg                rxelecidle1_ext32b,
      output reg                rxelecidle2_ext32b,
      output reg                rxelecidle3_ext32b,
      output reg                rxelecidle4_ext32b,
      output reg                rxelecidle5_ext32b,
      output reg                rxelecidle6_ext32b,
      output reg                rxelecidle7_ext32b,
      output reg                rxfreqlocked0_ext32b,
      output reg                rxfreqlocked1_ext32b,
      output reg                rxfreqlocked2_ext32b,
      output reg                rxfreqlocked3_ext32b,
      output reg                rxfreqlocked4_ext32b,
      output reg                rxfreqlocked5_ext32b,
      output reg                rxfreqlocked6_ext32b,
      output reg                rxfreqlocked7_ext32b,
      output reg [2 : 0]        rxstatus0_ext32b,
      output reg [2 : 0]        rxstatus1_ext32b,
      output reg [2 : 0]        rxstatus2_ext32b,
      output reg [2 : 0]        rxstatus3_ext32b,
      output reg [2 : 0]        rxstatus4_ext32b,
      output reg [2 : 0]        rxstatus5_ext32b,
      output reg [2 : 0]        rxstatus6_ext32b,
      output reg [2 : 0]        rxstatus7_ext32b,
      output reg                rxdataskip0_ext32b,
      output reg                rxdataskip1_ext32b,
      output reg                rxdataskip2_ext32b,
      output reg                rxdataskip3_ext32b,
      output reg                rxdataskip4_ext32b,
      output reg                rxdataskip5_ext32b,
      output reg                rxdataskip6_ext32b,
      output reg                rxdataskip7_ext32b,
      output reg                rxblkst0_ext32b,
      output reg                rxblkst1_ext32b,
      output reg                rxblkst2_ext32b,
      output reg                rxblkst3_ext32b,
      output reg                rxblkst4_ext32b,
      output reg                rxblkst5_ext32b,
      output reg                rxblkst6_ext32b,
      output reg                rxblkst7_ext32b,
      output reg [1 : 0]        rxsynchd0_ext32b,
      output reg [1 : 0]        rxsynchd1_ext32b,
      output reg [1 : 0]        rxsynchd2_ext32b,
      output reg [1 : 0]        rxsynchd3_ext32b,
      output reg [1 : 0]        rxsynchd4_ext32b,
      output reg [1 : 0]        rxsynchd5_ext32b,
      output reg [1 : 0]        rxsynchd6_ext32b,
      output reg [1 : 0]        rxsynchd7_ext32b,
      output reg                rxvalid0_ext32b,
      output reg                rxvalid1_ext32b,
      output reg                rxvalid2_ext32b,
      output reg                rxvalid3_ext32b,
      output reg                rxvalid4_ext32b,
      output reg                rxvalid5_ext32b,
      output reg                rxvalid6_ext32b,
      output reg                rxvalid7_ext32b
      );

   reg [1:0] cnt;
   reg [1:0] cnt_rx;
   genvar i;

   reg [23 : 0]       rxdata0_ext_i_32b;
   reg [23 : 0]       rxdata1_ext_i_32b;
   reg [23 : 0]       rxdata2_ext_i_32b;
   reg [23 : 0]       rxdata3_ext_i_32b;
   reg [23 : 0]       rxdata4_ext_i_32b;
   reg [23 : 0]       rxdata5_ext_i_32b;
   reg [23 : 0]       rxdata6_ext_i_32b;
   reg [23 : 0]       rxdata7_ext_i_32b;
   reg [2  : 0]       rxdatak0_ext_i_32b;
   reg [2  : 0]       rxdatak1_ext_i_32b;
   reg [2  : 0]       rxdatak2_ext_i_32b;
   reg [2  : 0]       rxdatak3_ext_i_32b;
   reg [2  : 0]       rxdatak4_ext_i_32b;
   reg [2  : 0]       rxdatak5_ext_i_32b;
   reg [2  : 0]       rxdatak6_ext_i_32b;
   reg [2  : 0]       rxdatak7_ext_i_32b;

   reg                phystatus0_ext_r_32b;
   reg                phystatus1_ext_r_32b;
   reg                phystatus2_ext_r_32b;
   reg                phystatus3_ext_r_32b;
   reg                phystatus4_ext_r_32b;
   reg                phystatus5_ext_r_32b;
   reg                phystatus6_ext_r_32b;
   reg                phystatus7_ext_r_32b;
   reg [31 : 0]       rxdata0_ext_r_32b;
   reg [31 : 0]       rxdata1_ext_r_32b;
   reg [31 : 0]       rxdata2_ext_r_32b;
   reg [31 : 0]       rxdata3_ext_r_32b;
   reg [31 : 0]       rxdata4_ext_r_32b;
   reg [31 : 0]       rxdata5_ext_r_32b;
   reg [31 : 0]       rxdata6_ext_r_32b;
   reg [31 : 0]       rxdata7_ext_r_32b;
   reg [3  : 0]       rxdatak0_ext_r_32b;
   reg [3  : 0]       rxdatak1_ext_r_32b;
   reg [3  : 0]       rxdatak2_ext_r_32b;
   reg [3  : 0]       rxdatak3_ext_r_32b;
   reg [3  : 0]       rxdatak4_ext_r_32b;
   reg [3  : 0]       rxdatak5_ext_r_32b;
   reg [3  : 0]       rxdatak6_ext_r_32b;
   reg [3  : 0]       rxdatak7_ext_r_32b;
   reg                rxelecidle0_ext_r_32b;
   reg                rxelecidle1_ext_r_32b;
   reg                rxelecidle2_ext_r_32b;
   reg                rxelecidle3_ext_r_32b;
   reg                rxelecidle4_ext_r_32b;
   reg                rxelecidle5_ext_r_32b;
   reg                rxelecidle6_ext_r_32b;
   reg                rxelecidle7_ext_r_32b;
   reg                rxfreqlocked0_ext_r_32b;
   reg                rxfreqlocked1_ext_r_32b;
   reg                rxfreqlocked2_ext_r_32b;
   reg                rxfreqlocked3_ext_r_32b;
   reg                rxfreqlocked4_ext_r_32b;
   reg                rxfreqlocked5_ext_r_32b;
   reg                rxfreqlocked6_ext_r_32b;
   reg                rxfreqlocked7_ext_r_32b;
   reg [2 : 0]        rxstatus0_ext_r_32b;
   reg [2 : 0]        rxstatus1_ext_r_32b;
   reg [2 : 0]        rxstatus2_ext_r_32b;
   reg [2 : 0]        rxstatus3_ext_r_32b;
   reg [2 : 0]        rxstatus4_ext_r_32b;
   reg [2 : 0]        rxstatus5_ext_r_32b;
   reg [2 : 0]        rxstatus6_ext_r_32b;
   reg [2 : 0]        rxstatus7_ext_r_32b;
   reg                rxdataskip0_ext_r_32b;
   reg                rxdataskip1_ext_r_32b;
   reg                rxdataskip2_ext_r_32b;
   reg                rxdataskip3_ext_r_32b;
   reg                rxdataskip4_ext_r_32b;
   reg                rxdataskip5_ext_r_32b;
   reg                rxdataskip6_ext_r_32b;
   reg                rxdataskip7_ext_r_32b;
   reg                rxblkst0_ext_r_32b;
   reg                rxblkst1_ext_r_32b;
   reg                rxblkst2_ext_r_32b;
   reg                rxblkst3_ext_r_32b;
   reg                rxblkst4_ext_r_32b;
   reg                rxblkst5_ext_r_32b;
   reg                rxblkst6_ext_r_32b;
   reg                rxblkst7_ext_r_32b;
   reg [1 : 0]        rxsynchd0_ext_r_32b;
   reg [1 : 0]        rxsynchd1_ext_r_32b;
   reg [1 : 0]        rxsynchd2_ext_r_32b;
   reg [1 : 0]        rxsynchd3_ext_r_32b;
   reg [1 : 0]        rxsynchd4_ext_r_32b;
   reg [1 : 0]        rxsynchd5_ext_r_32b;
   reg [1 : 0]        rxsynchd6_ext_r_32b;
   reg [1 : 0]        rxsynchd7_ext_r_32b;
   reg                rxvalid0_ext_r_32b;
   reg                rxvalid1_ext_r_32b;
   reg                rxvalid2_ext_r_32b;
   reg                rxvalid3_ext_r_32b;
   reg                rxvalid4_ext_r_32b;
   reg                rxvalid5_ext_r_32b;
   reg                rxvalid6_ext_r_32b;
   reg                rxvalid7_ext_r_32b;

   assign sim_pipe32_pclk = cnt[1];

   assign rxvalid_ext =  |{rxvalid7_ext,rxvalid6_ext,rxvalid5_ext,rxvalid4_ext,
                           rxvalid3_ext,rxvalid2_ext,rxvalid1_ext,rxvalid0_ext};

   always @(posedge sim_pipe32_pclk or negedge aclr) begin
      if (aclr == 1'b0) begin
        phystatus0_ext32b<=          1'b0;
        phystatus1_ext32b<=          1'b0;
        phystatus2_ext32b<=          1'b0;
        phystatus3_ext32b<=          1'b0;
        phystatus4_ext32b<=          1'b0;
        phystatus5_ext32b<=          1'b0;
        phystatus6_ext32b<=          1'b0;
        phystatus7_ext32b<=          1'b0;
        rxdata0_ext32b<=             0;
        rxdata1_ext32b<=             0;
        rxdata2_ext32b<=             0;
        rxdata3_ext32b<=             0;
        rxdata4_ext32b<=             0;
        rxdata5_ext32b<=             0;
        rxdata6_ext32b<=             0;
        rxdata7_ext32b<=             0;
        rxdatak0_ext32b<=            0;
        rxdatak1_ext32b<=            0;
        rxdatak2_ext32b<=            0;
        rxdatak3_ext32b<=            0;
        rxdatak4_ext32b<=            0;
        rxdatak5_ext32b<=            0;
        rxdatak6_ext32b<=            0;
        rxdatak7_ext32b<=            0;
        rxelecidle0_ext32b<=         0;
        rxelecidle1_ext32b<=         0;
        rxelecidle2_ext32b<=         0;
        rxelecidle3_ext32b<=         0;
        rxelecidle4_ext32b<=         0;
        rxelecidle5_ext32b<=         0;
        rxelecidle6_ext32b<=         0;
        rxelecidle7_ext32b<=         0;
        rxfreqlocked0_ext32b<=       0;
        rxfreqlocked1_ext32b<=       0;
        rxfreqlocked2_ext32b<=       0;
        rxfreqlocked3_ext32b<=       0;
        rxfreqlocked4_ext32b<=       0;
        rxfreqlocked5_ext32b<=       0;
        rxfreqlocked6_ext32b<=       0;
        rxfreqlocked7_ext32b<=       0;
        rxstatus0_ext32b<=           0;
        rxstatus1_ext32b<=           0;
        rxstatus2_ext32b<=           0;
        rxstatus3_ext32b<=           0;
        rxstatus4_ext32b<=           0;
        rxstatus5_ext32b<=           0;
        rxstatus6_ext32b<=           0;
        rxstatus7_ext32b<=           0;
        rxdataskip0_ext32b<=         0;
        rxdataskip1_ext32b<=         0;
        rxdataskip2_ext32b<=         0;
        rxdataskip3_ext32b<=         0;
        rxdataskip4_ext32b<=         0;
        rxdataskip5_ext32b<=         0;
        rxdataskip6_ext32b<=         0;
        rxdataskip7_ext32b<=         0;
        rxblkst0_ext32b<=            0;
        rxblkst1_ext32b<=            0;
        rxblkst2_ext32b<=            0;
        rxblkst3_ext32b<=            0;
        rxblkst4_ext32b<=            0;
        rxblkst5_ext32b<=            0;
        rxblkst6_ext32b<=            0;
        rxblkst7_ext32b<=            0;
        rxsynchd0_ext32b<=           0;
        rxsynchd1_ext32b<=           0;
        rxsynchd2_ext32b<=           0;
        rxsynchd3_ext32b<=           0;
        rxsynchd4_ext32b<=           0;
        rxsynchd5_ext32b<=           0;
        rxsynchd6_ext32b<=           0;
        rxsynchd7_ext32b<=           0;
        rxvalid0_ext32b<=            0;
        rxvalid1_ext32b<=            0;
        rxvalid2_ext32b<=            0;
        rxvalid3_ext32b<=            0;
        rxvalid4_ext32b<=            0;
        rxvalid5_ext32b<=            0;
        rxvalid6_ext32b<=            0;
        rxvalid7_ext32b<=            0;
      end
      else begin
        phystatus0_ext32b<=          phystatus0_ext_r_32b;
        phystatus1_ext32b<=          phystatus1_ext_r_32b;
        phystatus2_ext32b<=          phystatus2_ext_r_32b;
        phystatus3_ext32b<=          phystatus3_ext_r_32b;
        phystatus4_ext32b<=          phystatus4_ext_r_32b;
        phystatus5_ext32b<=          phystatus5_ext_r_32b;
        phystatus6_ext32b<=          phystatus6_ext_r_32b;
        phystatus7_ext32b<=          phystatus7_ext_r_32b;
        rxdata0_ext32b<=             rxdata0_ext_r_32b;
        rxdata1_ext32b<=             rxdata1_ext_r_32b;
        rxdata2_ext32b<=             rxdata2_ext_r_32b;
        rxdata3_ext32b<=             rxdata3_ext_r_32b;
        rxdata4_ext32b<=             rxdata4_ext_r_32b;
        rxdata5_ext32b<=             rxdata5_ext_r_32b;
        rxdata6_ext32b<=             rxdata6_ext_r_32b;
        rxdata7_ext32b<=             rxdata7_ext_r_32b;
        rxdatak0_ext32b<=            rxdatak0_ext_r_32b;
        rxdatak1_ext32b<=            rxdatak1_ext_r_32b;
        rxdatak2_ext32b<=            rxdatak2_ext_r_32b;
        rxdatak3_ext32b<=            rxdatak3_ext_r_32b;
        rxdatak4_ext32b<=            rxdatak4_ext_r_32b;
        rxdatak5_ext32b<=            rxdatak5_ext_r_32b;
        rxdatak6_ext32b<=            rxdatak6_ext_r_32b;
        rxdatak7_ext32b<=            rxdatak7_ext_r_32b;
        rxelecidle0_ext32b<=         rxelecidle0_ext_r_32b;
        rxelecidle1_ext32b<=         rxelecidle1_ext_r_32b;
        rxelecidle2_ext32b<=         rxelecidle2_ext_r_32b;
        rxelecidle3_ext32b<=         rxelecidle3_ext_r_32b;
        rxelecidle4_ext32b<=         rxelecidle4_ext_r_32b;
        rxelecidle5_ext32b<=         rxelecidle5_ext_r_32b;
        rxelecidle6_ext32b<=         rxelecidle6_ext_r_32b;
        rxelecidle7_ext32b<=         rxelecidle7_ext_r_32b;
        rxfreqlocked0_ext32b<=       rxfreqlocked0_ext_r_32b;
        rxfreqlocked1_ext32b<=       rxfreqlocked1_ext_r_32b;
        rxfreqlocked2_ext32b<=       rxfreqlocked2_ext_r_32b;
        rxfreqlocked3_ext32b<=       rxfreqlocked3_ext_r_32b;
        rxfreqlocked4_ext32b<=       rxfreqlocked4_ext_r_32b;
        rxfreqlocked5_ext32b<=       rxfreqlocked5_ext_r_32b;
        rxfreqlocked6_ext32b<=       rxfreqlocked6_ext_r_32b;
        rxfreqlocked7_ext32b<=       rxfreqlocked7_ext_r_32b;
        rxstatus0_ext32b<=           rxstatus0_ext_r_32b;
        rxstatus1_ext32b<=           rxstatus1_ext_r_32b;
        rxstatus2_ext32b<=           rxstatus2_ext_r_32b;
        rxstatus3_ext32b<=           rxstatus3_ext_r_32b;
        rxstatus4_ext32b<=           rxstatus4_ext_r_32b;
        rxstatus5_ext32b<=           rxstatus5_ext_r_32b;
        rxstatus6_ext32b<=           rxstatus6_ext_r_32b;
        rxstatus7_ext32b<=           rxstatus7_ext_r_32b;
        rxdataskip0_ext32b<=         rxdataskip0_ext_r_32b;
        rxdataskip1_ext32b<=         rxdataskip1_ext_r_32b;
        rxdataskip2_ext32b<=         rxdataskip2_ext_r_32b;
        rxdataskip3_ext32b<=         rxdataskip3_ext_r_32b;
        rxdataskip4_ext32b<=         rxdataskip4_ext_r_32b;
        rxdataskip5_ext32b<=         rxdataskip5_ext_r_32b;
        rxdataskip6_ext32b<=         rxdataskip6_ext_r_32b;
        rxdataskip7_ext32b<=         rxdataskip7_ext_r_32b;
        rxblkst0_ext32b<=            rxblkst0_ext_r_32b;
        rxblkst1_ext32b<=            rxblkst1_ext_r_32b;
        rxblkst2_ext32b<=            rxblkst2_ext_r_32b;
        rxblkst3_ext32b<=            rxblkst3_ext_r_32b;
        rxblkst4_ext32b<=            rxblkst4_ext_r_32b;
        rxblkst5_ext32b<=            rxblkst5_ext_r_32b;
        rxblkst6_ext32b<=            rxblkst6_ext_r_32b;
        rxblkst7_ext32b<=            rxblkst7_ext_r_32b;
        rxsynchd0_ext32b<=           rxsynchd0_ext_r_32b;
        rxsynchd1_ext32b<=           rxsynchd1_ext_r_32b;
        rxsynchd2_ext32b<=           rxsynchd2_ext_r_32b;
        rxsynchd3_ext32b<=           rxsynchd3_ext_r_32b;
        rxsynchd4_ext32b<=           rxsynchd4_ext_r_32b;
        rxsynchd5_ext32b<=           rxsynchd5_ext_r_32b;
        rxsynchd6_ext32b<=           rxsynchd6_ext_r_32b;
        rxsynchd7_ext32b<=           rxsynchd7_ext_r_32b;
        rxvalid0_ext32b<=            rxvalid0_ext_r_32b;
        rxvalid1_ext32b<=            rxvalid1_ext_r_32b;
        rxvalid2_ext32b<=            rxvalid2_ext_r_32b;
        rxvalid3_ext32b<=            rxvalid3_ext_r_32b;
        rxvalid4_ext32b<=            rxvalid4_ext_r_32b;
        rxvalid5_ext32b<=            rxvalid5_ext_r_32b;
        rxvalid6_ext32b<=            rxvalid6_ext_r_32b;
        rxvalid7_ext32b<=            rxvalid7_ext_r_32b;
      end
   end

   always @(posedge sim_pipe8_pclk or negedge aclr) begin
      if (aclr == 1'b0) begin
         cnt <=4'h0;
         phystatus0_ext_r_32b       <= 0;
         phystatus1_ext_r_32b       <= 0;
         phystatus2_ext_r_32b       <= 0;
         phystatus3_ext_r_32b       <= 0;
         phystatus4_ext_r_32b       <= 0;
         phystatus5_ext_r_32b       <= 0;
         phystatus6_ext_r_32b       <= 0;
         phystatus7_ext_r_32b       <= 0;
         rxelecidle0_ext_r_32b      <= 0;
         rxelecidle1_ext_r_32b      <= 0;
         rxelecidle2_ext_r_32b      <= 0;
         rxelecidle3_ext_r_32b      <= 0;
         rxelecidle4_ext_r_32b      <= 0;
         rxelecidle5_ext_r_32b      <= 0;
         rxelecidle6_ext_r_32b      <= 0;
         rxelecidle7_ext_r_32b      <= 0;
         rxfreqlocked0_ext_r_32b    <= 0;
         rxfreqlocked1_ext_r_32b    <= 0;
         rxfreqlocked2_ext_r_32b    <= 0;
         rxfreqlocked3_ext_r_32b    <= 0;
         rxfreqlocked4_ext_r_32b    <= 0;
         rxfreqlocked5_ext_r_32b    <= 0;
         rxfreqlocked6_ext_r_32b    <= 0;
         rxfreqlocked7_ext_r_32b    <= 0;
         rxstatus0_ext_r_32b        <= 0;
         rxstatus1_ext_r_32b        <= 0;
         rxstatus2_ext_r_32b        <= 0;
         rxstatus3_ext_r_32b        <= 0;
         rxstatus4_ext_r_32b        <= 0;
         rxstatus5_ext_r_32b        <= 0;
         rxstatus6_ext_r_32b        <= 0;
         rxstatus7_ext_r_32b        <= 0;
         rxdataskip0_ext_r_32b      <= 0;
         rxdataskip1_ext_r_32b      <= 0;
         rxdataskip2_ext_r_32b      <= 0;
         rxdataskip3_ext_r_32b      <= 0;
         rxdataskip4_ext_r_32b      <= 0;
         rxdataskip5_ext_r_32b      <= 0;
         rxdataskip6_ext_r_32b      <= 0;
         rxdataskip7_ext_r_32b      <= 0;
         rxblkst0_ext_r_32b         <= 0;
         rxblkst1_ext_r_32b         <= 0;
         rxblkst2_ext_r_32b         <= 0;
         rxblkst3_ext_r_32b         <= 0;
         rxblkst4_ext_r_32b         <= 0;
         rxblkst5_ext_r_32b         <= 0;
         rxblkst6_ext_r_32b         <= 0;
         rxblkst7_ext_r_32b         <= 0;
         rxsynchd0_ext_r_32b        <= 0;
         rxsynchd1_ext_r_32b        <= 0;
         rxsynchd2_ext_r_32b        <= 0;
         rxsynchd3_ext_r_32b        <= 0;
         rxsynchd4_ext_r_32b        <= 0;
         rxsynchd5_ext_r_32b        <= 0;
         rxsynchd6_ext_r_32b        <= 0;
         rxsynchd7_ext_r_32b        <= 0;
         rxvalid0_ext_r_32b         <= 0;
         rxvalid1_ext_r_32b         <= 0;
         rxvalid2_ext_r_32b         <= 0;
         rxvalid3_ext_r_32b         <= 0;
         rxvalid4_ext_r_32b         <= 0;
         rxvalid5_ext_r_32b         <= 0;
         rxvalid6_ext_r_32b         <= 0;
         rxvalid7_ext_r_32b         <= 0;
         {rxdata0_ext_r_32b, rxdatak0_ext_r_32b}<=36'h0;
         {rxdata1_ext_r_32b, rxdatak1_ext_r_32b}<=36'h0;
         {rxdata2_ext_r_32b, rxdatak2_ext_r_32b}<=36'h0;
         {rxdata3_ext_r_32b, rxdatak3_ext_r_32b}<=36'h0;
         {rxdata4_ext_r_32b, rxdatak4_ext_r_32b}<=36'h0;
         {rxdata5_ext_r_32b, rxdatak5_ext_r_32b}<=36'h0;
         {rxdata6_ext_r_32b, rxdatak6_ext_r_32b}<=36'h0;
         {rxdata7_ext_r_32b, rxdatak7_ext_r_32b}<=36'h0;
      end
      else begin
         if (rxvalid_ext==1'b1) begin
               cnt_rx <=cnt_rx+2'h1;
         end
         else begin
               cnt_rx <=2'h0;
         end

         if (cnt_rx==2'b11) begin
            {rxdata0_ext_r_32b, rxdatak0_ext_r_32b}<= (rxvalid0_ext==1'b0)?36'h0:{rxdata0_ext,rxdata0_ext_i_32b[23:0], rxdatak0_ext, rxdatak0_ext_i_32b[2:0]};
            {rxdata1_ext_r_32b, rxdatak1_ext_r_32b}<= (rxvalid1_ext==1'b0)?36'h0:{rxdata1_ext,rxdata1_ext_i_32b[23:0], rxdatak1_ext, rxdatak1_ext_i_32b[2:0]};
            {rxdata2_ext_r_32b, rxdatak2_ext_r_32b}<= (rxvalid2_ext==1'b0)?36'h0:{rxdata2_ext,rxdata2_ext_i_32b[23:0], rxdatak2_ext, rxdatak2_ext_i_32b[2:0]};
            {rxdata3_ext_r_32b, rxdatak3_ext_r_32b}<= (rxvalid3_ext==1'b0)?36'h0:{rxdata3_ext,rxdata3_ext_i_32b[23:0], rxdatak3_ext, rxdatak3_ext_i_32b[2:0]};
            {rxdata4_ext_r_32b, rxdatak4_ext_r_32b}<= (rxvalid4_ext==1'b0)?36'h0:{rxdata4_ext,rxdata4_ext_i_32b[23:0], rxdatak4_ext, rxdatak4_ext_i_32b[2:0]};
            {rxdata5_ext_r_32b, rxdatak5_ext_r_32b}<= (rxvalid5_ext==1'b0)?36'h0:{rxdata5_ext,rxdata5_ext_i_32b[23:0], rxdatak5_ext, rxdatak5_ext_i_32b[2:0]};
            {rxdata6_ext_r_32b, rxdatak6_ext_r_32b}<= (rxvalid6_ext==1'b0)?36'h0:{rxdata6_ext,rxdata6_ext_i_32b[23:0], rxdatak6_ext, rxdatak6_ext_i_32b[2:0]};
            {rxdata7_ext_r_32b, rxdatak7_ext_r_32b}<= (rxvalid7_ext==1'b0)?36'h0:{rxdata7_ext,rxdata7_ext_i_32b[23:0], rxdatak7_ext, rxdatak7_ext_i_32b[2:0]};
         end

         if (1==1) begin
            cnt <=cnt+2'h1;
            phystatus0_ext_r_32b       <= ((phystatus0_ext_r_32b==1'b0)||(cnt==2'b10))?phystatus0_ext:1'b1;
            phystatus1_ext_r_32b       <= ((phystatus1_ext_r_32b==1'b0)||(cnt==2'b10))?phystatus1_ext:1'b1;
            phystatus2_ext_r_32b       <= ((phystatus2_ext_r_32b==1'b0)||(cnt==2'b10))?phystatus2_ext:1'b1;
            phystatus3_ext_r_32b       <= ((phystatus3_ext_r_32b==1'b0)||(cnt==2'b10))?phystatus3_ext:1'b1;
            phystatus4_ext_r_32b       <= ((phystatus4_ext_r_32b==1'b0)||(cnt==2'b10))?phystatus4_ext:1'b1;
            phystatus5_ext_r_32b       <= ((phystatus5_ext_r_32b==1'b0)||(cnt==2'b10))?phystatus5_ext:1'b1;
            phystatus6_ext_r_32b       <= ((phystatus6_ext_r_32b==1'b0)||(cnt==2'b10))?phystatus6_ext:1'b1;
            phystatus7_ext_r_32b       <= ((phystatus7_ext_r_32b==1'b0)||(cnt==2'b10))?phystatus7_ext:1'b1;
            rxelecidle0_ext_r_32b      <= rxelecidle0_ext;
            rxelecidle1_ext_r_32b      <= rxelecidle1_ext;
            rxelecidle2_ext_r_32b      <= rxelecidle2_ext;
            rxelecidle3_ext_r_32b      <= rxelecidle3_ext;
            rxelecidle4_ext_r_32b      <= rxelecidle4_ext;
            rxelecidle5_ext_r_32b      <= rxelecidle5_ext;
            rxelecidle6_ext_r_32b      <= rxelecidle6_ext;
            rxelecidle7_ext_r_32b      <= rxelecidle7_ext;
            rxfreqlocked0_ext_r_32b    <= rxfreqlocked0_ext;
            rxfreqlocked1_ext_r_32b    <= rxfreqlocked1_ext;
            rxfreqlocked2_ext_r_32b    <= rxfreqlocked2_ext;
            rxfreqlocked3_ext_r_32b    <= rxfreqlocked3_ext;
            rxfreqlocked4_ext_r_32b    <= rxfreqlocked4_ext;
            rxfreqlocked5_ext_r_32b    <= rxfreqlocked5_ext;
            rxfreqlocked6_ext_r_32b    <= rxfreqlocked6_ext;
            rxfreqlocked7_ext_r_32b    <= rxfreqlocked7_ext;
            rxstatus0_ext_r_32b        <= ((rxstatus0_ext_r_32b==3'h4)||(rxstatus0_ext_r_32b==3'h0)||(cnt==2'b11))?rxstatus0_ext:3'h3;
            rxstatus1_ext_r_32b        <= ((rxstatus1_ext_r_32b==3'h4)||(rxstatus1_ext_r_32b==3'h0)||(cnt==2'b11))?rxstatus1_ext:3'h3;
            rxstatus2_ext_r_32b        <= ((rxstatus2_ext_r_32b==3'h4)||(rxstatus2_ext_r_32b==3'h0)||(cnt==2'b11))?rxstatus2_ext:3'h3;
            rxstatus3_ext_r_32b        <= ((rxstatus3_ext_r_32b==3'h4)||(rxstatus3_ext_r_32b==3'h0)||(cnt==2'b11))?rxstatus3_ext:3'h3;
            rxstatus4_ext_r_32b        <= ((rxstatus4_ext_r_32b==3'h4)||(rxstatus4_ext_r_32b==3'h0)||(cnt==2'b11))?rxstatus4_ext:3'h3;
            rxstatus5_ext_r_32b        <= ((rxstatus5_ext_r_32b==3'h4)||(rxstatus5_ext_r_32b==3'h0)||(cnt==2'b11))?rxstatus5_ext:3'h3;
            rxstatus6_ext_r_32b        <= ((rxstatus6_ext_r_32b==3'h4)||(rxstatus6_ext_r_32b==3'h0)||(cnt==2'b11))?rxstatus6_ext:3'h3;
            rxstatus7_ext_r_32b        <= ((rxstatus7_ext_r_32b==3'h4)||(rxstatus7_ext_r_32b==3'h0)||(cnt==2'b11))?rxstatus7_ext:3'h3;
            rxdataskip0_ext_r_32b      <= rxdataskip0_ext;
            rxdataskip1_ext_r_32b      <= rxdataskip1_ext;
            rxdataskip2_ext_r_32b      <= rxdataskip2_ext;
            rxdataskip3_ext_r_32b      <= rxdataskip3_ext;
            rxdataskip4_ext_r_32b      <= rxdataskip4_ext;
            rxdataskip5_ext_r_32b      <= rxdataskip5_ext;
            rxdataskip6_ext_r_32b      <= rxdataskip6_ext;
            rxdataskip7_ext_r_32b      <= rxdataskip7_ext;
            rxblkst0_ext_r_32b         <= rxblkst0_ext;
            rxblkst1_ext_r_32b         <= rxblkst1_ext;
            rxblkst2_ext_r_32b         <= rxblkst2_ext;
            rxblkst3_ext_r_32b         <= rxblkst3_ext;
            rxblkst4_ext_r_32b         <= rxblkst4_ext;
            rxblkst5_ext_r_32b         <= rxblkst5_ext;
            rxblkst6_ext_r_32b         <= rxblkst6_ext;
            rxblkst7_ext_r_32b         <= rxblkst7_ext;
            rxsynchd0_ext_r_32b        <= rxsynchd0_ext;
            rxsynchd1_ext_r_32b        <= rxsynchd1_ext;
            rxsynchd2_ext_r_32b        <= rxsynchd2_ext;
            rxsynchd3_ext_r_32b        <= rxsynchd3_ext;
            rxsynchd4_ext_r_32b        <= rxsynchd4_ext;
            rxsynchd5_ext_r_32b        <= rxsynchd5_ext;
            rxsynchd6_ext_r_32b        <= rxsynchd6_ext;
            rxsynchd7_ext_r_32b        <= rxsynchd7_ext;
            rxvalid0_ext_r_32b         <= rxvalid0_ext;
            rxvalid1_ext_r_32b         <= rxvalid1_ext;
            rxvalid2_ext_r_32b         <= rxvalid2_ext;
            rxvalid3_ext_r_32b         <= rxvalid3_ext;
            rxvalid4_ext_r_32b         <= rxvalid4_ext;
            rxvalid5_ext_r_32b         <= rxvalid5_ext;
            rxvalid6_ext_r_32b         <= rxvalid6_ext;
            rxvalid7_ext_r_32b         <= rxvalid7_ext;
         end
      end
   end

   generate
      for (i=0;i<3;i=i+1) begin : g_pipe
         always @(posedge sim_pipe8_pclk or negedge aclr) begin
            if (aclr == 1'b0) begin
               rxdata0_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;
               rxdata1_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;
               rxdata2_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;
               rxdata3_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;
               rxdata4_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;
               rxdata5_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;
               rxdata6_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;
               rxdata7_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;

               rxdatak0_ext_i_32b[i] <= 1'h0;
               rxdatak1_ext_i_32b[i] <= 1'h0;
               rxdatak2_ext_i_32b[i] <= 1'h0;
               rxdatak3_ext_i_32b[i] <= 1'h0;
               rxdatak4_ext_i_32b[i] <= 1'h0;
               rxdatak5_ext_i_32b[i] <= 1'h0;
               rxdatak6_ext_i_32b[i] <= 1'h0;
               rxdatak7_ext_i_32b[i] <= 1'h0;
            end
            else begin
               if (cnt_rx==i) begin
                  rxdata0_ext_i_32b[((i+1)*8)-1:i*8] <= rxdata0_ext[7:0];
                  rxdata1_ext_i_32b[((i+1)*8)-1:i*8] <= rxdata1_ext[7:0];
                  rxdata2_ext_i_32b[((i+1)*8)-1:i*8] <= rxdata2_ext[7:0];
                  rxdata3_ext_i_32b[((i+1)*8)-1:i*8] <= rxdata3_ext[7:0];
                  rxdata4_ext_i_32b[((i+1)*8)-1:i*8] <= rxdata4_ext[7:0];
                  rxdata5_ext_i_32b[((i+1)*8)-1:i*8] <= rxdata5_ext[7:0];
                  rxdata6_ext_i_32b[((i+1)*8)-1:i*8] <= rxdata6_ext[7:0];
                  rxdata7_ext_i_32b[((i+1)*8)-1:i*8] <= rxdata7_ext[7:0];

                  rxdatak0_ext_i_32b[i] <= rxdatak0_ext;
                  rxdatak1_ext_i_32b[i] <= rxdatak1_ext;
                  rxdatak2_ext_i_32b[i] <= rxdatak2_ext;
                  rxdatak3_ext_i_32b[i] <= rxdatak3_ext;
                  rxdatak4_ext_i_32b[i] <= rxdatak4_ext;
                  rxdatak5_ext_i_32b[i] <= rxdatak5_ext;
                  rxdatak6_ext_i_32b[i] <= rxdatak6_ext;
                  rxdatak7_ext_i_32b[i] <= rxdatak7_ext;
               end
               else if (((cnt_rx==0) && (i>0)) || (cnt_rx==i-1)) begin
                  rxdata0_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;
                  rxdata1_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;
                  rxdata2_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;
                  rxdata3_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;
                  rxdata4_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;
                  rxdata5_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;
                  rxdata6_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;
                  rxdata7_ext_i_32b[((i+1)*8)-1:i*8] <= 8'h0;

                  rxdatak0_ext_i_32b[i] <= 1'h0;
                  rxdatak1_ext_i_32b[i] <= 1'h0;
                  rxdatak2_ext_i_32b[i] <= 1'h0;
                  rxdatak3_ext_i_32b[i] <= 1'h0;
                  rxdatak4_ext_i_32b[i] <= 1'h0;
                  rxdatak5_ext_i_32b[i] <= 1'h0;
                  rxdatak6_ext_i_32b[i] <= 1'h0;
                  rxdatak7_ext_i_32b[i] <= 1'h0;
               end
            end
         end
      end
   endgenerate

endmodule

module altpcietb_bfm_txpipe_8bit_to_32_bit (
      input                 sim_pipe8_pclk,
      input                 sim_pipe32_pclk,
      input                 aclr,
      input                 pipe_mode_simu_only,

      input [2 : 0]        eidleinfersel0,
      input [2 : 0]        eidleinfersel1,
      input [2 : 0]        eidleinfersel2,
      input [2 : 0]        eidleinfersel3,
      input [2 : 0]        eidleinfersel4,
      input [2 : 0]        eidleinfersel5,
      input [2 : 0]        eidleinfersel6,
      input [2 : 0]        eidleinfersel7,
      input [1 : 0]        powerdown0,
      input [1 : 0]        powerdown1,
      input [1 : 0]        powerdown2,
      input [1 : 0]        powerdown3,
      input [1 : 0]        powerdown4,
      input [1 : 0]        powerdown5,
      input [1 : 0]        powerdown6,
      input [1 : 0]        powerdown7,
      input                rxpolarity0,
      input                rxpolarity1,
      input                rxpolarity2,
      input                rxpolarity3,
      input                rxpolarity4,
      input                rxpolarity5,
      input                rxpolarity6,
      input                rxpolarity7,
      input                txcompl0,
      input                txcompl1,
      input                txcompl2,
      input                txcompl3,
      input                txcompl4,
      input                txcompl5,
      input                txcompl6,
      input                txcompl7,
      input [31 : 0]       txdata0,
      input [31 : 0]       txdata1,
      input [31 : 0]       txdata2,
      input [31 : 0]       txdata3,
      input [31 : 0]       txdata4,
      input [31 : 0]       txdata5,
      input [31 : 0]       txdata6,
      input [31 : 0]       txdata7,
      input [3 : 0]        txdatak0,
      input [3 : 0]        txdatak1,
      input [3 : 0]        txdatak2,
      input [3 : 0]        txdatak3,
      input [3 : 0]        txdatak4,
      input [3 : 0]        txdatak5,
      input [3 : 0]        txdatak6,
      input [3 : 0]        txdatak7,
      //input                txdatavalid0,
      //input                txdatavalid1,
      //input                txdatavalid2,
      //input                txdatavalid3,
      //input                txdatavalid4,
      //input                txdatavalid5,
      //input                txdatavalid6,
      //input                txdatavalid7,
      input                txdetectrx0,
      input                txdetectrx1,
      input                txdetectrx2,
      input                txdetectrx3,
      input                txdetectrx4,
      input                txdetectrx5,
      input                txdetectrx6,
      input                txdetectrx7,
      input                txelecidle0,
      input                txelecidle1,
      input                txelecidle2,
      input                txelecidle3,
      input                txelecidle4,
      input                txelecidle5,
      input                txelecidle6,
      input                txelecidle7,
      input [2 : 0]        txmargin0,
      input [2 : 0]        txmargin1,
      input [2 : 0]        txmargin2,
      input [2 : 0]        txmargin3,
      input [2 : 0]        txmargin4,
      input [2 : 0]        txmargin5,
      input [2 : 0]        txmargin6,
      input [2 : 0]        txmargin7,
      input                txdeemph0,
      input                txdeemph1,
      input                txdeemph2,
      input                txdeemph3,
      input                txdeemph4,
      input                txdeemph5,
      input                txdeemph6,
      input                txdeemph7,
      input                txswing0,
      input                txswing1,
      input                txswing2,
      input                txswing3,
      input                txswing4,
      input                txswing5,
      input                txswing6,
      input                txswing7,
      input                txblkst0,
      input                txblkst1,
      input                txblkst2,
      input                txblkst3,
      input                txblkst4,
      input                txblkst5,
      input                txblkst6,
      input                txblkst7,
      input [1 : 0]        txsynchd0,
      input [1 : 0]        txsynchd1,
      input [1 : 0]        txsynchd2,
      input [1 : 0]        txsynchd3,
      input [1 : 0]        txsynchd4,
      input [1 : 0]        txsynchd5,
      input [1 : 0]        txsynchd6,
      input [1 : 0]        txsynchd7,
      input [17 : 0]       currentcoeff0,
      input [17 : 0]       currentcoeff1,
      input [17 : 0]       currentcoeff2,
      input [17 : 0]       currentcoeff3,
      input [17 : 0]       currentcoeff4,
      input [17 : 0]       currentcoeff5,
      input [17 : 0]       currentcoeff6,
      input [17 : 0]       currentcoeff7,
      input [2 : 0]        currentrxpreset0,
      input [2 : 0]        currentrxpreset1,
      input [2 : 0]        currentrxpreset2,
      input [2 : 0]        currentrxpreset3,
      input [2 : 0]        currentrxpreset4,
      input [2 : 0]        currentrxpreset5,
      input [2 : 0]        currentrxpreset6,
      input [2 : 0]        currentrxpreset7,

      output [2 : 0]   eidleinfersel0_ext,
      output [2 : 0]   eidleinfersel1_ext,
      output [2 : 0]   eidleinfersel2_ext,
      output [2 : 0]   eidleinfersel3_ext,
      output [2 : 0]   eidleinfersel4_ext,
      output [2 : 0]   eidleinfersel5_ext,
      output [2 : 0]   eidleinfersel6_ext,
      output [2 : 0]   eidleinfersel7_ext,
      output [1 : 0]   powerdown0_ext,
      output [1 : 0]   powerdown1_ext,
      output [1 : 0]   powerdown2_ext,
      output [1 : 0]   powerdown3_ext,
      output [1 : 0]   powerdown4_ext,
      output [1 : 0]   powerdown5_ext,
      output [1 : 0]   powerdown6_ext,
      output [1 : 0]   powerdown7_ext,
      output           rxpolarity0_ext,
      output           rxpolarity1_ext,
      output           rxpolarity2_ext,
      output           rxpolarity3_ext,
      output           rxpolarity4_ext,
      output           rxpolarity5_ext,
      output           rxpolarity6_ext,
      output           rxpolarity7_ext,
      output           txcompl0_ext,
      output           txcompl1_ext,
      output           txcompl2_ext,
      output           txcompl3_ext,
      output           txcompl4_ext,
      output           txcompl5_ext,
      output           txcompl6_ext,
      output           txcompl7_ext,
      output [7 : 0]   txdata0_ext,
      output [7 : 0]   txdata1_ext,
      output [7 : 0]   txdata2_ext,
      output [7 : 0]   txdata3_ext,
      output [7 : 0]   txdata4_ext,
      output [7 : 0]   txdata5_ext,
      output [7 : 0]   txdata6_ext,
      output [7 : 0]   txdata7_ext,
      output           txdatak0_ext,
      output           txdatak1_ext,
      output           txdatak2_ext,
      output           txdatak3_ext,
      output           txdatak4_ext,
      output           txdatak5_ext,
      output           txdatak6_ext,
      output           txdatak7_ext,
      output           txdetectrx0_ext,
      output           txdetectrx1_ext,
      output           txdetectrx2_ext,
      output           txdetectrx3_ext,
      output           txdetectrx4_ext,
      output           txdetectrx5_ext,
      output           txdetectrx6_ext,
      output           txdetectrx7_ext,
      output           txelecidle0_ext,
      output           txelecidle1_ext,
      output           txelecidle2_ext,
      output           txelecidle3_ext,
      output           txelecidle4_ext,
      output           txelecidle5_ext,
      output           txelecidle6_ext,
      output           txelecidle7_ext,
      output [2 : 0]   txmargin0_ext,
      output [2 : 0]   txmargin1_ext,
      output [2 : 0]   txmargin2_ext,
      output [2 : 0]   txmargin3_ext,
      output [2 : 0]   txmargin4_ext,
      output [2 : 0]   txmargin5_ext,
      output [2 : 0]   txmargin6_ext,
      output [2 : 0]   txmargin7_ext,
      output           txdeemph0_ext,
      output           txdeemph1_ext,
      output           txdeemph2_ext,
      output           txdeemph3_ext,
      output           txdeemph4_ext,
      output           txdeemph5_ext,
      output           txdeemph6_ext,
      output           txdeemph7_ext,
      output           txswing0_ext,
      output           txswing1_ext,
      output           txswing2_ext,
      output           txswing3_ext,
      output           txswing4_ext,
      output           txswing5_ext,
      output           txswing6_ext,
      output           txswing7_ext,
      output           txblkst0_ext,
      output           txblkst1_ext,
      output           txblkst2_ext,
      output           txblkst3_ext,
      output           txblkst4_ext,
      output           txblkst5_ext,
      output           txblkst6_ext,
      output           txblkst7_ext,
      output [1 : 0]   txsynchd0_ext,
      output [1 : 0]   txsynchd1_ext,
      output [1 : 0]   txsynchd2_ext,
      output [1 : 0]   txsynchd3_ext,
      output [1 : 0]   txsynchd4_ext,
      output [1 : 0]   txsynchd5_ext,
      output [1 : 0]   txsynchd6_ext,
      output [1 : 0]   txsynchd7_ext,
      output [17 : 0]  currentcoeff0_ext,
      output [17 : 0]  currentcoeff1_ext,
      output [17 : 0]  currentcoeff2_ext,
      output [17 : 0]  currentcoeff3_ext,
      output [17 : 0]  currentcoeff4_ext,
      output [17 : 0]  currentcoeff5_ext,
      output [17 : 0]  currentcoeff6_ext,
      output [17 : 0]  currentcoeff7_ext,
      output [2 : 0]   currentrxpreset0_ext,
      output [2 : 0]   currentrxpreset1_ext,
      output [2 : 0]   currentrxpreset2_ext,
      output [2 : 0]   currentrxpreset3_ext,
      output [2 : 0]   currentrxpreset4_ext,
      output [2 : 0]   currentrxpreset5_ext,
      output [2 : 0]   currentrxpreset6_ext,
      output [2 : 0]   currentrxpreset7_ext

      );

   reg [1:0] cnt_tx;
   wire txelecidle;

   assign txelecidle = txelecidle0&
                       txelecidle1&
                       txelecidle2&
                       txelecidle3&
                       txelecidle4&
                       txelecidle5&
                       txelecidle6&
                       txelecidle7;

   always @(posedge sim_pipe8_pclk or negedge aclr) begin
      if (aclr == 1'b0) begin
         cnt_tx <=2'h0;
      end
      else begin
         if (txelecidle==1'b0) begin
            cnt_tx <=cnt_tx+2'h1;
         end
         else begin
            cnt_tx <=2'h0;
         end
      end
   end

   assign txdata0_ext                    = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdata0[7:0]: (cnt_tx==2'b01)?txdata0[15:8] : (cnt_tx==2'b10)?txdata0[23:16] : txdata0[31:24];
   assign txdata1_ext                    = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdata1[7:0]: (cnt_tx==2'b01)?txdata1[15:8] : (cnt_tx==2'b10)?txdata1[23:16] : txdata1[31:24];
   assign txdata2_ext                    = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdata2[7:0]: (cnt_tx==2'b01)?txdata2[15:8] : (cnt_tx==2'b10)?txdata2[23:16] : txdata2[31:24];
   assign txdata3_ext                    = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdata3[7:0]: (cnt_tx==2'b01)?txdata3[15:8] : (cnt_tx==2'b10)?txdata3[23:16] : txdata3[31:24];
   assign txdata4_ext                    = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdata4[7:0]: (cnt_tx==2'b01)?txdata4[15:8] : (cnt_tx==2'b10)?txdata4[23:16] : txdata4[31:24];
   assign txdata5_ext                    = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdata5[7:0]: (cnt_tx==2'b01)?txdata5[15:8] : (cnt_tx==2'b10)?txdata5[23:16] : txdata5[31:24];
   assign txdata6_ext                    = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdata6[7:0]: (cnt_tx==2'b01)?txdata6[15:8] : (cnt_tx==2'b10)?txdata6[23:16] : txdata6[31:24];
   assign txdata7_ext                    = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdata7[7:0]: (cnt_tx==2'b01)?txdata7[15:8] : (cnt_tx==2'b10)?txdata7[23:16] : txdata7[31:24];
   assign txdatak0_ext                   = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdatak0[ 0]: (cnt_tx==2'b01)?txdatak0[  1] : (cnt_tx==2'b10)?txdatak0[   2] : txdatak0[   3];
   assign txdatak1_ext                   = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdatak1[ 0]: (cnt_tx==2'b01)?txdatak1[  1] : (cnt_tx==2'b10)?txdatak1[   2] : txdatak1[   3];
   assign txdatak2_ext                   = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdatak2[ 0]: (cnt_tx==2'b01)?txdatak2[  1] : (cnt_tx==2'b10)?txdatak2[   2] : txdatak2[   3];
   assign txdatak3_ext                   = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdatak3[ 0]: (cnt_tx==2'b01)?txdatak3[  1] : (cnt_tx==2'b10)?txdatak3[   2] : txdatak3[   3];
   assign txdatak4_ext                   = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdatak4[ 0]: (cnt_tx==2'b01)?txdatak4[  1] : (cnt_tx==2'b10)?txdatak4[   2] : txdatak4[   3];
   assign txdatak5_ext                   = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdatak5[ 0]: (cnt_tx==2'b01)?txdatak5[  1] : (cnt_tx==2'b10)?txdatak5[   2] : txdatak5[   3];
   assign txdatak6_ext                   = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdatak6[ 0]: (cnt_tx==2'b01)?txdatak6[  1] : (cnt_tx==2'b10)?txdatak6[   2] : txdatak6[   3];
   assign txdatak7_ext                   = (pipe_mode_simu_only==1'b0)?0:(cnt_tx==2'b00)?txdatak7[ 0]: (cnt_tx==2'b01)?txdatak7[  1] : (cnt_tx==2'b10)?txdatak7[   2] : txdatak7[   3];

   assign eidleinfersel0_ext             = (pipe_mode_simu_only==1'b0)?0:eidleinfersel0                ;
   assign eidleinfersel1_ext             = (pipe_mode_simu_only==1'b0)?0:eidleinfersel1                ;
   assign eidleinfersel2_ext             = (pipe_mode_simu_only==1'b0)?0:eidleinfersel2                ;
   assign eidleinfersel3_ext             = (pipe_mode_simu_only==1'b0)?0:eidleinfersel3                ;
   assign eidleinfersel4_ext             = (pipe_mode_simu_only==1'b0)?0:eidleinfersel4                ;
   assign eidleinfersel5_ext             = (pipe_mode_simu_only==1'b0)?0:eidleinfersel5                ;
   assign eidleinfersel6_ext             = (pipe_mode_simu_only==1'b0)?0:eidleinfersel6                ;
   assign eidleinfersel7_ext             = (pipe_mode_simu_only==1'b0)?0:eidleinfersel7                ;
   assign powerdown0_ext                 = (pipe_mode_simu_only==1'b0)?0:powerdown0                    ;
   assign powerdown1_ext                 = (pipe_mode_simu_only==1'b0)?0:powerdown1                    ;
   assign powerdown2_ext                 = (pipe_mode_simu_only==1'b0)?0:powerdown2                    ;
   assign powerdown3_ext                 = (pipe_mode_simu_only==1'b0)?0:powerdown3                    ;
   assign powerdown4_ext                 = (pipe_mode_simu_only==1'b0)?0:powerdown4                    ;
   assign powerdown5_ext                 = (pipe_mode_simu_only==1'b0)?0:powerdown5                    ;
   assign powerdown6_ext                 = (pipe_mode_simu_only==1'b0)?0:powerdown6                    ;
   assign powerdown7_ext                 = (pipe_mode_simu_only==1'b0)?0:powerdown7                    ;
   assign rxpolarity0_ext                = (pipe_mode_simu_only==1'b0)?0:rxpolarity0                   ;
   assign rxpolarity1_ext                = (pipe_mode_simu_only==1'b0)?0:rxpolarity1                   ;
   assign rxpolarity2_ext                = (pipe_mode_simu_only==1'b0)?0:rxpolarity2                   ;
   assign rxpolarity3_ext                = (pipe_mode_simu_only==1'b0)?0:rxpolarity3                   ;
   assign rxpolarity4_ext                = (pipe_mode_simu_only==1'b0)?0:rxpolarity4                   ;
   assign rxpolarity5_ext                = (pipe_mode_simu_only==1'b0)?0:rxpolarity5                   ;
   assign rxpolarity6_ext                = (pipe_mode_simu_only==1'b0)?0:rxpolarity6                   ;
   assign rxpolarity7_ext                = (pipe_mode_simu_only==1'b0)?0:rxpolarity7                   ;
   assign txcompl0_ext                   = (pipe_mode_simu_only==1'b0)?0:txcompl0                      ;
   assign txcompl1_ext                   = (pipe_mode_simu_only==1'b0)?0:txcompl1                      ;
   assign txcompl2_ext                   = (pipe_mode_simu_only==1'b0)?0:txcompl2                      ;
   assign txcompl3_ext                   = (pipe_mode_simu_only==1'b0)?0:txcompl3                      ;
   assign txcompl4_ext                   = (pipe_mode_simu_only==1'b0)?0:txcompl4                      ;
   assign txcompl5_ext                   = (pipe_mode_simu_only==1'b0)?0:txcompl5                      ;
   assign txcompl6_ext                   = (pipe_mode_simu_only==1'b0)?0:txcompl6                      ;
   assign txcompl7_ext                   = (pipe_mode_simu_only==1'b0)?0:txcompl7                      ;

   assign txdetectrx0_ext                = (pipe_mode_simu_only==1'b0)?0:txdetectrx0                   ;
   assign txdetectrx1_ext                = (pipe_mode_simu_only==1'b0)?0:txdetectrx1                   ;
   assign txdetectrx2_ext                = (pipe_mode_simu_only==1'b0)?0:txdetectrx2                   ;
   assign txdetectrx3_ext                = (pipe_mode_simu_only==1'b0)?0:txdetectrx3                   ;
   assign txdetectrx4_ext                = (pipe_mode_simu_only==1'b0)?0:txdetectrx4                   ;
   assign txdetectrx5_ext                = (pipe_mode_simu_only==1'b0)?0:txdetectrx5                   ;
   assign txdetectrx6_ext                = (pipe_mode_simu_only==1'b0)?0:txdetectrx6                   ;
   assign txdetectrx7_ext                = (pipe_mode_simu_only==1'b0)?0:txdetectrx7                   ;
   assign txelecidle0_ext                = (pipe_mode_simu_only==1'b0)?0:txelecidle0                   ;
   assign txelecidle1_ext                = (pipe_mode_simu_only==1'b0)?0:txelecidle1                   ;
   assign txelecidle2_ext                = (pipe_mode_simu_only==1'b0)?0:txelecidle2                   ;
   assign txelecidle3_ext                = (pipe_mode_simu_only==1'b0)?0:txelecidle3                   ;
   assign txelecidle4_ext                = (pipe_mode_simu_only==1'b0)?0:txelecidle4                   ;
   assign txelecidle5_ext                = (pipe_mode_simu_only==1'b0)?0:txelecidle5                   ;
   assign txelecidle6_ext                = (pipe_mode_simu_only==1'b0)?0:txelecidle6                   ;
   assign txelecidle7_ext                = (pipe_mode_simu_only==1'b0)?0:txelecidle7                   ;
   assign txmargin0_ext                  = (pipe_mode_simu_only==1'b0)?0:txmargin0                     ;
   assign txmargin1_ext                  = (pipe_mode_simu_only==1'b0)?0:txmargin1                     ;
   assign txmargin2_ext                  = (pipe_mode_simu_only==1'b0)?0:txmargin2                     ;
   assign txmargin3_ext                  = (pipe_mode_simu_only==1'b0)?0:txmargin3                     ;
   assign txmargin4_ext                  = (pipe_mode_simu_only==1'b0)?0:txmargin4                     ;
   assign txmargin5_ext                  = (pipe_mode_simu_only==1'b0)?0:txmargin5                     ;
   assign txmargin6_ext                  = (pipe_mode_simu_only==1'b0)?0:txmargin6                     ;
   assign txmargin7_ext                  = (pipe_mode_simu_only==1'b0)?0:txmargin7                     ;
   assign txdeemph0_ext                  = (pipe_mode_simu_only==1'b0)?0:txdeemph0                     ;
   assign txdeemph1_ext                  = (pipe_mode_simu_only==1'b0)?0:txdeemph1                     ;
   assign txdeemph2_ext                  = (pipe_mode_simu_only==1'b0)?0:txdeemph2                     ;
   assign txdeemph3_ext                  = (pipe_mode_simu_only==1'b0)?0:txdeemph3                     ;
   assign txdeemph4_ext                  = (pipe_mode_simu_only==1'b0)?0:txdeemph4                     ;
   assign txdeemph5_ext                  = (pipe_mode_simu_only==1'b0)?0:txdeemph5                     ;
   assign txdeemph6_ext                  = (pipe_mode_simu_only==1'b0)?0:txdeemph6                     ;
   assign txdeemph7_ext                  = (pipe_mode_simu_only==1'b0)?0:txdeemph7                     ;
   assign txswing0_ext                   = (pipe_mode_simu_only==1'b0)?0:txswing0                      ;
   assign txswing1_ext                   = (pipe_mode_simu_only==1'b0)?0:txswing1                      ;
   assign txswing2_ext                   = (pipe_mode_simu_only==1'b0)?0:txswing2                      ;
   assign txswing3_ext                   = (pipe_mode_simu_only==1'b0)?0:txswing3                      ;
   assign txswing4_ext                   = (pipe_mode_simu_only==1'b0)?0:txswing4                      ;
   assign txswing5_ext                   = (pipe_mode_simu_only==1'b0)?0:txswing5                      ;
   assign txswing6_ext                   = (pipe_mode_simu_only==1'b0)?0:txswing6                      ;
   assign txswing7_ext                   = (pipe_mode_simu_only==1'b0)?0:txswing7                      ;
   assign txblkst0_ext                   = (pipe_mode_simu_only==1'b0)?0:txblkst0                      ;
   assign txblkst1_ext                   = (pipe_mode_simu_only==1'b0)?0:txblkst1                      ;
   assign txblkst2_ext                   = (pipe_mode_simu_only==1'b0)?0:txblkst2                      ;
   assign txblkst3_ext                   = (pipe_mode_simu_only==1'b0)?0:txblkst3                      ;
   assign txblkst4_ext                   = (pipe_mode_simu_only==1'b0)?0:txblkst4                      ;
   assign txblkst5_ext                   = (pipe_mode_simu_only==1'b0)?0:txblkst5                      ;
   assign txblkst6_ext                   = (pipe_mode_simu_only==1'b0)?0:txblkst6                      ;
   assign txblkst7_ext                   = (pipe_mode_simu_only==1'b0)?0:txblkst7                      ;
   assign txsynchd0_ext                  = (pipe_mode_simu_only==1'b0)?0:txsynchd0                     ;
   assign txsynchd1_ext                  = (pipe_mode_simu_only==1'b0)?0:txsynchd1                     ;
   assign txsynchd2_ext                  = (pipe_mode_simu_only==1'b0)?0:txsynchd2                     ;
   assign txsynchd3_ext                  = (pipe_mode_simu_only==1'b0)?0:txsynchd3                     ;
   assign txsynchd4_ext                  = (pipe_mode_simu_only==1'b0)?0:txsynchd4                     ;
   assign txsynchd5_ext                  = (pipe_mode_simu_only==1'b0)?0:txsynchd5                     ;
   assign txsynchd6_ext                  = (pipe_mode_simu_only==1'b0)?0:txsynchd6                     ;
   assign txsynchd7_ext                  = (pipe_mode_simu_only==1'b0)?0:txsynchd7                     ;
   assign currentcoeff0_ext              = (pipe_mode_simu_only==1'b0)?0:currentcoeff0                 ;
   assign currentcoeff1_ext              = (pipe_mode_simu_only==1'b0)?0:currentcoeff1                 ;
   assign currentcoeff2_ext              = (pipe_mode_simu_only==1'b0)?0:currentcoeff2                 ;
   assign currentcoeff3_ext              = (pipe_mode_simu_only==1'b0)?0:currentcoeff3                 ;
   assign currentcoeff4_ext              = (pipe_mode_simu_only==1'b0)?0:currentcoeff4                 ;
   assign currentcoeff5_ext              = (pipe_mode_simu_only==1'b0)?0:currentcoeff5                 ;
   assign currentcoeff6_ext              = (pipe_mode_simu_only==1'b0)?0:currentcoeff6                 ;
   assign currentcoeff7_ext              = (pipe_mode_simu_only==1'b0)?0:currentcoeff7                 ;
   assign currentrxpreset0_ext           = (pipe_mode_simu_only==1'b0)?0:currentrxpreset0              ;
   assign currentrxpreset1_ext           = (pipe_mode_simu_only==1'b0)?0:currentrxpreset1              ;
   assign currentrxpreset2_ext           = (pipe_mode_simu_only==1'b0)?0:currentrxpreset2              ;
   assign currentrxpreset3_ext           = (pipe_mode_simu_only==1'b0)?0:currentrxpreset3              ;
   assign currentrxpreset4_ext           = (pipe_mode_simu_only==1'b0)?0:currentrxpreset4              ;
   assign currentrxpreset5_ext           = (pipe_mode_simu_only==1'b0)?0:currentrxpreset5              ;
   assign currentrxpreset6_ext           = (pipe_mode_simu_only==1'b0)?0:currentrxpreset6              ;
   assign currentrxpreset7_ext           = (pipe_mode_simu_only==1'b0)?0:currentrxpreset7              ;

endmodule

// synthesis translate_on

/////////////////////////////////////////////////
// Module instantiations for PTC CV enable_pcisigtest
// Sync modules used in PTC CV

module altpcie_hip_bitsync2
  #(
    parameter DWIDTH    = 1,    // Sync Data input
    parameter RESET_VAL = 0     // Reset value
    )
    (
    input  wire              clk,     // clock
    input  wire              rst_n,   // async reset
    input  wire [DWIDTH-1:0] data_in, // data in
    output wire [DWIDTH-1:0] data_out // data out
     );

// 2-stage synchronizer
localparam SYNCSTAGE = 2;

// synchronizer
altpcie_hip_bitsync
  #(
    .DWIDTH(DWIDTH),        // Sync Data input
    .SYNCSTAGE(SYNCSTAGE),  // Sync stages
    .RESET_VAL(RESET_VAL)   // Reset value
    ) altpcie_hip_bitsync2
    (
     .clk(clk),          // clock
     .rst_n(rst_n),      // async reset
     .data_in(data_in),  // data in
     .data_out(data_out) // data out
     );

endmodule // altpcie_hip_bitsync2

module altpcie_hip_bitsync
  #(
    parameter DWIDTH = 1,    // Sync Data input
    parameter SYNCSTAGE = 2, // Sync stages
    parameter RESET_VAL = 0  // Reset value
    )
    (
    input  wire              clk,     // clock
    input  wire              rst_n,   // async reset
    input  wire [DWIDTH-1:0] data_in, // data in
    output wire [DWIDTH-1:0] data_out // data out
     );

   // Define wires/regs
   reg [(DWIDTH*SYNCSTAGE)-1:0] sync_regs;
   wire                         reset_value;

   assign reset_value = (RESET_VAL == 1) ? 1'b1 : 1'b0;  // To eliminate truncating warning

   // Sync Always block
   always @(negedge rst_n or posedge clk) begin
      if (rst_n == 1'b0) begin
         sync_regs[(DWIDTH*SYNCSTAGE)-1:DWIDTH] <= {(DWIDTH*(SYNCSTAGE-1)){reset_value}};
      end
      else begin
         sync_regs[(DWIDTH*SYNCSTAGE)-1:DWIDTH] <= sync_regs[((DWIDTH*(SYNCSTAGE-1))-1):0];
      end
   end

   // Separated out the first stage of FFs without reset
   always @(posedge clk) begin
         sync_regs[DWIDTH-1:0] <= data_in;
   end

   assign data_out = sync_regs[((DWIDTH*SYNCSTAGE)-1):(DWIDTH*(SYNCSTAGE-1))];

endmodule // altpcie_hip_bitsync

module altpcie_hip_vecsync2
   #(
      parameter DWIDTH           = 2 // Sync Data input
    )
   (
   // Inputs
   input  wire               wr_clk,        // write clock
   input  wire               rd_clk,        // read clock
   input  wire               wr_rst_n,      // async write reset
   input  wire               rd_rst_n,      // async read reset
   input  wire [DWIDTH-1:0]  data_in,       // data in
   // Outputs
   output wire  [DWIDTH-1:0] data_out       // data out
   );

// 2-stage synchronizer
localparam SYNCSTAGE = 2;

// Vecsync module
altpcie_hip_vecsync
   #(
      .DWIDTH(DWIDTH),       // Sync Data input
      .SYNCSTAGE(SYNCSTAGE)  // Sync stages
    ) altpcie_hip_vecsync2
   (
   // Inputs
   .wr_clk(wr_clk),         // write clock
   .rd_clk(rd_clk),         // read clock
   .wr_rst_n(wr_rst_n),     // async write reset
   .rd_rst_n(rd_rst_n),     // async read reset
   .data_in(data_in),       // data in
   // Outputs
   .data_out(data_out)      // data out
   );

endmodule // altpcie_hip_vecsync2

module altpcie_hip_vecsync
   #(
      parameter DWIDTH           = 2, // Sync Data input
      parameter SYNCSTAGE        = 2  // Sync stages
    )
   (
   // Inputs
   input  wire               wr_clk,        // write clock
   input  wire               rd_clk,        // read clock
   input  wire               wr_rst_n,      // async write reset
   input  wire               rd_rst_n,      // async read reset
   input  wire [DWIDTH-1:0]  data_in,       // data in
   // Outputs
   output reg  [DWIDTH-1:0]  data_out       // data out
   );

//******************************************************************************
// Define regs
//******************************************************************************
reg  [DWIDTH-1:0]  data_in_d0;
reg                req_wr_clk;
wire               req_rd_clk;
wire               ack_wr_clk;
wire               ack_rd_clk;
reg                req_rd_clk_d0;

//******************************************************************************
// WRITE CLOCK DOMAIN: Generate req & Store data when synchroniztion is not
// already in progress
//******************************************************************************
always @(negedge wr_rst_n or posedge wr_clk) begin
   if (wr_rst_n == 1'b0) begin
      data_in_d0 <= {DWIDTH{1'b0}};
      req_wr_clk <= 1'b0;
   end
   else begin
      // Store data when Write Req equals Write Ack
      if (req_wr_clk == ack_wr_clk) begin
         data_in_d0 <= data_in;
      end

      // Generate a Req when there is change in data
      if ((req_wr_clk == ack_wr_clk) & (data_in_d0 != data_in)) begin
         req_wr_clk <= ~req_wr_clk;
      end
   end
end

//******************************************************************************
// WRITE CLOCK DOMAIN:
//******************************************************************************
altpcie_hip_bitsync
#(
.DWIDTH      (1),         // Sync Data input
.SYNCSTAGE   (SYNCSTAGE)  // Sync stages
)
u_ack_wr_clk
   (
   .clk      (wr_clk),
   .rst_n    (wr_rst_n),
   .data_in  (ack_rd_clk),
   .data_out (ack_wr_clk)
   );
assign ack_rd_clk = req_rd_clk_d0;

//******************************************************************************
// READ CLOCK DOMAIN:
//******************************************************************************
altpcie_hip_bitsync
#(
.DWIDTH      (1),         // Sync Data input
.SYNCSTAGE   (SYNCSTAGE)  // Sync stages
)
u_req_rd_clk
(
   .clk      (rd_clk),
   .rst_n    (rd_rst_n),
   .data_in  (req_wr_clk),
   .data_out (req_rd_clk)
);

//******************************************************************************
// READ CLOCK DOMAIN:
//******************************************************************************
always @(negedge rd_rst_n or posedge rd_clk) begin
   if (rd_rst_n == 1'b0) begin
      data_out      <= {DWIDTH{1'b0}};
      req_rd_clk_d0 <= 1'b0;
   end
   else begin
      req_rd_clk_d0 <= req_rd_clk;
      if (req_rd_clk_d0 != req_rd_clk) begin
         data_out <= data_in_d0;
      end
   end
end


endmodule // altpcie_hip_vecsync

// End sync modules
///////////////////////////////////
// Bypass Phase 3 module

module hd_altpe3_hip_eq_bypass_ph3
 #(
    parameter K_G3_FULL_SWING    = 6'd63,                 // Local Full Swing FS
    parameter K_G3_LOW_FREQ      = 6'd1,                  // Local Low Freq LF
    parameter K_G3_EN_HALF_SWING = 1'b0,                  // Enable Half Swing
    parameter PRST_COEFF_MAP0    = {6'd0,6'd53,6'd10},    // Preset to Coefficient Mapping
    parameter PRST_COEFF_MAP1    = {6'd0,6'd52,6'd11},
    parameter PRST_COEFF_MAP2    = {6'd0,6'd50,6'd13},
    parameter PRST_COEFF_MAP3    = {6'd0,6'd55,6'd8},
    parameter PRST_COEFF_MAP4    = {6'd0,6'd63,6'd0},
    parameter PRST_COEFF_MAP5    = {6'd6,6'd57,6'd0},
    parameter PRST_COEFF_MAP6    = {6'd8,6'd55,6'd0},
    parameter PRST_COEFF_MAP7    = {6'd6,6'd44,6'd13},
    parameter PRST_COEFF_MAP8    = {6'd8,6'd47,6'd8},
    parameter PRST_COEFF_MAP9    = {6'd11,6'd52,6'd0},
    parameter PRST_COEFF_MAP10   = {6'd30,6'd33,6'd0},
    parameter PRST_COEFF_MAPERR  = {6'd0,6'd0,6'd0},
    parameter DEFAULT_PRST       = PRST_COEFF_MAP4,       // Default PMA preset
    parameter TIMEOUT_32MS       = 23'd7999500,           // 32 ms calculated using 250 Mhz clock - 500 clocks
    parameter ACT_LANES          = 8'b1111_1111
  )
  (
   // Clocks & Resets
   input   wire                                 rst_n,              // Active low Async rst
   input   wire                                 pld_clk,            // Core CLK
   //--------------- HIP Connections
   // Inputs
   input   wire [255:0]                         test_out_hip,       // Test Bus from HIP
   input   wire [63:0]                          test_out_1_hip,     // Test Bus from HIP
   input   wire [4:0]                           ltssm_state,        // LTSSM state from HIP
   input   wire [1:0]                           current_speed,      // Current Speed from HIP

   // Outputs
   output   wire  [31:0]                        test_in_hip,        // Test In to HIP  [10-12] are only used
   output   wire  [31:0]                        test_in_1_hip,      // test In to HIP  [0-4,15-16,31-20] are only used
   output   wire  [31:0]                        reserved_in,        // Reserved Input to HIP [29-10] are only used

   // Output to PMA
   output   reg   [143:0]                       tx_coeff_pma        // Value to be programmed into PMA
   );
//********************************************************************
// Design Params
//********************************************************************
localparam [4:0] DET_QUIET   = 5'b00000 ;
localparam [4:0] REC_RXCFG   = 5'b01101 ;
localparam [4:0] REC_RXLCK   = 5'b01100 ;
localparam [4:0] REC_SPEED   = 5'b11010 ;
localparam [4:0] EQZ_PHASE_0 = 5'b11011 ;
localparam [4:0] EQZ_PHASE_1 = 5'b11100 ;
localparam [4:0] EQZ_PHASE_2 = 5'b11101 ;
localparam [4:0] EQZ_PHASE_3 = 5'b11110 ;

//********************************************************************
// Define Variables
//********************************************************************
reg   [22:0]                     cpt_ph3;
reg                              timeout_ph3;
wire  [31:0]                     test_dbg_eqin;         // Debug Mode Equalization Signals In (All Channels)
reg  [(8*32)-1:0]               test_dbg_eqout;        // Debug Mode Equalization Signals Out (All Channels)
reg  [(8*8)-1:0]                test_dbg_eqber;        // Debug Mode Equalization BER Count O/P's (All Channels)
reg  [5:0]                      test_dbg_farend_lf;
reg  [5:0]                      test_dbg_farend_fs;
wire  [7:0]                      rx_ts_tgl_sync;
reg   [7:0]                      rx_ts_tgl_sync_d0;
wire  [7:0]                      rx_ts_tgl_re;
wire  [7:0]                      rx_ts_tgl_fe;
wire  [7:0]                      rx_ts_tgl;
wire  [7:0]                      rx_ts1_i;
wire  [7:0]                      rx_reject_coeff_i;
wire  [(8*18)-1:0]               rx_coeff_i;
wire  [7:0]                      rx_use_prst_i;
wire  [(8*4)-1:0]                rx_txpreset_i;
wire  [(8*2)-1:0]                rx_ecbits_i;
reg   [7:0]                      rx_ts1;
reg   [7:0]                      rx_reject_coeff;
reg   [(8*18)-1:0]               rx_coeff;
reg   [7:0]                      rx_use_prst;
reg   [(8*4)-1:0]                rx_txpreset;
reg   [(8*2)-1:0]                rx_ecbits;
reg   [7:0]                      tx_reject_coeff_i;     // Transmitted TS1 "reject Coeff" field
reg   [(8*18)-1:0]               tx_coeff_i;            // Transmitted TS1 "Coefficient" field
reg   [7:0]                      tx_use_prst_i;         // Transmitted TS1 "Use Preset" field
reg   [(8*4)-1:0]                tx_txpreset_i;         // Transmitted TS1 "Tx Preset" field
reg   [(8*4)-1:0]                store_tx_txpreset_i;   // Transmitted TS1 "Tx Preset" field
reg   [(8*2)-1:0]                tx_ecbits_i;           // Transmitted TS1 "EC" Field
reg                              tx_lntgl;              // Per lane Strobe Signal active when lane number is changed
reg                              tx_reject_coeff;       // Transmitted TS1 "reject Coeff" field
reg   [17:0]                     tx_coeff;              // Transmitted TS1 "Coefficient" field
reg                              tx_use_prst;           // Transmitted TS1 "Use Preset" field
reg   [3:0]                      tx_txpreset;           // Transmitted TS1 "Tx Preset" field
reg   [1:0]                      tx_ecbits;             // Transmitted TS1 "EC" Field
reg   [2:0]                      tx_lane_num;           // Lane number for which the above values should be applied
reg                              tx_alltgl;             // Strobe Signal indicating all lanes are updated and ready for Transmission
reg                              dbg_hold_ltssm_eqph;
reg                              dbg_rel_ltssm_eqph;
reg                              dbg_en_berchk_eqph;
reg   [3:0]                      snd_prst_cnt;
reg   [1:0]                      enable_cnt;
reg   [3:0]                      lane_cnt;
wire  [7:0]                      rx_ber_tgl;
wire  [(5*8)-1:0]                rx_ber_total_i;
reg   [7:0]                      rx_ber_max;
reg   [(5*8)-1:0]                rx_ber_total;
reg   [21:0]                     cpt_ber;
reg                              equlz_entered;
reg   [7:0]                      legal_coeff_prst;

//********************************************************************
// Test bus assignments
//********************************************************************
   // Force to use Test Bus for Equalization Bypass
   assign test_in_1_hip[4:0] = 5'h10;
   assign test_in_1_hip[14:5]= 10'h0;
   assign test_in_1_hip[15]  = 0;
   assign test_in_1_hip[16]  = 0;
   assign test_in_1_hip[19:17] = 3'h0;

   // Test In HIP
   assign test_in_hip[9:0]        = 10'h0;
   assign test_in_hip[10]      = dbg_hold_ltssm_eqph;
   assign test_in_hip[11]      = dbg_rel_ltssm_eqph;
   assign test_in_hip[12]      = dbg_en_berchk_eqph;
   assign test_in_hip[31:13]      = 18'h0;

   // Test in HIP
   assign {reserved_in[29:10],test_in_1_hip[31:20]} = test_dbg_eqin;
   assign reserved_in[31:30] = 2'h0;
   assign reserved_in[9:0] = 10'h0;

   // Test Out HIP
   always @(negedge rst_n or posedge pld_clk) begin
      if (rst_n == 1'b0) begin
         test_dbg_eqout       <= 256'h0;
         test_dbg_eqber       <= 64'h0;
         test_dbg_farend_lf   <= 6'h0;
         test_dbg_farend_fs   <= 6'h0;
      end
      else begin
         test_dbg_eqout       <= test_out_hip;
         test_dbg_eqber       <= test_out_1_hip;
         test_dbg_farend_lf   <= test_out_hip[9:4];
         test_dbg_farend_fs   <= {test_out_hip[3:0],test_out_1_hip[63:62]};
      end
   end

//********************************************************************
//Test Out Bus for Debug of Equalization SM
// --Ch0
// test_dbg_eqber[0]       = rx_ts_tgl[0]
// test_dbg_eqber[5:1]     = rx_ber_total[4:0]
// test_dbg_eqber[7:6]     = Not Connected
// ---Ch1
// test_dbg_eqber[8]       = rx_ts_tgl[1]
// test_dbg_eqber[13:9]    = rx_ber_total[9:5]
// ...
//********************************************************************
genvar id;
generate
   for (id = 0; id < (8); id = id+1) begin : EQULZ_DBG_BER_OUT_PORT
      assign  rx_ber_tgl[id]                     = test_dbg_eqber[(id*8)];
      assign  rx_ber_total_i[(5*(id+1))-1:5*id]  = test_dbg_eqber[((id*8)+5):((id*8)+1)];
   end
endgenerate


//********************************************************************
//Test Out Bus for Debug of Equalization SM
// --Ch0
// test_dbg_eqout[0]       = rx_ts_tgl[0]             // Indicates TS1/2 Received, toggles each time a TS is received
// test_dbg_eqout[1]       = rx_ts1[0]                // Indicates if a received OS is a TS1(1) or TS2(0)
// test_dbg_eqout[2]       = rx_reject_coeff[0]       // Received TS1 "reject Coeff" field
// test_dbg_eqout[20:3]    = rx_coeff[17:0]           // Received TS1 "Coefficient" field
// test_dbg_eqout[21]      = rx_use_prst[0]           // Received TS1 "Use Preset" field
// test_dbg_eqout[25:22]   = rx_txpreset[3:0]         // Received TS1 "Rx Preset" field
// test_dbg_eqout[27:26]   = rx_ecbits[1:0]           // Received TS1 "EC" Field
// test_dbg_eqout[31:28]   = Not Connected
// ---Ch1
// test_dbg_eqout[32]      = rx_ts_tgl[1]
// test_dbg_eqout[33]      = rx_ts1[1]
// test_dbg_eqout[34]      = rx_reject_coeff[1]
// test_dbg_eqout[52:35]   = rx_coeff[35:18]
// ...
//********************************************************************

genvar ib;
generate
   for (ib = 0; ib < (8); ib = ib+1) begin : EQULZ_DBG_OUT_PORT
      assign  rx_ts_tgl[ib]                       = test_dbg_eqout[(ib*32)];
      assign  rx_ts1_i[ib]                        = test_dbg_eqout[(ib*32)+1];
      assign  rx_reject_coeff_i[ib]               = test_dbg_eqout[(ib*32)+2];
      assign  rx_coeff_i[(18*(ib+1))-1:18*ib]     = test_dbg_eqout[((ib*32)+20):((ib*32)+3)];
      assign  rx_use_prst_i[ib]                   = test_dbg_eqout[(ib*32)+21];
      assign  rx_txpreset_i[(4*(ib+1))-1:4*ib]    = test_dbg_eqout[((ib*32)+25):((ib*32)+22)];
      assign  rx_ecbits_i[(2*(ib+1))-1:2*ib]      = test_dbg_eqout[((ib*32)+27):((ib*32)+26)];
   end
endgenerate

//********************************************************************
//Test In Bus for Debug of Equalization SM when k_g3_ltssm_eq_dbg is active
//-- Ch Based on Lane Num
// tx_lntgl              =  test_dbg_eqin[0]        // Per lane Strobe Signal active when lane number is changed
// tx_ts1                =  test_dbg_eqin[1]        // Not Used
// tx_reject_coeff       =  test_dbg_eqin[2]        // Transmitted TS1 "reject Coeff" field
// tx_coeff[17:0]        =  test_dbg_eqin[20:3]     // Transmitted TS1 "Coefficient" field
// tx_use_prst           =  test_dbg_eqin[21]       // Transmitted TS1 "Use Preset" field
// tx_txpreset[3:0]      =  test_dbg_eqin[25:22]    // Transmitted TS1 "Tx Preset" field
// tx_ecbits[1:0]        =  test_dbg_eqin[27:26]    // Transmitted TS1 "EC" Field
// tx_lane_num[2:0]      =  test_dbg_eqin[30:28]    // Lane number for which the above values should be applied
// tx_alltgl             =  test_dbg_eqin[31]       // Strobe Signal indicating all lanes are updated and ready for Transmission
//
//********************************************************************
assign test_dbg_eqin[0]     = tx_lntgl;           // Per lane Strobe Signal active when lane number is changed
assign test_dbg_eqin[1]     = 1'b1;               // Not Used
assign test_dbg_eqin[2]     = tx_reject_coeff;    // Transmitted TS1 "reject Coeff" field
assign test_dbg_eqin[20:3]  = tx_coeff[17:0];     // Transmitted TS1 "Coefficient" field
assign test_dbg_eqin[21]    = tx_use_prst;        // Transmitted TS1 "Use Preset" field
assign test_dbg_eqin[25:22] = tx_txpreset[3:0];   // Transmitted TS1 "Tx Preset" field
assign test_dbg_eqin[27:26] = tx_ecbits[1:0];     // Transmitted TS1 "EC" Field
assign test_dbg_eqin[30:28] = tx_lane_num[2:0];   // Lane number for which the above values should be applied
assign test_dbg_eqin[31]    = tx_alltgl;          // Strobe Signal indicating all lanes are updated and ready for Transmission


//********************************************************************
// Synchroniser for Bit 0 of test_dbg_eqin signal (Strobe) & bit 31
//********************************************************************
altpcie_hip_bitsync2
#(
.DWIDTH      (8)
)
altpcie_hip_bitsync_strobe_in
   (
   .clk      (pld_clk),
   .rst_n    (rst_n),
   .data_in  (rx_ts_tgl),
   .data_out (rx_ts_tgl_sync)
   );

// Lane Toggle signal RE & FE
genvar ic;
generate
   for (ic = 0; ic < (8); ic = ic+1) begin : RX_TGL_RE_FE
      assign rx_ts_tgl_re[ic] =  rx_ts_tgl_sync[ic] & ~rx_ts_tgl_sync_d0[ic];
      assign rx_ts_tgl_fe[ic] = ~rx_ts_tgl_sync[ic] & rx_ts_tgl_sync_d0[ic];
   end
endgenerate

//********************************************************************
// Register Sync data
//********************************************************************
always @(negedge rst_n or posedge pld_clk) begin
   if (rst_n == 1'b0) begin
      rx_ts_tgl_sync_d0 <= 8'd0;
   end
   else begin
      rx_ts_tgl_sync_d0 <= rx_ts_tgl_sync;
   end
end

//********************************************************************
// Store TS information of  ALL Lane
//********************************************************************
always @(negedge rst_n or posedge pld_clk) begin
   if (rst_n == 1'b0) begin
      rx_ts1                         <= 1'b0;
      rx_reject_coeff                <= 1'b0;
      rx_coeff                       <= 18'd0;
      rx_use_prst                    <= 1'b0;
      rx_txpreset                    <= 4'd0;
      rx_ecbits                      <= 2'd0;
      rx_ber_total                   <= 40'd0;
      rx_ber_max                     <= 8'd0;
   end
   else begin
      // CH0
      if ((rx_ts_tgl_re[0] | rx_ts_tgl_fe[0])) begin
         rx_ts1[0]                      <= rx_ts1_i[0];
         rx_reject_coeff[0]             <= rx_reject_coeff_i[0];
         rx_coeff[(18*(0+1))-1:18*0]    <= rx_coeff_i[(18*(0+1))-1:18*0];
         rx_use_prst[0]                 <= rx_use_prst_i[0];
         rx_txpreset[(4*(0+1))-1:4*0]   <= rx_txpreset_i[(4*(0+1))-1:4*0];
         rx_ecbits[(2*(0+1))-1:2*0]     <= rx_ecbits_i[(2*(0+1))-1:2*0];
         rx_ber_total[(5*(0+1))-1:5*0]  <= rx_ber_total_i[(5*(0+1))-1:5*0];
         rx_ber_max[0]                  <= (rx_ber_total_i[(5*(0+1))-1:5*0] >= 5'h1f) ? 1'b1 : 1'b0;
      end
      // CH1
      if ((rx_ts_tgl_re[1] | rx_ts_tgl_fe[1])) begin
         rx_ts1[1]                      <= rx_ts1_i[1];
         rx_reject_coeff[1]             <= rx_reject_coeff_i[1];
         rx_coeff[(18*(1+1))-1:18*1]    <= rx_coeff_i[(18*(1+1))-1:18*1];
         rx_use_prst[1]                 <= rx_use_prst_i[1];
         rx_txpreset[(4*(1+1))-1:4*1]   <= rx_txpreset_i[(4*(1+1))-1:4*1];
         rx_ecbits[(2*(1+1))-1:2*1]     <= rx_ecbits_i[(2*(1+1))-1:2*1];
         rx_ber_total[(5*(1+1))-1:5*1]  <= rx_ber_total_i[(5*(1+1))-1:5*1];
         rx_ber_max[1]                  <= (rx_ber_total_i[(5*(1+1))-1:5*1] >= 5'h1f) ? 1'b1 : 1'b0;
      end
      // CH2
      if ((rx_ts_tgl_re[2] | rx_ts_tgl_fe[2])) begin
         rx_ts1[2]                      <= rx_ts1_i[2];
         rx_reject_coeff[2]             <= rx_reject_coeff_i[2];
         rx_coeff[(18*(2+1))-1:18*2]    <= rx_coeff_i[(18*(2+1))-1:18*2];
         rx_use_prst[2]                 <= rx_use_prst_i[2];
         rx_txpreset[(4*(2+1))-1:4*2]   <= rx_txpreset_i[(4*(2+1))-1:4*2];
         rx_ecbits[(2*(2+1))-1:2*2]     <= rx_ecbits_i[(2*(2+1))-1:2*2];
         rx_ber_total[(5*(2+1))-1:5*2]  <= rx_ber_total_i[(5*(2+1))-1:5*2];
         rx_ber_max[2]                  <= (rx_ber_total_i[(5*(2+1))-1:5*2] >= 5'h1f) ? 1'b1 : 1'b0;
      end
      // CH3
      if ((rx_ts_tgl_re[3] | rx_ts_tgl_fe[3])) begin
         rx_ts1[3]                      <= rx_ts1_i[3];
         rx_reject_coeff[3]             <= rx_reject_coeff_i[3];
         rx_coeff[(18*(3+1))-1:18*3]    <= rx_coeff_i[(18*(3+1))-1:18*3];
         rx_use_prst[3]                 <= rx_use_prst_i[3];
         rx_txpreset[(4*(3+1))-1:4*3]   <= rx_txpreset_i[(4*(3+1))-1:4*3];
         rx_ecbits[(2*(3+1))-1:2*3]     <= rx_ecbits_i[(2*(3+1))-1:2*3];
         rx_ber_total[(5*(3+1))-1:5*3]  <= rx_ber_total_i[(5*(3+1))-1:5*3];
         rx_ber_max[3]                  <= (rx_ber_total_i[(5*(3+1))-1:5*3] >= 5'h1f) ? 1'b1 : 1'b0;
      end
      // CH4
      if ((rx_ts_tgl_re[4] | rx_ts_tgl_fe[4])) begin
         rx_ts1[4]                      <= rx_ts1_i[4];
         rx_reject_coeff[4]             <= rx_reject_coeff_i[4];
         rx_coeff[(18*(4+1))-1:18*4]    <= rx_coeff_i[(18*(4+1))-1:18*4];
         rx_use_prst[4]                 <= rx_use_prst_i[4];
         rx_txpreset[(4*(4+1))-1:4*4]   <= rx_txpreset_i[(4*(4+1))-1:4*4];
         rx_ecbits[(2*(4+1))-1:2*4]     <= rx_ecbits_i[(2*(4+1))-1:2*4];
         rx_ber_total[(5*(4+1))-1:5*4]  <= rx_ber_total_i[(5*(4+1))-1:5*4];
         rx_ber_max[4]                  <= (rx_ber_total_i[(5*(4+1))-1:5*4] >= 5'h1f) ? 1'b1 : 1'b0;
      end
      // CH5
      if ((rx_ts_tgl_re[5] | rx_ts_tgl_fe[5])) begin
         rx_ts1[5]                      <= rx_ts1_i[5];
         rx_reject_coeff[5]             <= rx_reject_coeff_i[5];
         rx_coeff[(18*(5+1))-1:18*5]    <= rx_coeff_i[(18*(5+1))-1:18*5];
         rx_use_prst[5]                 <= rx_use_prst_i[5];
         rx_txpreset[(4*(5+1))-1:4*5]   <= rx_txpreset_i[(4*(5+1))-1:4*5];
         rx_ecbits[(2*(5+1))-1:2*5]     <= rx_ecbits_i[(2*(5+1))-1:2*5];
         rx_ber_total[(5*(5+1))-1:5*5]  <= rx_ber_total_i[(5*(5+1))-1:5*5];
         rx_ber_max[5]                  <= (rx_ber_total_i[(5*(5+1))-1:5*5] >= 5'h1f) ? 1'b1 : 1'b0;
      end
      // CH6
      if ((rx_ts_tgl_re[6] | rx_ts_tgl_fe[6])) begin
         rx_ts1[6]                      <= rx_ts1_i[6];
         rx_reject_coeff[6]             <= rx_reject_coeff_i[6];
         rx_coeff[(18*(6+1))-1:18*6]    <= rx_coeff_i[(18*(6+1))-1:18*6];
         rx_use_prst[6]                 <= rx_use_prst_i[6];
         rx_txpreset[(4*(6+1))-1:4*6]   <= rx_txpreset_i[(4*(6+1))-1:4*6];
         rx_ecbits[(2*(6+1))-1:2*6]     <= rx_ecbits_i[(2*(6+1))-1:2*6];
         rx_ber_total[(5*(6+1))-1:5*6]  <= rx_ber_total_i[(5*(6+1))-1:5*6];
         rx_ber_max[6]                  <= (rx_ber_total_i[(5*(6+1))-1:5*6] >= 5'h1f) ? 1'b1 : 1'b0;
      end
      // CH7
      if ((rx_ts_tgl_re[7] | rx_ts_tgl_fe[7])) begin
         rx_ts1[7]                      <= rx_ts1_i[7];
         rx_reject_coeff[7]             <= rx_reject_coeff_i[7];
         rx_coeff[(18*(7+1))-1:18*7]    <= rx_coeff_i[(18*(7+1))-1:18*7];
         rx_use_prst[7]                 <= rx_use_prst_i[7];
         rx_txpreset[(4*(7+1))-1:4*7]   <= rx_txpreset_i[(4*(7+1))-1:4*7];
         rx_ecbits[(2*(7+1))-1:2*7]     <= rx_ecbits_i[(2*(7+1))-1:2*7];
         rx_ber_total[(5*(7+1))-1:5*7]  <= rx_ber_total_i[(5*(7+1))-1:5*7];
         rx_ber_max[7]                  <= (rx_ber_total_i[(5*(7+1))-1:5*7] >= 5'h1f) ? 1'b1 : 1'b0;
      end
   end
end

//********************************************************************
// Store TS information of  ALL Lane
//********************************************************************
  // Equlization SM
   always @(negedge rst_n or posedge pld_clk) begin
      if (rst_n == 1'b0) begin
         tx_coeff_pma        <= {8{DEFAULT_PRST}};
         tx_coeff_i          <= 144'd0;
         tx_use_prst_i       <= 8'd0;
         tx_txpreset_i       <= 32'd0;
         tx_ecbits_i         <= 16'd0;
         tx_reject_coeff_i   <= 8'd0;
         dbg_hold_ltssm_eqph <= 1'b0;
         dbg_rel_ltssm_eqph  <= 1'b0;
         dbg_en_berchk_eqph  <= 1'b0;
         equlz_entered       <= 1'b0;
         legal_coeff_prst    <= 8'd0;
      end
      else begin
         dbg_en_berchk_eqph  <= 1'b0;
         case(ltssm_state)
           DET_QUIET: begin
              tx_coeff_pma        <= {8{DEFAULT_PRST}};
              equlz_entered       <= 1'b0;
              dbg_hold_ltssm_eqph <= 1'b0;
              dbg_rel_ltssm_eqph  <= 1'b0;
           end
           EQZ_PHASE_0: begin
              tx_coeff_pma        <= {8{DEFAULT_PRST}};
              dbg_hold_ltssm_eqph <= 1'b0;
              dbg_rel_ltssm_eqph  <= 1'b0;
           end
           //PRE Fill , waiting to enter Phase3
           EQZ_PHASE_2: begin
              tx_coeff_i          <= {8{PRST_COEFF_MAP0}}; // Dont care, can be anything
              tx_txpreset_i       <= {8{4'd0}};
              tx_use_prst_i       <= 8'd0;
              tx_reject_coeff_i   <= 8'd0;
              tx_ecbits_i         <= {8{2'b11}};
              dbg_hold_ltssm_eqph <= 1'b0;
              dbg_rel_ltssm_eqph  <= 1'b0;
           end
           EQZ_PHASE_3: begin
              dbg_hold_ltssm_eqph <= 1'b1;
              dbg_rel_ltssm_eqph  <= 1'b0;
              tx_ecbits_i         <= {8{2'b11}};
              if (lane_cnt == 4'd8 & rx_ecbits[1:0] == 2'b11) begin
                 if (enable_cnt == 2'd3) begin
                    tx_coeff_pma[(18*(0+1))-1:18*0] <= (~tx_reject_coeff_i[0]) ? (rx_use_prst[0] ? map_prst_coeff(rx_txpreset[(4*(0+1))-1:4*0]) : rx_coeff[(18*(0+1))-1:18*0]) : tx_coeff_pma[(18*(0+1))-1:18*0];
                    tx_coeff_pma[(18*(1+1))-1:18*1] <= (~tx_reject_coeff_i[1]) ? (rx_use_prst[1] ? map_prst_coeff(rx_txpreset[(4*(1+1))-1:4*1]) : rx_coeff[(18*(1+1))-1:18*1]) : tx_coeff_pma[(18*(1+1))-1:18*1];
                    tx_coeff_pma[(18*(2+1))-1:18*2] <= (~tx_reject_coeff_i[2]) ? (rx_use_prst[2] ? map_prst_coeff(rx_txpreset[(4*(2+1))-1:4*2]) : rx_coeff[(18*(2+1))-1:18*2]) : tx_coeff_pma[(18*(2+1))-1:18*2];
                    tx_coeff_pma[(18*(3+1))-1:18*3] <= (~tx_reject_coeff_i[3]) ? (rx_use_prst[3] ? map_prst_coeff(rx_txpreset[(4*(3+1))-1:4*3]) : rx_coeff[(18*(3+1))-1:18*3]) : tx_coeff_pma[(18*(3+1))-1:18*3];
                    tx_coeff_pma[(18*(4+1))-1:18*4] <= (~tx_reject_coeff_i[4]) ? (rx_use_prst[4] ? map_prst_coeff(rx_txpreset[(4*(4+1))-1:4*4]) : rx_coeff[(18*(4+1))-1:18*4]) : tx_coeff_pma[(18*(4+1))-1:18*4];
                    tx_coeff_pma[(18*(5+1))-1:18*5] <= (~tx_reject_coeff_i[5]) ? (rx_use_prst[5] ? map_prst_coeff(rx_txpreset[(4*(5+1))-1:4*5]) : rx_coeff[(18*(5+1))-1:18*5]) : tx_coeff_pma[(18*(5+1))-1:18*5];
                    tx_coeff_pma[(18*(6+1))-1:18*6] <= (~tx_reject_coeff_i[6]) ? (rx_use_prst[6] ? map_prst_coeff(rx_txpreset[(4*(6+1))-1:4*6]) : rx_coeff[(18*(6+1))-1:18*6]) : tx_coeff_pma[(18*(6+1))-1:18*6];
                    tx_coeff_pma[(18*(7+1))-1:18*7] <= (~tx_reject_coeff_i[7]) ? (rx_use_prst[7] ? map_prst_coeff(rx_txpreset[(4*(7+1))-1:4*7]) : rx_coeff[(18*(7+1))-1:18*7]) : tx_coeff_pma[(18*(7+1))-1:18*7];
                 end

                 //tx_coeff_i          <= rx_coeff;
                                          tx_coeff_i[(18*(0+1))-1:18*0] <= (~tx_reject_coeff_i[0]) ? (rx_use_prst[0] ? map_prst_coeff(rx_txpreset[(4*(0+1))-1:4*0]) : rx_coeff[(18*(0+1))-1:18*0]) : tx_coeff_pma[(18*(0+1))-1:18*0];
                 tx_coeff_i[(18*(1+1))-1:18*1] <= (~tx_reject_coeff_i[1]) ? (rx_use_prst[1] ? map_prst_coeff(rx_txpreset[(4*(1+1))-1:4*1]) : rx_coeff[(18*(1+1))-1:18*1]) : tx_coeff_pma[(18*(1+1))-1:18*1];
                 tx_coeff_i[(18*(2+1))-1:18*2] <= (~tx_reject_coeff_i[2]) ? (rx_use_prst[2] ? map_prst_coeff(rx_txpreset[(4*(2+1))-1:4*2]) : rx_coeff[(18*(2+1))-1:18*2]) : tx_coeff_pma[(18*(2+1))-1:18*2];
                 tx_coeff_i[(18*(3+1))-1:18*3] <= (~tx_reject_coeff_i[3]) ? (rx_use_prst[3] ? map_prst_coeff(rx_txpreset[(4*(3+1))-1:4*3]) : rx_coeff[(18*(3+1))-1:18*3]) : tx_coeff_pma[(18*(3+1))-1:18*3];
                 tx_coeff_i[(18*(4+1))-1:18*4] <= (~tx_reject_coeff_i[4]) ? (rx_use_prst[4] ? map_prst_coeff(rx_txpreset[(4*(4+1))-1:4*4]) : rx_coeff[(18*(4+1))-1:18*4]) : tx_coeff_pma[(18*(4+1))-1:18*4];
                 tx_coeff_i[(18*(5+1))-1:18*5] <= (~tx_reject_coeff_i[5]) ? (rx_use_prst[5] ? map_prst_coeff(rx_txpreset[(4*(5+1))-1:4*5]) : rx_coeff[(18*(5+1))-1:18*5]) : tx_coeff_pma[(18*(5+1))-1:18*5];
                 tx_coeff_i[(18*(6+1))-1:18*6] <= (~tx_reject_coeff_i[6]) ? (rx_use_prst[6] ? map_prst_coeff(rx_txpreset[(4*(6+1))-1:4*6]) : rx_coeff[(18*(6+1))-1:18*6]) : tx_coeff_pma[(18*(6+1))-1:18*6];
                 tx_coeff_i[(18*(7+1))-1:18*7] <= (~tx_reject_coeff_i[7]) ? (rx_use_prst[7] ? map_prst_coeff(rx_txpreset[(4*(7+1))-1:4*7]) : rx_coeff[(18*(7+1))-1:18*7]) : tx_coeff_pma[(18*(7+1))-1:18*7];
                 tx_txpreset_i       <= rx_txpreset;
                 tx_use_prst_i       <= rx_use_prst;
                 tx_reject_coeff_i[0]<= (rx_use_prst[0] ? (rx_txpreset[(4*(0+1))-1:4*0] > 4'd10) : coeff_err_chk(rx_coeff[(18*(0+1))-1:18*0]));
                 tx_reject_coeff_i[1]<= (rx_use_prst[1] ? (rx_txpreset[(4*(1+1))-1:4*1] > 4'd10) : coeff_err_chk(rx_coeff[(18*(1+1))-1:18*1]));
                 tx_reject_coeff_i[2]<= (rx_use_prst[2] ? (rx_txpreset[(4*(2+1))-1:4*2] > 4'd10) : coeff_err_chk(rx_coeff[(18*(2+1))-1:18*2]));
                 tx_reject_coeff_i[3]<= (rx_use_prst[3] ? (rx_txpreset[(4*(3+1))-1:4*3] > 4'd10) : coeff_err_chk(rx_coeff[(18*(3+1))-1:18*3]));
                 tx_reject_coeff_i[4]<= (rx_use_prst[4] ? (rx_txpreset[(4*(4+1))-1:4*4] > 4'd10) : coeff_err_chk(rx_coeff[(18*(4+1))-1:18*4]));
                 tx_reject_coeff_i[5]<= (rx_use_prst[5] ? (rx_txpreset[(4*(5+1))-1:4*5] > 4'd10) : coeff_err_chk(rx_coeff[(18*(5+1))-1:18*5]));
                 tx_reject_coeff_i[6]<= (rx_use_prst[6] ? (rx_txpreset[(4*(6+1))-1:4*6] > 4'd10) : coeff_err_chk(rx_coeff[(18*(6+1))-1:18*6]));
                 tx_reject_coeff_i[7]<= (rx_use_prst[7] ? (rx_txpreset[(4*(7+1))-1:4*7] > 4'd10) : coeff_err_chk(rx_coeff[(18*(7+1))-1:18*7]));
              end
              if (((rx_ecbits[1:0] == 2'b00) & (rx_ts1 & ACT_LANES) == ACT_LANES) | timeout_ph3) begin
                 dbg_rel_ltssm_eqph  <= 1'b1;
              end
           end
                          REC_RXLCK : begin
              dbg_hold_ltssm_eqph <= 1'b0;
              dbg_rel_ltssm_eqph  <= 1'b0;
                          end
         endcase
      end
   end

//********************************************************************
// Logic to send out TS1's
//********************************************************************
   always @(negedge rst_n or posedge pld_clk) begin
      if (rst_n == 1'b0) begin
         lane_cnt        <= 0;
         enable_cnt      <= 0;
         tx_lntgl        <= 1'b0;
         tx_reject_coeff <= 1'b0;
         tx_coeff        <= 18'd0;
         tx_use_prst     <= 1'b0;
         tx_txpreset     <= 4'd0;
         tx_ecbits       <= 2'd0;
         tx_lane_num     <= 3'd0;
         tx_alltgl       <= 1'b0;
      end
      else if (ltssm_state == EQZ_PHASE_3 | ltssm_state == EQZ_PHASE_2)  begin
         if (lane_cnt == 4'd8 & enable_cnt == 2'd3) begin
            lane_cnt    <= 4'd0;
            enable_cnt  <= 0;
         end
         else  begin
            lane_cnt    <= (enable_cnt == 2'd3) ? lane_cnt + 4'd1 : lane_cnt;
            enable_cnt  <= enable_cnt + 2'd1;
         end

         case(lane_cnt)
            4'd0:begin
               tx_lntgl        <= (enable_cnt == 'd0) ? ~tx_lntgl : tx_lntgl;
               tx_reject_coeff <= tx_reject_coeff_i[0];
               tx_coeff        <= tx_coeff_i[(18*(0+1))-1:18*0];
               tx_use_prst     <= tx_use_prst_i[0];
               tx_txpreset     <= tx_txpreset_i[(4*(0+1))-1:4*0];
               tx_ecbits       <= tx_ecbits_i[(2*(0+1))-1:2*0];
               tx_lane_num     <= lane_cnt[2:0];
            end
            4'd1:begin
               tx_lntgl        <= (enable_cnt == 'd0) ? ~tx_lntgl : tx_lntgl;
               tx_reject_coeff <= tx_reject_coeff_i[1];
               tx_coeff        <= tx_coeff_i[(18*(1+1))-1:18*1];
               tx_use_prst     <= tx_use_prst_i[1];
               tx_txpreset     <= tx_txpreset_i[(4*(1+1))-1:4*1];
               tx_ecbits       <= tx_ecbits_i[(2*(1+1))-1:2*1];
               tx_lane_num     <= lane_cnt[2:0];
            end
            4'd2:begin
               tx_lntgl        <= (enable_cnt == 'd0) ? ~tx_lntgl : tx_lntgl;
               tx_reject_coeff <= tx_reject_coeff_i[2];
               tx_coeff        <= tx_coeff_i[(18*(2+1))-1:18*2];
               tx_use_prst     <= tx_use_prst_i[2];
               tx_txpreset     <= tx_txpreset_i[(4*(2+1))-1:4*2];
               tx_ecbits       <= tx_ecbits_i[(2*(2+1))-1:2*2];
               tx_lane_num     <= lane_cnt[2:0];
            end
            4'd3:begin
               tx_lntgl        <= (enable_cnt == 'd0) ? ~tx_lntgl : tx_lntgl;
               tx_reject_coeff <= tx_reject_coeff_i[3];
               tx_coeff        <= tx_coeff_i[(18*(3+1))-1:18*3];
               tx_use_prst     <= tx_use_prst_i[3];
               tx_txpreset     <= tx_txpreset_i[(4*(3+1))-1:4*3];
               tx_ecbits       <= tx_ecbits_i[(2*(3+1))-1:2*3];
               tx_lane_num     <= lane_cnt[2:0];
            end
            4'd4:begin
               tx_lntgl        <= (enable_cnt == 'd0) ? ~tx_lntgl : tx_lntgl;
               tx_reject_coeff <= tx_reject_coeff_i[4];
               tx_coeff        <= tx_coeff_i[(18*(4+1))-1:18*4];
               tx_use_prst     <= tx_use_prst_i[4];
               tx_txpreset     <= tx_txpreset_i[(4*(4+1))-1:4*4];
               tx_ecbits       <= tx_ecbits_i[(2*(4+1))-1:2*4];
               tx_lane_num     <= lane_cnt[2:0];
            end
            4'd5:begin
               tx_lntgl        <= (enable_cnt == 'd0) ? ~tx_lntgl : tx_lntgl;
               tx_reject_coeff <= tx_reject_coeff_i[5];
               tx_coeff        <= tx_coeff_i[(18*(5+1))-1:18*5];
               tx_use_prst     <= tx_use_prst_i[5];
               tx_txpreset     <= tx_txpreset_i[(4*(5+1))-1:4*5];
               tx_ecbits       <= tx_ecbits_i[(2*(5+1))-1:2*5];
               tx_lane_num     <= lane_cnt[2:0];
            end
            4'd6:begin
               tx_lntgl        <= (enable_cnt == 'd0) ? ~tx_lntgl : tx_lntgl;
               tx_reject_coeff <= tx_reject_coeff_i[6];
               tx_coeff        <= tx_coeff_i[(18*(6+1))-1:18*6];
               tx_use_prst     <= tx_use_prst_i[6];
               tx_txpreset     <= tx_txpreset_i[(4*(6+1))-1:4*6];
               tx_ecbits       <= tx_ecbits_i[(2*(6+1))-1:2*6];
               tx_lane_num     <= lane_cnt[2:0];
            end
            3'd7:begin
               tx_lntgl        <= (enable_cnt == 'd0) ? ~tx_lntgl : tx_lntgl;
               tx_reject_coeff <= tx_reject_coeff_i[7];
               tx_coeff        <= tx_coeff_i[(18*(7+1))-1:18*7];
               tx_use_prst     <= tx_use_prst_i[7];
               tx_txpreset     <= tx_txpreset_i[(4*(7+1))-1:4*7];
               tx_ecbits       <= tx_ecbits_i[(2*(7+1))-1:2*7];
               tx_lane_num     <= lane_cnt[2:0];
               tx_alltgl       <= (enable_cnt == 'd0) ? ~tx_alltgl : tx_alltgl;
            end
         endcase
      end
      else begin
         enable_cnt  <= 'd0;
         lane_cnt    <= 'd0;
      end
   end


//********************************************************************
// Function to convert Preset to Coeffients
//********************************************************************
function [17:0] map_prst_coeff;
   input  [3:0] txpreset_in;
   begin
      case(txpreset_in)
         4'd0   : map_prst_coeff = PRST_COEFF_MAP0;
         4'd1   : map_prst_coeff = PRST_COEFF_MAP1;
         4'd2   : map_prst_coeff = PRST_COEFF_MAP2;
         4'd3   : map_prst_coeff = PRST_COEFF_MAP3;
         4'd4   : map_prst_coeff = PRST_COEFF_MAP4;
         4'd5   : map_prst_coeff = PRST_COEFF_MAP5;
         4'd6   : map_prst_coeff = PRST_COEFF_MAP6;
         4'd7   : map_prst_coeff = PRST_COEFF_MAP7;
         4'd8   : map_prst_coeff = PRST_COEFF_MAP8;
         4'd9   : map_prst_coeff = PRST_COEFF_MAP9;
         4'd10  : map_prst_coeff = PRST_COEFF_MAP10;
         default: map_prst_coeff = PRST_COEFF_MAPERR;
      endcase
   end
endfunction

//********************************************************************
// Function check coeff is error
//********************************************************************
function  coeff_err_chk;
   input [17:0] coeff_data_in;
   reg          err_rule_a;
   reg          err_rule_b;
   reg          err_rule_ca;
   reg          err_rule_cb;
   reg          err_full_swing;
   reg          err_half_swing;
   reg          err_swing;
   reg   [5:0]  coeff_prec;
   reg   [5:0]  coeff_curs;
   reg   [5:0]  coeff_pstc;

   begin
      // Rules for Transmitter Coefficients
      coeff_pstc = coeff_data_in[17:12];
      coeff_curs = coeff_data_in[11:6];
      coeff_prec = coeff_data_in[5:0];

      err_full_swing  = (K_G3_FULL_SWING <'d24 | K_G3_FULL_SWING > 'd63) ? 1'b1 : 1'b0;
      err_half_swing  = (K_G3_FULL_SWING <'d12 | K_G3_FULL_SWING > 'd63) ? 1'b1 : 1'b0;
      err_swing       = (K_G3_EN_HALF_SWING) ? err_half_swing : err_full_swing;

      // Error Rules
      //a) |C-1| <= (FS/4);
      err_rule_a = (coeff_prec <= K_G3_FULL_SWING[5:2]) ? 1'b0 : 1'b1;

      //b) |C-1|+C0+|C+1| = FS (Do not allow peak power to change with adaptation
      err_rule_b = (({2'b00,coeff_prec} + {2'b00,coeff_curs} + {2'b00,coeff_pstc}) == {2'b00,K_G3_FULL_SWING}) ? 1'b0 : 1'b1;

      //c) C0-|C-1|-|C+1 |>= LF
      // Check if the number is positive, before subtracting
      err_rule_ca = ({2'b00,coeff_curs} >= ({2'b00,coeff_prec} + {2'b00,coeff_pstc})) ? 1'b1 : 1'b0;
      err_rule_cb = (err_rule_ca) ? ((({2'b00,coeff_curs} - ({2'b00,coeff_prec} + {2'b00,coeff_pstc})) >= {2'b00,K_G3_LOW_FREQ}) ? 1'b0 : 1'b1) : 1'b1;

      coeff_err_chk = (err_rule_a | err_rule_b | err_rule_cb | err_swing);
   end
endfunction

//********************************************************************
// phase3  32ms Timeout
//********************************************************************
  always @(negedge rst_n or posedge pld_clk) begin
      if (rst_n == 1'b0) begin
         timeout_ph3  <= 1'b0 ;
         cpt_ph3      <= 23'd0 ;
      end
      else if (ltssm_state != EQZ_PHASE_3) begin
         timeout_ph3  <= 1'b0 ;
         cpt_ph3      <= TIMEOUT_32MS;
      end
      else begin
         if (cpt_ph3 != 23'd0) begin
            cpt_ph3     <= cpt_ph3 - 23'd1 ;
            timeout_ph3 <= 1'b0 ;
         end
         else begin
            timeout_ph3 <= 1'b1 ;
         end
      end
   end

endmodule

// Module to access HIP DPRIO for CV and PTC
module hip_eq_dprio #(
parameter MODE = "EP",
parameter use_config_bypass_hwtcl = 0,
parameter default_speed = 2'b11
)
(
input   wire            pld_clk,
input   wire            pld_reset_n,
input   wire    [4:0]   ltssm_state,

input [3 : 0]           tl_cfg_add,
input [31 : 0]          tl_cfg_ctl,
input [12:0]            cfglink2csrpld,

input   wire            reconfig_clk,
input   wire            reconfig_reset_n,

output  wire            hip_reconfig_clk/*synthesis noprune*/,
output  wire            hip_reconfig_reset_n/*synthesis noprune*/,
output  reg             hip_reconfig_write/*synthesis noprune*/,
output  reg     [15:0]  hip_reconfig_writedata/*synthesis noprune*/,
output  wire    [1:0]   hip_reconfig_byteen/*synthesis noprune*/,
output  reg     [9:0]   hip_reconfig_address/*synthesis noprune*/,
output  reg             hip_reconfig_read/*synthesis noprune*/,
input   wire    [15:0]  hip_reconfig_readdata/*synthesis noprune*/,
output  reg             ser_shift_load/*synthesis noprune*/,
output  reg             interface_sel/*synthesis noprune*/
);

//DPRIO INIT
localparam IDLE = 2'b00;
localparam SER  = 2'b01;
localparam SEL  = 2'b11;
localparam DONE = 2'b10;

//DPRIO R/W
localparam BYPASS_OFF = 3'b000;
localparam READ_PTC   = 3'b001;
localparam READ_CV    = 3'b010;
localparam WRITE_PTC  = 3'b11;
localparam WRITE_CV   = 3'b100;
localparam BYPASS_ON  = 3'b101;


//VEC SYNC
wire [4:0]      ltssm_sync;

//LTSSM
reg [4:0]       ltssm_sync_r;

//PHASE ENTRY/EXIT DETECT
wire            phase_entry;
wire            phase_exit;


reg [1:0]       init_state;
reg [2:0]       init_count;

reg [2:0]       state;
reg             k_g3_ltssm_eq_dbg;

//READ DATA VALID - 4 cycle latency from read
wire            readdata_valid;
reg [3:0]       read_reg;

// CV test related - Change TLS when in non L0 state
wire            tls_entry;
wire            tls_exit;
reg [1:0]       target_link_speed;
wire [1:0]      target_link_speed_sync;
reg [1:0]       program_tls;
wire [3:0]      tl_cfg_add_sync;
wire [31:0]     tl_cfg_ctl_sync;

//###############################################

//RECONFIG WIRE
assign hip_reconfig_byteen  = 2'b11;    //always enable both bytes
assign hip_reconfig_clk     = reconfig_clk;
assign hip_reconfig_reset_n = reconfig_reset_n;

altpcie_hip_vecsync2
#(
.DWIDTH         ( 5 )   // Sync Data input
)
vecsync_ltssm(
// Inputs
.wr_clk         ( pld_clk ),                    // write clock
.rd_clk         ( reconfig_clk ),               // read clock
.wr_rst_n       ( pld_reset_n ),                // async write reset
.rd_rst_n       ( reconfig_reset_n ),           // async read reset
.data_in        ( ltssm_state ),                // data in
// Outputs
.data_out       ( ltssm_sync )                  // data out
);


//LTSSM
always@( posedge reconfig_clk or negedge reconfig_reset_n )
begin
   if( ~reconfig_reset_n )
      ltssm_sync_r <= 0;
   else
      ltssm_sync_r <= ltssm_sync;
end



always @(posedge pld_clk or negedge pld_reset_n)
begin
  if (~pld_reset_n)
    target_link_speed <= 2'b00;
  else if ( use_config_bypass_hwtcl )
    target_link_speed <=  cfglink2csrpld[1:0];
  else if ((tl_cfg_add == 4'h2))
    target_link_speed <=  tl_cfg_ctl[1:0];
end

altpcie_hip_vecsync2
#(
.DWIDTH         ( 2 )                      // Sync Data input
)
vecsync_tls(
// Inputs
.wr_clk         ( pld_clk ),               // write clock
.rd_clk         ( reconfig_clk ),          // read clock
.wr_rst_n       ( pld_reset_n ),           // async write reset
.rd_rst_n       ( reconfig_reset_n ),      // async read reset
.data_in        ( target_link_speed ),     // data in
// Outputs
.data_out       ( target_link_speed_sync ) // data out
);


always@( posedge reconfig_clk or negedge reconfig_reset_n )
begin
   if( ~reconfig_reset_n )
      program_tls <= 2'b11;
   else
   begin
      if (ltssm_sync_r == 5'hf && ltssm_sync != 5'hf) // exit L0
         program_tls <= target_link_speed_sync;
      else if (ltssm_sync_r != 5'hf && ltssm_sync == 5'hf) // back to L0
         program_tls <= default_speed;
   end
end

//PHASE ENTRY/EXIT DETECT
generate
if( MODE == "EP" )                                      //detect ltssm == 1E    EP phase 3
begin
        assign phase_entry = ( ltssm_sync == 5'h1E && ltssm_sync_r != 5'h1E ) ? 1'b1 : 1'b0;
        assign phase_exit = ( ltssm_sync != 5'h1E && ltssm_sync_r == 5'h1E ) ? 1'b1 : 1'b0;
end

else                                                            //detect ltssm == 1D    RP phase 2
begin
        assign phase_entry = ( ltssm_sync == 5'h1D && ltssm_sync_r != 5'h1D ) ? 1'b1 : 1'b0;
        assign phase_exit = ( ltssm_sync != 5'h1D && ltssm_sync_r == 5'h1D ) ? 1'b1 : 1'b0;
end
endgenerate

assign tls_exit = ( ltssm_sync == 5'h0F && ltssm_sync_r != 5'h0F ) ? 1'b1 : 1'b0;
assign tls_entry = ( ltssm_sync != 5'h0F && ltssm_sync_r == 5'h0F ) ? 1'b1 : 1'b0;

//DPRIO INIT
always@( posedge reconfig_clk or negedge reconfig_reset_n )
begin
   if( ~reconfig_reset_n )
   begin
      init_state <= IDLE;
      init_count <= 0;
      ser_shift_load <= 1'b1;
      interface_sel <= 1'b1;
   end

   else
   begin
      init_count <= init_count + 1'b1;

      case( init_state )
         IDLE : begin
            if( &init_count )
            begin
               init_state <= SER;
               ser_shift_load <= 1'b0;
               interface_sel <= 1'b1;
            end
         end
         SER : begin
            if( &init_count )
            begin
               init_state <= SEL;
               ser_shift_load <= 1'b1;
               interface_sel <= 1'b1;
            end
         end
         SEL : begin
            if( &init_count )
            begin
               init_state <= DONE;
               ser_shift_load <= 1'b1;
               interface_sel <= 1'b0;
            end
         end
         DONE : begin
            init_state <= DONE;
            ser_shift_load <= 1'b1;
            interface_sel <= 1'b0;
         end
      endcase
   end
end


wire [9:0] hip_reconfig_address_ptc_sld;
wire [9:0] hip_reconfig_address_cv_sld;

lpm_constant #(
   .lpm_cvalue (10'h002),
   .lpm_hint   ("ENABLE_RUNTIME_MOD=YES, INSTANCE_NAME=PADR"),
   .lpm_type   ("LPM_CONSTANT"),
   .lpm_width  (10)
   ) dprio_ptc_addr( .result(hip_reconfig_address_cv_sld) );


lpm_constant #(
   .lpm_cvalue (10'h0B7),
   .lpm_hint   ("ENABLE_RUNTIME_MOD=YES, INSTANCE_NAME=CADR"),
   .lpm_type   ("LPM_CONSTANT"),
   .lpm_width  (10)
   ) dprio_cv_addr( .result(hip_reconfig_address_ptc_sld) );



//DPRIO R/W for PTC
always@( posedge reconfig_clk or negedge reconfig_reset_n )
begin
   if( ~reconfig_reset_n )
   begin
      state <= BYPASS_OFF;
      k_g3_ltssm_eq_dbg <= 0;
      hip_reconfig_write <= 0;
      hip_reconfig_writedata <= 0;
      hip_reconfig_address <= 10'h3FF;
      hip_reconfig_read <= 0;
   end

   else
   begin
      case( state )
         BYPASS_OFF     :       begin
            hip_reconfig_write <= 1'b0;
            hip_reconfig_address <= hip_reconfig_address_ptc_sld;       //10'h0B7;

            if( phase_entry )
            begin
               state <= READ_PTC;
               k_g3_ltssm_eq_dbg <= 1'b1;
            end
            else if (tls_entry | tls_exit)
            begin
               hip_reconfig_address <= hip_reconfig_address_cv_sld;     //10'h002;
               state <= READ_CV;
            end
      end
      READ_PTC  :       begin
         if( readdata_valid )
         begin
            hip_reconfig_read <= 0;
            hip_reconfig_writedata <= { hip_reconfig_readdata[15:8],
                                       k_g3_ltssm_eq_dbg,
                                       hip_reconfig_readdata[6:0] };

            state <= WRITE_PTC;
         end

         else
         begin
            hip_reconfig_read <= 1'b1;
            hip_reconfig_address <= hip_reconfig_address_ptc_sld;       //10'h0B7;
         end
      end

      READ_CV   :       begin
         if( readdata_valid )
         begin
            hip_reconfig_read <= 0;
            case (program_tls)
               2'b01: hip_reconfig_writedata <= { hip_reconfig_readdata[15:14], 1'b0,
                                                   hip_reconfig_readdata[12:3], 1'b0,
                                                   hip_reconfig_readdata[1:0]};
               2'b10: hip_reconfig_writedata <= { hip_reconfig_readdata[15:14], 1'b0,
                                                   hip_reconfig_readdata[12:3], 1'b1,
                                                   hip_reconfig_readdata[1:0]};
               2'b11: hip_reconfig_writedata <= { hip_reconfig_readdata[15:14], 1'b1,
                                                   hip_reconfig_readdata[12:3], 1'b0,
                                                   hip_reconfig_readdata[1:0]};
               2'b00: hip_reconfig_writedata <= { hip_reconfig_readdata[15:14], 1'b0,
                                                   hip_reconfig_readdata[12:3], 1'b0,
                                                   hip_reconfig_readdata[1:0]};
            endcase
            state <= WRITE_CV;
         end

         else
         begin
            hip_reconfig_read <= 1'b1;
            hip_reconfig_address <= hip_reconfig_address_cv_sld;        //10'h002;
         end
      end

      WRITE_PTC         :       begin
         hip_reconfig_write <= 1'b1;
         hip_reconfig_address <= hip_reconfig_address_ptc_sld;  //10'h0B7;

         if( k_g3_ltssm_eq_dbg )
            state <= BYPASS_ON;
         else
            state <= BYPASS_OFF;
      end

      WRITE_CV          :       begin
         hip_reconfig_write <= 1'b1;
         hip_reconfig_address <= hip_reconfig_address_cv_sld;   //10'h002;
         state <= BYPASS_OFF;
      end

      BYPASS_ON :       begin
         hip_reconfig_write <= 1'b0;
         hip_reconfig_address <= hip_reconfig_address_ptc_sld;  //10'h0B7;

         if( phase_exit )
         begin
            state <= READ_PTC;
            k_g3_ltssm_eq_dbg <= 1'b0;
         end
      end

      default: state <= BYPASS_OFF;

   endcase
   end
end


//READ DATA VALID - 4 cycle latency from read
assign readdata_valid = read_reg[3];

always@( posedge reconfig_clk or negedge reconfig_reset_n )
begin
        if( ~reconfig_reset_n )
        begin
                read_reg <= 0;
        end

        else
        begin
                read_reg <= {read_reg[2:0],hip_reconfig_read};
        end
end

endmodule

// End module for PTC CV
////////////////////////////////////////////////////////////////////////////
