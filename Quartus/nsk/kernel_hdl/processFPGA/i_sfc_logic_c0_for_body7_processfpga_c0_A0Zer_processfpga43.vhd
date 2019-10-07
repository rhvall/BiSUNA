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

-- VHDL created from i_sfc_logic_c0_for_body7_processfpga_c0_enter_processfpga43
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

entity i_sfc_logic_c0_for_body7_processfpga_c0_enter_processfpga43 is
    port (
        in_c0_eni2_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_input : in std_logic_vector(63 downto 0);  -- ufix64
        in_intel_reserved_ffwd_10_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_11_0 : in std_logic_vector(16 downto 0);  -- ufix17
        in_intel_reserved_ffwd_9_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_localInput : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi5_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi5_1 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi5_2 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi5_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi5_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi5_5 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body7_processfpga_c0_enter_processfpga43;

architecture normal of i_sfc_logic_c0_for_body7_processfpga_c0_enter_processfpga43 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going_processfpga45 is
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


    component i_acl_pop_i16_idx_11252_pop84_processfpga51 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_84 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_84 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_84 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i17_fpgaindvars_iv_pop83_processfpga49 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_83 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_83 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_stall_out_83 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga71 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_85 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_85 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_85 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_idx_11252_push84_processfpga65 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_84 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_84 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_84 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i17_fpgaindvars_iv_push83_processfpga67 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_feedback_stall_in_83 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_out_83 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_83 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond_processfpga69 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_2 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_acl_hw_wg_id791_push85_processfpga73 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_85 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_85 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_85 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp51251349_processfpga62 is
        port (
            in_intel_reserved_ffwd_9_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_9_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_conv8351_processfpga53 is
        port (
            in_intel_reserved_ffwd_10_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_10_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga13_processfpga47 is
        port (
            in_intel_reserved_ffwd_11_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_11_0 : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_input_sync_buffer_processfpga55 is
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


    component i_syncbuf_localinput_sync_buffer165_processfpga58 is
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
    signal bgTrunc_i_add_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next_processfpga_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal bgTrunc_i_inc_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_multconst_x_q : STD_LOGIC_VECTOR (61 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_conv3_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_idxprom10_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom12_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i16_0gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_1gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i17_1gr_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i17_undef_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_pipeline_keep_going_processfpga_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_processfpga_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_processfpga_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_processfpga_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_idx_11252_pop84_processfpga_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_idx_11252_pop84_processfpga_out_feedback_stall_out_84 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv_pop83_processfpga_out_data_out : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv_pop83_processfpga_out_feedback_stall_out_83 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_feedback_stall_out_85 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_idx_11252_push84_processfpga_out_feedback_out_84 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_idx_11252_push84_processfpga_out_feedback_valid_out_84 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv_push83_processfpga_out_feedback_out_83 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv_push83_processfpga_out_feedback_valid_out_83 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond_processfpga_out_feedback_out_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond_processfpga_out_feedback_valid_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id791_push85_processfpga_out_feedback_out_85 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id791_push85_processfpga_out_feedback_valid_out_85 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add_processfpga_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_processfpga_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_processfpga_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_conv3_processfpga_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv3_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_cmp51251349_processfpga_out_dest_data_out_9_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_conv8351_processfpga_out_dest_data_out_10_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_processfpga13_processfpga_out_dest_data_out_11_0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_fpgaindvars_iv_next_processfpga_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next_processfpga_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next_processfpga_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next_processfpga_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv_replace_phi_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_idxprom12_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom12_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom12_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_inc_processfpga_a : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc_processfpga_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc_processfpga_o : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_notexit_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_input_sync_buffer_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localinput_sync_buffer165_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga64_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_join_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_align_14_q : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_align_14_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_join_16_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_join_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_align_14_q : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_align_14_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_join_16_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond171_processfpga_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx11_processfpga_processfpga57_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx13_processfpga_processfpga60_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_unnamed_processfpga64_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_notexit_processfpga_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_notexit_processfpga_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_data_out_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_acl_pop_i16_idx_11252_pop84_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist6_i_acl_pop_i16_idx_11252_pop84_processfpga_out_data_out_2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist7_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_arrayidx13_processfpga_processfpga60_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist10_i_arrayidx11_processfpga_processfpga57_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist11_bgTrunc_i_add_processfpga_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist7_sync_in_aunroll_x_in_i_valid_1(DELAY,151)
    redist7_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist7_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist8_sync_in_aunroll_x_in_i_valid_3(DELAY,152)
    redist8_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_sync_in_aunroll_x_in_i_valid_1_q, xout => redist8_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_unnamed_processfpga13_processfpga(BLACKBOX,71)@1
    thei_ffwd_dst_unnamed_processfpga13_processfpga : i_ffwd_dst_unnamed_processfpga13_processfpga47
    PORT MAP (
        in_intel_reserved_ffwd_11_0 => in_intel_reserved_ffwd_11_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_11_0 => i_ffwd_dst_unnamed_processfpga13_processfpga_out_dest_data_out_11_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i17_1gr(CONSTANT,50)
    c_i17_1gr_q <= "11111111111111111";

    -- i_fpgaindvars_iv_next_processfpga(ADD,72)@1
    i_fpgaindvars_iv_next_processfpga_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv_replace_phi_processfpga_q);
    i_fpgaindvars_iv_next_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i17_1gr_q);
    i_fpgaindvars_iv_next_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next_processfpga_a) + UNSIGNED(i_fpgaindvars_iv_next_processfpga_b));
    i_fpgaindvars_iv_next_processfpga_q <= i_fpgaindvars_iv_next_processfpga_o(17 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next_processfpga_sel_x(BITSELECT,3)@1
    bgTrunc_i_fpgaindvars_iv_next_processfpga_sel_x_b <= i_fpgaindvars_iv_next_processfpga_q(16 downto 0);

    -- i_acl_push_i17_fpgaindvars_iv_push83_processfpga(BLACKBOX,60)@1
    -- out out_feedback_out_83@20000000
    -- out out_feedback_valid_out_83@20000000
    thei_acl_push_i17_fpgaindvars_iv_push83_processfpga : i_acl_push_i17_fpgaindvars_iv_push83_processfpga67
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next_processfpga_sel_x_b,
        in_feedback_stall_in_83 => i_acl_pop_i17_fpgaindvars_iv_pop83_processfpga_out_feedback_stall_out_83,
        in_notexit => i_notexit_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_83 => i_acl_push_i17_fpgaindvars_iv_push83_processfpga_out_feedback_out_83,
        out_feedback_valid_out_83 => i_acl_push_i17_fpgaindvars_iv_push83_processfpga_out_feedback_valid_out_83,
        clock => clock,
        resetn => resetn
    );

    -- c_i17_undef(CONSTANT,51)
    c_i17_undef_q <= "00000000000000000";

    -- i_acl_pop_i17_fpgaindvars_iv_pop83_processfpga(BLACKBOX,57)@1
    -- out out_feedback_stall_out_83@20000000
    thei_acl_pop_i17_fpgaindvars_iv_pop83_processfpga : i_acl_pop_i17_fpgaindvars_iv_pop83_processfpga49
    PORT MAP (
        in_data_in => c_i17_undef_q,
        in_dir => in_c0_eni2_1,
        in_feedback_in_83 => i_acl_push_i17_fpgaindvars_iv_push83_processfpga_out_feedback_out_83,
        in_feedback_valid_in_83 => i_acl_push_i17_fpgaindvars_iv_push83_processfpga_out_feedback_valid_out_83,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i17_fpgaindvars_iv_pop83_processfpga_out_data_out,
        out_feedback_stall_out_83 => i_acl_pop_i17_fpgaindvars_iv_pop83_processfpga_out_feedback_stall_out_83,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv_replace_phi_processfpga(MUX,73)@1
    i_fpgaindvars_iv_replace_phi_processfpga_s <= in_c0_eni2_1;
    i_fpgaindvars_iv_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv_replace_phi_processfpga_s, i_acl_pop_i17_fpgaindvars_iv_pop83_processfpga_out_data_out, i_ffwd_dst_unnamed_processfpga13_processfpga_out_dest_data_out_11_0)
    BEGIN
        CASE (i_fpgaindvars_iv_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv_replace_phi_processfpga_q <= i_acl_pop_i17_fpgaindvars_iv_pop83_processfpga_out_data_out;
            WHEN "1" => i_fpgaindvars_iv_replace_phi_processfpga_q <= i_ffwd_dst_unnamed_processfpga13_processfpga_out_dest_data_out_11_0;
            WHEN OTHERS => i_fpgaindvars_iv_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_exitcond171_processfpga_cmp_sign(LOGICAL,140)@1
    i_exitcond171_processfpga_cmp_sign_q <= STD_LOGIC_VECTOR(i_fpgaindvars_iv_replace_phi_processfpga_q(16 downto 16));

    -- i_ffwd_dst_cmp51251349_processfpga(BLACKBOX,69)@1
    thei_ffwd_dst_cmp51251349_processfpga : i_ffwd_dst_cmp51251349_processfpga62
    PORT MAP (
        in_intel_reserved_ffwd_9_0 => in_intel_reserved_ffwd_9_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_9_0 => i_ffwd_dst_cmp51251349_processfpga_out_dest_data_out_9_0,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_processfpga64(LOGICAL,84)@1
    i_unnamed_processfpga64_q <= i_ffwd_dst_cmp51251349_processfpga_out_dest_data_out_9_0 or i_exitcond171_processfpga_cmp_sign_q;

    -- i_notexit_processfpga(LOGICAL,81)@1
    i_notexit_processfpga_q <= i_unnamed_processfpga64_q xor VCC_q;

    -- redist1_i_notexit_processfpga_q_1(DELAY,145)
    redist1_i_notexit_processfpga_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit_processfpga_q, xout => redist1_i_notexit_processfpga_q_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i32_acl_hw_wg_id791_push85_processfpga(BLACKBOX,62)@2
    -- out out_feedback_out_85@20000000
    -- out out_feedback_valid_out_85@20000000
    thei_acl_push_i32_acl_hw_wg_id791_push85_processfpga : i_acl_push_i32_acl_hw_wg_id791_push85_processfpga73
    PORT MAP (
        in_data_in => redist3_i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_data_out_1_q,
        in_feedback_stall_in_85 => i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_feedback_stall_out_85,
        in_notexit => redist1_i_notexit_processfpga_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_85 => i_acl_push_i32_acl_hw_wg_id791_push85_processfpga_out_feedback_out_85,
        out_feedback_valid_out_85 => i_acl_push_i32_acl_hw_wg_id791_push85_processfpga_out_feedback_valid_out_85,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga(BLACKBOX,58)@1
    -- out out_feedback_stall_out_85@20000000
    thei_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga : i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga71
    PORT MAP (
        in_data_in => in_c0_eni2_2,
        in_dir => in_c0_eni2_1,
        in_feedback_in_85 => i_acl_push_i32_acl_hw_wg_id791_push85_processfpga_out_feedback_out_85,
        in_feedback_valid_in_85 => i_acl_push_i32_acl_hw_wg_id791_push85_processfpga_out_feedback_valid_out_85,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_data_out,
        out_feedback_stall_out_85 => i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_feedback_stall_out_85,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_data_out_1(DELAY,147)
    redist3_i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_data_out, xout => redist3_i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist4_i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_data_out_3(DELAY,148)
    redist4_i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_data_out_3 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_data_out_1_q, xout => redist4_i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_data_out_3_q, clk => clock, aclr => resetn );

    -- redist2_i_notexit_processfpga_q_3(DELAY,146)
    redist2_i_notexit_processfpga_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_i_notexit_processfpga_q_1_q, xout => redist2_i_notexit_processfpga_q_3_q, clk => clock, aclr => resetn );

    -- redist0_i_unnamed_processfpga64_q_3(DELAY,144)
    redist0_i_unnamed_processfpga64_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga64_q, xout => redist0_i_unnamed_processfpga64_q_3_q, clk => clock, aclr => resetn );

    -- i_arrayidx11_processfpga_processfpga57_mult_multconst_x(CONSTANT,23)
    i_arrayidx11_processfpga_processfpga57_mult_multconst_x_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- i_idxprom12_processfpga_vt_const_63(CONSTANT,77)
    i_idxprom12_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- c_i16_1gr(CONSTANT,48)
    c_i16_1gr_q <= "0000000000000001";

    -- i_inc_processfpga(ADD,80)@2
    i_inc_processfpga_a <= STD_LOGIC_VECTOR("0" & redist5_i_acl_pop_i16_idx_11252_pop84_processfpga_out_data_out_1_q);
    i_inc_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i16_1gr_q);
    i_inc_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc_processfpga_a) + UNSIGNED(i_inc_processfpga_b));
    i_inc_processfpga_q <= i_inc_processfpga_o(16 downto 0);

    -- bgTrunc_i_inc_processfpga_sel_x(BITSELECT,4)@2
    bgTrunc_i_inc_processfpga_sel_x_b <= i_inc_processfpga_q(15 downto 0);

    -- i_acl_push_i16_idx_11252_push84_processfpga(BLACKBOX,59)@2
    -- out out_feedback_out_84@20000000
    -- out out_feedback_valid_out_84@20000000
    thei_acl_push_i16_idx_11252_push84_processfpga : i_acl_push_i16_idx_11252_push84_processfpga65
    PORT MAP (
        in_data_in => bgTrunc_i_inc_processfpga_sel_x_b,
        in_feedback_stall_in_84 => i_acl_pop_i16_idx_11252_pop84_processfpga_out_feedback_stall_out_84,
        in_notexit => redist1_i_notexit_processfpga_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_84 => i_acl_push_i16_idx_11252_push84_processfpga_out_feedback_out_84,
        out_feedback_valid_out_84 => i_acl_push_i16_idx_11252_push84_processfpga_out_feedback_valid_out_84,
        clock => clock,
        resetn => resetn
    );

    -- c_i16_0gr(CONSTANT,47)
    c_i16_0gr_q <= "0000000000000000";

    -- i_acl_pop_i16_idx_11252_pop84_processfpga(BLACKBOX,56)@1
    -- out out_feedback_stall_out_84@20000000
    thei_acl_pop_i16_idx_11252_pop84_processfpga : i_acl_pop_i16_idx_11252_pop84_processfpga51
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c0_eni2_1,
        in_feedback_in_84 => i_acl_push_i16_idx_11252_push84_processfpga_out_feedback_out_84,
        in_feedback_valid_in_84 => i_acl_push_i16_idx_11252_push84_processfpga_out_feedback_valid_out_84,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_idx_11252_pop84_processfpga_out_data_out,
        out_feedback_stall_out_84 => i_acl_pop_i16_idx_11252_pop84_processfpga_out_feedback_stall_out_84,
        clock => clock,
        resetn => resetn
    );

    -- redist5_i_acl_pop_i16_idx_11252_pop84_processfpga_out_data_out_1(DELAY,149)
    redist5_i_acl_pop_i16_idx_11252_pop84_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i16_idx_11252_pop84_processfpga_out_data_out, xout => redist5_i_acl_pop_i16_idx_11252_pop84_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist6_i_acl_pop_i16_idx_11252_pop84_processfpga_out_data_out_2(DELAY,150)
    redist6_i_acl_pop_i16_idx_11252_pop84_processfpga_out_data_out_2 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_i_acl_pop_i16_idx_11252_pop84_processfpga_out_data_out_1_q, xout => redist6_i_acl_pop_i16_idx_11252_pop84_processfpga_out_data_out_2_q, clk => clock, aclr => resetn );

    -- i_idxprom12_processfpga_sel_x(BITSELECT,41)@3
    i_idxprom12_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(redist6_i_acl_pop_i16_idx_11252_pop84_processfpga_out_data_out_2_q(15 downto 0)), 64));

    -- i_idxprom12_processfpga_vt_select_15(BITSELECT,79)@3
    i_idxprom12_processfpga_vt_select_15_b <= i_idxprom12_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom12_processfpga_vt_join(BITJOIN,78)@3
    i_idxprom12_processfpga_vt_join_q <= i_idxprom12_processfpga_vt_const_63_q & i_idxprom12_processfpga_vt_select_15_b;

    -- i_arrayidx13_processfpga_processfpga60_mult_x_bs1_merged_bit_select(BITSELECT,143)@3
    i_arrayidx13_processfpga_processfpga60_mult_x_bs1_merged_bit_select_b <= i_idxprom12_processfpga_vt_join_q(17 downto 0);
    i_arrayidx13_processfpga_processfpga60_mult_x_bs1_merged_bit_select_c <= i_idxprom12_processfpga_vt_join_q(63 downto 54);
    i_arrayidx13_processfpga_processfpga60_mult_x_bs1_merged_bit_select_d <= i_idxprom12_processfpga_vt_join_q(35 downto 18);
    i_arrayidx13_processfpga_processfpga60_mult_x_bs1_merged_bit_select_e <= i_idxprom12_processfpga_vt_join_q(53 downto 36);

    -- i_arrayidx13_processfpga_processfpga60_mult_x_im3_shift0(BITSHIFT,137)@3
    i_arrayidx13_processfpga_processfpga60_mult_x_im3_shift0_qint <= i_arrayidx13_processfpga_processfpga60_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx13_processfpga_processfpga60_mult_x_im3_shift0_q <= i_arrayidx13_processfpga_processfpga60_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx13_processfpga_processfpga60_mult_x_align_15(BITSHIFT,123)@3
    i_arrayidx13_processfpga_processfpga60_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx13_processfpga_processfpga60_mult_x_im3_shift0_q) & "0000000000000000";
    i_arrayidx13_processfpga_processfpga60_mult_x_align_15_q <= i_arrayidx13_processfpga_processfpga60_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx13_processfpga_processfpga60_mult_x_im6_shift0(BITSHIFT,138)@3
    i_arrayidx13_processfpga_processfpga60_mult_x_im6_shift0_qint <= i_arrayidx13_processfpga_processfpga60_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx13_processfpga_processfpga60_mult_x_im6_shift0_q <= i_arrayidx13_processfpga_processfpga60_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx13_processfpga_processfpga60_mult_x_align_14(BITSHIFT,122)@3
    i_arrayidx13_processfpga_processfpga60_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx13_processfpga_processfpga60_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx13_processfpga_processfpga60_mult_x_align_14_q <= i_arrayidx13_processfpga_processfpga60_mult_x_align_14_qint(37 downto 0);

    -- i_arrayidx13_processfpga_processfpga60_mult_x_join_16(BITJOIN,124)@3
    i_arrayidx13_processfpga_processfpga60_mult_x_join_16_q <= i_arrayidx13_processfpga_processfpga60_mult_x_align_15_q & i_arrayidx13_processfpga_processfpga60_mult_x_align_14_q;

    -- i_arrayidx13_processfpga_processfpga60_mult_x_im9_shift0(BITSHIFT,139)@3
    i_arrayidx13_processfpga_processfpga60_mult_x_im9_shift0_qint <= i_arrayidx13_processfpga_processfpga60_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx13_processfpga_processfpga60_mult_x_im9_shift0_q <= i_arrayidx13_processfpga_processfpga60_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx13_processfpga_processfpga60_mult_x_align_12(BITSHIFT,120)@3
    i_arrayidx13_processfpga_processfpga60_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx13_processfpga_processfpga60_mult_x_im9_shift0_q) & "0000000000000000";
    i_arrayidx13_processfpga_processfpga60_mult_x_align_12_q <= i_arrayidx13_processfpga_processfpga60_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx13_processfpga_processfpga60_mult_x_im0_shift0(BITSHIFT,136)@3
    i_arrayidx13_processfpga_processfpga60_mult_x_im0_shift0_qint <= i_arrayidx13_processfpga_processfpga60_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx13_processfpga_processfpga60_mult_x_im0_shift0_q <= i_arrayidx13_processfpga_processfpga60_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx13_processfpga_processfpga60_mult_x_join_13(BITJOIN,121)@3
    i_arrayidx13_processfpga_processfpga60_mult_x_join_13_q <= i_arrayidx13_processfpga_processfpga60_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx13_processfpga_processfpga60_mult_x_im0_shift0_q);

    -- i_arrayidx13_processfpga_processfpga60_mult_x_result_add_0_0(ADD,125)@3
    i_arrayidx13_processfpga_processfpga60_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx13_processfpga_processfpga60_mult_x_join_13_q);
    i_arrayidx13_processfpga_processfpga60_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx13_processfpga_processfpga60_mult_x_join_16_q);
    i_arrayidx13_processfpga_processfpga60_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx13_processfpga_processfpga60_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx13_processfpga_processfpga60_mult_x_result_add_0_0_b));
    i_arrayidx13_processfpga_processfpga60_mult_x_result_add_0_0_q <= i_arrayidx13_processfpga_processfpga60_mult_x_result_add_0_0_o(66 downto 0);

    -- i_arrayidx13_processfpga_processfpga60_mult_extender_x(BITJOIN,32)@3
    i_arrayidx13_processfpga_processfpga60_mult_extender_x_q <= i_arrayidx11_processfpga_processfpga57_mult_multconst_x_q & i_arrayidx13_processfpga_processfpga60_mult_x_result_add_0_0_q(65 downto 0);

    -- i_arrayidx13_processfpga_processfpga60_trunc_sel_x(BITSELECT,34)@3
    i_arrayidx13_processfpga_processfpga60_trunc_sel_x_b <= i_arrayidx13_processfpga_processfpga60_mult_extender_x_q(63 downto 0);

    -- redist9_i_arrayidx13_processfpga_processfpga60_trunc_sel_x_b_1(DELAY,153)
    redist9_i_arrayidx13_processfpga_processfpga60_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx13_processfpga_processfpga60_trunc_sel_x_b, xout => redist9_i_arrayidx13_processfpga_processfpga60_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localinput_sync_buffer165_processfpga(BLACKBOX,83)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_localinput_sync_buffer165_processfpga : i_syncbuf_localinput_sync_buffer165_processfpga58
    PORT MAP (
        in_buffer_in => in_localInput,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_localinput_sync_buffer165_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx13_processfpga_processfpga60_add_x(ADD,35)@4
    i_arrayidx13_processfpga_processfpga60_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localinput_sync_buffer165_processfpga_out_buffer_out);
    i_arrayidx13_processfpga_processfpga60_add_x_b <= STD_LOGIC_VECTOR("0" & redist9_i_arrayidx13_processfpga_processfpga60_trunc_sel_x_b_1_q);
    i_arrayidx13_processfpga_processfpga60_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx13_processfpga_processfpga60_add_x_a) + UNSIGNED(i_arrayidx13_processfpga_processfpga60_add_x_b));
    i_arrayidx13_processfpga_processfpga60_add_x_q <= i_arrayidx13_processfpga_processfpga60_add_x_o(64 downto 0);

    -- i_arrayidx13_processfpga_processfpga60_dupName_0_trunc_sel_x(BITSELECT,29)@4
    i_arrayidx13_processfpga_processfpga60_dupName_0_trunc_sel_x_b <= i_arrayidx13_processfpga_processfpga60_add_x_q(63 downto 0);

    -- i_ffwd_dst_conv8351_processfpga(BLACKBOX,70)@2
    thei_ffwd_dst_conv8351_processfpga : i_ffwd_dst_conv8351_processfpga53
    PORT MAP (
        in_intel_reserved_ffwd_10_0 => in_intel_reserved_ffwd_10_0,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_10_0 => i_ffwd_dst_conv8351_processfpga_out_dest_data_out_10_0,
        clock => clock,
        resetn => resetn
    );

    -- i_conv3_processfpga_sel_x(BITSELECT,39)@2
    i_conv3_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(redist5_i_acl_pop_i16_idx_11252_pop84_processfpga_out_data_out_1_q(15 downto 0)), 32));

    -- i_conv3_processfpga_vt_select_15(BITSELECT,67)@2
    i_conv3_processfpga_vt_select_15_b <= i_conv3_processfpga_sel_x_b(15 downto 0);

    -- i_conv3_processfpga_vt_join(BITJOIN,66)@2
    i_conv3_processfpga_vt_join_q <= c_i16_0gr_q & i_conv3_processfpga_vt_select_15_b;

    -- i_add_processfpga(ADD,63)@2
    i_add_processfpga_a <= STD_LOGIC_VECTOR("0" & i_conv3_processfpga_vt_join_q);
    i_add_processfpga_b <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_conv8351_processfpga_out_dest_data_out_10_0);
    i_add_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_processfpga_a) + UNSIGNED(i_add_processfpga_b));
    i_add_processfpga_q <= i_add_processfpga_o(32 downto 0);

    -- bgTrunc_i_add_processfpga_sel_x(BITSELECT,2)@2
    bgTrunc_i_add_processfpga_sel_x_b <= i_add_processfpga_q(31 downto 0);

    -- redist11_bgTrunc_i_add_processfpga_sel_x_b_1(DELAY,155)
    redist11_bgTrunc_i_add_processfpga_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add_processfpga_sel_x_b, xout => redist11_bgTrunc_i_add_processfpga_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_idxprom10_processfpga_sel_x(BITSELECT,40)@3
    i_idxprom10_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist11_bgTrunc_i_add_processfpga_sel_x_b_1_q(31 downto 0)), 64)));

    -- i_arrayidx11_processfpga_processfpga57_mult_x_bs1_merged_bit_select(BITSELECT,142)@3
    i_arrayidx11_processfpga_processfpga57_mult_x_bs1_merged_bit_select_b <= i_idxprom10_processfpga_sel_x_b(17 downto 0);
    i_arrayidx11_processfpga_processfpga57_mult_x_bs1_merged_bit_select_c <= i_idxprom10_processfpga_sel_x_b(63 downto 54);
    i_arrayidx11_processfpga_processfpga57_mult_x_bs1_merged_bit_select_d <= i_idxprom10_processfpga_sel_x_b(35 downto 18);
    i_arrayidx11_processfpga_processfpga57_mult_x_bs1_merged_bit_select_e <= i_idxprom10_processfpga_sel_x_b(53 downto 36);

    -- i_arrayidx11_processfpga_processfpga57_mult_x_im3_shift0(BITSHIFT,133)@3
    i_arrayidx11_processfpga_processfpga57_mult_x_im3_shift0_qint <= i_arrayidx11_processfpga_processfpga57_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx11_processfpga_processfpga57_mult_x_im3_shift0_q <= i_arrayidx11_processfpga_processfpga57_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx11_processfpga_processfpga57_mult_x_align_15(BITSHIFT,105)@3
    i_arrayidx11_processfpga_processfpga57_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx11_processfpga_processfpga57_mult_x_im3_shift0_q) & "0000000000000000";
    i_arrayidx11_processfpga_processfpga57_mult_x_align_15_q <= i_arrayidx11_processfpga_processfpga57_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx11_processfpga_processfpga57_mult_x_im6_shift0(BITSHIFT,134)@3
    i_arrayidx11_processfpga_processfpga57_mult_x_im6_shift0_qint <= i_arrayidx11_processfpga_processfpga57_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx11_processfpga_processfpga57_mult_x_im6_shift0_q <= i_arrayidx11_processfpga_processfpga57_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx11_processfpga_processfpga57_mult_x_align_14(BITSHIFT,104)@3
    i_arrayidx11_processfpga_processfpga57_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx11_processfpga_processfpga57_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx11_processfpga_processfpga57_mult_x_align_14_q <= i_arrayidx11_processfpga_processfpga57_mult_x_align_14_qint(37 downto 0);

    -- i_arrayidx11_processfpga_processfpga57_mult_x_join_16(BITJOIN,106)@3
    i_arrayidx11_processfpga_processfpga57_mult_x_join_16_q <= i_arrayidx11_processfpga_processfpga57_mult_x_align_15_q & i_arrayidx11_processfpga_processfpga57_mult_x_align_14_q;

    -- i_arrayidx11_processfpga_processfpga57_mult_x_im9_shift0(BITSHIFT,135)@3
    i_arrayidx11_processfpga_processfpga57_mult_x_im9_shift0_qint <= i_arrayidx11_processfpga_processfpga57_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx11_processfpga_processfpga57_mult_x_im9_shift0_q <= i_arrayidx11_processfpga_processfpga57_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx11_processfpga_processfpga57_mult_x_align_12(BITSHIFT,102)@3
    i_arrayidx11_processfpga_processfpga57_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx11_processfpga_processfpga57_mult_x_im9_shift0_q) & "0000000000000000";
    i_arrayidx11_processfpga_processfpga57_mult_x_align_12_q <= i_arrayidx11_processfpga_processfpga57_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx11_processfpga_processfpga57_mult_x_im0_shift0(BITSHIFT,132)@3
    i_arrayidx11_processfpga_processfpga57_mult_x_im0_shift0_qint <= i_arrayidx11_processfpga_processfpga57_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx11_processfpga_processfpga57_mult_x_im0_shift0_q <= i_arrayidx11_processfpga_processfpga57_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx11_processfpga_processfpga57_mult_x_join_13(BITJOIN,103)@3
    i_arrayidx11_processfpga_processfpga57_mult_x_join_13_q <= i_arrayidx11_processfpga_processfpga57_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx11_processfpga_processfpga57_mult_x_im0_shift0_q);

    -- i_arrayidx11_processfpga_processfpga57_mult_x_result_add_0_0(ADD,107)@3
    i_arrayidx11_processfpga_processfpga57_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx11_processfpga_processfpga57_mult_x_join_13_q);
    i_arrayidx11_processfpga_processfpga57_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx11_processfpga_processfpga57_mult_x_join_16_q);
    i_arrayidx11_processfpga_processfpga57_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx11_processfpga_processfpga57_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx11_processfpga_processfpga57_mult_x_result_add_0_0_b));
    i_arrayidx11_processfpga_processfpga57_mult_x_result_add_0_0_q <= i_arrayidx11_processfpga_processfpga57_mult_x_result_add_0_0_o(66 downto 0);

    -- i_arrayidx11_processfpga_processfpga57_mult_extender_x(BITJOIN,22)@3
    i_arrayidx11_processfpga_processfpga57_mult_extender_x_q <= i_arrayidx11_processfpga_processfpga57_mult_multconst_x_q & i_arrayidx11_processfpga_processfpga57_mult_x_result_add_0_0_q(65 downto 0);

    -- i_arrayidx11_processfpga_processfpga57_trunc_sel_x(BITSELECT,24)@3
    i_arrayidx11_processfpga_processfpga57_trunc_sel_x_b <= i_arrayidx11_processfpga_processfpga57_mult_extender_x_q(63 downto 0);

    -- redist10_i_arrayidx11_processfpga_processfpga57_trunc_sel_x_b_1(DELAY,154)
    redist10_i_arrayidx11_processfpga_processfpga57_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx11_processfpga_processfpga57_trunc_sel_x_b, xout => redist10_i_arrayidx11_processfpga_processfpga57_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_input_sync_buffer_processfpga(BLACKBOX,82)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_input_sync_buffer_processfpga : i_syncbuf_input_sync_buffer_processfpga55
    PORT MAP (
        in_buffer_in => in_input,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_input_sync_buffer_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx11_processfpga_processfpga57_add_x(ADD,25)@4
    i_arrayidx11_processfpga_processfpga57_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_input_sync_buffer_processfpga_out_buffer_out);
    i_arrayidx11_processfpga_processfpga57_add_x_b <= STD_LOGIC_VECTOR("0" & redist10_i_arrayidx11_processfpga_processfpga57_trunc_sel_x_b_1_q);
    i_arrayidx11_processfpga_processfpga57_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx11_processfpga_processfpga57_add_x_a) + UNSIGNED(i_arrayidx11_processfpga_processfpga57_add_x_b));
    i_arrayidx11_processfpga_processfpga57_add_x_q <= i_arrayidx11_processfpga_processfpga57_add_x_o(64 downto 0);

    -- i_arrayidx11_processfpga_processfpga57_dupName_0_trunc_sel_x(BITSELECT,19)@4
    i_arrayidx11_processfpga_processfpga57_dupName_0_trunc_sel_x_b <= i_arrayidx11_processfpga_processfpga57_add_x_q(63 downto 0);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,43)@4
    out_c0_exi5_0 <= GND_q;
    out_c0_exi5_1 <= i_arrayidx11_processfpga_processfpga57_dupName_0_trunc_sel_x_b;
    out_c0_exi5_2 <= i_arrayidx13_processfpga_processfpga60_dupName_0_trunc_sel_x_b;
    out_c0_exi5_3 <= redist0_i_unnamed_processfpga64_q_3_q;
    out_c0_exi5_4 <= redist2_i_notexit_processfpga_q_3_q;
    out_c0_exi5_5 <= redist4_i_acl_pop_i32_acl_hw_wg_id791_pop85_processfpga_out_data_out_3_q;
    out_o_valid <= redist8_sync_in_aunroll_x_in_i_valid_3_q;

    -- i_acl_push_i1_notexitcond_processfpga(BLACKBOX,61)@1
    -- out out_feedback_out_2@20000000
    -- out out_feedback_valid_out_2@20000000
    thei_acl_push_i1_notexitcond_processfpga : i_acl_push_i1_notexitcond_processfpga69
    PORT MAP (
        in_data_in => i_notexit_processfpga_q,
        in_feedback_stall_in_2 => i_acl_pipeline_keep_going_processfpga_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_2 => i_acl_push_i1_notexitcond_processfpga_out_feedback_out_2,
        out_feedback_valid_out_2 => i_acl_push_i1_notexitcond_processfpga_out_feedback_valid_out_2,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_processfpga(BLACKBOX,55)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going_processfpga : i_acl_pipeline_keep_going_processfpga45
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond_processfpga_out_feedback_out_2,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond_processfpga_out_feedback_valid_out_2,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going_processfpga_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going_processfpga_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going_processfpga_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going_processfpga_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,54)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_processfpga_exiting_valid_out <= i_acl_pipeline_keep_going_processfpga_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_processfpga_exiting_stall_out <= i_acl_pipeline_keep_going_processfpga_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,88)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going_processfpga_out_pipeline_valid_out;

END normal;
