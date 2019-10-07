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

-- VHDL created from i_sfc_logic_c0_for_body_i293_processfpga_c0_enter1042_processfpga2075
-- VHDL created on Thu Sep 26 12:29:09 2019


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

entity i_sfc_logic_c0_for_body_i293_processfpga_c0_enter1042_processfpga2075 is
    port (
        in_unnamed_processFPGA289_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_processFPGA289_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA289_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA289_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA288_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA288_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA288_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA288_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA288_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA288_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_processFPGA288_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load565_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load565_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load565_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load565_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA289_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA289_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA289_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA289_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA289_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA289_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_processFPGA289_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_36_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_memdep_36_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_36_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_36_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load565_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load565_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load565_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load565_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load565_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load565_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load565_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_36_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_36_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_36_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_36_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_36_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_36_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_memdep_36_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21041_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21041_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21041_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_189_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_190_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_191_0 : in std_logic_vector(16 downto 0);  -- ufix17
        in_intel_reserved_ffwd_6_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi31047_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi31047_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi31047_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi31047_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_129_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA288_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_processFPGA288_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA288_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA288_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going718_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going718_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body_i293_processfpga_c0_enter1042_processfpga2075;

architecture normal of i_sfc_logic_c0_for_body_i293_processfpga_c0_enter1042_processfpga2075 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going718_processfpga2077 is
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


    component i_acl_pop_i16_idx_0_i2791328_pop68_processfpga2085 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_68 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_68 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_68 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i17_fpgaindvars_iv240_pop67_processfpga2081 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_67 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_67 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_stall_out_67 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga2132 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_70 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_70 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_70 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_remainingcounter_0_i1327_pop69_processfpga2111 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_69 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_69 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_69 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_idx_0_i2791328_push68_processfpga2124 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_68 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit720 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_68 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_68 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i17_fpgaindvars_iv240_push67_processfpga2126 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_feedback_stall_in_67 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit720 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_out_67 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_67 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond719_processfpga2128 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_34 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_34 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_34 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_acl_hw_wg_id813_push70_processfpga2134 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_70 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit720 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_70 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_70 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_remainingcounter_0_i1327_push69_processfpga2122 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_69 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit720 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_69 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_69 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_acl_4324_processfpga2083 is
        port (
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_6_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp_i2821326641_processfpga2114 is
        port (
            in_intel_reserved_ffwd_189_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_189_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp_i2821326_phi_decision_xor642_processfpga2119 is
        port (
            in_intel_reserved_ffwd_190_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_190_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp_i2821326_phi_decision_xor643_processfpga2098 is
        port (
            in_intel_reserved_ffwd_190_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_190_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp_i2821326_phi_decision_xor644_processfpga2090 is
        port (
            in_intel_reserved_ffwd_190_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_190_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga287_processfpga2079 is
        port (
            in_intel_reserved_ffwd_191_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_191_0 : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga290_processfpga2130 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_129_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_129_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_normls_load565_processfpga2107 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load565_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load565_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load565_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load565_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load565_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load565_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load565_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load565_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load565_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load565_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load565_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_processfpga288_processfpga2092 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA288_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_processFPGA288_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA288_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA288_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA288_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA288_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA288_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_unnamed_processFPGA288_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA288_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA288_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA288_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_processfpga289_processfpga2100 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA289_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_processFPGA289_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA289_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA289_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA289_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA289_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA289_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_unnamed_processFPGA289_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA289_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA289_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA289_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_36_processfpga2116 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_memdep_36_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_memdep_36_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_36_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_36_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_36_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_36_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_36_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_memdep_36_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_36_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_36_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_36_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_localneurons_sync_buffer82_processfpga2103 is
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


    component i_syncbuf_localneurons_sync_buffer83_processfpga2095 is
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


    component i_syncbuf_localneurons_sync_buffer84_processfpga2087 is
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
    signal bgTrunc_i_fpgaindvars_iv_next241_processfpga_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal bgTrunc_i_inc23_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal bgTrunc_i_inc_i294_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i32_1gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_multconst_x_q : STD_LOGIC_VECTOR (61 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_multconst_x_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_c_i64_9gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_c_i64_4gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_c_i64_2gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom21_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom_i284_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep564_processfpga_processfpga2106_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep564_processfpga_processfpga2106_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep564_processfpga_processfpga2106_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep564_processfpga_processfpga2106_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep564_processfpga_processfpga2106_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep564_processfpga_processfpga2106_c_i64_1gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_zext566_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_0gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_1gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_256_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_768_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i17_1gr_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i17_undef_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i8_0gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal c_i8_1gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_994_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_994_processfpga_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_996_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going718_processfpga_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going718_processfpga_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going718_processfpga_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going718_processfpga_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_idx_0_i2791328_pop68_processfpga_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_idx_0_i2791328_pop68_processfpga_out_feedback_stall_out_68 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv240_pop67_processfpga_out_data_out : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv240_pop67_processfpga_out_feedback_stall_out_67 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_feedback_stall_out_70 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_remainingcounter_0_i1327_pop69_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_remainingcounter_0_i1327_pop69_processfpga_out_feedback_stall_out_69 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_idx_0_i2791328_push68_processfpga_out_feedback_out_68 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_idx_0_i2791328_push68_processfpga_out_feedback_valid_out_68 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv240_push67_processfpga_out_feedback_out_67 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv240_push67_processfpga_out_feedback_valid_out_67 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond719_processfpga_out_feedback_out_34 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond719_processfpga_out_feedback_valid_out_34 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id813_push70_processfpga_out_feedback_out_70 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id813_push70_processfpga_out_feedback_valid_out_70 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_remainingcounter_0_i1327_push69_processfpga_out_feedback_out_69 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_remainingcounter_0_i1327_push69_processfpga_out_feedback_valid_out_69 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and_i_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and_i_processfpga_vt_const_15_q : STD_LOGIC_VECTOR (5 downto 0);
    signal i_and_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and_i_processfpga_vt_select_9_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_arrayidx22_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx22_i_processfpga_vt_select_63_b : STD_LOGIC_VECTOR (62 downto 0);
    signal i_brmerge1250_not_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_i2821326_phi_decision_xor1876_or_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_i2821326_phi_decision_xor1878_or_demorgan_processfpga_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_i2821326_phi_decision_xor1878_or_demorgan_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_i2821326_phi_decision_xor1878_or_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_acl_4324_processfpga_out_dest_data_out_6_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_cmp_i2821326641_processfpga_out_dest_data_out_189_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp_i2821326_phi_decision_xor642_processfpga_out_dest_data_out_190_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp_i2821326_phi_decision_xor643_processfpga_out_dest_data_out_190_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp_i2821326_phi_decision_xor644_processfpga_out_dest_data_out_190_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga287_processfpga_out_dest_data_out_191_0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_ffwd_src_unnamed_processfpga290_processfpga_out_intel_reserved_ffwd_129_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fpgaindvars_iv240_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv240_replace_phi_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_fpgaindvars_iv_next241_processfpga_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next241_processfpga_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next241_processfpga_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next241_processfpga_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_idx_0_i2791328_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_idx_0_i2791328_replace_phi_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_idxprom_i284_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom_i284_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom_i284_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_inc23_i_processfpga_a : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc23_i_processfpga_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc23_i_processfpga_o : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc23_i_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc_i294_processfpga_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_i294_processfpga_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_i294_processfpga_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_i294_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_lnot_i_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_lnot_i_xor_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load565_processfpga_out_normls_load565_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load565_processfpga_out_normls_load565_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load565_processfpga_out_normls_load565_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_normls_load565_processfpga_out_normls_load565_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load565_processfpga_out_normls_load565_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load565_processfpga_out_normls_load565_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load565_processfpga_out_normls_load565_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load565_processfpga_out_o_readdata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_unnamed_processfpga288_processfpga_out_o_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga289_processfpga_out_o_readdata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_normls_shl567_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_normls_shl567_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_normls_zext566_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_normls_zext566_processfpga_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_notexit720_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_notlhs_processfpga_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_notlhs_processfpga_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_notlhs_processfpga_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_notlhs_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_notrhs_processfpga_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_notrhs_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_36_processfpga_out_memdep_36_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_36_processfpga_out_memdep_36_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_36_processfpga_out_memdep_36_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_store_memdep_36_processfpga_out_memdep_36_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_36_processfpga_out_memdep_36_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_36_processfpga_out_memdep_36_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_36_processfpga_out_memdep_36_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_syncbuf_localneurons_sync_buffer82_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer83_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer84_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga2102_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_processfpga2102_vt_const_7_q : STD_LOGIC_VECTOR (6 downto 0);
    signal i_unnamed_processfpga2102_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_processfpga2102_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga2121_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_join_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_14_q : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_14_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_join_16_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal leftShiftStage0Idx1Rng8_uid277_i_normls_shl567_processfpga_processfpga2109_shift_x_in : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1Rng8_uid277_i_normls_shl567_processfpga_processfpga2109_shift_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1_uid278_i_normls_shl567_processfpga_processfpga2109_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0_uid280_i_normls_shl567_processfpga_processfpga2109_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid280_i_normls_shl567_processfpga_processfpga2109_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i292_processfpga_processfpga2097_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_exitcond242_processfpga_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx22_i_processfpga_processfpga2113_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist1_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c_4_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist4_i_unnamed_processfpga2121_q_17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_notexit720_processfpga_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_notexit720_processfpga_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_notexit720_processfpga_q_17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_lnot_i_processfpga_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_sync_in_aunroll_x_in_c0_eni21041_1_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_sync_in_aunroll_x_in_i_valid_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_i_valid_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_sync_in_aunroll_x_in_i_valid_16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_sync_in_aunroll_x_in_i_valid_17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_i_clfrnt_i_processfpga_processfpga2089_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist22_i_clfrnt_i_processfpga_processfpga2089_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist23_i_clfired_i292_processfpga_processfpga2097_trunc_sel_x_b_2_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist24_i_clfired_i292_processfpga_processfpga2097_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist25_i_clexc_i_processfpga_processfpga2105_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist26_i_clexc_i_processfpga_processfpga2105_dupName_1_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist27_i_clexc_i_processfpga_processfpga2105_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist28_bgTrunc_i_inc_i294_processfpga_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_reset0 : std_logic;
    signal redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_rdcnt_i : signal is true;
    signal redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_sticky_ena_q : signal is true;
    signal redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c_4_outputreg_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_reset0 : std_logic;
    signal redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_rdcnt_i : signal is true;
    signal redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_sticky_ena_q : signal is true;
    signal redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_reset0 : std_logic;
    signal redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_rdcnt_i : signal is true;
    signal redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_sticky_ena_q : signal is true;
    signal redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_reset0 : std_logic;
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_i : signal is true;
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_eq : std_logic;
    attribute preserve of redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_eq : signal is true;
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_sticky_ena_q : signal is true;
    signal redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_reset0 : std_logic;
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_i : signal is true;
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_eq : std_logic;
    attribute preserve of redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_eq : signal is true;
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_sticky_ena_q : signal is true;
    signal redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist12_sync_in_aunroll_x_in_i_valid_1(DELAY,343)
    redist12_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist12_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist13_sync_in_aunroll_x_in_i_valid_3(DELAY,344)
    redist13_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist12_sync_in_aunroll_x_in_i_valid_1_q, xout => redist13_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist14_sync_in_aunroll_x_in_i_valid_4(DELAY,345)
    redist14_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist13_sync_in_aunroll_x_in_i_valid_3_q, xout => redist14_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_ffwd_dst_cmp_i2821326_phi_decision_xor644_processfpga(BLACKBOX,152)@5
    thei_ffwd_dst_cmp_i2821326_phi_decision_xor644_processfpga : i_ffwd_dst_cmp_i2821326_phi_decision_xor644_processfpga2090
    PORT MAP (
        in_intel_reserved_ffwd_190_0 => in_intel_reserved_ffwd_190_0,
        in_stall_in => GND_q,
        in_valid_in => redist14_sync_in_aunroll_x_in_i_valid_4_q,
        out_dest_data_out_190_0 => i_ffwd_dst_cmp_i2821326_phi_decision_xor644_processfpga_out_dest_data_out_190_0,
        clock => clock,
        resetn => resetn
    );

    -- i_clfrnt_i_processfpga_processfpga2089_c_i64_2gr_x(CONSTANT,87)
    i_clfrnt_i_processfpga_processfpga2089_c_i64_2gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000010";

    -- i_clexc_i_processfpga_processfpga2105_mult_multconst_x(CONSTANT,55)
    i_clexc_i_processfpga_processfpga2105_mult_multconst_x_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_shift0(BITSHIFT,318)@2
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_shift0_qint <= i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c & "0";
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_shift0_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_shift0_qint(10 downto 0);

    -- i_idxprom_i284_processfpga_vt_const_63(CONSTANT,161)
    i_idxprom_i284_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_acl_4324_processfpga(BLACKBOX,148)@1
    thei_ffwd_dst_acl_4324_processfpga : i_ffwd_dst_acl_4324_processfpga2083
    PORT MAP (
        in_intel_reserved_ffwd_6_0 => in_intel_reserved_ffwd_6_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_6_0 => i_ffwd_dst_acl_4324_processfpga_out_dest_data_out_6_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_cmp_i2821326_phi_decision_xor642_processfpga(BLACKBOX,150)@1
    thei_ffwd_dst_cmp_i2821326_phi_decision_xor642_processfpga : i_ffwd_dst_cmp_i2821326_phi_decision_xor642_processfpga2119
    PORT MAP (
        in_intel_reserved_ffwd_190_0 => in_intel_reserved_ffwd_190_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_190_0 => i_ffwd_dst_cmp_i2821326_phi_decision_xor642_processfpga_out_dest_data_out_190_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga287_processfpga(BLACKBOX,153)@1
    thei_ffwd_dst_unnamed_processfpga287_processfpga : i_ffwd_dst_unnamed_processfpga287_processfpga2079
    PORT MAP (
        in_intel_reserved_ffwd_191_0 => in_intel_reserved_ffwd_191_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_191_0 => i_ffwd_dst_unnamed_processfpga287_processfpga_out_dest_data_out_191_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i17_1gr(CONSTANT,114)
    c_i17_1gr_q <= "11111111111111111";

    -- i_fpgaindvars_iv_next241_processfpga(ADD,156)@1
    i_fpgaindvars_iv_next241_processfpga_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv240_replace_phi_processfpga_q);
    i_fpgaindvars_iv_next241_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i17_1gr_q);
    i_fpgaindvars_iv_next241_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next241_processfpga_a) + UNSIGNED(i_fpgaindvars_iv_next241_processfpga_b));
    i_fpgaindvars_iv_next241_processfpga_q <= i_fpgaindvars_iv_next241_processfpga_o(17 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next241_processfpga_sel_x(BITSELECT,2)@1
    bgTrunc_i_fpgaindvars_iv_next241_processfpga_sel_x_b <= i_fpgaindvars_iv_next241_processfpga_q(16 downto 0);

    -- i_acl_push_i17_fpgaindvars_iv240_push67_processfpga(BLACKBOX,131)@1
    -- out out_feedback_out_67@20000000
    -- out out_feedback_valid_out_67@20000000
    thei_acl_push_i17_fpgaindvars_iv240_push67_processfpga : i_acl_push_i17_fpgaindvars_iv240_push67_processfpga2126
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next241_processfpga_sel_x_b,
        in_feedback_stall_in_67 => i_acl_pop_i17_fpgaindvars_iv240_pop67_processfpga_out_feedback_stall_out_67,
        in_notexit720 => i_notexit720_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_67 => i_acl_push_i17_fpgaindvars_iv240_push67_processfpga_out_feedback_out_67,
        out_feedback_valid_out_67 => i_acl_push_i17_fpgaindvars_iv240_push67_processfpga_out_feedback_valid_out_67,
        clock => clock,
        resetn => resetn
    );

    -- c_i17_undef(CONSTANT,115)
    c_i17_undef_q <= "00000000000000000";

    -- i_acl_pop_i17_fpgaindvars_iv240_pop67_processfpga(BLACKBOX,127)@1
    -- out out_feedback_stall_out_67@20000000
    thei_acl_pop_i17_fpgaindvars_iv240_pop67_processfpga : i_acl_pop_i17_fpgaindvars_iv240_pop67_processfpga2081
    PORT MAP (
        in_data_in => c_i17_undef_q,
        in_dir => in_c0_eni21041_1,
        in_feedback_in_67 => i_acl_push_i17_fpgaindvars_iv240_push67_processfpga_out_feedback_out_67,
        in_feedback_valid_in_67 => i_acl_push_i17_fpgaindvars_iv240_push67_processfpga_out_feedback_valid_out_67,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i17_fpgaindvars_iv240_pop67_processfpga_out_data_out,
        out_feedback_stall_out_67 => i_acl_pop_i17_fpgaindvars_iv240_pop67_processfpga_out_feedback_stall_out_67,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv240_replace_phi_processfpga(MUX,155)@1
    i_fpgaindvars_iv240_replace_phi_processfpga_s <= in_c0_eni21041_1;
    i_fpgaindvars_iv240_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv240_replace_phi_processfpga_s, i_acl_pop_i17_fpgaindvars_iv240_pop67_processfpga_out_data_out, i_ffwd_dst_unnamed_processfpga287_processfpga_out_dest_data_out_191_0)
    BEGIN
        CASE (i_fpgaindvars_iv240_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv240_replace_phi_processfpga_q <= i_acl_pop_i17_fpgaindvars_iv240_pop67_processfpga_out_data_out;
            WHEN "1" => i_fpgaindvars_iv240_replace_phi_processfpga_q <= i_ffwd_dst_unnamed_processfpga287_processfpga_out_dest_data_out_191_0;
            WHEN OTHERS => i_fpgaindvars_iv240_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_exitcond242_processfpga_cmp_sign(LOGICAL,327)@1
    i_exitcond242_processfpga_cmp_sign_q <= STD_LOGIC_VECTOR(i_fpgaindvars_iv240_replace_phi_processfpga_q(16 downto 16));

    -- i_unnamed_processfpga2121(LOGICAL,190)@1
    i_unnamed_processfpga2121_q <= i_exitcond242_processfpga_cmp_sign_q or i_ffwd_dst_cmp_i2821326_phi_decision_xor642_processfpga_out_dest_data_out_190_0;

    -- i_notexit720_processfpga(LOGICAL,179)@1
    i_notexit720_processfpga_q <= i_unnamed_processfpga2121_q xor VCC_q;

    -- redist5_i_notexit720_processfpga_q_1(DELAY,336)
    redist5_i_notexit720_processfpga_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit720_processfpga_q, xout => redist5_i_notexit720_processfpga_q_1_q, clk => clock, aclr => resetn );

    -- c_i16_1gr(CONSTANT,108)
    c_i16_1gr_q <= "0000000000000001";

    -- i_inc23_i_processfpga(ADD,164)@2
    i_inc23_i_processfpga_a <= STD_LOGIC_VECTOR("0" & i_idx_0_i2791328_replace_phi_processfpga_q);
    i_inc23_i_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i16_1gr_q);
    i_inc23_i_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc23_i_processfpga_a) + UNSIGNED(i_inc23_i_processfpga_b));
    i_inc23_i_processfpga_q <= i_inc23_i_processfpga_o(16 downto 0);

    -- bgTrunc_i_inc23_i_processfpga_sel_x(BITSELECT,3)@2
    bgTrunc_i_inc23_i_processfpga_sel_x_b <= i_inc23_i_processfpga_q(15 downto 0);

    -- i_acl_push_i16_idx_0_i2791328_push68_processfpga(BLACKBOX,130)@2
    -- out out_feedback_out_68@20000000
    -- out out_feedback_valid_out_68@20000000
    thei_acl_push_i16_idx_0_i2791328_push68_processfpga : i_acl_push_i16_idx_0_i2791328_push68_processfpga2124
    PORT MAP (
        in_data_in => bgTrunc_i_inc23_i_processfpga_sel_x_b,
        in_feedback_stall_in_68 => i_acl_pop_i16_idx_0_i2791328_pop68_processfpga_out_feedback_stall_out_68,
        in_notexit720 => redist5_i_notexit720_processfpga_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist12_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_68 => i_acl_push_i16_idx_0_i2791328_push68_processfpga_out_feedback_out_68,
        out_feedback_valid_out_68 => i_acl_push_i16_idx_0_i2791328_push68_processfpga_out_feedback_valid_out_68,
        clock => clock,
        resetn => resetn
    );

    -- c_i16_0gr(CONSTANT,107)
    c_i16_0gr_q <= "0000000000000000";

    -- i_acl_pop_i16_idx_0_i2791328_pop68_processfpga(BLACKBOX,126)@1
    -- out out_feedback_stall_out_68@20000000
    thei_acl_pop_i16_idx_0_i2791328_pop68_processfpga : i_acl_pop_i16_idx_0_i2791328_pop68_processfpga2085
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c0_eni21041_1,
        in_feedback_in_68 => i_acl_push_i16_idx_0_i2791328_push68_processfpga_out_feedback_out_68,
        in_feedback_valid_in_68 => i_acl_push_i16_idx_0_i2791328_push68_processfpga_out_feedback_valid_out_68,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_idx_0_i2791328_pop68_processfpga_out_data_out,
        out_feedback_stall_out_68 => i_acl_pop_i16_idx_0_i2791328_pop68_processfpga_out_feedback_stall_out_68,
        clock => clock,
        resetn => resetn
    );

    -- i_idx_0_i2791328_replace_phi_processfpga(MUX,157)@1 + 1
    i_idx_0_i2791328_replace_phi_processfpga_s <= in_c0_eni21041_1;
    i_idx_0_i2791328_replace_phi_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_idx_0_i2791328_replace_phi_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_idx_0_i2791328_replace_phi_processfpga_s) IS
                WHEN "0" => i_idx_0_i2791328_replace_phi_processfpga_q <= i_acl_pop_i16_idx_0_i2791328_pop68_processfpga_out_data_out;
                WHEN "1" => i_idx_0_i2791328_replace_phi_processfpga_q <= i_ffwd_dst_acl_4324_processfpga_out_dest_data_out_6_0;
                WHEN OTHERS => i_idx_0_i2791328_replace_phi_processfpga_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_idxprom_i284_processfpga_sel_x(BITSELECT,91)@2
    i_idxprom_i284_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(i_idx_0_i2791328_replace_phi_processfpga_q(15 downto 0)), 64));

    -- i_idxprom_i284_processfpga_vt_select_15(BITSELECT,163)@2
    i_idxprom_i284_processfpga_vt_select_15_b <= i_idxprom_i284_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom_i284_processfpga_vt_join(BITJOIN,162)@2
    i_idxprom_i284_processfpga_vt_join_q <= i_idxprom_i284_processfpga_vt_const_63_q & i_idxprom_i284_processfpga_vt_select_15_b;

    -- i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select(BITSELECT,330)@2
    i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b <= i_idxprom_i284_processfpga_vt_join_q(17 downto 0);
    i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c <= i_idxprom_i284_processfpga_vt_join_q(63 downto 54);
    i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d <= i_idxprom_i284_processfpga_vt_join_q(35 downto 18);
    i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e <= i_idxprom_i284_processfpga_vt_join_q(53 downto 36);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_add_1(ADD,319)@2 + 1
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c);
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_shift0_q);
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_add_1_a) + UNSIGNED(i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_add_1_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_add_1_o(11 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_shift2(BITSHIFT,320)@3
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_shift2_qint <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_add_1_q & "00";
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_shift2_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_shift2_qint(13 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_align_15(BITSHIFT,269)@3
    i_clfrnt_i_processfpga_processfpga2089_mult_x_align_15_qint <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im3_shift2_q & "00000000000000";
    i_clfrnt_i_processfpga_processfpga2089_mult_x_align_15_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_align_15_qint(27 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_shift0(BITSHIFT,321)@2
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_shift0_qint <= i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d & "0";
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_shift0_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_shift0_qint(18 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_add_1(ADD,322)@2 + 1
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d);
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_shift0_q);
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_add_1_a) + UNSIGNED(i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_add_1_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_add_1_o(19 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_shift2(BITSHIFT,323)@3
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_shift2_qint <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_add_1_q & "00";
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_shift2_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_shift2_qint(21 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_align_14(BITSHIFT,268)@3
    i_clfrnt_i_processfpga_processfpga2089_mult_x_align_14_qint <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im6_shift2_q & "000000000000000000";
    i_clfrnt_i_processfpga_processfpga2089_mult_x_align_14_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_align_14_qint(39 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_join_16(BITJOIN,270)@3
    i_clfrnt_i_processfpga_processfpga2089_mult_x_join_16_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_align_15_q & i_clfrnt_i_processfpga_processfpga2089_mult_x_align_14_q;

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_shift0(BITSHIFT,324)@2
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_shift0_qint <= i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e & "0";
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_shift0_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_shift0_qint(18 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_add_1(ADD,325)@2 + 1
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e);
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_shift0_q);
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_add_1_a) + UNSIGNED(i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_add_1_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_add_1_o(19 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_shift2(BITSHIFT,326)@3
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_shift2_qint <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_add_1_q & "00";
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_shift2_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_shift2_qint(21 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_align_12(BITSHIFT,266)@3
    i_clfrnt_i_processfpga_processfpga2089_mult_x_align_12_qint <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im9_shift2_q & "00000000000000";
    i_clfrnt_i_processfpga_processfpga2089_mult_x_align_12_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_align_12_qint(35 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_shift0(BITSHIFT,315)@2
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_shift0_qint <= i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b & "0";
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_shift0_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_shift0_qint(18 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_add_1(ADD,316)@2 + 1
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b);
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_shift0_q);
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_add_1_a) + UNSIGNED(i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_add_1_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_add_1_o(19 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_shift2(BITSHIFT,317)@3
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_shift2_qint <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_add_1_q & "00";
    i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_shift2_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_shift2_qint(21 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_join_13(BITJOIN,267)@3
    i_clfrnt_i_processfpga_processfpga2089_mult_x_join_13_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_align_12_q & i_clfrnt_i_processfpga_processfpga2089_mult_x_im0_shift2_q;

    -- i_clfrnt_i_processfpga_processfpga2089_mult_x_result_add_0_0(ADD,271)@3
    i_clfrnt_i_processfpga_processfpga2089_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_clfrnt_i_processfpga_processfpga2089_mult_x_join_13_q);
    i_clfrnt_i_processfpga_processfpga2089_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_clfrnt_i_processfpga_processfpga2089_mult_x_join_16_q);
    i_clfrnt_i_processfpga_processfpga2089_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfrnt_i_processfpga_processfpga2089_mult_x_result_add_0_0_a) + UNSIGNED(i_clfrnt_i_processfpga_processfpga2089_mult_x_result_add_0_0_b));
    i_clfrnt_i_processfpga_processfpga2089_mult_x_result_add_0_0_q <= i_clfrnt_i_processfpga_processfpga2089_mult_x_result_add_0_0_o(68 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_mult_extender_x(BITJOIN,82)@3
    i_clfrnt_i_processfpga_processfpga2089_mult_extender_x_q <= i_clexc_i_processfpga_processfpga2105_mult_multconst_x_q & i_clfrnt_i_processfpga_processfpga2089_mult_x_result_add_0_0_q(67 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_trunc_sel_x(BITSELECT,84)@3
    i_clfrnt_i_processfpga_processfpga2089_trunc_sel_x_b <= i_clfrnt_i_processfpga_processfpga2089_mult_extender_x_q(63 downto 0);

    -- redist21_i_clfrnt_i_processfpga_processfpga2089_trunc_sel_x_b_1(DELAY,352)
    redist21_i_clfrnt_i_processfpga_processfpga2089_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clfrnt_i_processfpga_processfpga2089_trunc_sel_x_b, xout => redist21_i_clfrnt_i_processfpga_processfpga2089_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer84_processfpga(BLACKBOX,185)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_localneurons_sync_buffer84_processfpga : i_syncbuf_localneurons_sync_buffer84_processfpga2087
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist13_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer84_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_clfrnt_i_processfpga_processfpga2089_add_x(ADD,85)@4
    i_clfrnt_i_processfpga_processfpga2089_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer84_processfpga_out_buffer_out);
    i_clfrnt_i_processfpga_processfpga2089_add_x_b <= STD_LOGIC_VECTOR("0" & redist21_i_clfrnt_i_processfpga_processfpga2089_trunc_sel_x_b_1_q);
    i_clfrnt_i_processfpga_processfpga2089_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfrnt_i_processfpga_processfpga2089_add_x_a) + UNSIGNED(i_clfrnt_i_processfpga_processfpga2089_add_x_b));
    i_clfrnt_i_processfpga_processfpga2089_add_x_q <= i_clfrnt_i_processfpga_processfpga2089_add_x_o(64 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_dupName_0_trunc_sel_x(BITSELECT,76)@4
    i_clfrnt_i_processfpga_processfpga2089_dupName_0_trunc_sel_x_b <= i_clfrnt_i_processfpga_processfpga2089_add_x_q(63 downto 0);

    -- redist22_i_clfrnt_i_processfpga_processfpga2089_dupName_0_trunc_sel_x_b_1(DELAY,353)
    redist22_i_clfrnt_i_processfpga_processfpga2089_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clfrnt_i_processfpga_processfpga2089_dupName_0_trunc_sel_x_b, xout => redist22_i_clfrnt_i_processfpga_processfpga2089_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_clfrnt_i_processfpga_processfpga2089_dupName_0_add_x(ADD,79)@5
    i_clfrnt_i_processfpga_processfpga2089_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist22_i_clfrnt_i_processfpga_processfpga2089_dupName_0_trunc_sel_x_b_1_q);
    i_clfrnt_i_processfpga_processfpga2089_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_clfrnt_i_processfpga_processfpga2089_c_i64_2gr_x_q);
    i_clfrnt_i_processfpga_processfpga2089_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfrnt_i_processfpga_processfpga2089_dupName_0_add_x_a) + UNSIGNED(i_clfrnt_i_processfpga_processfpga2089_dupName_0_add_x_b));
    i_clfrnt_i_processfpga_processfpga2089_dupName_0_add_x_q <= i_clfrnt_i_processfpga_processfpga2089_dupName_0_add_x_o(64 downto 0);

    -- i_clfrnt_i_processfpga_processfpga2089_dupName_1_trunc_sel_x(BITSELECT,77)@5
    i_clfrnt_i_processfpga_processfpga2089_dupName_1_trunc_sel_x_b <= i_clfrnt_i_processfpga_processfpga2089_dupName_0_add_x_q(63 downto 0);

    -- i_load_unnamed_processfpga288_processfpga(BLACKBOX,169)@5
    -- in in_i_stall@20000000
    -- out out_o_readdata@10
    -- out out_o_stall@9
    -- out out_o_valid@10
    -- out out_unnamed_processFPGA288_avm_address@20000000
    -- out out_unnamed_processFPGA288_avm_burstcount@20000000
    -- out out_unnamed_processFPGA288_avm_byteenable@20000000
    -- out out_unnamed_processFPGA288_avm_enable@20000000
    -- out out_unnamed_processFPGA288_avm_read@20000000
    -- out out_unnamed_processFPGA288_avm_write@20000000
    -- out out_unnamed_processFPGA288_avm_writedata@20000000
    thei_load_unnamed_processfpga288_processfpga : i_load_unnamed_processfpga288_processfpga2092
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_clfrnt_i_processfpga_processfpga2089_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_cmp_i2821326_phi_decision_xor644_processfpga_out_dest_data_out_190_0,
        in_i_stall => GND_q,
        in_i_valid => redist14_sync_in_aunroll_x_in_i_valid_4_q,
        in_unnamed_processFPGA288_avm_readdata => in_unnamed_processFPGA288_avm_readdata,
        in_unnamed_processFPGA288_avm_readdatavalid => in_unnamed_processFPGA288_avm_readdatavalid,
        in_unnamed_processFPGA288_avm_waitrequest => in_unnamed_processFPGA288_avm_waitrequest,
        in_unnamed_processFPGA288_avm_writeack => in_unnamed_processFPGA288_avm_writeack,
        out_o_readdata => i_load_unnamed_processfpga288_processfpga_out_o_readdata,
        out_unnamed_processFPGA288_avm_address => i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_address,
        out_unnamed_processFPGA288_avm_burstcount => i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_burstcount,
        out_unnamed_processFPGA288_avm_byteenable => i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_byteenable,
        out_unnamed_processFPGA288_avm_enable => i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_enable,
        out_unnamed_processFPGA288_avm_read => i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_read,
        out_unnamed_processFPGA288_avm_write => i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_write,
        out_unnamed_processFPGA288_avm_writedata => i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,8)
    out_unnamed_processFPGA288_avm_address <= i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_address;
    out_unnamed_processFPGA288_avm_enable <= i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_enable;
    out_unnamed_processFPGA288_avm_read <= i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_read;
    out_unnamed_processFPGA288_avm_write <= i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_write;
    out_unnamed_processFPGA288_avm_writedata <= i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_writedata;
    out_unnamed_processFPGA288_avm_byteenable <= i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_byteenable;
    out_unnamed_processFPGA288_avm_burstcount <= i_load_unnamed_processfpga288_processfpga_out_unnamed_processFPGA288_avm_burstcount;

    -- redist15_sync_in_aunroll_x_in_i_valid_7(DELAY,346)
    redist15_sync_in_aunroll_x_in_i_valid_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist14_sync_in_aunroll_x_in_i_valid_4_q, xout => redist15_sync_in_aunroll_x_in_i_valid_7_q, clk => clock, aclr => resetn );

    -- redist16_sync_in_aunroll_x_in_i_valid_8(DELAY,347)
    redist16_sync_in_aunroll_x_in_i_valid_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist15_sync_in_aunroll_x_in_i_valid_7_q, xout => redist16_sync_in_aunroll_x_in_i_valid_8_q, clk => clock, aclr => resetn );

    -- redist17_sync_in_aunroll_x_in_i_valid_9(DELAY,348)
    redist17_sync_in_aunroll_x_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist16_sync_in_aunroll_x_in_i_valid_8_q, xout => redist17_sync_in_aunroll_x_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- i_and_i_processfpga_vt_const_15(CONSTANT,136)
    i_and_i_processfpga_vt_const_15_q <= "000000";

    -- c_i16_768(CONSTANT,110)
    c_i16_768_q <= "0000001100000000";

    -- i_and_i_processfpga(LOGICAL,135)@10
    i_and_i_processfpga_q <= i_load_unnamed_processfpga288_processfpga_out_o_readdata and c_i16_768_q;

    -- i_and_i_processfpga_vt_select_9(BITSELECT,139)@10
    i_and_i_processfpga_vt_select_9_b <= i_and_i_processfpga_q(9 downto 8);

    -- c_i8_0gr(CONSTANT,119)
    c_i8_0gr_q <= "00000000";

    -- i_and_i_processfpga_vt_join(BITJOIN,138)@10
    i_and_i_processfpga_vt_join_q <= i_and_i_processfpga_vt_const_15_q & i_and_i_processfpga_vt_select_9_b & c_i8_0gr_q;

    -- i_lnot_i_processfpga(LOGICAL,166)@10
    i_lnot_i_processfpga_q <= "1" WHEN i_and_i_processfpga_vt_join_q = c_i16_0gr_q ELSE "0";

    -- i_lnot_i_xor_processfpga(LOGICAL,167)@10
    i_lnot_i_xor_processfpga_q <= i_lnot_i_processfpga_q xor VCC_q;

    -- i_ffwd_dst_cmp_i2821326_phi_decision_xor643_processfpga(BLACKBOX,151)@10
    thei_ffwd_dst_cmp_i2821326_phi_decision_xor643_processfpga : i_ffwd_dst_cmp_i2821326_phi_decision_xor643_processfpga2098
    PORT MAP (
        in_intel_reserved_ffwd_190_0 => in_intel_reserved_ffwd_190_0,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_190_0 => i_ffwd_dst_cmp_i2821326_phi_decision_xor643_processfpga_out_dest_data_out_190_0,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp_i2821326_phi_decision_xor1876_or_processfpga(LOGICAL,144)@10
    i_cmp_i2821326_phi_decision_xor1876_or_processfpga_q <= i_ffwd_dst_cmp_i2821326_phi_decision_xor643_processfpga_out_dest_data_out_190_0 or i_lnot_i_xor_processfpga_q;

    -- i_clfired_i292_processfpga_processfpga2097_c_i64_4gr_x(CONSTANT,73)
    i_clfired_i292_processfpga_processfpga2097_c_i64_4gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000100";

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_im3_shift0(BITSHIFT,306)@6
    i_clfired_i292_processfpga_processfpga2097_mult_x_im3_shift0_qint <= redist1_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c_4_outputreg_q & "0";
    i_clfired_i292_processfpga_processfpga2097_mult_x_im3_shift0_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_im3_shift0_qint(10 downto 0);

    -- redist1_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c_4(DELAY,332)
    redist1_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c_4 : dspba_delay
    GENERIC MAP ( width => 10, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c, xout => redist1_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c_4_q, clk => clock, aclr => resetn );

    -- redist1_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c_4_outputreg(DELAY,369)
    redist1_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c_4_outputreg : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c_4_q, xout => redist1_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c_4_outputreg_q, clk => clock, aclr => resetn );

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_im3_add_1(ADD,307)@6 + 1
    i_clfired_i292_processfpga_processfpga2097_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & redist1_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c_4_outputreg_q);
    i_clfired_i292_processfpga_processfpga2097_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i292_processfpga_processfpga2097_mult_x_im3_shift0_q);
    i_clfired_i292_processfpga_processfpga2097_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i292_processfpga_processfpga2097_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i292_processfpga_processfpga2097_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i292_processfpga_processfpga2097_mult_x_im3_add_1_a) + UNSIGNED(i_clfired_i292_processfpga_processfpga2097_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i292_processfpga_processfpga2097_mult_x_im3_add_1_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_im3_add_1_o(11 downto 0);

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_im3_shift2(BITSHIFT,308)@7
    i_clfired_i292_processfpga_processfpga2097_mult_x_im3_shift2_qint <= i_clfired_i292_processfpga_processfpga2097_mult_x_im3_add_1_q & "00";
    i_clfired_i292_processfpga_processfpga2097_mult_x_im3_shift2_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_im3_shift2_qint(13 downto 0);

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_align_15(BITSHIFT,251)@7
    i_clfired_i292_processfpga_processfpga2097_mult_x_align_15_qint <= i_clfired_i292_processfpga_processfpga2097_mult_x_im3_shift2_q & "00000000000000";
    i_clfired_i292_processfpga_processfpga2097_mult_x_align_15_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_align_15_qint(27 downto 0);

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_im6_shift0(BITSHIFT,309)@6
    i_clfired_i292_processfpga_processfpga2097_mult_x_im6_shift0_qint <= redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_outputreg_q & "0";
    i_clfired_i292_processfpga_processfpga2097_mult_x_im6_shift0_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_im6_shift0_qint(18 downto 0);

    -- redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_notEnable(LOGICAL,375)
    redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_nor(LOGICAL,376)
    redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_nor_q <= not (redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_notEnable_q or redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_sticky_ena_q);

    -- redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_cmpReg(REG,374)
    redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_sticky_ena(REG,377)
    redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_nor_q = "1") THEN
                redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_enaAnd(LOGICAL,378)
    redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_enaAnd_q <= redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_sticky_ena_q and VCC_q;

    -- redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_rdcnt(COUNTER,372)
    -- low=0, high=1, step=1, init=0
    redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_rdcnt_i <= redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_rdcnt_i, 1)));

    -- redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_wraddr(REG,373)
    redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_wraddr_q <= STD_LOGIC_VECTOR(redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem(DUALMEM,371)
    redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_ia <= STD_LOGIC_VECTOR(i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d);
    redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_aa <= redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_wraddr_q;
    redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_ab <= redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_rdcnt_q;
    redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_reset0 <= not (resetn);
    redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 18,
        widthad_b => 1,
        numwords_b => 2,
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
        clocken1 => redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_reset0,
        clock1 => clock,
        address_a => redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_aa,
        data_a => redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_ab,
        q_b => redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_iq
    );
    redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_q <= redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_iq(17 downto 0);

    -- redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_outputreg(DELAY,370)
    redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_mem_q, xout => redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_outputreg_q, clk => clock, aclr => resetn );

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_im6_add_1(ADD,310)@6 + 1
    i_clfired_i292_processfpga_processfpga2097_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_outputreg_q);
    i_clfired_i292_processfpga_processfpga2097_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i292_processfpga_processfpga2097_mult_x_im6_shift0_q);
    i_clfired_i292_processfpga_processfpga2097_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i292_processfpga_processfpga2097_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i292_processfpga_processfpga2097_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i292_processfpga_processfpga2097_mult_x_im6_add_1_a) + UNSIGNED(i_clfired_i292_processfpga_processfpga2097_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i292_processfpga_processfpga2097_mult_x_im6_add_1_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_im6_add_1_o(19 downto 0);

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_im6_shift2(BITSHIFT,311)@7
    i_clfired_i292_processfpga_processfpga2097_mult_x_im6_shift2_qint <= i_clfired_i292_processfpga_processfpga2097_mult_x_im6_add_1_q & "00";
    i_clfired_i292_processfpga_processfpga2097_mult_x_im6_shift2_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_im6_shift2_qint(21 downto 0);

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_align_14(BITSHIFT,250)@7
    i_clfired_i292_processfpga_processfpga2097_mult_x_align_14_qint <= i_clfired_i292_processfpga_processfpga2097_mult_x_im6_shift2_q & "000000000000000000";
    i_clfired_i292_processfpga_processfpga2097_mult_x_align_14_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_align_14_qint(39 downto 0);

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_join_16(BITJOIN,252)@7
    i_clfired_i292_processfpga_processfpga2097_mult_x_join_16_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_align_15_q & i_clfired_i292_processfpga_processfpga2097_mult_x_align_14_q;

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_im9_shift0(BITSHIFT,312)@6
    i_clfired_i292_processfpga_processfpga2097_mult_x_im9_shift0_qint <= redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_outputreg_q & "0";
    i_clfired_i292_processfpga_processfpga2097_mult_x_im9_shift0_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_im9_shift0_qint(18 downto 0);

    -- redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_notEnable(LOGICAL,384)
    redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_nor(LOGICAL,385)
    redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_nor_q <= not (redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_notEnable_q or redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_sticky_ena_q);

    -- redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_cmpReg(REG,383)
    redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_sticky_ena(REG,386)
    redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_nor_q = "1") THEN
                redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_enaAnd(LOGICAL,387)
    redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_enaAnd_q <= redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_sticky_ena_q and VCC_q;

    -- redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_rdcnt(COUNTER,381)
    -- low=0, high=1, step=1, init=0
    redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_rdcnt_i <= redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_rdcnt_i, 1)));

    -- redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_wraddr(REG,382)
    redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_wraddr_q <= STD_LOGIC_VECTOR(redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem(DUALMEM,380)
    redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_ia <= STD_LOGIC_VECTOR(i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e);
    redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_aa <= redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_wraddr_q;
    redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_ab <= redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_rdcnt_q;
    redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_reset0 <= not (resetn);
    redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 18,
        widthad_b => 1,
        numwords_b => 2,
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
        clocken1 => redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_reset0,
        clock1 => clock,
        address_a => redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_aa,
        data_a => redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_ab,
        q_b => redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_iq
    );
    redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_q <= redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_iq(17 downto 0);

    -- redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_outputreg(DELAY,379)
    redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_mem_q, xout => redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_outputreg_q, clk => clock, aclr => resetn );

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_im9_add_1(ADD,313)@6 + 1
    i_clfired_i292_processfpga_processfpga2097_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_outputreg_q);
    i_clfired_i292_processfpga_processfpga2097_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i292_processfpga_processfpga2097_mult_x_im9_shift0_q);
    i_clfired_i292_processfpga_processfpga2097_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i292_processfpga_processfpga2097_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i292_processfpga_processfpga2097_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i292_processfpga_processfpga2097_mult_x_im9_add_1_a) + UNSIGNED(i_clfired_i292_processfpga_processfpga2097_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i292_processfpga_processfpga2097_mult_x_im9_add_1_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_im9_add_1_o(19 downto 0);

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_im9_shift2(BITSHIFT,314)@7
    i_clfired_i292_processfpga_processfpga2097_mult_x_im9_shift2_qint <= i_clfired_i292_processfpga_processfpga2097_mult_x_im9_add_1_q & "00";
    i_clfired_i292_processfpga_processfpga2097_mult_x_im9_shift2_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_im9_shift2_qint(21 downto 0);

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_align_12(BITSHIFT,248)@7
    i_clfired_i292_processfpga_processfpga2097_mult_x_align_12_qint <= i_clfired_i292_processfpga_processfpga2097_mult_x_im9_shift2_q & "00000000000000";
    i_clfired_i292_processfpga_processfpga2097_mult_x_align_12_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_align_12_qint(35 downto 0);

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_im0_shift0(BITSHIFT,303)@6
    i_clfired_i292_processfpga_processfpga2097_mult_x_im0_shift0_qint <= redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_outputreg_q & "0";
    i_clfired_i292_processfpga_processfpga2097_mult_x_im0_shift0_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_im0_shift0_qint(18 downto 0);

    -- redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_notEnable(LOGICAL,365)
    redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_nor(LOGICAL,366)
    redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_nor_q <= not (redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_notEnable_q or redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_sticky_ena_q);

    -- redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_cmpReg(REG,364)
    redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_sticky_ena(REG,367)
    redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_nor_q = "1") THEN
                redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_enaAnd(LOGICAL,368)
    redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_enaAnd_q <= redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_sticky_ena_q and VCC_q;

    -- redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_rdcnt(COUNTER,362)
    -- low=0, high=1, step=1, init=0
    redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_rdcnt_i <= redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_rdcnt_i, 1)));

    -- redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_wraddr(REG,363)
    redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_wraddr_q <= STD_LOGIC_VECTOR(redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem(DUALMEM,361)
    redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_ia <= STD_LOGIC_VECTOR(i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b);
    redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_aa <= redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_wraddr_q;
    redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_ab <= redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_rdcnt_q;
    redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_reset0 <= not (resetn);
    redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 18,
        widthad_b => 1,
        numwords_b => 2,
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
        clocken1 => redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_reset0,
        clock1 => clock,
        address_a => redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_aa,
        data_a => redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_ab,
        q_b => redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_iq
    );
    redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_q <= redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_iq(17 downto 0);

    -- redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_outputreg(DELAY,360)
    redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_mem_q, xout => redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_outputreg_q, clk => clock, aclr => resetn );

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_im0_add_1(ADD,304)@6 + 1
    i_clfired_i292_processfpga_processfpga2097_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_outputreg_q);
    i_clfired_i292_processfpga_processfpga2097_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i292_processfpga_processfpga2097_mult_x_im0_shift0_q);
    i_clfired_i292_processfpga_processfpga2097_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i292_processfpga_processfpga2097_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i292_processfpga_processfpga2097_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i292_processfpga_processfpga2097_mult_x_im0_add_1_a) + UNSIGNED(i_clfired_i292_processfpga_processfpga2097_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i292_processfpga_processfpga2097_mult_x_im0_add_1_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_im0_add_1_o(19 downto 0);

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_im0_shift2(BITSHIFT,305)@7
    i_clfired_i292_processfpga_processfpga2097_mult_x_im0_shift2_qint <= i_clfired_i292_processfpga_processfpga2097_mult_x_im0_add_1_q & "00";
    i_clfired_i292_processfpga_processfpga2097_mult_x_im0_shift2_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_im0_shift2_qint(21 downto 0);

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_join_13(BITJOIN,249)@7
    i_clfired_i292_processfpga_processfpga2097_mult_x_join_13_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_align_12_q & i_clfired_i292_processfpga_processfpga2097_mult_x_im0_shift2_q;

    -- i_clfired_i292_processfpga_processfpga2097_mult_x_result_add_0_0(ADD,253)@7
    i_clfired_i292_processfpga_processfpga2097_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_clfired_i292_processfpga_processfpga2097_mult_x_join_13_q);
    i_clfired_i292_processfpga_processfpga2097_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_clfired_i292_processfpga_processfpga2097_mult_x_join_16_q);
    i_clfired_i292_processfpga_processfpga2097_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i292_processfpga_processfpga2097_mult_x_result_add_0_0_a) + UNSIGNED(i_clfired_i292_processfpga_processfpga2097_mult_x_result_add_0_0_b));
    i_clfired_i292_processfpga_processfpga2097_mult_x_result_add_0_0_q <= i_clfired_i292_processfpga_processfpga2097_mult_x_result_add_0_0_o(68 downto 0);

    -- i_clfired_i292_processfpga_processfpga2097_mult_extender_x(BITJOIN,68)@7
    i_clfired_i292_processfpga_processfpga2097_mult_extender_x_q <= i_clexc_i_processfpga_processfpga2105_mult_multconst_x_q & i_clfired_i292_processfpga_processfpga2097_mult_x_result_add_0_0_q(67 downto 0);

    -- i_clfired_i292_processfpga_processfpga2097_trunc_sel_x(BITSELECT,70)@7
    i_clfired_i292_processfpga_processfpga2097_trunc_sel_x_b <= i_clfired_i292_processfpga_processfpga2097_mult_extender_x_q(63 downto 0);

    -- redist23_i_clfired_i292_processfpga_processfpga2097_trunc_sel_x_b_2(DELAY,354)
    redist23_i_clfired_i292_processfpga_processfpga2097_trunc_sel_x_b_2 : dspba_delay
    GENERIC MAP ( width => 64, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clfired_i292_processfpga_processfpga2097_trunc_sel_x_b, xout => redist23_i_clfired_i292_processfpga_processfpga2097_trunc_sel_x_b_2_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer83_processfpga(BLACKBOX,184)@0
    -- in in_i_dependence@9
    -- in in_valid_in@9
    -- out out_buffer_out@9
    -- out out_valid_out@9
    thei_syncbuf_localneurons_sync_buffer83_processfpga : i_syncbuf_localneurons_sync_buffer83_processfpga2095
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist16_sync_in_aunroll_x_in_i_valid_8_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer83_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_clfired_i292_processfpga_processfpga2097_add_x(ADD,71)@9
    i_clfired_i292_processfpga_processfpga2097_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer83_processfpga_out_buffer_out);
    i_clfired_i292_processfpga_processfpga2097_add_x_b <= STD_LOGIC_VECTOR("0" & redist23_i_clfired_i292_processfpga_processfpga2097_trunc_sel_x_b_2_q);
    i_clfired_i292_processfpga_processfpga2097_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i292_processfpga_processfpga2097_add_x_a) + UNSIGNED(i_clfired_i292_processfpga_processfpga2097_add_x_b));
    i_clfired_i292_processfpga_processfpga2097_add_x_q <= i_clfired_i292_processfpga_processfpga2097_add_x_o(64 downto 0);

    -- i_clfired_i292_processfpga_processfpga2097_dupName_0_trunc_sel_x(BITSELECT,62)@9
    i_clfired_i292_processfpga_processfpga2097_dupName_0_trunc_sel_x_b <= i_clfired_i292_processfpga_processfpga2097_add_x_q(63 downto 0);

    -- redist24_i_clfired_i292_processfpga_processfpga2097_dupName_0_trunc_sel_x_b_1(DELAY,355)
    redist24_i_clfired_i292_processfpga_processfpga2097_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clfired_i292_processfpga_processfpga2097_dupName_0_trunc_sel_x_b, xout => redist24_i_clfired_i292_processfpga_processfpga2097_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_clfired_i292_processfpga_processfpga2097_dupName_0_add_x(ADD,65)@10
    i_clfired_i292_processfpga_processfpga2097_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist24_i_clfired_i292_processfpga_processfpga2097_dupName_0_trunc_sel_x_b_1_q);
    i_clfired_i292_processfpga_processfpga2097_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_clfired_i292_processfpga_processfpga2097_c_i64_4gr_x_q);
    i_clfired_i292_processfpga_processfpga2097_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i292_processfpga_processfpga2097_dupName_0_add_x_a) + UNSIGNED(i_clfired_i292_processfpga_processfpga2097_dupName_0_add_x_b));
    i_clfired_i292_processfpga_processfpga2097_dupName_0_add_x_q <= i_clfired_i292_processfpga_processfpga2097_dupName_0_add_x_o(64 downto 0);

    -- i_clfired_i292_processfpga_processfpga2097_dupName_1_trunc_sel_x(BITSELECT,63)@10
    i_clfired_i292_processfpga_processfpga2097_dupName_1_trunc_sel_x_b <= i_clfired_i292_processfpga_processfpga2097_dupName_0_add_x_q(63 downto 0);

    -- i_load_unnamed_processfpga289_processfpga(BLACKBOX,170)@10
    -- in in_i_stall@20000000
    -- out out_o_readdata@15
    -- out out_o_stall@14
    -- out out_o_valid@15
    -- out out_unnamed_processFPGA289_avm_address@20000000
    -- out out_unnamed_processFPGA289_avm_burstcount@20000000
    -- out out_unnamed_processFPGA289_avm_byteenable@20000000
    -- out out_unnamed_processFPGA289_avm_enable@20000000
    -- out out_unnamed_processFPGA289_avm_read@20000000
    -- out out_unnamed_processFPGA289_avm_write@20000000
    -- out out_unnamed_processFPGA289_avm_writedata@20000000
    thei_load_unnamed_processfpga289_processfpga : i_load_unnamed_processfpga289_processfpga2100
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_clfired_i292_processfpga_processfpga2097_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_cmp_i2821326_phi_decision_xor1876_or_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist17_sync_in_aunroll_x_in_i_valid_9_q,
        in_unnamed_processFPGA289_avm_readdata => in_unnamed_processFPGA289_avm_readdata,
        in_unnamed_processFPGA289_avm_readdatavalid => in_unnamed_processFPGA289_avm_readdatavalid,
        in_unnamed_processFPGA289_avm_waitrequest => in_unnamed_processFPGA289_avm_waitrequest,
        in_unnamed_processFPGA289_avm_writeack => in_unnamed_processFPGA289_avm_writeack,
        out_o_readdata => i_load_unnamed_processfpga289_processfpga_out_o_readdata,
        out_unnamed_processFPGA289_avm_address => i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_address,
        out_unnamed_processFPGA289_avm_burstcount => i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_burstcount,
        out_unnamed_processFPGA289_avm_byteenable => i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_byteenable,
        out_unnamed_processFPGA289_avm_enable => i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_enable,
        out_unnamed_processFPGA289_avm_read => i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_read,
        out_unnamed_processFPGA289_avm_write => i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_write,
        out_unnamed_processFPGA289_avm_writedata => i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_1_ext_sig_sync_out_x(GPOUT,11)
    out_unnamed_processFPGA289_avm_address <= i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_address;
    out_unnamed_processFPGA289_avm_enable <= i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_enable;
    out_unnamed_processFPGA289_avm_read <= i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_read;
    out_unnamed_processFPGA289_avm_write <= i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_write;
    out_unnamed_processFPGA289_avm_writedata <= i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_writedata;
    out_unnamed_processFPGA289_avm_byteenable <= i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_byteenable;
    out_unnamed_processFPGA289_avm_burstcount <= i_load_unnamed_processfpga289_processfpga_out_unnamed_processFPGA289_avm_burstcount;

    -- i_normls_gep564_processfpga_processfpga2106_c_i64_1gr_x(CONSTANT,94)
    i_normls_gep564_processfpga_processfpga2106_c_i64_1gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000001";

    -- i_clexc_i_processfpga_processfpga2105_c_i64_9gr_x(CONSTANT,59)
    i_clexc_i_processfpga_processfpga2105_c_i64_9gr_x_q <= "0000000000000000000000000000000000000000000000000000000000001001";

    -- i_clexc_i_processfpga_processfpga2105_mult_x_im3_shift0(BITSHIFT,294)@6
    i_clexc_i_processfpga_processfpga2105_mult_x_im3_shift0_qint <= redist1_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c_4_outputreg_q & "0";
    i_clexc_i_processfpga_processfpga2105_mult_x_im3_shift0_q <= i_clexc_i_processfpga_processfpga2105_mult_x_im3_shift0_qint(10 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_x_im3_add_1(ADD,295)@6 + 1
    i_clexc_i_processfpga_processfpga2105_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & redist1_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_c_4_outputreg_q);
    i_clexc_i_processfpga_processfpga2105_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_clexc_i_processfpga_processfpga2105_mult_x_im3_shift0_q);
    i_clexc_i_processfpga_processfpga2105_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clexc_i_processfpga_processfpga2105_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clexc_i_processfpga_processfpga2105_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clexc_i_processfpga_processfpga2105_mult_x_im3_add_1_a) + UNSIGNED(i_clexc_i_processfpga_processfpga2105_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_clexc_i_processfpga_processfpga2105_mult_x_im3_add_1_q <= i_clexc_i_processfpga_processfpga2105_mult_x_im3_add_1_o(11 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_x_im3_shift2(BITSHIFT,296)@7
    i_clexc_i_processfpga_processfpga2105_mult_x_im3_shift2_qint <= i_clexc_i_processfpga_processfpga2105_mult_x_im3_add_1_q & "00";
    i_clexc_i_processfpga_processfpga2105_mult_x_im3_shift2_q <= i_clexc_i_processfpga_processfpga2105_mult_x_im3_shift2_qint(13 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_x_align_15(BITSHIFT,233)@7
    i_clexc_i_processfpga_processfpga2105_mult_x_align_15_qint <= i_clexc_i_processfpga_processfpga2105_mult_x_im3_shift2_q & "00000000000000";
    i_clexc_i_processfpga_processfpga2105_mult_x_align_15_q <= i_clexc_i_processfpga_processfpga2105_mult_x_align_15_qint(27 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_x_im6_shift0(BITSHIFT,297)@6
    i_clexc_i_processfpga_processfpga2105_mult_x_im6_shift0_qint <= redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_outputreg_q & "0";
    i_clexc_i_processfpga_processfpga2105_mult_x_im6_shift0_q <= i_clexc_i_processfpga_processfpga2105_mult_x_im6_shift0_qint(18 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_x_im6_add_1(ADD,298)@6 + 1
    i_clexc_i_processfpga_processfpga2105_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & redist2_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_d_4_outputreg_q);
    i_clexc_i_processfpga_processfpga2105_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_clexc_i_processfpga_processfpga2105_mult_x_im6_shift0_q);
    i_clexc_i_processfpga_processfpga2105_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clexc_i_processfpga_processfpga2105_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clexc_i_processfpga_processfpga2105_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clexc_i_processfpga_processfpga2105_mult_x_im6_add_1_a) + UNSIGNED(i_clexc_i_processfpga_processfpga2105_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_clexc_i_processfpga_processfpga2105_mult_x_im6_add_1_q <= i_clexc_i_processfpga_processfpga2105_mult_x_im6_add_1_o(19 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_x_im6_shift2(BITSHIFT,299)@7
    i_clexc_i_processfpga_processfpga2105_mult_x_im6_shift2_qint <= i_clexc_i_processfpga_processfpga2105_mult_x_im6_add_1_q & "00";
    i_clexc_i_processfpga_processfpga2105_mult_x_im6_shift2_q <= i_clexc_i_processfpga_processfpga2105_mult_x_im6_shift2_qint(21 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_x_align_14(BITSHIFT,232)@7
    i_clexc_i_processfpga_processfpga2105_mult_x_align_14_qint <= i_clexc_i_processfpga_processfpga2105_mult_x_im6_shift2_q & "000000000000000000";
    i_clexc_i_processfpga_processfpga2105_mult_x_align_14_q <= i_clexc_i_processfpga_processfpga2105_mult_x_align_14_qint(39 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_x_join_16(BITJOIN,234)@7
    i_clexc_i_processfpga_processfpga2105_mult_x_join_16_q <= i_clexc_i_processfpga_processfpga2105_mult_x_align_15_q & i_clexc_i_processfpga_processfpga2105_mult_x_align_14_q;

    -- i_clexc_i_processfpga_processfpga2105_mult_x_im9_shift0(BITSHIFT,300)@6
    i_clexc_i_processfpga_processfpga2105_mult_x_im9_shift0_qint <= redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_outputreg_q & "0";
    i_clexc_i_processfpga_processfpga2105_mult_x_im9_shift0_q <= i_clexc_i_processfpga_processfpga2105_mult_x_im9_shift0_qint(18 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_x_im9_add_1(ADD,301)@6 + 1
    i_clexc_i_processfpga_processfpga2105_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & redist3_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_e_4_outputreg_q);
    i_clexc_i_processfpga_processfpga2105_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_clexc_i_processfpga_processfpga2105_mult_x_im9_shift0_q);
    i_clexc_i_processfpga_processfpga2105_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clexc_i_processfpga_processfpga2105_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clexc_i_processfpga_processfpga2105_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clexc_i_processfpga_processfpga2105_mult_x_im9_add_1_a) + UNSIGNED(i_clexc_i_processfpga_processfpga2105_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_clexc_i_processfpga_processfpga2105_mult_x_im9_add_1_q <= i_clexc_i_processfpga_processfpga2105_mult_x_im9_add_1_o(19 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_x_im9_shift2(BITSHIFT,302)@7
    i_clexc_i_processfpga_processfpga2105_mult_x_im9_shift2_qint <= i_clexc_i_processfpga_processfpga2105_mult_x_im9_add_1_q & "00";
    i_clexc_i_processfpga_processfpga2105_mult_x_im9_shift2_q <= i_clexc_i_processfpga_processfpga2105_mult_x_im9_shift2_qint(21 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_x_align_12(BITSHIFT,230)@7
    i_clexc_i_processfpga_processfpga2105_mult_x_align_12_qint <= i_clexc_i_processfpga_processfpga2105_mult_x_im9_shift2_q & "00000000000000";
    i_clexc_i_processfpga_processfpga2105_mult_x_align_12_q <= i_clexc_i_processfpga_processfpga2105_mult_x_align_12_qint(35 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_x_im0_shift0(BITSHIFT,291)@6
    i_clexc_i_processfpga_processfpga2105_mult_x_im0_shift0_qint <= redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_outputreg_q & "0";
    i_clexc_i_processfpga_processfpga2105_mult_x_im0_shift0_q <= i_clexc_i_processfpga_processfpga2105_mult_x_im0_shift0_qint(18 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_x_im0_add_1(ADD,292)@6 + 1
    i_clexc_i_processfpga_processfpga2105_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & redist0_i_clexc_i_processfpga_processfpga2105_mult_x_bs1_merged_bit_select_b_4_outputreg_q);
    i_clexc_i_processfpga_processfpga2105_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_clexc_i_processfpga_processfpga2105_mult_x_im0_shift0_q);
    i_clexc_i_processfpga_processfpga2105_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clexc_i_processfpga_processfpga2105_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clexc_i_processfpga_processfpga2105_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clexc_i_processfpga_processfpga2105_mult_x_im0_add_1_a) + UNSIGNED(i_clexc_i_processfpga_processfpga2105_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_clexc_i_processfpga_processfpga2105_mult_x_im0_add_1_q <= i_clexc_i_processfpga_processfpga2105_mult_x_im0_add_1_o(19 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_x_im0_shift2(BITSHIFT,293)@7
    i_clexc_i_processfpga_processfpga2105_mult_x_im0_shift2_qint <= i_clexc_i_processfpga_processfpga2105_mult_x_im0_add_1_q & "00";
    i_clexc_i_processfpga_processfpga2105_mult_x_im0_shift2_q <= i_clexc_i_processfpga_processfpga2105_mult_x_im0_shift2_qint(21 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_x_join_13(BITJOIN,231)@7
    i_clexc_i_processfpga_processfpga2105_mult_x_join_13_q <= i_clexc_i_processfpga_processfpga2105_mult_x_align_12_q & i_clexc_i_processfpga_processfpga2105_mult_x_im0_shift2_q;

    -- i_clexc_i_processfpga_processfpga2105_mult_x_result_add_0_0(ADD,235)@7
    i_clexc_i_processfpga_processfpga2105_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_clexc_i_processfpga_processfpga2105_mult_x_join_13_q);
    i_clexc_i_processfpga_processfpga2105_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_clexc_i_processfpga_processfpga2105_mult_x_join_16_q);
    i_clexc_i_processfpga_processfpga2105_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clexc_i_processfpga_processfpga2105_mult_x_result_add_0_0_a) + UNSIGNED(i_clexc_i_processfpga_processfpga2105_mult_x_result_add_0_0_b));
    i_clexc_i_processfpga_processfpga2105_mult_x_result_add_0_0_q <= i_clexc_i_processfpga_processfpga2105_mult_x_result_add_0_0_o(68 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_mult_extender_x(BITJOIN,54)@7
    i_clexc_i_processfpga_processfpga2105_mult_extender_x_q <= i_clexc_i_processfpga_processfpga2105_mult_multconst_x_q & i_clexc_i_processfpga_processfpga2105_mult_x_result_add_0_0_q(67 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_trunc_sel_x(BITSELECT,56)@7
    i_clexc_i_processfpga_processfpga2105_trunc_sel_x_b <= i_clexc_i_processfpga_processfpga2105_mult_extender_x_q(63 downto 0);

    -- redist25_i_clexc_i_processfpga_processfpga2105_trunc_sel_x_b_1(DELAY,356)
    redist25_i_clexc_i_processfpga_processfpga2105_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clexc_i_processfpga_processfpga2105_trunc_sel_x_b, xout => redist25_i_clexc_i_processfpga_processfpga2105_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer82_processfpga(BLACKBOX,183)@0
    -- in in_i_dependence@8
    -- in in_valid_in@8
    -- out out_buffer_out@8
    -- out out_valid_out@8
    thei_syncbuf_localneurons_sync_buffer82_processfpga : i_syncbuf_localneurons_sync_buffer82_processfpga2103
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist15_sync_in_aunroll_x_in_i_valid_7_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer82_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_clexc_i_processfpga_processfpga2105_add_x(ADD,57)@8
    i_clexc_i_processfpga_processfpga2105_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer82_processfpga_out_buffer_out);
    i_clexc_i_processfpga_processfpga2105_add_x_b <= STD_LOGIC_VECTOR("0" & redist25_i_clexc_i_processfpga_processfpga2105_trunc_sel_x_b_1_q);
    i_clexc_i_processfpga_processfpga2105_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clexc_i_processfpga_processfpga2105_add_x_a) + UNSIGNED(i_clexc_i_processfpga_processfpga2105_add_x_b));
    i_clexc_i_processfpga_processfpga2105_add_x_q <= i_clexc_i_processfpga_processfpga2105_add_x_o(64 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_dupName_0_trunc_sel_x(BITSELECT,48)@8
    i_clexc_i_processfpga_processfpga2105_dupName_0_trunc_sel_x_b <= i_clexc_i_processfpga_processfpga2105_add_x_q(63 downto 0);

    -- redist27_i_clexc_i_processfpga_processfpga2105_dupName_0_trunc_sel_x_b_1(DELAY,358)
    redist27_i_clexc_i_processfpga_processfpga2105_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clexc_i_processfpga_processfpga2105_dupName_0_trunc_sel_x_b, xout => redist27_i_clexc_i_processfpga_processfpga2105_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_clexc_i_processfpga_processfpga2105_dupName_0_add_x(ADD,51)@9
    i_clexc_i_processfpga_processfpga2105_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist27_i_clexc_i_processfpga_processfpga2105_dupName_0_trunc_sel_x_b_1_q);
    i_clexc_i_processfpga_processfpga2105_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_clexc_i_processfpga_processfpga2105_c_i64_9gr_x_q);
    i_clexc_i_processfpga_processfpga2105_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clexc_i_processfpga_processfpga2105_dupName_0_add_x_a) + UNSIGNED(i_clexc_i_processfpga_processfpga2105_dupName_0_add_x_b));
    i_clexc_i_processfpga_processfpga2105_dupName_0_add_x_q <= i_clexc_i_processfpga_processfpga2105_dupName_0_add_x_o(64 downto 0);

    -- i_clexc_i_processfpga_processfpga2105_dupName_1_trunc_sel_x(BITSELECT,49)@9
    i_clexc_i_processfpga_processfpga2105_dupName_1_trunc_sel_x_b <= i_clexc_i_processfpga_processfpga2105_dupName_0_add_x_q(63 downto 0);

    -- redist26_i_clexc_i_processfpga_processfpga2105_dupName_1_trunc_sel_x_b_1(DELAY,357)
    redist26_i_clexc_i_processfpga_processfpga2105_dupName_1_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clexc_i_processfpga_processfpga2105_dupName_1_trunc_sel_x_b, xout => redist26_i_clexc_i_processfpga_processfpga2105_dupName_1_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_normls_gep564_processfpga_processfpga2106_add_x(ADD,93)@10
    i_normls_gep564_processfpga_processfpga2106_add_x_a <= STD_LOGIC_VECTOR("0" & redist26_i_clexc_i_processfpga_processfpga2105_dupName_1_trunc_sel_x_b_1_q);
    i_normls_gep564_processfpga_processfpga2106_add_x_b <= STD_LOGIC_VECTOR("0" & i_normls_gep564_processfpga_processfpga2106_c_i64_1gr_x_q);
    i_normls_gep564_processfpga_processfpga2106_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep564_processfpga_processfpga2106_add_x_a) + UNSIGNED(i_normls_gep564_processfpga_processfpga2106_add_x_b));
    i_normls_gep564_processfpga_processfpga2106_add_x_q <= i_normls_gep564_processfpga_processfpga2106_add_x_o(64 downto 0);

    -- i_normls_gep564_processfpga_processfpga2106_trunc_sel_x(BITSELECT,92)@10
    i_normls_gep564_processfpga_processfpga2106_trunc_sel_x_b <= i_normls_gep564_processfpga_processfpga2106_add_x_q(63 downto 0);

    -- i_load_normls_load565_processfpga(BLACKBOX,168)@10
    -- in in_i_stall@20000000
    -- out out_normls_load565_avm_address@20000000
    -- out out_normls_load565_avm_burstcount@20000000
    -- out out_normls_load565_avm_byteenable@20000000
    -- out out_normls_load565_avm_enable@20000000
    -- out out_normls_load565_avm_read@20000000
    -- out out_normls_load565_avm_write@20000000
    -- out out_normls_load565_avm_writedata@20000000
    -- out out_o_readdata@15
    -- out out_o_stall@14
    -- out out_o_valid@15
    thei_load_normls_load565_processfpga : i_load_normls_load565_processfpga2107
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_normls_gep564_processfpga_processfpga2106_trunc_sel_x_b,
        in_i_predicate => i_cmp_i2821326_phi_decision_xor1876_or_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist17_sync_in_aunroll_x_in_i_valid_9_q,
        in_normls_load565_avm_readdata => in_normls_load565_avm_readdata,
        in_normls_load565_avm_readdatavalid => in_normls_load565_avm_readdatavalid,
        in_normls_load565_avm_waitrequest => in_normls_load565_avm_waitrequest,
        in_normls_load565_avm_writeack => in_normls_load565_avm_writeack,
        out_normls_load565_avm_address => i_load_normls_load565_processfpga_out_normls_load565_avm_address,
        out_normls_load565_avm_burstcount => i_load_normls_load565_processfpga_out_normls_load565_avm_burstcount,
        out_normls_load565_avm_byteenable => i_load_normls_load565_processfpga_out_normls_load565_avm_byteenable,
        out_normls_load565_avm_enable => i_load_normls_load565_processfpga_out_normls_load565_avm_enable,
        out_normls_load565_avm_read => i_load_normls_load565_processfpga_out_normls_load565_avm_read,
        out_normls_load565_avm_write => i_load_normls_load565_processfpga_out_normls_load565_avm_write,
        out_normls_load565_avm_writedata => i_load_normls_load565_processfpga_out_normls_load565_avm_writedata,
        out_o_readdata => i_load_normls_load565_processfpga_out_o_readdata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_2_ext_sig_sync_out_x(GPOUT,14)
    out_normls_load565_avm_address <= i_load_normls_load565_processfpga_out_normls_load565_avm_address;
    out_normls_load565_avm_enable <= i_load_normls_load565_processfpga_out_normls_load565_avm_enable;
    out_normls_load565_avm_read <= i_load_normls_load565_processfpga_out_normls_load565_avm_read;
    out_normls_load565_avm_write <= i_load_normls_load565_processfpga_out_normls_load565_avm_write;
    out_normls_load565_avm_writedata <= i_load_normls_load565_processfpga_out_normls_load565_avm_writedata;
    out_normls_load565_avm_byteenable <= i_load_normls_load565_processfpga_out_normls_load565_avm_byteenable;
    out_normls_load565_avm_burstcount <= i_load_normls_load565_processfpga_out_normls_load565_avm_burstcount;

    -- redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_notEnable(LOGICAL,394)
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_nor(LOGICAL,395)
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_nor_q <= not (redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_notEnable_q or redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_sticky_ena_q);

    -- redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_last(CONSTANT,391)
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_last_q <= "01100";

    -- redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_cmp(LOGICAL,392)
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_cmp_b <= STD_LOGIC_VECTOR("0" & redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_q);
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_cmp_q <= "1" WHEN redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_last_q = redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_cmp_b ELSE "0";

    -- redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_cmpReg(REG,393)
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_cmpReg_q <= STD_LOGIC_VECTOR(redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_cmp_q);
        END IF;
    END PROCESS;

    -- redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_sticky_ena(REG,396)
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_nor_q = "1") THEN
                redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_sticky_ena_q <= STD_LOGIC_VECTOR(redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_enaAnd(LOGICAL,397)
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_enaAnd_q <= redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_sticky_ena_q and VCC_q;

    -- redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt(COUNTER,389)
    -- low=0, high=13, step=1, init=0
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_i = TO_UNSIGNED(12, 4)) THEN
                redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_eq <= '1';
            ELSE
                redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_eq <= '0';
            END IF;
            IF (redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_eq = '1') THEN
                redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_i <= redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_i + 3;
            ELSE
                redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_i <= redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_i, 4)));

    -- redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_wraddr(REG,390)
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_wraddr_q <= "1101";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_wraddr_q <= STD_LOGIC_VECTOR(redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem(DUALMEM,388)
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_ia <= STD_LOGIC_VECTOR(i_idx_0_i2791328_replace_phi_processfpga_q);
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_aa <= redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_wraddr_q;
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_ab <= redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_rdcnt_q;
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_reset0 <= not (resetn);
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 4,
        numwords_a => 14,
        width_b => 16,
        widthad_b => 4,
        numwords_b => 14,
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
        clocken1 => redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_reset0,
        clock1 => clock,
        address_a => redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_aa,
        data_a => redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_ab,
        q_b => redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_iq
    );
    redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_q <= redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_iq(15 downto 0);

    -- redist18_sync_in_aunroll_x_in_i_valid_15(DELAY,349)
    redist18_sync_in_aunroll_x_in_i_valid_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist17_sync_in_aunroll_x_in_i_valid_9_q, xout => redist18_sync_in_aunroll_x_in_i_valid_15_q, clk => clock, aclr => resetn );

    -- redist19_sync_in_aunroll_x_in_i_valid_16(DELAY,350)
    redist19_sync_in_aunroll_x_in_i_valid_16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist18_sync_in_aunroll_x_in_i_valid_15_q, xout => redist19_sync_in_aunroll_x_in_i_valid_16_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_cmp_i2821326641_processfpga(BLACKBOX,149)@16
    thei_ffwd_dst_cmp_i2821326641_processfpga : i_ffwd_dst_cmp_i2821326641_processfpga2114
    PORT MAP (
        in_intel_reserved_ffwd_189_0 => in_intel_reserved_ffwd_189_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_15_q,
        out_dest_data_out_189_0 => i_ffwd_dst_cmp_i2821326641_processfpga_out_dest_data_out_189_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i16_256(CONSTANT,109)
    c_i16_256_q <= "0000000100000000";

    -- leftShiftStage0Idx1Rng8_uid277_i_normls_shl567_processfpga_processfpga2109_shift_x(BITSELECT,276)@15
    leftShiftStage0Idx1Rng8_uid277_i_normls_shl567_processfpga_processfpga2109_shift_x_in <= i_normls_zext566_processfpga_vt_join_q(7 downto 0);
    leftShiftStage0Idx1Rng8_uid277_i_normls_shl567_processfpga_processfpga2109_shift_x_b <= leftShiftStage0Idx1Rng8_uid277_i_normls_shl567_processfpga_processfpga2109_shift_x_in(7 downto 0);

    -- leftShiftStage0Idx1_uid278_i_normls_shl567_processfpga_processfpga2109_shift_x(BITJOIN,277)@15
    leftShiftStage0Idx1_uid278_i_normls_shl567_processfpga_processfpga2109_shift_x_q <= leftShiftStage0Idx1Rng8_uid277_i_normls_shl567_processfpga_processfpga2109_shift_x_b & c_i8_0gr_q;

    -- i_normls_zext566_processfpga_sel_x(BITSELECT,100)@15
    i_normls_zext566_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(i_load_normls_load565_processfpga_out_o_readdata(7 downto 0)), 16));

    -- i_normls_zext566_processfpga_vt_select_7(BITSELECT,178)@15
    i_normls_zext566_processfpga_vt_select_7_b <= i_normls_zext566_processfpga_sel_x_b(7 downto 0);

    -- i_normls_zext566_processfpga_vt_join(BITJOIN,177)@15
    i_normls_zext566_processfpga_vt_join_q <= c_i8_0gr_q & i_normls_zext566_processfpga_vt_select_7_b;

    -- leftShiftStage0_uid280_i_normls_shl567_processfpga_processfpga2109_shift_x(MUX,279)@15
    leftShiftStage0_uid280_i_normls_shl567_processfpga_processfpga2109_shift_x_s <= VCC_q;
    leftShiftStage0_uid280_i_normls_shl567_processfpga_processfpga2109_shift_x_combproc: PROCESS (leftShiftStage0_uid280_i_normls_shl567_processfpga_processfpga2109_shift_x_s, i_normls_zext566_processfpga_vt_join_q, leftShiftStage0Idx1_uid278_i_normls_shl567_processfpga_processfpga2109_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid280_i_normls_shl567_processfpga_processfpga2109_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid280_i_normls_shl567_processfpga_processfpga2109_shift_x_q <= i_normls_zext566_processfpga_vt_join_q;
            WHEN "1" => leftShiftStage0_uid280_i_normls_shl567_processfpga_processfpga2109_shift_x_q <= leftShiftStage0Idx1_uid278_i_normls_shl567_processfpga_processfpga2109_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid280_i_normls_shl567_processfpga_processfpga2109_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_normls_shl567_processfpga_vt_select_15(BITSELECT,174)@15
    i_normls_shl567_processfpga_vt_select_15_b <= leftShiftStage0_uid280_i_normls_shl567_processfpga_processfpga2109_shift_x_q(15 downto 8);

    -- i_normls_shl567_processfpga_vt_join(BITJOIN,173)@15
    i_normls_shl567_processfpga_vt_join_q <= i_normls_shl567_processfpga_vt_select_15_b & c_i8_0gr_q;

    -- i_notlhs_processfpga(COMPARE,180)@15 + 1
    i_notlhs_processfpga_a <= STD_LOGIC_VECTOR("00" & i_normls_shl567_processfpga_vt_join_q);
    i_notlhs_processfpga_b <= STD_LOGIC_VECTOR("00" & c_i16_256_q);
    i_notlhs_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_notlhs_processfpga_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_notlhs_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_notlhs_processfpga_a) - UNSIGNED(i_notlhs_processfpga_b));
        END IF;
    END PROCESS;
    i_notlhs_processfpga_c(0) <= i_notlhs_processfpga_o(17);

    -- i_unnamed_processfpga2102_vt_const_7(CONSTANT,187)
    i_unnamed_processfpga2102_vt_const_7_q <= "0000000";

    -- c_i8_1gr(CONSTANT,120)
    c_i8_1gr_q <= "00000001";

    -- i_unnamed_processfpga2102(LOGICAL,186)@15
    i_unnamed_processfpga2102_q <= i_load_unnamed_processfpga289_processfpga_out_o_readdata and c_i8_1gr_q;

    -- i_unnamed_processfpga2102_vt_select_0(BITSELECT,189)@15
    i_unnamed_processfpga2102_vt_select_0_b <= i_unnamed_processfpga2102_q(0 downto 0);

    -- i_unnamed_processfpga2102_vt_join(BITJOIN,188)@15
    i_unnamed_processfpga2102_vt_join_q <= i_unnamed_processfpga2102_vt_const_7_q & i_unnamed_processfpga2102_vt_select_0_b;

    -- i_notrhs_processfpga(LOGICAL,181)@15 + 1
    i_notrhs_processfpga_qi <= "1" WHEN i_unnamed_processfpga2102_vt_join_q = c_i8_0gr_q ELSE "0";
    i_notrhs_processfpga_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notrhs_processfpga_qi, xout => i_notrhs_processfpga_q, clk => clock, aclr => resetn );

    -- i_brmerge1250_not_processfpga(LOGICAL,143)@16
    i_brmerge1250_not_processfpga_q <= i_notrhs_processfpga_q and i_notlhs_processfpga_c;

    -- redist8_i_lnot_i_processfpga_q_6(DELAY,339)
    redist8_i_lnot_i_processfpga_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_lnot_i_processfpga_q, xout => redist8_i_lnot_i_processfpga_q_6_q, clk => clock, aclr => resetn );

    -- i_acl_996_processfpga(LOGICAL,124)@16
    i_acl_996_processfpga_q <= redist8_i_lnot_i_processfpga_q_6_q and i_brmerge1250_not_processfpga_q;

    -- i_cmp_i2821326_phi_decision_xor1878_or_demorgan_processfpga(LOGICAL,145)@16 + 1
    i_cmp_i2821326_phi_decision_xor1878_or_demorgan_processfpga_qi <= i_acl_996_processfpga_q and i_ffwd_dst_cmp_i2821326641_processfpga_out_dest_data_out_189_0;
    i_cmp_i2821326_phi_decision_xor1878_or_demorgan_processfpga_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp_i2821326_phi_decision_xor1878_or_demorgan_processfpga_qi, xout => i_cmp_i2821326_phi_decision_xor1878_or_demorgan_processfpga_q, clk => clock, aclr => resetn );

    -- i_cmp_i2821326_phi_decision_xor1878_or_processfpga(LOGICAL,146)@17
    i_cmp_i2821326_phi_decision_xor1878_or_processfpga_q <= i_cmp_i2821326_phi_decision_xor1878_or_demorgan_processfpga_q xor VCC_q;

    -- i_arrayidx22_i_processfpga_processfpga2113_mult_multconst_x(CONSTANT,42)
    i_arrayidx22_i_processfpga_processfpga2113_mult_multconst_x_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- dupName_0_c_i32_1gr_x(CONSTANT,6)
    dupName_0_c_i32_1gr_x_q <= "00000000000000000000000000000001";

    -- redist6_i_notexit720_processfpga_q_15(DELAY,337)
    redist6_i_notexit720_processfpga_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 14, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_i_notexit720_processfpga_q_1_q, xout => redist6_i_notexit720_processfpga_q_15_q, clk => clock, aclr => resetn );

    -- i_acl_994_processfpga(MUX,123)@16
    i_acl_994_processfpga_s <= i_acl_996_processfpga_q;
    i_acl_994_processfpga_combproc: PROCESS (i_acl_994_processfpga_s, i_acl_pop_i32_remainingcounter_0_i1327_pop69_processfpga_out_data_out, bgTrunc_i_inc_i294_processfpga_sel_x_b)
    BEGIN
        CASE (i_acl_994_processfpga_s) IS
            WHEN "0" => i_acl_994_processfpga_q <= i_acl_pop_i32_remainingcounter_0_i1327_pop69_processfpga_out_data_out;
            WHEN "1" => i_acl_994_processfpga_q <= bgTrunc_i_inc_i294_processfpga_sel_x_b;
            WHEN OTHERS => i_acl_994_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i32_remainingcounter_0_i1327_push69_processfpga(BLACKBOX,134)@16
    -- out out_feedback_out_69@20000000
    -- out out_feedback_valid_out_69@20000000
    thei_acl_push_i32_remainingcounter_0_i1327_push69_processfpga : i_acl_push_i32_remainingcounter_0_i1327_push69_processfpga2122
    PORT MAP (
        in_data_in => i_acl_994_processfpga_q,
        in_feedback_stall_in_69 => i_acl_pop_i32_remainingcounter_0_i1327_pop69_processfpga_out_feedback_stall_out_69,
        in_notexit720 => redist6_i_notexit720_processfpga_q_15_q,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_15_q,
        out_feedback_out_69 => i_acl_push_i32_remainingcounter_0_i1327_push69_processfpga_out_feedback_out_69,
        out_feedback_valid_out_69 => i_acl_push_i32_remainingcounter_0_i1327_push69_processfpga_out_feedback_valid_out_69,
        clock => clock,
        resetn => resetn
    );

    -- redist11_sync_in_aunroll_x_in_c0_eni21041_1_15(DELAY,342)
    redist11_sync_in_aunroll_x_in_c0_eni21041_1_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 15, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni21041_1, xout => redist11_sync_in_aunroll_x_in_c0_eni21041_1_15_q, clk => clock, aclr => resetn );

    -- c_i32_1gr(CONSTANT,118)
    c_i32_1gr_q <= "11111111111111111111111111111111";

    -- i_acl_pop_i32_remainingcounter_0_i1327_pop69_processfpga(BLACKBOX,129)@16
    -- out out_feedback_stall_out_69@20000000
    thei_acl_pop_i32_remainingcounter_0_i1327_pop69_processfpga : i_acl_pop_i32_remainingcounter_0_i1327_pop69_processfpga2111
    PORT MAP (
        in_data_in => c_i32_1gr_q,
        in_dir => redist11_sync_in_aunroll_x_in_c0_eni21041_1_15_q,
        in_feedback_in_69 => i_acl_push_i32_remainingcounter_0_i1327_push69_processfpga_out_feedback_out_69,
        in_feedback_valid_in_69 => i_acl_push_i32_remainingcounter_0_i1327_push69_processfpga_out_feedback_valid_out_69,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_15_q,
        out_data_out => i_acl_pop_i32_remainingcounter_0_i1327_pop69_processfpga_out_data_out,
        out_feedback_stall_out_69 => i_acl_pop_i32_remainingcounter_0_i1327_pop69_processfpga_out_feedback_stall_out_69,
        clock => clock,
        resetn => resetn
    );

    -- i_inc_i294_processfpga(ADD,165)@16
    i_inc_i294_processfpga_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_remainingcounter_0_i1327_pop69_processfpga_out_data_out);
    i_inc_i294_processfpga_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i32_1gr_x_q);
    i_inc_i294_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc_i294_processfpga_a) + UNSIGNED(i_inc_i294_processfpga_b));
    i_inc_i294_processfpga_q <= i_inc_i294_processfpga_o(32 downto 0);

    -- bgTrunc_i_inc_i294_processfpga_sel_x(BITSELECT,4)@16
    bgTrunc_i_inc_i294_processfpga_sel_x_b <= i_inc_i294_processfpga_q(31 downto 0);

    -- redist28_bgTrunc_i_inc_i294_processfpga_sel_x_b_1(DELAY,359)
    redist28_bgTrunc_i_inc_i294_processfpga_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_inc_i294_processfpga_sel_x_b, xout => redist28_bgTrunc_i_inc_i294_processfpga_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_idxprom21_i_processfpga_sel_x(BITSELECT,90)@17
    i_idxprom21_i_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist28_bgTrunc_i_inc_i294_processfpga_sel_x_b_1_q(31 downto 0)), 64)));

    -- i_arrayidx22_i_processfpga_processfpga2113_mult_x_bs1_merged_bit_select(BITSELECT,329)@17
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_bs1_merged_bit_select_b <= i_idxprom21_i_processfpga_sel_x_b(17 downto 0);
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_bs1_merged_bit_select_c <= i_idxprom21_i_processfpga_sel_x_b(63 downto 54);
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_bs1_merged_bit_select_d <= i_idxprom21_i_processfpga_sel_x_b(35 downto 18);
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_bs1_merged_bit_select_e <= i_idxprom21_i_processfpga_sel_x_b(53 downto 36);

    -- i_arrayidx22_i_processfpga_processfpga2113_mult_x_im3_shift0(BITSHIFT,288)@17
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_im3_shift0_qint <= i_arrayidx22_i_processfpga_processfpga2113_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_im3_shift0_q <= i_arrayidx22_i_processfpga_processfpga2113_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_15(BITSHIFT,215)@17
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx22_i_processfpga_processfpga2113_mult_x_im3_shift0_q) & "0000000000000000";
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_15_q <= i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx22_i_processfpga_processfpga2113_mult_x_im6_shift0(BITSHIFT,289)@17
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_im6_shift0_qint <= i_arrayidx22_i_processfpga_processfpga2113_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_im6_shift0_q <= i_arrayidx22_i_processfpga_processfpga2113_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_14(BITSHIFT,214)@17
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx22_i_processfpga_processfpga2113_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_14_q <= i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_14_qint(37 downto 0);

    -- i_arrayidx22_i_processfpga_processfpga2113_mult_x_join_16(BITJOIN,216)@17
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_join_16_q <= i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_15_q & i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_14_q;

    -- i_arrayidx22_i_processfpga_processfpga2113_mult_x_im9_shift0(BITSHIFT,290)@17
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_im9_shift0_qint <= i_arrayidx22_i_processfpga_processfpga2113_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_im9_shift0_q <= i_arrayidx22_i_processfpga_processfpga2113_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_12(BITSHIFT,212)@17
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx22_i_processfpga_processfpga2113_mult_x_im9_shift0_q) & "0000000000000000";
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_12_q <= i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx22_i_processfpga_processfpga2113_mult_x_im0_shift0(BITSHIFT,287)@17
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_im0_shift0_qint <= i_arrayidx22_i_processfpga_processfpga2113_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_im0_shift0_q <= i_arrayidx22_i_processfpga_processfpga2113_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx22_i_processfpga_processfpga2113_mult_x_join_13(BITJOIN,213)@17
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_join_13_q <= i_arrayidx22_i_processfpga_processfpga2113_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx22_i_processfpga_processfpga2113_mult_x_im0_shift0_q);

    -- i_arrayidx22_i_processfpga_processfpga2113_mult_x_result_add_0_0(ADD,217)@17
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx22_i_processfpga_processfpga2113_mult_x_join_13_q);
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx22_i_processfpga_processfpga2113_mult_x_join_16_q);
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx22_i_processfpga_processfpga2113_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx22_i_processfpga_processfpga2113_mult_x_result_add_0_0_b));
    i_arrayidx22_i_processfpga_processfpga2113_mult_x_result_add_0_0_q <= i_arrayidx22_i_processfpga_processfpga2113_mult_x_result_add_0_0_o(66 downto 0);

    -- i_arrayidx22_i_processfpga_processfpga2113_mult_extender_x(BITJOIN,41)@17
    i_arrayidx22_i_processfpga_processfpga2113_mult_extender_x_q <= i_arrayidx22_i_processfpga_processfpga2113_mult_multconst_x_q & i_arrayidx22_i_processfpga_processfpga2113_mult_x_result_add_0_0_q(65 downto 0);

    -- i_arrayidx22_i_processfpga_processfpga2113_trunc_sel_x(BITSELECT,43)@17
    i_arrayidx22_i_processfpga_processfpga2113_trunc_sel_x_b <= i_arrayidx22_i_processfpga_processfpga2113_mult_extender_x_q(63 downto 0);

    -- i_arrayidx22_i_processfpga_processfpga2113_dupName_0_trunc_sel_x(BITSELECT,38)@17
    i_arrayidx22_i_processfpga_processfpga2113_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_arrayidx22_i_processfpga_processfpga2113_trunc_sel_x_b);
    i_arrayidx22_i_processfpga_processfpga2113_dupName_0_trunc_sel_x_b <= i_arrayidx22_i_processfpga_processfpga2113_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_arrayidx22_i_processfpga_vt_select_63(BITSELECT,142)@17
    i_arrayidx22_i_processfpga_vt_select_63_b <= i_arrayidx22_i_processfpga_processfpga2113_dupName_0_trunc_sel_x_b(63 downto 1);

    -- i_arrayidx22_i_processfpga_vt_join(BITJOIN,141)@17
    i_arrayidx22_i_processfpga_vt_join_q <= i_arrayidx22_i_processfpga_vt_select_63_b & GND_q;

    -- i_store_memdep_36_processfpga(BLACKBOX,182)@17
    -- out out_memdep_36_avm_address@20000000
    -- out out_memdep_36_avm_burstcount@20000000
    -- out out_memdep_36_avm_byteenable@20000000
    -- out out_memdep_36_avm_enable@20000000
    -- out out_memdep_36_avm_read@20000000
    -- out out_memdep_36_avm_write@20000000
    -- out out_memdep_36_avm_writedata@20000000
    -- out out_o_stall@18
    -- out out_o_valid@18
    -- out out_o_writeack@18
    thei_store_memdep_36_processfpga : i_store_memdep_36_processfpga2116
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx22_i_processfpga_vt_join_q,
        in_i_predicate => i_cmp_i2821326_phi_decision_xor1878_or_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist19_sync_in_aunroll_x_in_i_valid_16_q,
        in_i_writedata => redist9_i_idx_0_i2791328_replace_phi_processfpga_q_16_mem_q,
        in_memdep_36_avm_readdata => in_memdep_36_avm_readdata,
        in_memdep_36_avm_readdatavalid => in_memdep_36_avm_readdatavalid,
        in_memdep_36_avm_waitrequest => in_memdep_36_avm_waitrequest,
        in_memdep_36_avm_writeack => in_memdep_36_avm_writeack,
        out_memdep_36_avm_address => i_store_memdep_36_processfpga_out_memdep_36_avm_address,
        out_memdep_36_avm_burstcount => i_store_memdep_36_processfpga_out_memdep_36_avm_burstcount,
        out_memdep_36_avm_byteenable => i_store_memdep_36_processfpga_out_memdep_36_avm_byteenable,
        out_memdep_36_avm_enable => i_store_memdep_36_processfpga_out_memdep_36_avm_enable,
        out_memdep_36_avm_read => i_store_memdep_36_processfpga_out_memdep_36_avm_read,
        out_memdep_36_avm_write => i_store_memdep_36_processfpga_out_memdep_36_avm_write,
        out_memdep_36_avm_writedata => i_store_memdep_36_processfpga_out_memdep_36_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_3_ext_sig_sync_out_x(GPOUT,16)
    out_memdep_36_avm_address <= i_store_memdep_36_processfpga_out_memdep_36_avm_address;
    out_memdep_36_avm_enable <= i_store_memdep_36_processfpga_out_memdep_36_avm_enable;
    out_memdep_36_avm_read <= i_store_memdep_36_processfpga_out_memdep_36_avm_read;
    out_memdep_36_avm_write <= i_store_memdep_36_processfpga_out_memdep_36_avm_write;
    out_memdep_36_avm_writedata <= i_store_memdep_36_processfpga_out_memdep_36_avm_writedata;
    out_memdep_36_avm_byteenable <= i_store_memdep_36_processfpga_out_memdep_36_avm_byteenable;
    out_memdep_36_avm_burstcount <= i_store_memdep_36_processfpga_out_memdep_36_avm_burstcount;

    -- redist20_sync_in_aunroll_x_in_i_valid_17(DELAY,351)
    redist20_sync_in_aunroll_x_in_i_valid_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist19_sync_in_aunroll_x_in_i_valid_16_q, xout => redist20_sync_in_aunroll_x_in_i_valid_17_q, clk => clock, aclr => resetn );

    -- i_ffwd_src_unnamed_processfpga290_processfpga(BLACKBOX,154)@16
    -- out out_intel_reserved_ffwd_129_0@20000000
    thei_ffwd_src_unnamed_processfpga290_processfpga : i_ffwd_src_unnamed_processfpga290_processfpga2130
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_129_0 => i_acl_994_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_15_q,
        out_intel_reserved_ffwd_129_0 => i_ffwd_src_unnamed_processfpga290_processfpga_out_intel_reserved_ffwd_129_0,
        clock => clock,
        resetn => resetn
    );

    -- redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_notEnable(LOGICAL,406)
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_nor(LOGICAL,407)
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_nor_q <= not (redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_notEnable_q or redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_sticky_ena_q);

    -- redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_last(CONSTANT,403)
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_last_q <= "01100";

    -- redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_cmp(LOGICAL,404)
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_cmp_b <= STD_LOGIC_VECTOR("0" & redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_q);
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_cmp_q <= "1" WHEN redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_last_q = redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_cmp_b ELSE "0";

    -- redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_cmpReg(REG,405)
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_cmpReg_q <= STD_LOGIC_VECTOR(redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_cmp_q);
        END IF;
    END PROCESS;

    -- redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_sticky_ena(REG,408)
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_nor_q = "1") THEN
                redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_sticky_ena_q <= STD_LOGIC_VECTOR(redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_enaAnd(LOGICAL,409)
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_enaAnd_q <= redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_sticky_ena_q and VCC_q;

    -- redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt(COUNTER,401)
    -- low=0, high=13, step=1, init=0
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_i = TO_UNSIGNED(12, 4)) THEN
                redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_eq <= '1';
            ELSE
                redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_eq <= '0';
            END IF;
            IF (redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_eq = '1') THEN
                redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_i <= redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_i + 3;
            ELSE
                redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_i <= redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_i, 4)));

    -- i_acl_push_i32_acl_hw_wg_id813_push70_processfpga(BLACKBOX,133)@1
    -- out out_feedback_out_70@20000000
    -- out out_feedback_valid_out_70@20000000
    thei_acl_push_i32_acl_hw_wg_id813_push70_processfpga : i_acl_push_i32_acl_hw_wg_id813_push70_processfpga2134
    PORT MAP (
        in_data_in => i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out,
        in_feedback_stall_in_70 => i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_feedback_stall_out_70,
        in_notexit720 => i_notexit720_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_70 => i_acl_push_i32_acl_hw_wg_id813_push70_processfpga_out_feedback_out_70,
        out_feedback_valid_out_70 => i_acl_push_i32_acl_hw_wg_id813_push70_processfpga_out_feedback_valid_out_70,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga(BLACKBOX,128)@1
    -- out out_feedback_stall_out_70@20000000
    thei_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga : i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga2132
    PORT MAP (
        in_data_in => in_c0_eni21041_2,
        in_dir => in_c0_eni21041_1,
        in_feedback_in_70 => i_acl_push_i32_acl_hw_wg_id813_push70_processfpga_out_feedback_out_70,
        in_feedback_valid_in_70 => i_acl_push_i32_acl_hw_wg_id813_push70_processfpga_out_feedback_valid_out_70,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out,
        out_feedback_stall_out_70 => i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_feedback_stall_out_70,
        clock => clock,
        resetn => resetn
    );

    -- redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_inputreg(DELAY,398)
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out, xout => redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_inputreg_q, clk => clock, aclr => resetn );

    -- redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_wraddr(REG,402)
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_wraddr_q <= "1101";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_wraddr_q <= STD_LOGIC_VECTOR(redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem(DUALMEM,400)
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_ia <= STD_LOGIC_VECTOR(redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_inputreg_q);
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_aa <= redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_wraddr_q;
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_ab <= redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_rdcnt_q;
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_reset0 <= not (resetn);
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 4,
        numwords_a => 14,
        width_b => 32,
        widthad_b => 4,
        numwords_b => 14,
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
        clocken1 => redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_reset0,
        clock1 => clock,
        address_a => redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_aa,
        data_a => redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_ab,
        q_b => redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_iq
    );
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_q <= redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_iq(31 downto 0);

    -- redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_outputreg(DELAY,399)
    redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_mem_q, xout => redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_outputreg_q, clk => clock, aclr => resetn );

    -- redist7_i_notexit720_processfpga_q_17(DELAY,338)
    redist7_i_notexit720_processfpga_q_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_i_notexit720_processfpga_q_15_q, xout => redist7_i_notexit720_processfpga_q_17_q, clk => clock, aclr => resetn );

    -- redist4_i_unnamed_processfpga2121_q_17(DELAY,335)
    redist4_i_unnamed_processfpga2121_q_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 17, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga2121_q, xout => redist4_i_unnamed_processfpga2121_q_17_q, clk => clock, aclr => resetn );

    -- sync_out_aunroll_x(GPOUT,102)@18
    out_c0_exi31047_0 <= GND_q;
    out_c0_exi31047_1 <= redist4_i_unnamed_processfpga2121_q_17_q;
    out_c0_exi31047_2 <= redist7_i_notexit720_processfpga_q_17_q;
    out_c0_exi31047_3 <= redist10_i_acl_pop_i32_acl_hw_wg_id813_pop70_processfpga_out_data_out_17_outputreg_q;
    out_intel_reserved_ffwd_129_0 <= i_ffwd_src_unnamed_processfpga290_processfpga_out_intel_reserved_ffwd_129_0;
    out_o_valid <= redist20_sync_in_aunroll_x_in_i_valid_17_q;

    -- i_acl_push_i1_notexitcond719_processfpga(BLACKBOX,132)@1
    -- out out_feedback_out_34@20000000
    -- out out_feedback_valid_out_34@20000000
    thei_acl_push_i1_notexitcond719_processfpga : i_acl_push_i1_notexitcond719_processfpga2128
    PORT MAP (
        in_data_in => i_notexit720_processfpga_q,
        in_feedback_stall_in_34 => i_acl_pipeline_keep_going718_processfpga_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_34 => i_acl_push_i1_notexitcond719_processfpga_out_feedback_out_34,
        out_feedback_valid_out_34 => i_acl_push_i1_notexitcond719_processfpga_out_feedback_valid_out_34,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going718_processfpga(BLACKBOX,125)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going718_processfpga : i_acl_pipeline_keep_going718_processfpga2077
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond719_processfpga_out_feedback_out_34,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond719_processfpga_out_feedback_valid_out_34,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going718_processfpga_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going718_processfpga_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going718_processfpga_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going718_processfpga_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,122)
    out_aclp_to_limiter_i_acl_pipeline_keep_going718_processfpga_exiting_valid_out <= i_acl_pipeline_keep_going718_processfpga_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going718_processfpga_exiting_stall_out <= i_acl_pipeline_keep_going718_processfpga_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,196)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going718_processfpga_out_pipeline_valid_out;

END normal;
