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

-- VHDL created from i_sfc_logic_c0_for_body44_processfpga_c0_enter844_processfpga189
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

entity i_sfc_logic_c0_for_body44_processfpga_c0_enter844_processfpga189 is
    port (
        in_c0_eni2843_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2843_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2843_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_conns : in std_logic_vector(63 downto 0);  -- ufix64
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_17_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_20_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_21_0 : in std_logic_vector(16 downto 0);  -- ufix17
        out_c0_exi4850_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi4850_1 : out std_logic_vector(15 downto 0);  -- ufix16
        out_c0_exi4850_2 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi4850_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi4850_4 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going652_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going652_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body44_processfpga_c0_enter844_processfpga189;

architecture normal of i_sfc_logic_c0_for_body44_processfpga_c0_enter844_processfpga189 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going652_processfpga191 is
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


    component i_acl_pop_i16_idx38_11256_pop78_processfpga197 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_78 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_78 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_78 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i17_fpgaindvars_iv175_pop77_processfpga195 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_77 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_77 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_stall_out_77 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga215 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_79 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_79 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_79 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_idx38_11256_push78_processfpga209 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_78 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA442 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_78 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_78 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i17_fpgaindvars_iv175_push77_processfpga211 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_feedback_stall_in_77 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA442 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_out_77 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_77 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond653_processfpga213 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_6 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_acl_hw_wg_id793_push79_processfpga217 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_79 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA442 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_79 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_79 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_conv35371_processfpga199 is
        port (
            in_intel_reserved_ffwd_17_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_17_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga28_processfpga193 is
        port (
            in_intel_reserved_ffwd_21_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_21_0 : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga30_processfpga206 is
        port (
            in_intel_reserved_ffwd_20_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_20_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_conns_sync_buffer55_processfpga201 is
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
    signal bgTrunc_i_add49_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next176_processfpga_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal bgTrunc_i_inc53_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv40_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_idxprom50_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga204_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga204_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_unnamed_processfpga204_mult_multconst_x_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_unnamed_processfpga204_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga204_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_unnamed_processfpga204_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_unnamed_processfpga204_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_unnamed_processfpga204_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal c_i16_0gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_1gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i17_1gr_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i17_undef_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_pipeline_keep_going652_processfpga_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going652_processfpga_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going652_processfpga_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going652_processfpga_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_idx38_11256_pop78_processfpga_out_feedback_stall_out_78 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv175_pop77_processfpga_out_data_out : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv175_pop77_processfpga_out_feedback_stall_out_77 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_feedback_stall_out_79 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_idx38_11256_push78_processfpga_out_feedback_out_78 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_idx38_11256_push78_processfpga_out_feedback_valid_out_78 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv175_push77_processfpga_out_feedback_out_77 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv175_push77_processfpga_out_feedback_valid_out_77 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond653_processfpga_out_feedback_out_6 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond653_processfpga_out_feedback_valid_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id793_push79_processfpga_out_feedback_out_79 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id793_push79_processfpga_out_feedback_valid_out_79 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add49_processfpga_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add49_processfpga_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add49_processfpga_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add49_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_conv40_processfpga_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv40_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_exitcond177_processfpga_a : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond177_processfpga_b : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond177_processfpga_o : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond177_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_conv35371_processfpga_out_dest_data_out_17_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_processfpga28_processfpga_out_dest_data_out_21_0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_ffwd_dst_unnamed_processfpga30_processfpga_out_dest_data_out_20_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv175_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv175_replace_phi_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_fpgaindvars_iv_next176_processfpga_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next176_processfpga_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next176_processfpga_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next176_processfpga_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_inc53_processfpga_a : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc53_processfpga_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc53_processfpga_o : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc53_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_syncbuf_conns_sync_buffer55_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga208_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga204_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_unnamed_processfpga204_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_unnamed_processfpga204_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_unnamed_processfpga204_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_unnamed_processfpga204_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_unnamed_processfpga204_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_unnamed_processfpga204_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_unnamed_processfpga204_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_unnamed_processfpga204_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_unnamed_processfpga204_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_unnamed_processfpga204_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_unnamed_processfpga204_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_unnamed_processfpga204_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_unnamed_processfpga204_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_unnamed_processfpga204_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_processfpga204_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_processfpga204_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_processfpga204_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_processfpga204_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_unnamed_processfpga204_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_unnamed_processfpga204_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_processfpga204_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_unnamed_processfpga204_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_processfpga204_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_processfpga204_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_processfpga204_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_unnamed_processfpga204_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_unnamed_processfpga204_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_unnamed_processfpga204_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_unnamed_processfpga204_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_unnamed_processfpga204_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_processfpga204_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_processfpga204_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_processfpga204_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_processfpga204_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_unnamed_processfpga204_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_unnamed_processfpga204_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_unnamed_processfpga204_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_unnamed_processfpga204_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_processfpga204_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_processfpga204_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_processfpga204_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_unnamed_processfpga204_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_unnamed_processfpga204_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_unnamed_processfpga208_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_unnamed_processfpga208_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist6_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_unnamed_processfpga204_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist9_bgTrunc_i_add49_processfpga_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_4_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_reset0 : std_logic;
    signal redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_rdcnt_i : signal is true;
    signal redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_sticky_ena_q : signal is true;
    signal redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist6_sync_in_aunroll_x_in_i_valid_1(DELAY,114)
    redist6_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist6_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist7_sync_in_aunroll_x_in_i_valid_4(DELAY,115)
    redist7_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_sync_in_aunroll_x_in_i_valid_1_q, xout => redist7_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_unnamed_processfpga30_processfpga(BLACKBOX,58)@1
    thei_ffwd_dst_unnamed_processfpga30_processfpga : i_ffwd_dst_unnamed_processfpga30_processfpga206
    PORT MAP (
        in_intel_reserved_ffwd_20_0 => in_intel_reserved_ffwd_20_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_20_0 => i_ffwd_dst_unnamed_processfpga30_processfpga_out_dest_data_out_20_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga28_processfpga(BLACKBOX,57)@1
    thei_ffwd_dst_unnamed_processfpga28_processfpga : i_ffwd_dst_unnamed_processfpga28_processfpga193
    PORT MAP (
        in_intel_reserved_ffwd_21_0 => in_intel_reserved_ffwd_21_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_21_0 => i_ffwd_dst_unnamed_processfpga28_processfpga_out_dest_data_out_21_0,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv_next176_processfpga(ADD,60)@1
    i_fpgaindvars_iv_next176_processfpga_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv175_replace_phi_processfpga_q);
    i_fpgaindvars_iv_next176_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i17_1gr_q);
    i_fpgaindvars_iv_next176_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next176_processfpga_a) + UNSIGNED(i_fpgaindvars_iv_next176_processfpga_b));
    i_fpgaindvars_iv_next176_processfpga_q <= i_fpgaindvars_iv_next176_processfpga_o(17 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next176_processfpga_sel_x(BITSELECT,3)@1
    bgTrunc_i_fpgaindvars_iv_next176_processfpga_sel_x_b <= i_fpgaindvars_iv_next176_processfpga_q(16 downto 0);

    -- i_acl_push_i17_fpgaindvars_iv175_push77_processfpga(BLACKBOX,47)@1
    -- out out_feedback_out_77@20000000
    -- out out_feedback_valid_out_77@20000000
    thei_acl_push_i17_fpgaindvars_iv175_push77_processfpga : i_acl_push_i17_fpgaindvars_iv175_push77_processfpga211
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next176_processfpga_sel_x_b,
        in_feedback_stall_in_77 => i_acl_pop_i17_fpgaindvars_iv175_pop77_processfpga_out_feedback_stall_out_77,
        in_stall_in => GND_q,
        in_unnamed_processFPGA442 => i_unnamed_processfpga208_q,
        in_valid_in => in_i_valid,
        out_feedback_out_77 => i_acl_push_i17_fpgaindvars_iv175_push77_processfpga_out_feedback_out_77,
        out_feedback_valid_out_77 => i_acl_push_i17_fpgaindvars_iv175_push77_processfpga_out_feedback_valid_out_77,
        clock => clock,
        resetn => resetn
    );

    -- c_i17_undef(CONSTANT,38)
    c_i17_undef_q <= "00000000000000000";

    -- i_acl_pop_i17_fpgaindvars_iv175_pop77_processfpga(BLACKBOX,44)@1
    -- out out_feedback_stall_out_77@20000000
    thei_acl_pop_i17_fpgaindvars_iv175_pop77_processfpga : i_acl_pop_i17_fpgaindvars_iv175_pop77_processfpga195
    PORT MAP (
        in_data_in => c_i17_undef_q,
        in_dir => in_c0_eni2843_1,
        in_feedback_in_77 => i_acl_push_i17_fpgaindvars_iv175_push77_processfpga_out_feedback_out_77,
        in_feedback_valid_in_77 => i_acl_push_i17_fpgaindvars_iv175_push77_processfpga_out_feedback_valid_out_77,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i17_fpgaindvars_iv175_pop77_processfpga_out_data_out,
        out_feedback_stall_out_77 => i_acl_pop_i17_fpgaindvars_iv175_pop77_processfpga_out_feedback_stall_out_77,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv175_replace_phi_processfpga(MUX,59)@1
    i_fpgaindvars_iv175_replace_phi_processfpga_s <= in_c0_eni2843_1;
    i_fpgaindvars_iv175_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv175_replace_phi_processfpga_s, i_acl_pop_i17_fpgaindvars_iv175_pop77_processfpga_out_data_out, i_ffwd_dst_unnamed_processfpga28_processfpga_out_dest_data_out_21_0)
    BEGIN
        CASE (i_fpgaindvars_iv175_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv175_replace_phi_processfpga_q <= i_acl_pop_i17_fpgaindvars_iv175_pop77_processfpga_out_data_out;
            WHEN "1" => i_fpgaindvars_iv175_replace_phi_processfpga_q <= i_ffwd_dst_unnamed_processfpga28_processfpga_out_dest_data_out_21_0;
            WHEN OTHERS => i_fpgaindvars_iv175_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i17_1gr(CONSTANT,37)
    c_i17_1gr_q <= "11111111111111111";

    -- i_exitcond177_processfpga(COMPARE,55)@1
    i_exitcond177_processfpga_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => c_i17_1gr_q(16)) & c_i17_1gr_q));
    i_exitcond177_processfpga_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => i_fpgaindvars_iv175_replace_phi_processfpga_q(16)) & i_fpgaindvars_iv175_replace_phi_processfpga_q));
    i_exitcond177_processfpga_o <= STD_LOGIC_VECTOR(SIGNED(i_exitcond177_processfpga_a) - SIGNED(i_exitcond177_processfpga_b));
    i_exitcond177_processfpga_c(0) <= i_exitcond177_processfpga_o(18);

    -- i_unnamed_processfpga208(LOGICAL,66)@1
    i_unnamed_processfpga208_q <= i_exitcond177_processfpga_c and i_ffwd_dst_unnamed_processfpga30_processfpga_out_dest_data_out_20_0;

    -- redist0_i_unnamed_processfpga208_q_1(DELAY,108)
    redist0_i_unnamed_processfpga208_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga208_q, xout => redist0_i_unnamed_processfpga208_q_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i32_acl_hw_wg_id793_push79_processfpga(BLACKBOX,49)@2
    -- out out_feedback_out_79@20000000
    -- out out_feedback_valid_out_79@20000000
    thei_acl_push_i32_acl_hw_wg_id793_push79_processfpga : i_acl_push_i32_acl_hw_wg_id793_push79_processfpga217
    PORT MAP (
        in_data_in => redist2_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_1_q,
        in_feedback_stall_in_79 => i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_feedback_stall_out_79,
        in_stall_in => GND_q,
        in_unnamed_processFPGA442 => redist0_i_unnamed_processfpga208_q_1_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_79 => i_acl_push_i32_acl_hw_wg_id793_push79_processfpga_out_feedback_out_79,
        out_feedback_valid_out_79 => i_acl_push_i32_acl_hw_wg_id793_push79_processfpga_out_feedback_valid_out_79,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga(BLACKBOX,45)@1
    -- out out_feedback_stall_out_79@20000000
    thei_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga : i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga215
    PORT MAP (
        in_data_in => in_c0_eni2843_2,
        in_dir => in_c0_eni2843_1,
        in_feedback_in_79 => i_acl_push_i32_acl_hw_wg_id793_push79_processfpga_out_feedback_out_79,
        in_feedback_valid_in_79 => i_acl_push_i32_acl_hw_wg_id793_push79_processfpga_out_feedback_valid_out_79,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out,
        out_feedback_stall_out_79 => i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_feedback_stall_out_79,
        clock => clock,
        resetn => resetn
    );

    -- redist2_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_1(DELAY,110)
    redist2_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out, xout => redist2_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist3_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_4_inputreg(DELAY,118)
    redist3_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_4_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_1_q, xout => redist3_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_4_inputreg_q, clk => clock, aclr => resetn );

    -- redist3_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_4(DELAY,111)
    redist3_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_4 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_4_inputreg_q, xout => redist3_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_4_q, clk => clock, aclr => resetn );

    -- redist1_i_unnamed_processfpga208_q_4(DELAY,109)
    redist1_i_unnamed_processfpga208_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_unnamed_processfpga208_q_1_q, xout => redist1_i_unnamed_processfpga208_q_4_q, clk => clock, aclr => resetn );

    -- i_unnamed_processfpga204_mult_multconst_x(CONSTANT,24)
    i_unnamed_processfpga204_mult_multconst_x_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_unnamed_processfpga204_mult_x_im3_shift0(BITSHIFT,98)@3
    i_unnamed_processfpga204_mult_x_im3_shift0_qint <= i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_c & "0";
    i_unnamed_processfpga204_mult_x_im3_shift0_q <= i_unnamed_processfpga204_mult_x_im3_shift0_qint(10 downto 0);

    -- i_ffwd_dst_conv35371_processfpga(BLACKBOX,56)@2
    thei_ffwd_dst_conv35371_processfpga : i_ffwd_dst_conv35371_processfpga199
    PORT MAP (
        in_intel_reserved_ffwd_17_0 => in_intel_reserved_ffwd_17_0,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_17_0 => i_ffwd_dst_conv35371_processfpga_out_dest_data_out_17_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i16_0gr(CONSTANT,35)
    c_i16_0gr_q <= "0000000000000000";

    -- c_i16_1gr(CONSTANT,36)
    c_i16_1gr_q <= "0000000000000001";

    -- i_inc53_processfpga(ADD,63)@2
    i_inc53_processfpga_a <= STD_LOGIC_VECTOR("0" & redist4_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_1_q);
    i_inc53_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i16_1gr_q);
    i_inc53_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc53_processfpga_a) + UNSIGNED(i_inc53_processfpga_b));
    i_inc53_processfpga_q <= i_inc53_processfpga_o(16 downto 0);

    -- bgTrunc_i_inc53_processfpga_sel_x(BITSELECT,4)@2
    bgTrunc_i_inc53_processfpga_sel_x_b <= i_inc53_processfpga_q(15 downto 0);

    -- i_acl_push_i16_idx38_11256_push78_processfpga(BLACKBOX,46)@2
    -- out out_feedback_out_78@20000000
    -- out out_feedback_valid_out_78@20000000
    thei_acl_push_i16_idx38_11256_push78_processfpga : i_acl_push_i16_idx38_11256_push78_processfpga209
    PORT MAP (
        in_data_in => bgTrunc_i_inc53_processfpga_sel_x_b,
        in_feedback_stall_in_78 => i_acl_pop_i16_idx38_11256_pop78_processfpga_out_feedback_stall_out_78,
        in_stall_in => GND_q,
        in_unnamed_processFPGA442 => redist0_i_unnamed_processfpga208_q_1_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_78 => i_acl_push_i16_idx38_11256_push78_processfpga_out_feedback_out_78,
        out_feedback_valid_out_78 => i_acl_push_i16_idx38_11256_push78_processfpga_out_feedback_valid_out_78,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i16_idx38_11256_pop78_processfpga(BLACKBOX,43)@1
    -- out out_feedback_stall_out_78@20000000
    thei_acl_pop_i16_idx38_11256_pop78_processfpga : i_acl_pop_i16_idx38_11256_pop78_processfpga197
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c0_eni2843_1,
        in_feedback_in_78 => i_acl_push_i16_idx38_11256_push78_processfpga_out_feedback_out_78,
        in_feedback_valid_in_78 => i_acl_push_i16_idx38_11256_push78_processfpga_out_feedback_valid_out_78,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out,
        out_feedback_stall_out_78 => i_acl_pop_i16_idx38_11256_pop78_processfpga_out_feedback_stall_out_78,
        clock => clock,
        resetn => resetn
    );

    -- redist4_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_1(DELAY,112)
    redist4_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out, xout => redist4_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_conv40_processfpga_sel_x(BITSELECT,18)@2
    i_conv40_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(redist4_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_1_q(15 downto 0)), 32));

    -- i_conv40_processfpga_vt_select_15(BITSELECT,54)@2
    i_conv40_processfpga_vt_select_15_b <= i_conv40_processfpga_sel_x_b(15 downto 0);

    -- i_conv40_processfpga_vt_join(BITJOIN,53)@2
    i_conv40_processfpga_vt_join_q <= c_i16_0gr_q & i_conv40_processfpga_vt_select_15_b;

    -- i_add49_processfpga(ADD,50)@2
    i_add49_processfpga_a <= STD_LOGIC_VECTOR("0" & i_conv40_processfpga_vt_join_q);
    i_add49_processfpga_b <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_conv35371_processfpga_out_dest_data_out_17_0);
    i_add49_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add49_processfpga_a) + UNSIGNED(i_add49_processfpga_b));
    i_add49_processfpga_q <= i_add49_processfpga_o(32 downto 0);

    -- bgTrunc_i_add49_processfpga_sel_x(BITSELECT,2)@2
    bgTrunc_i_add49_processfpga_sel_x_b <= i_add49_processfpga_q(31 downto 0);

    -- redist9_bgTrunc_i_add49_processfpga_sel_x_b_1(DELAY,117)
    redist9_bgTrunc_i_add49_processfpga_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add49_processfpga_sel_x_b, xout => redist9_bgTrunc_i_add49_processfpga_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_idxprom50_processfpga_sel_x(BITSELECT,19)@3
    i_idxprom50_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist9_bgTrunc_i_add49_processfpga_sel_x_b_1_q(31 downto 0)), 64)));

    -- i_unnamed_processfpga204_mult_x_bs1_merged_bit_select(BITSELECT,107)@3
    i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_b <= i_idxprom50_processfpga_sel_x_b(17 downto 0);
    i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_c <= i_idxprom50_processfpga_sel_x_b(63 downto 54);
    i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_d <= i_idxprom50_processfpga_sel_x_b(35 downto 18);
    i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_e <= i_idxprom50_processfpga_sel_x_b(53 downto 36);

    -- i_unnamed_processfpga204_mult_x_im3_add_1(ADD,99)@3 + 1
    i_unnamed_processfpga204_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_c);
    i_unnamed_processfpga204_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_processfpga204_mult_x_im3_shift0_q);
    i_unnamed_processfpga204_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_unnamed_processfpga204_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_unnamed_processfpga204_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_processfpga204_mult_x_im3_add_1_a) + UNSIGNED(i_unnamed_processfpga204_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_unnamed_processfpga204_mult_x_im3_add_1_q <= i_unnamed_processfpga204_mult_x_im3_add_1_o(11 downto 0);

    -- i_unnamed_processfpga204_mult_x_im3_shift2(BITSHIFT,100)@4
    i_unnamed_processfpga204_mult_x_im3_shift2_qint <= i_unnamed_processfpga204_mult_x_im3_add_1_q & "00";
    i_unnamed_processfpga204_mult_x_im3_shift2_q <= i_unnamed_processfpga204_mult_x_im3_shift2_qint(13 downto 0);

    -- i_unnamed_processfpga204_mult_x_align_15(BITSHIFT,87)@4
    i_unnamed_processfpga204_mult_x_align_15_qint <= i_unnamed_processfpga204_mult_x_im3_shift2_q & "00000000000000";
    i_unnamed_processfpga204_mult_x_align_15_q <= i_unnamed_processfpga204_mult_x_align_15_qint(27 downto 0);

    -- i_unnamed_processfpga204_mult_x_im6_shift0(BITSHIFT,101)@3
    i_unnamed_processfpga204_mult_x_im6_shift0_qint <= i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_d & "0";
    i_unnamed_processfpga204_mult_x_im6_shift0_q <= i_unnamed_processfpga204_mult_x_im6_shift0_qint(18 downto 0);

    -- i_unnamed_processfpga204_mult_x_im6_add_1(ADD,102)@3 + 1
    i_unnamed_processfpga204_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_d);
    i_unnamed_processfpga204_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_processfpga204_mult_x_im6_shift0_q);
    i_unnamed_processfpga204_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_unnamed_processfpga204_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_unnamed_processfpga204_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_processfpga204_mult_x_im6_add_1_a) + UNSIGNED(i_unnamed_processfpga204_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_unnamed_processfpga204_mult_x_im6_add_1_q <= i_unnamed_processfpga204_mult_x_im6_add_1_o(19 downto 0);

    -- i_unnamed_processfpga204_mult_x_im6_shift2(BITSHIFT,103)@4
    i_unnamed_processfpga204_mult_x_im6_shift2_qint <= i_unnamed_processfpga204_mult_x_im6_add_1_q & "00";
    i_unnamed_processfpga204_mult_x_im6_shift2_q <= i_unnamed_processfpga204_mult_x_im6_shift2_qint(21 downto 0);

    -- i_unnamed_processfpga204_mult_x_align_14(BITSHIFT,86)@4
    i_unnamed_processfpga204_mult_x_align_14_qint <= i_unnamed_processfpga204_mult_x_im6_shift2_q & "000000000000000000";
    i_unnamed_processfpga204_mult_x_align_14_q <= i_unnamed_processfpga204_mult_x_align_14_qint(39 downto 0);

    -- i_unnamed_processfpga204_mult_x_join_16(BITJOIN,88)@4
    i_unnamed_processfpga204_mult_x_join_16_q <= i_unnamed_processfpga204_mult_x_align_15_q & i_unnamed_processfpga204_mult_x_align_14_q;

    -- i_unnamed_processfpga204_mult_x_im9_shift0(BITSHIFT,104)@3
    i_unnamed_processfpga204_mult_x_im9_shift0_qint <= i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_e & "0";
    i_unnamed_processfpga204_mult_x_im9_shift0_q <= i_unnamed_processfpga204_mult_x_im9_shift0_qint(18 downto 0);

    -- i_unnamed_processfpga204_mult_x_im9_add_1(ADD,105)@3 + 1
    i_unnamed_processfpga204_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_e);
    i_unnamed_processfpga204_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_processfpga204_mult_x_im9_shift0_q);
    i_unnamed_processfpga204_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_unnamed_processfpga204_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_unnamed_processfpga204_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_processfpga204_mult_x_im9_add_1_a) + UNSIGNED(i_unnamed_processfpga204_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_unnamed_processfpga204_mult_x_im9_add_1_q <= i_unnamed_processfpga204_mult_x_im9_add_1_o(19 downto 0);

    -- i_unnamed_processfpga204_mult_x_im9_shift2(BITSHIFT,106)@4
    i_unnamed_processfpga204_mult_x_im9_shift2_qint <= i_unnamed_processfpga204_mult_x_im9_add_1_q & "00";
    i_unnamed_processfpga204_mult_x_im9_shift2_q <= i_unnamed_processfpga204_mult_x_im9_shift2_qint(21 downto 0);

    -- i_unnamed_processfpga204_mult_x_align_12(BITSHIFT,84)@4
    i_unnamed_processfpga204_mult_x_align_12_qint <= i_unnamed_processfpga204_mult_x_im9_shift2_q & "00000000000000";
    i_unnamed_processfpga204_mult_x_align_12_q <= i_unnamed_processfpga204_mult_x_align_12_qint(35 downto 0);

    -- i_unnamed_processfpga204_mult_x_im0_shift0(BITSHIFT,95)@3
    i_unnamed_processfpga204_mult_x_im0_shift0_qint <= i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_b & "0";
    i_unnamed_processfpga204_mult_x_im0_shift0_q <= i_unnamed_processfpga204_mult_x_im0_shift0_qint(18 downto 0);

    -- i_unnamed_processfpga204_mult_x_im0_add_1(ADD,96)@3 + 1
    i_unnamed_processfpga204_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_unnamed_processfpga204_mult_x_bs1_merged_bit_select_b);
    i_unnamed_processfpga204_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_unnamed_processfpga204_mult_x_im0_shift0_q);
    i_unnamed_processfpga204_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_unnamed_processfpga204_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_unnamed_processfpga204_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_processfpga204_mult_x_im0_add_1_a) + UNSIGNED(i_unnamed_processfpga204_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_unnamed_processfpga204_mult_x_im0_add_1_q <= i_unnamed_processfpga204_mult_x_im0_add_1_o(19 downto 0);

    -- i_unnamed_processfpga204_mult_x_im0_shift2(BITSHIFT,97)@4
    i_unnamed_processfpga204_mult_x_im0_shift2_qint <= i_unnamed_processfpga204_mult_x_im0_add_1_q & "00";
    i_unnamed_processfpga204_mult_x_im0_shift2_q <= i_unnamed_processfpga204_mult_x_im0_shift2_qint(21 downto 0);

    -- i_unnamed_processfpga204_mult_x_join_13(BITJOIN,85)@4
    i_unnamed_processfpga204_mult_x_join_13_q <= i_unnamed_processfpga204_mult_x_align_12_q & i_unnamed_processfpga204_mult_x_im0_shift2_q;

    -- i_unnamed_processfpga204_mult_x_result_add_0_0(ADD,89)@4
    i_unnamed_processfpga204_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_unnamed_processfpga204_mult_x_join_13_q);
    i_unnamed_processfpga204_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_unnamed_processfpga204_mult_x_join_16_q);
    i_unnamed_processfpga204_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_processfpga204_mult_x_result_add_0_0_a) + UNSIGNED(i_unnamed_processfpga204_mult_x_result_add_0_0_b));
    i_unnamed_processfpga204_mult_x_result_add_0_0_q <= i_unnamed_processfpga204_mult_x_result_add_0_0_o(68 downto 0);

    -- i_unnamed_processfpga204_mult_extender_x(BITJOIN,23)@4
    i_unnamed_processfpga204_mult_extender_x_q <= i_unnamed_processfpga204_mult_multconst_x_q & i_unnamed_processfpga204_mult_x_result_add_0_0_q(67 downto 0);

    -- i_unnamed_processfpga204_trunc_sel_x(BITSELECT,25)@4
    i_unnamed_processfpga204_trunc_sel_x_b <= i_unnamed_processfpga204_mult_extender_x_q(63 downto 0);

    -- redist8_i_unnamed_processfpga204_trunc_sel_x_b_1(DELAY,116)
    redist8_i_unnamed_processfpga204_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga204_trunc_sel_x_b, xout => redist8_i_unnamed_processfpga204_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_conns_sync_buffer55_processfpga(BLACKBOX,65)@0
    -- in in_i_dependence@5
    -- in in_valid_in@5
    -- out out_buffer_out@5
    -- out out_valid_out@5
    thei_syncbuf_conns_sync_buffer55_processfpga : i_syncbuf_conns_sync_buffer55_processfpga201
    PORT MAP (
        in_buffer_in => in_conns,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_4_q,
        out_buffer_out => i_syncbuf_conns_sync_buffer55_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_processfpga204_add_x(ADD,26)@5
    i_unnamed_processfpga204_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_conns_sync_buffer55_processfpga_out_buffer_out);
    i_unnamed_processfpga204_add_x_b <= STD_LOGIC_VECTOR("0" & redist8_i_unnamed_processfpga204_trunc_sel_x_b_1_q);
    i_unnamed_processfpga204_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_processfpga204_add_x_a) + UNSIGNED(i_unnamed_processfpga204_add_x_b));
    i_unnamed_processfpga204_add_x_q <= i_unnamed_processfpga204_add_x_o(64 downto 0);

    -- i_unnamed_processfpga204_dupName_0_trunc_sel_x(BITSELECT,20)@5
    i_unnamed_processfpga204_dupName_0_trunc_sel_x_b <= i_unnamed_processfpga204_add_x_q(63 downto 0);

    -- redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_notEnable(LOGICAL,123)
    redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_nor(LOGICAL,124)
    redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_nor_q <= not (redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_notEnable_q or redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_sticky_ena_q);

    -- redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_cmpReg(REG,122)
    redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_sticky_ena(REG,125)
    redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_nor_q = "1") THEN
                redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_enaAnd(LOGICAL,126)
    redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_enaAnd_q <= redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_sticky_ena_q and VCC_q;

    -- redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_rdcnt(COUNTER,120)
    -- low=0, high=1, step=1, init=0
    redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_rdcnt_i <= redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_rdcnt_i, 1)));

    -- redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_wraddr(REG,121)
    redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_wraddr_q <= STD_LOGIC_VECTOR(redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem(DUALMEM,119)
    redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_ia <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_1_q);
    redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_aa <= redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_wraddr_q;
    redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_ab <= redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_rdcnt_q;
    redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_reset0 <= not (resetn);
    redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 16,
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
        clocken1 => redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_reset0,
        clock1 => clock,
        address_a => redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_aa,
        data_a => redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_ab,
        q_b => redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_iq
    );
    redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_q <= redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_iq(15 downto 0);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,31)@5
    out_c0_exi4850_0 <= GND_q;
    out_c0_exi4850_1 <= redist5_i_acl_pop_i16_idx38_11256_pop78_processfpga_out_data_out_4_mem_q;
    out_c0_exi4850_2 <= i_unnamed_processfpga204_dupName_0_trunc_sel_x_b;
    out_c0_exi4850_3 <= redist1_i_unnamed_processfpga208_q_4_q;
    out_c0_exi4850_4 <= redist3_i_acl_pop_i32_acl_hw_wg_id793_pop79_processfpga_out_data_out_4_q;
    out_o_valid <= redist7_sync_in_aunroll_x_in_i_valid_4_q;

    -- i_acl_push_i1_notexitcond653_processfpga(BLACKBOX,48)@1
    -- out out_feedback_out_6@20000000
    -- out out_feedback_valid_out_6@20000000
    thei_acl_push_i1_notexitcond653_processfpga : i_acl_push_i1_notexitcond653_processfpga213
    PORT MAP (
        in_data_in => i_unnamed_processfpga208_q,
        in_feedback_stall_in_6 => i_acl_pipeline_keep_going652_processfpga_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_6 => i_acl_push_i1_notexitcond653_processfpga_out_feedback_out_6,
        out_feedback_valid_out_6 => i_acl_push_i1_notexitcond653_processfpga_out_feedback_valid_out_6,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going652_processfpga(BLACKBOX,42)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going652_processfpga : i_acl_pipeline_keep_going652_processfpga191
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond653_processfpga_out_feedback_out_6,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond653_processfpga_out_feedback_valid_out_6,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going652_processfpga_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going652_processfpga_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going652_processfpga_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going652_processfpga_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,41)
    out_aclp_to_limiter_i_acl_pipeline_keep_going652_processfpga_exiting_valid_out <= i_acl_pipeline_keep_going652_processfpga_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going652_processfpga_exiting_stall_out <= i_acl_pipeline_keep_going652_processfpga_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,70)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going652_processfpga_out_pipeline_valid_out;

END normal;
