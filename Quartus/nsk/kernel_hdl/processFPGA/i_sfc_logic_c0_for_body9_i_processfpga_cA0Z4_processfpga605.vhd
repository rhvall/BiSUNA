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

-- VHDL created from i_sfc_logic_c0_for_body9_i_processfpga_c0_enter894_processfpga605
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

entity i_sfc_logic_c0_for_body9_i_processfpga_c0_enter894_processfpga605 is
    port (
        out_memdep_12_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_12_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_12_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_12_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_12_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_12_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_12_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2893_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2893_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2893_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_41_0 : in std_logic_vector(16 downto 0);  -- ufix17
        in_intel_reserved_ffwd_9_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi3899_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3899_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3899_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3899_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_12_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_12_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_12_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_12_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going666_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going666_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body9_i_processfpga_c0_enter894_processfpga605;

architecture normal of i_sfc_logic_c0_for_body9_i_processfpga_c0_enter894_processfpga605 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going666_processfpga607 is
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


    component i_acl_pop_i16_idx3_0_i1272_pop75_processfpga613 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_75 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_75 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_75 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i17_fpgaindvars_iv189_pop74_processfpga611 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_74 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_74 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_stall_out_74 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga632 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_76 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_76 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_76 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_idx3_0_i1272_push75_processfpga626 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_75 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit668 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_75 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_75 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i17_fpgaindvars_iv189_push74_processfpga628 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_feedback_stall_in_74 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit668 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_out_74 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_74 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond667_processfpga630 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_12 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_acl_hw_wg_id797_push76_processfpga634 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_76 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit668 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_76 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_76 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp51251335_processfpga618 is
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


    component i_ffwd_dst_cmp51251339_processfpga623 is
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


    component i_ffwd_dst_unnamed_processfpga78_processfpga609 is
        port (
            in_intel_reserved_ffwd_41_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_41_0 : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_12_processfpga620 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_memdep_12_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_12_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_12_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_12_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_12_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_12_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_12_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_12_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_12_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_12_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_12_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_localneurons_sync_buffer115_processfpga615 is
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
    signal bgTrunc_i_fpgaindvars_iv_next190_processfpga_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal bgTrunc_i_inc11_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_clfired_i_processfpga_processfpga617_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired_i_processfpga_processfpga617_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired_i_processfpga_processfpga617_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i_processfpga_processfpga617_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i_processfpga_processfpga617_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i_processfpga_processfpga617_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_multconst_x_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_clfired_i_processfpga_processfpga617_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired_i_processfpga_processfpga617_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i_processfpga_processfpga617_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i_processfpga_processfpga617_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i_processfpga_processfpga617_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i_processfpga_processfpga617_c_i64_4gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i16_0gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_1gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i17_1gr_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i17_undef_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i8_1gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pipeline_keep_going666_processfpga_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going666_processfpga_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going666_processfpga_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going666_processfpga_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_idx3_0_i1272_pop75_processfpga_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_idx3_0_i1272_pop75_processfpga_out_feedback_stall_out_75 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv189_pop74_processfpga_out_data_out : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv189_pop74_processfpga_out_feedback_stall_out_74 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_feedback_stall_out_76 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_idx3_0_i1272_push75_processfpga_out_feedback_out_75 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_idx3_0_i1272_push75_processfpga_out_feedback_valid_out_75 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv189_push74_processfpga_out_feedback_out_74 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv189_push74_processfpga_out_feedback_valid_out_74 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond667_processfpga_out_feedback_out_12 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond667_processfpga_out_feedback_valid_out_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id797_push76_processfpga_out_feedback_out_76 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id797_push76_processfpga_out_feedback_valid_out_76 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp51251335_processfpga_out_dest_data_out_9_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp51251339_processfpga_out_dest_data_out_9_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga78_processfpga_out_dest_data_out_41_0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_fpgaindvars_iv189_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv189_replace_phi_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_fpgaindvars_iv_next190_processfpga_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next190_processfpga_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next190_processfpga_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next190_processfpga_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_idxprom_i_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom_i_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_inc11_i_processfpga_a : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc11_i_processfpga_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc11_i_processfpga_o : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc11_i_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_notexit668_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_12_processfpga_out_memdep_12_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_12_processfpga_out_memdep_12_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_12_processfpga_out_memdep_12_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_store_memdep_12_processfpga_out_memdep_12_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_12_processfpga_out_memdep_12_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_12_processfpga_out_memdep_12_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_12_processfpga_out_memdep_12_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_localneurons_sync_buffer115_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga625_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_exitcond191_processfpga_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_unnamed_processfpga625_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_notexit668_processfpga_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_notexit668_processfpga_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_acl_pop_i16_idx3_0_i1272_pop75_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist6_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_clfired_i_processfpga_processfpga617_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist11_i_clfired_i_processfpga_processfpga617_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_reset0 : std_logic;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_i : signal is true;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_eq : std_logic;
    attribute preserve of redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_eq : signal is true;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_sticky_ena_q : signal is true;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- c_i8_1gr(CONSTANT,45)
    c_i8_1gr_q <= "00000001";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist6_sync_in_aunroll_x_in_i_valid_1(DELAY,117)
    redist6_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist6_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist7_sync_in_aunroll_x_in_i_valid_3(DELAY,118)
    redist7_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_sync_in_aunroll_x_in_i_valid_1_q, xout => redist7_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist8_sync_in_aunroll_x_in_i_valid_4(DELAY,119)
    redist8_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_sync_in_aunroll_x_in_i_valid_3_q, xout => redist8_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_ffwd_dst_cmp51251335_processfpga(BLACKBOX,57)@5
    thei_ffwd_dst_cmp51251335_processfpga : i_ffwd_dst_cmp51251335_processfpga618
    PORT MAP (
        in_intel_reserved_ffwd_9_0 => in_intel_reserved_ffwd_9_0,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_4_q,
        out_dest_data_out_9_0 => i_ffwd_dst_cmp51251335_processfpga_out_dest_data_out_9_0,
        clock => clock,
        resetn => resetn
    );

    -- i_clfired_i_processfpga_processfpga617_c_i64_4gr_x(CONSTANT,30)
    i_clfired_i_processfpga_processfpga617_c_i64_4gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000100";

    -- i_clfired_i_processfpga_processfpga617_mult_multconst_x(CONSTANT,26)
    i_clfired_i_processfpga_processfpga617_mult_multconst_x_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_clfired_i_processfpga_processfpga617_mult_x_im3_shift0(BITSHIFT,99)@2
    i_clfired_i_processfpga_processfpga617_mult_x_im3_shift0_qint <= i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_c & "0";
    i_clfired_i_processfpga_processfpga617_mult_x_im3_shift0_q <= i_clfired_i_processfpga_processfpga617_mult_x_im3_shift0_qint(10 downto 0);

    -- i_idxprom_i_processfpga_vt_const_63(CONSTANT,63)
    i_idxprom_i_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_unnamed_processfpga78_processfpga(BLACKBOX,59)@1
    thei_ffwd_dst_unnamed_processfpga78_processfpga : i_ffwd_dst_unnamed_processfpga78_processfpga609
    PORT MAP (
        in_intel_reserved_ffwd_41_0 => in_intel_reserved_ffwd_41_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_41_0 => i_ffwd_dst_unnamed_processfpga78_processfpga_out_dest_data_out_41_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i17_1gr(CONSTANT,41)
    c_i17_1gr_q <= "11111111111111111";

    -- i_fpgaindvars_iv_next190_processfpga(ADD,61)@1
    i_fpgaindvars_iv_next190_processfpga_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv189_replace_phi_processfpga_q);
    i_fpgaindvars_iv_next190_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i17_1gr_q);
    i_fpgaindvars_iv_next190_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next190_processfpga_a) + UNSIGNED(i_fpgaindvars_iv_next190_processfpga_b));
    i_fpgaindvars_iv_next190_processfpga_q <= i_fpgaindvars_iv_next190_processfpga_o(17 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next190_processfpga_sel_x(BITSELECT,2)@1
    bgTrunc_i_fpgaindvars_iv_next190_processfpga_sel_x_b <= i_fpgaindvars_iv_next190_processfpga_q(16 downto 0);

    -- i_acl_push_i17_fpgaindvars_iv189_push74_processfpga(BLACKBOX,53)@1
    -- out out_feedback_out_74@20000000
    -- out out_feedback_valid_out_74@20000000
    thei_acl_push_i17_fpgaindvars_iv189_push74_processfpga : i_acl_push_i17_fpgaindvars_iv189_push74_processfpga628
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next190_processfpga_sel_x_b,
        in_feedback_stall_in_74 => i_acl_pop_i17_fpgaindvars_iv189_pop74_processfpga_out_feedback_stall_out_74,
        in_notexit668 => i_notexit668_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_74 => i_acl_push_i17_fpgaindvars_iv189_push74_processfpga_out_feedback_out_74,
        out_feedback_valid_out_74 => i_acl_push_i17_fpgaindvars_iv189_push74_processfpga_out_feedback_valid_out_74,
        clock => clock,
        resetn => resetn
    );

    -- c_i17_undef(CONSTANT,42)
    c_i17_undef_q <= "00000000000000000";

    -- i_acl_pop_i17_fpgaindvars_iv189_pop74_processfpga(BLACKBOX,50)@1
    -- out out_feedback_stall_out_74@20000000
    thei_acl_pop_i17_fpgaindvars_iv189_pop74_processfpga : i_acl_pop_i17_fpgaindvars_iv189_pop74_processfpga611
    PORT MAP (
        in_data_in => c_i17_undef_q,
        in_dir => in_c0_eni2893_1,
        in_feedback_in_74 => i_acl_push_i17_fpgaindvars_iv189_push74_processfpga_out_feedback_out_74,
        in_feedback_valid_in_74 => i_acl_push_i17_fpgaindvars_iv189_push74_processfpga_out_feedback_valid_out_74,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i17_fpgaindvars_iv189_pop74_processfpga_out_data_out,
        out_feedback_stall_out_74 => i_acl_pop_i17_fpgaindvars_iv189_pop74_processfpga_out_feedback_stall_out_74,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv189_replace_phi_processfpga(MUX,60)@1
    i_fpgaindvars_iv189_replace_phi_processfpga_s <= in_c0_eni2893_1;
    i_fpgaindvars_iv189_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv189_replace_phi_processfpga_s, i_acl_pop_i17_fpgaindvars_iv189_pop74_processfpga_out_data_out, i_ffwd_dst_unnamed_processfpga78_processfpga_out_dest_data_out_41_0)
    BEGIN
        CASE (i_fpgaindvars_iv189_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv189_replace_phi_processfpga_q <= i_acl_pop_i17_fpgaindvars_iv189_pop74_processfpga_out_data_out;
            WHEN "1" => i_fpgaindvars_iv189_replace_phi_processfpga_q <= i_ffwd_dst_unnamed_processfpga78_processfpga_out_dest_data_out_41_0;
            WHEN OTHERS => i_fpgaindvars_iv189_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_exitcond191_processfpga_cmp_sign(LOGICAL,108)@1
    i_exitcond191_processfpga_cmp_sign_q <= STD_LOGIC_VECTOR(i_fpgaindvars_iv189_replace_phi_processfpga_q(16 downto 16));

    -- i_ffwd_dst_cmp51251339_processfpga(BLACKBOX,58)@1
    thei_ffwd_dst_cmp51251339_processfpga : i_ffwd_dst_cmp51251339_processfpga623
    PORT MAP (
        in_intel_reserved_ffwd_9_0 => in_intel_reserved_ffwd_9_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_9_0 => i_ffwd_dst_cmp51251339_processfpga_out_dest_data_out_9_0,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_processfpga625(LOGICAL,70)@1
    i_unnamed_processfpga625_q <= i_ffwd_dst_cmp51251339_processfpga_out_dest_data_out_9_0 or i_exitcond191_processfpga_cmp_sign_q;

    -- i_notexit668_processfpga(LOGICAL,67)@1
    i_notexit668_processfpga_q <= i_unnamed_processfpga625_q xor VCC_q;

    -- redist1_i_notexit668_processfpga_q_1(DELAY,112)
    redist1_i_notexit668_processfpga_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit668_processfpga_q, xout => redist1_i_notexit668_processfpga_q_1_q, clk => clock, aclr => resetn );

    -- c_i16_1gr(CONSTANT,39)
    c_i16_1gr_q <= "0000000000000001";

    -- i_inc11_i_processfpga(ADD,66)@2
    i_inc11_i_processfpga_a <= STD_LOGIC_VECTOR("0" & redist5_i_acl_pop_i16_idx3_0_i1272_pop75_processfpga_out_data_out_1_q);
    i_inc11_i_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i16_1gr_q);
    i_inc11_i_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc11_i_processfpga_a) + UNSIGNED(i_inc11_i_processfpga_b));
    i_inc11_i_processfpga_q <= i_inc11_i_processfpga_o(16 downto 0);

    -- bgTrunc_i_inc11_i_processfpga_sel_x(BITSELECT,3)@2
    bgTrunc_i_inc11_i_processfpga_sel_x_b <= i_inc11_i_processfpga_q(15 downto 0);

    -- i_acl_push_i16_idx3_0_i1272_push75_processfpga(BLACKBOX,52)@2
    -- out out_feedback_out_75@20000000
    -- out out_feedback_valid_out_75@20000000
    thei_acl_push_i16_idx3_0_i1272_push75_processfpga : i_acl_push_i16_idx3_0_i1272_push75_processfpga626
    PORT MAP (
        in_data_in => bgTrunc_i_inc11_i_processfpga_sel_x_b,
        in_feedback_stall_in_75 => i_acl_pop_i16_idx3_0_i1272_pop75_processfpga_out_feedback_stall_out_75,
        in_notexit668 => redist1_i_notexit668_processfpga_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_75 => i_acl_push_i16_idx3_0_i1272_push75_processfpga_out_feedback_out_75,
        out_feedback_valid_out_75 => i_acl_push_i16_idx3_0_i1272_push75_processfpga_out_feedback_valid_out_75,
        clock => clock,
        resetn => resetn
    );

    -- c_i16_0gr(CONSTANT,38)
    c_i16_0gr_q <= "0000000000000000";

    -- i_acl_pop_i16_idx3_0_i1272_pop75_processfpga(BLACKBOX,49)@1
    -- out out_feedback_stall_out_75@20000000
    thei_acl_pop_i16_idx3_0_i1272_pop75_processfpga : i_acl_pop_i16_idx3_0_i1272_pop75_processfpga613
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c0_eni2893_1,
        in_feedback_in_75 => i_acl_push_i16_idx3_0_i1272_push75_processfpga_out_feedback_out_75,
        in_feedback_valid_in_75 => i_acl_push_i16_idx3_0_i1272_push75_processfpga_out_feedback_valid_out_75,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_idx3_0_i1272_pop75_processfpga_out_data_out,
        out_feedback_stall_out_75 => i_acl_pop_i16_idx3_0_i1272_pop75_processfpga_out_feedback_stall_out_75,
        clock => clock,
        resetn => resetn
    );

    -- redist5_i_acl_pop_i16_idx3_0_i1272_pop75_processfpga_out_data_out_1(DELAY,116)
    redist5_i_acl_pop_i16_idx3_0_i1272_pop75_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i16_idx3_0_i1272_pop75_processfpga_out_data_out, xout => redist5_i_acl_pop_i16_idx3_0_i1272_pop75_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_idxprom_i_processfpga_sel_x(BITSELECT,33)@2
    i_idxprom_i_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(redist5_i_acl_pop_i16_idx3_0_i1272_pop75_processfpga_out_data_out_1_q(15 downto 0)), 64));

    -- i_idxprom_i_processfpga_vt_select_15(BITSELECT,65)@2
    i_idxprom_i_processfpga_vt_select_15_b <= i_idxprom_i_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom_i_processfpga_vt_join(BITJOIN,64)@2
    i_idxprom_i_processfpga_vt_join_q <= i_idxprom_i_processfpga_vt_const_63_q & i_idxprom_i_processfpga_vt_select_15_b;

    -- i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select(BITSELECT,110)@2
    i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_b <= i_idxprom_i_processfpga_vt_join_q(17 downto 0);
    i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_c <= i_idxprom_i_processfpga_vt_join_q(63 downto 54);
    i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_d <= i_idxprom_i_processfpga_vt_join_q(35 downto 18);
    i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_e <= i_idxprom_i_processfpga_vt_join_q(53 downto 36);

    -- i_clfired_i_processfpga_processfpga617_mult_x_im3_add_1(ADD,100)@2 + 1
    i_clfired_i_processfpga_processfpga617_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_c);
    i_clfired_i_processfpga_processfpga617_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i_processfpga_processfpga617_mult_x_im3_shift0_q);
    i_clfired_i_processfpga_processfpga617_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i_processfpga_processfpga617_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i_processfpga_processfpga617_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i_processfpga_processfpga617_mult_x_im3_add_1_a) + UNSIGNED(i_clfired_i_processfpga_processfpga617_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i_processfpga_processfpga617_mult_x_im3_add_1_q <= i_clfired_i_processfpga_processfpga617_mult_x_im3_add_1_o(11 downto 0);

    -- i_clfired_i_processfpga_processfpga617_mult_x_im3_shift2(BITSHIFT,101)@3
    i_clfired_i_processfpga_processfpga617_mult_x_im3_shift2_qint <= i_clfired_i_processfpga_processfpga617_mult_x_im3_add_1_q & "00";
    i_clfired_i_processfpga_processfpga617_mult_x_im3_shift2_q <= i_clfired_i_processfpga_processfpga617_mult_x_im3_shift2_qint(13 downto 0);

    -- i_clfired_i_processfpga_processfpga617_mult_x_align_15(BITSHIFT,90)@3
    i_clfired_i_processfpga_processfpga617_mult_x_align_15_qint <= i_clfired_i_processfpga_processfpga617_mult_x_im3_shift2_q & "00000000000000";
    i_clfired_i_processfpga_processfpga617_mult_x_align_15_q <= i_clfired_i_processfpga_processfpga617_mult_x_align_15_qint(27 downto 0);

    -- i_clfired_i_processfpga_processfpga617_mult_x_im6_shift0(BITSHIFT,102)@2
    i_clfired_i_processfpga_processfpga617_mult_x_im6_shift0_qint <= i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_d & "0";
    i_clfired_i_processfpga_processfpga617_mult_x_im6_shift0_q <= i_clfired_i_processfpga_processfpga617_mult_x_im6_shift0_qint(18 downto 0);

    -- i_clfired_i_processfpga_processfpga617_mult_x_im6_add_1(ADD,103)@2 + 1
    i_clfired_i_processfpga_processfpga617_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_d);
    i_clfired_i_processfpga_processfpga617_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i_processfpga_processfpga617_mult_x_im6_shift0_q);
    i_clfired_i_processfpga_processfpga617_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i_processfpga_processfpga617_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i_processfpga_processfpga617_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i_processfpga_processfpga617_mult_x_im6_add_1_a) + UNSIGNED(i_clfired_i_processfpga_processfpga617_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i_processfpga_processfpga617_mult_x_im6_add_1_q <= i_clfired_i_processfpga_processfpga617_mult_x_im6_add_1_o(19 downto 0);

    -- i_clfired_i_processfpga_processfpga617_mult_x_im6_shift2(BITSHIFT,104)@3
    i_clfired_i_processfpga_processfpga617_mult_x_im6_shift2_qint <= i_clfired_i_processfpga_processfpga617_mult_x_im6_add_1_q & "00";
    i_clfired_i_processfpga_processfpga617_mult_x_im6_shift2_q <= i_clfired_i_processfpga_processfpga617_mult_x_im6_shift2_qint(21 downto 0);

    -- i_clfired_i_processfpga_processfpga617_mult_x_align_14(BITSHIFT,89)@3
    i_clfired_i_processfpga_processfpga617_mult_x_align_14_qint <= i_clfired_i_processfpga_processfpga617_mult_x_im6_shift2_q & "000000000000000000";
    i_clfired_i_processfpga_processfpga617_mult_x_align_14_q <= i_clfired_i_processfpga_processfpga617_mult_x_align_14_qint(39 downto 0);

    -- i_clfired_i_processfpga_processfpga617_mult_x_join_16(BITJOIN,91)@3
    i_clfired_i_processfpga_processfpga617_mult_x_join_16_q <= i_clfired_i_processfpga_processfpga617_mult_x_align_15_q & i_clfired_i_processfpga_processfpga617_mult_x_align_14_q;

    -- i_clfired_i_processfpga_processfpga617_mult_x_im9_shift0(BITSHIFT,105)@2
    i_clfired_i_processfpga_processfpga617_mult_x_im9_shift0_qint <= i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_e & "0";
    i_clfired_i_processfpga_processfpga617_mult_x_im9_shift0_q <= i_clfired_i_processfpga_processfpga617_mult_x_im9_shift0_qint(18 downto 0);

    -- i_clfired_i_processfpga_processfpga617_mult_x_im9_add_1(ADD,106)@2 + 1
    i_clfired_i_processfpga_processfpga617_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_e);
    i_clfired_i_processfpga_processfpga617_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i_processfpga_processfpga617_mult_x_im9_shift0_q);
    i_clfired_i_processfpga_processfpga617_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i_processfpga_processfpga617_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i_processfpga_processfpga617_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i_processfpga_processfpga617_mult_x_im9_add_1_a) + UNSIGNED(i_clfired_i_processfpga_processfpga617_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i_processfpga_processfpga617_mult_x_im9_add_1_q <= i_clfired_i_processfpga_processfpga617_mult_x_im9_add_1_o(19 downto 0);

    -- i_clfired_i_processfpga_processfpga617_mult_x_im9_shift2(BITSHIFT,107)@3
    i_clfired_i_processfpga_processfpga617_mult_x_im9_shift2_qint <= i_clfired_i_processfpga_processfpga617_mult_x_im9_add_1_q & "00";
    i_clfired_i_processfpga_processfpga617_mult_x_im9_shift2_q <= i_clfired_i_processfpga_processfpga617_mult_x_im9_shift2_qint(21 downto 0);

    -- i_clfired_i_processfpga_processfpga617_mult_x_align_12(BITSHIFT,87)@3
    i_clfired_i_processfpga_processfpga617_mult_x_align_12_qint <= i_clfired_i_processfpga_processfpga617_mult_x_im9_shift2_q & "00000000000000";
    i_clfired_i_processfpga_processfpga617_mult_x_align_12_q <= i_clfired_i_processfpga_processfpga617_mult_x_align_12_qint(35 downto 0);

    -- i_clfired_i_processfpga_processfpga617_mult_x_im0_shift0(BITSHIFT,96)@2
    i_clfired_i_processfpga_processfpga617_mult_x_im0_shift0_qint <= i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_b & "0";
    i_clfired_i_processfpga_processfpga617_mult_x_im0_shift0_q <= i_clfired_i_processfpga_processfpga617_mult_x_im0_shift0_qint(18 downto 0);

    -- i_clfired_i_processfpga_processfpga617_mult_x_im0_add_1(ADD,97)@2 + 1
    i_clfired_i_processfpga_processfpga617_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_clfired_i_processfpga_processfpga617_mult_x_bs1_merged_bit_select_b);
    i_clfired_i_processfpga_processfpga617_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i_processfpga_processfpga617_mult_x_im0_shift0_q);
    i_clfired_i_processfpga_processfpga617_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i_processfpga_processfpga617_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i_processfpga_processfpga617_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i_processfpga_processfpga617_mult_x_im0_add_1_a) + UNSIGNED(i_clfired_i_processfpga_processfpga617_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i_processfpga_processfpga617_mult_x_im0_add_1_q <= i_clfired_i_processfpga_processfpga617_mult_x_im0_add_1_o(19 downto 0);

    -- i_clfired_i_processfpga_processfpga617_mult_x_im0_shift2(BITSHIFT,98)@3
    i_clfired_i_processfpga_processfpga617_mult_x_im0_shift2_qint <= i_clfired_i_processfpga_processfpga617_mult_x_im0_add_1_q & "00";
    i_clfired_i_processfpga_processfpga617_mult_x_im0_shift2_q <= i_clfired_i_processfpga_processfpga617_mult_x_im0_shift2_qint(21 downto 0);

    -- i_clfired_i_processfpga_processfpga617_mult_x_join_13(BITJOIN,88)@3
    i_clfired_i_processfpga_processfpga617_mult_x_join_13_q <= i_clfired_i_processfpga_processfpga617_mult_x_align_12_q & i_clfired_i_processfpga_processfpga617_mult_x_im0_shift2_q;

    -- i_clfired_i_processfpga_processfpga617_mult_x_result_add_0_0(ADD,92)@3
    i_clfired_i_processfpga_processfpga617_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_clfired_i_processfpga_processfpga617_mult_x_join_13_q);
    i_clfired_i_processfpga_processfpga617_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_clfired_i_processfpga_processfpga617_mult_x_join_16_q);
    i_clfired_i_processfpga_processfpga617_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i_processfpga_processfpga617_mult_x_result_add_0_0_a) + UNSIGNED(i_clfired_i_processfpga_processfpga617_mult_x_result_add_0_0_b));
    i_clfired_i_processfpga_processfpga617_mult_x_result_add_0_0_q <= i_clfired_i_processfpga_processfpga617_mult_x_result_add_0_0_o(68 downto 0);

    -- i_clfired_i_processfpga_processfpga617_mult_extender_x(BITJOIN,25)@3
    i_clfired_i_processfpga_processfpga617_mult_extender_x_q <= i_clfired_i_processfpga_processfpga617_mult_multconst_x_q & i_clfired_i_processfpga_processfpga617_mult_x_result_add_0_0_q(67 downto 0);

    -- i_clfired_i_processfpga_processfpga617_trunc_sel_x(BITSELECT,27)@3
    i_clfired_i_processfpga_processfpga617_trunc_sel_x_b <= i_clfired_i_processfpga_processfpga617_mult_extender_x_q(63 downto 0);

    -- redist10_i_clfired_i_processfpga_processfpga617_trunc_sel_x_b_1(DELAY,121)
    redist10_i_clfired_i_processfpga_processfpga617_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clfired_i_processfpga_processfpga617_trunc_sel_x_b, xout => redist10_i_clfired_i_processfpga_processfpga617_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer115_processfpga(BLACKBOX,69)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_localneurons_sync_buffer115_processfpga : i_syncbuf_localneurons_sync_buffer115_processfpga615
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer115_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_clfired_i_processfpga_processfpga617_add_x(ADD,28)@4
    i_clfired_i_processfpga_processfpga617_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer115_processfpga_out_buffer_out);
    i_clfired_i_processfpga_processfpga617_add_x_b <= STD_LOGIC_VECTOR("0" & redist10_i_clfired_i_processfpga_processfpga617_trunc_sel_x_b_1_q);
    i_clfired_i_processfpga_processfpga617_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i_processfpga_processfpga617_add_x_a) + UNSIGNED(i_clfired_i_processfpga_processfpga617_add_x_b));
    i_clfired_i_processfpga_processfpga617_add_x_q <= i_clfired_i_processfpga_processfpga617_add_x_o(64 downto 0);

    -- i_clfired_i_processfpga_processfpga617_dupName_0_trunc_sel_x(BITSELECT,19)@4
    i_clfired_i_processfpga_processfpga617_dupName_0_trunc_sel_x_b <= i_clfired_i_processfpga_processfpga617_add_x_q(63 downto 0);

    -- redist11_i_clfired_i_processfpga_processfpga617_dupName_0_trunc_sel_x_b_1(DELAY,122)
    redist11_i_clfired_i_processfpga_processfpga617_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clfired_i_processfpga_processfpga617_dupName_0_trunc_sel_x_b, xout => redist11_i_clfired_i_processfpga_processfpga617_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_clfired_i_processfpga_processfpga617_dupName_0_add_x(ADD,22)@5
    i_clfired_i_processfpga_processfpga617_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist11_i_clfired_i_processfpga_processfpga617_dupName_0_trunc_sel_x_b_1_q);
    i_clfired_i_processfpga_processfpga617_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_clfired_i_processfpga_processfpga617_c_i64_4gr_x_q);
    i_clfired_i_processfpga_processfpga617_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i_processfpga_processfpga617_dupName_0_add_x_a) + UNSIGNED(i_clfired_i_processfpga_processfpga617_dupName_0_add_x_b));
    i_clfired_i_processfpga_processfpga617_dupName_0_add_x_q <= i_clfired_i_processfpga_processfpga617_dupName_0_add_x_o(64 downto 0);

    -- i_clfired_i_processfpga_processfpga617_dupName_1_trunc_sel_x(BITSELECT,20)@5
    i_clfired_i_processfpga_processfpga617_dupName_1_trunc_sel_x_b <= i_clfired_i_processfpga_processfpga617_dupName_0_add_x_q(63 downto 0);

    -- i_store_memdep_12_processfpga(BLACKBOX,68)@5
    -- out out_memdep_12_avm_address@20000000
    -- out out_memdep_12_avm_burstcount@20000000
    -- out out_memdep_12_avm_byteenable@20000000
    -- out out_memdep_12_avm_enable@20000000
    -- out out_memdep_12_avm_read@20000000
    -- out out_memdep_12_avm_write@20000000
    -- out out_memdep_12_avm_writedata@20000000
    -- out out_o_stall@6
    -- out out_o_valid@6
    -- out out_o_writeack@6
    thei_store_memdep_12_processfpga : i_store_memdep_12_processfpga620
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_clfired_i_processfpga_processfpga617_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_cmp51251335_processfpga_out_dest_data_out_9_0,
        in_i_stall => GND_q,
        in_i_valid => redist8_sync_in_aunroll_x_in_i_valid_4_q,
        in_i_writedata => c_i8_1gr_q,
        in_memdep_12_avm_readdata => in_memdep_12_avm_readdata,
        in_memdep_12_avm_readdatavalid => in_memdep_12_avm_readdatavalid,
        in_memdep_12_avm_waitrequest => in_memdep_12_avm_waitrequest,
        in_memdep_12_avm_writeack => in_memdep_12_avm_writeack,
        out_memdep_12_avm_address => i_store_memdep_12_processfpga_out_memdep_12_avm_address,
        out_memdep_12_avm_burstcount => i_store_memdep_12_processfpga_out_memdep_12_avm_burstcount,
        out_memdep_12_avm_byteenable => i_store_memdep_12_processfpga_out_memdep_12_avm_byteenable,
        out_memdep_12_avm_enable => i_store_memdep_12_processfpga_out_memdep_12_avm_enable,
        out_memdep_12_avm_read => i_store_memdep_12_processfpga_out_memdep_12_avm_read,
        out_memdep_12_avm_write => i_store_memdep_12_processfpga_out_memdep_12_avm_write,
        out_memdep_12_avm_writedata => i_store_memdep_12_processfpga_out_memdep_12_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,5)
    out_memdep_12_avm_address <= i_store_memdep_12_processfpga_out_memdep_12_avm_address;
    out_memdep_12_avm_enable <= i_store_memdep_12_processfpga_out_memdep_12_avm_enable;
    out_memdep_12_avm_read <= i_store_memdep_12_processfpga_out_memdep_12_avm_read;
    out_memdep_12_avm_write <= i_store_memdep_12_processfpga_out_memdep_12_avm_write;
    out_memdep_12_avm_writedata <= i_store_memdep_12_processfpga_out_memdep_12_avm_writedata;
    out_memdep_12_avm_byteenable <= i_store_memdep_12_processfpga_out_memdep_12_avm_byteenable;
    out_memdep_12_avm_burstcount <= i_store_memdep_12_processfpga_out_memdep_12_avm_burstcount;

    -- redist9_sync_in_aunroll_x_in_i_valid_5(DELAY,120)
    redist9_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_sync_in_aunroll_x_in_i_valid_4_q, xout => redist9_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_notEnable(LOGICAL,129)
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_nor(LOGICAL,130)
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_nor_q <= not (redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_notEnable_q or redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_sticky_ena_q);

    -- redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_last(CONSTANT,126)
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_last_q <= "01";

    -- redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_cmp(LOGICAL,127)
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_cmp_q <= "1" WHEN redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_last_q = redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_q ELSE "0";

    -- redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_cmpReg(REG,128)
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_cmpReg_q <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_sticky_ena(REG,131)
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_nor_q = "1") THEN
                redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_enaAnd(LOGICAL,132)
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_enaAnd_q <= redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_sticky_ena_q and VCC_q;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt(COUNTER,124)
    -- low=0, high=2, step=1, init=0
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_eq <= '1';
            ELSE
                redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_eq <= '0';
            END IF;
            IF (redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_eq = '1') THEN
                redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_i <= redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_i + 2;
            ELSE
                redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_i <= redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_i, 2)));

    -- i_acl_push_i32_acl_hw_wg_id797_push76_processfpga(BLACKBOX,55)@2
    -- out out_feedback_out_76@20000000
    -- out out_feedback_valid_out_76@20000000
    thei_acl_push_i32_acl_hw_wg_id797_push76_processfpga : i_acl_push_i32_acl_hw_wg_id797_push76_processfpga634
    PORT MAP (
        in_data_in => redist3_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_1_q,
        in_feedback_stall_in_76 => i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_feedback_stall_out_76,
        in_notexit668 => redist1_i_notexit668_processfpga_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_76 => i_acl_push_i32_acl_hw_wg_id797_push76_processfpga_out_feedback_out_76,
        out_feedback_valid_out_76 => i_acl_push_i32_acl_hw_wg_id797_push76_processfpga_out_feedback_valid_out_76,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga(BLACKBOX,51)@1
    -- out out_feedback_stall_out_76@20000000
    thei_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga : i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga632
    PORT MAP (
        in_data_in => in_c0_eni2893_2,
        in_dir => in_c0_eni2893_1,
        in_feedback_in_76 => i_acl_push_i32_acl_hw_wg_id797_push76_processfpga_out_feedback_out_76,
        in_feedback_valid_in_76 => i_acl_push_i32_acl_hw_wg_id797_push76_processfpga_out_feedback_valid_out_76,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out,
        out_feedback_stall_out_76 => i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_feedback_stall_out_76,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_1(DELAY,114)
    redist3_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out, xout => redist3_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_wraddr(REG,125)
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_wraddr_q <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem(DUALMEM,123)
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_ia <= STD_LOGIC_VECTOR(redist3_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_1_q);
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_aa <= redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_wraddr_q;
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_ab <= redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_rdcnt_q;
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_reset0 <= not (resetn);
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 32,
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
        clocken1 => redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_reset0,
        clock1 => clock,
        address_a => redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_aa,
        data_a => redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_ab,
        q_b => redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_iq
    );
    redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_q <= redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_iq(31 downto 0);

    -- redist2_i_notexit668_processfpga_q_5(DELAY,113)
    redist2_i_notexit668_processfpga_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_i_notexit668_processfpga_q_1_q, xout => redist2_i_notexit668_processfpga_q_5_q, clk => clock, aclr => resetn );

    -- redist0_i_unnamed_processfpga625_q_5(DELAY,111)
    redist0_i_unnamed_processfpga625_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga625_q, xout => redist0_i_unnamed_processfpga625_q_5_q, clk => clock, aclr => resetn );

    -- sync_out_aunroll_x(GPOUT,35)@6
    out_c0_exi3899_0 <= GND_q;
    out_c0_exi3899_1 <= redist0_i_unnamed_processfpga625_q_5_q;
    out_c0_exi3899_2 <= redist2_i_notexit668_processfpga_q_5_q;
    out_c0_exi3899_3 <= redist4_i_acl_pop_i32_acl_hw_wg_id797_pop76_processfpga_out_data_out_5_mem_q;
    out_o_valid <= redist9_sync_in_aunroll_x_in_i_valid_5_q;

    -- i_acl_push_i1_notexitcond667_processfpga(BLACKBOX,54)@1
    -- out out_feedback_out_12@20000000
    -- out out_feedback_valid_out_12@20000000
    thei_acl_push_i1_notexitcond667_processfpga : i_acl_push_i1_notexitcond667_processfpga630
    PORT MAP (
        in_data_in => i_notexit668_processfpga_q,
        in_feedback_stall_in_12 => i_acl_pipeline_keep_going666_processfpga_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_12 => i_acl_push_i1_notexitcond667_processfpga_out_feedback_out_12,
        out_feedback_valid_out_12 => i_acl_push_i1_notexitcond667_processfpga_out_feedback_valid_out_12,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going666_processfpga(BLACKBOX,48)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going666_processfpga : i_acl_pipeline_keep_going666_processfpga607
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond667_processfpga_out_feedback_out_12,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond667_processfpga_out_feedback_valid_out_12,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going666_processfpga_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going666_processfpga_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going666_processfpga_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going666_processfpga_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,47)
    out_aclp_to_limiter_i_acl_pipeline_keep_going666_processfpga_exiting_valid_out <= i_acl_pipeline_keep_going666_processfpga_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going666_processfpga_exiting_stall_out <= i_acl_pipeline_keep_going666_processfpga_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,73)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going666_processfpga_out_pipeline_valid_out;

END normal;
