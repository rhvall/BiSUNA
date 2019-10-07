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

-- VHDL created from i_sfc_logic_c0_for_body76_i_processfpga_c0_enter1094_processfpga2600
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

entity i_sfc_logic_c0_for_body76_i_processfpga_c0_enter1094_processfpga2600 is
    port (
        in_memdep_45_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_memdep_45_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_45_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_45_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA365_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA365_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA365_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA365_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA365_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA365_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_processFPGA365_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_45_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_45_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_45_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_45_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_45_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_45_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_memdep_45_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21093_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21093_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21093_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_154_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_intel_reserved_ffwd_181_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_182_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_185_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi31099_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi31099_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi31099_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi31099_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA365_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_processFPGA365_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA365_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA365_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going738_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going738_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body76_i_processfpga_c0_enter1094_processfpga2600;

architecture normal of i_sfc_logic_c0_for_body76_i_processfpga_c0_enter1094_processfpga2600 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_load_unnamed_processfpga365_processfpga2615 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA365_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_processFPGA365_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA365_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA365_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_readdata_1 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA365_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA365_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA365_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_unnamed_processFPGA365_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA365_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA365_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA365_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going738_processfpga2602 is
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


    component i_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga2632 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_94 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_94 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_94 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_rrcounter_1_i1335_pop93_processfpga2606 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_93 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_93 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_93 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i33_fpgaindvars_iv256_pop92_processfpga2610 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_92 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_feedback_valid_in_92 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_stall_out_92 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond739_processfpga2630 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_42 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_42 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_42 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_acl_hw_wg_id819_push94_processfpga2634 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_94 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA456 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_94 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_94 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_rrcounter_1_i1335_push93_processfpga2626 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_93 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA456 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_93 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_93 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i33_fpgaindvars_iv256_push92_processfpga2628 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_feedback_stall_in_92 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA456 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_out_92 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_feedback_valid_out_92 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_do_directly_for_body33_i_unifiedlatchblock_switch_select622_processfpga2604 is
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


    component i_ffwd_dst_unnamed_processfpga363_processfpga2608 is
        port (
            in_intel_reserved_ffwd_154_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_154_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga364_processfpga2613 is
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


    component i_ffwd_dst_unnamed_processfpga366_processfpga2618 is
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


    component i_ffwd_dst_unnamed_processfpga367_processfpga2623 is
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


    component i_store_memdep_45_processfpga2620 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_memdep_45_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_memdep_45_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_45_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_45_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_45_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_45_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_45_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_memdep_45_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_45_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_45_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_45_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_dec84_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next257_processfpga_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_multconst_x_q : STD_LOGIC_VECTOR (61 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom77_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom81_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_processfpga365_processfpga_vunroll_x_out_o_readdata_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga365_processfpga_vunroll_x_out_o_readdata_1 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_undef_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i33_undef_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pipeline_keep_going738_processfpga_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going738_processfpga_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going738_processfpga_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going738_processfpga_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga_out_feedback_stall_out_94 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_rrcounter_1_i1335_pop93_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_rrcounter_1_i1335_pop93_processfpga_out_feedback_stall_out_93 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv256_pop92_processfpga_out_data_out : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv256_pop92_processfpga_out_feedback_stall_out_92 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond739_processfpga_out_feedback_out_42 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond739_processfpga_out_feedback_valid_out_42 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id819_push94_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id819_push94_processfpga_out_feedback_out_94 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id819_push94_processfpga_out_feedback_valid_out_94 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_rrcounter_1_i1335_push93_processfpga_out_feedback_out_93 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_rrcounter_1_i1335_push93_processfpga_out_feedback_valid_out_93 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv256_push92_processfpga_out_feedback_out_92 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv256_push92_processfpga_out_feedback_valid_out_92 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx78_i_processfpga_vt_const_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal i_arrayidx78_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx78_i_processfpga_vt_select_63_b : STD_LOGIC_VECTOR (61 downto 0);
    signal i_arrayidx82_i_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (46 downto 0);
    signal i_arrayidx82_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx82_i_processfpga_vt_select_16_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_dec84_i_processfpga_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec84_i_processfpga_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec84_i_processfpga_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec84_i_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_exitcond258_processfpga_a : STD_LOGIC_VECTOR (34 downto 0);
    signal i_exitcond258_processfpga_b : STD_LOGIC_VECTOR (34 downto 0);
    signal i_exitcond258_processfpga_o : STD_LOGIC_VECTOR (34 downto 0);
    signal i_exitcond258_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_do_directly_for_body33_i_unifiedlatchblock_switch_select622_processfpga_out_dest_data_out_181_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_processfpga363_processfpga_out_dest_data_out_154_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_ffwd_dst_unnamed_processfpga364_processfpga_out_dest_data_out_182_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga366_processfpga_out_dest_data_out_182_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga367_processfpga_out_dest_data_out_185_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv256_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv256_replace_phi_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_fpgaindvars_iv_next257_processfpga_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next257_processfpga_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next257_processfpga_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next257_processfpga_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_idxprom81_i_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom81_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom81_i_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_rrcounter_1_i1335_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_rrcounter_1_i1335_replace_phi_processfpga_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_45_processfpga_out_memdep_45_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_45_processfpga_out_memdep_45_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_45_processfpga_out_memdep_45_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_store_memdep_45_processfpga_out_memdep_45_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_45_processfpga_out_memdep_45_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_45_processfpga_out_memdep_45_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_45_processfpga_out_memdep_45_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_unnamed_processfpga2625_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_join_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_14_q : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_14_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_join_16_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx78_i_processfpga_processfpga2612_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx82_i_processfpga_processfpga2617_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_unnamed_processfpga2625_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_unnamed_processfpga2625_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_sync_in_aunroll_x_in_c0_eni21093_1_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_aunroll_x_in_i_valid_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_reset0 : std_logic;
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_rdcnt_i : signal is true;
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_sticky_ena_q : signal is true;
    signal redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist5_sync_in_aunroll_x_in_i_valid_1(DELAY,153)
    redist5_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist5_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_ffwd_dst_unnamed_processfpga364_processfpga(BLACKBOX,79)@2
    thei_ffwd_dst_unnamed_processfpga364_processfpga : i_ffwd_dst_unnamed_processfpga364_processfpga2613
    PORT MAP (
        in_intel_reserved_ffwd_182_0 => in_intel_reserved_ffwd_182_0,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_182_0 => i_ffwd_dst_unnamed_processfpga364_processfpga_out_dest_data_out_182_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx78_i_processfpga_processfpga2612_mult_multconst_x(CONSTANT,27)
    i_arrayidx78_i_processfpga_processfpga2612_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_do_directly_for_body33_i_unifiedlatchblock_switch_select622_processfpga(BLACKBOX,77)@1
    thei_ffwd_dst_do_directly_for_body33_i_unifiedlatchblock_switch_select622_processfpga : i_ffwd_dst_do_directly_for_body33_i_unifiedlatchblock_switch_select622_processfpga2604
    PORT MAP (
        in_intel_reserved_ffwd_181_0 => in_intel_reserved_ffwd_181_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_181_0 => i_ffwd_dst_do_directly_for_body33_i_unifiedlatchblock_switch_select622_processfpga_out_dest_data_out_181_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga367_processfpga(BLACKBOX,81)@1
    thei_ffwd_dst_unnamed_processfpga367_processfpga : i_ffwd_dst_unnamed_processfpga367_processfpga2623
    PORT MAP (
        in_intel_reserved_ffwd_185_0 => in_intel_reserved_ffwd_185_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_185_0 => i_ffwd_dst_unnamed_processfpga367_processfpga_out_dest_data_out_185_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga363_processfpga(BLACKBOX,78)@1
    thei_ffwd_dst_unnamed_processfpga363_processfpga : i_ffwd_dst_unnamed_processfpga363_processfpga2608
    PORT MAP (
        in_intel_reserved_ffwd_154_0 => in_intel_reserved_ffwd_154_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_154_0 => i_ffwd_dst_unnamed_processfpga363_processfpga_out_dest_data_out_154_0,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv_next257_processfpga(ADD,83)@1
    i_fpgaindvars_iv_next257_processfpga_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv256_replace_phi_processfpga_q);
    i_fpgaindvars_iv_next257_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_fpgaindvars_iv_next257_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next257_processfpga_a) + UNSIGNED(i_fpgaindvars_iv_next257_processfpga_b));
    i_fpgaindvars_iv_next257_processfpga_q <= i_fpgaindvars_iv_next257_processfpga_o(33 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next257_processfpga_sel_x(BITSELECT,3)@1
    bgTrunc_i_fpgaindvars_iv_next257_processfpga_sel_x_b <= i_fpgaindvars_iv_next257_processfpga_q(32 downto 0);

    -- i_acl_push_i33_fpgaindvars_iv256_push92_processfpga(BLACKBOX,67)@1
    -- out out_feedback_out_92@20000000
    -- out out_feedback_valid_out_92@20000000
    thei_acl_push_i33_fpgaindvars_iv256_push92_processfpga : i_acl_push_i33_fpgaindvars_iv256_push92_processfpga2628
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next257_processfpga_sel_x_b,
        in_feedback_stall_in_92 => i_acl_pop_i33_fpgaindvars_iv256_pop92_processfpga_out_feedback_stall_out_92,
        in_stall_in => GND_q,
        in_unnamed_processFPGA456 => i_unnamed_processfpga2625_q,
        in_valid_in => in_i_valid,
        out_feedback_out_92 => i_acl_push_i33_fpgaindvars_iv256_push92_processfpga_out_feedback_out_92,
        out_feedback_valid_out_92 => i_acl_push_i33_fpgaindvars_iv256_push92_processfpga_out_feedback_valid_out_92,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_undef(CONSTANT,57)
    c_i33_undef_q <= "000000000000000000000000000000000";

    -- i_acl_pop_i33_fpgaindvars_iv256_pop92_processfpga(BLACKBOX,63)@1
    -- out out_feedback_stall_out_92@20000000
    thei_acl_pop_i33_fpgaindvars_iv256_pop92_processfpga : i_acl_pop_i33_fpgaindvars_iv256_pop92_processfpga2610
    PORT MAP (
        in_data_in => c_i33_undef_q,
        in_dir => in_c0_eni21093_1,
        in_feedback_in_92 => i_acl_push_i33_fpgaindvars_iv256_push92_processfpga_out_feedback_out_92,
        in_feedback_valid_in_92 => i_acl_push_i33_fpgaindvars_iv256_push92_processfpga_out_feedback_valid_out_92,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i33_fpgaindvars_iv256_pop92_processfpga_out_data_out,
        out_feedback_stall_out_92 => i_acl_pop_i33_fpgaindvars_iv256_pop92_processfpga_out_feedback_stall_out_92,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv256_replace_phi_processfpga(MUX,82)@1
    i_fpgaindvars_iv256_replace_phi_processfpga_s <= in_c0_eni21093_1;
    i_fpgaindvars_iv256_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv256_replace_phi_processfpga_s, i_acl_pop_i33_fpgaindvars_iv256_pop92_processfpga_out_data_out, i_ffwd_dst_unnamed_processfpga363_processfpga_out_dest_data_out_154_0)
    BEGIN
        CASE (i_fpgaindvars_iv256_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv256_replace_phi_processfpga_q <= i_acl_pop_i33_fpgaindvars_iv256_pop92_processfpga_out_data_out;
            WHEN "1" => i_fpgaindvars_iv256_replace_phi_processfpga_q <= i_ffwd_dst_unnamed_processfpga363_processfpga_out_dest_data_out_154_0;
            WHEN OTHERS => i_fpgaindvars_iv256_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i33_1gr(CONSTANT,56)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- i_exitcond258_processfpga(COMPARE,76)@1
    i_exitcond258_processfpga_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => c_i33_1gr_q(32)) & c_i33_1gr_q));
    i_exitcond258_processfpga_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => i_fpgaindvars_iv256_replace_phi_processfpga_q(32)) & i_fpgaindvars_iv256_replace_phi_processfpga_q));
    i_exitcond258_processfpga_o <= STD_LOGIC_VECTOR(SIGNED(i_exitcond258_processfpga_a) - SIGNED(i_exitcond258_processfpga_b));
    i_exitcond258_processfpga_c(0) <= i_exitcond258_processfpga_o(34);

    -- i_unnamed_processfpga2625(LOGICAL,92)@1
    i_unnamed_processfpga2625_q <= i_exitcond258_processfpga_c and i_ffwd_dst_unnamed_processfpga367_processfpga_out_dest_data_out_185_0;

    -- redist0_i_unnamed_processfpga2625_q_1(DELAY,148)
    redist0_i_unnamed_processfpga2625_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga2625_q, xout => redist0_i_unnamed_processfpga2625_q_1_q, clk => clock, aclr => resetn );

    -- c_i32_1gr(CONSTANT,54)
    c_i32_1gr_q <= "11111111111111111111111111111111";

    -- i_dec84_i_processfpga(ADD,75)@2
    i_dec84_i_processfpga_a <= STD_LOGIC_VECTOR("0" & i_rrcounter_1_i1335_replace_phi_processfpga_q);
    i_dec84_i_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_dec84_i_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_dec84_i_processfpga_a) + UNSIGNED(i_dec84_i_processfpga_b));
    i_dec84_i_processfpga_q <= i_dec84_i_processfpga_o(32 downto 0);

    -- bgTrunc_i_dec84_i_processfpga_sel_x(BITSELECT,2)@2
    bgTrunc_i_dec84_i_processfpga_sel_x_b <= i_dec84_i_processfpga_q(31 downto 0);

    -- i_acl_push_i32_rrcounter_1_i1335_push93_processfpga(BLACKBOX,66)@2
    -- out out_feedback_out_93@20000000
    -- out out_feedback_valid_out_93@20000000
    thei_acl_push_i32_rrcounter_1_i1335_push93_processfpga : i_acl_push_i32_rrcounter_1_i1335_push93_processfpga2626
    PORT MAP (
        in_data_in => bgTrunc_i_dec84_i_processfpga_sel_x_b,
        in_feedback_stall_in_93 => i_acl_pop_i32_rrcounter_1_i1335_pop93_processfpga_out_feedback_stall_out_93,
        in_stall_in => GND_q,
        in_unnamed_processFPGA456 => redist0_i_unnamed_processfpga2625_q_1_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_93 => i_acl_push_i32_rrcounter_1_i1335_push93_processfpga_out_feedback_out_93,
        out_feedback_valid_out_93 => i_acl_push_i32_rrcounter_1_i1335_push93_processfpga_out_feedback_valid_out_93,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_undef(CONSTANT,55)
    c_i32_undef_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_rrcounter_1_i1335_pop93_processfpga(BLACKBOX,62)@1
    -- out out_feedback_stall_out_93@20000000
    thei_acl_pop_i32_rrcounter_1_i1335_pop93_processfpga : i_acl_pop_i32_rrcounter_1_i1335_pop93_processfpga2606
    PORT MAP (
        in_data_in => c_i32_undef_q,
        in_dir => in_c0_eni21093_1,
        in_feedback_in_93 => i_acl_push_i32_rrcounter_1_i1335_push93_processfpga_out_feedback_out_93,
        in_feedback_valid_in_93 => i_acl_push_i32_rrcounter_1_i1335_push93_processfpga_out_feedback_valid_out_93,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_rrcounter_1_i1335_pop93_processfpga_out_data_out,
        out_feedback_stall_out_93 => i_acl_pop_i32_rrcounter_1_i1335_pop93_processfpga_out_feedback_stall_out_93,
        clock => clock,
        resetn => resetn
    );

    -- i_rrcounter_1_i1335_replace_phi_processfpga(MUX,90)@1 + 1
    i_rrcounter_1_i1335_replace_phi_processfpga_s <= in_c0_eni21093_1;
    i_rrcounter_1_i1335_replace_phi_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_rrcounter_1_i1335_replace_phi_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_rrcounter_1_i1335_replace_phi_processfpga_s) IS
                WHEN "0" => i_rrcounter_1_i1335_replace_phi_processfpga_q <= i_acl_pop_i32_rrcounter_1_i1335_pop93_processfpga_out_data_out;
                WHEN "1" => i_rrcounter_1_i1335_replace_phi_processfpga_q <= i_ffwd_dst_do_directly_for_body33_i_unifiedlatchblock_switch_select622_processfpga_out_dest_data_out_181_0;
                WHEN OTHERS => i_rrcounter_1_i1335_replace_phi_processfpga_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_idxprom77_i_processfpga_sel_x(BITSELECT,43)@2
    i_idxprom77_i_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(i_rrcounter_1_i1335_replace_phi_processfpga_q(31 downto 0)), 64)));

    -- i_arrayidx78_i_processfpga_processfpga2612_mult_x_bs1_merged_bit_select(BITSELECT,146)@2
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_bs1_merged_bit_select_b <= i_idxprom77_i_processfpga_sel_x_b(17 downto 0);
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_bs1_merged_bit_select_c <= i_idxprom77_i_processfpga_sel_x_b(63 downto 54);
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_bs1_merged_bit_select_d <= i_idxprom77_i_processfpga_sel_x_b(35 downto 18);
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_bs1_merged_bit_select_e <= i_idxprom77_i_processfpga_sel_x_b(53 downto 36);

    -- i_arrayidx78_i_processfpga_processfpga2612_mult_x_im3_shift0(BITSHIFT,139)@2
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_im3_shift0_qint <= i_arrayidx78_i_processfpga_processfpga2612_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_im3_shift0_q <= i_arrayidx78_i_processfpga_processfpga2612_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_15(BITSHIFT,113)@2
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx78_i_processfpga_processfpga2612_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_15_q <= i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx78_i_processfpga_processfpga2612_mult_x_im6_shift0(BITSHIFT,140)@2
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_im6_shift0_qint <= i_arrayidx78_i_processfpga_processfpga2612_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_im6_shift0_q <= i_arrayidx78_i_processfpga_processfpga2612_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_14(BITSHIFT,112)@2
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx78_i_processfpga_processfpga2612_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_14_q <= i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx78_i_processfpga_processfpga2612_mult_x_join_16(BITJOIN,114)@2
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_join_16_q <= i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_15_q & i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_14_q;

    -- i_arrayidx78_i_processfpga_processfpga2612_mult_x_im9_shift0(BITSHIFT,141)@2
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_im9_shift0_qint <= i_arrayidx78_i_processfpga_processfpga2612_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_im9_shift0_q <= i_arrayidx78_i_processfpga_processfpga2612_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_12(BITSHIFT,110)@2
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx78_i_processfpga_processfpga2612_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_12_q <= i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx78_i_processfpga_processfpga2612_mult_x_im0_shift0(BITSHIFT,138)@2
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_im0_shift0_qint <= i_arrayidx78_i_processfpga_processfpga2612_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_im0_shift0_q <= i_arrayidx78_i_processfpga_processfpga2612_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx78_i_processfpga_processfpga2612_mult_x_join_13(BITJOIN,111)@2
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_join_13_q <= i_arrayidx78_i_processfpga_processfpga2612_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx78_i_processfpga_processfpga2612_mult_x_im0_shift0_q);

    -- i_arrayidx78_i_processfpga_processfpga2612_mult_x_result_add_0_0(ADD,115)@2
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx78_i_processfpga_processfpga2612_mult_x_join_13_q);
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx78_i_processfpga_processfpga2612_mult_x_join_16_q);
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx78_i_processfpga_processfpga2612_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx78_i_processfpga_processfpga2612_mult_x_result_add_0_0_b));
    i_arrayidx78_i_processfpga_processfpga2612_mult_x_result_add_0_0_q <= i_arrayidx78_i_processfpga_processfpga2612_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx78_i_processfpga_processfpga2612_mult_extender_x(BITJOIN,26)@2
    i_arrayidx78_i_processfpga_processfpga2612_mult_extender_x_q <= i_arrayidx78_i_processfpga_processfpga2612_mult_multconst_x_q & i_arrayidx78_i_processfpga_processfpga2612_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx78_i_processfpga_processfpga2612_trunc_sel_x(BITSELECT,28)@2
    i_arrayidx78_i_processfpga_processfpga2612_trunc_sel_x_b <= i_arrayidx78_i_processfpga_processfpga2612_mult_extender_x_q(63 downto 0);

    -- i_arrayidx78_i_processfpga_processfpga2612_dupName_0_trunc_sel_x(BITSELECT,23)@2
    i_arrayidx78_i_processfpga_processfpga2612_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_arrayidx78_i_processfpga_processfpga2612_trunc_sel_x_b);
    i_arrayidx78_i_processfpga_processfpga2612_dupName_0_trunc_sel_x_b <= i_arrayidx78_i_processfpga_processfpga2612_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_arrayidx78_i_processfpga_vt_select_63(BITSELECT,70)@2
    i_arrayidx78_i_processfpga_vt_select_63_b <= i_arrayidx78_i_processfpga_processfpga2612_dupName_0_trunc_sel_x_b(63 downto 2);

    -- i_arrayidx78_i_processfpga_vt_const_1(CONSTANT,68)
    i_arrayidx78_i_processfpga_vt_const_1_q <= "00";

    -- i_arrayidx78_i_processfpga_vt_join(BITJOIN,69)@2
    i_arrayidx78_i_processfpga_vt_join_q <= i_arrayidx78_i_processfpga_vt_select_63_b & i_arrayidx78_i_processfpga_vt_const_1_q;

    -- i_load_unnamed_processfpga365_processfpga_vunroll_x(BLACKBOX,45)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata_0@6
    -- out out_o_readdata_1@6
    -- out out_o_stall@5
    -- out out_o_valid@6
    -- out out_unnamed_processFPGA365_avm_address@20000000
    -- out out_unnamed_processFPGA365_avm_burstcount@20000000
    -- out out_unnamed_processFPGA365_avm_byteenable@20000000
    -- out out_unnamed_processFPGA365_avm_enable@20000000
    -- out out_unnamed_processFPGA365_avm_read@20000000
    -- out out_unnamed_processFPGA365_avm_write@20000000
    -- out out_unnamed_processFPGA365_avm_writedata@20000000
    thei_load_unnamed_processfpga365_processfpga_vunroll_x : i_load_unnamed_processfpga365_processfpga2615
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx78_i_processfpga_vt_join_q,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga364_processfpga_out_dest_data_out_182_0,
        in_i_stall => GND_q,
        in_i_valid => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        in_unnamed_processFPGA365_avm_readdata => in_unnamed_processFPGA365_avm_readdata,
        in_unnamed_processFPGA365_avm_readdatavalid => in_unnamed_processFPGA365_avm_readdatavalid,
        in_unnamed_processFPGA365_avm_waitrequest => in_unnamed_processFPGA365_avm_waitrequest,
        in_unnamed_processFPGA365_avm_writeack => in_unnamed_processFPGA365_avm_writeack,
        out_o_readdata_0 => i_load_unnamed_processfpga365_processfpga_vunroll_x_out_o_readdata_0,
        out_o_readdata_1 => i_load_unnamed_processfpga365_processfpga_vunroll_x_out_o_readdata_1,
        out_unnamed_processFPGA365_avm_address => i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_address,
        out_unnamed_processFPGA365_avm_burstcount => i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_burstcount,
        out_unnamed_processFPGA365_avm_byteenable => i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_byteenable,
        out_unnamed_processFPGA365_avm_enable => i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_enable,
        out_unnamed_processFPGA365_avm_read => i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_read,
        out_unnamed_processFPGA365_avm_write => i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_write,
        out_unnamed_processFPGA365_avm_writedata => i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,6)
    out_unnamed_processFPGA365_avm_address <= i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_address;
    out_unnamed_processFPGA365_avm_enable <= i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_enable;
    out_unnamed_processFPGA365_avm_read <= i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_read;
    out_unnamed_processFPGA365_avm_write <= i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_write;
    out_unnamed_processFPGA365_avm_writedata <= i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_writedata;
    out_unnamed_processFPGA365_avm_byteenable <= i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_byteenable;
    out_unnamed_processFPGA365_avm_burstcount <= i_load_unnamed_processfpga365_processfpga_vunroll_x_out_unnamed_processFPGA365_avm_burstcount;

    -- redist6_sync_in_aunroll_x_in_i_valid_5(DELAY,154)
    redist6_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_sync_in_aunroll_x_in_i_valid_1_q, xout => redist6_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_unnamed_processfpga366_processfpga(BLACKBOX,80)@6
    thei_ffwd_dst_unnamed_processfpga366_processfpga : i_ffwd_dst_unnamed_processfpga366_processfpga2618
    PORT MAP (
        in_intel_reserved_ffwd_182_0 => in_intel_reserved_ffwd_182_0,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_5_q,
        out_dest_data_out_182_0 => i_ffwd_dst_unnamed_processfpga366_processfpga_out_dest_data_out_182_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx82_i_processfpga_vt_const_63(CONSTANT,72)
    i_arrayidx82_i_processfpga_vt_const_63_q <= "00000000000000000000000000000000000000000000000";

    -- i_arrayidx82_i_processfpga_processfpga2617_mult_multconst_x(CONSTANT,37)
    i_arrayidx82_i_processfpga_processfpga2617_mult_multconst_x_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- i_idxprom81_i_processfpga_vt_const_63(CONSTANT,87)
    i_idxprom81_i_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_idxprom81_i_processfpga_sel_x(BITSELECT,44)@6
    i_idxprom81_i_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(i_load_unnamed_processfpga365_processfpga_vunroll_x_out_o_readdata_0(15 downto 0)), 64));

    -- i_idxprom81_i_processfpga_vt_select_15(BITSELECT,89)@6
    i_idxprom81_i_processfpga_vt_select_15_b <= i_idxprom81_i_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom81_i_processfpga_vt_join(BITJOIN,88)@6
    i_idxprom81_i_processfpga_vt_join_q <= i_idxprom81_i_processfpga_vt_const_63_q & i_idxprom81_i_processfpga_vt_select_15_b;

    -- i_arrayidx82_i_processfpga_processfpga2617_mult_x_bs1_merged_bit_select(BITSELECT,147)@6
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_bs1_merged_bit_select_b <= i_idxprom81_i_processfpga_vt_join_q(17 downto 0);
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_bs1_merged_bit_select_c <= i_idxprom81_i_processfpga_vt_join_q(63 downto 54);
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_bs1_merged_bit_select_d <= i_idxprom81_i_processfpga_vt_join_q(35 downto 18);
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_bs1_merged_bit_select_e <= i_idxprom81_i_processfpga_vt_join_q(53 downto 36);

    -- i_arrayidx82_i_processfpga_processfpga2617_mult_x_im3_shift0(BITSHIFT,143)@6
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_im3_shift0_qint <= i_arrayidx82_i_processfpga_processfpga2617_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_im3_shift0_q <= i_arrayidx82_i_processfpga_processfpga2617_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_15(BITSHIFT,131)@6
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx82_i_processfpga_processfpga2617_mult_x_im3_shift0_q) & "0000000000000000";
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_15_q <= i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx82_i_processfpga_processfpga2617_mult_x_im6_shift0(BITSHIFT,144)@6
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_im6_shift0_qint <= i_arrayidx82_i_processfpga_processfpga2617_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_im6_shift0_q <= i_arrayidx82_i_processfpga_processfpga2617_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_14(BITSHIFT,130)@6
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx82_i_processfpga_processfpga2617_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_14_q <= i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_14_qint(37 downto 0);

    -- i_arrayidx82_i_processfpga_processfpga2617_mult_x_join_16(BITJOIN,132)@6
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_join_16_q <= i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_15_q & i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_14_q;

    -- i_arrayidx82_i_processfpga_processfpga2617_mult_x_im9_shift0(BITSHIFT,145)@6
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_im9_shift0_qint <= i_arrayidx82_i_processfpga_processfpga2617_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_im9_shift0_q <= i_arrayidx82_i_processfpga_processfpga2617_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_12(BITSHIFT,128)@6
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx82_i_processfpga_processfpga2617_mult_x_im9_shift0_q) & "0000000000000000";
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_12_q <= i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx82_i_processfpga_processfpga2617_mult_x_im0_shift0(BITSHIFT,142)@6
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_im0_shift0_qint <= i_arrayidx82_i_processfpga_processfpga2617_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_im0_shift0_q <= i_arrayidx82_i_processfpga_processfpga2617_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx82_i_processfpga_processfpga2617_mult_x_join_13(BITJOIN,129)@6
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_join_13_q <= i_arrayidx82_i_processfpga_processfpga2617_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx82_i_processfpga_processfpga2617_mult_x_im0_shift0_q);

    -- i_arrayidx82_i_processfpga_processfpga2617_mult_x_result_add_0_0(ADD,133)@6
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx82_i_processfpga_processfpga2617_mult_x_join_13_q);
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx82_i_processfpga_processfpga2617_mult_x_join_16_q);
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx82_i_processfpga_processfpga2617_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx82_i_processfpga_processfpga2617_mult_x_result_add_0_0_b));
    i_arrayidx82_i_processfpga_processfpga2617_mult_x_result_add_0_0_q <= i_arrayidx82_i_processfpga_processfpga2617_mult_x_result_add_0_0_o(66 downto 0);

    -- i_arrayidx82_i_processfpga_processfpga2617_mult_extender_x(BITJOIN,36)@6
    i_arrayidx82_i_processfpga_processfpga2617_mult_extender_x_q <= i_arrayidx82_i_processfpga_processfpga2617_mult_multconst_x_q & i_arrayidx82_i_processfpga_processfpga2617_mult_x_result_add_0_0_q(65 downto 0);

    -- i_arrayidx82_i_processfpga_processfpga2617_trunc_sel_x(BITSELECT,38)@6
    i_arrayidx82_i_processfpga_processfpga2617_trunc_sel_x_b <= i_arrayidx82_i_processfpga_processfpga2617_mult_extender_x_q(63 downto 0);

    -- i_arrayidx82_i_processfpga_processfpga2617_dupName_0_trunc_sel_x(BITSELECT,33)@6
    i_arrayidx82_i_processfpga_processfpga2617_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_arrayidx82_i_processfpga_processfpga2617_trunc_sel_x_b);
    i_arrayidx82_i_processfpga_processfpga2617_dupName_0_trunc_sel_x_b <= i_arrayidx82_i_processfpga_processfpga2617_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_arrayidx82_i_processfpga_vt_select_16(BITSELECT,74)@6
    i_arrayidx82_i_processfpga_vt_select_16_b <= i_arrayidx82_i_processfpga_processfpga2617_dupName_0_trunc_sel_x_b(16 downto 1);

    -- i_arrayidx82_i_processfpga_vt_join(BITJOIN,73)@6
    i_arrayidx82_i_processfpga_vt_join_q <= i_arrayidx82_i_processfpga_vt_const_63_q & i_arrayidx82_i_processfpga_vt_select_16_b & GND_q;

    -- i_store_memdep_45_processfpga(BLACKBOX,91)@6
    -- out out_memdep_45_avm_address@20000000
    -- out out_memdep_45_avm_burstcount@20000000
    -- out out_memdep_45_avm_byteenable@20000000
    -- out out_memdep_45_avm_enable@20000000
    -- out out_memdep_45_avm_read@20000000
    -- out out_memdep_45_avm_write@20000000
    -- out out_memdep_45_avm_writedata@20000000
    -- out out_o_stall@7
    -- out out_o_valid@7
    -- out out_o_writeack@7
    thei_store_memdep_45_processfpga : i_store_memdep_45_processfpga2620
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx82_i_processfpga_vt_join_q,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga366_processfpga_out_dest_data_out_182_0,
        in_i_stall => GND_q,
        in_i_valid => redist6_sync_in_aunroll_x_in_i_valid_5_q,
        in_i_writedata => i_load_unnamed_processfpga365_processfpga_vunroll_x_out_o_readdata_1,
        in_memdep_45_avm_readdata => in_memdep_45_avm_readdata,
        in_memdep_45_avm_readdatavalid => in_memdep_45_avm_readdatavalid,
        in_memdep_45_avm_waitrequest => in_memdep_45_avm_waitrequest,
        in_memdep_45_avm_writeack => in_memdep_45_avm_writeack,
        out_memdep_45_avm_address => i_store_memdep_45_processfpga_out_memdep_45_avm_address,
        out_memdep_45_avm_burstcount => i_store_memdep_45_processfpga_out_memdep_45_avm_burstcount,
        out_memdep_45_avm_byteenable => i_store_memdep_45_processfpga_out_memdep_45_avm_byteenable,
        out_memdep_45_avm_enable => i_store_memdep_45_processfpga_out_memdep_45_avm_enable,
        out_memdep_45_avm_read => i_store_memdep_45_processfpga_out_memdep_45_avm_read,
        out_memdep_45_avm_write => i_store_memdep_45_processfpga_out_memdep_45_avm_write,
        out_memdep_45_avm_writedata => i_store_memdep_45_processfpga_out_memdep_45_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_1_ext_sig_sync_out_x(GPOUT,8)
    out_memdep_45_avm_address <= i_store_memdep_45_processfpga_out_memdep_45_avm_address;
    out_memdep_45_avm_enable <= i_store_memdep_45_processfpga_out_memdep_45_avm_enable;
    out_memdep_45_avm_read <= i_store_memdep_45_processfpga_out_memdep_45_avm_read;
    out_memdep_45_avm_write <= i_store_memdep_45_processfpga_out_memdep_45_avm_write;
    out_memdep_45_avm_writedata <= i_store_memdep_45_processfpga_out_memdep_45_avm_writedata;
    out_memdep_45_avm_byteenable <= i_store_memdep_45_processfpga_out_memdep_45_avm_byteenable;
    out_memdep_45_avm_burstcount <= i_store_memdep_45_processfpga_out_memdep_45_avm_burstcount;

    -- redist7_sync_in_aunroll_x_in_i_valid_6(DELAY,155)
    redist7_sync_in_aunroll_x_in_i_valid_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_sync_in_aunroll_x_in_i_valid_5_q, xout => redist7_sync_in_aunroll_x_in_i_valid_6_q, clk => clock, aclr => resetn );

    -- redist3_sync_in_aunroll_x_in_c0_eni21093_1_5(DELAY,151)
    redist3_sync_in_aunroll_x_in_c0_eni21093_1_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni21093_1, xout => redist3_sync_in_aunroll_x_in_c0_eni21093_1_5_q, clk => clock, aclr => resetn );

    -- redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_notEnable(LOGICAL,162)
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_nor(LOGICAL,163)
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_nor_q <= not (redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_notEnable_q or redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_sticky_ena_q);

    -- redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_last(CONSTANT,159)
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_last_q <= "010";

    -- redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_cmp(LOGICAL,160)
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_cmp_b <= STD_LOGIC_VECTOR("0" & redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_rdcnt_q);
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_cmp_q <= "1" WHEN redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_last_q = redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_cmp_b ELSE "0";

    -- redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_cmpReg(REG,161)
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_cmpReg_q <= STD_LOGIC_VECTOR(redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_sticky_ena(REG,164)
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_nor_q = "1") THEN
                redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_enaAnd(LOGICAL,165)
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_enaAnd_q <= redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_sticky_ena_q and VCC_q;

    -- redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_rdcnt(COUNTER,157)
    -- low=0, high=3, step=1, init=0
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_rdcnt_i <= redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_rdcnt_i, 2)));

    -- redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_wraddr(REG,158)
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_wraddr_q <= "11";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_wraddr_q <= STD_LOGIC_VECTOR(redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem(DUALMEM,156)
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_ia <= STD_LOGIC_VECTOR(in_c0_eni21093_2);
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_aa <= redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_wraddr_q;
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_ab <= redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_rdcnt_q;
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_reset0 <= not (resetn);
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 2,
        numwords_a => 4,
        width_b => 32,
        widthad_b => 2,
        numwords_b => 4,
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
        clocken1 => redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_reset0,
        clock1 => clock,
        address_a => redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_aa,
        data_a => redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_ab,
        q_b => redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_iq
    );
    redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_q <= redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_iq(31 downto 0);

    -- i_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga(BLACKBOX,61)@6
    -- out out_feedback_stall_out_94@20000000
    thei_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga : i_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga2632
    PORT MAP (
        in_data_in => redist4_sync_in_aunroll_x_in_c0_eni21093_2_5_mem_q,
        in_dir => redist3_sync_in_aunroll_x_in_c0_eni21093_1_5_q,
        in_feedback_in_94 => i_acl_push_i32_acl_hw_wg_id819_push94_processfpga_out_feedback_out_94,
        in_feedback_valid_in_94 => i_acl_push_i32_acl_hw_wg_id819_push94_processfpga_out_feedback_valid_out_94,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_5_q,
        out_data_out => i_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga_out_data_out,
        out_feedback_stall_out_94 => i_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga_out_feedback_stall_out_94,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i32_acl_hw_wg_id819_push94_processfpga(BLACKBOX,65)@7
    -- out out_feedback_out_94@20000000
    -- out out_feedback_valid_out_94@20000000
    thei_acl_push_i32_acl_hw_wg_id819_push94_processfpga : i_acl_push_i32_acl_hw_wg_id819_push94_processfpga2634
    PORT MAP (
        in_data_in => redist2_i_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga_out_data_out_1_q,
        in_feedback_stall_in_94 => i_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga_out_feedback_stall_out_94,
        in_stall_in => GND_q,
        in_unnamed_processFPGA456 => redist1_i_unnamed_processfpga2625_q_6_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_6_q,
        out_data_out => i_acl_push_i32_acl_hw_wg_id819_push94_processfpga_out_data_out,
        out_feedback_out_94 => i_acl_push_i32_acl_hw_wg_id819_push94_processfpga_out_feedback_out_94,
        out_feedback_valid_out_94 => i_acl_push_i32_acl_hw_wg_id819_push94_processfpga_out_feedback_valid_out_94,
        clock => clock,
        resetn => resetn
    );

    -- redist2_i_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga_out_data_out_1(DELAY,150)
    redist2_i_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga_out_data_out, xout => redist2_i_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist1_i_unnamed_processfpga2625_q_6(DELAY,149)
    redist1_i_unnamed_processfpga2625_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_unnamed_processfpga2625_q_1_q, xout => redist1_i_unnamed_processfpga2625_q_6_q, clk => clock, aclr => resetn );

    -- sync_out_aunroll_x(GPOUT,47)@7
    out_c0_exi31099_0 <= GND_q;
    out_c0_exi31099_1 <= redist1_i_unnamed_processfpga2625_q_6_q;
    out_c0_exi31099_2 <= redist2_i_acl_pop_i32_acl_hw_wg_id819_pop94_processfpga_out_data_out_1_q;
    out_c0_exi31099_3 <= i_acl_push_i32_acl_hw_wg_id819_push94_processfpga_out_data_out;
    out_o_valid <= redist7_sync_in_aunroll_x_in_i_valid_6_q;

    -- i_acl_push_i1_notexitcond739_processfpga(BLACKBOX,64)@1
    -- out out_feedback_out_42@20000000
    -- out out_feedback_valid_out_42@20000000
    thei_acl_push_i1_notexitcond739_processfpga : i_acl_push_i1_notexitcond739_processfpga2630
    PORT MAP (
        in_data_in => i_unnamed_processfpga2625_q,
        in_feedback_stall_in_42 => i_acl_pipeline_keep_going738_processfpga_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_42 => i_acl_push_i1_notexitcond739_processfpga_out_feedback_out_42,
        out_feedback_valid_out_42 => i_acl_push_i1_notexitcond739_processfpga_out_feedback_valid_out_42,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going738_processfpga(BLACKBOX,60)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going738_processfpga : i_acl_pipeline_keep_going738_processfpga2602
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond739_processfpga_out_feedback_out_42,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond739_processfpga_out_feedback_valid_out_42,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going738_processfpga_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going738_processfpga_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going738_processfpga_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going738_processfpga_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,59)
    out_aclp_to_limiter_i_acl_pipeline_keep_going738_processfpga_exiting_valid_out <= i_acl_pipeline_keep_going738_processfpga_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going738_processfpga_exiting_stall_out <= i_acl_pipeline_keep_going738_processfpga_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,96)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going738_processfpga_out_pipeline_valid_out;

END normal;
