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

-- VHDL created from i_sfc_logic_c0_for_body64_processfpga_c0_enter1136_processfpga2987
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

entity i_sfc_logic_c0_for_body64_processfpga_c0_enter1136_processfpga2987 is
    port (
        in_memdep_50_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_50_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_50_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_50_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_0147_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_0147_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_0147_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_0147_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_0147_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_0147_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memcoalesce_localNeurons_load_0147_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_51_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_51_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_51_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_51_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_50_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_50_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_50_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_50_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_50_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_50_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_50_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_51_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_51_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_51_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_51_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_51_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_51_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_51_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21135_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21135_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21135_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_14_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_15_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_172_0 : in std_logic_vector(3 downto 0);  -- ufix4
        in_intel_reserved_ffwd_173_0 : in std_logic_vector(16 downto 0);  -- ufix17
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi21140_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi21140_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi21140_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_0147_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_localNeurons_load_0147_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_0147_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_0147_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going753_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going753_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body64_processfpga_c0_enter1136_processfpga2987;

architecture normal of i_sfc_logic_c0_for_body64_processfpga_c0_enter1136_processfpga2987 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_load_memcoalesce_localneurons_load_0147_processfpga3002 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_0147_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_0147_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_0147_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_0147_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata_0 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_2 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_3 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0147_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0147_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0147_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0147_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0147_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0147_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0147_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_50_processfpga3012 is
        port (
            in_i_writedata_0 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_i_writedata_1 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_i_writedata_2 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_i_writedata_3 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_byteenable : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_50_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_50_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_50_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_50_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_50_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_50_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_50_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_50_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_50_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_50_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_50_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_51_processfpga3016 is
        port (
            in_i_writedata_0 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_i_writedata_1 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_i_writedata_2 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_i_writedata_3 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_51_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_51_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_51_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_51_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_51_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_51_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_51_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_51_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_51_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_51_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_51_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going753_processfpga2989 is
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


    component i_acl_pop_i16_idx58_11367_pop65_processfpga2995 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_65 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_65 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_65 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i17_fpgaindvars_iv260_pop64_processfpga2993 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_64 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_64 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_stall_out_64 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga3028 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_66 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_66 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_66 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_idx58_11367_push65_processfpga3022 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_65 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA459 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_65 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_65 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i17_fpgaindvars_iv260_push64_processfpga3024 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_feedback_stall_in_64 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA459 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_out_64 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_64 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond754_processfpga3026 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_48 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_48 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_48 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_acl_hw_wg_id823_push66_processfpga3030 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_66 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA459 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_66 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_66 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp211253358_processfpga3014 is
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


    component i_ffwd_dst_cmp211253359_processfpga3008 is
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


    component i_ffwd_dst_cmp211253364_processfpga3000 is
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


    component i_ffwd_dst_memcoalesce_localneurons_or_byte_en_2173610_processfpga3010 is
        port (
            in_intel_reserved_ffwd_172_0 : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_172_0 : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga411_processfpga2991 is
        port (
            in_intel_reserved_ffwd_173_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_173_0 : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga412_processfpga3019 is
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


    component i_syncbuf_localneurons_sync_buffer62_processfpga3004 is
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


    component i_syncbuf_localneurons_sync_buffer_processfpga2997 is
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
    signal bgTrunc_i_fpgaindvars_iv_next261_processfpga_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal bgTrunc_i_inc77_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_clpst_processfpga_processfpga3006_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clpst_processfpga_processfpga3006_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clpst_processfpga_processfpga3006_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst_processfpga_processfpga3006_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst_processfpga_processfpga3006_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst_processfpga_processfpga3006_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_multconst_x_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_clpst_processfpga_processfpga3006_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clpst_processfpga_processfpga3006_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst_processfpga_processfpga3006_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst_processfpga_processfpga3006_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst_processfpga_processfpga3006_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst_processfpga_processfpga3006_c_i64_7gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom65_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_o_readdata_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_o_readdata_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_c_i64_4gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep730_processfpga_processfpga3007_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep730_processfpga_processfpga3007_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep730_processfpga_processfpga3007_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep730_processfpga_processfpga3007_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep730_processfpga_processfpga3007_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep730_processfpga_processfpga3007_c_i64_1gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i16_0gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_1gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i17_1gr_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i17_undef_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i8_0gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pipeline_keep_going753_processfpga_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going753_processfpga_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going753_processfpga_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going753_processfpga_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_idx58_11367_pop65_processfpga_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_idx58_11367_pop65_processfpga_out_feedback_stall_out_65 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv260_pop64_processfpga_out_data_out : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv260_pop64_processfpga_out_feedback_stall_out_64 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_feedback_stall_out_66 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_idx58_11367_push65_processfpga_out_feedback_out_65 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_idx58_11367_push65_processfpga_out_feedback_valid_out_65 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv260_push64_processfpga_out_feedback_out_64 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv260_push64_processfpga_out_feedback_valid_out_64 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond754_processfpga_out_feedback_out_48 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond754_processfpga_out_feedback_valid_out_48 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id823_push66_processfpga_out_feedback_out_66 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id823_push66_processfpga_out_feedback_valid_out_66 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond262_processfpga_a : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond262_processfpga_b : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond262_processfpga_o : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond262_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp211253358_processfpga_out_dest_data_out_14_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp211253359_processfpga_out_dest_data_out_14_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp211253364_processfpga_out_dest_data_out_14_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_memcoalesce_localneurons_or_byte_en_2173610_processfpga_out_dest_data_out_172_0 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_ffwd_dst_unnamed_processfpga411_processfpga_out_dest_data_out_173_0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_ffwd_dst_unnamed_processfpga412_processfpga_out_dest_data_out_15_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv260_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv260_replace_phi_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_fpgaindvars_iv_next261_processfpga_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next261_processfpga_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next261_processfpga_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next261_processfpga_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_idxprom65_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom65_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom65_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_inc77_processfpga_a : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc77_processfpga_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc77_processfpga_o : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc77_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_syncbuf_localneurons_sync_buffer62_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga3021_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist1_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c_4_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist4_i_unnamed_processfpga3021_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_acl_pop_i16_idx58_11367_pop65_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist7_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_sync_in_aunroll_x_in_i_valid_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_sync_in_aunroll_x_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_sync_in_aunroll_x_in_i_valid_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist14_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist15_i_clpst_processfpga_processfpga3006_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist16_i_clpst_processfpga_processfpga3006_dupName_1_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist17_i_clpst_processfpga_processfpga3006_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_reset0 : std_logic;
    signal redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_rdcnt_i : signal is true;
    signal redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_sticky_ena_q : signal is true;
    signal redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c_4_outputreg_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_reset0 : std_logic;
    signal redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_rdcnt_i : signal is true;
    signal redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_sticky_ena_q : signal is true;
    signal redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_reset0 : std_logic;
    signal redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_rdcnt_i : signal is true;
    signal redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_sticky_ena_q : signal is true;
    signal redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_reset0 : std_logic;
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_i : signal is true;
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_eq : std_logic;
    attribute preserve of redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_eq : signal is true;
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_sticky_ena_q : signal is true;
    signal redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_inputreg_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_reset0 : std_logic;
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_ia : STD_LOGIC_VECTOR (63 downto 0);
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_iq : STD_LOGIC_VECTOR (63 downto 0);
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_i : signal is true;
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_eq : std_logic;
    attribute preserve of redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_eq : signal is true;
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_sticky_ena_q : signal is true;
    signal redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist7_sync_in_aunroll_x_in_i_valid_3(DELAY,182)
    redist7_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist7_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist8_sync_in_aunroll_x_in_i_valid_4(DELAY,183)
    redist8_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_sync_in_aunroll_x_in_i_valid_3_q, xout => redist8_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_ffwd_dst_cmp211253364_processfpga(BLACKBOX,89)@5
    thei_ffwd_dst_cmp211253364_processfpga : i_ffwd_dst_cmp211253364_processfpga3000
    PORT MAP (
        in_intel_reserved_ffwd_14_0 => in_intel_reserved_ffwd_14_0,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_4_q,
        out_dest_data_out_14_0 => i_ffwd_dst_cmp211253364_processfpga_out_dest_data_out_14_0,
        clock => clock,
        resetn => resetn
    );

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_c_i64_4gr_x(CONSTANT,56)
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_c_i64_4gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000100";

    -- i_clpst_processfpga_processfpga3006_mult_multconst_x(CONSTANT,36)
    i_clpst_processfpga_processfpga3006_mult_multconst_x_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_shift0(BITSHIFT,165)@2
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_shift0_qint <= i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c & "0";
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_shift0_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_shift0_qint(10 downto 0);

    -- i_idxprom65_processfpga_vt_const_63(CONSTANT,96)
    i_idxprom65_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_unnamed_processfpga412_processfpga(BLACKBOX,92)@1
    thei_ffwd_dst_unnamed_processfpga412_processfpga : i_ffwd_dst_unnamed_processfpga412_processfpga3019
    PORT MAP (
        in_intel_reserved_ffwd_15_0 => in_intel_reserved_ffwd_15_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_15_0 => i_ffwd_dst_unnamed_processfpga412_processfpga_out_dest_data_out_15_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga411_processfpga(BLACKBOX,91)@1
    thei_ffwd_dst_unnamed_processfpga411_processfpga : i_ffwd_dst_unnamed_processfpga411_processfpga2991
    PORT MAP (
        in_intel_reserved_ffwd_173_0 => in_intel_reserved_ffwd_173_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_173_0 => i_ffwd_dst_unnamed_processfpga411_processfpga_out_dest_data_out_173_0,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv_next261_processfpga(ADD,94)@1
    i_fpgaindvars_iv_next261_processfpga_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv260_replace_phi_processfpga_q);
    i_fpgaindvars_iv_next261_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i17_1gr_q);
    i_fpgaindvars_iv_next261_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next261_processfpga_a) + UNSIGNED(i_fpgaindvars_iv_next261_processfpga_b));
    i_fpgaindvars_iv_next261_processfpga_q <= i_fpgaindvars_iv_next261_processfpga_o(17 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next261_processfpga_sel_x(BITSELECT,2)@1
    bgTrunc_i_fpgaindvars_iv_next261_processfpga_sel_x_b <= i_fpgaindvars_iv_next261_processfpga_q(16 downto 0);

    -- i_acl_push_i17_fpgaindvars_iv260_push64_processfpga(BLACKBOX,83)@1
    -- out out_feedback_out_64@20000000
    -- out out_feedback_valid_out_64@20000000
    thei_acl_push_i17_fpgaindvars_iv260_push64_processfpga : i_acl_push_i17_fpgaindvars_iv260_push64_processfpga3024
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next261_processfpga_sel_x_b,
        in_feedback_stall_in_64 => i_acl_pop_i17_fpgaindvars_iv260_pop64_processfpga_out_feedback_stall_out_64,
        in_stall_in => GND_q,
        in_unnamed_processFPGA459 => i_unnamed_processfpga3021_q,
        in_valid_in => in_i_valid,
        out_feedback_out_64 => i_acl_push_i17_fpgaindvars_iv260_push64_processfpga_out_feedback_out_64,
        out_feedback_valid_out_64 => i_acl_push_i17_fpgaindvars_iv260_push64_processfpga_out_feedback_valid_out_64,
        clock => clock,
        resetn => resetn
    );

    -- c_i17_undef(CONSTANT,72)
    c_i17_undef_q <= "00000000000000000";

    -- i_acl_pop_i17_fpgaindvars_iv260_pop64_processfpga(BLACKBOX,80)@1
    -- out out_feedback_stall_out_64@20000000
    thei_acl_pop_i17_fpgaindvars_iv260_pop64_processfpga : i_acl_pop_i17_fpgaindvars_iv260_pop64_processfpga2993
    PORT MAP (
        in_data_in => c_i17_undef_q,
        in_dir => in_c0_eni21135_1,
        in_feedback_in_64 => i_acl_push_i17_fpgaindvars_iv260_push64_processfpga_out_feedback_out_64,
        in_feedback_valid_in_64 => i_acl_push_i17_fpgaindvars_iv260_push64_processfpga_out_feedback_valid_out_64,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i17_fpgaindvars_iv260_pop64_processfpga_out_data_out,
        out_feedback_stall_out_64 => i_acl_pop_i17_fpgaindvars_iv260_pop64_processfpga_out_feedback_stall_out_64,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv260_replace_phi_processfpga(MUX,93)@1
    i_fpgaindvars_iv260_replace_phi_processfpga_s <= in_c0_eni21135_1;
    i_fpgaindvars_iv260_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv260_replace_phi_processfpga_s, i_acl_pop_i17_fpgaindvars_iv260_pop64_processfpga_out_data_out, i_ffwd_dst_unnamed_processfpga411_processfpga_out_dest_data_out_173_0)
    BEGIN
        CASE (i_fpgaindvars_iv260_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv260_replace_phi_processfpga_q <= i_acl_pop_i17_fpgaindvars_iv260_pop64_processfpga_out_data_out;
            WHEN "1" => i_fpgaindvars_iv260_replace_phi_processfpga_q <= i_ffwd_dst_unnamed_processfpga411_processfpga_out_dest_data_out_173_0;
            WHEN OTHERS => i_fpgaindvars_iv260_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i17_1gr(CONSTANT,71)
    c_i17_1gr_q <= "11111111111111111";

    -- i_exitcond262_processfpga(COMPARE,86)@1
    i_exitcond262_processfpga_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => c_i17_1gr_q(16)) & c_i17_1gr_q));
    i_exitcond262_processfpga_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => i_fpgaindvars_iv260_replace_phi_processfpga_q(16)) & i_fpgaindvars_iv260_replace_phi_processfpga_q));
    i_exitcond262_processfpga_o <= STD_LOGIC_VECTOR(SIGNED(i_exitcond262_processfpga_a) - SIGNED(i_exitcond262_processfpga_b));
    i_exitcond262_processfpga_c(0) <= i_exitcond262_processfpga_o(18);

    -- i_unnamed_processfpga3021(LOGICAL,106)@1
    i_unnamed_processfpga3021_q <= i_exitcond262_processfpga_c and i_ffwd_dst_unnamed_processfpga412_processfpga_out_dest_data_out_15_0;

    -- c_i16_1gr(CONSTANT,70)
    c_i16_1gr_q <= "0000000000000001";

    -- i_inc77_processfpga(ADD,99)@1
    i_inc77_processfpga_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i16_idx58_11367_pop65_processfpga_out_data_out);
    i_inc77_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i16_1gr_q);
    i_inc77_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc77_processfpga_a) + UNSIGNED(i_inc77_processfpga_b));
    i_inc77_processfpga_q <= i_inc77_processfpga_o(16 downto 0);

    -- bgTrunc_i_inc77_processfpga_sel_x(BITSELECT,3)@1
    bgTrunc_i_inc77_processfpga_sel_x_b <= i_inc77_processfpga_q(15 downto 0);

    -- i_acl_push_i16_idx58_11367_push65_processfpga(BLACKBOX,82)@1
    -- out out_feedback_out_65@20000000
    -- out out_feedback_valid_out_65@20000000
    thei_acl_push_i16_idx58_11367_push65_processfpga : i_acl_push_i16_idx58_11367_push65_processfpga3022
    PORT MAP (
        in_data_in => bgTrunc_i_inc77_processfpga_sel_x_b,
        in_feedback_stall_in_65 => i_acl_pop_i16_idx58_11367_pop65_processfpga_out_feedback_stall_out_65,
        in_stall_in => GND_q,
        in_unnamed_processFPGA459 => i_unnamed_processfpga3021_q,
        in_valid_in => in_i_valid,
        out_feedback_out_65 => i_acl_push_i16_idx58_11367_push65_processfpga_out_feedback_out_65,
        out_feedback_valid_out_65 => i_acl_push_i16_idx58_11367_push65_processfpga_out_feedback_valid_out_65,
        clock => clock,
        resetn => resetn
    );

    -- c_i16_0gr(CONSTANT,69)
    c_i16_0gr_q <= "0000000000000000";

    -- i_acl_pop_i16_idx58_11367_pop65_processfpga(BLACKBOX,79)@1
    -- out out_feedback_stall_out_65@20000000
    thei_acl_pop_i16_idx58_11367_pop65_processfpga : i_acl_pop_i16_idx58_11367_pop65_processfpga2995
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c0_eni21135_1,
        in_feedback_in_65 => i_acl_push_i16_idx58_11367_push65_processfpga_out_feedback_out_65,
        in_feedback_valid_in_65 => i_acl_push_i16_idx58_11367_push65_processfpga_out_feedback_valid_out_65,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_idx58_11367_pop65_processfpga_out_data_out,
        out_feedback_stall_out_65 => i_acl_pop_i16_idx58_11367_pop65_processfpga_out_feedback_stall_out_65,
        clock => clock,
        resetn => resetn
    );

    -- redist6_i_acl_pop_i16_idx58_11367_pop65_processfpga_out_data_out_1(DELAY,181)
    redist6_i_acl_pop_i16_idx58_11367_pop65_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i16_idx58_11367_pop65_processfpga_out_data_out, xout => redist6_i_acl_pop_i16_idx58_11367_pop65_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_idxprom65_processfpga_sel_x(BITSELECT,43)@2
    i_idxprom65_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(redist6_i_acl_pop_i16_idx58_11367_pop65_processfpga_out_data_out_1_q(15 downto 0)), 64));

    -- i_idxprom65_processfpga_vt_select_15(BITSELECT,98)@2
    i_idxprom65_processfpga_vt_select_15_b <= i_idxprom65_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom65_processfpga_vt_join(BITJOIN,97)@2
    i_idxprom65_processfpga_vt_join_q <= i_idxprom65_processfpga_vt_const_63_q & i_idxprom65_processfpga_vt_select_15_b;

    -- i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select(BITSELECT,174)@2
    i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b <= i_idxprom65_processfpga_vt_join_q(17 downto 0);
    i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c <= i_idxprom65_processfpga_vt_join_q(63 downto 54);
    i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d <= i_idxprom65_processfpga_vt_join_q(35 downto 18);
    i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e <= i_idxprom65_processfpga_vt_join_q(53 downto 36);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_add_1(ADD,166)@2 + 1
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c);
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_shift0_q);
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_add_1_a) + UNSIGNED(i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_add_1_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_add_1_o(11 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_shift2(BITSHIFT,167)@3
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_shift2_qint <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_add_1_q & "00";
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_shift2_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_shift2_qint(13 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_15(BITSHIFT,144)@3
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_15_qint <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im3_shift2_q & "00000000000000";
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_15_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_15_qint(27 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_shift0(BITSHIFT,168)@2
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_shift0_qint <= i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d & "0";
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_shift0_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_shift0_qint(18 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_add_1(ADD,169)@2 + 1
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d);
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_shift0_q);
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_add_1_a) + UNSIGNED(i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_add_1_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_add_1_o(19 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_shift2(BITSHIFT,170)@3
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_shift2_qint <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_add_1_q & "00";
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_shift2_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_shift2_qint(21 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_14(BITSHIFT,143)@3
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_14_qint <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im6_shift2_q & "000000000000000000";
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_14_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_14_qint(39 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_join_16(BITJOIN,145)@3
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_join_16_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_15_q & i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_14_q;

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_shift0(BITSHIFT,171)@2
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_shift0_qint <= i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e & "0";
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_shift0_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_shift0_qint(18 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_add_1(ADD,172)@2 + 1
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e);
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_shift0_q);
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_add_1_a) + UNSIGNED(i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_add_1_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_add_1_o(19 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_shift2(BITSHIFT,173)@3
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_shift2_qint <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_add_1_q & "00";
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_shift2_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_shift2_qint(21 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_12(BITSHIFT,141)@3
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_12_qint <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im9_shift2_q & "00000000000000";
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_12_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_12_qint(35 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_shift0(BITSHIFT,162)@2
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_shift0_qint <= i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b & "0";
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_shift0_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_shift0_qint(18 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_add_1(ADD,163)@2 + 1
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b);
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_shift0_q);
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_add_1_a) + UNSIGNED(i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_add_1_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_add_1_o(19 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_shift2(BITSHIFT,164)@3
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_shift2_qint <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_add_1_q & "00";
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_shift2_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_shift2_qint(21 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_join_13(BITJOIN,142)@3
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_join_13_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_align_12_q & i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_im0_shift2_q;

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_result_add_0_0(ADD,146)@3
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_join_13_q);
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_join_16_q);
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_result_add_0_0_a) + UNSIGNED(i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_result_add_0_0_b));
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_result_add_0_0_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_result_add_0_0_o(68 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_extender_x(BITJOIN,51)@3
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_extender_x_q <= i_clpst_processfpga_processfpga3006_mult_multconst_x_q & i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_x_result_add_0_0_q(67 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_trunc_sel_x(BITSELECT,53)@3
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_trunc_sel_x_b <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_mult_extender_x_q(63 downto 0);

    -- redist12_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_trunc_sel_x_b_1(DELAY,187)
    redist12_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_trunc_sel_x_b, xout => redist12_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer_processfpga(BLACKBOX,105)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_localneurons_sync_buffer_processfpga : i_syncbuf_localneurons_sync_buffer_processfpga2997
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_add_x(ADD,54)@4
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer_processfpga_out_buffer_out);
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_add_x_b <= STD_LOGIC_VECTOR("0" & redist12_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_trunc_sel_x_b_1_q);
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_add_x_a) + UNSIGNED(i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_add_x_b));
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_add_x_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_add_x_o(64 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_trunc_sel_x(BITSELECT,45)@4
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_trunc_sel_x_b <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_add_x_q(63 downto 0);

    -- redist14_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_trunc_sel_x_b_1(DELAY,189)
    redist14_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_trunc_sel_x_b, xout => redist14_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_add_x(ADD,48)@5
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist14_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_trunc_sel_x_b_1_q);
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_c_i64_4gr_x_q);
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_add_x_a) + UNSIGNED(i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_add_x_b));
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_add_x_q <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_add_x_o(64 downto 0);

    -- i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x(BITSELECT,46)@5
    i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b <= i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_0_add_x_q(63 downto 0);

    -- i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x(BLACKBOX,44)@5
    -- in in_i_stall@20000000
    -- out out_o_readdata_0@10
    -- out out_o_readdata_1@10
    -- out out_o_readdata_2@10
    -- out out_o_readdata_3@10
    -- out out_memcoalesce_localNeurons_load_0147_avm_address@20000000
    -- out out_memcoalesce_localNeurons_load_0147_avm_burstcount@20000000
    -- out out_memcoalesce_localNeurons_load_0147_avm_byteenable@20000000
    -- out out_memcoalesce_localNeurons_load_0147_avm_enable@20000000
    -- out out_memcoalesce_localNeurons_load_0147_avm_read@20000000
    -- out out_memcoalesce_localNeurons_load_0147_avm_write@20000000
    -- out out_memcoalesce_localNeurons_load_0147_avm_writedata@20000000
    -- out out_o_stall@9
    -- out out_o_valid@10
    thei_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x : i_load_memcoalesce_localneurons_load_0147_processfpga3002
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_cmp211253364_processfpga_out_dest_data_out_14_0,
        in_i_stall => GND_q,
        in_i_valid => redist8_sync_in_aunroll_x_in_i_valid_4_q,
        in_memcoalesce_localNeurons_load_0147_avm_readdata => in_memcoalesce_localNeurons_load_0147_avm_readdata,
        in_memcoalesce_localNeurons_load_0147_avm_readdatavalid => in_memcoalesce_localNeurons_load_0147_avm_readdatavalid,
        in_memcoalesce_localNeurons_load_0147_avm_waitrequest => in_memcoalesce_localNeurons_load_0147_avm_waitrequest,
        in_memcoalesce_localNeurons_load_0147_avm_writeack => in_memcoalesce_localNeurons_load_0147_avm_writeack,
        out_o_readdata_1 => i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_o_readdata_1,
        out_o_readdata_2 => i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_o_readdata_2,
        out_memcoalesce_localNeurons_load_0147_avm_address => i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_address,
        out_memcoalesce_localNeurons_load_0147_avm_burstcount => i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_burstcount,
        out_memcoalesce_localNeurons_load_0147_avm_byteenable => i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_byteenable,
        out_memcoalesce_localNeurons_load_0147_avm_enable => i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_enable,
        out_memcoalesce_localNeurons_load_0147_avm_read => i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_read,
        out_memcoalesce_localNeurons_load_0147_avm_write => i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_write,
        out_memcoalesce_localNeurons_load_0147_avm_writedata => i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,6)
    out_memcoalesce_localNeurons_load_0147_avm_address <= i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_address;
    out_memcoalesce_localNeurons_load_0147_avm_enable <= i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_enable;
    out_memcoalesce_localNeurons_load_0147_avm_read <= i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_read;
    out_memcoalesce_localNeurons_load_0147_avm_write <= i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_write;
    out_memcoalesce_localNeurons_load_0147_avm_writedata <= i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_writedata;
    out_memcoalesce_localNeurons_load_0147_avm_byteenable <= i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_byteenable;
    out_memcoalesce_localNeurons_load_0147_avm_burstcount <= i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_0147_avm_burstcount;

    -- redist9_sync_in_aunroll_x_in_i_valid_7(DELAY,184)
    redist9_sync_in_aunroll_x_in_i_valid_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_sync_in_aunroll_x_in_i_valid_4_q, xout => redist9_sync_in_aunroll_x_in_i_valid_7_q, clk => clock, aclr => resetn );

    -- redist10_sync_in_aunroll_x_in_i_valid_9(DELAY,185)
    redist10_sync_in_aunroll_x_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist9_sync_in_aunroll_x_in_i_valid_7_q, xout => redist10_sync_in_aunroll_x_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_cmp211253359_processfpga(BLACKBOX,88)@10
    thei_ffwd_dst_cmp211253359_processfpga : i_ffwd_dst_cmp211253359_processfpga3008
    PORT MAP (
        in_intel_reserved_ffwd_14_0 => in_intel_reserved_ffwd_14_0,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_14_0 => i_ffwd_dst_cmp211253359_processfpga_out_dest_data_out_14_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_memcoalesce_localneurons_or_byte_en_2173610_processfpga(BLACKBOX,90)@10
    thei_ffwd_dst_memcoalesce_localneurons_or_byte_en_2173610_processfpga : i_ffwd_dst_memcoalesce_localneurons_or_byte_en_2173610_processfpga3010
    PORT MAP (
        in_intel_reserved_ffwd_172_0 => in_intel_reserved_ffwd_172_0,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_172_0 => i_ffwd_dst_memcoalesce_localneurons_or_byte_en_2173610_processfpga_out_dest_data_out_172_0,
        clock => clock,
        resetn => resetn
    );

    -- i_normls_gep730_processfpga_processfpga3007_c_i64_1gr_x(CONSTANT,61)
    i_normls_gep730_processfpga_processfpga3007_c_i64_1gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000001";

    -- i_clpst_processfpga_processfpga3006_c_i64_7gr_x(CONSTANT,40)
    i_clpst_processfpga_processfpga3006_c_i64_7gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000111";

    -- i_clpst_processfpga_processfpga3006_mult_x_im3_shift0(BITSHIFT,153)@6
    i_clpst_processfpga_processfpga3006_mult_x_im3_shift0_qint <= redist1_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c_4_outputreg_q & "0";
    i_clpst_processfpga_processfpga3006_mult_x_im3_shift0_q <= i_clpst_processfpga_processfpga3006_mult_x_im3_shift0_qint(10 downto 0);

    -- redist1_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c_4(DELAY,176)
    redist1_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c_4 : dspba_delay
    GENERIC MAP ( width => 10, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c, xout => redist1_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c_4_q, clk => clock, aclr => resetn );

    -- redist1_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c_4_outputreg(DELAY,202)
    redist1_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c_4_outputreg : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c_4_q, xout => redist1_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c_4_outputreg_q, clk => clock, aclr => resetn );

    -- i_clpst_processfpga_processfpga3006_mult_x_im3_add_1(ADD,154)@6 + 1
    i_clpst_processfpga_processfpga3006_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & redist1_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_c_4_outputreg_q);
    i_clpst_processfpga_processfpga3006_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_clpst_processfpga_processfpga3006_mult_x_im3_shift0_q);
    i_clpst_processfpga_processfpga3006_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clpst_processfpga_processfpga3006_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clpst_processfpga_processfpga3006_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpst_processfpga_processfpga3006_mult_x_im3_add_1_a) + UNSIGNED(i_clpst_processfpga_processfpga3006_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_clpst_processfpga_processfpga3006_mult_x_im3_add_1_q <= i_clpst_processfpga_processfpga3006_mult_x_im3_add_1_o(11 downto 0);

    -- i_clpst_processfpga_processfpga3006_mult_x_im3_shift2(BITSHIFT,155)@7
    i_clpst_processfpga_processfpga3006_mult_x_im3_shift2_qint <= i_clpst_processfpga_processfpga3006_mult_x_im3_add_1_q & "00";
    i_clpst_processfpga_processfpga3006_mult_x_im3_shift2_q <= i_clpst_processfpga_processfpga3006_mult_x_im3_shift2_qint(13 downto 0);

    -- i_clpst_processfpga_processfpga3006_mult_x_align_15(BITSHIFT,126)@7
    i_clpst_processfpga_processfpga3006_mult_x_align_15_qint <= i_clpst_processfpga_processfpga3006_mult_x_im3_shift2_q & "00000000000000";
    i_clpst_processfpga_processfpga3006_mult_x_align_15_q <= i_clpst_processfpga_processfpga3006_mult_x_align_15_qint(27 downto 0);

    -- i_clpst_processfpga_processfpga3006_mult_x_im6_shift0(BITSHIFT,156)@6
    i_clpst_processfpga_processfpga3006_mult_x_im6_shift0_qint <= redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_outputreg_q & "0";
    i_clpst_processfpga_processfpga3006_mult_x_im6_shift0_q <= i_clpst_processfpga_processfpga3006_mult_x_im6_shift0_qint(18 downto 0);

    -- redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_notEnable(LOGICAL,208)
    redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_nor(LOGICAL,209)
    redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_nor_q <= not (redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_notEnable_q or redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_sticky_ena_q);

    -- redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_cmpReg(REG,207)
    redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_sticky_ena(REG,210)
    redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_nor_q = "1") THEN
                redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_enaAnd(LOGICAL,211)
    redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_enaAnd_q <= redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_sticky_ena_q and VCC_q;

    -- redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_rdcnt(COUNTER,205)
    -- low=0, high=1, step=1, init=0
    redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_rdcnt_i <= redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_rdcnt_i, 1)));

    -- redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_wraddr(REG,206)
    redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_wraddr_q <= STD_LOGIC_VECTOR(redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem(DUALMEM,204)
    redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_ia <= STD_LOGIC_VECTOR(i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d);
    redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_aa <= redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_wraddr_q;
    redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_ab <= redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_rdcnt_q;
    redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_reset0 <= not (resetn);
    redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_dmem : altera_syncram
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
        clocken1 => redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_reset0,
        clock1 => clock,
        address_a => redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_aa,
        data_a => redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_ab,
        q_b => redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_iq
    );
    redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_q <= redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_iq(17 downto 0);

    -- redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_outputreg(DELAY,203)
    redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_mem_q, xout => redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_outputreg_q, clk => clock, aclr => resetn );

    -- i_clpst_processfpga_processfpga3006_mult_x_im6_add_1(ADD,157)@6 + 1
    i_clpst_processfpga_processfpga3006_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & redist2_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_d_4_outputreg_q);
    i_clpst_processfpga_processfpga3006_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_clpst_processfpga_processfpga3006_mult_x_im6_shift0_q);
    i_clpst_processfpga_processfpga3006_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clpst_processfpga_processfpga3006_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clpst_processfpga_processfpga3006_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpst_processfpga_processfpga3006_mult_x_im6_add_1_a) + UNSIGNED(i_clpst_processfpga_processfpga3006_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_clpst_processfpga_processfpga3006_mult_x_im6_add_1_q <= i_clpst_processfpga_processfpga3006_mult_x_im6_add_1_o(19 downto 0);

    -- i_clpst_processfpga_processfpga3006_mult_x_im6_shift2(BITSHIFT,158)@7
    i_clpst_processfpga_processfpga3006_mult_x_im6_shift2_qint <= i_clpst_processfpga_processfpga3006_mult_x_im6_add_1_q & "00";
    i_clpst_processfpga_processfpga3006_mult_x_im6_shift2_q <= i_clpst_processfpga_processfpga3006_mult_x_im6_shift2_qint(21 downto 0);

    -- i_clpst_processfpga_processfpga3006_mult_x_align_14(BITSHIFT,125)@7
    i_clpst_processfpga_processfpga3006_mult_x_align_14_qint <= i_clpst_processfpga_processfpga3006_mult_x_im6_shift2_q & "000000000000000000";
    i_clpst_processfpga_processfpga3006_mult_x_align_14_q <= i_clpst_processfpga_processfpga3006_mult_x_align_14_qint(39 downto 0);

    -- i_clpst_processfpga_processfpga3006_mult_x_join_16(BITJOIN,127)@7
    i_clpst_processfpga_processfpga3006_mult_x_join_16_q <= i_clpst_processfpga_processfpga3006_mult_x_align_15_q & i_clpst_processfpga_processfpga3006_mult_x_align_14_q;

    -- i_clpst_processfpga_processfpga3006_mult_x_im9_shift0(BITSHIFT,159)@6
    i_clpst_processfpga_processfpga3006_mult_x_im9_shift0_qint <= redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_outputreg_q & "0";
    i_clpst_processfpga_processfpga3006_mult_x_im9_shift0_q <= i_clpst_processfpga_processfpga3006_mult_x_im9_shift0_qint(18 downto 0);

    -- redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_notEnable(LOGICAL,217)
    redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_nor(LOGICAL,218)
    redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_nor_q <= not (redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_notEnable_q or redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_sticky_ena_q);

    -- redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_cmpReg(REG,216)
    redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_sticky_ena(REG,219)
    redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_nor_q = "1") THEN
                redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_enaAnd(LOGICAL,220)
    redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_enaAnd_q <= redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_sticky_ena_q and VCC_q;

    -- redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_rdcnt(COUNTER,214)
    -- low=0, high=1, step=1, init=0
    redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_rdcnt_i <= redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_rdcnt_i, 1)));

    -- redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_wraddr(REG,215)
    redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_wraddr_q <= STD_LOGIC_VECTOR(redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem(DUALMEM,213)
    redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_ia <= STD_LOGIC_VECTOR(i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e);
    redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_aa <= redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_wraddr_q;
    redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_ab <= redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_rdcnt_q;
    redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_reset0 <= not (resetn);
    redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_dmem : altera_syncram
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
        clocken1 => redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_reset0,
        clock1 => clock,
        address_a => redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_aa,
        data_a => redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_ab,
        q_b => redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_iq
    );
    redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_q <= redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_iq(17 downto 0);

    -- redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_outputreg(DELAY,212)
    redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_mem_q, xout => redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_outputreg_q, clk => clock, aclr => resetn );

    -- i_clpst_processfpga_processfpga3006_mult_x_im9_add_1(ADD,160)@6 + 1
    i_clpst_processfpga_processfpga3006_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & redist3_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_e_4_outputreg_q);
    i_clpst_processfpga_processfpga3006_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_clpst_processfpga_processfpga3006_mult_x_im9_shift0_q);
    i_clpst_processfpga_processfpga3006_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clpst_processfpga_processfpga3006_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clpst_processfpga_processfpga3006_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpst_processfpga_processfpga3006_mult_x_im9_add_1_a) + UNSIGNED(i_clpst_processfpga_processfpga3006_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_clpst_processfpga_processfpga3006_mult_x_im9_add_1_q <= i_clpst_processfpga_processfpga3006_mult_x_im9_add_1_o(19 downto 0);

    -- i_clpst_processfpga_processfpga3006_mult_x_im9_shift2(BITSHIFT,161)@7
    i_clpst_processfpga_processfpga3006_mult_x_im9_shift2_qint <= i_clpst_processfpga_processfpga3006_mult_x_im9_add_1_q & "00";
    i_clpst_processfpga_processfpga3006_mult_x_im9_shift2_q <= i_clpst_processfpga_processfpga3006_mult_x_im9_shift2_qint(21 downto 0);

    -- i_clpst_processfpga_processfpga3006_mult_x_align_12(BITSHIFT,123)@7
    i_clpst_processfpga_processfpga3006_mult_x_align_12_qint <= i_clpst_processfpga_processfpga3006_mult_x_im9_shift2_q & "00000000000000";
    i_clpst_processfpga_processfpga3006_mult_x_align_12_q <= i_clpst_processfpga_processfpga3006_mult_x_align_12_qint(35 downto 0);

    -- i_clpst_processfpga_processfpga3006_mult_x_im0_shift0(BITSHIFT,150)@6
    i_clpst_processfpga_processfpga3006_mult_x_im0_shift0_qint <= redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_outputreg_q & "0";
    i_clpst_processfpga_processfpga3006_mult_x_im0_shift0_q <= i_clpst_processfpga_processfpga3006_mult_x_im0_shift0_qint(18 downto 0);

    -- redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_notEnable(LOGICAL,198)
    redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_nor(LOGICAL,199)
    redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_nor_q <= not (redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_notEnable_q or redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_sticky_ena_q);

    -- redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_cmpReg(REG,197)
    redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_sticky_ena(REG,200)
    redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_nor_q = "1") THEN
                redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_enaAnd(LOGICAL,201)
    redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_enaAnd_q <= redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_sticky_ena_q and VCC_q;

    -- redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_rdcnt(COUNTER,195)
    -- low=0, high=1, step=1, init=0
    redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_rdcnt_i <= redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_rdcnt_i, 1)));

    -- redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_wraddr(REG,196)
    redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_wraddr_q <= STD_LOGIC_VECTOR(redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem(DUALMEM,194)
    redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_ia <= STD_LOGIC_VECTOR(i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b);
    redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_aa <= redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_wraddr_q;
    redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_ab <= redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_rdcnt_q;
    redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_reset0 <= not (resetn);
    redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_dmem : altera_syncram
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
        clocken1 => redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_reset0,
        clock1 => clock,
        address_a => redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_aa,
        data_a => redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_ab,
        q_b => redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_iq
    );
    redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_q <= redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_iq(17 downto 0);

    -- redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_outputreg(DELAY,193)
    redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_mem_q, xout => redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_outputreg_q, clk => clock, aclr => resetn );

    -- i_clpst_processfpga_processfpga3006_mult_x_im0_add_1(ADD,151)@6 + 1
    i_clpst_processfpga_processfpga3006_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & redist0_i_clpst_processfpga_processfpga3006_mult_x_bs1_merged_bit_select_b_4_outputreg_q);
    i_clpst_processfpga_processfpga3006_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_clpst_processfpga_processfpga3006_mult_x_im0_shift0_q);
    i_clpst_processfpga_processfpga3006_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clpst_processfpga_processfpga3006_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clpst_processfpga_processfpga3006_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpst_processfpga_processfpga3006_mult_x_im0_add_1_a) + UNSIGNED(i_clpst_processfpga_processfpga3006_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_clpst_processfpga_processfpga3006_mult_x_im0_add_1_q <= i_clpst_processfpga_processfpga3006_mult_x_im0_add_1_o(19 downto 0);

    -- i_clpst_processfpga_processfpga3006_mult_x_im0_shift2(BITSHIFT,152)@7
    i_clpst_processfpga_processfpga3006_mult_x_im0_shift2_qint <= i_clpst_processfpga_processfpga3006_mult_x_im0_add_1_q & "00";
    i_clpst_processfpga_processfpga3006_mult_x_im0_shift2_q <= i_clpst_processfpga_processfpga3006_mult_x_im0_shift2_qint(21 downto 0);

    -- i_clpst_processfpga_processfpga3006_mult_x_join_13(BITJOIN,124)@7
    i_clpst_processfpga_processfpga3006_mult_x_join_13_q <= i_clpst_processfpga_processfpga3006_mult_x_align_12_q & i_clpst_processfpga_processfpga3006_mult_x_im0_shift2_q;

    -- i_clpst_processfpga_processfpga3006_mult_x_result_add_0_0(ADD,128)@7
    i_clpst_processfpga_processfpga3006_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_clpst_processfpga_processfpga3006_mult_x_join_13_q);
    i_clpst_processfpga_processfpga3006_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_clpst_processfpga_processfpga3006_mult_x_join_16_q);
    i_clpst_processfpga_processfpga3006_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpst_processfpga_processfpga3006_mult_x_result_add_0_0_a) + UNSIGNED(i_clpst_processfpga_processfpga3006_mult_x_result_add_0_0_b));
    i_clpst_processfpga_processfpga3006_mult_x_result_add_0_0_q <= i_clpst_processfpga_processfpga3006_mult_x_result_add_0_0_o(68 downto 0);

    -- i_clpst_processfpga_processfpga3006_mult_extender_x(BITJOIN,35)@7
    i_clpst_processfpga_processfpga3006_mult_extender_x_q <= i_clpst_processfpga_processfpga3006_mult_multconst_x_q & i_clpst_processfpga_processfpga3006_mult_x_result_add_0_0_q(67 downto 0);

    -- i_clpst_processfpga_processfpga3006_trunc_sel_x(BITSELECT,37)@7
    i_clpst_processfpga_processfpga3006_trunc_sel_x_b <= i_clpst_processfpga_processfpga3006_mult_extender_x_q(63 downto 0);

    -- redist15_i_clpst_processfpga_processfpga3006_trunc_sel_x_b_1(DELAY,190)
    redist15_i_clpst_processfpga_processfpga3006_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clpst_processfpga_processfpga3006_trunc_sel_x_b, xout => redist15_i_clpst_processfpga_processfpga3006_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer62_processfpga(BLACKBOX,104)@0
    -- in in_i_dependence@8
    -- in in_valid_in@8
    -- out out_buffer_out@8
    -- out out_valid_out@8
    thei_syncbuf_localneurons_sync_buffer62_processfpga : i_syncbuf_localneurons_sync_buffer62_processfpga3004
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_7_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer62_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_clpst_processfpga_processfpga3006_add_x(ADD,38)@8
    i_clpst_processfpga_processfpga3006_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer62_processfpga_out_buffer_out);
    i_clpst_processfpga_processfpga3006_add_x_b <= STD_LOGIC_VECTOR("0" & redist15_i_clpst_processfpga_processfpga3006_trunc_sel_x_b_1_q);
    i_clpst_processfpga_processfpga3006_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpst_processfpga_processfpga3006_add_x_a) + UNSIGNED(i_clpst_processfpga_processfpga3006_add_x_b));
    i_clpst_processfpga_processfpga3006_add_x_q <= i_clpst_processfpga_processfpga3006_add_x_o(64 downto 0);

    -- i_clpst_processfpga_processfpga3006_dupName_0_trunc_sel_x(BITSELECT,29)@8
    i_clpst_processfpga_processfpga3006_dupName_0_trunc_sel_x_b <= i_clpst_processfpga_processfpga3006_add_x_q(63 downto 0);

    -- redist17_i_clpst_processfpga_processfpga3006_dupName_0_trunc_sel_x_b_1(DELAY,192)
    redist17_i_clpst_processfpga_processfpga3006_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clpst_processfpga_processfpga3006_dupName_0_trunc_sel_x_b, xout => redist17_i_clpst_processfpga_processfpga3006_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_clpst_processfpga_processfpga3006_dupName_0_add_x(ADD,32)@9
    i_clpst_processfpga_processfpga3006_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist17_i_clpst_processfpga_processfpga3006_dupName_0_trunc_sel_x_b_1_q);
    i_clpst_processfpga_processfpga3006_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_clpst_processfpga_processfpga3006_c_i64_7gr_x_q);
    i_clpst_processfpga_processfpga3006_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpst_processfpga_processfpga3006_dupName_0_add_x_a) + UNSIGNED(i_clpst_processfpga_processfpga3006_dupName_0_add_x_b));
    i_clpst_processfpga_processfpga3006_dupName_0_add_x_q <= i_clpst_processfpga_processfpga3006_dupName_0_add_x_o(64 downto 0);

    -- i_clpst_processfpga_processfpga3006_dupName_1_trunc_sel_x(BITSELECT,30)@9
    i_clpst_processfpga_processfpga3006_dupName_1_trunc_sel_x_b <= i_clpst_processfpga_processfpga3006_dupName_0_add_x_q(63 downto 0);

    -- redist16_i_clpst_processfpga_processfpga3006_dupName_1_trunc_sel_x_b_1(DELAY,191)
    redist16_i_clpst_processfpga_processfpga3006_dupName_1_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clpst_processfpga_processfpga3006_dupName_1_trunc_sel_x_b, xout => redist16_i_clpst_processfpga_processfpga3006_dupName_1_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_normls_gep730_processfpga_processfpga3007_add_x(ADD,60)@10
    i_normls_gep730_processfpga_processfpga3007_add_x_a <= STD_LOGIC_VECTOR("0" & redist16_i_clpst_processfpga_processfpga3006_dupName_1_trunc_sel_x_b_1_q);
    i_normls_gep730_processfpga_processfpga3007_add_x_b <= STD_LOGIC_VECTOR("0" & i_normls_gep730_processfpga_processfpga3007_c_i64_1gr_x_q);
    i_normls_gep730_processfpga_processfpga3007_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep730_processfpga_processfpga3007_add_x_a) + UNSIGNED(i_normls_gep730_processfpga_processfpga3007_add_x_b));
    i_normls_gep730_processfpga_processfpga3007_add_x_q <= i_normls_gep730_processfpga_processfpga3007_add_x_o(64 downto 0);

    -- i_normls_gep730_processfpga_processfpga3007_trunc_sel_x(BITSELECT,59)@10
    i_normls_gep730_processfpga_processfpga3007_trunc_sel_x_b <= i_normls_gep730_processfpga_processfpga3007_add_x_q(63 downto 0);

    -- c_i8_0gr(CONSTANT,75)
    c_i8_0gr_q <= "00000000";

    -- i_store_memdep_50_processfpga_aunroll_x(BLACKBOX,63)@10
    -- out out_memdep_50_avm_address@20000000
    -- out out_memdep_50_avm_burstcount@20000000
    -- out out_memdep_50_avm_byteenable@20000000
    -- out out_memdep_50_avm_enable@20000000
    -- out out_memdep_50_avm_read@20000000
    -- out out_memdep_50_avm_write@20000000
    -- out out_memdep_50_avm_writedata@20000000
    -- out out_o_stall@11
    -- out out_o_valid@11
    -- out out_o_writeack@11
    thei_store_memdep_50_processfpga_aunroll_x : i_store_memdep_50_processfpga3012
    PORT MAP (
        in_i_writedata_0 => i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_o_readdata_2,
        in_i_writedata_1 => c_i8_0gr_q,
        in_i_writedata_2 => c_i8_0gr_q,
        in_i_writedata_3 => c_i8_0gr_q,
        in_flush => in_flush,
        in_i_address => i_normls_gep730_processfpga_processfpga3007_trunc_sel_x_b,
        in_i_byteenable => i_ffwd_dst_memcoalesce_localneurons_or_byte_en_2173610_processfpga_out_dest_data_out_172_0,
        in_i_predicate => i_ffwd_dst_cmp211253359_processfpga_out_dest_data_out_14_0,
        in_i_stall => GND_q,
        in_i_valid => redist10_sync_in_aunroll_x_in_i_valid_9_q,
        in_memdep_50_avm_readdata => in_memdep_50_avm_readdata,
        in_memdep_50_avm_readdatavalid => in_memdep_50_avm_readdatavalid,
        in_memdep_50_avm_waitrequest => in_memdep_50_avm_waitrequest,
        in_memdep_50_avm_writeack => in_memdep_50_avm_writeack,
        out_memdep_50_avm_address => i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_address,
        out_memdep_50_avm_burstcount => i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_burstcount,
        out_memdep_50_avm_byteenable => i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_byteenable,
        out_memdep_50_avm_enable => i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_enable,
        out_memdep_50_avm_read => i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_read,
        out_memdep_50_avm_write => i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_write,
        out_memdep_50_avm_writedata => i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_1_ext_sig_sync_out_x(GPOUT,9)
    out_memdep_50_avm_address <= i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_address;
    out_memdep_50_avm_enable <= i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_enable;
    out_memdep_50_avm_read <= i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_read;
    out_memdep_50_avm_write <= i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_write;
    out_memdep_50_avm_writedata <= i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_writedata;
    out_memdep_50_avm_byteenable <= i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_byteenable;
    out_memdep_50_avm_burstcount <= i_store_memdep_50_processfpga_aunroll_x_out_memdep_50_avm_burstcount;

    -- i_ffwd_dst_cmp211253358_processfpga(BLACKBOX,87)@10
    thei_ffwd_dst_cmp211253358_processfpga : i_ffwd_dst_cmp211253358_processfpga3014
    PORT MAP (
        in_intel_reserved_ffwd_14_0 => in_intel_reserved_ffwd_14_0,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_14_0 => i_ffwd_dst_cmp211253358_processfpga_out_dest_data_out_14_0,
        clock => clock,
        resetn => resetn
    );

    -- redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_notEnable(LOGICAL,238)
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_nor(LOGICAL,239)
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_nor_q <= not (redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_notEnable_q or redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_sticky_ena_q);

    -- redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_last(CONSTANT,235)
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_last_q <= "01";

    -- redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_cmp(LOGICAL,236)
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_cmp_q <= "1" WHEN redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_last_q = redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_q ELSE "0";

    -- redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_cmpReg(REG,237)
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_cmpReg_q <= STD_LOGIC_VECTOR(redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_sticky_ena(REG,240)
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_nor_q = "1") THEN
                redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_enaAnd(LOGICAL,241)
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_enaAnd_q <= redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_sticky_ena_q and VCC_q;

    -- redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt(COUNTER,233)
    -- low=0, high=2, step=1, init=0
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_eq <= '1';
            ELSE
                redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_eq <= '0';
            END IF;
            IF (redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_eq = '1') THEN
                redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_i <= redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_i + 2;
            ELSE
                redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_i <= redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_i, 2)));

    -- redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_inputreg(DELAY,231)
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_inputreg : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b, xout => redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_inputreg_q, clk => clock, aclr => resetn );

    -- redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_wraddr(REG,234)
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_wraddr_q <= STD_LOGIC_VECTOR(redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem(DUALMEM,232)
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_ia <= STD_LOGIC_VECTOR(redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_inputreg_q);
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_aa <= redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_wraddr_q;
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_ab <= redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_rdcnt_q;
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_reset0 <= not (resetn);
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 64,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 64,
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
        clocken1 => redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_reset0,
        clock1 => clock,
        address_a => redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_aa,
        data_a => redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_ab,
        q_b => redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_iq
    );
    redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_q <= redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_iq(63 downto 0);

    -- i_store_memdep_51_processfpga_aunroll_x(BLACKBOX,64)@10
    -- out out_memdep_51_avm_address@20000000
    -- out out_memdep_51_avm_burstcount@20000000
    -- out out_memdep_51_avm_byteenable@20000000
    -- out out_memdep_51_avm_enable@20000000
    -- out out_memdep_51_avm_read@20000000
    -- out out_memdep_51_avm_write@20000000
    -- out out_memdep_51_avm_writedata@20000000
    -- out out_o_stall@11
    -- out out_o_valid@11
    -- out out_o_writeack@11
    thei_store_memdep_51_processfpga_aunroll_x : i_store_memdep_51_processfpga3016
    PORT MAP (
        in_i_writedata_0 => c_i8_0gr_q,
        in_i_writedata_1 => c_i8_0gr_q,
        in_i_writedata_2 => c_i8_0gr_q,
        in_i_writedata_3 => i_load_memcoalesce_localneurons_load_0147_processfpga_aunroll_x_out_o_readdata_1,
        in_flush => in_flush,
        in_i_address => redist13_i_memcoalesce_localneurons_gep_0144_processfpga_processfpga2999_dupName_1_trunc_sel_x_b_5_mem_q,
        in_i_predicate => i_ffwd_dst_cmp211253358_processfpga_out_dest_data_out_14_0,
        in_i_stall => GND_q,
        in_i_valid => redist10_sync_in_aunroll_x_in_i_valid_9_q,
        in_memdep_51_avm_readdata => in_memdep_51_avm_readdata,
        in_memdep_51_avm_readdatavalid => in_memdep_51_avm_readdatavalid,
        in_memdep_51_avm_waitrequest => in_memdep_51_avm_waitrequest,
        in_memdep_51_avm_writeack => in_memdep_51_avm_writeack,
        out_memdep_51_avm_address => i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_address,
        out_memdep_51_avm_burstcount => i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_burstcount,
        out_memdep_51_avm_byteenable => i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_byteenable,
        out_memdep_51_avm_enable => i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_enable,
        out_memdep_51_avm_read => i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_read,
        out_memdep_51_avm_write => i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_write,
        out_memdep_51_avm_writedata => i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_2_ext_sig_sync_out_x(GPOUT,11)
    out_memdep_51_avm_address <= i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_address;
    out_memdep_51_avm_enable <= i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_enable;
    out_memdep_51_avm_read <= i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_read;
    out_memdep_51_avm_write <= i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_write;
    out_memdep_51_avm_writedata <= i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_writedata;
    out_memdep_51_avm_byteenable <= i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_byteenable;
    out_memdep_51_avm_burstcount <= i_store_memdep_51_processfpga_aunroll_x_out_memdep_51_avm_burstcount;

    -- redist11_sync_in_aunroll_x_in_i_valid_10(DELAY,186)
    redist11_sync_in_aunroll_x_in_i_valid_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist10_sync_in_aunroll_x_in_i_valid_9_q, xout => redist11_sync_in_aunroll_x_in_i_valid_10_q, clk => clock, aclr => resetn );

    -- redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_notEnable(LOGICAL,227)
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_nor(LOGICAL,228)
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_nor_q <= not (redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_notEnable_q or redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_sticky_ena_q);

    -- redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_last(CONSTANT,224)
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_last_q <= "0111";

    -- redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_cmp(LOGICAL,225)
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_cmp_q <= "1" WHEN redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_last_q = redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_q ELSE "0";

    -- redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_cmpReg(REG,226)
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_cmpReg_q <= STD_LOGIC_VECTOR(redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_cmp_q);
        END IF;
    END PROCESS;

    -- redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_sticky_ena(REG,229)
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_nor_q = "1") THEN
                redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_sticky_ena_q <= STD_LOGIC_VECTOR(redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_enaAnd(LOGICAL,230)
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_enaAnd_q <= redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_sticky_ena_q and VCC_q;

    -- redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt(COUNTER,222)
    -- low=0, high=8, step=1, init=0
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_i = TO_UNSIGNED(7, 4)) THEN
                redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_eq <= '1';
            ELSE
                redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_eq <= '0';
            END IF;
            IF (redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_eq = '1') THEN
                redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_i <= redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_i + 8;
            ELSE
                redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_i <= redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_i, 4)));

    -- i_acl_push_i32_acl_hw_wg_id823_push66_processfpga(BLACKBOX,85)@1
    -- out out_feedback_out_66@20000000
    -- out out_feedback_valid_out_66@20000000
    thei_acl_push_i32_acl_hw_wg_id823_push66_processfpga : i_acl_push_i32_acl_hw_wg_id823_push66_processfpga3030
    PORT MAP (
        in_data_in => i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out,
        in_feedback_stall_in_66 => i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_feedback_stall_out_66,
        in_stall_in => GND_q,
        in_unnamed_processFPGA459 => i_unnamed_processfpga3021_q,
        in_valid_in => in_i_valid,
        out_feedback_out_66 => i_acl_push_i32_acl_hw_wg_id823_push66_processfpga_out_feedback_out_66,
        out_feedback_valid_out_66 => i_acl_push_i32_acl_hw_wg_id823_push66_processfpga_out_feedback_valid_out_66,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga(BLACKBOX,81)@1
    -- out out_feedback_stall_out_66@20000000
    thei_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga : i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga3028
    PORT MAP (
        in_data_in => in_c0_eni21135_2,
        in_dir => in_c0_eni21135_1,
        in_feedback_in_66 => i_acl_push_i32_acl_hw_wg_id823_push66_processfpga_out_feedback_out_66,
        in_feedback_valid_in_66 => i_acl_push_i32_acl_hw_wg_id823_push66_processfpga_out_feedback_valid_out_66,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out,
        out_feedback_stall_out_66 => i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_feedback_stall_out_66,
        clock => clock,
        resetn => resetn
    );

    -- redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_wraddr(REG,223)
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_wraddr_q <= "1000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_wraddr_q <= STD_LOGIC_VECTOR(redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem(DUALMEM,221)
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_ia <= STD_LOGIC_VECTOR(i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out);
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_aa <= redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_wraddr_q;
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_ab <= redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_rdcnt_q;
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_reset0 <= not (resetn);
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 4,
        numwords_a => 9,
        width_b => 32,
        widthad_b => 4,
        numwords_b => 9,
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
        clocken1 => redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_reset0,
        clock1 => clock,
        address_a => redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_aa,
        data_a => redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_ab,
        q_b => redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_iq
    );
    redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_q <= redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_iq(31 downto 0);

    -- redist4_i_unnamed_processfpga3021_q_10(DELAY,179)
    redist4_i_unnamed_processfpga3021_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 10, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga3021_q, xout => redist4_i_unnamed_processfpga3021_q_10_q, clk => clock, aclr => resetn );

    -- sync_out_aunroll_x(GPOUT,66)@11
    out_c0_exi21140_0 <= GND_q;
    out_c0_exi21140_1 <= redist4_i_unnamed_processfpga3021_q_10_q;
    out_c0_exi21140_2 <= redist5_i_acl_pop_i32_acl_hw_wg_id823_pop66_processfpga_out_data_out_10_mem_q;
    out_o_valid <= redist11_sync_in_aunroll_x_in_i_valid_10_q;

    -- i_acl_push_i1_notexitcond754_processfpga(BLACKBOX,84)@1
    -- out out_feedback_out_48@20000000
    -- out out_feedback_valid_out_48@20000000
    thei_acl_push_i1_notexitcond754_processfpga : i_acl_push_i1_notexitcond754_processfpga3026
    PORT MAP (
        in_data_in => i_unnamed_processfpga3021_q,
        in_feedback_stall_in_48 => i_acl_pipeline_keep_going753_processfpga_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_48 => i_acl_push_i1_notexitcond754_processfpga_out_feedback_out_48,
        out_feedback_valid_out_48 => i_acl_push_i1_notexitcond754_processfpga_out_feedback_valid_out_48,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going753_processfpga(BLACKBOX,78)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going753_processfpga : i_acl_pipeline_keep_going753_processfpga2989
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond754_processfpga_out_feedback_out_48,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond754_processfpga_out_feedback_valid_out_48,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going753_processfpga_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going753_processfpga_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going753_processfpga_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going753_processfpga_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,77)
    out_aclp_to_limiter_i_acl_pipeline_keep_going753_processfpga_exiting_valid_out <= i_acl_pipeline_keep_going753_processfpga_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going753_processfpga_exiting_stall_out <= i_acl_pipeline_keep_going753_processfpga_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,109)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going753_processfpga_out_pipeline_valid_out;

END normal;
