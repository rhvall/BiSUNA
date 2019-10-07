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

-- VHDL created from i_sfc_logic_c0_for_body56_i_processfpga_c0_enter1084_processfpga2522
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

entity i_sfc_logic_c0_for_body56_i_processfpga_c0_enter1084_processfpga2522 is
    port (
        in_memdep_43_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_43_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_43_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_43_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA354_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA354_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA354_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA354_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA354_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA354_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_processFPGA354_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA357_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_unnamed_processFPGA357_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA357_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA357_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_43_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_43_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_43_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_43_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_43_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_43_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_43_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_44_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_44_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_44_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_44_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA357_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA357_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA357_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA357_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA357_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_unnamed_processFPGA357_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_unnamed_processFPGA357_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_44_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_44_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_44_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_44_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_44_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_44_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_44_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21083_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21083_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21083_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_132_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_181_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_182_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_185_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_186_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi21088_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi21088_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi21088_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA354_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_processFPGA354_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA354_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA354_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going733_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going733_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body56_i_processfpga_c0_enter1084_processfpga2522;

architecture normal of i_sfc_logic_c0_for_body56_i_processfpga_c0_enter1084_processfpga2522 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_load_unnamed_processfpga354_processfpga2541 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA354_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_processFPGA354_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA354_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA354_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_readdata_1 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA354_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA354_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA354_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_unnamed_processFPGA354_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA354_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA354_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA354_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_44_processfpga2558 is
        port (
            in_i_writedata_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_i_writedata_1 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_44_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_44_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_44_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_44_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_44_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_44_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_44_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_44_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_44_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_44_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_44_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going733_processfpga2524 is
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


    component i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga2572 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_98 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_98 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_98 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_activecounter_3_i1332_pop96_processfpga2532 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_96 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_96 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_96 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_remainingcounter_3_i1331_pop97_processfpga2536 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_97 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_97 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_97 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i33_fpgaindvars_iv252_pop95_processfpga2528 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_95 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_feedback_valid_in_95 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_stall_out_95 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond734_processfpga2570 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_40 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_40 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_40 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_acl_hw_wg_id818_push98_processfpga2574 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_98 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA455 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_98 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_98 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_activecounter_3_i1332_push96_processfpga2566 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_96 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA455 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_96 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_96 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_remainingcounter_3_i1331_push97_processfpga2564 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_97 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA455 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_97 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_97 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i33_fpgaindvars_iv252_push95_processfpga2568 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_feedback_stall_in_95 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA455 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_out_95 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_feedback_valid_out_95 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_do_directly_for_body33_i_unifiedlatchblock_switch_select624_processfpga2530 is
        port (
            in_intel_reserved_ffwd_181_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_181_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_remainingcounter_2_i_replace_phi549_processfpga2534 is
        port (
            in_intel_reserved_ffwd_132_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_132_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga352_processfpga2526 is
        port (
            in_intel_reserved_ffwd_186_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_186_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga353_processfpga2539 is
        port (
            in_intel_reserved_ffwd_182_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_182_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga355_processfpga2546 is
        port (
            in_intel_reserved_ffwd_182_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_182_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga356_processfpga2552 is
        port (
            in_intel_reserved_ffwd_182_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_182_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga358_processfpga2556 is
        port (
            in_intel_reserved_ffwd_182_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_182_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga359_processfpga2561 is
        port (
            in_intel_reserved_ffwd_185_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_185_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_processfpga357_processfpga2554 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA357_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_unnamed_processFPGA357_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA357_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA357_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA357_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA357_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA357_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_unnamed_processFPGA357_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA357_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA357_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA357_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_43_processfpga2548 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_memdep_43_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_43_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_43_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_43_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_43_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_43_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_43_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_43_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_43_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_43_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_43_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_localneurons_sync_buffer72_processfpga2543 is
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
    signal bgTrunc_i_dec71_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_dec_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next253_processfpga_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_multconst_x_q : STD_LOGIC_VECTOR (61 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_multconst_x_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_c_i64_4gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom57_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom59_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom66_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_processfpga354_processfpga_vunroll_x_out_o_readdata_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga354_processfpga_vunroll_x_out_o_readdata_1 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_undef_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i33_undef_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i8_1gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pipeline_keep_going733_processfpga_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going733_processfpga_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going733_processfpga_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going733_processfpga_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_feedback_stall_out_98 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_activecounter_3_i1332_pop96_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_activecounter_3_i1332_pop96_processfpga_out_feedback_stall_out_96 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_remainingcounter_3_i1331_pop97_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_remainingcounter_3_i1331_pop97_processfpga_out_feedback_stall_out_97 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv252_pop95_processfpga_out_data_out : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv252_pop95_processfpga_out_feedback_stall_out_95 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond734_processfpga_out_feedback_out_40 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond734_processfpga_out_feedback_valid_out_40 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id818_push98_processfpga_out_feedback_out_98 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id818_push98_processfpga_out_feedback_valid_out_98 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_activecounter_3_i1332_push96_processfpga_out_feedback_out_96 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_activecounter_3_i1332_push96_processfpga_out_feedback_valid_out_96 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_remainingcounter_3_i1331_push97_processfpga_out_feedback_out_97 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_remainingcounter_3_i1331_push97_processfpga_out_feedback_valid_out_97 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv252_push95_processfpga_out_feedback_out_95 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv252_push95_processfpga_out_feedback_valid_out_95 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_activecounter_3_i1332_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_activecounter_3_i1332_replace_phi_processfpga_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx58_i_processfpga_vt_const_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal i_arrayidx58_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx58_i_processfpga_vt_select_63_b : STD_LOGIC_VECTOR (61 downto 0);
    signal i_arrayidx65_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx65_i_processfpga_vt_select_63_b : STD_LOGIC_VECTOR (61 downto 0);
    signal i_arrayidx67_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx67_i_processfpga_vt_select_63_b : STD_LOGIC_VECTOR (62 downto 0);
    signal i_dec71_i_processfpga_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec71_i_processfpga_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec71_i_processfpga_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec71_i_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec_i_processfpga_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec_i_processfpga_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec_i_processfpga_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec_i_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_exitcond254_processfpga_a : STD_LOGIC_VECTOR (34 downto 0);
    signal i_exitcond254_processfpga_b : STD_LOGIC_VECTOR (34 downto 0);
    signal i_exitcond254_processfpga_o : STD_LOGIC_VECTOR (34 downto 0);
    signal i_exitcond254_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_do_directly_for_body33_i_unifiedlatchblock_switch_select624_processfpga_out_dest_data_out_181_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_remainingcounter_2_i_replace_phi549_processfpga_out_dest_data_out_132_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_processfpga352_processfpga_out_dest_data_out_186_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_ffwd_dst_unnamed_processfpga353_processfpga_out_dest_data_out_182_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga355_processfpga_out_dest_data_out_182_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga356_processfpga_out_dest_data_out_182_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga358_processfpga_out_dest_data_out_182_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga359_processfpga_out_dest_data_out_185_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv252_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv252_replace_phi_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_fpgaindvars_iv_next253_processfpga_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next253_processfpga_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next253_processfpga_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next253_processfpga_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_idxprom59_i_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom59_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom59_i_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga357_processfpga_out_o_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_remainingcounter_3_i1331_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_remainingcounter_3_i1331_replace_phi_processfpga_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_43_processfpga_out_memdep_43_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_43_processfpga_out_memdep_43_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_43_processfpga_out_memdep_43_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_store_memdep_43_processfpga_out_memdep_43_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_43_processfpga_out_memdep_43_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_43_processfpga_out_memdep_43_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_43_processfpga_out_memdep_43_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_localneurons_sync_buffer72_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga2563_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_join_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_14_q : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_14_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_join_16_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx65_i_processfpga_processfpga2550_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx67_i_processfpga_processfpga2551_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_unnamed_processfpga2563_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_unnamed_processfpga2563_q_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_aunroll_x_in_i_valid_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_aunroll_x_in_i_valid_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_sync_in_aunroll_x_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_clfired61_i_processfpga_processfpga2545_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist11_i_clfired61_i_processfpga_processfpga2545_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_inputreg_q : STD_LOGIC_VECTOR (61 downto 0);
    signal redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_reset0 : std_logic;
    signal redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_ia : STD_LOGIC_VECTOR (61 downto 0);
    signal redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_iq : STD_LOGIC_VECTOR (61 downto 0);
    signal redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_q : STD_LOGIC_VECTOR (61 downto 0);
    signal redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_rdcnt_i : signal is true;
    signal redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_sticky_ena_q : signal is true;
    signal redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_reset0 : std_logic;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_i : signal is true;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_eq : std_logic;
    attribute preserve of redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_eq : signal is true;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_sticky_ena_q : signal is true;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist5_sync_in_aunroll_x_in_i_valid_1(DELAY,264)
    redist5_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist5_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_ffwd_dst_unnamed_processfpga353_processfpga(BLACKBOX,129)@2
    thei_ffwd_dst_unnamed_processfpga353_processfpga : i_ffwd_dst_unnamed_processfpga353_processfpga2539
    PORT MAP (
        in_intel_reserved_ffwd_182_0 => in_intel_reserved_ffwd_182_0,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_182_0 => i_ffwd_dst_unnamed_processfpga353_processfpga_out_dest_data_out_182_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx58_i_processfpga_processfpga2538_mult_multconst_x(CONSTANT,41)
    i_arrayidx58_i_processfpga_processfpga2538_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_do_directly_for_body33_i_unifiedlatchblock_switch_select624_processfpga(BLACKBOX,126)@1
    thei_ffwd_dst_do_directly_for_body33_i_unifiedlatchblock_switch_select624_processfpga : i_ffwd_dst_do_directly_for_body33_i_unifiedlatchblock_switch_select624_processfpga2530
    PORT MAP (
        in_intel_reserved_ffwd_181_0 => in_intel_reserved_ffwd_181_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_181_0 => i_ffwd_dst_do_directly_for_body33_i_unifiedlatchblock_switch_select624_processfpga_out_dest_data_out_181_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga359_processfpga(BLACKBOX,133)@1
    thei_ffwd_dst_unnamed_processfpga359_processfpga : i_ffwd_dst_unnamed_processfpga359_processfpga2561
    PORT MAP (
        in_intel_reserved_ffwd_185_0 => in_intel_reserved_ffwd_185_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_185_0 => i_ffwd_dst_unnamed_processfpga359_processfpga_out_dest_data_out_185_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga352_processfpga(BLACKBOX,128)@1
    thei_ffwd_dst_unnamed_processfpga352_processfpga : i_ffwd_dst_unnamed_processfpga352_processfpga2526
    PORT MAP (
        in_intel_reserved_ffwd_186_0 => in_intel_reserved_ffwd_186_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_186_0 => i_ffwd_dst_unnamed_processfpga352_processfpga_out_dest_data_out_186_0,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv_next253_processfpga(ADD,135)@1
    i_fpgaindvars_iv_next253_processfpga_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv252_replace_phi_processfpga_q);
    i_fpgaindvars_iv_next253_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_fpgaindvars_iv_next253_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next253_processfpga_a) + UNSIGNED(i_fpgaindvars_iv_next253_processfpga_b));
    i_fpgaindvars_iv_next253_processfpga_q <= i_fpgaindvars_iv_next253_processfpga_o(33 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next253_processfpga_sel_x(BITSELECT,4)@1
    bgTrunc_i_fpgaindvars_iv_next253_processfpga_sel_x_b <= i_fpgaindvars_iv_next253_processfpga_q(32 downto 0);

    -- i_acl_push_i33_fpgaindvars_iv252_push95_processfpga(BLACKBOX,112)@1
    -- out out_feedback_out_95@20000000
    -- out out_feedback_valid_out_95@20000000
    thei_acl_push_i33_fpgaindvars_iv252_push95_processfpga : i_acl_push_i33_fpgaindvars_iv252_push95_processfpga2568
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next253_processfpga_sel_x_b,
        in_feedback_stall_in_95 => i_acl_pop_i33_fpgaindvars_iv252_pop95_processfpga_out_feedback_stall_out_95,
        in_stall_in => GND_q,
        in_unnamed_processFPGA455 => i_unnamed_processfpga2563_q,
        in_valid_in => in_i_valid,
        out_feedback_out_95 => i_acl_push_i33_fpgaindvars_iv252_push95_processfpga_out_feedback_out_95,
        out_feedback_valid_out_95 => i_acl_push_i33_fpgaindvars_iv252_push95_processfpga_out_feedback_valid_out_95,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_undef(CONSTANT,99)
    c_i33_undef_q <= "000000000000000000000000000000000";

    -- i_acl_pop_i33_fpgaindvars_iv252_pop95_processfpga(BLACKBOX,107)@1
    -- out out_feedback_stall_out_95@20000000
    thei_acl_pop_i33_fpgaindvars_iv252_pop95_processfpga : i_acl_pop_i33_fpgaindvars_iv252_pop95_processfpga2528
    PORT MAP (
        in_data_in => c_i33_undef_q,
        in_dir => in_c0_eni21083_1,
        in_feedback_in_95 => i_acl_push_i33_fpgaindvars_iv252_push95_processfpga_out_feedback_out_95,
        in_feedback_valid_in_95 => i_acl_push_i33_fpgaindvars_iv252_push95_processfpga_out_feedback_valid_out_95,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i33_fpgaindvars_iv252_pop95_processfpga_out_data_out,
        out_feedback_stall_out_95 => i_acl_pop_i33_fpgaindvars_iv252_pop95_processfpga_out_feedback_stall_out_95,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv252_replace_phi_processfpga(MUX,134)@1
    i_fpgaindvars_iv252_replace_phi_processfpga_s <= in_c0_eni21083_1;
    i_fpgaindvars_iv252_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv252_replace_phi_processfpga_s, i_acl_pop_i33_fpgaindvars_iv252_pop95_processfpga_out_data_out, i_ffwd_dst_unnamed_processfpga352_processfpga_out_dest_data_out_186_0)
    BEGIN
        CASE (i_fpgaindvars_iv252_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv252_replace_phi_processfpga_q <= i_acl_pop_i33_fpgaindvars_iv252_pop95_processfpga_out_data_out;
            WHEN "1" => i_fpgaindvars_iv252_replace_phi_processfpga_q <= i_ffwd_dst_unnamed_processfpga352_processfpga_out_dest_data_out_186_0;
            WHEN OTHERS => i_fpgaindvars_iv252_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i33_1gr(CONSTANT,98)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- i_exitcond254_processfpga(COMPARE,125)@1
    i_exitcond254_processfpga_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => c_i33_1gr_q(32)) & c_i33_1gr_q));
    i_exitcond254_processfpga_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => i_fpgaindvars_iv252_replace_phi_processfpga_q(32)) & i_fpgaindvars_iv252_replace_phi_processfpga_q));
    i_exitcond254_processfpga_o <= STD_LOGIC_VECTOR(SIGNED(i_exitcond254_processfpga_a) - SIGNED(i_exitcond254_processfpga_b));
    i_exitcond254_processfpga_c(0) <= i_exitcond254_processfpga_o(34);

    -- i_unnamed_processfpga2563(LOGICAL,148)@1
    i_unnamed_processfpga2563_q <= i_exitcond254_processfpga_c and i_ffwd_dst_unnamed_processfpga359_processfpga_out_dest_data_out_185_0;

    -- redist0_i_unnamed_processfpga2563_q_1(DELAY,259)
    redist0_i_unnamed_processfpga2563_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga2563_q, xout => redist0_i_unnamed_processfpga2563_q_1_q, clk => clock, aclr => resetn );

    -- c_i32_1gr(CONSTANT,96)
    c_i32_1gr_q <= "11111111111111111111111111111111";

    -- i_dec71_i_processfpga(ADD,123)@2
    i_dec71_i_processfpga_a <= STD_LOGIC_VECTOR("0" & i_activecounter_3_i1332_replace_phi_processfpga_q);
    i_dec71_i_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_dec71_i_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_dec71_i_processfpga_a) + UNSIGNED(i_dec71_i_processfpga_b));
    i_dec71_i_processfpga_q <= i_dec71_i_processfpga_o(32 downto 0);

    -- bgTrunc_i_dec71_i_processfpga_sel_x(BITSELECT,2)@2
    bgTrunc_i_dec71_i_processfpga_sel_x_b <= i_dec71_i_processfpga_q(31 downto 0);

    -- i_acl_push_i32_activecounter_3_i1332_push96_processfpga(BLACKBOX,110)@2
    -- out out_feedback_out_96@20000000
    -- out out_feedback_valid_out_96@20000000
    thei_acl_push_i32_activecounter_3_i1332_push96_processfpga : i_acl_push_i32_activecounter_3_i1332_push96_processfpga2566
    PORT MAP (
        in_data_in => bgTrunc_i_dec71_i_processfpga_sel_x_b,
        in_feedback_stall_in_96 => i_acl_pop_i32_activecounter_3_i1332_pop96_processfpga_out_feedback_stall_out_96,
        in_stall_in => GND_q,
        in_unnamed_processFPGA455 => redist0_i_unnamed_processfpga2563_q_1_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_96 => i_acl_push_i32_activecounter_3_i1332_push96_processfpga_out_feedback_out_96,
        out_feedback_valid_out_96 => i_acl_push_i32_activecounter_3_i1332_push96_processfpga_out_feedback_valid_out_96,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_undef(CONSTANT,97)
    c_i32_undef_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_activecounter_3_i1332_pop96_processfpga(BLACKBOX,105)@1
    -- out out_feedback_stall_out_96@20000000
    thei_acl_pop_i32_activecounter_3_i1332_pop96_processfpga : i_acl_pop_i32_activecounter_3_i1332_pop96_processfpga2532
    PORT MAP (
        in_data_in => c_i32_undef_q,
        in_dir => in_c0_eni21083_1,
        in_feedback_in_96 => i_acl_push_i32_activecounter_3_i1332_push96_processfpga_out_feedback_out_96,
        in_feedback_valid_in_96 => i_acl_push_i32_activecounter_3_i1332_push96_processfpga_out_feedback_valid_out_96,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_activecounter_3_i1332_pop96_processfpga_out_data_out,
        out_feedback_stall_out_96 => i_acl_pop_i32_activecounter_3_i1332_pop96_processfpga_out_feedback_stall_out_96,
        clock => clock,
        resetn => resetn
    );

    -- i_activecounter_3_i1332_replace_phi_processfpga(MUX,113)@1 + 1
    i_activecounter_3_i1332_replace_phi_processfpga_s <= in_c0_eni21083_1;
    i_activecounter_3_i1332_replace_phi_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_activecounter_3_i1332_replace_phi_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_activecounter_3_i1332_replace_phi_processfpga_s) IS
                WHEN "0" => i_activecounter_3_i1332_replace_phi_processfpga_q <= i_acl_pop_i32_activecounter_3_i1332_pop96_processfpga_out_data_out;
                WHEN "1" => i_activecounter_3_i1332_replace_phi_processfpga_q <= i_ffwd_dst_do_directly_for_body33_i_unifiedlatchblock_switch_select624_processfpga_out_dest_data_out_181_0;
                WHEN OTHERS => i_activecounter_3_i1332_replace_phi_processfpga_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_idxprom57_i_processfpga_sel_x(BITSELECT,81)@2
    i_idxprom57_i_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(i_activecounter_3_i1332_replace_phi_processfpga_q(31 downto 0)), 64)));

    -- i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select(BITSELECT,256)@2
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_b <= i_idxprom57_i_processfpga_sel_x_b(17 downto 0);
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_c <= i_idxprom57_i_processfpga_sel_x_b(63 downto 54);
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_d <= i_idxprom57_i_processfpga_sel_x_b(35 downto 18);
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_e <= i_idxprom57_i_processfpga_sel_x_b(53 downto 36);

    -- i_arrayidx58_i_processfpga_processfpga2538_mult_x_im3_shift0(BITSHIFT,233)@2
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_im3_shift0_qint <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_im3_shift0_q <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_15(BITSHIFT,169)@2
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx58_i_processfpga_processfpga2538_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_15_q <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx58_i_processfpga_processfpga2538_mult_x_im6_shift0(BITSHIFT,234)@2
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_im6_shift0_qint <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_im6_shift0_q <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_14(BITSHIFT,168)@2
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx58_i_processfpga_processfpga2538_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_14_q <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx58_i_processfpga_processfpga2538_mult_x_join_16(BITJOIN,170)@2
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_join_16_q <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_15_q & i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_14_q;

    -- i_arrayidx58_i_processfpga_processfpga2538_mult_x_im9_shift0(BITSHIFT,235)@2
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_im9_shift0_qint <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_im9_shift0_q <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_12(BITSHIFT,166)@2
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx58_i_processfpga_processfpga2538_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_12_q <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx58_i_processfpga_processfpga2538_mult_x_im0_shift0(BITSHIFT,232)@2
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_im0_shift0_qint <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_im0_shift0_q <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx58_i_processfpga_processfpga2538_mult_x_join_13(BITJOIN,167)@2
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_join_13_q <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx58_i_processfpga_processfpga2538_mult_x_im0_shift0_q);

    -- i_arrayidx58_i_processfpga_processfpga2538_mult_x_result_add_0_0(ADD,171)@2
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx58_i_processfpga_processfpga2538_mult_x_join_13_q);
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx58_i_processfpga_processfpga2538_mult_x_join_16_q);
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx58_i_processfpga_processfpga2538_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx58_i_processfpga_processfpga2538_mult_x_result_add_0_0_b));
    i_arrayidx58_i_processfpga_processfpga2538_mult_x_result_add_0_0_q <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx58_i_processfpga_processfpga2538_mult_extender_x(BITJOIN,40)@2
    i_arrayidx58_i_processfpga_processfpga2538_mult_extender_x_q <= i_arrayidx58_i_processfpga_processfpga2538_mult_multconst_x_q & i_arrayidx58_i_processfpga_processfpga2538_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx58_i_processfpga_processfpga2538_trunc_sel_x(BITSELECT,42)@2
    i_arrayidx58_i_processfpga_processfpga2538_trunc_sel_x_b <= i_arrayidx58_i_processfpga_processfpga2538_mult_extender_x_q(63 downto 0);

    -- i_arrayidx58_i_processfpga_processfpga2538_dupName_0_trunc_sel_x(BITSELECT,37)@2
    i_arrayidx58_i_processfpga_processfpga2538_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_arrayidx58_i_processfpga_processfpga2538_trunc_sel_x_b);
    i_arrayidx58_i_processfpga_processfpga2538_dupName_0_trunc_sel_x_b <= i_arrayidx58_i_processfpga_processfpga2538_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_arrayidx58_i_processfpga_vt_select_63(BITSELECT,116)@2
    i_arrayidx58_i_processfpga_vt_select_63_b <= i_arrayidx58_i_processfpga_processfpga2538_dupName_0_trunc_sel_x_b(63 downto 2);

    -- i_arrayidx58_i_processfpga_vt_const_1(CONSTANT,114)
    i_arrayidx58_i_processfpga_vt_const_1_q <= "00";

    -- i_arrayidx58_i_processfpga_vt_join(BITJOIN,115)@2
    i_arrayidx58_i_processfpga_vt_join_q <= i_arrayidx58_i_processfpga_vt_select_63_b & i_arrayidx58_i_processfpga_vt_const_1_q;

    -- i_load_unnamed_processfpga354_processfpga_vunroll_x(BLACKBOX,84)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata_0@6
    -- out out_o_readdata_1@6
    -- out out_o_stall@5
    -- out out_o_valid@6
    -- out out_unnamed_processFPGA354_avm_address@20000000
    -- out out_unnamed_processFPGA354_avm_burstcount@20000000
    -- out out_unnamed_processFPGA354_avm_byteenable@20000000
    -- out out_unnamed_processFPGA354_avm_enable@20000000
    -- out out_unnamed_processFPGA354_avm_read@20000000
    -- out out_unnamed_processFPGA354_avm_write@20000000
    -- out out_unnamed_processFPGA354_avm_writedata@20000000
    thei_load_unnamed_processfpga354_processfpga_vunroll_x : i_load_unnamed_processfpga354_processfpga2541
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx58_i_processfpga_vt_join_q,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga353_processfpga_out_dest_data_out_182_0,
        in_i_stall => GND_q,
        in_i_valid => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        in_unnamed_processFPGA354_avm_readdata => in_unnamed_processFPGA354_avm_readdata,
        in_unnamed_processFPGA354_avm_readdatavalid => in_unnamed_processFPGA354_avm_readdatavalid,
        in_unnamed_processFPGA354_avm_waitrequest => in_unnamed_processFPGA354_avm_waitrequest,
        in_unnamed_processFPGA354_avm_writeack => in_unnamed_processFPGA354_avm_writeack,
        out_o_readdata_0 => i_load_unnamed_processfpga354_processfpga_vunroll_x_out_o_readdata_0,
        out_o_readdata_1 => i_load_unnamed_processfpga354_processfpga_vunroll_x_out_o_readdata_1,
        out_unnamed_processFPGA354_avm_address => i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_address,
        out_unnamed_processFPGA354_avm_burstcount => i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_burstcount,
        out_unnamed_processFPGA354_avm_byteenable => i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_byteenable,
        out_unnamed_processFPGA354_avm_enable => i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_enable,
        out_unnamed_processFPGA354_avm_read => i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_read,
        out_unnamed_processFPGA354_avm_write => i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_write,
        out_unnamed_processFPGA354_avm_writedata => i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,7)
    out_unnamed_processFPGA354_avm_address <= i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_address;
    out_unnamed_processFPGA354_avm_enable <= i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_enable;
    out_unnamed_processFPGA354_avm_read <= i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_read;
    out_unnamed_processFPGA354_avm_write <= i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_write;
    out_unnamed_processFPGA354_avm_writedata <= i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_writedata;
    out_unnamed_processFPGA354_avm_byteenable <= i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_byteenable;
    out_unnamed_processFPGA354_avm_burstcount <= i_load_unnamed_processfpga354_processfpga_vunroll_x_out_unnamed_processFPGA354_avm_burstcount;

    -- c_i8_1gr(CONSTANT,100)
    c_i8_1gr_q <= "00000001";

    -- redist6_sync_in_aunroll_x_in_i_valid_5(DELAY,265)
    redist6_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_sync_in_aunroll_x_in_i_valid_1_q, xout => redist6_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- redist7_sync_in_aunroll_x_in_i_valid_7(DELAY,266)
    redist7_sync_in_aunroll_x_in_i_valid_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_sync_in_aunroll_x_in_i_valid_5_q, xout => redist7_sync_in_aunroll_x_in_i_valid_7_q, clk => clock, aclr => resetn );

    -- redist8_sync_in_aunroll_x_in_i_valid_8(DELAY,267)
    redist8_sync_in_aunroll_x_in_i_valid_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_sync_in_aunroll_x_in_i_valid_7_q, xout => redist8_sync_in_aunroll_x_in_i_valid_8_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_unnamed_processfpga355_processfpga(BLACKBOX,130)@9
    thei_ffwd_dst_unnamed_processfpga355_processfpga : i_ffwd_dst_unnamed_processfpga355_processfpga2546
    PORT MAP (
        in_intel_reserved_ffwd_182_0 => in_intel_reserved_ffwd_182_0,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_8_q,
        out_dest_data_out_182_0 => i_ffwd_dst_unnamed_processfpga355_processfpga_out_dest_data_out_182_0,
        clock => clock,
        resetn => resetn
    );

    -- i_clfired61_i_processfpga_processfpga2545_c_i64_4gr_x(CONSTANT,78)
    i_clfired61_i_processfpga_processfpga2545_c_i64_4gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000100";

    -- i_clfired61_i_processfpga_processfpga2545_mult_multconst_x(CONSTANT,74)
    i_clfired61_i_processfpga_processfpga2545_mult_multconst_x_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_im3_shift0(BITSHIFT,247)@6
    i_clfired61_i_processfpga_processfpga2545_mult_x_im3_shift0_qint <= i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_c & "0";
    i_clfired61_i_processfpga_processfpga2545_mult_x_im3_shift0_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_im3_shift0_qint(10 downto 0);

    -- i_idxprom59_i_processfpga_vt_const_63(CONSTANT,139)
    i_idxprom59_i_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_idxprom59_i_processfpga_sel_x(BITSELECT,82)@6
    i_idxprom59_i_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(i_load_unnamed_processfpga354_processfpga_vunroll_x_out_o_readdata_0(15 downto 0)), 64));

    -- i_idxprom59_i_processfpga_vt_select_15(BITSELECT,141)@6
    i_idxprom59_i_processfpga_vt_select_15_b <= i_idxprom59_i_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom59_i_processfpga_vt_join(BITJOIN,140)@6
    i_idxprom59_i_processfpga_vt_join_q <= i_idxprom59_i_processfpga_vt_const_63_q & i_idxprom59_i_processfpga_vt_select_15_b;

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select(BITSELECT,258)@6
    i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_b <= i_idxprom59_i_processfpga_vt_join_q(17 downto 0);
    i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_c <= i_idxprom59_i_processfpga_vt_join_q(63 downto 54);
    i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_d <= i_idxprom59_i_processfpga_vt_join_q(35 downto 18);
    i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_e <= i_idxprom59_i_processfpga_vt_join_q(53 downto 36);

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_im3_add_1(ADD,248)@6 + 1
    i_clfired61_i_processfpga_processfpga2545_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_c);
    i_clfired61_i_processfpga_processfpga2545_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired61_i_processfpga_processfpga2545_mult_x_im3_shift0_q);
    i_clfired61_i_processfpga_processfpga2545_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired61_i_processfpga_processfpga2545_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired61_i_processfpga_processfpga2545_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired61_i_processfpga_processfpga2545_mult_x_im3_add_1_a) + UNSIGNED(i_clfired61_i_processfpga_processfpga2545_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_clfired61_i_processfpga_processfpga2545_mult_x_im3_add_1_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_im3_add_1_o(11 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_im3_shift2(BITSHIFT,249)@7
    i_clfired61_i_processfpga_processfpga2545_mult_x_im3_shift2_qint <= i_clfired61_i_processfpga_processfpga2545_mult_x_im3_add_1_q & "00";
    i_clfired61_i_processfpga_processfpga2545_mult_x_im3_shift2_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_im3_shift2_qint(13 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_align_15(BITSHIFT,223)@7
    i_clfired61_i_processfpga_processfpga2545_mult_x_align_15_qint <= i_clfired61_i_processfpga_processfpga2545_mult_x_im3_shift2_q & "00000000000000";
    i_clfired61_i_processfpga_processfpga2545_mult_x_align_15_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_align_15_qint(27 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_im6_shift0(BITSHIFT,250)@6
    i_clfired61_i_processfpga_processfpga2545_mult_x_im6_shift0_qint <= i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_d & "0";
    i_clfired61_i_processfpga_processfpga2545_mult_x_im6_shift0_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_im6_shift0_qint(18 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_im6_add_1(ADD,251)@6 + 1
    i_clfired61_i_processfpga_processfpga2545_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_d);
    i_clfired61_i_processfpga_processfpga2545_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired61_i_processfpga_processfpga2545_mult_x_im6_shift0_q);
    i_clfired61_i_processfpga_processfpga2545_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired61_i_processfpga_processfpga2545_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired61_i_processfpga_processfpga2545_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired61_i_processfpga_processfpga2545_mult_x_im6_add_1_a) + UNSIGNED(i_clfired61_i_processfpga_processfpga2545_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_clfired61_i_processfpga_processfpga2545_mult_x_im6_add_1_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_im6_add_1_o(19 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_im6_shift2(BITSHIFT,252)@7
    i_clfired61_i_processfpga_processfpga2545_mult_x_im6_shift2_qint <= i_clfired61_i_processfpga_processfpga2545_mult_x_im6_add_1_q & "00";
    i_clfired61_i_processfpga_processfpga2545_mult_x_im6_shift2_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_im6_shift2_qint(21 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_align_14(BITSHIFT,222)@7
    i_clfired61_i_processfpga_processfpga2545_mult_x_align_14_qint <= i_clfired61_i_processfpga_processfpga2545_mult_x_im6_shift2_q & "000000000000000000";
    i_clfired61_i_processfpga_processfpga2545_mult_x_align_14_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_align_14_qint(39 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_join_16(BITJOIN,224)@7
    i_clfired61_i_processfpga_processfpga2545_mult_x_join_16_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_align_15_q & i_clfired61_i_processfpga_processfpga2545_mult_x_align_14_q;

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_im9_shift0(BITSHIFT,253)@6
    i_clfired61_i_processfpga_processfpga2545_mult_x_im9_shift0_qint <= i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_e & "0";
    i_clfired61_i_processfpga_processfpga2545_mult_x_im9_shift0_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_im9_shift0_qint(18 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_im9_add_1(ADD,254)@6 + 1
    i_clfired61_i_processfpga_processfpga2545_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_e);
    i_clfired61_i_processfpga_processfpga2545_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired61_i_processfpga_processfpga2545_mult_x_im9_shift0_q);
    i_clfired61_i_processfpga_processfpga2545_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired61_i_processfpga_processfpga2545_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired61_i_processfpga_processfpga2545_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired61_i_processfpga_processfpga2545_mult_x_im9_add_1_a) + UNSIGNED(i_clfired61_i_processfpga_processfpga2545_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_clfired61_i_processfpga_processfpga2545_mult_x_im9_add_1_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_im9_add_1_o(19 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_im9_shift2(BITSHIFT,255)@7
    i_clfired61_i_processfpga_processfpga2545_mult_x_im9_shift2_qint <= i_clfired61_i_processfpga_processfpga2545_mult_x_im9_add_1_q & "00";
    i_clfired61_i_processfpga_processfpga2545_mult_x_im9_shift2_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_im9_shift2_qint(21 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_align_12(BITSHIFT,220)@7
    i_clfired61_i_processfpga_processfpga2545_mult_x_align_12_qint <= i_clfired61_i_processfpga_processfpga2545_mult_x_im9_shift2_q & "00000000000000";
    i_clfired61_i_processfpga_processfpga2545_mult_x_align_12_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_align_12_qint(35 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_im0_shift0(BITSHIFT,244)@6
    i_clfired61_i_processfpga_processfpga2545_mult_x_im0_shift0_qint <= i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_b & "0";
    i_clfired61_i_processfpga_processfpga2545_mult_x_im0_shift0_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_im0_shift0_qint(18 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_im0_add_1(ADD,245)@6 + 1
    i_clfired61_i_processfpga_processfpga2545_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_clfired61_i_processfpga_processfpga2545_mult_x_bs1_merged_bit_select_b);
    i_clfired61_i_processfpga_processfpga2545_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired61_i_processfpga_processfpga2545_mult_x_im0_shift0_q);
    i_clfired61_i_processfpga_processfpga2545_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired61_i_processfpga_processfpga2545_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired61_i_processfpga_processfpga2545_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired61_i_processfpga_processfpga2545_mult_x_im0_add_1_a) + UNSIGNED(i_clfired61_i_processfpga_processfpga2545_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_clfired61_i_processfpga_processfpga2545_mult_x_im0_add_1_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_im0_add_1_o(19 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_im0_shift2(BITSHIFT,246)@7
    i_clfired61_i_processfpga_processfpga2545_mult_x_im0_shift2_qint <= i_clfired61_i_processfpga_processfpga2545_mult_x_im0_add_1_q & "00";
    i_clfired61_i_processfpga_processfpga2545_mult_x_im0_shift2_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_im0_shift2_qint(21 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_join_13(BITJOIN,221)@7
    i_clfired61_i_processfpga_processfpga2545_mult_x_join_13_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_align_12_q & i_clfired61_i_processfpga_processfpga2545_mult_x_im0_shift2_q;

    -- i_clfired61_i_processfpga_processfpga2545_mult_x_result_add_0_0(ADD,225)@7
    i_clfired61_i_processfpga_processfpga2545_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_clfired61_i_processfpga_processfpga2545_mult_x_join_13_q);
    i_clfired61_i_processfpga_processfpga2545_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_clfired61_i_processfpga_processfpga2545_mult_x_join_16_q);
    i_clfired61_i_processfpga_processfpga2545_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired61_i_processfpga_processfpga2545_mult_x_result_add_0_0_a) + UNSIGNED(i_clfired61_i_processfpga_processfpga2545_mult_x_result_add_0_0_b));
    i_clfired61_i_processfpga_processfpga2545_mult_x_result_add_0_0_q <= i_clfired61_i_processfpga_processfpga2545_mult_x_result_add_0_0_o(68 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_mult_extender_x(BITJOIN,73)@7
    i_clfired61_i_processfpga_processfpga2545_mult_extender_x_q <= i_clfired61_i_processfpga_processfpga2545_mult_multconst_x_q & i_clfired61_i_processfpga_processfpga2545_mult_x_result_add_0_0_q(67 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_trunc_sel_x(BITSELECT,75)@7
    i_clfired61_i_processfpga_processfpga2545_trunc_sel_x_b <= i_clfired61_i_processfpga_processfpga2545_mult_extender_x_q(63 downto 0);

    -- redist10_i_clfired61_i_processfpga_processfpga2545_trunc_sel_x_b_1(DELAY,269)
    redist10_i_clfired61_i_processfpga_processfpga2545_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clfired61_i_processfpga_processfpga2545_trunc_sel_x_b, xout => redist10_i_clfired61_i_processfpga_processfpga2545_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer72_processfpga(BLACKBOX,147)@0
    -- in in_i_dependence@8
    -- in in_valid_in@8
    -- out out_buffer_out@8
    -- out out_valid_out@8
    thei_syncbuf_localneurons_sync_buffer72_processfpga : i_syncbuf_localneurons_sync_buffer72_processfpga2543
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_7_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer72_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_clfired61_i_processfpga_processfpga2545_add_x(ADD,76)@8
    i_clfired61_i_processfpga_processfpga2545_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer72_processfpga_out_buffer_out);
    i_clfired61_i_processfpga_processfpga2545_add_x_b <= STD_LOGIC_VECTOR("0" & redist10_i_clfired61_i_processfpga_processfpga2545_trunc_sel_x_b_1_q);
    i_clfired61_i_processfpga_processfpga2545_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired61_i_processfpga_processfpga2545_add_x_a) + UNSIGNED(i_clfired61_i_processfpga_processfpga2545_add_x_b));
    i_clfired61_i_processfpga_processfpga2545_add_x_q <= i_clfired61_i_processfpga_processfpga2545_add_x_o(64 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_dupName_0_trunc_sel_x(BITSELECT,67)@8
    i_clfired61_i_processfpga_processfpga2545_dupName_0_trunc_sel_x_b <= i_clfired61_i_processfpga_processfpga2545_add_x_q(63 downto 0);

    -- redist11_i_clfired61_i_processfpga_processfpga2545_dupName_0_trunc_sel_x_b_1(DELAY,270)
    redist11_i_clfired61_i_processfpga_processfpga2545_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clfired61_i_processfpga_processfpga2545_dupName_0_trunc_sel_x_b, xout => redist11_i_clfired61_i_processfpga_processfpga2545_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_clfired61_i_processfpga_processfpga2545_dupName_0_add_x(ADD,70)@9
    i_clfired61_i_processfpga_processfpga2545_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist11_i_clfired61_i_processfpga_processfpga2545_dupName_0_trunc_sel_x_b_1_q);
    i_clfired61_i_processfpga_processfpga2545_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_clfired61_i_processfpga_processfpga2545_c_i64_4gr_x_q);
    i_clfired61_i_processfpga_processfpga2545_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired61_i_processfpga_processfpga2545_dupName_0_add_x_a) + UNSIGNED(i_clfired61_i_processfpga_processfpga2545_dupName_0_add_x_b));
    i_clfired61_i_processfpga_processfpga2545_dupName_0_add_x_q <= i_clfired61_i_processfpga_processfpga2545_dupName_0_add_x_o(64 downto 0);

    -- i_clfired61_i_processfpga_processfpga2545_dupName_1_trunc_sel_x(BITSELECT,68)@9
    i_clfired61_i_processfpga_processfpga2545_dupName_1_trunc_sel_x_b <= i_clfired61_i_processfpga_processfpga2545_dupName_0_add_x_q(63 downto 0);

    -- i_store_memdep_43_processfpga(BLACKBOX,146)@9
    -- out out_memdep_43_avm_address@20000000
    -- out out_memdep_43_avm_burstcount@20000000
    -- out out_memdep_43_avm_byteenable@20000000
    -- out out_memdep_43_avm_enable@20000000
    -- out out_memdep_43_avm_read@20000000
    -- out out_memdep_43_avm_write@20000000
    -- out out_memdep_43_avm_writedata@20000000
    -- out out_o_stall@10
    -- out out_o_valid@10
    -- out out_o_writeack@10
    thei_store_memdep_43_processfpga : i_store_memdep_43_processfpga2548
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_clfired61_i_processfpga_processfpga2545_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga355_processfpga_out_dest_data_out_182_0,
        in_i_stall => GND_q,
        in_i_valid => redist8_sync_in_aunroll_x_in_i_valid_8_q,
        in_i_writedata => c_i8_1gr_q,
        in_memdep_43_avm_readdata => in_memdep_43_avm_readdata,
        in_memdep_43_avm_readdatavalid => in_memdep_43_avm_readdatavalid,
        in_memdep_43_avm_waitrequest => in_memdep_43_avm_waitrequest,
        in_memdep_43_avm_writeack => in_memdep_43_avm_writeack,
        out_memdep_43_avm_address => i_store_memdep_43_processfpga_out_memdep_43_avm_address,
        out_memdep_43_avm_burstcount => i_store_memdep_43_processfpga_out_memdep_43_avm_burstcount,
        out_memdep_43_avm_byteenable => i_store_memdep_43_processfpga_out_memdep_43_avm_byteenable,
        out_memdep_43_avm_enable => i_store_memdep_43_processfpga_out_memdep_43_avm_enable,
        out_memdep_43_avm_read => i_store_memdep_43_processfpga_out_memdep_43_avm_read,
        out_memdep_43_avm_write => i_store_memdep_43_processfpga_out_memdep_43_avm_write,
        out_memdep_43_avm_writedata => i_store_memdep_43_processfpga_out_memdep_43_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_1_ext_sig_sync_out_x(GPOUT,11)
    out_memdep_43_avm_address <= i_store_memdep_43_processfpga_out_memdep_43_avm_address;
    out_memdep_43_avm_enable <= i_store_memdep_43_processfpga_out_memdep_43_avm_enable;
    out_memdep_43_avm_read <= i_store_memdep_43_processfpga_out_memdep_43_avm_read;
    out_memdep_43_avm_write <= i_store_memdep_43_processfpga_out_memdep_43_avm_write;
    out_memdep_43_avm_writedata <= i_store_memdep_43_processfpga_out_memdep_43_avm_writedata;
    out_memdep_43_avm_byteenable <= i_store_memdep_43_processfpga_out_memdep_43_avm_byteenable;
    out_memdep_43_avm_burstcount <= i_store_memdep_43_processfpga_out_memdep_43_avm_burstcount;

    -- i_ffwd_dst_unnamed_processfpga356_processfpga(BLACKBOX,131)@2
    thei_ffwd_dst_unnamed_processfpga356_processfpga : i_ffwd_dst_unnamed_processfpga356_processfpga2552
    PORT MAP (
        in_intel_reserved_ffwd_182_0 => in_intel_reserved_ffwd_182_0,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_182_0 => i_ffwd_dst_unnamed_processfpga356_processfpga_out_dest_data_out_182_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx67_i_processfpga_processfpga2551_mult_multconst_x(CONSTANT,61)
    i_arrayidx67_i_processfpga_processfpga2551_mult_multconst_x_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_remainingcounter_2_i_replace_phi549_processfpga(BLACKBOX,127)@1
    thei_ffwd_dst_remainingcounter_2_i_replace_phi549_processfpga : i_ffwd_dst_remainingcounter_2_i_replace_phi549_processfpga2534
    PORT MAP (
        in_intel_reserved_ffwd_132_0 => in_intel_reserved_ffwd_132_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_132_0 => i_ffwd_dst_remainingcounter_2_i_replace_phi549_processfpga_out_dest_data_out_132_0,
        clock => clock,
        resetn => resetn
    );

    -- i_dec_i_processfpga(ADD,124)@2
    i_dec_i_processfpga_a <= STD_LOGIC_VECTOR("0" & i_remainingcounter_3_i1331_replace_phi_processfpga_q);
    i_dec_i_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_dec_i_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_dec_i_processfpga_a) + UNSIGNED(i_dec_i_processfpga_b));
    i_dec_i_processfpga_q <= i_dec_i_processfpga_o(32 downto 0);

    -- bgTrunc_i_dec_i_processfpga_sel_x(BITSELECT,3)@2
    bgTrunc_i_dec_i_processfpga_sel_x_b <= i_dec_i_processfpga_q(31 downto 0);

    -- i_acl_push_i32_remainingcounter_3_i1331_push97_processfpga(BLACKBOX,111)@2
    -- out out_feedback_out_97@20000000
    -- out out_feedback_valid_out_97@20000000
    thei_acl_push_i32_remainingcounter_3_i1331_push97_processfpga : i_acl_push_i32_remainingcounter_3_i1331_push97_processfpga2564
    PORT MAP (
        in_data_in => bgTrunc_i_dec_i_processfpga_sel_x_b,
        in_feedback_stall_in_97 => i_acl_pop_i32_remainingcounter_3_i1331_pop97_processfpga_out_feedback_stall_out_97,
        in_stall_in => GND_q,
        in_unnamed_processFPGA455 => redist0_i_unnamed_processfpga2563_q_1_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_97 => i_acl_push_i32_remainingcounter_3_i1331_push97_processfpga_out_feedback_out_97,
        out_feedback_valid_out_97 => i_acl_push_i32_remainingcounter_3_i1331_push97_processfpga_out_feedback_valid_out_97,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_remainingcounter_3_i1331_pop97_processfpga(BLACKBOX,106)@1
    -- out out_feedback_stall_out_97@20000000
    thei_acl_pop_i32_remainingcounter_3_i1331_pop97_processfpga : i_acl_pop_i32_remainingcounter_3_i1331_pop97_processfpga2536
    PORT MAP (
        in_data_in => c_i32_undef_q,
        in_dir => in_c0_eni21083_1,
        in_feedback_in_97 => i_acl_push_i32_remainingcounter_3_i1331_push97_processfpga_out_feedback_out_97,
        in_feedback_valid_in_97 => i_acl_push_i32_remainingcounter_3_i1331_push97_processfpga_out_feedback_valid_out_97,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_remainingcounter_3_i1331_pop97_processfpga_out_data_out,
        out_feedback_stall_out_97 => i_acl_pop_i32_remainingcounter_3_i1331_pop97_processfpga_out_feedback_stall_out_97,
        clock => clock,
        resetn => resetn
    );

    -- i_remainingcounter_3_i1331_replace_phi_processfpga(MUX,145)@1 + 1
    i_remainingcounter_3_i1331_replace_phi_processfpga_s <= in_c0_eni21083_1;
    i_remainingcounter_3_i1331_replace_phi_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_remainingcounter_3_i1331_replace_phi_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_remainingcounter_3_i1331_replace_phi_processfpga_s) IS
                WHEN "0" => i_remainingcounter_3_i1331_replace_phi_processfpga_q <= i_acl_pop_i32_remainingcounter_3_i1331_pop97_processfpga_out_data_out;
                WHEN "1" => i_remainingcounter_3_i1331_replace_phi_processfpga_q <= i_ffwd_dst_remainingcounter_2_i_replace_phi549_processfpga_out_dest_data_out_132_0;
                WHEN OTHERS => i_remainingcounter_3_i1331_replace_phi_processfpga_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_idxprom66_i_processfpga_sel_x(BITSELECT,83)@2
    i_idxprom66_i_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(i_remainingcounter_3_i1331_replace_phi_processfpga_q(31 downto 0)), 64)));

    -- i_arrayidx67_i_processfpga_processfpga2551_mult_x_bs1_merged_bit_select(BITSELECT,257)@2
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_bs1_merged_bit_select_b <= i_idxprom66_i_processfpga_sel_x_b(17 downto 0);
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_bs1_merged_bit_select_c <= i_idxprom66_i_processfpga_sel_x_b(63 downto 54);
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_bs1_merged_bit_select_d <= i_idxprom66_i_processfpga_sel_x_b(35 downto 18);
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_bs1_merged_bit_select_e <= i_idxprom66_i_processfpga_sel_x_b(53 downto 36);

    -- i_arrayidx67_i_processfpga_processfpga2551_mult_x_im3_shift0(BITSHIFT,241)@2
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_im3_shift0_qint <= i_arrayidx67_i_processfpga_processfpga2551_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_im3_shift0_q <= i_arrayidx67_i_processfpga_processfpga2551_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_15(BITSHIFT,205)@2
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx67_i_processfpga_processfpga2551_mult_x_im3_shift0_q) & "0000000000000000";
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_15_q <= i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx67_i_processfpga_processfpga2551_mult_x_im6_shift0(BITSHIFT,242)@2
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_im6_shift0_qint <= i_arrayidx67_i_processfpga_processfpga2551_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_im6_shift0_q <= i_arrayidx67_i_processfpga_processfpga2551_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_14(BITSHIFT,204)@2
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx67_i_processfpga_processfpga2551_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_14_q <= i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_14_qint(37 downto 0);

    -- i_arrayidx67_i_processfpga_processfpga2551_mult_x_join_16(BITJOIN,206)@2
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_join_16_q <= i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_15_q & i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_14_q;

    -- i_arrayidx67_i_processfpga_processfpga2551_mult_x_im9_shift0(BITSHIFT,243)@2
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_im9_shift0_qint <= i_arrayidx67_i_processfpga_processfpga2551_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_im9_shift0_q <= i_arrayidx67_i_processfpga_processfpga2551_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_12(BITSHIFT,202)@2
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx67_i_processfpga_processfpga2551_mult_x_im9_shift0_q) & "0000000000000000";
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_12_q <= i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx67_i_processfpga_processfpga2551_mult_x_im0_shift0(BITSHIFT,240)@2
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_im0_shift0_qint <= i_arrayidx67_i_processfpga_processfpga2551_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_im0_shift0_q <= i_arrayidx67_i_processfpga_processfpga2551_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx67_i_processfpga_processfpga2551_mult_x_join_13(BITJOIN,203)@2
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_join_13_q <= i_arrayidx67_i_processfpga_processfpga2551_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx67_i_processfpga_processfpga2551_mult_x_im0_shift0_q);

    -- i_arrayidx67_i_processfpga_processfpga2551_mult_x_result_add_0_0(ADD,207)@2
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx67_i_processfpga_processfpga2551_mult_x_join_13_q);
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx67_i_processfpga_processfpga2551_mult_x_join_16_q);
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx67_i_processfpga_processfpga2551_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx67_i_processfpga_processfpga2551_mult_x_result_add_0_0_b));
    i_arrayidx67_i_processfpga_processfpga2551_mult_x_result_add_0_0_q <= i_arrayidx67_i_processfpga_processfpga2551_mult_x_result_add_0_0_o(66 downto 0);

    -- i_arrayidx67_i_processfpga_processfpga2551_mult_extender_x(BITJOIN,60)@2
    i_arrayidx67_i_processfpga_processfpga2551_mult_extender_x_q <= i_arrayidx67_i_processfpga_processfpga2551_mult_multconst_x_q & i_arrayidx67_i_processfpga_processfpga2551_mult_x_result_add_0_0_q(65 downto 0);

    -- i_arrayidx67_i_processfpga_processfpga2551_trunc_sel_x(BITSELECT,62)@2
    i_arrayidx67_i_processfpga_processfpga2551_trunc_sel_x_b <= i_arrayidx67_i_processfpga_processfpga2551_mult_extender_x_q(63 downto 0);

    -- i_arrayidx67_i_processfpga_processfpga2551_dupName_0_trunc_sel_x(BITSELECT,57)@2
    i_arrayidx67_i_processfpga_processfpga2551_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_arrayidx67_i_processfpga_processfpga2551_trunc_sel_x_b);
    i_arrayidx67_i_processfpga_processfpga2551_dupName_0_trunc_sel_x_b <= i_arrayidx67_i_processfpga_processfpga2551_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_arrayidx67_i_processfpga_vt_select_63(BITSELECT,122)@2
    i_arrayidx67_i_processfpga_vt_select_63_b <= i_arrayidx67_i_processfpga_processfpga2551_dupName_0_trunc_sel_x_b(63 downto 1);

    -- i_arrayidx67_i_processfpga_vt_join(BITJOIN,121)@2
    i_arrayidx67_i_processfpga_vt_join_q <= i_arrayidx67_i_processfpga_vt_select_63_b & GND_q;

    -- i_load_unnamed_processfpga357_processfpga(BLACKBOX,144)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata@6
    -- out out_o_stall@5
    -- out out_o_valid@6
    -- out out_unnamed_processFPGA357_avm_address@20000000
    -- out out_unnamed_processFPGA357_avm_burstcount@20000000
    -- out out_unnamed_processFPGA357_avm_byteenable@20000000
    -- out out_unnamed_processFPGA357_avm_enable@20000000
    -- out out_unnamed_processFPGA357_avm_read@20000000
    -- out out_unnamed_processFPGA357_avm_write@20000000
    -- out out_unnamed_processFPGA357_avm_writedata@20000000
    thei_load_unnamed_processfpga357_processfpga : i_load_unnamed_processfpga357_processfpga2554
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx67_i_processfpga_vt_join_q,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga356_processfpga_out_dest_data_out_182_0,
        in_i_stall => GND_q,
        in_i_valid => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        in_unnamed_processFPGA357_avm_readdata => in_unnamed_processFPGA357_avm_readdata,
        in_unnamed_processFPGA357_avm_readdatavalid => in_unnamed_processFPGA357_avm_readdatavalid,
        in_unnamed_processFPGA357_avm_waitrequest => in_unnamed_processFPGA357_avm_waitrequest,
        in_unnamed_processFPGA357_avm_writeack => in_unnamed_processFPGA357_avm_writeack,
        out_o_readdata => i_load_unnamed_processfpga357_processfpga_out_o_readdata,
        out_unnamed_processFPGA357_avm_address => i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_address,
        out_unnamed_processFPGA357_avm_burstcount => i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_burstcount,
        out_unnamed_processFPGA357_avm_byteenable => i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_byteenable,
        out_unnamed_processFPGA357_avm_enable => i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_enable,
        out_unnamed_processFPGA357_avm_read => i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_read,
        out_unnamed_processFPGA357_avm_write => i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_write,
        out_unnamed_processFPGA357_avm_writedata => i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_2_ext_sig_sync_out_x(GPOUT,14)
    out_unnamed_processFPGA357_avm_address <= i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_address;
    out_unnamed_processFPGA357_avm_enable <= i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_enable;
    out_unnamed_processFPGA357_avm_read <= i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_read;
    out_unnamed_processFPGA357_avm_write <= i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_write;
    out_unnamed_processFPGA357_avm_writedata <= i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_writedata;
    out_unnamed_processFPGA357_avm_byteenable <= i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_byteenable;
    out_unnamed_processFPGA357_avm_burstcount <= i_load_unnamed_processfpga357_processfpga_out_unnamed_processFPGA357_avm_burstcount;

    -- i_ffwd_dst_unnamed_processfpga358_processfpga(BLACKBOX,132)@6
    thei_ffwd_dst_unnamed_processfpga358_processfpga : i_ffwd_dst_unnamed_processfpga358_processfpga2556
    PORT MAP (
        in_intel_reserved_ffwd_182_0 => in_intel_reserved_ffwd_182_0,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_5_q,
        out_dest_data_out_182_0 => i_ffwd_dst_unnamed_processfpga358_processfpga_out_dest_data_out_182_0,
        clock => clock,
        resetn => resetn
    );

    -- redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_notEnable(LOGICAL,276)
    redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_nor(LOGICAL,277)
    redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_nor_q <= not (redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_notEnable_q or redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_sticky_ena_q);

    -- redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_cmpReg(REG,275)
    redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_sticky_ena(REG,278)
    redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_nor_q = "1") THEN
                redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_enaAnd(LOGICAL,279)
    redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_enaAnd_q <= redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_sticky_ena_q and VCC_q;

    -- redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_rdcnt(COUNTER,273)
    -- low=0, high=1, step=1, init=0
    redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_rdcnt_i <= redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_rdcnt_i, 1)));

    -- i_arrayidx65_i_processfpga_processfpga2550_mult_x_im3_shift0(BITSHIFT,237)@2
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_im3_shift0_qint <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_im3_shift0_q <= i_arrayidx65_i_processfpga_processfpga2550_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_15(BITSHIFT,187)@2
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx65_i_processfpga_processfpga2550_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_15_q <= i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx65_i_processfpga_processfpga2550_mult_x_im6_shift0(BITSHIFT,238)@2
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_im6_shift0_qint <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_im6_shift0_q <= i_arrayidx65_i_processfpga_processfpga2550_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_14(BITSHIFT,186)@2
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx65_i_processfpga_processfpga2550_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_14_q <= i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx65_i_processfpga_processfpga2550_mult_x_join_16(BITJOIN,188)@2
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_join_16_q <= i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_15_q & i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_14_q;

    -- i_arrayidx65_i_processfpga_processfpga2550_mult_x_im9_shift0(BITSHIFT,239)@2
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_im9_shift0_qint <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_im9_shift0_q <= i_arrayidx65_i_processfpga_processfpga2550_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_12(BITSHIFT,184)@2
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx65_i_processfpga_processfpga2550_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_12_q <= i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx65_i_processfpga_processfpga2550_mult_x_im0_shift0(BITSHIFT,236)@2
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_im0_shift0_qint <= i_arrayidx58_i_processfpga_processfpga2538_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_im0_shift0_q <= i_arrayidx65_i_processfpga_processfpga2550_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx65_i_processfpga_processfpga2550_mult_x_join_13(BITJOIN,185)@2
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_join_13_q <= i_arrayidx65_i_processfpga_processfpga2550_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx65_i_processfpga_processfpga2550_mult_x_im0_shift0_q);

    -- i_arrayidx65_i_processfpga_processfpga2550_mult_x_result_add_0_0(ADD,189)@2
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx65_i_processfpga_processfpga2550_mult_x_join_13_q);
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx65_i_processfpga_processfpga2550_mult_x_join_16_q);
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx65_i_processfpga_processfpga2550_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx65_i_processfpga_processfpga2550_mult_x_result_add_0_0_b));
    i_arrayidx65_i_processfpga_processfpga2550_mult_x_result_add_0_0_q <= i_arrayidx65_i_processfpga_processfpga2550_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx65_i_processfpga_processfpga2550_mult_extender_x(BITJOIN,50)@2
    i_arrayidx65_i_processfpga_processfpga2550_mult_extender_x_q <= i_arrayidx58_i_processfpga_processfpga2538_mult_multconst_x_q & i_arrayidx65_i_processfpga_processfpga2550_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx65_i_processfpga_processfpga2550_trunc_sel_x(BITSELECT,52)@2
    i_arrayidx65_i_processfpga_processfpga2550_trunc_sel_x_b <= i_arrayidx65_i_processfpga_processfpga2550_mult_extender_x_q(63 downto 0);

    -- i_arrayidx65_i_processfpga_processfpga2550_dupName_0_trunc_sel_x(BITSELECT,47)@2
    i_arrayidx65_i_processfpga_processfpga2550_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_arrayidx65_i_processfpga_processfpga2550_trunc_sel_x_b);
    i_arrayidx65_i_processfpga_processfpga2550_dupName_0_trunc_sel_x_b <= i_arrayidx65_i_processfpga_processfpga2550_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_arrayidx65_i_processfpga_vt_select_63(BITSELECT,119)@2
    i_arrayidx65_i_processfpga_vt_select_63_b <= i_arrayidx65_i_processfpga_processfpga2550_dupName_0_trunc_sel_x_b(63 downto 2);

    -- redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_inputreg(DELAY,271)
    redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_inputreg : dspba_delay
    GENERIC MAP ( width => 62, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx65_i_processfpga_vt_select_63_b, xout => redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_inputreg_q, clk => clock, aclr => resetn );

    -- redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_wraddr(REG,274)
    redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_wraddr_q <= STD_LOGIC_VECTOR(redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem(DUALMEM,272)
    redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_ia <= STD_LOGIC_VECTOR(redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_inputreg_q);
    redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_aa <= redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_wraddr_q;
    redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_ab <= redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_rdcnt_q;
    redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_reset0 <= not (resetn);
    redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 62,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 62,
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
        clocken1 => redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_reset0,
        clock1 => clock,
        address_a => redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_aa,
        data_a => redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_ab,
        q_b => redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_iq
    );
    redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_q <= redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_iq(61 downto 0);

    -- i_arrayidx65_i_processfpga_vt_join(BITJOIN,118)@6
    i_arrayidx65_i_processfpga_vt_join_q <= redist2_i_arrayidx65_i_processfpga_vt_select_63_b_4_mem_q & i_arrayidx58_i_processfpga_vt_const_1_q;

    -- i_store_memdep_44_processfpga_vunroll_x(BLACKBOX,85)@6
    -- out out_memdep_44_avm_address@20000000
    -- out out_memdep_44_avm_burstcount@20000000
    -- out out_memdep_44_avm_byteenable@20000000
    -- out out_memdep_44_avm_enable@20000000
    -- out out_memdep_44_avm_read@20000000
    -- out out_memdep_44_avm_write@20000000
    -- out out_memdep_44_avm_writedata@20000000
    -- out out_o_stall@7
    -- out out_o_valid@7
    -- out out_o_writeack@7
    thei_store_memdep_44_processfpga_vunroll_x : i_store_memdep_44_processfpga2558
    PORT MAP (
        in_i_writedata_0 => i_load_unnamed_processfpga354_processfpga_vunroll_x_out_o_readdata_1,
        in_i_writedata_1 => i_load_unnamed_processfpga357_processfpga_out_o_readdata,
        in_flush => in_flush,
        in_i_address => i_arrayidx65_i_processfpga_vt_join_q,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga358_processfpga_out_dest_data_out_182_0,
        in_i_stall => GND_q,
        in_i_valid => redist6_sync_in_aunroll_x_in_i_valid_5_q,
        in_memdep_44_avm_readdata => in_memdep_44_avm_readdata,
        in_memdep_44_avm_readdatavalid => in_memdep_44_avm_readdatavalid,
        in_memdep_44_avm_waitrequest => in_memdep_44_avm_waitrequest,
        in_memdep_44_avm_writeack => in_memdep_44_avm_writeack,
        out_memdep_44_avm_address => i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_address,
        out_memdep_44_avm_burstcount => i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_burstcount,
        out_memdep_44_avm_byteenable => i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_byteenable,
        out_memdep_44_avm_enable => i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_enable,
        out_memdep_44_avm_read => i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_read,
        out_memdep_44_avm_write => i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_write,
        out_memdep_44_avm_writedata => i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_3_ext_sig_sync_out_x(GPOUT,16)
    out_memdep_44_avm_address <= i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_address;
    out_memdep_44_avm_enable <= i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_enable;
    out_memdep_44_avm_read <= i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_read;
    out_memdep_44_avm_write <= i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_write;
    out_memdep_44_avm_writedata <= i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_writedata;
    out_memdep_44_avm_byteenable <= i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_byteenable;
    out_memdep_44_avm_burstcount <= i_store_memdep_44_processfpga_vunroll_x_out_memdep_44_avm_burstcount;

    -- redist9_sync_in_aunroll_x_in_i_valid_9(DELAY,268)
    redist9_sync_in_aunroll_x_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_sync_in_aunroll_x_in_i_valid_8_q, xout => redist9_sync_in_aunroll_x_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_notEnable(LOGICAL,286)
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_nor(LOGICAL,287)
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_nor_q <= not (redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_notEnable_q or redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_sticky_ena_q);

    -- redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_last(CONSTANT,283)
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_last_q <= "0101";

    -- redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_cmp(LOGICAL,284)
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_cmp_b <= STD_LOGIC_VECTOR("0" & redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_q);
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_cmp_q <= "1" WHEN redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_last_q = redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_cmp_b ELSE "0";

    -- redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_cmpReg(REG,285)
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_cmpReg_q <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_cmp_q);
        END IF;
    END PROCESS;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_sticky_ena(REG,288)
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_nor_q = "1") THEN
                redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_sticky_ena_q <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_enaAnd(LOGICAL,289)
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_enaAnd_q <= redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_sticky_ena_q and VCC_q;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt(COUNTER,281)
    -- low=0, high=6, step=1, init=0
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_eq <= '1';
            ELSE
                redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_eq <= '0';
            END IF;
            IF (redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_eq = '1') THEN
                redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_i <= redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_i + 2;
            ELSE
                redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_i <= redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_i, 3)));

    -- i_acl_push_i32_acl_hw_wg_id818_push98_processfpga(BLACKBOX,109)@2
    -- out out_feedback_out_98@20000000
    -- out out_feedback_valid_out_98@20000000
    thei_acl_push_i32_acl_hw_wg_id818_push98_processfpga : i_acl_push_i32_acl_hw_wg_id818_push98_processfpga2574
    PORT MAP (
        in_data_in => redist3_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_1_q,
        in_feedback_stall_in_98 => i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_feedback_stall_out_98,
        in_stall_in => GND_q,
        in_unnamed_processFPGA455 => redist0_i_unnamed_processfpga2563_q_1_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_98 => i_acl_push_i32_acl_hw_wg_id818_push98_processfpga_out_feedback_out_98,
        out_feedback_valid_out_98 => i_acl_push_i32_acl_hw_wg_id818_push98_processfpga_out_feedback_valid_out_98,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga(BLACKBOX,104)@1
    -- out out_feedback_stall_out_98@20000000
    thei_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga : i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga2572
    PORT MAP (
        in_data_in => in_c0_eni21083_2,
        in_dir => in_c0_eni21083_1,
        in_feedback_in_98 => i_acl_push_i32_acl_hw_wg_id818_push98_processfpga_out_feedback_out_98,
        in_feedback_valid_in_98 => i_acl_push_i32_acl_hw_wg_id818_push98_processfpga_out_feedback_valid_out_98,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out,
        out_feedback_stall_out_98 => i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_feedback_stall_out_98,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_1(DELAY,262)
    redist3_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out, xout => redist3_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_wraddr(REG,282)
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_wraddr_q <= "110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_wraddr_q <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem(DUALMEM,280)
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_ia <= STD_LOGIC_VECTOR(redist3_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_1_q);
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_aa <= redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_wraddr_q;
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_ab <= redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_rdcnt_q;
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_reset0 <= not (resetn);
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 7,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 7,
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
        clocken1 => redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_reset0,
        clock1 => clock,
        address_a => redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_aa,
        data_a => redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_ab,
        q_b => redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_iq
    );
    redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_q <= redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_iq(31 downto 0);

    -- redist1_i_unnamed_processfpga2563_q_9(DELAY,260)
    redist1_i_unnamed_processfpga2563_q_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_unnamed_processfpga2563_q_1_q, xout => redist1_i_unnamed_processfpga2563_q_9_q, clk => clock, aclr => resetn );

    -- sync_out_aunroll_x(GPOUT,87)@10
    out_c0_exi21088_0 <= GND_q;
    out_c0_exi21088_1 <= redist1_i_unnamed_processfpga2563_q_9_q;
    out_c0_exi21088_2 <= redist4_i_acl_pop_i32_acl_hw_wg_id818_pop98_processfpga_out_data_out_9_mem_q;
    out_o_valid <= redist9_sync_in_aunroll_x_in_i_valid_9_q;

    -- i_acl_push_i1_notexitcond734_processfpga(BLACKBOX,108)@1
    -- out out_feedback_out_40@20000000
    -- out out_feedback_valid_out_40@20000000
    thei_acl_push_i1_notexitcond734_processfpga : i_acl_push_i1_notexitcond734_processfpga2570
    PORT MAP (
        in_data_in => i_unnamed_processfpga2563_q,
        in_feedback_stall_in_40 => i_acl_pipeline_keep_going733_processfpga_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_40 => i_acl_push_i1_notexitcond734_processfpga_out_feedback_out_40,
        out_feedback_valid_out_40 => i_acl_push_i1_notexitcond734_processfpga_out_feedback_valid_out_40,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going733_processfpga(BLACKBOX,103)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going733_processfpga : i_acl_pipeline_keep_going733_processfpga2524
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond734_processfpga_out_feedback_out_40,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond734_processfpga_out_feedback_valid_out_40,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going733_processfpga_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going733_processfpga_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going733_processfpga_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going733_processfpga_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,102)
    out_aclp_to_limiter_i_acl_pipeline_keep_going733_processfpga_exiting_valid_out <= i_acl_pipeline_keep_going733_processfpga_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going733_processfpga_exiting_stall_out <= i_acl_pipeline_keep_going733_processfpga_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,152)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going733_processfpga_out_pipeline_valid_out;

END normal;
