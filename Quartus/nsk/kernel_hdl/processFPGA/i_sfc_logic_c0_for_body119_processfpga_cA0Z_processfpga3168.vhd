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

-- VHDL created from i_sfc_logic_c0_for_body119_processfpga_c0_enter1174_processfpga3168
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

entity i_sfc_logic_c0_for_body119_processfpga_c0_enter1174_processfpga3168 is
    port (
        out_unnamed_processFPGA425_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA425_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA425_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA425_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA425_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_unnamed_processFPGA425_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_unnamed_processFPGA425_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21173_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21173_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21173_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_177_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_178_0 : in std_logic_vector(16 downto 0);  -- ufix17
        in_intel_reserved_ffwd_187_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_localOutput : in std_logic_vector(63 downto 0);  -- ufix64
        in_output : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi6_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6_1 : out std_logic_vector(15 downto 0);  -- ufix16
        out_c0_exi6_2 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi6_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6_5 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi6_6 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA425_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_unnamed_processFPGA425_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA425_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA425_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going767_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going767_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body119_processfpga_c0_enter1174_processfpga3168;

architecture normal of i_sfc_logic_c0_for_body119_processfpga_c0_enter1174_processfpga3168 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going767_processfpga3170 is
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


    component i_acl_pop_i16_idx113_11373_pop56_processfpga3176 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_56 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_56 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_56 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i17_fpgaindvars_iv271_pop55_processfpga3174 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_55 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_55 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_stall_out_55 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga3200 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_57 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_57 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_57 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_idx113_11373_push56_processfpga3194 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_56 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit769 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_56 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_56 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i17_fpgaindvars_iv271_push55_processfpga3196 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_feedback_stall_in_55 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit769 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_out_55 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_55 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond768_processfpga3198 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_54 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_54 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_54 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_acl_hw_wg_id789_push57_processfpga3202 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_57 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit769 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_57 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_57 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp_i51364627_processfpga3191 is
        port (
            in_intel_reserved_ffwd_187_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_187_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp_i51364629_processfpga3181 is
        port (
            in_intel_reserved_ffwd_187_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_187_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_conv122615_processfpga3185 is
        port (
            in_intel_reserved_ffwd_177_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_177_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga424_processfpga3172 is
        port (
            in_intel_reserved_ffwd_178_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_178_0 : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_processfpga425_processfpga3183 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA425_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_unnamed_processFPGA425_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA425_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA425_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA425_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA425_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA425_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_unnamed_processFPGA425_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA425_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA425_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA425_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_localoutput_sync_buffer_processfpga3178 is
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


    component i_syncbuf_output_sync_buffer_processfpga3187 is
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
    signal bgTrunc_i_add124_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next272_processfpga_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal bgTrunc_i_inc128_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_multconst_x_q : STD_LOGIC_VECTOR (61 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_conv115_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_idxprom120_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom125_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i16_0gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_1gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i17_1gr_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i17_undef_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_pipeline_keep_going767_processfpga_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going767_processfpga_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going767_processfpga_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going767_processfpga_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_idx113_11373_pop56_processfpga_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_idx113_11373_pop56_processfpga_out_feedback_stall_out_56 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv271_pop55_processfpga_out_data_out : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv271_pop55_processfpga_out_feedback_stall_out_55 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga_out_feedback_stall_out_57 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_idx113_11373_push56_processfpga_out_feedback_out_56 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_idx113_11373_push56_processfpga_out_feedback_valid_out_56 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv271_push55_processfpga_out_feedback_out_55 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv271_push55_processfpga_out_feedback_valid_out_55 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond768_processfpga_out_feedback_out_54 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond768_processfpga_out_feedback_valid_out_54 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id789_push57_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id789_push57_processfpga_out_feedback_out_57 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id789_push57_processfpga_out_feedback_valid_out_57 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add124_processfpga_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add124_processfpga_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add124_processfpga_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add124_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_conv115_processfpga_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv115_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_cmp_i51364627_processfpga_out_dest_data_out_187_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp_i51364629_processfpga_out_dest_data_out_187_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_conv122615_processfpga_out_dest_data_out_177_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_processfpga424_processfpga_out_dest_data_out_178_0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_fpgaindvars_iv271_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv271_replace_phi_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_fpgaindvars_iv_next272_processfpga_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next272_processfpga_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next272_processfpga_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next272_processfpga_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_idxprom120_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom120_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom120_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_inc128_processfpga_a : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc128_processfpga_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc128_processfpga_o : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc128_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_load_unnamed_processfpga425_processfpga_out_o_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_notexit769_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_localoutput_sync_buffer_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_output_sync_buffer_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga3193_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_join_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_align_14_q : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_align_14_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_join_16_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_join_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_align_14_q : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_align_14_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_join_16_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond273_processfpga_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx126_processfpga_processfpga3189_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx121_processfpga_processfpga3180_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_unnamed_processfpga3193_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_notexit769_processfpga_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_conv115_processfpga_vt_select_15_b_3_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist3_i_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i16_idx113_11373_pop56_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni21173_1_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_aunroll_x_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_sync_in_aunroll_x_in_i_valid_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_arrayidx126_processfpga_processfpga3189_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist12_i_arrayidx121_processfpga_processfpga3180_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist13_bgTrunc_i_add124_processfpga_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_i_conv115_processfpga_vt_select_15_b_3_outputreg_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_reset0 : std_logic;
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_rdcnt_i : signal is true;
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_sticky_ena_q : signal is true;
    signal redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist7_sync_in_aunroll_x_in_i_valid_2(DELAY,157)
    redist7_sync_in_aunroll_x_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist7_sync_in_aunroll_x_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_ffwd_dst_cmp_i51364629_processfpga(BLACKBOX,74)@3
    thei_ffwd_dst_cmp_i51364629_processfpga : i_ffwd_dst_cmp_i51364629_processfpga3181
    PORT MAP (
        in_intel_reserved_ffwd_187_0 => in_intel_reserved_ffwd_187_0,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_187_0 => i_ffwd_dst_cmp_i51364629_processfpga_out_dest_data_out_187_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx121_processfpga_processfpga3180_mult_multconst_x(CONSTANT,26)
    i_arrayidx121_processfpga_processfpga3180_mult_multconst_x_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- i_idxprom120_processfpga_vt_const_63(CONSTANT,80)
    i_idxprom120_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_unnamed_processfpga424_processfpga(BLACKBOX,76)@1
    thei_ffwd_dst_unnamed_processfpga424_processfpga : i_ffwd_dst_unnamed_processfpga424_processfpga3172
    PORT MAP (
        in_intel_reserved_ffwd_178_0 => in_intel_reserved_ffwd_178_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_178_0 => i_ffwd_dst_unnamed_processfpga424_processfpga_out_dest_data_out_178_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i17_1gr(CONSTANT,53)
    c_i17_1gr_q <= "11111111111111111";

    -- i_fpgaindvars_iv_next272_processfpga(ADD,78)@1
    i_fpgaindvars_iv_next272_processfpga_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv271_replace_phi_processfpga_q);
    i_fpgaindvars_iv_next272_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i17_1gr_q);
    i_fpgaindvars_iv_next272_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next272_processfpga_a) + UNSIGNED(i_fpgaindvars_iv_next272_processfpga_b));
    i_fpgaindvars_iv_next272_processfpga_q <= i_fpgaindvars_iv_next272_processfpga_o(17 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next272_processfpga_sel_x(BITSELECT,3)@1
    bgTrunc_i_fpgaindvars_iv_next272_processfpga_sel_x_b <= i_fpgaindvars_iv_next272_processfpga_q(16 downto 0);

    -- i_acl_push_i17_fpgaindvars_iv271_push55_processfpga(BLACKBOX,64)@1
    -- out out_feedback_out_55@20000000
    -- out out_feedback_valid_out_55@20000000
    thei_acl_push_i17_fpgaindvars_iv271_push55_processfpga : i_acl_push_i17_fpgaindvars_iv271_push55_processfpga3196
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next272_processfpga_sel_x_b,
        in_feedback_stall_in_55 => i_acl_pop_i17_fpgaindvars_iv271_pop55_processfpga_out_feedback_stall_out_55,
        in_notexit769 => i_notexit769_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_55 => i_acl_push_i17_fpgaindvars_iv271_push55_processfpga_out_feedback_out_55,
        out_feedback_valid_out_55 => i_acl_push_i17_fpgaindvars_iv271_push55_processfpga_out_feedback_valid_out_55,
        clock => clock,
        resetn => resetn
    );

    -- c_i17_undef(CONSTANT,54)
    c_i17_undef_q <= "00000000000000000";

    -- i_acl_pop_i17_fpgaindvars_iv271_pop55_processfpga(BLACKBOX,61)@1
    -- out out_feedback_stall_out_55@20000000
    thei_acl_pop_i17_fpgaindvars_iv271_pop55_processfpga : i_acl_pop_i17_fpgaindvars_iv271_pop55_processfpga3174
    PORT MAP (
        in_data_in => c_i17_undef_q,
        in_dir => in_c0_eni21173_1,
        in_feedback_in_55 => i_acl_push_i17_fpgaindvars_iv271_push55_processfpga_out_feedback_out_55,
        in_feedback_valid_in_55 => i_acl_push_i17_fpgaindvars_iv271_push55_processfpga_out_feedback_valid_out_55,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i17_fpgaindvars_iv271_pop55_processfpga_out_data_out,
        out_feedback_stall_out_55 => i_acl_pop_i17_fpgaindvars_iv271_pop55_processfpga_out_feedback_stall_out_55,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv271_replace_phi_processfpga(MUX,77)@1
    i_fpgaindvars_iv271_replace_phi_processfpga_s <= in_c0_eni21173_1;
    i_fpgaindvars_iv271_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv271_replace_phi_processfpga_s, i_acl_pop_i17_fpgaindvars_iv271_pop55_processfpga_out_data_out, i_ffwd_dst_unnamed_processfpga424_processfpga_out_dest_data_out_178_0)
    BEGIN
        CASE (i_fpgaindvars_iv271_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv271_replace_phi_processfpga_q <= i_acl_pop_i17_fpgaindvars_iv271_pop55_processfpga_out_data_out;
            WHEN "1" => i_fpgaindvars_iv271_replace_phi_processfpga_q <= i_ffwd_dst_unnamed_processfpga424_processfpga_out_dest_data_out_178_0;
            WHEN OTHERS => i_fpgaindvars_iv271_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_exitcond273_processfpga_cmp_sign(LOGICAL,146)@1
    i_exitcond273_processfpga_cmp_sign_q <= STD_LOGIC_VECTOR(i_fpgaindvars_iv271_replace_phi_processfpga_q(16 downto 16));

    -- i_ffwd_dst_cmp_i51364627_processfpga(BLACKBOX,73)@1
    thei_ffwd_dst_cmp_i51364627_processfpga : i_ffwd_dst_cmp_i51364627_processfpga3191
    PORT MAP (
        in_intel_reserved_ffwd_187_0 => in_intel_reserved_ffwd_187_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_187_0 => i_ffwd_dst_cmp_i51364627_processfpga_out_dest_data_out_187_0,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_processfpga3193(LOGICAL,90)@1
    i_unnamed_processfpga3193_q <= i_ffwd_dst_cmp_i51364627_processfpga_out_dest_data_out_187_0 or i_exitcond273_processfpga_cmp_sign_q;

    -- i_notexit769_processfpga(LOGICAL,87)@1
    i_notexit769_processfpga_q <= i_unnamed_processfpga3193_q xor VCC_q;

    -- c_i16_1gr(CONSTANT,51)
    c_i16_1gr_q <= "0000000000000001";

    -- i_inc128_processfpga(ADD,85)@1
    i_inc128_processfpga_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i16_idx113_11373_pop56_processfpga_out_data_out);
    i_inc128_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i16_1gr_q);
    i_inc128_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc128_processfpga_a) + UNSIGNED(i_inc128_processfpga_b));
    i_inc128_processfpga_q <= i_inc128_processfpga_o(16 downto 0);

    -- bgTrunc_i_inc128_processfpga_sel_x(BITSELECT,4)@1
    bgTrunc_i_inc128_processfpga_sel_x_b <= i_inc128_processfpga_q(15 downto 0);

    -- i_acl_push_i16_idx113_11373_push56_processfpga(BLACKBOX,63)@1
    -- out out_feedback_out_56@20000000
    -- out out_feedback_valid_out_56@20000000
    thei_acl_push_i16_idx113_11373_push56_processfpga : i_acl_push_i16_idx113_11373_push56_processfpga3194
    PORT MAP (
        in_data_in => bgTrunc_i_inc128_processfpga_sel_x_b,
        in_feedback_stall_in_56 => i_acl_pop_i16_idx113_11373_pop56_processfpga_out_feedback_stall_out_56,
        in_notexit769 => i_notexit769_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_56 => i_acl_push_i16_idx113_11373_push56_processfpga_out_feedback_out_56,
        out_feedback_valid_out_56 => i_acl_push_i16_idx113_11373_push56_processfpga_out_feedback_valid_out_56,
        clock => clock,
        resetn => resetn
    );

    -- c_i16_0gr(CONSTANT,50)
    c_i16_0gr_q <= "0000000000000000";

    -- i_acl_pop_i16_idx113_11373_pop56_processfpga(BLACKBOX,60)@1
    -- out out_feedback_stall_out_56@20000000
    thei_acl_pop_i16_idx113_11373_pop56_processfpga : i_acl_pop_i16_idx113_11373_pop56_processfpga3176
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c0_eni21173_1,
        in_feedback_in_56 => i_acl_push_i16_idx113_11373_push56_processfpga_out_feedback_out_56,
        in_feedback_valid_in_56 => i_acl_push_i16_idx113_11373_push56_processfpga_out_feedback_valid_out_56,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_idx113_11373_pop56_processfpga_out_data_out,
        out_feedback_stall_out_56 => i_acl_pop_i16_idx113_11373_pop56_processfpga_out_feedback_stall_out_56,
        clock => clock,
        resetn => resetn
    );

    -- redist4_i_acl_pop_i16_idx113_11373_pop56_processfpga_out_data_out_1(DELAY,154)
    redist4_i_acl_pop_i16_idx113_11373_pop56_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i16_idx113_11373_pop56_processfpga_out_data_out, xout => redist4_i_acl_pop_i16_idx113_11373_pop56_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_idxprom120_processfpga_sel_x(BITSELECT,43)@2
    i_idxprom120_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(redist4_i_acl_pop_i16_idx113_11373_pop56_processfpga_out_data_out_1_q(15 downto 0)), 64));

    -- i_idxprom120_processfpga_vt_select_15(BITSELECT,82)@2
    i_idxprom120_processfpga_vt_select_15_b <= i_idxprom120_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom120_processfpga_vt_join(BITJOIN,81)@2
    i_idxprom120_processfpga_vt_join_q <= i_idxprom120_processfpga_vt_const_63_q & i_idxprom120_processfpga_vt_select_15_b;

    -- i_arrayidx121_processfpga_processfpga3180_mult_x_bs1_merged_bit_select(BITSELECT,149)@2
    i_arrayidx121_processfpga_processfpga3180_mult_x_bs1_merged_bit_select_b <= i_idxprom120_processfpga_vt_join_q(17 downto 0);
    i_arrayidx121_processfpga_processfpga3180_mult_x_bs1_merged_bit_select_c <= i_idxprom120_processfpga_vt_join_q(63 downto 54);
    i_arrayidx121_processfpga_processfpga3180_mult_x_bs1_merged_bit_select_d <= i_idxprom120_processfpga_vt_join_q(35 downto 18);
    i_arrayidx121_processfpga_processfpga3180_mult_x_bs1_merged_bit_select_e <= i_idxprom120_processfpga_vt_join_q(53 downto 36);

    -- i_arrayidx121_processfpga_processfpga3180_mult_x_im3_shift0(BITSHIFT,139)@2
    i_arrayidx121_processfpga_processfpga3180_mult_x_im3_shift0_qint <= i_arrayidx121_processfpga_processfpga3180_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx121_processfpga_processfpga3180_mult_x_im3_shift0_q <= i_arrayidx121_processfpga_processfpga3180_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx121_processfpga_processfpga3180_mult_x_align_15(BITSHIFT,111)@2
    i_arrayidx121_processfpga_processfpga3180_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx121_processfpga_processfpga3180_mult_x_im3_shift0_q) & "0000000000000000";
    i_arrayidx121_processfpga_processfpga3180_mult_x_align_15_q <= i_arrayidx121_processfpga_processfpga3180_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx121_processfpga_processfpga3180_mult_x_im6_shift0(BITSHIFT,140)@2
    i_arrayidx121_processfpga_processfpga3180_mult_x_im6_shift0_qint <= i_arrayidx121_processfpga_processfpga3180_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx121_processfpga_processfpga3180_mult_x_im6_shift0_q <= i_arrayidx121_processfpga_processfpga3180_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx121_processfpga_processfpga3180_mult_x_align_14(BITSHIFT,110)@2
    i_arrayidx121_processfpga_processfpga3180_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx121_processfpga_processfpga3180_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx121_processfpga_processfpga3180_mult_x_align_14_q <= i_arrayidx121_processfpga_processfpga3180_mult_x_align_14_qint(37 downto 0);

    -- i_arrayidx121_processfpga_processfpga3180_mult_x_join_16(BITJOIN,112)@2
    i_arrayidx121_processfpga_processfpga3180_mult_x_join_16_q <= i_arrayidx121_processfpga_processfpga3180_mult_x_align_15_q & i_arrayidx121_processfpga_processfpga3180_mult_x_align_14_q;

    -- i_arrayidx121_processfpga_processfpga3180_mult_x_im9_shift0(BITSHIFT,141)@2
    i_arrayidx121_processfpga_processfpga3180_mult_x_im9_shift0_qint <= i_arrayidx121_processfpga_processfpga3180_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx121_processfpga_processfpga3180_mult_x_im9_shift0_q <= i_arrayidx121_processfpga_processfpga3180_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx121_processfpga_processfpga3180_mult_x_align_12(BITSHIFT,108)@2
    i_arrayidx121_processfpga_processfpga3180_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx121_processfpga_processfpga3180_mult_x_im9_shift0_q) & "0000000000000000";
    i_arrayidx121_processfpga_processfpga3180_mult_x_align_12_q <= i_arrayidx121_processfpga_processfpga3180_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx121_processfpga_processfpga3180_mult_x_im0_shift0(BITSHIFT,138)@2
    i_arrayidx121_processfpga_processfpga3180_mult_x_im0_shift0_qint <= i_arrayidx121_processfpga_processfpga3180_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx121_processfpga_processfpga3180_mult_x_im0_shift0_q <= i_arrayidx121_processfpga_processfpga3180_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx121_processfpga_processfpga3180_mult_x_join_13(BITJOIN,109)@2
    i_arrayidx121_processfpga_processfpga3180_mult_x_join_13_q <= i_arrayidx121_processfpga_processfpga3180_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx121_processfpga_processfpga3180_mult_x_im0_shift0_q);

    -- i_arrayidx121_processfpga_processfpga3180_mult_x_result_add_0_0(ADD,113)@2
    i_arrayidx121_processfpga_processfpga3180_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx121_processfpga_processfpga3180_mult_x_join_13_q);
    i_arrayidx121_processfpga_processfpga3180_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx121_processfpga_processfpga3180_mult_x_join_16_q);
    i_arrayidx121_processfpga_processfpga3180_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx121_processfpga_processfpga3180_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx121_processfpga_processfpga3180_mult_x_result_add_0_0_b));
    i_arrayidx121_processfpga_processfpga3180_mult_x_result_add_0_0_q <= i_arrayidx121_processfpga_processfpga3180_mult_x_result_add_0_0_o(66 downto 0);

    -- i_arrayidx121_processfpga_processfpga3180_mult_extender_x(BITJOIN,25)@2
    i_arrayidx121_processfpga_processfpga3180_mult_extender_x_q <= i_arrayidx121_processfpga_processfpga3180_mult_multconst_x_q & i_arrayidx121_processfpga_processfpga3180_mult_x_result_add_0_0_q(65 downto 0);

    -- i_arrayidx121_processfpga_processfpga3180_trunc_sel_x(BITSELECT,27)@2
    i_arrayidx121_processfpga_processfpga3180_trunc_sel_x_b <= i_arrayidx121_processfpga_processfpga3180_mult_extender_x_q(63 downto 0);

    -- redist12_i_arrayidx121_processfpga_processfpga3180_trunc_sel_x_b_1(DELAY,162)
    redist12_i_arrayidx121_processfpga_processfpga3180_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx121_processfpga_processfpga3180_trunc_sel_x_b, xout => redist12_i_arrayidx121_processfpga_processfpga3180_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localoutput_sync_buffer_processfpga(BLACKBOX,88)@0
    -- in in_i_dependence@3
    -- in in_valid_in@3
    -- out out_buffer_out@3
    -- out out_valid_out@3
    thei_syncbuf_localoutput_sync_buffer_processfpga : i_syncbuf_localoutput_sync_buffer_processfpga3178
    PORT MAP (
        in_buffer_in => in_localOutput,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_2_q,
        out_buffer_out => i_syncbuf_localoutput_sync_buffer_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx121_processfpga_processfpga3180_add_x(ADD,28)@3
    i_arrayidx121_processfpga_processfpga3180_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localoutput_sync_buffer_processfpga_out_buffer_out);
    i_arrayidx121_processfpga_processfpga3180_add_x_b <= STD_LOGIC_VECTOR("0" & redist12_i_arrayidx121_processfpga_processfpga3180_trunc_sel_x_b_1_q);
    i_arrayidx121_processfpga_processfpga3180_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx121_processfpga_processfpga3180_add_x_a) + UNSIGNED(i_arrayidx121_processfpga_processfpga3180_add_x_b));
    i_arrayidx121_processfpga_processfpga3180_add_x_q <= i_arrayidx121_processfpga_processfpga3180_add_x_o(64 downto 0);

    -- i_arrayidx121_processfpga_processfpga3180_dupName_0_trunc_sel_x(BITSELECT,22)@3
    i_arrayidx121_processfpga_processfpga3180_dupName_0_trunc_sel_x_b <= i_arrayidx121_processfpga_processfpga3180_add_x_q(63 downto 0);

    -- i_load_unnamed_processfpga425_processfpga(BLACKBOX,86)@3
    -- in in_i_stall@20000000
    -- out out_o_readdata@7
    -- out out_o_stall@6
    -- out out_o_valid@7
    -- out out_unnamed_processFPGA425_avm_address@20000000
    -- out out_unnamed_processFPGA425_avm_burstcount@20000000
    -- out out_unnamed_processFPGA425_avm_byteenable@20000000
    -- out out_unnamed_processFPGA425_avm_enable@20000000
    -- out out_unnamed_processFPGA425_avm_read@20000000
    -- out out_unnamed_processFPGA425_avm_write@20000000
    -- out out_unnamed_processFPGA425_avm_writedata@20000000
    thei_load_unnamed_processfpga425_processfpga : i_load_unnamed_processfpga425_processfpga3183
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx121_processfpga_processfpga3180_dupName_0_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_cmp_i51364629_processfpga_out_dest_data_out_187_0,
        in_i_stall => GND_q,
        in_i_valid => redist7_sync_in_aunroll_x_in_i_valid_2_q,
        in_unnamed_processFPGA425_avm_readdata => in_unnamed_processFPGA425_avm_readdata,
        in_unnamed_processFPGA425_avm_readdatavalid => in_unnamed_processFPGA425_avm_readdatavalid,
        in_unnamed_processFPGA425_avm_waitrequest => in_unnamed_processFPGA425_avm_waitrequest,
        in_unnamed_processFPGA425_avm_writeack => in_unnamed_processFPGA425_avm_writeack,
        out_o_readdata => i_load_unnamed_processfpga425_processfpga_out_o_readdata,
        out_unnamed_processFPGA425_avm_address => i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_address,
        out_unnamed_processFPGA425_avm_burstcount => i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_burstcount,
        out_unnamed_processFPGA425_avm_byteenable => i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_byteenable,
        out_unnamed_processFPGA425_avm_enable => i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_enable,
        out_unnamed_processFPGA425_avm_read => i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_read,
        out_unnamed_processFPGA425_avm_write => i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_write,
        out_unnamed_processFPGA425_avm_writedata => i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,6)
    out_unnamed_processFPGA425_avm_address <= i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_address;
    out_unnamed_processFPGA425_avm_enable <= i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_enable;
    out_unnamed_processFPGA425_avm_read <= i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_read;
    out_unnamed_processFPGA425_avm_write <= i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_write;
    out_unnamed_processFPGA425_avm_writedata <= i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_writedata;
    out_unnamed_processFPGA425_avm_byteenable <= i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_byteenable;
    out_unnamed_processFPGA425_avm_burstcount <= i_load_unnamed_processfpga425_processfpga_out_unnamed_processFPGA425_avm_burstcount;

    -- redist8_sync_in_aunroll_x_in_i_valid_4(DELAY,158)
    redist8_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_sync_in_aunroll_x_in_i_valid_2_q, xout => redist8_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- redist9_sync_in_aunroll_x_in_i_valid_5(DELAY,159)
    redist9_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_sync_in_aunroll_x_in_i_valid_4_q, xout => redist9_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- redist10_sync_in_aunroll_x_in_i_valid_6(DELAY,160)
    redist10_sync_in_aunroll_x_in_i_valid_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist9_sync_in_aunroll_x_in_i_valid_5_q, xout => redist10_sync_in_aunroll_x_in_i_valid_6_q, clk => clock, aclr => resetn );

    -- redist5_sync_in_aunroll_x_in_c0_eni21173_1_5(DELAY,155)
    redist5_sync_in_aunroll_x_in_c0_eni21173_1_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni21173_1, xout => redist5_sync_in_aunroll_x_in_c0_eni21173_1_5_q, clk => clock, aclr => resetn );

    -- redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_notEnable(LOGICAL,171)
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_nor(LOGICAL,172)
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_nor_q <= not (redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_notEnable_q or redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_sticky_ena_q);

    -- redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_last(CONSTANT,168)
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_last_q <= "010";

    -- redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_cmp(LOGICAL,169)
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_cmp_b <= STD_LOGIC_VECTOR("0" & redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_rdcnt_q);
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_cmp_q <= "1" WHEN redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_last_q = redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_cmp_b ELSE "0";

    -- redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_cmpReg(REG,170)
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_cmpReg_q <= STD_LOGIC_VECTOR(redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_sticky_ena(REG,173)
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_nor_q = "1") THEN
                redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_enaAnd(LOGICAL,174)
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_enaAnd_q <= redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_sticky_ena_q and VCC_q;

    -- redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_rdcnt(COUNTER,166)
    -- low=0, high=3, step=1, init=0
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_rdcnt_i <= redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_rdcnt_i, 2)));

    -- redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_wraddr(REG,167)
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_wraddr_q <= "11";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_wraddr_q <= STD_LOGIC_VECTOR(redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem(DUALMEM,165)
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_ia <= STD_LOGIC_VECTOR(in_c0_eni21173_2);
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_aa <= redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_wraddr_q;
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_ab <= redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_rdcnt_q;
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_reset0 <= not (resetn);
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_dmem : altera_syncram
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
        clocken1 => redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_reset0,
        clock1 => clock,
        address_a => redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_aa,
        data_a => redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_ab,
        q_b => redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_iq
    );
    redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_q <= redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_iq(31 downto 0);

    -- i_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga(BLACKBOX,62)@6
    -- out out_feedback_stall_out_57@20000000
    thei_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga : i_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga3200
    PORT MAP (
        in_data_in => redist6_sync_in_aunroll_x_in_c0_eni21173_2_5_mem_q,
        in_dir => redist5_sync_in_aunroll_x_in_c0_eni21173_1_5_q,
        in_feedback_in_57 => i_acl_push_i32_acl_hw_wg_id789_push57_processfpga_out_feedback_out_57,
        in_feedback_valid_in_57 => i_acl_push_i32_acl_hw_wg_id789_push57_processfpga_out_feedback_valid_out_57,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_5_q,
        out_data_out => i_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga_out_data_out,
        out_feedback_stall_out_57 => i_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga_out_feedback_stall_out_57,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i32_acl_hw_wg_id789_push57_processfpga(BLACKBOX,66)@7
    -- out out_feedback_out_57@20000000
    -- out out_feedback_valid_out_57@20000000
    thei_acl_push_i32_acl_hw_wg_id789_push57_processfpga : i_acl_push_i32_acl_hw_wg_id789_push57_processfpga3202
    PORT MAP (
        in_data_in => redist3_i_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga_out_data_out_1_q,
        in_feedback_stall_in_57 => i_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga_out_feedback_stall_out_57,
        in_notexit769 => redist1_i_notexit769_processfpga_q_6_q,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_6_q,
        out_data_out => i_acl_push_i32_acl_hw_wg_id789_push57_processfpga_out_data_out,
        out_feedback_out_57 => i_acl_push_i32_acl_hw_wg_id789_push57_processfpga_out_feedback_out_57,
        out_feedback_valid_out_57 => i_acl_push_i32_acl_hw_wg_id789_push57_processfpga_out_feedback_valid_out_57,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga_out_data_out_1(DELAY,153)
    redist3_i_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga_out_data_out, xout => redist3_i_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist1_i_notexit769_processfpga_q_6(DELAY,151)
    redist1_i_notexit769_processfpga_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit769_processfpga_q, xout => redist1_i_notexit769_processfpga_q_6_q, clk => clock, aclr => resetn );

    -- redist0_i_unnamed_processfpga3193_q_6(DELAY,150)
    redist0_i_unnamed_processfpga3193_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga3193_q, xout => redist0_i_unnamed_processfpga3193_q_6_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_conv122615_processfpga(BLACKBOX,75)@5
    thei_ffwd_dst_conv122615_processfpga : i_ffwd_dst_conv122615_processfpga3185
    PORT MAP (
        in_intel_reserved_ffwd_177_0 => in_intel_reserved_ffwd_177_0,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_4_q,
        out_dest_data_out_177_0 => i_ffwd_dst_conv122615_processfpga_out_dest_data_out_177_0,
        clock => clock,
        resetn => resetn
    );

    -- i_conv115_processfpga_sel_x(BITSELECT,42)@2
    i_conv115_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(redist4_i_acl_pop_i16_idx113_11373_pop56_processfpga_out_data_out_1_q(15 downto 0)), 32));

    -- i_conv115_processfpga_vt_select_15(BITSELECT,71)@2
    i_conv115_processfpga_vt_select_15_b <= i_conv115_processfpga_sel_x_b(15 downto 0);

    -- redist2_i_conv115_processfpga_vt_select_15_b_3(DELAY,152)
    redist2_i_conv115_processfpga_vt_select_15_b_3 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv115_processfpga_vt_select_15_b, xout => redist2_i_conv115_processfpga_vt_select_15_b_3_q, clk => clock, aclr => resetn );

    -- redist2_i_conv115_processfpga_vt_select_15_b_3_outputreg(DELAY,164)
    redist2_i_conv115_processfpga_vt_select_15_b_3_outputreg : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_i_conv115_processfpga_vt_select_15_b_3_q, xout => redist2_i_conv115_processfpga_vt_select_15_b_3_outputreg_q, clk => clock, aclr => resetn );

    -- i_conv115_processfpga_vt_join(BITJOIN,70)@5
    i_conv115_processfpga_vt_join_q <= c_i16_0gr_q & redist2_i_conv115_processfpga_vt_select_15_b_3_outputreg_q;

    -- i_add124_processfpga(ADD,67)@5
    i_add124_processfpga_a <= STD_LOGIC_VECTOR("0" & i_conv115_processfpga_vt_join_q);
    i_add124_processfpga_b <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_conv122615_processfpga_out_dest_data_out_177_0);
    i_add124_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add124_processfpga_a) + UNSIGNED(i_add124_processfpga_b));
    i_add124_processfpga_q <= i_add124_processfpga_o(32 downto 0);

    -- bgTrunc_i_add124_processfpga_sel_x(BITSELECT,2)@5
    bgTrunc_i_add124_processfpga_sel_x_b <= i_add124_processfpga_q(31 downto 0);

    -- redist13_bgTrunc_i_add124_processfpga_sel_x_b_1(DELAY,163)
    redist13_bgTrunc_i_add124_processfpga_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add124_processfpga_sel_x_b, xout => redist13_bgTrunc_i_add124_processfpga_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_idxprom125_processfpga_sel_x(BITSELECT,44)@6
    i_idxprom125_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist13_bgTrunc_i_add124_processfpga_sel_x_b_1_q(31 downto 0)), 64)));

    -- i_arrayidx126_processfpga_processfpga3189_mult_x_bs1_merged_bit_select(BITSELECT,148)@6
    i_arrayidx126_processfpga_processfpga3189_mult_x_bs1_merged_bit_select_b <= i_idxprom125_processfpga_sel_x_b(17 downto 0);
    i_arrayidx126_processfpga_processfpga3189_mult_x_bs1_merged_bit_select_c <= i_idxprom125_processfpga_sel_x_b(63 downto 54);
    i_arrayidx126_processfpga_processfpga3189_mult_x_bs1_merged_bit_select_d <= i_idxprom125_processfpga_sel_x_b(35 downto 18);
    i_arrayidx126_processfpga_processfpga3189_mult_x_bs1_merged_bit_select_e <= i_idxprom125_processfpga_sel_x_b(53 downto 36);

    -- i_arrayidx126_processfpga_processfpga3189_mult_x_im3_shift0(BITSHIFT,143)@6
    i_arrayidx126_processfpga_processfpga3189_mult_x_im3_shift0_qint <= i_arrayidx126_processfpga_processfpga3189_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx126_processfpga_processfpga3189_mult_x_im3_shift0_q <= i_arrayidx126_processfpga_processfpga3189_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx126_processfpga_processfpga3189_mult_x_align_15(BITSHIFT,129)@6
    i_arrayidx126_processfpga_processfpga3189_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx126_processfpga_processfpga3189_mult_x_im3_shift0_q) & "0000000000000000";
    i_arrayidx126_processfpga_processfpga3189_mult_x_align_15_q <= i_arrayidx126_processfpga_processfpga3189_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx126_processfpga_processfpga3189_mult_x_im6_shift0(BITSHIFT,144)@6
    i_arrayidx126_processfpga_processfpga3189_mult_x_im6_shift0_qint <= i_arrayidx126_processfpga_processfpga3189_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx126_processfpga_processfpga3189_mult_x_im6_shift0_q <= i_arrayidx126_processfpga_processfpga3189_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx126_processfpga_processfpga3189_mult_x_align_14(BITSHIFT,128)@6
    i_arrayidx126_processfpga_processfpga3189_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx126_processfpga_processfpga3189_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx126_processfpga_processfpga3189_mult_x_align_14_q <= i_arrayidx126_processfpga_processfpga3189_mult_x_align_14_qint(37 downto 0);

    -- i_arrayidx126_processfpga_processfpga3189_mult_x_join_16(BITJOIN,130)@6
    i_arrayidx126_processfpga_processfpga3189_mult_x_join_16_q <= i_arrayidx126_processfpga_processfpga3189_mult_x_align_15_q & i_arrayidx126_processfpga_processfpga3189_mult_x_align_14_q;

    -- i_arrayidx126_processfpga_processfpga3189_mult_x_im9_shift0(BITSHIFT,145)@6
    i_arrayidx126_processfpga_processfpga3189_mult_x_im9_shift0_qint <= i_arrayidx126_processfpga_processfpga3189_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx126_processfpga_processfpga3189_mult_x_im9_shift0_q <= i_arrayidx126_processfpga_processfpga3189_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx126_processfpga_processfpga3189_mult_x_align_12(BITSHIFT,126)@6
    i_arrayidx126_processfpga_processfpga3189_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx126_processfpga_processfpga3189_mult_x_im9_shift0_q) & "0000000000000000";
    i_arrayidx126_processfpga_processfpga3189_mult_x_align_12_q <= i_arrayidx126_processfpga_processfpga3189_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx126_processfpga_processfpga3189_mult_x_im0_shift0(BITSHIFT,142)@6
    i_arrayidx126_processfpga_processfpga3189_mult_x_im0_shift0_qint <= i_arrayidx126_processfpga_processfpga3189_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx126_processfpga_processfpga3189_mult_x_im0_shift0_q <= i_arrayidx126_processfpga_processfpga3189_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx126_processfpga_processfpga3189_mult_x_join_13(BITJOIN,127)@6
    i_arrayidx126_processfpga_processfpga3189_mult_x_join_13_q <= i_arrayidx126_processfpga_processfpga3189_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx126_processfpga_processfpga3189_mult_x_im0_shift0_q);

    -- i_arrayidx126_processfpga_processfpga3189_mult_x_result_add_0_0(ADD,131)@6
    i_arrayidx126_processfpga_processfpga3189_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx126_processfpga_processfpga3189_mult_x_join_13_q);
    i_arrayidx126_processfpga_processfpga3189_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx126_processfpga_processfpga3189_mult_x_join_16_q);
    i_arrayidx126_processfpga_processfpga3189_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx126_processfpga_processfpga3189_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx126_processfpga_processfpga3189_mult_x_result_add_0_0_b));
    i_arrayidx126_processfpga_processfpga3189_mult_x_result_add_0_0_q <= i_arrayidx126_processfpga_processfpga3189_mult_x_result_add_0_0_o(66 downto 0);

    -- i_arrayidx126_processfpga_processfpga3189_mult_extender_x(BITJOIN,35)@6
    i_arrayidx126_processfpga_processfpga3189_mult_extender_x_q <= i_arrayidx121_processfpga_processfpga3180_mult_multconst_x_q & i_arrayidx126_processfpga_processfpga3189_mult_x_result_add_0_0_q(65 downto 0);

    -- i_arrayidx126_processfpga_processfpga3189_trunc_sel_x(BITSELECT,37)@6
    i_arrayidx126_processfpga_processfpga3189_trunc_sel_x_b <= i_arrayidx126_processfpga_processfpga3189_mult_extender_x_q(63 downto 0);

    -- redist11_i_arrayidx126_processfpga_processfpga3189_trunc_sel_x_b_1(DELAY,161)
    redist11_i_arrayidx126_processfpga_processfpga3189_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx126_processfpga_processfpga3189_trunc_sel_x_b, xout => redist11_i_arrayidx126_processfpga_processfpga3189_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_output_sync_buffer_processfpga(BLACKBOX,89)@0
    -- in in_i_dependence@7
    -- in in_valid_in@7
    -- out out_buffer_out@7
    -- out out_valid_out@7
    thei_syncbuf_output_sync_buffer_processfpga : i_syncbuf_output_sync_buffer_processfpga3187
    PORT MAP (
        in_buffer_in => in_output,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_6_q,
        out_buffer_out => i_syncbuf_output_sync_buffer_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx126_processfpga_processfpga3189_add_x(ADD,38)@7
    i_arrayidx126_processfpga_processfpga3189_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_output_sync_buffer_processfpga_out_buffer_out);
    i_arrayidx126_processfpga_processfpga3189_add_x_b <= STD_LOGIC_VECTOR("0" & redist11_i_arrayidx126_processfpga_processfpga3189_trunc_sel_x_b_1_q);
    i_arrayidx126_processfpga_processfpga3189_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx126_processfpga_processfpga3189_add_x_a) + UNSIGNED(i_arrayidx126_processfpga_processfpga3189_add_x_b));
    i_arrayidx126_processfpga_processfpga3189_add_x_q <= i_arrayidx126_processfpga_processfpga3189_add_x_o(64 downto 0);

    -- i_arrayidx126_processfpga_processfpga3189_dupName_0_trunc_sel_x(BITSELECT,32)@7
    i_arrayidx126_processfpga_processfpga3189_dupName_0_trunc_sel_x_b <= i_arrayidx126_processfpga_processfpga3189_add_x_q(63 downto 0);

    -- sync_out_aunroll_x(GPOUT,46)@7
    out_c0_exi6_0 <= GND_q;
    out_c0_exi6_1 <= i_load_unnamed_processfpga425_processfpga_out_o_readdata;
    out_c0_exi6_2 <= i_arrayidx126_processfpga_processfpga3189_dupName_0_trunc_sel_x_b;
    out_c0_exi6_3 <= redist0_i_unnamed_processfpga3193_q_6_q;
    out_c0_exi6_4 <= redist1_i_notexit769_processfpga_q_6_q;
    out_c0_exi6_5 <= redist3_i_acl_pop_i32_acl_hw_wg_id789_pop57_processfpga_out_data_out_1_q;
    out_c0_exi6_6 <= i_acl_push_i32_acl_hw_wg_id789_push57_processfpga_out_data_out;
    out_o_valid <= redist10_sync_in_aunroll_x_in_i_valid_6_q;

    -- i_acl_push_i1_notexitcond768_processfpga(BLACKBOX,65)@1
    -- out out_feedback_out_54@20000000
    -- out out_feedback_valid_out_54@20000000
    thei_acl_push_i1_notexitcond768_processfpga : i_acl_push_i1_notexitcond768_processfpga3198
    PORT MAP (
        in_data_in => i_notexit769_processfpga_q,
        in_feedback_stall_in_54 => i_acl_pipeline_keep_going767_processfpga_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_54 => i_acl_push_i1_notexitcond768_processfpga_out_feedback_out_54,
        out_feedback_valid_out_54 => i_acl_push_i1_notexitcond768_processfpga_out_feedback_valid_out_54,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going767_processfpga(BLACKBOX,59)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going767_processfpga : i_acl_pipeline_keep_going767_processfpga3170
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond768_processfpga_out_feedback_out_54,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond768_processfpga_out_feedback_valid_out_54,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going767_processfpga_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going767_processfpga_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going767_processfpga_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going767_processfpga_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,58)
    out_aclp_to_limiter_i_acl_pipeline_keep_going767_processfpga_exiting_valid_out <= i_acl_pipeline_keep_going767_processfpga_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going767_processfpga_exiting_stall_out <= i_acl_pipeline_keep_going767_processfpga_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,94)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going767_processfpga_out_pipeline_valid_out;

END normal;
