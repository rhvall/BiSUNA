-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #625)
-- 
-- Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from i_sfc_logic_c0_for_body36_i_i_processfpga_c0_enter1030_processfpga2006
-- VHDL created on Thu Sep 26 12:29:10 2019


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity i_sfc_logic_c0_for_body36_i_i_processfpga_c0_enter1030_processfpga2006 is
    port (
        in_memdep_32_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_32_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_32_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_32_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0104_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_0104_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0104_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0104_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0104_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_memcoalesce_null_load_0104_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_memcoalesce_null_load_0104_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_34_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_34_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_34_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_34_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_32_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_32_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_32_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_32_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_32_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_32_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_32_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_34_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_34_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_34_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_34_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_34_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_34_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_34_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21029_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21029_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21029_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_121_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_intel_reserved_ffwd_123_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_124_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_125_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_126_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi31035_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi31035_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi31035_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi31035_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_0104_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_memcoalesce_null_load_0104_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_0104_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_0104_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going714_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going714_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body36_i_i_processfpga_c0_enter1030_processfpga2006;

architecture normal of i_sfc_logic_c0_for_body36_i_i_processfpga_c0_enter1030_processfpga2006 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_load_memcoalesce_null_load_0104_processfpga2021 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0104_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0104_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0104_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0104_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_readdata_1 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_readdata_2 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_readdata_3 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0104_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0104_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0104_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0104_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0104_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0104_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0104_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going714_processfpga2008 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_initeration_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_initeration_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_not_exitcond_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_not_exitcond_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_initeration_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_not_exitcond_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_memdep_phi33_pop137_processfpga2038 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_137 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_137 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_137 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_memdep_phi35_pop138_processfpga2030 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_138 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_138 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_138 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga2056 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_139 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_139 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_139 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_destmodcounter_2_i_i1307_pop136_processfpga2016 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_136 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_136 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_136 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i33_fpgaindvars_iv233_pop135_processfpga2012 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_135 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_feedback_valid_in_135 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_stall_out_135 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_memdep_phi33_push137_processfpga2048 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_137 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA452 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_137 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_137 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_memdep_phi35_push138_processfpga2046 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_138 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA452 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_138 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_138 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond715_processfpga2054 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_32 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_32 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_32 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_acl_hw_wg_id812_push139_processfpga2058 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_139 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA452 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_139 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_139 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_destmodcounter_2_i_i1307_push136_processfpga2050 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_136 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA452 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_136 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_136 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i33_fpgaindvars_iv233_push135_processfpga2052 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_feedback_stall_in_135 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA452 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_out_135 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_feedback_valid_out_135 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_do_directly_for_cond33_i_i_loopexit_loopexit_select533_processfpga2014 is
        port (
            in_intel_reserved_ffwd_123_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_123_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_normls_or503530_processfpga2023 is
        port (
            in_intel_reserved_ffwd_121_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_121_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_phi_decision1672_xor534_processfpga2036 is
        port (
            in_intel_reserved_ffwd_125_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_125_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_phi_decision1672_xor535_processfpga2028 is
        port (
            in_intel_reserved_ffwd_125_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_125_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_phi_decision1672_xor536_processfpga2019 is
        port (
            in_intel_reserved_ffwd_125_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_125_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga281_processfpga2010 is
        port (
            in_intel_reserved_ffwd_126_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_126_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga282_processfpga2043 is
        port (
            in_intel_reserved_ffwd_124_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_124_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_32_processfpga2032 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_memdep_32_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_32_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_32_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_32_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_32_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_32_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_32_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_32_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_32_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_32_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_32_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_34_processfpga2040 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_memdep_34_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_34_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_34_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_34_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_34_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_34_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_34_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_34_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_34_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_34_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_34_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_localneurons_sync_buffer85_processfpga2025 is
        port (
            in_buffer_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_dec_i_i855_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next234_processfpga_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_multconst_x_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_c_i64_9gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom37_i_i847_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom45_i_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_o_readdata_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_o_readdata_1 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_o_readdata_2 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep555_processfpga_processfpga2035_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep555_processfpga_processfpga2035_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep555_processfpga_processfpga2035_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep555_processfpga_processfpga2035_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep555_processfpga_processfpga2035_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep555_processfpga_processfpga2035_c_i64_1gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_trunc556_processfpga_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_undef_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i33_undef_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pipeline_keep_going714_processfpga_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going714_processfpga_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going714_processfpga_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going714_processfpga_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_memdep_phi33_pop137_processfpga_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_memdep_phi33_pop137_processfpga_out_feedback_stall_out_137 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_memdep_phi35_pop138_processfpga_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_memdep_phi35_pop138_processfpga_out_feedback_stall_out_138 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga_out_feedback_stall_out_139 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_destmodcounter_2_i_i1307_pop136_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_destmodcounter_2_i_i1307_pop136_processfpga_out_feedback_stall_out_136 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv233_pop135_processfpga_out_data_out : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv233_pop135_processfpga_out_feedback_stall_out_135 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_memdep_phi33_push137_processfpga_out_feedback_out_137 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_memdep_phi33_push137_processfpga_out_feedback_valid_out_137 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_memdep_phi35_push138_processfpga_out_feedback_out_138 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_memdep_phi35_push138_processfpga_out_feedback_valid_out_138 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond715_processfpga_out_feedback_out_32 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond715_processfpga_out_feedback_valid_out_32 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id812_push139_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id812_push139_processfpga_out_feedback_out_139 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id812_push139_processfpga_out_feedback_valid_out_139 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_destmodcounter_2_i_i1307_push136_processfpga_out_feedback_out_136 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_destmodcounter_2_i_i1307_push136_processfpga_out_feedback_valid_out_136 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv233_push135_processfpga_out_feedback_out_135 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv233_push135_processfpga_out_feedback_valid_out_135 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and_i_i_i8521206_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_dec_i_i855_processfpga_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec_i_i855_processfpga_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec_i_i855_processfpga_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec_i_i855_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_destmodcounter_2_i_i1307_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_destmodcounter_2_i_i1307_replace_phi_processfpga_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_exitcond235_processfpga_a : STD_LOGIC_VECTOR (34 downto 0);
    signal i_exitcond235_processfpga_b : STD_LOGIC_VECTOR (34 downto 0);
    signal i_exitcond235_processfpga_o : STD_LOGIC_VECTOR (34 downto 0);
    signal i_exitcond235_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_do_directly_for_cond33_i_i_loopexit_loopexit_select533_processfpga_out_dest_data_out_123_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_normls_or503530_processfpga_out_dest_data_out_121_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_phi_decision1672_xor534_processfpga_out_dest_data_out_125_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_phi_decision1672_xor535_processfpga_out_dest_data_out_125_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_phi_decision1672_xor536_processfpga_out_dest_data_out_125_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga281_processfpga_out_dest_data_out_126_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_ffwd_dst_unnamed_processfpga282_processfpga_out_dest_data_out_124_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv233_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv233_replace_phi_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_fpgaindvars_iv_next234_processfpga_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next234_processfpga_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next234_processfpga_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next234_processfpga_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_idxprom45_i_i_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom45_i_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom45_i_i_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_memcoalesce_null_bitcast_0103_processfpga_vt_const_2_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_memcoalesce_null_bitcast_0103_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_null_bitcast_0103_processfpga_vt_select_63_b : STD_LOGIC_VECTOR (60 downto 0);
    signal i_nomrls_lshr554_processfpga_vt_const_15_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_nomrls_lshr554_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_nomrls_lshr554_processfpga_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_or_i_i_i8531207_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_scalarizer_0125_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_scalarizer_0125_processfpga_vt_select_63_b : STD_LOGIC_VECTOR (60 downto 0);
    signal i_store_memdep_32_processfpga_out_memdep_32_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_32_processfpga_out_memdep_32_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_32_processfpga_out_memdep_32_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_store_memdep_32_processfpga_out_memdep_32_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_32_processfpga_out_memdep_32_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_32_processfpga_out_memdep_32_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_32_processfpga_out_memdep_32_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_32_processfpga_out_o_writeack : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_34_processfpga_out_memdep_34_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_34_processfpga_out_memdep_34_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_34_processfpga_out_memdep_34_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_store_memdep_34_processfpga_out_memdep_34_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_34_processfpga_out_memdep_34_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_34_processfpga_out_memdep_34_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_34_processfpga_out_memdep_34_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_34_processfpga_out_o_writeack : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_localneurons_sync_buffer85_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga2045_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal rightShiftStage0Idx1_uid162_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0_uid164_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid164_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_scalarizer_0125_processfpga_processfpga2018_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal rightShiftStage0Idx1Rng8_uid160_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage0Idx1Rng8_uid160_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal redist0_rightShiftStage0Idx1Rng8_uid160_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_merged_bit_select_c_4_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist1_i_unnamed_processfpga2045_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_unnamed_processfpga2045_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni21029_1_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_aunroll_x_in_i_valid_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_sync_in_aunroll_x_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_sync_in_aunroll_x_in_i_valid_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_normls_trunc556_processfpga_sel_x_b_4_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist12_i_clexc47_i_i_processfpga_processfpga2027_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist13_i_clexc47_i_i_processfpga_processfpga2027_dupName_1_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist14_i_clexc47_i_i_processfpga_processfpga2027_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_reset0 : std_logic;
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_rdcnt_i : signal is true;
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_sticky_ena_q : signal is true;
    signal redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist6_sync_in_aunroll_x_in_i_valid_1(DELAY,214)
    redist6_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist6_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_ffwd_dst_phi_decision1672_xor536_processfpga(BLACKBOX,104)@2
    thei_ffwd_dst_phi_decision1672_xor536_processfpga : i_ffwd_dst_phi_decision1672_xor536_processfpga2019
    PORT MAP (
        in_intel_reserved_ffwd_125_0 => in_intel_reserved_ffwd_125_0,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_125_0 => i_ffwd_dst_phi_decision1672_xor536_processfpga_out_dest_data_out_125_0,
        clock => clock,
        resetn => resetn
    );

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_multconst_x(CONSTANT,40)
    i_clexc47_i_i_processfpga_processfpga2027_mult_multconst_x_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_do_directly_for_cond33_i_i_loopexit_loopexit_select533_processfpga(BLACKBOX,100)@1
    thei_ffwd_dst_do_directly_for_cond33_i_i_loopexit_loopexit_select533_processfpga : i_ffwd_dst_do_directly_for_cond33_i_i_loopexit_loopexit_select533_processfpga2014
    PORT MAP (
        in_intel_reserved_ffwd_123_0 => in_intel_reserved_ffwd_123_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_123_0 => i_ffwd_dst_do_directly_for_cond33_i_i_loopexit_loopexit_select533_processfpga_out_dest_data_out_123_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga281_processfpga(BLACKBOX,105)@1
    thei_ffwd_dst_unnamed_processfpga281_processfpga : i_ffwd_dst_unnamed_processfpga281_processfpga2010
    PORT MAP (
        in_intel_reserved_ffwd_126_0 => in_intel_reserved_ffwd_126_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_126_0 => i_ffwd_dst_unnamed_processfpga281_processfpga_out_dest_data_out_126_0,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv_next234_processfpga(ADD,108)@1
    i_fpgaindvars_iv_next234_processfpga_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv233_replace_phi_processfpga_q);
    i_fpgaindvars_iv_next234_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_fpgaindvars_iv_next234_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next234_processfpga_a) + UNSIGNED(i_fpgaindvars_iv_next234_processfpga_b));
    i_fpgaindvars_iv_next234_processfpga_q <= i_fpgaindvars_iv_next234_processfpga_o(33 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next234_processfpga_sel_x(BITSELECT,3)@1
    bgTrunc_i_fpgaindvars_iv_next234_processfpga_sel_x_b <= i_fpgaindvars_iv_next234_processfpga_q(32 downto 0);

    -- i_acl_push_i33_fpgaindvars_iv233_push135_processfpga(BLACKBOX,95)@1
    -- out out_feedback_out_135@20000000
    -- out out_feedback_valid_out_135@20000000
    thei_acl_push_i33_fpgaindvars_iv233_push135_processfpga : i_acl_push_i33_fpgaindvars_iv233_push135_processfpga2052
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next234_processfpga_sel_x_b,
        in_feedback_stall_in_135 => i_acl_pop_i33_fpgaindvars_iv233_pop135_processfpga_out_feedback_stall_out_135,
        in_stall_in => GND_q,
        in_unnamed_processFPGA452 => i_unnamed_processfpga2045_q,
        in_valid_in => in_i_valid,
        out_feedback_out_135 => i_acl_push_i33_fpgaindvars_iv233_push135_processfpga_out_feedback_out_135,
        out_feedback_valid_out_135 => i_acl_push_i33_fpgaindvars_iv233_push135_processfpga_out_feedback_valid_out_135,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_undef(CONSTANT,81)
    c_i33_undef_q <= "000000000000000000000000000000000";

    -- i_acl_pop_i33_fpgaindvars_iv233_pop135_processfpga(BLACKBOX,89)@1
    -- out out_feedback_stall_out_135@20000000
    thei_acl_pop_i33_fpgaindvars_iv233_pop135_processfpga : i_acl_pop_i33_fpgaindvars_iv233_pop135_processfpga2012
    PORT MAP (
        in_data_in => c_i33_undef_q,
        in_dir => in_c0_eni21029_1,
        in_feedback_in_135 => i_acl_push_i33_fpgaindvars_iv233_push135_processfpga_out_feedback_out_135,
        in_feedback_valid_in_135 => i_acl_push_i33_fpgaindvars_iv233_push135_processfpga_out_feedback_valid_out_135,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i33_fpgaindvars_iv233_pop135_processfpga_out_data_out,
        out_feedback_stall_out_135 => i_acl_pop_i33_fpgaindvars_iv233_pop135_processfpga_out_feedback_stall_out_135,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv233_replace_phi_processfpga(MUX,107)@1
    i_fpgaindvars_iv233_replace_phi_processfpga_s <= in_c0_eni21029_1;
    i_fpgaindvars_iv233_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv233_replace_phi_processfpga_s, i_acl_pop_i33_fpgaindvars_iv233_pop135_processfpga_out_data_out, i_ffwd_dst_unnamed_processfpga281_processfpga_out_dest_data_out_126_0)
    BEGIN
        CASE (i_fpgaindvars_iv233_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv233_replace_phi_processfpga_q <= i_acl_pop_i33_fpgaindvars_iv233_pop135_processfpga_out_data_out;
            WHEN "1" => i_fpgaindvars_iv233_replace_phi_processfpga_q <= i_ffwd_dst_unnamed_processfpga281_processfpga_out_dest_data_out_126_0;
            WHEN OTHERS => i_fpgaindvars_iv233_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i33_1gr(CONSTANT,80)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- i_exitcond235_processfpga(COMPARE,99)@1
    i_exitcond235_processfpga_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => c_i33_1gr_q(32)) & c_i33_1gr_q));
    i_exitcond235_processfpga_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => i_fpgaindvars_iv233_replace_phi_processfpga_q(32)) & i_fpgaindvars_iv233_replace_phi_processfpga_q));
    i_exitcond235_processfpga_o <= STD_LOGIC_VECTOR(SIGNED(i_exitcond235_processfpga_a) - SIGNED(i_exitcond235_processfpga_b));
    i_exitcond235_processfpga_c(0) <= i_exitcond235_processfpga_o(34);

    -- i_ffwd_dst_unnamed_processfpga282_processfpga(BLACKBOX,106)@1
    thei_ffwd_dst_unnamed_processfpga282_processfpga : i_ffwd_dst_unnamed_processfpga282_processfpga2043
    PORT MAP (
        in_intel_reserved_ffwd_124_0 => in_intel_reserved_ffwd_124_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_124_0 => i_ffwd_dst_unnamed_processfpga282_processfpga_out_dest_data_out_124_0,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_processfpga2045(LOGICAL,132)@1
    i_unnamed_processfpga2045_q <= i_ffwd_dst_unnamed_processfpga282_processfpga_out_dest_data_out_124_0 and i_exitcond235_processfpga_c;

    -- redist1_i_unnamed_processfpga2045_q_1(DELAY,209)
    redist1_i_unnamed_processfpga2045_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga2045_q, xout => redist1_i_unnamed_processfpga2045_q_1_q, clk => clock, aclr => resetn );

    -- c_i32_1gr(CONSTANT,78)
    c_i32_1gr_q <= "11111111111111111111111111111111";

    -- i_dec_i_i855_processfpga(ADD,97)@2
    i_dec_i_i855_processfpga_a <= STD_LOGIC_VECTOR("0" & i_destmodcounter_2_i_i1307_replace_phi_processfpga_q);
    i_dec_i_i855_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_dec_i_i855_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_dec_i_i855_processfpga_a) + UNSIGNED(i_dec_i_i855_processfpga_b));
    i_dec_i_i855_processfpga_q <= i_dec_i_i855_processfpga_o(32 downto 0);

    -- bgTrunc_i_dec_i_i855_processfpga_sel_x(BITSELECT,2)@2
    bgTrunc_i_dec_i_i855_processfpga_sel_x_b <= i_dec_i_i855_processfpga_q(31 downto 0);

    -- i_acl_push_i32_destmodcounter_2_i_i1307_push136_processfpga(BLACKBOX,94)@2
    -- out out_feedback_out_136@20000000
    -- out out_feedback_valid_out_136@20000000
    thei_acl_push_i32_destmodcounter_2_i_i1307_push136_processfpga : i_acl_push_i32_destmodcounter_2_i_i1307_push136_processfpga2050
    PORT MAP (
        in_data_in => bgTrunc_i_dec_i_i855_processfpga_sel_x_b,
        in_feedback_stall_in_136 => i_acl_pop_i32_destmodcounter_2_i_i1307_pop136_processfpga_out_feedback_stall_out_136,
        in_stall_in => GND_q,
        in_unnamed_processFPGA452 => redist1_i_unnamed_processfpga2045_q_1_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_136 => i_acl_push_i32_destmodcounter_2_i_i1307_push136_processfpga_out_feedback_out_136,
        out_feedback_valid_out_136 => i_acl_push_i32_destmodcounter_2_i_i1307_push136_processfpga_out_feedback_valid_out_136,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_undef(CONSTANT,79)
    c_i32_undef_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_destmodcounter_2_i_i1307_pop136_processfpga(BLACKBOX,88)@1
    -- out out_feedback_stall_out_136@20000000
    thei_acl_pop_i32_destmodcounter_2_i_i1307_pop136_processfpga : i_acl_pop_i32_destmodcounter_2_i_i1307_pop136_processfpga2016
    PORT MAP (
        in_data_in => c_i32_undef_q,
        in_dir => in_c0_eni21029_1,
        in_feedback_in_136 => i_acl_push_i32_destmodcounter_2_i_i1307_push136_processfpga_out_feedback_out_136,
        in_feedback_valid_in_136 => i_acl_push_i32_destmodcounter_2_i_i1307_push136_processfpga_out_feedback_valid_out_136,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_destmodcounter_2_i_i1307_pop136_processfpga_out_data_out,
        out_feedback_stall_out_136 => i_acl_pop_i32_destmodcounter_2_i_i1307_pop136_processfpga_out_feedback_stall_out_136,
        clock => clock,
        resetn => resetn
    );

    -- i_destmodcounter_2_i_i1307_replace_phi_processfpga(MUX,98)@1 + 1
    i_destmodcounter_2_i_i1307_replace_phi_processfpga_s <= in_c0_eni21029_1;
    i_destmodcounter_2_i_i1307_replace_phi_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_destmodcounter_2_i_i1307_replace_phi_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_destmodcounter_2_i_i1307_replace_phi_processfpga_s) IS
                WHEN "0" => i_destmodcounter_2_i_i1307_replace_phi_processfpga_q <= i_acl_pop_i32_destmodcounter_2_i_i1307_pop136_processfpga_out_data_out;
                WHEN "1" => i_destmodcounter_2_i_i1307_replace_phi_processfpga_q <= i_ffwd_dst_do_directly_for_cond33_i_i_loopexit_loopexit_select533_processfpga_out_dest_data_out_123_0;
                WHEN OTHERS => i_destmodcounter_2_i_i1307_replace_phi_processfpga_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_idxprom37_i_i847_processfpga_sel_x(BITSELECT,47)@2
    i_idxprom37_i_i847_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(i_destmodcounter_2_i_i1307_replace_phi_processfpga_q(31 downto 0)), 64)));

    -- i_scalarizer_0125_processfpga_processfpga2018_mult_x_bs1_merged_bit_select(BITSELECT,205)@2
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_bs1_merged_bit_select_b <= i_idxprom37_i_i847_processfpga_sel_x_b(17 downto 0);
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_bs1_merged_bit_select_c <= i_idxprom37_i_i847_processfpga_sel_x_b(63 downto 54);
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_bs1_merged_bit_select_d <= i_idxprom37_i_i847_processfpga_sel_x_b(35 downto 18);
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_bs1_merged_bit_select_e <= i_idxprom37_i_i847_processfpga_sel_x_b(53 downto 36);

    -- i_scalarizer_0125_processfpga_processfpga2018_mult_x_im3_shift0(BITSHIFT,202)@2
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_im3_shift0_qint <= i_scalarizer_0125_processfpga_processfpga2018_mult_x_bs1_merged_bit_select_c & "000";
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_im3_shift0_q <= i_scalarizer_0125_processfpga_processfpga2018_mult_x_im3_shift0_qint(12 downto 0);

    -- i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_15(BITSHIFT,180)@2
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_scalarizer_0125_processfpga_processfpga2018_mult_x_im3_shift0_q) & "00000000000000";
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_15_q <= i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_15_qint(27 downto 0);

    -- i_scalarizer_0125_processfpga_processfpga2018_mult_x_im6_shift0(BITSHIFT,203)@2
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_im6_shift0_qint <= i_scalarizer_0125_processfpga_processfpga2018_mult_x_bs1_merged_bit_select_d & "000";
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_im6_shift0_q <= i_scalarizer_0125_processfpga_processfpga2018_mult_x_im6_shift0_qint(20 downto 0);

    -- i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_14(BITSHIFT,179)@2
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_scalarizer_0125_processfpga_processfpga2018_mult_x_im6_shift0_q) & "000000000000000000";
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_14_q <= i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_14_qint(39 downto 0);

    -- i_scalarizer_0125_processfpga_processfpga2018_mult_x_join_16(BITJOIN,181)@2
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_join_16_q <= i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_15_q & i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_14_q;

    -- i_scalarizer_0125_processfpga_processfpga2018_mult_x_im9_shift0(BITSHIFT,204)@2
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_im9_shift0_qint <= i_scalarizer_0125_processfpga_processfpga2018_mult_x_bs1_merged_bit_select_e & "000";
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_im9_shift0_q <= i_scalarizer_0125_processfpga_processfpga2018_mult_x_im9_shift0_qint(20 downto 0);

    -- i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_12(BITSHIFT,177)@2
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_scalarizer_0125_processfpga_processfpga2018_mult_x_im9_shift0_q) & "00000000000000";
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_12_q <= i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_12_qint(35 downto 0);

    -- i_scalarizer_0125_processfpga_processfpga2018_mult_x_im0_shift0(BITSHIFT,201)@2
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_im0_shift0_qint <= i_scalarizer_0125_processfpga_processfpga2018_mult_x_bs1_merged_bit_select_b & "000";
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_im0_shift0_q <= i_scalarizer_0125_processfpga_processfpga2018_mult_x_im0_shift0_qint(20 downto 0);

    -- i_scalarizer_0125_processfpga_processfpga2018_mult_x_join_13(BITJOIN,178)@2
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_join_13_q <= i_scalarizer_0125_processfpga_processfpga2018_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_scalarizer_0125_processfpga_processfpga2018_mult_x_im0_shift0_q);

    -- i_scalarizer_0125_processfpga_processfpga2018_mult_x_result_add_0_0(ADD,182)@2
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_scalarizer_0125_processfpga_processfpga2018_mult_x_join_13_q);
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_scalarizer_0125_processfpga_processfpga2018_mult_x_join_16_q);
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_scalarizer_0125_processfpga_processfpga2018_mult_x_result_add_0_0_a) + UNSIGNED(i_scalarizer_0125_processfpga_processfpga2018_mult_x_result_add_0_0_b));
    i_scalarizer_0125_processfpga_processfpga2018_mult_x_result_add_0_0_q <= i_scalarizer_0125_processfpga_processfpga2018_mult_x_result_add_0_0_o(68 downto 0);

    -- i_scalarizer_0125_processfpga_processfpga2018_mult_extender_x(BITJOIN,63)@2
    i_scalarizer_0125_processfpga_processfpga2018_mult_extender_x_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_multconst_x_q & i_scalarizer_0125_processfpga_processfpga2018_mult_x_result_add_0_0_q(67 downto 0);

    -- i_scalarizer_0125_processfpga_processfpga2018_trunc_sel_x(BITSELECT,65)@2
    i_scalarizer_0125_processfpga_processfpga2018_trunc_sel_x_b <= i_scalarizer_0125_processfpga_processfpga2018_mult_extender_x_q(63 downto 0);

    -- i_scalarizer_0125_processfpga_processfpga2018_dupName_0_trunc_sel_x(BITSELECT,60)@2
    i_scalarizer_0125_processfpga_processfpga2018_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_scalarizer_0125_processfpga_processfpga2018_trunc_sel_x_b);
    i_scalarizer_0125_processfpga_processfpga2018_dupName_0_trunc_sel_x_b <= i_scalarizer_0125_processfpga_processfpga2018_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_scalarizer_0125_processfpga_vt_select_63(BITSELECT,128)@2
    i_scalarizer_0125_processfpga_vt_select_63_b <= i_scalarizer_0125_processfpga_processfpga2018_dupName_0_trunc_sel_x_b(63 downto 3);

    -- i_scalarizer_0125_processfpga_vt_join(BITJOIN,127)@2
    i_scalarizer_0125_processfpga_vt_join_q <= i_scalarizer_0125_processfpga_vt_select_63_b & i_memcoalesce_null_bitcast_0103_processfpga_vt_const_2_q;

    -- i_memcoalesce_null_bitcast_0103_processfpga_vt_select_63(BITSELECT,118)@2
    i_memcoalesce_null_bitcast_0103_processfpga_vt_select_63_b <= i_scalarizer_0125_processfpga_vt_join_q(63 downto 3);

    -- i_memcoalesce_null_bitcast_0103_processfpga_vt_const_2(CONSTANT,116)
    i_memcoalesce_null_bitcast_0103_processfpga_vt_const_2_q <= "000";

    -- i_memcoalesce_null_bitcast_0103_processfpga_vt_join(BITJOIN,117)@2
    i_memcoalesce_null_bitcast_0103_processfpga_vt_join_q <= i_memcoalesce_null_bitcast_0103_processfpga_vt_select_63_b & i_memcoalesce_null_bitcast_0103_processfpga_vt_const_2_q;

    -- i_load_memcoalesce_null_load_0104_processfpga_aunroll_x(BLACKBOX,49)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata_0@6
    -- out out_o_readdata_1@6
    -- out out_o_readdata_2@6
    -- out out_o_readdata_3@6
    -- out out_memcoalesce_null_load_0104_avm_address@20000000
    -- out out_memcoalesce_null_load_0104_avm_burstcount@20000000
    -- out out_memcoalesce_null_load_0104_avm_byteenable@20000000
    -- out out_memcoalesce_null_load_0104_avm_enable@20000000
    -- out out_memcoalesce_null_load_0104_avm_read@20000000
    -- out out_memcoalesce_null_load_0104_avm_write@20000000
    -- out out_memcoalesce_null_load_0104_avm_writedata@20000000
    -- out out_o_stall@5
    -- out out_o_valid@6
    thei_load_memcoalesce_null_load_0104_processfpga_aunroll_x : i_load_memcoalesce_null_load_0104_processfpga2021
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_memcoalesce_null_bitcast_0103_processfpga_vt_join_q,
        in_i_predicate => i_ffwd_dst_phi_decision1672_xor536_processfpga_out_dest_data_out_125_0,
        in_i_stall => GND_q,
        in_i_valid => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        in_memcoalesce_null_load_0104_avm_readdata => in_memcoalesce_null_load_0104_avm_readdata,
        in_memcoalesce_null_load_0104_avm_readdatavalid => in_memcoalesce_null_load_0104_avm_readdatavalid,
        in_memcoalesce_null_load_0104_avm_waitrequest => in_memcoalesce_null_load_0104_avm_waitrequest,
        in_memcoalesce_null_load_0104_avm_writeack => in_memcoalesce_null_load_0104_avm_writeack,
        out_o_readdata_0 => i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_o_readdata_0,
        out_o_readdata_1 => i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_o_readdata_1,
        out_o_readdata_2 => i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_o_readdata_2,
        out_memcoalesce_null_load_0104_avm_address => i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_address,
        out_memcoalesce_null_load_0104_avm_burstcount => i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_burstcount,
        out_memcoalesce_null_load_0104_avm_byteenable => i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_byteenable,
        out_memcoalesce_null_load_0104_avm_enable => i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_enable,
        out_memcoalesce_null_load_0104_avm_read => i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_read,
        out_memcoalesce_null_load_0104_avm_write => i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_write,
        out_memcoalesce_null_load_0104_avm_writedata => i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,6)
    out_memcoalesce_null_load_0104_avm_address <= i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_address;
    out_memcoalesce_null_load_0104_avm_enable <= i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_enable;
    out_memcoalesce_null_load_0104_avm_read <= i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_read;
    out_memcoalesce_null_load_0104_avm_write <= i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_write;
    out_memcoalesce_null_load_0104_avm_writedata <= i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_writedata;
    out_memcoalesce_null_load_0104_avm_byteenable <= i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_byteenable;
    out_memcoalesce_null_load_0104_avm_burstcount <= i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_memcoalesce_null_load_0104_avm_burstcount;

    -- redist7_sync_in_aunroll_x_in_i_valid_5(DELAY,215)
    redist7_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_sync_in_aunroll_x_in_i_valid_1_q, xout => redist7_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_normls_or503530_processfpga(BLACKBOX,101)@6
    thei_ffwd_dst_normls_or503530_processfpga : i_ffwd_dst_normls_or503530_processfpga2023
    PORT MAP (
        in_intel_reserved_ffwd_121_0 => in_intel_reserved_ffwd_121_0,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_5_q,
        out_dest_data_out_121_0 => i_ffwd_dst_normls_or503530_processfpga_out_dest_data_out_121_0,
        clock => clock,
        resetn => resetn
    );

    -- i_and_i_i_i8521206_processfpga(LOGICAL,96)@6
    i_and_i_i_i8521206_processfpga_q <= i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_o_readdata_1 and i_ffwd_dst_normls_or503530_processfpga_out_dest_data_out_121_0;

    -- i_or_i_i_i8531207_processfpga(LOGICAL,125)@6
    i_or_i_i_i8531207_processfpga_q <= i_and_i_i_i8521206_processfpga_q or i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_o_readdata_2;

    -- rightShiftStage0Idx1Rng8_uid160_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_merged_bit_select(BITSELECT,207)@6
    rightShiftStage0Idx1Rng8_uid160_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_merged_bit_select_b <= i_or_i_i_i8531207_processfpga_q(15 downto 8);
    rightShiftStage0Idx1Rng8_uid160_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_merged_bit_select_c <= i_or_i_i_i8531207_processfpga_q(7 downto 0);

    -- redist0_rightShiftStage0Idx1Rng8_uid160_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_merged_bit_select_c_4(DELAY,208)
    redist0_rightShiftStage0Idx1Rng8_uid160_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_merged_bit_select_c_4 : dspba_delay
    GENERIC MAP ( width => 8, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftStage0Idx1Rng8_uid160_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_merged_bit_select_c, xout => redist0_rightShiftStage0Idx1Rng8_uid160_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_merged_bit_select_c_4_q, clk => clock, aclr => resetn );

    -- redist8_sync_in_aunroll_x_in_i_valid_7(DELAY,216)
    redist8_sync_in_aunroll_x_in_i_valid_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_sync_in_aunroll_x_in_i_valid_5_q, xout => redist8_sync_in_aunroll_x_in_i_valid_7_q, clk => clock, aclr => resetn );

    -- redist9_sync_in_aunroll_x_in_i_valid_9(DELAY,217)
    redist9_sync_in_aunroll_x_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_sync_in_aunroll_x_in_i_valid_7_q, xout => redist9_sync_in_aunroll_x_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_phi_decision1672_xor535_processfpga(BLACKBOX,103)@10
    thei_ffwd_dst_phi_decision1672_xor535_processfpga : i_ffwd_dst_phi_decision1672_xor535_processfpga2028
    PORT MAP (
        in_intel_reserved_ffwd_125_0 => in_intel_reserved_ffwd_125_0,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_125_0 => i_ffwd_dst_phi_decision1672_xor535_processfpga_out_dest_data_out_125_0,
        clock => clock,
        resetn => resetn
    );

    -- redist10_sync_in_aunroll_x_in_i_valid_10(DELAY,218)
    redist10_sync_in_aunroll_x_in_i_valid_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist9_sync_in_aunroll_x_in_i_valid_9_q, xout => redist10_sync_in_aunroll_x_in_i_valid_10_q, clk => clock, aclr => resetn );

    -- redist2_i_unnamed_processfpga2045_q_10(DELAY,210)
    redist2_i_unnamed_processfpga2045_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_i_unnamed_processfpga2045_q_1_q, xout => redist2_i_unnamed_processfpga2045_q_10_q, clk => clock, aclr => resetn );

    -- i_nomrls_lshr554_processfpga_vt_const_15(CONSTANT,119)
    i_nomrls_lshr554_processfpga_vt_const_15_q <= "00000000";

    -- rightShiftStage0Idx1_uid162_i_nomrls_lshr554_processfpga_processfpga2034_shift_x(BITJOIN,161)@6
    rightShiftStage0Idx1_uid162_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_q <= i_nomrls_lshr554_processfpga_vt_const_15_q & rightShiftStage0Idx1Rng8_uid160_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_merged_bit_select_b;

    -- rightShiftStage0_uid164_i_nomrls_lshr554_processfpga_processfpga2034_shift_x(MUX,163)@6
    rightShiftStage0_uid164_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_s <= VCC_q;
    rightShiftStage0_uid164_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_combproc: PROCESS (rightShiftStage0_uid164_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_s, i_or_i_i_i8531207_processfpga_q, rightShiftStage0Idx1_uid162_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid164_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid164_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_q <= i_or_i_i_i8531207_processfpga_q;
            WHEN "1" => rightShiftStage0_uid164_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_q <= rightShiftStage0Idx1_uid162_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid164_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_nomrls_lshr554_processfpga_vt_select_7(BITSELECT,121)@6
    i_nomrls_lshr554_processfpga_vt_select_7_b <= rightShiftStage0_uid164_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_q(7 downto 0);

    -- i_nomrls_lshr554_processfpga_vt_join(BITJOIN,120)@6
    i_nomrls_lshr554_processfpga_vt_join_q <= i_nomrls_lshr554_processfpga_vt_const_15_q & i_nomrls_lshr554_processfpga_vt_select_7_b;

    -- i_normls_trunc556_processfpga_sel_x(BITSELECT,59)@6
    i_normls_trunc556_processfpga_sel_x_b <= i_nomrls_lshr554_processfpga_vt_join_q(7 downto 0);

    -- redist11_i_normls_trunc556_processfpga_sel_x_b_4(DELAY,219)
    redist11_i_normls_trunc556_processfpga_sel_x_b_4 : dspba_delay
    GENERIC MAP ( width => 8, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_normls_trunc556_processfpga_sel_x_b, xout => redist11_i_normls_trunc556_processfpga_sel_x_b_4_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_phi_decision1672_xor534_processfpga(BLACKBOX,102)@10
    thei_ffwd_dst_phi_decision1672_xor534_processfpga : i_ffwd_dst_phi_decision1672_xor534_processfpga2036
    PORT MAP (
        in_intel_reserved_ffwd_125_0 => in_intel_reserved_ffwd_125_0,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_125_0 => i_ffwd_dst_phi_decision1672_xor534_processfpga_out_dest_data_out_125_0,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i1_memdep_phi33_push137_processfpga(BLACKBOX,90)@11
    -- out out_feedback_out_137@20000000
    -- out out_feedback_valid_out_137@20000000
    thei_acl_push_i1_memdep_phi33_push137_processfpga : i_acl_push_i1_memdep_phi33_push137_processfpga2048
    PORT MAP (
        in_data_in => i_store_memdep_32_processfpga_out_o_writeack,
        in_feedback_stall_in_137 => i_acl_pop_i1_memdep_phi33_pop137_processfpga_out_feedback_stall_out_137,
        in_stall_in => GND_q,
        in_unnamed_processFPGA452 => redist2_i_unnamed_processfpga2045_q_10_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_10_q,
        out_feedback_out_137 => i_acl_push_i1_memdep_phi33_push137_processfpga_out_feedback_out_137,
        out_feedback_valid_out_137 => i_acl_push_i1_memdep_phi33_push137_processfpga_out_feedback_valid_out_137,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_memdep_phi33_pop137_processfpga(BLACKBOX,85)@10
    -- out out_feedback_stall_out_137@20000000
    thei_acl_pop_i1_memdep_phi33_pop137_processfpga : i_acl_pop_i1_memdep_phi33_pop137_processfpga2038
    PORT MAP (
        in_data_in => GND_q,
        in_dir => redist4_sync_in_aunroll_x_in_c0_eni21029_1_9_q,
        in_feedback_in_137 => i_acl_push_i1_memdep_phi33_push137_processfpga_out_feedback_out_137,
        in_feedback_valid_in_137 => i_acl_push_i1_memdep_phi33_push137_processfpga_out_feedback_valid_out_137,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        out_data_out => i_acl_pop_i1_memdep_phi33_pop137_processfpga_out_data_out,
        out_feedback_stall_out_137 => i_acl_pop_i1_memdep_phi33_pop137_processfpga_out_feedback_stall_out_137,
        clock => clock,
        resetn => resetn
    );

    -- i_normls_gep555_processfpga_processfpga2035_c_i64_1gr_x(CONSTANT,56)
    i_normls_gep555_processfpga_processfpga2035_c_i64_1gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000001";

    -- i_normls_gep555_processfpga_processfpga2035_add_x(ADD,55)@10
    i_normls_gep555_processfpga_processfpga2035_add_x_a <= STD_LOGIC_VECTOR("0" & redist13_i_clexc47_i_i_processfpga_processfpga2027_dupName_1_trunc_sel_x_b_1_q);
    i_normls_gep555_processfpga_processfpga2035_add_x_b <= STD_LOGIC_VECTOR("0" & i_normls_gep555_processfpga_processfpga2035_c_i64_1gr_x_q);
    i_normls_gep555_processfpga_processfpga2035_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep555_processfpga_processfpga2035_add_x_a) + UNSIGNED(i_normls_gep555_processfpga_processfpga2035_add_x_b));
    i_normls_gep555_processfpga_processfpga2035_add_x_q <= i_normls_gep555_processfpga_processfpga2035_add_x_o(64 downto 0);

    -- i_normls_gep555_processfpga_processfpga2035_trunc_sel_x(BITSELECT,54)@10
    i_normls_gep555_processfpga_processfpga2035_trunc_sel_x_b <= i_normls_gep555_processfpga_processfpga2035_add_x_q(63 downto 0);

    -- i_store_memdep_34_processfpga(BLACKBOX,130)@10
    -- out out_memdep_34_avm_address@20000000
    -- out out_memdep_34_avm_burstcount@20000000
    -- out out_memdep_34_avm_byteenable@20000000
    -- out out_memdep_34_avm_enable@20000000
    -- out out_memdep_34_avm_read@20000000
    -- out out_memdep_34_avm_write@20000000
    -- out out_memdep_34_avm_writedata@20000000
    -- out out_o_stall@11
    -- out out_o_valid@11
    -- out out_o_writeack@11
    thei_store_memdep_34_processfpga : i_store_memdep_34_processfpga2040
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_normls_gep555_processfpga_processfpga2035_trunc_sel_x_b,
        in_i_dependence => i_acl_pop_i1_memdep_phi33_pop137_processfpga_out_data_out,
        in_i_predicate => i_ffwd_dst_phi_decision1672_xor534_processfpga_out_dest_data_out_125_0,
        in_i_stall => GND_q,
        in_i_valid => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        in_i_writedata => redist11_i_normls_trunc556_processfpga_sel_x_b_4_q,
        in_memdep_34_avm_readdata => in_memdep_34_avm_readdata,
        in_memdep_34_avm_readdatavalid => in_memdep_34_avm_readdatavalid,
        in_memdep_34_avm_waitrequest => in_memdep_34_avm_waitrequest,
        in_memdep_34_avm_writeack => in_memdep_34_avm_writeack,
        out_memdep_34_avm_address => i_store_memdep_34_processfpga_out_memdep_34_avm_address,
        out_memdep_34_avm_burstcount => i_store_memdep_34_processfpga_out_memdep_34_avm_burstcount,
        out_memdep_34_avm_byteenable => i_store_memdep_34_processfpga_out_memdep_34_avm_byteenable,
        out_memdep_34_avm_enable => i_store_memdep_34_processfpga_out_memdep_34_avm_enable,
        out_memdep_34_avm_read => i_store_memdep_34_processfpga_out_memdep_34_avm_read,
        out_memdep_34_avm_write => i_store_memdep_34_processfpga_out_memdep_34_avm_write,
        out_memdep_34_avm_writedata => i_store_memdep_34_processfpga_out_memdep_34_avm_writedata,
        out_o_writeack => i_store_memdep_34_processfpga_out_o_writeack,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i1_memdep_phi35_push138_processfpga(BLACKBOX,91)@11
    -- out out_feedback_out_138@20000000
    -- out out_feedback_valid_out_138@20000000
    thei_acl_push_i1_memdep_phi35_push138_processfpga : i_acl_push_i1_memdep_phi35_push138_processfpga2046
    PORT MAP (
        in_data_in => i_store_memdep_34_processfpga_out_o_writeack,
        in_feedback_stall_in_138 => i_acl_pop_i1_memdep_phi35_pop138_processfpga_out_feedback_stall_out_138,
        in_stall_in => GND_q,
        in_unnamed_processFPGA452 => redist2_i_unnamed_processfpga2045_q_10_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_10_q,
        out_feedback_out_138 => i_acl_push_i1_memdep_phi35_push138_processfpga_out_feedback_out_138,
        out_feedback_valid_out_138 => i_acl_push_i1_memdep_phi35_push138_processfpga_out_feedback_valid_out_138,
        clock => clock,
        resetn => resetn
    );

    -- redist4_sync_in_aunroll_x_in_c0_eni21029_1_9(DELAY,212)
    redist4_sync_in_aunroll_x_in_c0_eni21029_1_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni21029_1, xout => redist4_sync_in_aunroll_x_in_c0_eni21029_1_9_q, clk => clock, aclr => resetn );

    -- i_acl_pop_i1_memdep_phi35_pop138_processfpga(BLACKBOX,86)@10
    -- out out_feedback_stall_out_138@20000000
    thei_acl_pop_i1_memdep_phi35_pop138_processfpga : i_acl_pop_i1_memdep_phi35_pop138_processfpga2030
    PORT MAP (
        in_data_in => GND_q,
        in_dir => redist4_sync_in_aunroll_x_in_c0_eni21029_1_9_q,
        in_feedback_in_138 => i_acl_push_i1_memdep_phi35_push138_processfpga_out_feedback_out_138,
        in_feedback_valid_in_138 => i_acl_push_i1_memdep_phi35_push138_processfpga_out_feedback_valid_out_138,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        out_data_out => i_acl_pop_i1_memdep_phi35_pop138_processfpga_out_data_out,
        out_feedback_stall_out_138 => i_acl_pop_i1_memdep_phi35_pop138_processfpga_out_feedback_stall_out_138,
        clock => clock,
        resetn => resetn
    );

    -- i_clexc47_i_i_processfpga_processfpga2027_c_i64_9gr_x(CONSTANT,44)
    i_clexc47_i_i_processfpga_processfpga2027_c_i64_9gr_x_q <= "0000000000000000000000000000000000000000000000000000000000001001";

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_shift0(BITSHIFT,192)@6
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_shift0_qint <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_c & "0";
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_shift0_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_shift0_qint(10 downto 0);

    -- i_idxprom45_i_i_processfpga_vt_const_63(CONSTANT,112)
    i_idxprom45_i_i_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_idxprom45_i_i_processfpga_sel_x(BITSELECT,48)@6
    i_idxprom45_i_i_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(i_load_memcoalesce_null_load_0104_processfpga_aunroll_x_out_o_readdata_0(15 downto 0)), 64));

    -- i_idxprom45_i_i_processfpga_vt_select_15(BITSELECT,114)@6
    i_idxprom45_i_i_processfpga_vt_select_15_b <= i_idxprom45_i_i_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom45_i_i_processfpga_vt_join(BITJOIN,113)@6
    i_idxprom45_i_i_processfpga_vt_join_q <= i_idxprom45_i_i_processfpga_vt_const_63_q & i_idxprom45_i_i_processfpga_vt_select_15_b;

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select(BITSELECT,206)@6
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_b <= i_idxprom45_i_i_processfpga_vt_join_q(17 downto 0);
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_c <= i_idxprom45_i_i_processfpga_vt_join_q(63 downto 54);
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_d <= i_idxprom45_i_i_processfpga_vt_join_q(35 downto 18);
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_e <= i_idxprom45_i_i_processfpga_vt_join_q(53 downto 36);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_add_1(ADD,193)@6 + 1
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_c);
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_shift0_q);
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_add_1_a) + UNSIGNED(i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_add_1_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_add_1_o(11 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_shift2(BITSHIFT,194)@7
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_shift2_qint <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_add_1_q & "00";
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_shift2_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_shift2_qint(13 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_15(BITSHIFT,153)@7
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_15_qint <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im3_shift2_q & "00000000000000";
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_15_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_15_qint(27 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_shift0(BITSHIFT,195)@6
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_shift0_qint <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_d & "0";
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_shift0_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_shift0_qint(18 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_add_1(ADD,196)@6 + 1
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_d);
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_shift0_q);
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_add_1_a) + UNSIGNED(i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_add_1_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_add_1_o(19 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_shift2(BITSHIFT,197)@7
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_shift2_qint <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_add_1_q & "00";
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_shift2_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_shift2_qint(21 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_14(BITSHIFT,152)@7
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_14_qint <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im6_shift2_q & "000000000000000000";
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_14_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_14_qint(39 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_join_16(BITJOIN,154)@7
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_join_16_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_15_q & i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_14_q;

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_shift0(BITSHIFT,198)@6
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_shift0_qint <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_e & "0";
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_shift0_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_shift0_qint(18 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_add_1(ADD,199)@6 + 1
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_e);
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_shift0_q);
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_add_1_a) + UNSIGNED(i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_add_1_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_add_1_o(19 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_shift2(BITSHIFT,200)@7
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_shift2_qint <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_add_1_q & "00";
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_shift2_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_shift2_qint(21 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_12(BITSHIFT,150)@7
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_12_qint <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im9_shift2_q & "00000000000000";
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_12_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_12_qint(35 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_shift0(BITSHIFT,189)@6
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_shift0_qint <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_b & "0";
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_shift0_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_shift0_qint(18 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_add_1(ADD,190)@6 + 1
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_clexc47_i_i_processfpga_processfpga2027_mult_x_bs1_merged_bit_select_b);
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_shift0_q);
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_add_1_a) + UNSIGNED(i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_add_1_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_add_1_o(19 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_shift2(BITSHIFT,191)@7
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_shift2_qint <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_add_1_q & "00";
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_shift2_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_shift2_qint(21 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_join_13(BITJOIN,151)@7
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_join_13_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_align_12_q & i_clexc47_i_i_processfpga_processfpga2027_mult_x_im0_shift2_q;

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_x_result_add_0_0(ADD,155)@7
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_clexc47_i_i_processfpga_processfpga2027_mult_x_join_13_q);
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_clexc47_i_i_processfpga_processfpga2027_mult_x_join_16_q);
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clexc47_i_i_processfpga_processfpga2027_mult_x_result_add_0_0_a) + UNSIGNED(i_clexc47_i_i_processfpga_processfpga2027_mult_x_result_add_0_0_b));
    i_clexc47_i_i_processfpga_processfpga2027_mult_x_result_add_0_0_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_x_result_add_0_0_o(68 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_mult_extender_x(BITJOIN,39)@7
    i_clexc47_i_i_processfpga_processfpga2027_mult_extender_x_q <= i_clexc47_i_i_processfpga_processfpga2027_mult_multconst_x_q & i_clexc47_i_i_processfpga_processfpga2027_mult_x_result_add_0_0_q(67 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_trunc_sel_x(BITSELECT,41)@7
    i_clexc47_i_i_processfpga_processfpga2027_trunc_sel_x_b <= i_clexc47_i_i_processfpga_processfpga2027_mult_extender_x_q(63 downto 0);

    -- redist12_i_clexc47_i_i_processfpga_processfpga2027_trunc_sel_x_b_1(DELAY,220)
    redist12_i_clexc47_i_i_processfpga_processfpga2027_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clexc47_i_i_processfpga_processfpga2027_trunc_sel_x_b, xout => redist12_i_clexc47_i_i_processfpga_processfpga2027_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer85_processfpga(BLACKBOX,131)@0
    -- in in_i_dependence@8
    -- in in_valid_in@8
    -- out out_buffer_out@8
    -- out out_valid_out@8
    thei_syncbuf_localneurons_sync_buffer85_processfpga : i_syncbuf_localneurons_sync_buffer85_processfpga2025
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_7_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer85_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_clexc47_i_i_processfpga_processfpga2027_add_x(ADD,42)@8
    i_clexc47_i_i_processfpga_processfpga2027_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer85_processfpga_out_buffer_out);
    i_clexc47_i_i_processfpga_processfpga2027_add_x_b <= STD_LOGIC_VECTOR("0" & redist12_i_clexc47_i_i_processfpga_processfpga2027_trunc_sel_x_b_1_q);
    i_clexc47_i_i_processfpga_processfpga2027_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clexc47_i_i_processfpga_processfpga2027_add_x_a) + UNSIGNED(i_clexc47_i_i_processfpga_processfpga2027_add_x_b));
    i_clexc47_i_i_processfpga_processfpga2027_add_x_q <= i_clexc47_i_i_processfpga_processfpga2027_add_x_o(64 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_dupName_0_trunc_sel_x(BITSELECT,33)@8
    i_clexc47_i_i_processfpga_processfpga2027_dupName_0_trunc_sel_x_b <= i_clexc47_i_i_processfpga_processfpga2027_add_x_q(63 downto 0);

    -- redist14_i_clexc47_i_i_processfpga_processfpga2027_dupName_0_trunc_sel_x_b_1(DELAY,222)
    redist14_i_clexc47_i_i_processfpga_processfpga2027_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clexc47_i_i_processfpga_processfpga2027_dupName_0_trunc_sel_x_b, xout => redist14_i_clexc47_i_i_processfpga_processfpga2027_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_clexc47_i_i_processfpga_processfpga2027_dupName_0_add_x(ADD,36)@9
    i_clexc47_i_i_processfpga_processfpga2027_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist14_i_clexc47_i_i_processfpga_processfpga2027_dupName_0_trunc_sel_x_b_1_q);
    i_clexc47_i_i_processfpga_processfpga2027_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_clexc47_i_i_processfpga_processfpga2027_c_i64_9gr_x_q);
    i_clexc47_i_i_processfpga_processfpga2027_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clexc47_i_i_processfpga_processfpga2027_dupName_0_add_x_a) + UNSIGNED(i_clexc47_i_i_processfpga_processfpga2027_dupName_0_add_x_b));
    i_clexc47_i_i_processfpga_processfpga2027_dupName_0_add_x_q <= i_clexc47_i_i_processfpga_processfpga2027_dupName_0_add_x_o(64 downto 0);

    -- i_clexc47_i_i_processfpga_processfpga2027_dupName_1_trunc_sel_x(BITSELECT,34)@9
    i_clexc47_i_i_processfpga_processfpga2027_dupName_1_trunc_sel_x_b <= i_clexc47_i_i_processfpga_processfpga2027_dupName_0_add_x_q(63 downto 0);

    -- redist13_i_clexc47_i_i_processfpga_processfpga2027_dupName_1_trunc_sel_x_b_1(DELAY,221)
    redist13_i_clexc47_i_i_processfpga_processfpga2027_dupName_1_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clexc47_i_i_processfpga_processfpga2027_dupName_1_trunc_sel_x_b, xout => redist13_i_clexc47_i_i_processfpga_processfpga2027_dupName_1_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_store_memdep_32_processfpga(BLACKBOX,129)@10
    -- out out_memdep_32_avm_address@20000000
    -- out out_memdep_32_avm_burstcount@20000000
    -- out out_memdep_32_avm_byteenable@20000000
    -- out out_memdep_32_avm_enable@20000000
    -- out out_memdep_32_avm_read@20000000
    -- out out_memdep_32_avm_write@20000000
    -- out out_memdep_32_avm_writedata@20000000
    -- out out_o_stall@11
    -- out out_o_valid@11
    -- out out_o_writeack@11
    thei_store_memdep_32_processfpga : i_store_memdep_32_processfpga2032
    PORT MAP (
        in_flush => in_flush,
        in_i_address => redist13_i_clexc47_i_i_processfpga_processfpga2027_dupName_1_trunc_sel_x_b_1_q,
        in_i_dependence => i_acl_pop_i1_memdep_phi35_pop138_processfpga_out_data_out,
        in_i_predicate => i_ffwd_dst_phi_decision1672_xor535_processfpga_out_dest_data_out_125_0,
        in_i_stall => GND_q,
        in_i_valid => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        in_i_writedata => redist0_rightShiftStage0Idx1Rng8_uid160_i_nomrls_lshr554_processfpga_processfpga2034_shift_x_merged_bit_select_c_4_q,
        in_memdep_32_avm_readdata => in_memdep_32_avm_readdata,
        in_memdep_32_avm_readdatavalid => in_memdep_32_avm_readdatavalid,
        in_memdep_32_avm_waitrequest => in_memdep_32_avm_waitrequest,
        in_memdep_32_avm_writeack => in_memdep_32_avm_writeack,
        out_memdep_32_avm_address => i_store_memdep_32_processfpga_out_memdep_32_avm_address,
        out_memdep_32_avm_burstcount => i_store_memdep_32_processfpga_out_memdep_32_avm_burstcount,
        out_memdep_32_avm_byteenable => i_store_memdep_32_processfpga_out_memdep_32_avm_byteenable,
        out_memdep_32_avm_enable => i_store_memdep_32_processfpga_out_memdep_32_avm_enable,
        out_memdep_32_avm_read => i_store_memdep_32_processfpga_out_memdep_32_avm_read,
        out_memdep_32_avm_write => i_store_memdep_32_processfpga_out_memdep_32_avm_write,
        out_memdep_32_avm_writedata => i_store_memdep_32_processfpga_out_memdep_32_avm_writedata,
        out_o_writeack => i_store_memdep_32_processfpga_out_o_writeack,
        clock => clock,
        resetn => resetn
    );

    -- dupName_1_ext_sig_sync_out_x(GPOUT,9)
    out_memdep_32_avm_address <= i_store_memdep_32_processfpga_out_memdep_32_avm_address;
    out_memdep_32_avm_enable <= i_store_memdep_32_processfpga_out_memdep_32_avm_enable;
    out_memdep_32_avm_read <= i_store_memdep_32_processfpga_out_memdep_32_avm_read;
    out_memdep_32_avm_write <= i_store_memdep_32_processfpga_out_memdep_32_avm_write;
    out_memdep_32_avm_writedata <= i_store_memdep_32_processfpga_out_memdep_32_avm_writedata;
    out_memdep_32_avm_byteenable <= i_store_memdep_32_processfpga_out_memdep_32_avm_byteenable;
    out_memdep_32_avm_burstcount <= i_store_memdep_32_processfpga_out_memdep_32_avm_burstcount;

    -- dupName_2_ext_sig_sync_out_x(GPOUT,11)
    out_memdep_34_avm_address <= i_store_memdep_34_processfpga_out_memdep_34_avm_address;
    out_memdep_34_avm_enable <= i_store_memdep_34_processfpga_out_memdep_34_avm_enable;
    out_memdep_34_avm_read <= i_store_memdep_34_processfpga_out_memdep_34_avm_read;
    out_memdep_34_avm_write <= i_store_memdep_34_processfpga_out_memdep_34_avm_write;
    out_memdep_34_avm_writedata <= i_store_memdep_34_processfpga_out_memdep_34_avm_writedata;
    out_memdep_34_avm_byteenable <= i_store_memdep_34_processfpga_out_memdep_34_avm_byteenable;
    out_memdep_34_avm_burstcount <= i_store_memdep_34_processfpga_out_memdep_34_avm_burstcount;

    -- redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_notEnable(LOGICAL,229)
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_nor(LOGICAL,230)
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_nor_q <= not (redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_notEnable_q or redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_sticky_ena_q);

    -- redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_last(CONSTANT,226)
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_last_q <= "0110";

    -- redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_cmp(LOGICAL,227)
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_cmp_b <= STD_LOGIC_VECTOR("0" & redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_rdcnt_q);
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_cmp_q <= "1" WHEN redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_last_q = redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_cmp_b ELSE "0";

    -- redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_cmpReg(REG,228)
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_cmpReg_q <= STD_LOGIC_VECTOR(redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_cmp_q);
        END IF;
    END PROCESS;

    -- redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_sticky_ena(REG,231)
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_nor_q = "1") THEN
                redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_sticky_ena_q <= STD_LOGIC_VECTOR(redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_enaAnd(LOGICAL,232)
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_enaAnd_q <= redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_sticky_ena_q and VCC_q;

    -- redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_rdcnt(COUNTER,224)
    -- low=0, high=7, step=1, init=0
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_rdcnt_i <= TO_UNSIGNED(0, 3);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_rdcnt_i <= redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_rdcnt_i, 3)));

    -- redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_wraddr(REG,225)
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_wraddr_q <= "111";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_wraddr_q <= STD_LOGIC_VECTOR(redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem(DUALMEM,223)
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_ia <= STD_LOGIC_VECTOR(in_c0_eni21029_2);
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_aa <= redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_wraddr_q;
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_ab <= redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_rdcnt_q;
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_reset0 <= not (resetn);
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 8,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 8,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_reset0,
        clock1 => clock,
        address_a => redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_aa,
        data_a => redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_ab,
        q_b => redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_iq
    );
    redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_q <= redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_iq(31 downto 0);

    -- i_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga(BLACKBOX,87)@10
    -- out out_feedback_stall_out_139@20000000
    thei_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga : i_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga2056
    PORT MAP (
        in_data_in => redist5_sync_in_aunroll_x_in_c0_eni21029_2_9_mem_q,
        in_dir => redist4_sync_in_aunroll_x_in_c0_eni21029_1_9_q,
        in_feedback_in_139 => i_acl_push_i32_acl_hw_wg_id812_push139_processfpga_out_feedback_out_139,
        in_feedback_valid_in_139 => i_acl_push_i32_acl_hw_wg_id812_push139_processfpga_out_feedback_valid_out_139,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        out_data_out => i_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga_out_data_out,
        out_feedback_stall_out_139 => i_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga_out_feedback_stall_out_139,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i32_acl_hw_wg_id812_push139_processfpga(BLACKBOX,93)@11
    -- out out_feedback_out_139@20000000
    -- out out_feedback_valid_out_139@20000000
    thei_acl_push_i32_acl_hw_wg_id812_push139_processfpga : i_acl_push_i32_acl_hw_wg_id812_push139_processfpga2058
    PORT MAP (
        in_data_in => redist3_i_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga_out_data_out_1_q,
        in_feedback_stall_in_139 => i_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga_out_feedback_stall_out_139,
        in_stall_in => GND_q,
        in_unnamed_processFPGA452 => redist2_i_unnamed_processfpga2045_q_10_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_10_q,
        out_data_out => i_acl_push_i32_acl_hw_wg_id812_push139_processfpga_out_data_out,
        out_feedback_out_139 => i_acl_push_i32_acl_hw_wg_id812_push139_processfpga_out_feedback_out_139,
        out_feedback_valid_out_139 => i_acl_push_i32_acl_hw_wg_id812_push139_processfpga_out_feedback_valid_out_139,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga_out_data_out_1(DELAY,211)
    redist3_i_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga_out_data_out, xout => redist3_i_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- sync_out_aunroll_x(GPOUT,71)@11
    out_c0_exi31035_0 <= GND_q;
    out_c0_exi31035_1 <= redist2_i_unnamed_processfpga2045_q_10_q;
    out_c0_exi31035_2 <= redist3_i_acl_pop_i32_acl_hw_wg_id812_pop139_processfpga_out_data_out_1_q;
    out_c0_exi31035_3 <= i_acl_push_i32_acl_hw_wg_id812_push139_processfpga_out_data_out;
    out_o_valid <= redist10_sync_in_aunroll_x_in_i_valid_10_q;

    -- i_acl_push_i1_notexitcond715_processfpga(BLACKBOX,92)@1
    -- out out_feedback_out_32@20000000
    -- out out_feedback_valid_out_32@20000000
    thei_acl_push_i1_notexitcond715_processfpga : i_acl_push_i1_notexitcond715_processfpga2054
    PORT MAP (
        in_data_in => i_unnamed_processfpga2045_q,
        in_feedback_stall_in_32 => i_acl_pipeline_keep_going714_processfpga_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_32 => i_acl_push_i1_notexitcond715_processfpga_out_feedback_out_32,
        out_feedback_valid_out_32 => i_acl_push_i1_notexitcond715_processfpga_out_feedback_valid_out_32,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going714_processfpga(BLACKBOX,84)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going714_processfpga : i_acl_pipeline_keep_going714_processfpga2008
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond715_processfpga_out_feedback_out_32,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond715_processfpga_out_feedback_valid_out_32,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going714_processfpga_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going714_processfpga_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going714_processfpga_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going714_processfpga_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,83)
    out_aclp_to_limiter_i_acl_pipeline_keep_going714_processfpga_exiting_valid_out <= i_acl_pipeline_keep_going714_processfpga_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going714_processfpga_exiting_stall_out <= i_acl_pipeline_keep_going714_processfpga_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,136)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going714_processfpga_out_pipeline_valid_out;

END normal;
