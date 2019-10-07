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

-- VHDL created from i_sfc_logic_c0_for_body85_processfpga_c0_enter1146_processfpga3051
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

entity i_sfc_logic_c0_for_body85_processfpga_c0_enter1146_processfpga3051 is
    port (
        in_normls_load746_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load746_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load746_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load746_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load741_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load741_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load741_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load741_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load741_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load741_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load741_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load751_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load751_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load751_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load751_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load746_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load746_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load746_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load746_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load746_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load746_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load746_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load751_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load751_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load751_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load751_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load751_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load751_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load751_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21145_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21145_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21145_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_12_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_14_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_15_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_175_0 : in std_logic_vector(16 downto 0);  -- ufix17
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        in_neurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi41152_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi41152_1 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi41152_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi41152_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi41152_4 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi41152_5 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi41152_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi41152_7 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load741_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load741_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load741_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load741_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going758_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going758_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body85_processfpga_c0_enter1146_processfpga3051;

architecture normal of i_sfc_logic_c0_for_body85_processfpga_c0_enter1146_processfpga3051 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going758_processfpga3053 is
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


    component i_acl_pop_i16_idx79_11369_pop62_processfpga3059 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_62 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_62 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_62 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i17_fpgaindvars_iv264_pop61_processfpga3057 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_61 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_61 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_stall_out_61 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga3096 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_63 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_63 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_63 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_idx79_11369_push62_processfpga3090 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_62 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA460 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_62 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_62 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i17_fpgaindvars_iv264_push61_processfpga3092 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_feedback_stall_in_61 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA460 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_out_61 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_61 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond759_processfpga3094 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_50 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_50 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_50 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_acl_hw_wg_id824_push63_processfpga3098 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_63 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA460 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_63 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_63 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp211253366_processfpga3082 is
        port (
            in_intel_reserved_ffwd_14_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_14_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp211253367_processfpga3077 is
        port (
            in_intel_reserved_ffwd_14_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_14_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp211253368_processfpga3069 is
        port (
            in_intel_reserved_ffwd_14_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_14_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_conv15353_processfpga3061 is
        port (
            in_intel_reserved_ffwd_12_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_12_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga416_processfpga3055 is
        port (
            in_intel_reserved_ffwd_175_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_175_0 : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga417_processfpga3087 is
        port (
            in_intel_reserved_ffwd_15_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_15_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_normls_load741_processfpga3071 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load741_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load741_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load741_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load741_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load741_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load741_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load741_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load741_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load741_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load741_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load741_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_normls_load746_processfpga3079 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load746_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load746_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load746_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load746_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load746_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load746_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load746_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load746_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load746_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load746_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load746_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_normls_load751_processfpga3084 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load751_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load751_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load751_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load751_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load751_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load751_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load751_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load751_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load751_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load751_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load751_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_localneurons_sync_buffer60_processfpga3073 is
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


    component i_syncbuf_localneurons_sync_buffer61_processfpga3066 is
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


    component i_syncbuf_neurons_sync_buffer_processfpga3063 is
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
    signal bgTrunc_i_add88_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next265_processfpga_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal bgTrunc_i_inc94_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_multconst_x_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_conv81_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_idxprom89_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom91_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_c_i64_4gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep750_processfpga_processfpga3081_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep750_processfpga_processfpga3081_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep750_processfpga_processfpga3081_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep750_processfpga_processfpga3081_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep750_processfpga_processfpga3081_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep750_processfpga_processfpga3081_c_i64_8gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i16_0gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_1gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i17_1gr_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i17_undef_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pipeline_keep_going758_processfpga_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going758_processfpga_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going758_processfpga_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going758_processfpga_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_idx79_11369_pop62_processfpga_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_idx79_11369_pop62_processfpga_out_feedback_stall_out_62 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv264_pop61_processfpga_out_data_out : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv264_pop61_processfpga_out_feedback_stall_out_61 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_feedback_stall_out_63 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_idx79_11369_push62_processfpga_out_feedback_out_62 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_idx79_11369_push62_processfpga_out_feedback_valid_out_62 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv264_push61_processfpga_out_feedback_out_61 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv264_push61_processfpga_out_feedback_valid_out_61 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond759_processfpga_out_feedback_out_50 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond759_processfpga_out_feedback_valid_out_50 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id824_push63_processfpga_out_feedback_out_63 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id824_push63_processfpga_out_feedback_valid_out_63 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add88_processfpga_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_processfpga_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_processfpga_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add88_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_conv81_processfpga_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv81_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_exitcond266_processfpga_a : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond266_processfpga_b : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond266_processfpga_o : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond266_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp211253366_processfpga_out_dest_data_out_14_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp211253367_processfpga_out_dest_data_out_14_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp211253368_processfpga_out_dest_data_out_14_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_conv15353_processfpga_out_dest_data_out_12_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_processfpga416_processfpga_out_dest_data_out_175_0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_ffwd_dst_unnamed_processfpga417_processfpga_out_dest_data_out_15_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv264_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv264_replace_phi_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_fpgaindvars_iv_next265_processfpga_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next265_processfpga_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next265_processfpga_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next265_processfpga_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_idxprom91_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom91_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom91_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_inc94_processfpga_a : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc94_processfpga_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc94_processfpga_o : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc94_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_load_normls_load741_processfpga_out_normls_load741_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load741_processfpga_out_normls_load741_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load741_processfpga_out_normls_load741_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_normls_load741_processfpga_out_normls_load741_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load741_processfpga_out_normls_load741_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load741_processfpga_out_normls_load741_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load741_processfpga_out_normls_load741_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load741_processfpga_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load746_processfpga_out_normls_load746_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load746_processfpga_out_normls_load746_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load746_processfpga_out_normls_load746_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_normls_load746_processfpga_out_normls_load746_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load746_processfpga_out_normls_load746_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load746_processfpga_out_normls_load746_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load746_processfpga_out_normls_load746_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load746_processfpga_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load751_processfpga_out_normls_load751_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load751_processfpga_out_normls_load751_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load751_processfpga_out_normls_load751_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_normls_load751_processfpga_out_normls_load751_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load751_processfpga_out_normls_load751_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load751_processfpga_out_normls_load751_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load751_processfpga_out_normls_load751_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load751_processfpga_out_o_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_localneurons_sync_buffer60_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer61_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_neurons_sync_buffer_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga3089_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_normls_gep745_processfpga_processfpga3075_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_unnamed_processfpga3089_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_unnamed_processfpga3089_q_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_acl_pop_i16_idx79_11369_pop62_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist6_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_sync_in_aunroll_x_in_i_valid_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_sync_in_aunroll_x_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_normls_gep745_processfpga_processfpga3075_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist12_i_normls_gep745_processfpga_processfpga3075_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist13_i_arrayidx92_processfpga_processfpga3068_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist14_i_arrayidx92_processfpga_processfpga3068_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist15_i_arrayidx90_processfpga_processfpga3065_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist16_bgTrunc_i_add88_processfpga_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_outputreg_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_mem_reset0 : std_logic;
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_i : signal is true;
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_eq : std_logic;
    attribute preserve of redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_eq : signal is true;
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist2_i_conv81_processfpga_vt_select_15_b_5_sticky_ena_q : signal is true;
    signal redist2_i_conv81_processfpga_vt_select_15_b_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_reset0 : std_logic;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_i : signal is true;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_eq : std_logic;
    attribute preserve of redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_eq : signal is true;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_sticky_ena_q : signal is true;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist6_sync_in_aunroll_x_in_i_valid_1(DELAY,234)
    redist6_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist6_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist7_sync_in_aunroll_x_in_i_valid_3(DELAY,235)
    redist7_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_sync_in_aunroll_x_in_i_valid_1_q, xout => redist7_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist8_sync_in_aunroll_x_in_i_valid_4(DELAY,236)
    redist8_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_sync_in_aunroll_x_in_i_valid_3_q, xout => redist8_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_ffwd_dst_cmp211253368_processfpga(BLACKBOX,102)@5
    thei_ffwd_dst_cmp211253368_processfpga : i_ffwd_dst_cmp211253368_processfpga3069
    PORT MAP (
        in_intel_reserved_ffwd_14_0 => in_intel_reserved_ffwd_14_0,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_4_q,
        out_dest_data_out_14_0 => i_ffwd_dst_cmp211253368_processfpga_out_dest_data_out_14_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx90_processfpga_processfpga3065_mult_multconst_x(CONSTANT,35)
    i_arrayidx90_processfpga_processfpga3065_mult_multconst_x_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_im3_shift0(BITSHIFT,205)@2
    i_arrayidx92_processfpga_processfpga3068_mult_x_im3_shift0_qint <= i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx92_processfpga_processfpga3068_mult_x_im3_shift0_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_im3_shift0_qint(10 downto 0);

    -- i_idxprom91_processfpga_vt_const_63(CONSTANT,111)
    i_idxprom91_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_unnamed_processfpga417_processfpga(BLACKBOX,105)@1
    thei_ffwd_dst_unnamed_processfpga417_processfpga : i_ffwd_dst_unnamed_processfpga417_processfpga3087
    PORT MAP (
        in_intel_reserved_ffwd_15_0 => in_intel_reserved_ffwd_15_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_15_0 => i_ffwd_dst_unnamed_processfpga417_processfpga_out_dest_data_out_15_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga416_processfpga(BLACKBOX,104)@1
    thei_ffwd_dst_unnamed_processfpga416_processfpga : i_ffwd_dst_unnamed_processfpga416_processfpga3055
    PORT MAP (
        in_intel_reserved_ffwd_175_0 => in_intel_reserved_ffwd_175_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_175_0 => i_ffwd_dst_unnamed_processfpga416_processfpga_out_dest_data_out_175_0,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv_next265_processfpga(ADD,107)@1
    i_fpgaindvars_iv_next265_processfpga_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv264_replace_phi_processfpga_q);
    i_fpgaindvars_iv_next265_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i17_1gr_q);
    i_fpgaindvars_iv_next265_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next265_processfpga_a) + UNSIGNED(i_fpgaindvars_iv_next265_processfpga_b));
    i_fpgaindvars_iv_next265_processfpga_q <= i_fpgaindvars_iv_next265_processfpga_o(17 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next265_processfpga_sel_x(BITSELECT,3)@1
    bgTrunc_i_fpgaindvars_iv_next265_processfpga_sel_x_b <= i_fpgaindvars_iv_next265_processfpga_q(16 downto 0);

    -- i_acl_push_i17_fpgaindvars_iv264_push61_processfpga(BLACKBOX,91)@1
    -- out out_feedback_out_61@20000000
    -- out out_feedback_valid_out_61@20000000
    thei_acl_push_i17_fpgaindvars_iv264_push61_processfpga : i_acl_push_i17_fpgaindvars_iv264_push61_processfpga3092
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next265_processfpga_sel_x_b,
        in_feedback_stall_in_61 => i_acl_pop_i17_fpgaindvars_iv264_pop61_processfpga_out_feedback_stall_out_61,
        in_stall_in => GND_q,
        in_unnamed_processFPGA460 => i_unnamed_processfpga3089_q,
        in_valid_in => in_i_valid,
        out_feedback_out_61 => i_acl_push_i17_fpgaindvars_iv264_push61_processfpga_out_feedback_out_61,
        out_feedback_valid_out_61 => i_acl_push_i17_fpgaindvars_iv264_push61_processfpga_out_feedback_valid_out_61,
        clock => clock,
        resetn => resetn
    );

    -- c_i17_undef(CONSTANT,80)
    c_i17_undef_q <= "00000000000000000";

    -- i_acl_pop_i17_fpgaindvars_iv264_pop61_processfpga(BLACKBOX,88)@1
    -- out out_feedback_stall_out_61@20000000
    thei_acl_pop_i17_fpgaindvars_iv264_pop61_processfpga : i_acl_pop_i17_fpgaindvars_iv264_pop61_processfpga3057
    PORT MAP (
        in_data_in => c_i17_undef_q,
        in_dir => in_c0_eni21145_1,
        in_feedback_in_61 => i_acl_push_i17_fpgaindvars_iv264_push61_processfpga_out_feedback_out_61,
        in_feedback_valid_in_61 => i_acl_push_i17_fpgaindvars_iv264_push61_processfpga_out_feedback_valid_out_61,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i17_fpgaindvars_iv264_pop61_processfpga_out_data_out,
        out_feedback_stall_out_61 => i_acl_pop_i17_fpgaindvars_iv264_pop61_processfpga_out_feedback_stall_out_61,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv264_replace_phi_processfpga(MUX,106)@1
    i_fpgaindvars_iv264_replace_phi_processfpga_s <= in_c0_eni21145_1;
    i_fpgaindvars_iv264_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv264_replace_phi_processfpga_s, i_acl_pop_i17_fpgaindvars_iv264_pop61_processfpga_out_data_out, i_ffwd_dst_unnamed_processfpga416_processfpga_out_dest_data_out_175_0)
    BEGIN
        CASE (i_fpgaindvars_iv264_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv264_replace_phi_processfpga_q <= i_acl_pop_i17_fpgaindvars_iv264_pop61_processfpga_out_data_out;
            WHEN "1" => i_fpgaindvars_iv264_replace_phi_processfpga_q <= i_ffwd_dst_unnamed_processfpga416_processfpga_out_dest_data_out_175_0;
            WHEN OTHERS => i_fpgaindvars_iv264_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i17_1gr(CONSTANT,79)
    c_i17_1gr_q <= "11111111111111111";

    -- i_exitcond266_processfpga(COMPARE,99)@1
    i_exitcond266_processfpga_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => c_i17_1gr_q(16)) & c_i17_1gr_q));
    i_exitcond266_processfpga_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => i_fpgaindvars_iv264_replace_phi_processfpga_q(16)) & i_fpgaindvars_iv264_replace_phi_processfpga_q));
    i_exitcond266_processfpga_o <= STD_LOGIC_VECTOR(SIGNED(i_exitcond266_processfpga_a) - SIGNED(i_exitcond266_processfpga_b));
    i_exitcond266_processfpga_c(0) <= i_exitcond266_processfpga_o(18);

    -- i_unnamed_processfpga3089(LOGICAL,124)@1
    i_unnamed_processfpga3089_q <= i_exitcond266_processfpga_c and i_ffwd_dst_unnamed_processfpga417_processfpga_out_dest_data_out_15_0;

    -- c_i16_1gr(CONSTANT,78)
    c_i16_1gr_q <= "0000000000000001";

    -- i_inc94_processfpga(ADD,114)@1
    i_inc94_processfpga_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i16_idx79_11369_pop62_processfpga_out_data_out);
    i_inc94_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i16_1gr_q);
    i_inc94_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc94_processfpga_a) + UNSIGNED(i_inc94_processfpga_b));
    i_inc94_processfpga_q <= i_inc94_processfpga_o(16 downto 0);

    -- bgTrunc_i_inc94_processfpga_sel_x(BITSELECT,4)@1
    bgTrunc_i_inc94_processfpga_sel_x_b <= i_inc94_processfpga_q(15 downto 0);

    -- i_acl_push_i16_idx79_11369_push62_processfpga(BLACKBOX,90)@1
    -- out out_feedback_out_62@20000000
    -- out out_feedback_valid_out_62@20000000
    thei_acl_push_i16_idx79_11369_push62_processfpga : i_acl_push_i16_idx79_11369_push62_processfpga3090
    PORT MAP (
        in_data_in => bgTrunc_i_inc94_processfpga_sel_x_b,
        in_feedback_stall_in_62 => i_acl_pop_i16_idx79_11369_pop62_processfpga_out_feedback_stall_out_62,
        in_stall_in => GND_q,
        in_unnamed_processFPGA460 => i_unnamed_processfpga3089_q,
        in_valid_in => in_i_valid,
        out_feedback_out_62 => i_acl_push_i16_idx79_11369_push62_processfpga_out_feedback_out_62,
        out_feedback_valid_out_62 => i_acl_push_i16_idx79_11369_push62_processfpga_out_feedback_valid_out_62,
        clock => clock,
        resetn => resetn
    );

    -- c_i16_0gr(CONSTANT,77)
    c_i16_0gr_q <= "0000000000000000";

    -- i_acl_pop_i16_idx79_11369_pop62_processfpga(BLACKBOX,87)@1
    -- out out_feedback_stall_out_62@20000000
    thei_acl_pop_i16_idx79_11369_pop62_processfpga : i_acl_pop_i16_idx79_11369_pop62_processfpga3059
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c0_eni21145_1,
        in_feedback_in_62 => i_acl_push_i16_idx79_11369_push62_processfpga_out_feedback_out_62,
        in_feedback_valid_in_62 => i_acl_push_i16_idx79_11369_push62_processfpga_out_feedback_valid_out_62,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_idx79_11369_pop62_processfpga_out_data_out,
        out_feedback_stall_out_62 => i_acl_pop_i16_idx79_11369_pop62_processfpga_out_feedback_stall_out_62,
        clock => clock,
        resetn => resetn
    );

    -- redist5_i_acl_pop_i16_idx79_11369_pop62_processfpga_out_data_out_1(DELAY,233)
    redist5_i_acl_pop_i16_idx79_11369_pop62_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i16_idx79_11369_pop62_processfpga_out_data_out, xout => redist5_i_acl_pop_i16_idx79_11369_pop62_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_idxprom91_processfpga_sel_x(BITSELECT,53)@2
    i_idxprom91_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(redist5_i_acl_pop_i16_idx79_11369_pop62_processfpga_out_data_out_1_q(15 downto 0)), 64));

    -- i_idxprom91_processfpga_vt_select_15(BITSELECT,113)@2
    i_idxprom91_processfpga_vt_select_15_b <= i_idxprom91_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom91_processfpga_vt_join(BITJOIN,112)@2
    i_idxprom91_processfpga_vt_join_q <= i_idxprom91_processfpga_vt_const_63_q & i_idxprom91_processfpga_vt_select_15_b;

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select(BITSELECT,227)@2
    i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_b <= i_idxprom91_processfpga_vt_join_q(17 downto 0);
    i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_c <= i_idxprom91_processfpga_vt_join_q(63 downto 54);
    i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_d <= i_idxprom91_processfpga_vt_join_q(35 downto 18);
    i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_e <= i_idxprom91_processfpga_vt_join_q(53 downto 36);

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_im3_add_1(ADD,206)@2 + 1
    i_arrayidx92_processfpga_processfpga3068_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_c);
    i_arrayidx92_processfpga_processfpga3068_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx92_processfpga_processfpga3068_mult_x_im3_shift0_q);
    i_arrayidx92_processfpga_processfpga3068_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx92_processfpga_processfpga3068_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx92_processfpga_processfpga3068_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx92_processfpga_processfpga3068_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx92_processfpga_processfpga3068_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx92_processfpga_processfpga3068_mult_x_im3_add_1_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_im3_shift2(BITSHIFT,207)@3
    i_arrayidx92_processfpga_processfpga3068_mult_x_im3_shift2_qint <= i_arrayidx92_processfpga_processfpga3068_mult_x_im3_add_1_q & "00";
    i_arrayidx92_processfpga_processfpga3068_mult_x_im3_shift2_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_align_15(BITSHIFT,163)@3
    i_arrayidx92_processfpga_processfpga3068_mult_x_align_15_qint <= i_arrayidx92_processfpga_processfpga3068_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx92_processfpga_processfpga3068_mult_x_align_15_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_im6_shift0(BITSHIFT,208)@2
    i_arrayidx92_processfpga_processfpga3068_mult_x_im6_shift0_qint <= i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx92_processfpga_processfpga3068_mult_x_im6_shift0_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_im6_add_1(ADD,209)@2 + 1
    i_arrayidx92_processfpga_processfpga3068_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_d);
    i_arrayidx92_processfpga_processfpga3068_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx92_processfpga_processfpga3068_mult_x_im6_shift0_q);
    i_arrayidx92_processfpga_processfpga3068_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx92_processfpga_processfpga3068_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx92_processfpga_processfpga3068_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx92_processfpga_processfpga3068_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx92_processfpga_processfpga3068_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx92_processfpga_processfpga3068_mult_x_im6_add_1_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_im6_shift2(BITSHIFT,210)@3
    i_arrayidx92_processfpga_processfpga3068_mult_x_im6_shift2_qint <= i_arrayidx92_processfpga_processfpga3068_mult_x_im6_add_1_q & "00";
    i_arrayidx92_processfpga_processfpga3068_mult_x_im6_shift2_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_align_14(BITSHIFT,162)@3
    i_arrayidx92_processfpga_processfpga3068_mult_x_align_14_qint <= i_arrayidx92_processfpga_processfpga3068_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx92_processfpga_processfpga3068_mult_x_align_14_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_join_16(BITJOIN,164)@3
    i_arrayidx92_processfpga_processfpga3068_mult_x_join_16_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_align_15_q & i_arrayidx92_processfpga_processfpga3068_mult_x_align_14_q;

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_im9_shift0(BITSHIFT,211)@2
    i_arrayidx92_processfpga_processfpga3068_mult_x_im9_shift0_qint <= i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx92_processfpga_processfpga3068_mult_x_im9_shift0_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_im9_add_1(ADD,212)@2 + 1
    i_arrayidx92_processfpga_processfpga3068_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_e);
    i_arrayidx92_processfpga_processfpga3068_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx92_processfpga_processfpga3068_mult_x_im9_shift0_q);
    i_arrayidx92_processfpga_processfpga3068_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx92_processfpga_processfpga3068_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx92_processfpga_processfpga3068_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx92_processfpga_processfpga3068_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx92_processfpga_processfpga3068_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx92_processfpga_processfpga3068_mult_x_im9_add_1_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_im9_shift2(BITSHIFT,213)@3
    i_arrayidx92_processfpga_processfpga3068_mult_x_im9_shift2_qint <= i_arrayidx92_processfpga_processfpga3068_mult_x_im9_add_1_q & "00";
    i_arrayidx92_processfpga_processfpga3068_mult_x_im9_shift2_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_align_12(BITSHIFT,160)@3
    i_arrayidx92_processfpga_processfpga3068_mult_x_align_12_qint <= i_arrayidx92_processfpga_processfpga3068_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx92_processfpga_processfpga3068_mult_x_align_12_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_im0_shift0(BITSHIFT,202)@2
    i_arrayidx92_processfpga_processfpga3068_mult_x_im0_shift0_qint <= i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx92_processfpga_processfpga3068_mult_x_im0_shift0_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_im0_add_1(ADD,203)@2 + 1
    i_arrayidx92_processfpga_processfpga3068_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_b);
    i_arrayidx92_processfpga_processfpga3068_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx92_processfpga_processfpga3068_mult_x_im0_shift0_q);
    i_arrayidx92_processfpga_processfpga3068_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx92_processfpga_processfpga3068_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx92_processfpga_processfpga3068_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx92_processfpga_processfpga3068_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx92_processfpga_processfpga3068_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx92_processfpga_processfpga3068_mult_x_im0_add_1_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_im0_shift2(BITSHIFT,204)@3
    i_arrayidx92_processfpga_processfpga3068_mult_x_im0_shift2_qint <= i_arrayidx92_processfpga_processfpga3068_mult_x_im0_add_1_q & "00";
    i_arrayidx92_processfpga_processfpga3068_mult_x_im0_shift2_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_join_13(BITJOIN,161)@3
    i_arrayidx92_processfpga_processfpga3068_mult_x_join_13_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_align_12_q & i_arrayidx92_processfpga_processfpga3068_mult_x_im0_shift2_q;

    -- i_arrayidx92_processfpga_processfpga3068_mult_x_result_add_0_0(ADD,165)@3
    i_arrayidx92_processfpga_processfpga3068_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx92_processfpga_processfpga3068_mult_x_join_13_q);
    i_arrayidx92_processfpga_processfpga3068_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx92_processfpga_processfpga3068_mult_x_join_16_q);
    i_arrayidx92_processfpga_processfpga3068_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx92_processfpga_processfpga3068_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx92_processfpga_processfpga3068_mult_x_result_add_0_0_b));
    i_arrayidx92_processfpga_processfpga3068_mult_x_result_add_0_0_q <= i_arrayidx92_processfpga_processfpga3068_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_mult_extender_x(BITJOIN,44)@3
    i_arrayidx92_processfpga_processfpga3068_mult_extender_x_q <= i_arrayidx90_processfpga_processfpga3065_mult_multconst_x_q & i_arrayidx92_processfpga_processfpga3068_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_trunc_sel_x(BITSELECT,46)@3
    i_arrayidx92_processfpga_processfpga3068_trunc_sel_x_b <= i_arrayidx92_processfpga_processfpga3068_mult_extender_x_q(63 downto 0);

    -- redist13_i_arrayidx92_processfpga_processfpga3068_trunc_sel_x_b_1(DELAY,241)
    redist13_i_arrayidx92_processfpga_processfpga3068_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx92_processfpga_processfpga3068_trunc_sel_x_b, xout => redist13_i_arrayidx92_processfpga_processfpga3068_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer61_processfpga(BLACKBOX,121)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_localneurons_sync_buffer61_processfpga : i_syncbuf_localneurons_sync_buffer61_processfpga3066
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer61_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx92_processfpga_processfpga3068_add_x(ADD,47)@4
    i_arrayidx92_processfpga_processfpga3068_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer61_processfpga_out_buffer_out);
    i_arrayidx92_processfpga_processfpga3068_add_x_b <= STD_LOGIC_VECTOR("0" & redist13_i_arrayidx92_processfpga_processfpga3068_trunc_sel_x_b_1_q);
    i_arrayidx92_processfpga_processfpga3068_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx92_processfpga_processfpga3068_add_x_a) + UNSIGNED(i_arrayidx92_processfpga_processfpga3068_add_x_b));
    i_arrayidx92_processfpga_processfpga3068_add_x_q <= i_arrayidx92_processfpga_processfpga3068_add_x_o(64 downto 0);

    -- i_arrayidx92_processfpga_processfpga3068_dupName_0_trunc_sel_x(BITSELECT,41)@4
    i_arrayidx92_processfpga_processfpga3068_dupName_0_trunc_sel_x_b <= i_arrayidx92_processfpga_processfpga3068_add_x_q(63 downto 0);

    -- redist14_i_arrayidx92_processfpga_processfpga3068_dupName_0_trunc_sel_x_b_1(DELAY,242)
    redist14_i_arrayidx92_processfpga_processfpga3068_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx92_processfpga_processfpga3068_dupName_0_trunc_sel_x_b, xout => redist14_i_arrayidx92_processfpga_processfpga3068_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_load_normls_load741_processfpga(BLACKBOX,115)@5
    -- in in_i_stall@20000000
    -- out out_normls_load741_avm_address@20000000
    -- out out_normls_load741_avm_burstcount@20000000
    -- out out_normls_load741_avm_byteenable@20000000
    -- out out_normls_load741_avm_enable@20000000
    -- out out_normls_load741_avm_read@20000000
    -- out out_normls_load741_avm_write@20000000
    -- out out_normls_load741_avm_writedata@20000000
    -- out out_o_readdata@10
    -- out out_o_stall@9
    -- out out_o_valid@10
    thei_load_normls_load741_processfpga : i_load_normls_load741_processfpga3071
    PORT MAP (
        in_flush => in_flush,
        in_i_address => redist14_i_arrayidx92_processfpga_processfpga3068_dupName_0_trunc_sel_x_b_1_q,
        in_i_predicate => i_ffwd_dst_cmp211253368_processfpga_out_dest_data_out_14_0,
        in_i_stall => GND_q,
        in_i_valid => redist8_sync_in_aunroll_x_in_i_valid_4_q,
        in_normls_load741_avm_readdata => in_normls_load741_avm_readdata,
        in_normls_load741_avm_readdatavalid => in_normls_load741_avm_readdatavalid,
        in_normls_load741_avm_waitrequest => in_normls_load741_avm_waitrequest,
        in_normls_load741_avm_writeack => in_normls_load741_avm_writeack,
        out_normls_load741_avm_address => i_load_normls_load741_processfpga_out_normls_load741_avm_address,
        out_normls_load741_avm_burstcount => i_load_normls_load741_processfpga_out_normls_load741_avm_burstcount,
        out_normls_load741_avm_byteenable => i_load_normls_load741_processfpga_out_normls_load741_avm_byteenable,
        out_normls_load741_avm_enable => i_load_normls_load741_processfpga_out_normls_load741_avm_enable,
        out_normls_load741_avm_read => i_load_normls_load741_processfpga_out_normls_load741_avm_read,
        out_normls_load741_avm_write => i_load_normls_load741_processfpga_out_normls_load741_avm_write,
        out_normls_load741_avm_writedata => i_load_normls_load741_processfpga_out_normls_load741_avm_writedata,
        out_o_readdata => i_load_normls_load741_processfpga_out_o_readdata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,7)
    out_normls_load741_avm_address <= i_load_normls_load741_processfpga_out_normls_load741_avm_address;
    out_normls_load741_avm_enable <= i_load_normls_load741_processfpga_out_normls_load741_avm_enable;
    out_normls_load741_avm_read <= i_load_normls_load741_processfpga_out_normls_load741_avm_read;
    out_normls_load741_avm_write <= i_load_normls_load741_processfpga_out_normls_load741_avm_write;
    out_normls_load741_avm_writedata <= i_load_normls_load741_processfpga_out_normls_load741_avm_writedata;
    out_normls_load741_avm_byteenable <= i_load_normls_load741_processfpga_out_normls_load741_avm_byteenable;
    out_normls_load741_avm_burstcount <= i_load_normls_load741_processfpga_out_normls_load741_avm_burstcount;

    -- i_ffwd_dst_cmp211253367_processfpga(BLACKBOX,101)@5
    thei_ffwd_dst_cmp211253367_processfpga : i_ffwd_dst_cmp211253367_processfpga3077
    PORT MAP (
        in_intel_reserved_ffwd_14_0 => in_intel_reserved_ffwd_14_0,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_4_q,
        out_dest_data_out_14_0 => i_ffwd_dst_cmp211253367_processfpga_out_dest_data_out_14_0,
        clock => clock,
        resetn => resetn
    );

    -- i_normls_gep745_processfpga_processfpga3075_c_i64_4gr_x(CONSTANT,65)
    i_normls_gep745_processfpga_processfpga3075_c_i64_4gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000100";

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_im3_shift0(BITSHIFT,217)@2
    i_normls_gep745_processfpga_processfpga3075_mult_x_im3_shift0_qint <= i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_c & "0";
    i_normls_gep745_processfpga_processfpga3075_mult_x_im3_shift0_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_im3_shift0_qint(10 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_im3_add_1(ADD,218)@2 + 1
    i_normls_gep745_processfpga_processfpga3075_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_c);
    i_normls_gep745_processfpga_processfpga3075_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_normls_gep745_processfpga_processfpga3075_mult_x_im3_shift0_q);
    i_normls_gep745_processfpga_processfpga3075_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_normls_gep745_processfpga_processfpga3075_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_normls_gep745_processfpga_processfpga3075_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep745_processfpga_processfpga3075_mult_x_im3_add_1_a) + UNSIGNED(i_normls_gep745_processfpga_processfpga3075_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_normls_gep745_processfpga_processfpga3075_mult_x_im3_add_1_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_im3_add_1_o(11 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_im3_shift2(BITSHIFT,219)@3
    i_normls_gep745_processfpga_processfpga3075_mult_x_im3_shift2_qint <= i_normls_gep745_processfpga_processfpga3075_mult_x_im3_add_1_q & "00";
    i_normls_gep745_processfpga_processfpga3075_mult_x_im3_shift2_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_im3_shift2_qint(13 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_align_15(BITSHIFT,181)@3
    i_normls_gep745_processfpga_processfpga3075_mult_x_align_15_qint <= i_normls_gep745_processfpga_processfpga3075_mult_x_im3_shift2_q & "00000000000000";
    i_normls_gep745_processfpga_processfpga3075_mult_x_align_15_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_align_15_qint(27 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_im6_shift0(BITSHIFT,220)@2
    i_normls_gep745_processfpga_processfpga3075_mult_x_im6_shift0_qint <= i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_d & "0";
    i_normls_gep745_processfpga_processfpga3075_mult_x_im6_shift0_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_im6_shift0_qint(18 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_im6_add_1(ADD,221)@2 + 1
    i_normls_gep745_processfpga_processfpga3075_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_d);
    i_normls_gep745_processfpga_processfpga3075_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_normls_gep745_processfpga_processfpga3075_mult_x_im6_shift0_q);
    i_normls_gep745_processfpga_processfpga3075_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_normls_gep745_processfpga_processfpga3075_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_normls_gep745_processfpga_processfpga3075_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep745_processfpga_processfpga3075_mult_x_im6_add_1_a) + UNSIGNED(i_normls_gep745_processfpga_processfpga3075_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_normls_gep745_processfpga_processfpga3075_mult_x_im6_add_1_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_im6_add_1_o(19 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_im6_shift2(BITSHIFT,222)@3
    i_normls_gep745_processfpga_processfpga3075_mult_x_im6_shift2_qint <= i_normls_gep745_processfpga_processfpga3075_mult_x_im6_add_1_q & "00";
    i_normls_gep745_processfpga_processfpga3075_mult_x_im6_shift2_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_im6_shift2_qint(21 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_align_14(BITSHIFT,180)@3
    i_normls_gep745_processfpga_processfpga3075_mult_x_align_14_qint <= i_normls_gep745_processfpga_processfpga3075_mult_x_im6_shift2_q & "000000000000000000";
    i_normls_gep745_processfpga_processfpga3075_mult_x_align_14_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_align_14_qint(39 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_join_16(BITJOIN,182)@3
    i_normls_gep745_processfpga_processfpga3075_mult_x_join_16_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_align_15_q & i_normls_gep745_processfpga_processfpga3075_mult_x_align_14_q;

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_im9_shift0(BITSHIFT,223)@2
    i_normls_gep745_processfpga_processfpga3075_mult_x_im9_shift0_qint <= i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_e & "0";
    i_normls_gep745_processfpga_processfpga3075_mult_x_im9_shift0_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_im9_shift0_qint(18 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_im9_add_1(ADD,224)@2 + 1
    i_normls_gep745_processfpga_processfpga3075_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_e);
    i_normls_gep745_processfpga_processfpga3075_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_normls_gep745_processfpga_processfpga3075_mult_x_im9_shift0_q);
    i_normls_gep745_processfpga_processfpga3075_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_normls_gep745_processfpga_processfpga3075_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_normls_gep745_processfpga_processfpga3075_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep745_processfpga_processfpga3075_mult_x_im9_add_1_a) + UNSIGNED(i_normls_gep745_processfpga_processfpga3075_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_normls_gep745_processfpga_processfpga3075_mult_x_im9_add_1_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_im9_add_1_o(19 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_im9_shift2(BITSHIFT,225)@3
    i_normls_gep745_processfpga_processfpga3075_mult_x_im9_shift2_qint <= i_normls_gep745_processfpga_processfpga3075_mult_x_im9_add_1_q & "00";
    i_normls_gep745_processfpga_processfpga3075_mult_x_im9_shift2_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_im9_shift2_qint(21 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_align_12(BITSHIFT,178)@3
    i_normls_gep745_processfpga_processfpga3075_mult_x_align_12_qint <= i_normls_gep745_processfpga_processfpga3075_mult_x_im9_shift2_q & "00000000000000";
    i_normls_gep745_processfpga_processfpga3075_mult_x_align_12_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_align_12_qint(35 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_im0_shift0(BITSHIFT,214)@2
    i_normls_gep745_processfpga_processfpga3075_mult_x_im0_shift0_qint <= i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_b & "0";
    i_normls_gep745_processfpga_processfpga3075_mult_x_im0_shift0_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_im0_shift0_qint(18 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_im0_add_1(ADD,215)@2 + 1
    i_normls_gep745_processfpga_processfpga3075_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx92_processfpga_processfpga3068_mult_x_bs1_merged_bit_select_b);
    i_normls_gep745_processfpga_processfpga3075_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_normls_gep745_processfpga_processfpga3075_mult_x_im0_shift0_q);
    i_normls_gep745_processfpga_processfpga3075_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_normls_gep745_processfpga_processfpga3075_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_normls_gep745_processfpga_processfpga3075_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep745_processfpga_processfpga3075_mult_x_im0_add_1_a) + UNSIGNED(i_normls_gep745_processfpga_processfpga3075_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_normls_gep745_processfpga_processfpga3075_mult_x_im0_add_1_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_im0_add_1_o(19 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_im0_shift2(BITSHIFT,216)@3
    i_normls_gep745_processfpga_processfpga3075_mult_x_im0_shift2_qint <= i_normls_gep745_processfpga_processfpga3075_mult_x_im0_add_1_q & "00";
    i_normls_gep745_processfpga_processfpga3075_mult_x_im0_shift2_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_im0_shift2_qint(21 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_join_13(BITJOIN,179)@3
    i_normls_gep745_processfpga_processfpga3075_mult_x_join_13_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_align_12_q & i_normls_gep745_processfpga_processfpga3075_mult_x_im0_shift2_q;

    -- i_normls_gep745_processfpga_processfpga3075_mult_x_result_add_0_0(ADD,183)@3
    i_normls_gep745_processfpga_processfpga3075_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_normls_gep745_processfpga_processfpga3075_mult_x_join_13_q);
    i_normls_gep745_processfpga_processfpga3075_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_normls_gep745_processfpga_processfpga3075_mult_x_join_16_q);
    i_normls_gep745_processfpga_processfpga3075_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep745_processfpga_processfpga3075_mult_x_result_add_0_0_a) + UNSIGNED(i_normls_gep745_processfpga_processfpga3075_mult_x_result_add_0_0_b));
    i_normls_gep745_processfpga_processfpga3075_mult_x_result_add_0_0_q <= i_normls_gep745_processfpga_processfpga3075_mult_x_result_add_0_0_o(68 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_mult_extender_x(BITJOIN,60)@3
    i_normls_gep745_processfpga_processfpga3075_mult_extender_x_q <= i_arrayidx90_processfpga_processfpga3065_mult_multconst_x_q & i_normls_gep745_processfpga_processfpga3075_mult_x_result_add_0_0_q(67 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_trunc_sel_x(BITSELECT,62)@3
    i_normls_gep745_processfpga_processfpga3075_trunc_sel_x_b <= i_normls_gep745_processfpga_processfpga3075_mult_extender_x_q(63 downto 0);

    -- redist11_i_normls_gep745_processfpga_processfpga3075_trunc_sel_x_b_1(DELAY,239)
    redist11_i_normls_gep745_processfpga_processfpga3075_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_normls_gep745_processfpga_processfpga3075_trunc_sel_x_b, xout => redist11_i_normls_gep745_processfpga_processfpga3075_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer60_processfpga(BLACKBOX,120)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_localneurons_sync_buffer60_processfpga : i_syncbuf_localneurons_sync_buffer60_processfpga3073
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer60_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_normls_gep745_processfpga_processfpga3075_add_x(ADD,63)@4
    i_normls_gep745_processfpga_processfpga3075_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer60_processfpga_out_buffer_out);
    i_normls_gep745_processfpga_processfpga3075_add_x_b <= STD_LOGIC_VECTOR("0" & redist11_i_normls_gep745_processfpga_processfpga3075_trunc_sel_x_b_1_q);
    i_normls_gep745_processfpga_processfpga3075_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep745_processfpga_processfpga3075_add_x_a) + UNSIGNED(i_normls_gep745_processfpga_processfpga3075_add_x_b));
    i_normls_gep745_processfpga_processfpga3075_add_x_q <= i_normls_gep745_processfpga_processfpga3075_add_x_o(64 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_dupName_0_trunc_sel_x(BITSELECT,54)@4
    i_normls_gep745_processfpga_processfpga3075_dupName_0_trunc_sel_x_b <= i_normls_gep745_processfpga_processfpga3075_add_x_q(63 downto 0);

    -- redist12_i_normls_gep745_processfpga_processfpga3075_dupName_0_trunc_sel_x_b_1(DELAY,240)
    redist12_i_normls_gep745_processfpga_processfpga3075_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_normls_gep745_processfpga_processfpga3075_dupName_0_trunc_sel_x_b, xout => redist12_i_normls_gep745_processfpga_processfpga3075_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_normls_gep745_processfpga_processfpga3075_dupName_0_add_x(ADD,57)@5
    i_normls_gep745_processfpga_processfpga3075_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist12_i_normls_gep745_processfpga_processfpga3075_dupName_0_trunc_sel_x_b_1_q);
    i_normls_gep745_processfpga_processfpga3075_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_normls_gep745_processfpga_processfpga3075_c_i64_4gr_x_q);
    i_normls_gep745_processfpga_processfpga3075_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep745_processfpga_processfpga3075_dupName_0_add_x_a) + UNSIGNED(i_normls_gep745_processfpga_processfpga3075_dupName_0_add_x_b));
    i_normls_gep745_processfpga_processfpga3075_dupName_0_add_x_q <= i_normls_gep745_processfpga_processfpga3075_dupName_0_add_x_o(64 downto 0);

    -- i_normls_gep745_processfpga_processfpga3075_dupName_1_trunc_sel_x(BITSELECT,55)@5
    i_normls_gep745_processfpga_processfpga3075_dupName_1_trunc_sel_x_b <= i_normls_gep745_processfpga_processfpga3075_dupName_0_add_x_q(63 downto 0);

    -- i_load_normls_load746_processfpga(BLACKBOX,116)@5
    -- in in_i_stall@20000000
    -- out out_normls_load746_avm_address@20000000
    -- out out_normls_load746_avm_burstcount@20000000
    -- out out_normls_load746_avm_byteenable@20000000
    -- out out_normls_load746_avm_enable@20000000
    -- out out_normls_load746_avm_read@20000000
    -- out out_normls_load746_avm_write@20000000
    -- out out_normls_load746_avm_writedata@20000000
    -- out out_o_readdata@10
    -- out out_o_stall@9
    -- out out_o_valid@10
    thei_load_normls_load746_processfpga : i_load_normls_load746_processfpga3079
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_normls_gep745_processfpga_processfpga3075_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_cmp211253367_processfpga_out_dest_data_out_14_0,
        in_i_stall => GND_q,
        in_i_valid => redist8_sync_in_aunroll_x_in_i_valid_4_q,
        in_normls_load746_avm_readdata => in_normls_load746_avm_readdata,
        in_normls_load746_avm_readdatavalid => in_normls_load746_avm_readdatavalid,
        in_normls_load746_avm_waitrequest => in_normls_load746_avm_waitrequest,
        in_normls_load746_avm_writeack => in_normls_load746_avm_writeack,
        out_normls_load746_avm_address => i_load_normls_load746_processfpga_out_normls_load746_avm_address,
        out_normls_load746_avm_burstcount => i_load_normls_load746_processfpga_out_normls_load746_avm_burstcount,
        out_normls_load746_avm_byteenable => i_load_normls_load746_processfpga_out_normls_load746_avm_byteenable,
        out_normls_load746_avm_enable => i_load_normls_load746_processfpga_out_normls_load746_avm_enable,
        out_normls_load746_avm_read => i_load_normls_load746_processfpga_out_normls_load746_avm_read,
        out_normls_load746_avm_write => i_load_normls_load746_processfpga_out_normls_load746_avm_write,
        out_normls_load746_avm_writedata => i_load_normls_load746_processfpga_out_normls_load746_avm_writedata,
        out_o_readdata => i_load_normls_load746_processfpga_out_o_readdata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_1_ext_sig_sync_out_x(GPOUT,10)
    out_normls_load746_avm_address <= i_load_normls_load746_processfpga_out_normls_load746_avm_address;
    out_normls_load746_avm_enable <= i_load_normls_load746_processfpga_out_normls_load746_avm_enable;
    out_normls_load746_avm_read <= i_load_normls_load746_processfpga_out_normls_load746_avm_read;
    out_normls_load746_avm_write <= i_load_normls_load746_processfpga_out_normls_load746_avm_write;
    out_normls_load746_avm_writedata <= i_load_normls_load746_processfpga_out_normls_load746_avm_writedata;
    out_normls_load746_avm_byteenable <= i_load_normls_load746_processfpga_out_normls_load746_avm_byteenable;
    out_normls_load746_avm_burstcount <= i_load_normls_load746_processfpga_out_normls_load746_avm_burstcount;

    -- i_ffwd_dst_cmp211253366_processfpga(BLACKBOX,100)@5
    thei_ffwd_dst_cmp211253366_processfpga : i_ffwd_dst_cmp211253366_processfpga3082
    PORT MAP (
        in_intel_reserved_ffwd_14_0 => in_intel_reserved_ffwd_14_0,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_4_q,
        out_dest_data_out_14_0 => i_ffwd_dst_cmp211253366_processfpga_out_dest_data_out_14_0,
        clock => clock,
        resetn => resetn
    );

    -- i_normls_gep750_processfpga_processfpga3081_c_i64_8gr_x(CONSTANT,70)
    i_normls_gep750_processfpga_processfpga3081_c_i64_8gr_x_q <= "0000000000000000000000000000000000000000000000000000000000001000";

    -- i_normls_gep750_processfpga_processfpga3081_add_x(ADD,69)@5
    i_normls_gep750_processfpga_processfpga3081_add_x_a <= STD_LOGIC_VECTOR("0" & redist14_i_arrayidx92_processfpga_processfpga3068_dupName_0_trunc_sel_x_b_1_q);
    i_normls_gep750_processfpga_processfpga3081_add_x_b <= STD_LOGIC_VECTOR("0" & i_normls_gep750_processfpga_processfpga3081_c_i64_8gr_x_q);
    i_normls_gep750_processfpga_processfpga3081_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep750_processfpga_processfpga3081_add_x_a) + UNSIGNED(i_normls_gep750_processfpga_processfpga3081_add_x_b));
    i_normls_gep750_processfpga_processfpga3081_add_x_q <= i_normls_gep750_processfpga_processfpga3081_add_x_o(64 downto 0);

    -- i_normls_gep750_processfpga_processfpga3081_trunc_sel_x(BITSELECT,68)@5
    i_normls_gep750_processfpga_processfpga3081_trunc_sel_x_b <= i_normls_gep750_processfpga_processfpga3081_add_x_q(63 downto 0);

    -- i_load_normls_load751_processfpga(BLACKBOX,117)@5
    -- in in_i_stall@20000000
    -- out out_normls_load751_avm_address@20000000
    -- out out_normls_load751_avm_burstcount@20000000
    -- out out_normls_load751_avm_byteenable@20000000
    -- out out_normls_load751_avm_enable@20000000
    -- out out_normls_load751_avm_read@20000000
    -- out out_normls_load751_avm_write@20000000
    -- out out_normls_load751_avm_writedata@20000000
    -- out out_o_readdata@10
    -- out out_o_stall@9
    -- out out_o_valid@10
    thei_load_normls_load751_processfpga : i_load_normls_load751_processfpga3084
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_normls_gep750_processfpga_processfpga3081_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_cmp211253366_processfpga_out_dest_data_out_14_0,
        in_i_stall => GND_q,
        in_i_valid => redist8_sync_in_aunroll_x_in_i_valid_4_q,
        in_normls_load751_avm_readdata => in_normls_load751_avm_readdata,
        in_normls_load751_avm_readdatavalid => in_normls_load751_avm_readdatavalid,
        in_normls_load751_avm_waitrequest => in_normls_load751_avm_waitrequest,
        in_normls_load751_avm_writeack => in_normls_load751_avm_writeack,
        out_normls_load751_avm_address => i_load_normls_load751_processfpga_out_normls_load751_avm_address,
        out_normls_load751_avm_burstcount => i_load_normls_load751_processfpga_out_normls_load751_avm_burstcount,
        out_normls_load751_avm_byteenable => i_load_normls_load751_processfpga_out_normls_load751_avm_byteenable,
        out_normls_load751_avm_enable => i_load_normls_load751_processfpga_out_normls_load751_avm_enable,
        out_normls_load751_avm_read => i_load_normls_load751_processfpga_out_normls_load751_avm_read,
        out_normls_load751_avm_write => i_load_normls_load751_processfpga_out_normls_load751_avm_write,
        out_normls_load751_avm_writedata => i_load_normls_load751_processfpga_out_normls_load751_avm_writedata,
        out_o_readdata => i_load_normls_load751_processfpga_out_o_readdata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_2_ext_sig_sync_out_x(GPOUT,12)
    out_normls_load751_avm_address <= i_load_normls_load751_processfpga_out_normls_load751_avm_address;
    out_normls_load751_avm_enable <= i_load_normls_load751_processfpga_out_normls_load751_avm_enable;
    out_normls_load751_avm_read <= i_load_normls_load751_processfpga_out_normls_load751_avm_read;
    out_normls_load751_avm_write <= i_load_normls_load751_processfpga_out_normls_load751_avm_write;
    out_normls_load751_avm_writedata <= i_load_normls_load751_processfpga_out_normls_load751_avm_writedata;
    out_normls_load751_avm_byteenable <= i_load_normls_load751_processfpga_out_normls_load751_avm_byteenable;
    out_normls_load751_avm_burstcount <= i_load_normls_load751_processfpga_out_normls_load751_avm_burstcount;

    -- redist9_sync_in_aunroll_x_in_i_valid_6(DELAY,237)
    redist9_sync_in_aunroll_x_in_i_valid_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_sync_in_aunroll_x_in_i_valid_4_q, xout => redist9_sync_in_aunroll_x_in_i_valid_6_q, clk => clock, aclr => resetn );

    -- redist10_sync_in_aunroll_x_in_i_valid_9(DELAY,238)
    redist10_sync_in_aunroll_x_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist9_sync_in_aunroll_x_in_i_valid_6_q, xout => redist10_sync_in_aunroll_x_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_notEnable(LOGICAL,263)
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_nor(LOGICAL,264)
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_nor_q <= not (redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_notEnable_q or redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_sticky_ena_q);

    -- redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_last(CONSTANT,260)
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_last_q <= "0100";

    -- redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_cmp(LOGICAL,261)
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_cmp_b <= STD_LOGIC_VECTOR("0" & redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_q);
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_cmp_q <= "1" WHEN redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_last_q = redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_cmp_b ELSE "0";

    -- redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_cmpReg(REG,262)
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_cmpReg_q <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_cmp_q);
        END IF;
    END PROCESS;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_sticky_ena(REG,265)
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_nor_q = "1") THEN
                redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_sticky_ena_q <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_enaAnd(LOGICAL,266)
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_enaAnd_q <= redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_sticky_ena_q and VCC_q;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt(COUNTER,258)
    -- low=0, high=5, step=1, init=0
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_i = TO_UNSIGNED(4, 3)) THEN
                redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_eq <= '1';
            ELSE
                redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_eq <= '0';
            END IF;
            IF (redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_eq = '1') THEN
                redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_i <= redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_i + 3;
            ELSE
                redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_i <= redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_i, 3)));

    -- redist0_i_unnamed_processfpga3089_q_1(DELAY,228)
    redist0_i_unnamed_processfpga3089_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga3089_q, xout => redist0_i_unnamed_processfpga3089_q_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i32_acl_hw_wg_id824_push63_processfpga(BLACKBOX,93)@2
    -- out out_feedback_out_63@20000000
    -- out out_feedback_valid_out_63@20000000
    thei_acl_push_i32_acl_hw_wg_id824_push63_processfpga : i_acl_push_i32_acl_hw_wg_id824_push63_processfpga3098
    PORT MAP (
        in_data_in => redist3_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_1_q,
        in_feedback_stall_in_63 => i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_feedback_stall_out_63,
        in_stall_in => GND_q,
        in_unnamed_processFPGA460 => redist0_i_unnamed_processfpga3089_q_1_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_63 => i_acl_push_i32_acl_hw_wg_id824_push63_processfpga_out_feedback_out_63,
        out_feedback_valid_out_63 => i_acl_push_i32_acl_hw_wg_id824_push63_processfpga_out_feedback_valid_out_63,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga(BLACKBOX,89)@1
    -- out out_feedback_stall_out_63@20000000
    thei_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga : i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga3096
    PORT MAP (
        in_data_in => in_c0_eni21145_2,
        in_dir => in_c0_eni21145_1,
        in_feedback_in_63 => i_acl_push_i32_acl_hw_wg_id824_push63_processfpga_out_feedback_out_63,
        in_feedback_valid_in_63 => i_acl_push_i32_acl_hw_wg_id824_push63_processfpga_out_feedback_valid_out_63,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out,
        out_feedback_stall_out_63 => i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_feedback_stall_out_63,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_1(DELAY,231)
    redist3_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out, xout => redist3_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_inputreg(DELAY,256)
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_1_q, xout => redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_inputreg_q, clk => clock, aclr => resetn );

    -- redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_wraddr(REG,259)
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_wraddr_q <= "101";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_wraddr_q <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem(DUALMEM,257)
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_ia <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_inputreg_q);
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_aa <= redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_wraddr_q;
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_ab <= redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_rdcnt_q;
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_reset0 <= not (resetn);
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 6,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 6,
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
        clocken1 => redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_reset0,
        clock1 => clock,
        address_a => redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_aa,
        data_a => redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_ab,
        q_b => redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_iq
    );
    redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_q <= redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_iq(31 downto 0);

    -- redist1_i_unnamed_processfpga3089_q_9(DELAY,229)
    redist1_i_unnamed_processfpga3089_q_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_unnamed_processfpga3089_q_1_q, xout => redist1_i_unnamed_processfpga3089_q_9_q, clk => clock, aclr => resetn );

    -- c_i32_0gr(CONSTANT,83)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_im3_shift0(BITSHIFT,193)@8
    i_arrayidx90_processfpga_processfpga3065_mult_x_im3_shift0_qint <= i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx90_processfpga_processfpga3065_mult_x_im3_shift0_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_im3_shift0_qint(10 downto 0);

    -- i_ffwd_dst_conv15353_processfpga(BLACKBOX,103)@7
    thei_ffwd_dst_conv15353_processfpga : i_ffwd_dst_conv15353_processfpga3061
    PORT MAP (
        in_intel_reserved_ffwd_12_0 => in_intel_reserved_ffwd_12_0,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_6_q,
        out_dest_data_out_12_0 => i_ffwd_dst_conv15353_processfpga_out_dest_data_out_12_0,
        clock => clock,
        resetn => resetn
    );

    -- redist2_i_conv81_processfpga_vt_select_15_b_5_notEnable(LOGICAL,252)
    redist2_i_conv81_processfpga_vt_select_15_b_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist2_i_conv81_processfpga_vt_select_15_b_5_nor(LOGICAL,253)
    redist2_i_conv81_processfpga_vt_select_15_b_5_nor_q <= not (redist2_i_conv81_processfpga_vt_select_15_b_5_notEnable_q or redist2_i_conv81_processfpga_vt_select_15_b_5_sticky_ena_q);

    -- redist2_i_conv81_processfpga_vt_select_15_b_5_mem_last(CONSTANT,249)
    redist2_i_conv81_processfpga_vt_select_15_b_5_mem_last_q <= "01";

    -- redist2_i_conv81_processfpga_vt_select_15_b_5_cmp(LOGICAL,250)
    redist2_i_conv81_processfpga_vt_select_15_b_5_cmp_q <= "1" WHEN redist2_i_conv81_processfpga_vt_select_15_b_5_mem_last_q = redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_q ELSE "0";

    -- redist2_i_conv81_processfpga_vt_select_15_b_5_cmpReg(REG,251)
    redist2_i_conv81_processfpga_vt_select_15_b_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_conv81_processfpga_vt_select_15_b_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_conv81_processfpga_vt_select_15_b_5_cmpReg_q <= STD_LOGIC_VECTOR(redist2_i_conv81_processfpga_vt_select_15_b_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist2_i_conv81_processfpga_vt_select_15_b_5_sticky_ena(REG,254)
    redist2_i_conv81_processfpga_vt_select_15_b_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_conv81_processfpga_vt_select_15_b_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_i_conv81_processfpga_vt_select_15_b_5_nor_q = "1") THEN
                redist2_i_conv81_processfpga_vt_select_15_b_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist2_i_conv81_processfpga_vt_select_15_b_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_i_conv81_processfpga_vt_select_15_b_5_enaAnd(LOGICAL,255)
    redist2_i_conv81_processfpga_vt_select_15_b_5_enaAnd_q <= redist2_i_conv81_processfpga_vt_select_15_b_5_sticky_ena_q and VCC_q;

    -- redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt(COUNTER,247)
    -- low=0, high=2, step=1, init=0
    redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_eq <= '1';
            ELSE
                redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_eq <= '0';
            END IF;
            IF (redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_eq = '1') THEN
                redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_i <= redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_i + 2;
            ELSE
                redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_i <= redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_i, 2)));

    -- i_conv81_processfpga_sel_x(BITSELECT,51)@2
    i_conv81_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(redist5_i_acl_pop_i16_idx79_11369_pop62_processfpga_out_data_out_1_q(15 downto 0)), 32));

    -- i_conv81_processfpga_vt_select_15(BITSELECT,98)@2
    i_conv81_processfpga_vt_select_15_b <= i_conv81_processfpga_sel_x_b(15 downto 0);

    -- redist2_i_conv81_processfpga_vt_select_15_b_5_wraddr(REG,248)
    redist2_i_conv81_processfpga_vt_select_15_b_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_conv81_processfpga_vt_select_15_b_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_conv81_processfpga_vt_select_15_b_5_wraddr_q <= STD_LOGIC_VECTOR(redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist2_i_conv81_processfpga_vt_select_15_b_5_mem(DUALMEM,246)
    redist2_i_conv81_processfpga_vt_select_15_b_5_mem_ia <= STD_LOGIC_VECTOR(i_conv81_processfpga_vt_select_15_b);
    redist2_i_conv81_processfpga_vt_select_15_b_5_mem_aa <= redist2_i_conv81_processfpga_vt_select_15_b_5_wraddr_q;
    redist2_i_conv81_processfpga_vt_select_15_b_5_mem_ab <= redist2_i_conv81_processfpga_vt_select_15_b_5_rdcnt_q;
    redist2_i_conv81_processfpga_vt_select_15_b_5_mem_reset0 <= not (resetn);
    redist2_i_conv81_processfpga_vt_select_15_b_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 16,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist2_i_conv81_processfpga_vt_select_15_b_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist2_i_conv81_processfpga_vt_select_15_b_5_mem_reset0,
        clock1 => clock,
        address_a => redist2_i_conv81_processfpga_vt_select_15_b_5_mem_aa,
        data_a => redist2_i_conv81_processfpga_vt_select_15_b_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist2_i_conv81_processfpga_vt_select_15_b_5_mem_ab,
        q_b => redist2_i_conv81_processfpga_vt_select_15_b_5_mem_iq
    );
    redist2_i_conv81_processfpga_vt_select_15_b_5_mem_q <= redist2_i_conv81_processfpga_vt_select_15_b_5_mem_iq(15 downto 0);

    -- redist2_i_conv81_processfpga_vt_select_15_b_5_outputreg(DELAY,245)
    redist2_i_conv81_processfpga_vt_select_15_b_5_outputreg : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_i_conv81_processfpga_vt_select_15_b_5_mem_q, xout => redist2_i_conv81_processfpga_vt_select_15_b_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_conv81_processfpga_vt_join(BITJOIN,97)@7
    i_conv81_processfpga_vt_join_q <= c_i16_0gr_q & redist2_i_conv81_processfpga_vt_select_15_b_5_outputreg_q;

    -- i_add88_processfpga(ADD,94)@7
    i_add88_processfpga_a <= STD_LOGIC_VECTOR("0" & i_conv81_processfpga_vt_join_q);
    i_add88_processfpga_b <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_conv15353_processfpga_out_dest_data_out_12_0);
    i_add88_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add88_processfpga_a) + UNSIGNED(i_add88_processfpga_b));
    i_add88_processfpga_q <= i_add88_processfpga_o(32 downto 0);

    -- bgTrunc_i_add88_processfpga_sel_x(BITSELECT,2)@7
    bgTrunc_i_add88_processfpga_sel_x_b <= i_add88_processfpga_q(31 downto 0);

    -- redist16_bgTrunc_i_add88_processfpga_sel_x_b_1(DELAY,244)
    redist16_bgTrunc_i_add88_processfpga_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add88_processfpga_sel_x_b, xout => redist16_bgTrunc_i_add88_processfpga_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_idxprom89_processfpga_sel_x(BITSELECT,52)@8
    i_idxprom89_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist16_bgTrunc_i_add88_processfpga_sel_x_b_1_q(31 downto 0)), 64)));

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select(BITSELECT,226)@8
    i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_b <= i_idxprom89_processfpga_sel_x_b(17 downto 0);
    i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_c <= i_idxprom89_processfpga_sel_x_b(63 downto 54);
    i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_d <= i_idxprom89_processfpga_sel_x_b(35 downto 18);
    i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_e <= i_idxprom89_processfpga_sel_x_b(53 downto 36);

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_im3_add_1(ADD,194)@8 + 1
    i_arrayidx90_processfpga_processfpga3065_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_c);
    i_arrayidx90_processfpga_processfpga3065_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx90_processfpga_processfpga3065_mult_x_im3_shift0_q);
    i_arrayidx90_processfpga_processfpga3065_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx90_processfpga_processfpga3065_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx90_processfpga_processfpga3065_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx90_processfpga_processfpga3065_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx90_processfpga_processfpga3065_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx90_processfpga_processfpga3065_mult_x_im3_add_1_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_im3_shift2(BITSHIFT,195)@9
    i_arrayidx90_processfpga_processfpga3065_mult_x_im3_shift2_qint <= i_arrayidx90_processfpga_processfpga3065_mult_x_im3_add_1_q & "00";
    i_arrayidx90_processfpga_processfpga3065_mult_x_im3_shift2_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_align_15(BITSHIFT,145)@9
    i_arrayidx90_processfpga_processfpga3065_mult_x_align_15_qint <= i_arrayidx90_processfpga_processfpga3065_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx90_processfpga_processfpga3065_mult_x_align_15_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_im6_shift0(BITSHIFT,196)@8
    i_arrayidx90_processfpga_processfpga3065_mult_x_im6_shift0_qint <= i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx90_processfpga_processfpga3065_mult_x_im6_shift0_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_im6_add_1(ADD,197)@8 + 1
    i_arrayidx90_processfpga_processfpga3065_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_d);
    i_arrayidx90_processfpga_processfpga3065_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx90_processfpga_processfpga3065_mult_x_im6_shift0_q);
    i_arrayidx90_processfpga_processfpga3065_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx90_processfpga_processfpga3065_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx90_processfpga_processfpga3065_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx90_processfpga_processfpga3065_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx90_processfpga_processfpga3065_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx90_processfpga_processfpga3065_mult_x_im6_add_1_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_im6_shift2(BITSHIFT,198)@9
    i_arrayidx90_processfpga_processfpga3065_mult_x_im6_shift2_qint <= i_arrayidx90_processfpga_processfpga3065_mult_x_im6_add_1_q & "00";
    i_arrayidx90_processfpga_processfpga3065_mult_x_im6_shift2_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_align_14(BITSHIFT,144)@9
    i_arrayidx90_processfpga_processfpga3065_mult_x_align_14_qint <= i_arrayidx90_processfpga_processfpga3065_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx90_processfpga_processfpga3065_mult_x_align_14_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_join_16(BITJOIN,146)@9
    i_arrayidx90_processfpga_processfpga3065_mult_x_join_16_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_align_15_q & i_arrayidx90_processfpga_processfpga3065_mult_x_align_14_q;

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_im9_shift0(BITSHIFT,199)@8
    i_arrayidx90_processfpga_processfpga3065_mult_x_im9_shift0_qint <= i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx90_processfpga_processfpga3065_mult_x_im9_shift0_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_im9_add_1(ADD,200)@8 + 1
    i_arrayidx90_processfpga_processfpga3065_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_e);
    i_arrayidx90_processfpga_processfpga3065_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx90_processfpga_processfpga3065_mult_x_im9_shift0_q);
    i_arrayidx90_processfpga_processfpga3065_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx90_processfpga_processfpga3065_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx90_processfpga_processfpga3065_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx90_processfpga_processfpga3065_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx90_processfpga_processfpga3065_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx90_processfpga_processfpga3065_mult_x_im9_add_1_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_im9_shift2(BITSHIFT,201)@9
    i_arrayidx90_processfpga_processfpga3065_mult_x_im9_shift2_qint <= i_arrayidx90_processfpga_processfpga3065_mult_x_im9_add_1_q & "00";
    i_arrayidx90_processfpga_processfpga3065_mult_x_im9_shift2_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_align_12(BITSHIFT,142)@9
    i_arrayidx90_processfpga_processfpga3065_mult_x_align_12_qint <= i_arrayidx90_processfpga_processfpga3065_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx90_processfpga_processfpga3065_mult_x_align_12_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_im0_shift0(BITSHIFT,190)@8
    i_arrayidx90_processfpga_processfpga3065_mult_x_im0_shift0_qint <= i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx90_processfpga_processfpga3065_mult_x_im0_shift0_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_im0_add_1(ADD,191)@8 + 1
    i_arrayidx90_processfpga_processfpga3065_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx90_processfpga_processfpga3065_mult_x_bs1_merged_bit_select_b);
    i_arrayidx90_processfpga_processfpga3065_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx90_processfpga_processfpga3065_mult_x_im0_shift0_q);
    i_arrayidx90_processfpga_processfpga3065_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx90_processfpga_processfpga3065_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx90_processfpga_processfpga3065_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx90_processfpga_processfpga3065_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx90_processfpga_processfpga3065_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx90_processfpga_processfpga3065_mult_x_im0_add_1_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_im0_shift2(BITSHIFT,192)@9
    i_arrayidx90_processfpga_processfpga3065_mult_x_im0_shift2_qint <= i_arrayidx90_processfpga_processfpga3065_mult_x_im0_add_1_q & "00";
    i_arrayidx90_processfpga_processfpga3065_mult_x_im0_shift2_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_join_13(BITJOIN,143)@9
    i_arrayidx90_processfpga_processfpga3065_mult_x_join_13_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_align_12_q & i_arrayidx90_processfpga_processfpga3065_mult_x_im0_shift2_q;

    -- i_arrayidx90_processfpga_processfpga3065_mult_x_result_add_0_0(ADD,147)@9
    i_arrayidx90_processfpga_processfpga3065_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx90_processfpga_processfpga3065_mult_x_join_13_q);
    i_arrayidx90_processfpga_processfpga3065_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx90_processfpga_processfpga3065_mult_x_join_16_q);
    i_arrayidx90_processfpga_processfpga3065_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx90_processfpga_processfpga3065_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx90_processfpga_processfpga3065_mult_x_result_add_0_0_b));
    i_arrayidx90_processfpga_processfpga3065_mult_x_result_add_0_0_q <= i_arrayidx90_processfpga_processfpga3065_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_mult_extender_x(BITJOIN,34)@9
    i_arrayidx90_processfpga_processfpga3065_mult_extender_x_q <= i_arrayidx90_processfpga_processfpga3065_mult_multconst_x_q & i_arrayidx90_processfpga_processfpga3065_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_trunc_sel_x(BITSELECT,36)@9
    i_arrayidx90_processfpga_processfpga3065_trunc_sel_x_b <= i_arrayidx90_processfpga_processfpga3065_mult_extender_x_q(63 downto 0);

    -- redist15_i_arrayidx90_processfpga_processfpga3065_trunc_sel_x_b_1(DELAY,243)
    redist15_i_arrayidx90_processfpga_processfpga3065_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx90_processfpga_processfpga3065_trunc_sel_x_b, xout => redist15_i_arrayidx90_processfpga_processfpga3065_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_neurons_sync_buffer_processfpga(BLACKBOX,122)@0
    -- in in_i_dependence@10
    -- in in_valid_in@10
    -- out out_buffer_out@10
    -- out out_valid_out@10
    thei_syncbuf_neurons_sync_buffer_processfpga : i_syncbuf_neurons_sync_buffer_processfpga3063
    PORT MAP (
        in_buffer_in => in_neurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_9_q,
        out_buffer_out => i_syncbuf_neurons_sync_buffer_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx90_processfpga_processfpga3065_add_x(ADD,37)@10
    i_arrayidx90_processfpga_processfpga3065_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_neurons_sync_buffer_processfpga_out_buffer_out);
    i_arrayidx90_processfpga_processfpga3065_add_x_b <= STD_LOGIC_VECTOR("0" & redist15_i_arrayidx90_processfpga_processfpga3065_trunc_sel_x_b_1_q);
    i_arrayidx90_processfpga_processfpga3065_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx90_processfpga_processfpga3065_add_x_a) + UNSIGNED(i_arrayidx90_processfpga_processfpga3065_add_x_b));
    i_arrayidx90_processfpga_processfpga3065_add_x_q <= i_arrayidx90_processfpga_processfpga3065_add_x_o(64 downto 0);

    -- i_arrayidx90_processfpga_processfpga3065_dupName_0_trunc_sel_x(BITSELECT,31)@10
    i_arrayidx90_processfpga_processfpga3065_dupName_0_trunc_sel_x_b <= i_arrayidx90_processfpga_processfpga3065_add_x_q(63 downto 0);

    -- sync_out_aunroll_x(GPOUT,73)@10
    out_c0_exi41152_0 <= GND_q;
    out_c0_exi41152_1 <= i_arrayidx90_processfpga_processfpga3065_dupName_0_trunc_sel_x_b;
    out_c0_exi41152_2 <= i_load_normls_load741_processfpga_out_o_readdata;
    out_c0_exi41152_3 <= i_load_normls_load746_processfpga_out_o_readdata;
    out_c0_exi41152_4 <= i_load_normls_load751_processfpga_out_o_readdata;
    out_c0_exi41152_5 <= c_i32_0gr_q;
    out_c0_exi41152_6 <= redist1_i_unnamed_processfpga3089_q_9_q;
    out_c0_exi41152_7 <= redist4_i_acl_pop_i32_acl_hw_wg_id824_pop63_processfpga_out_data_out_9_mem_q;
    out_o_valid <= redist10_sync_in_aunroll_x_in_i_valid_9_q;

    -- i_acl_push_i1_notexitcond759_processfpga(BLACKBOX,92)@1
    -- out out_feedback_out_50@20000000
    -- out out_feedback_valid_out_50@20000000
    thei_acl_push_i1_notexitcond759_processfpga : i_acl_push_i1_notexitcond759_processfpga3094
    PORT MAP (
        in_data_in => i_unnamed_processfpga3089_q,
        in_feedback_stall_in_50 => i_acl_pipeline_keep_going758_processfpga_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_50 => i_acl_push_i1_notexitcond759_processfpga_out_feedback_out_50,
        out_feedback_valid_out_50 => i_acl_push_i1_notexitcond759_processfpga_out_feedback_valid_out_50,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going758_processfpga(BLACKBOX,86)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going758_processfpga : i_acl_pipeline_keep_going758_processfpga3053
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond759_processfpga_out_feedback_out_50,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond759_processfpga_out_feedback_valid_out_50,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going758_processfpga_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going758_processfpga_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going758_processfpga_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going758_processfpga_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,85)
    out_aclp_to_limiter_i_acl_pipeline_keep_going758_processfpga_exiting_valid_out <= i_acl_pipeline_keep_going758_processfpga_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going758_processfpga_exiting_stall_out <= i_acl_pipeline_keep_going758_processfpga_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,128)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going758_processfpga_out_pipeline_valid_out;

END normal;
