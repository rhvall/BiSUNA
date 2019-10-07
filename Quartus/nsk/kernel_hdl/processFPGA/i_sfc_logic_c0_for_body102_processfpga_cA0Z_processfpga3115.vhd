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

-- VHDL created from i_sfc_logic_c0_for_body102_processfpga_c0_enter1160_processfpga3115
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

entity i_sfc_logic_c0_for_body102_processfpga_c0_enter1160_processfpga3115 is
    port (
        out_unnamed_processFPGA420_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA420_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA420_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA420_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA420_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA420_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_processFPGA420_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21159_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21159_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21159_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_conns : in std_logic_vector(63 downto 0);  -- ufix64
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_176_0 : in std_logic_vector(16 downto 0);  -- ufix17
        in_intel_reserved_ffwd_17_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_19_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_20_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_localConn : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi41166_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi41166_1 : out std_logic_vector(7 downto 0);  -- ufix8
        out_c0_exi41166_2 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi41166_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi41166_4 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA420_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_processFPGA420_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA420_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA420_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going763_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going763_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body102_processfpga_c0_enter1160_processfpga3115;

architecture normal of i_sfc_logic_c0_for_body102_processfpga_c0_enter1160_processfpga3115 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going763_processfpga3117 is
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


    component i_acl_pop_i16_idx96_11371_pop59_processfpga3123 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_59 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_59 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_59 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i17_fpgaindvars_iv268_pop58_processfpga3121 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_58 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_58 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_stall_out_58 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga3148 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_60 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_60 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_60 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_idx96_11371_push59_processfpga3142 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_59 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA461 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_59 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_59 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i17_fpgaindvars_iv268_push58_processfpga3144 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_feedback_stall_in_58 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA461 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_out_58 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_58 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond764_processfpga3146 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_52 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_52 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_52 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_acl_hw_wg_id825_push60_processfpga3150 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_60 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA461 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_60 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_60 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp421255378_processfpga3128 is
        port (
            in_intel_reserved_ffwd_19_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_19_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_conv35370_processfpga3133 is
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


    component i_ffwd_dst_unnamed_processfpga419_processfpga3119 is
        port (
            in_intel_reserved_ffwd_176_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_176_0 : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga421_processfpga3139 is
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


    component i_load_unnamed_processfpga420_processfpga3130 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA420_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_processFPGA420_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA420_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA420_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA420_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA420_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA420_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_unnamed_processFPGA420_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA420_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA420_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA420_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_conns_sync_buffer_processfpga3135 is
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


    component i_syncbuf_localconn_sync_buffer_processfpga3125 is
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
    signal bgTrunc_i_add107_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next269_processfpga_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal bgTrunc_i_inc111_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_clcntype_processfpga_processfpga3127_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_multconst_x_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_clcntype_processfpga_processfpga3127_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clcntype_processfpga_processfpga3127_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clcntype_processfpga_processfpga3127_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clcntype_processfpga_processfpga3127_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clcntype_processfpga_processfpga3127_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_c_i64_1gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_conv98_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_idxprom103_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom108_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i16_0gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_1gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i17_1gr_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i17_undef_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i8_1gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pipeline_keep_going763_processfpga_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going763_processfpga_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going763_processfpga_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going763_processfpga_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_idx96_11371_pop59_processfpga_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_idx96_11371_pop59_processfpga_out_feedback_stall_out_59 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv268_pop58_processfpga_out_data_out : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv268_pop58_processfpga_out_feedback_stall_out_58 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_feedback_stall_out_60 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_idx96_11371_push59_processfpga_out_feedback_out_59 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_idx96_11371_push59_processfpga_out_feedback_valid_out_59 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv268_push58_processfpga_out_feedback_out_58 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv268_push58_processfpga_out_feedback_valid_out_58 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond764_processfpga_out_feedback_out_52 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond764_processfpga_out_feedback_valid_out_52 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id825_push60_processfpga_out_feedback_out_60 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id825_push60_processfpga_out_feedback_valid_out_60 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add107_processfpga_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_processfpga_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_processfpga_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add107_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_conv98_processfpga_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv98_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_exitcond270_processfpga_a : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond270_processfpga_b : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond270_processfpga_o : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond270_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp421255378_processfpga_out_dest_data_out_19_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_conv35370_processfpga_out_dest_data_out_17_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_processfpga419_processfpga_out_dest_data_out_176_0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_ffwd_dst_unnamed_processfpga421_processfpga_out_dest_data_out_20_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv268_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv268_replace_phi_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_fpgaindvars_iv_next269_processfpga_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next269_processfpga_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next269_processfpga_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next269_processfpga_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_idxprom103_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom103_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom103_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_inc111_processfpga_a : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc111_processfpga_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc111_processfpga_o : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc111_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_load_unnamed_processfpga420_processfpga_out_o_readdata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_conns_sync_buffer_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localconn_sync_buffer_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga3132_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_processfpga3132_vt_const_7_q : STD_LOGIC_VECTOR (6 downto 0);
    signal i_unnamed_processfpga3132_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_processfpga3132_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga3141_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_unnamed_processfpga3141_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_unnamed_processfpga3141_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_conv98_processfpga_vt_select_15_b_3_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist3_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_acl_pop_i16_idx96_11371_pop59_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist6_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_sync_in_aunroll_x_in_i_valid_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_sync_in_aunroll_x_in_i_valid_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_clpcntype_processfpga_processfpga3137_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist12_i_clpcntype_processfpga_processfpga3137_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist13_i_clcntype_processfpga_processfpga3127_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist14_bgTrunc_i_add107_processfpga_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_i_conv98_processfpga_vt_select_15_b_3_outputreg_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_reset0 : std_logic;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_i : signal is true;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_eq : std_logic;
    attribute preserve of redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_eq : signal is true;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_sticky_ena_q : signal is true;
    signal redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist6_sync_in_aunroll_x_in_i_valid_1(DELAY,177)
    redist6_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist6_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist7_sync_in_aunroll_x_in_i_valid_3(DELAY,178)
    redist7_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_sync_in_aunroll_x_in_i_valid_1_q, xout => redist7_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_ffwd_dst_cmp421255378_processfpga(BLACKBOX,77)@4
    thei_ffwd_dst_cmp421255378_processfpga : i_ffwd_dst_cmp421255378_processfpga3128
    PORT MAP (
        in_intel_reserved_ffwd_19_0 => in_intel_reserved_ffwd_19_0,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_3_q,
        out_dest_data_out_19_0 => i_ffwd_dst_cmp421255378_processfpga_out_dest_data_out_19_0,
        clock => clock,
        resetn => resetn
    );

    -- i_clcntype_processfpga_processfpga3127_mult_multconst_x(CONSTANT,26)
    i_clcntype_processfpga_processfpga3127_mult_multconst_x_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_clcntype_processfpga_processfpga3127_mult_x_im3_shift0(BITSHIFT,148)@2
    i_clcntype_processfpga_processfpga3127_mult_x_im3_shift0_qint <= i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_c & "0";
    i_clcntype_processfpga_processfpga3127_mult_x_im3_shift0_q <= i_clcntype_processfpga_processfpga3127_mult_x_im3_shift0_qint(10 downto 0);

    -- i_idxprom103_processfpga_vt_const_63(CONSTANT,84)
    i_idxprom103_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_unnamed_processfpga421_processfpga(BLACKBOX,80)@1
    thei_ffwd_dst_unnamed_processfpga421_processfpga : i_ffwd_dst_unnamed_processfpga421_processfpga3139
    PORT MAP (
        in_intel_reserved_ffwd_20_0 => in_intel_reserved_ffwd_20_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_20_0 => i_ffwd_dst_unnamed_processfpga421_processfpga_out_dest_data_out_20_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga419_processfpga(BLACKBOX,79)@1
    thei_ffwd_dst_unnamed_processfpga419_processfpga : i_ffwd_dst_unnamed_processfpga419_processfpga3119
    PORT MAP (
        in_intel_reserved_ffwd_176_0 => in_intel_reserved_ffwd_176_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_176_0 => i_ffwd_dst_unnamed_processfpga419_processfpga_out_dest_data_out_176_0,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv_next269_processfpga(ADD,82)@1
    i_fpgaindvars_iv_next269_processfpga_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv268_replace_phi_processfpga_q);
    i_fpgaindvars_iv_next269_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i17_1gr_q);
    i_fpgaindvars_iv_next269_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next269_processfpga_a) + UNSIGNED(i_fpgaindvars_iv_next269_processfpga_b));
    i_fpgaindvars_iv_next269_processfpga_q <= i_fpgaindvars_iv_next269_processfpga_o(17 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next269_processfpga_sel_x(BITSELECT,3)@1
    bgTrunc_i_fpgaindvars_iv_next269_processfpga_sel_x_b <= i_fpgaindvars_iv_next269_processfpga_q(16 downto 0);

    -- i_acl_push_i17_fpgaindvars_iv268_push58_processfpga(BLACKBOX,68)@1
    -- out out_feedback_out_58@20000000
    -- out out_feedback_valid_out_58@20000000
    thei_acl_push_i17_fpgaindvars_iv268_push58_processfpga : i_acl_push_i17_fpgaindvars_iv268_push58_processfpga3144
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next269_processfpga_sel_x_b,
        in_feedback_stall_in_58 => i_acl_pop_i17_fpgaindvars_iv268_pop58_processfpga_out_feedback_stall_out_58,
        in_stall_in => GND_q,
        in_unnamed_processFPGA461 => i_unnamed_processfpga3141_q,
        in_valid_in => in_i_valid,
        out_feedback_out_58 => i_acl_push_i17_fpgaindvars_iv268_push58_processfpga_out_feedback_out_58,
        out_feedback_valid_out_58 => i_acl_push_i17_fpgaindvars_iv268_push58_processfpga_out_feedback_valid_out_58,
        clock => clock,
        resetn => resetn
    );

    -- c_i17_undef(CONSTANT,57)
    c_i17_undef_q <= "00000000000000000";

    -- i_acl_pop_i17_fpgaindvars_iv268_pop58_processfpga(BLACKBOX,65)@1
    -- out out_feedback_stall_out_58@20000000
    thei_acl_pop_i17_fpgaindvars_iv268_pop58_processfpga : i_acl_pop_i17_fpgaindvars_iv268_pop58_processfpga3121
    PORT MAP (
        in_data_in => c_i17_undef_q,
        in_dir => in_c0_eni21159_1,
        in_feedback_in_58 => i_acl_push_i17_fpgaindvars_iv268_push58_processfpga_out_feedback_out_58,
        in_feedback_valid_in_58 => i_acl_push_i17_fpgaindvars_iv268_push58_processfpga_out_feedback_valid_out_58,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i17_fpgaindvars_iv268_pop58_processfpga_out_data_out,
        out_feedback_stall_out_58 => i_acl_pop_i17_fpgaindvars_iv268_pop58_processfpga_out_feedback_stall_out_58,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv268_replace_phi_processfpga(MUX,81)@1
    i_fpgaindvars_iv268_replace_phi_processfpga_s <= in_c0_eni21159_1;
    i_fpgaindvars_iv268_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv268_replace_phi_processfpga_s, i_acl_pop_i17_fpgaindvars_iv268_pop58_processfpga_out_data_out, i_ffwd_dst_unnamed_processfpga419_processfpga_out_dest_data_out_176_0)
    BEGIN
        CASE (i_fpgaindvars_iv268_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv268_replace_phi_processfpga_q <= i_acl_pop_i17_fpgaindvars_iv268_pop58_processfpga_out_data_out;
            WHEN "1" => i_fpgaindvars_iv268_replace_phi_processfpga_q <= i_ffwd_dst_unnamed_processfpga419_processfpga_out_dest_data_out_176_0;
            WHEN OTHERS => i_fpgaindvars_iv268_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i17_1gr(CONSTANT,56)
    c_i17_1gr_q <= "11111111111111111";

    -- i_exitcond270_processfpga(COMPARE,76)@1
    i_exitcond270_processfpga_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => c_i17_1gr_q(16)) & c_i17_1gr_q));
    i_exitcond270_processfpga_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => i_fpgaindvars_iv268_replace_phi_processfpga_q(16)) & i_fpgaindvars_iv268_replace_phi_processfpga_q));
    i_exitcond270_processfpga_o <= STD_LOGIC_VECTOR(SIGNED(i_exitcond270_processfpga_a) - SIGNED(i_exitcond270_processfpga_b));
    i_exitcond270_processfpga_c(0) <= i_exitcond270_processfpga_o(18);

    -- i_unnamed_processfpga3141(LOGICAL,97)@1
    i_unnamed_processfpga3141_q <= i_exitcond270_processfpga_c and i_ffwd_dst_unnamed_processfpga421_processfpga_out_dest_data_out_20_0;

    -- redist0_i_unnamed_processfpga3141_q_1(DELAY,171)
    redist0_i_unnamed_processfpga3141_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga3141_q, xout => redist0_i_unnamed_processfpga3141_q_1_q, clk => clock, aclr => resetn );

    -- c_i16_1gr(CONSTANT,55)
    c_i16_1gr_q <= "0000000000000001";

    -- i_inc111_processfpga(ADD,89)@2
    i_inc111_processfpga_a <= STD_LOGIC_VECTOR("0" & redist5_i_acl_pop_i16_idx96_11371_pop59_processfpga_out_data_out_1_q);
    i_inc111_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i16_1gr_q);
    i_inc111_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc111_processfpga_a) + UNSIGNED(i_inc111_processfpga_b));
    i_inc111_processfpga_q <= i_inc111_processfpga_o(16 downto 0);

    -- bgTrunc_i_inc111_processfpga_sel_x(BITSELECT,4)@2
    bgTrunc_i_inc111_processfpga_sel_x_b <= i_inc111_processfpga_q(15 downto 0);

    -- i_acl_push_i16_idx96_11371_push59_processfpga(BLACKBOX,67)@2
    -- out out_feedback_out_59@20000000
    -- out out_feedback_valid_out_59@20000000
    thei_acl_push_i16_idx96_11371_push59_processfpga : i_acl_push_i16_idx96_11371_push59_processfpga3142
    PORT MAP (
        in_data_in => bgTrunc_i_inc111_processfpga_sel_x_b,
        in_feedback_stall_in_59 => i_acl_pop_i16_idx96_11371_pop59_processfpga_out_feedback_stall_out_59,
        in_stall_in => GND_q,
        in_unnamed_processFPGA461 => redist0_i_unnamed_processfpga3141_q_1_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_59 => i_acl_push_i16_idx96_11371_push59_processfpga_out_feedback_out_59,
        out_feedback_valid_out_59 => i_acl_push_i16_idx96_11371_push59_processfpga_out_feedback_valid_out_59,
        clock => clock,
        resetn => resetn
    );

    -- c_i16_0gr(CONSTANT,54)
    c_i16_0gr_q <= "0000000000000000";

    -- i_acl_pop_i16_idx96_11371_pop59_processfpga(BLACKBOX,64)@1
    -- out out_feedback_stall_out_59@20000000
    thei_acl_pop_i16_idx96_11371_pop59_processfpga : i_acl_pop_i16_idx96_11371_pop59_processfpga3123
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c0_eni21159_1,
        in_feedback_in_59 => i_acl_push_i16_idx96_11371_push59_processfpga_out_feedback_out_59,
        in_feedback_valid_in_59 => i_acl_push_i16_idx96_11371_push59_processfpga_out_feedback_valid_out_59,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_idx96_11371_pop59_processfpga_out_data_out,
        out_feedback_stall_out_59 => i_acl_pop_i16_idx96_11371_pop59_processfpga_out_feedback_stall_out_59,
        clock => clock,
        resetn => resetn
    );

    -- redist5_i_acl_pop_i16_idx96_11371_pop59_processfpga_out_data_out_1(DELAY,176)
    redist5_i_acl_pop_i16_idx96_11371_pop59_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i16_idx96_11371_pop59_processfpga_out_data_out, xout => redist5_i_acl_pop_i16_idx96_11371_pop59_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_idxprom103_processfpga_sel_x(BITSELECT,47)@2
    i_idxprom103_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(redist5_i_acl_pop_i16_idx96_11371_pop59_processfpga_out_data_out_1_q(15 downto 0)), 64));

    -- i_idxprom103_processfpga_vt_select_15(BITSELECT,86)@2
    i_idxprom103_processfpga_vt_select_15_b <= i_idxprom103_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom103_processfpga_vt_join(BITJOIN,85)@2
    i_idxprom103_processfpga_vt_join_q <= i_idxprom103_processfpga_vt_const_63_q & i_idxprom103_processfpga_vt_select_15_b;

    -- i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select(BITSELECT,170)@2
    i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_b <= i_idxprom103_processfpga_vt_join_q(17 downto 0);
    i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_c <= i_idxprom103_processfpga_vt_join_q(63 downto 54);
    i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_d <= i_idxprom103_processfpga_vt_join_q(35 downto 18);
    i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_e <= i_idxprom103_processfpga_vt_join_q(53 downto 36);

    -- i_clcntype_processfpga_processfpga3127_mult_x_im3_add_1(ADD,149)@2 + 1
    i_clcntype_processfpga_processfpga3127_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_c);
    i_clcntype_processfpga_processfpga3127_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_clcntype_processfpga_processfpga3127_mult_x_im3_shift0_q);
    i_clcntype_processfpga_processfpga3127_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clcntype_processfpga_processfpga3127_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clcntype_processfpga_processfpga3127_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clcntype_processfpga_processfpga3127_mult_x_im3_add_1_a) + UNSIGNED(i_clcntype_processfpga_processfpga3127_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_clcntype_processfpga_processfpga3127_mult_x_im3_add_1_q <= i_clcntype_processfpga_processfpga3127_mult_x_im3_add_1_o(11 downto 0);

    -- i_clcntype_processfpga_processfpga3127_mult_x_im3_shift2(BITSHIFT,150)@3
    i_clcntype_processfpga_processfpga3127_mult_x_im3_shift2_qint <= i_clcntype_processfpga_processfpga3127_mult_x_im3_add_1_q & "00";
    i_clcntype_processfpga_processfpga3127_mult_x_im3_shift2_q <= i_clcntype_processfpga_processfpga3127_mult_x_im3_shift2_qint(13 downto 0);

    -- i_clcntype_processfpga_processfpga3127_mult_x_align_15(BITSHIFT,118)@3
    i_clcntype_processfpga_processfpga3127_mult_x_align_15_qint <= i_clcntype_processfpga_processfpga3127_mult_x_im3_shift2_q & "00000000000000";
    i_clcntype_processfpga_processfpga3127_mult_x_align_15_q <= i_clcntype_processfpga_processfpga3127_mult_x_align_15_qint(27 downto 0);

    -- i_clcntype_processfpga_processfpga3127_mult_x_im6_shift0(BITSHIFT,151)@2
    i_clcntype_processfpga_processfpga3127_mult_x_im6_shift0_qint <= i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_d & "0";
    i_clcntype_processfpga_processfpga3127_mult_x_im6_shift0_q <= i_clcntype_processfpga_processfpga3127_mult_x_im6_shift0_qint(18 downto 0);

    -- i_clcntype_processfpga_processfpga3127_mult_x_im6_add_1(ADD,152)@2 + 1
    i_clcntype_processfpga_processfpga3127_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_d);
    i_clcntype_processfpga_processfpga3127_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_clcntype_processfpga_processfpga3127_mult_x_im6_shift0_q);
    i_clcntype_processfpga_processfpga3127_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clcntype_processfpga_processfpga3127_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clcntype_processfpga_processfpga3127_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clcntype_processfpga_processfpga3127_mult_x_im6_add_1_a) + UNSIGNED(i_clcntype_processfpga_processfpga3127_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_clcntype_processfpga_processfpga3127_mult_x_im6_add_1_q <= i_clcntype_processfpga_processfpga3127_mult_x_im6_add_1_o(19 downto 0);

    -- i_clcntype_processfpga_processfpga3127_mult_x_im6_shift2(BITSHIFT,153)@3
    i_clcntype_processfpga_processfpga3127_mult_x_im6_shift2_qint <= i_clcntype_processfpga_processfpga3127_mult_x_im6_add_1_q & "00";
    i_clcntype_processfpga_processfpga3127_mult_x_im6_shift2_q <= i_clcntype_processfpga_processfpga3127_mult_x_im6_shift2_qint(21 downto 0);

    -- i_clcntype_processfpga_processfpga3127_mult_x_align_14(BITSHIFT,117)@3
    i_clcntype_processfpga_processfpga3127_mult_x_align_14_qint <= i_clcntype_processfpga_processfpga3127_mult_x_im6_shift2_q & "000000000000000000";
    i_clcntype_processfpga_processfpga3127_mult_x_align_14_q <= i_clcntype_processfpga_processfpga3127_mult_x_align_14_qint(39 downto 0);

    -- i_clcntype_processfpga_processfpga3127_mult_x_join_16(BITJOIN,119)@3
    i_clcntype_processfpga_processfpga3127_mult_x_join_16_q <= i_clcntype_processfpga_processfpga3127_mult_x_align_15_q & i_clcntype_processfpga_processfpga3127_mult_x_align_14_q;

    -- i_clcntype_processfpga_processfpga3127_mult_x_im9_shift0(BITSHIFT,154)@2
    i_clcntype_processfpga_processfpga3127_mult_x_im9_shift0_qint <= i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_e & "0";
    i_clcntype_processfpga_processfpga3127_mult_x_im9_shift0_q <= i_clcntype_processfpga_processfpga3127_mult_x_im9_shift0_qint(18 downto 0);

    -- i_clcntype_processfpga_processfpga3127_mult_x_im9_add_1(ADD,155)@2 + 1
    i_clcntype_processfpga_processfpga3127_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_e);
    i_clcntype_processfpga_processfpga3127_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_clcntype_processfpga_processfpga3127_mult_x_im9_shift0_q);
    i_clcntype_processfpga_processfpga3127_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clcntype_processfpga_processfpga3127_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clcntype_processfpga_processfpga3127_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clcntype_processfpga_processfpga3127_mult_x_im9_add_1_a) + UNSIGNED(i_clcntype_processfpga_processfpga3127_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_clcntype_processfpga_processfpga3127_mult_x_im9_add_1_q <= i_clcntype_processfpga_processfpga3127_mult_x_im9_add_1_o(19 downto 0);

    -- i_clcntype_processfpga_processfpga3127_mult_x_im9_shift2(BITSHIFT,156)@3
    i_clcntype_processfpga_processfpga3127_mult_x_im9_shift2_qint <= i_clcntype_processfpga_processfpga3127_mult_x_im9_add_1_q & "00";
    i_clcntype_processfpga_processfpga3127_mult_x_im9_shift2_q <= i_clcntype_processfpga_processfpga3127_mult_x_im9_shift2_qint(21 downto 0);

    -- i_clcntype_processfpga_processfpga3127_mult_x_align_12(BITSHIFT,115)@3
    i_clcntype_processfpga_processfpga3127_mult_x_align_12_qint <= i_clcntype_processfpga_processfpga3127_mult_x_im9_shift2_q & "00000000000000";
    i_clcntype_processfpga_processfpga3127_mult_x_align_12_q <= i_clcntype_processfpga_processfpga3127_mult_x_align_12_qint(35 downto 0);

    -- i_clcntype_processfpga_processfpga3127_mult_x_im0_shift0(BITSHIFT,145)@2
    i_clcntype_processfpga_processfpga3127_mult_x_im0_shift0_qint <= i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_b & "0";
    i_clcntype_processfpga_processfpga3127_mult_x_im0_shift0_q <= i_clcntype_processfpga_processfpga3127_mult_x_im0_shift0_qint(18 downto 0);

    -- i_clcntype_processfpga_processfpga3127_mult_x_im0_add_1(ADD,146)@2 + 1
    i_clcntype_processfpga_processfpga3127_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_clcntype_processfpga_processfpga3127_mult_x_bs1_merged_bit_select_b);
    i_clcntype_processfpga_processfpga3127_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_clcntype_processfpga_processfpga3127_mult_x_im0_shift0_q);
    i_clcntype_processfpga_processfpga3127_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clcntype_processfpga_processfpga3127_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clcntype_processfpga_processfpga3127_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clcntype_processfpga_processfpga3127_mult_x_im0_add_1_a) + UNSIGNED(i_clcntype_processfpga_processfpga3127_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_clcntype_processfpga_processfpga3127_mult_x_im0_add_1_q <= i_clcntype_processfpga_processfpga3127_mult_x_im0_add_1_o(19 downto 0);

    -- i_clcntype_processfpga_processfpga3127_mult_x_im0_shift2(BITSHIFT,147)@3
    i_clcntype_processfpga_processfpga3127_mult_x_im0_shift2_qint <= i_clcntype_processfpga_processfpga3127_mult_x_im0_add_1_q & "00";
    i_clcntype_processfpga_processfpga3127_mult_x_im0_shift2_q <= i_clcntype_processfpga_processfpga3127_mult_x_im0_shift2_qint(21 downto 0);

    -- i_clcntype_processfpga_processfpga3127_mult_x_join_13(BITJOIN,116)@3
    i_clcntype_processfpga_processfpga3127_mult_x_join_13_q <= i_clcntype_processfpga_processfpga3127_mult_x_align_12_q & i_clcntype_processfpga_processfpga3127_mult_x_im0_shift2_q;

    -- i_clcntype_processfpga_processfpga3127_mult_x_result_add_0_0(ADD,120)@3
    i_clcntype_processfpga_processfpga3127_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_clcntype_processfpga_processfpga3127_mult_x_join_13_q);
    i_clcntype_processfpga_processfpga3127_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_clcntype_processfpga_processfpga3127_mult_x_join_16_q);
    i_clcntype_processfpga_processfpga3127_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clcntype_processfpga_processfpga3127_mult_x_result_add_0_0_a) + UNSIGNED(i_clcntype_processfpga_processfpga3127_mult_x_result_add_0_0_b));
    i_clcntype_processfpga_processfpga3127_mult_x_result_add_0_0_q <= i_clcntype_processfpga_processfpga3127_mult_x_result_add_0_0_o(68 downto 0);

    -- i_clcntype_processfpga_processfpga3127_mult_extender_x(BITJOIN,25)@3
    i_clcntype_processfpga_processfpga3127_mult_extender_x_q <= i_clcntype_processfpga_processfpga3127_mult_multconst_x_q & i_clcntype_processfpga_processfpga3127_mult_x_result_add_0_0_q(67 downto 0);

    -- i_clcntype_processfpga_processfpga3127_trunc_sel_x(BITSELECT,27)@3
    i_clcntype_processfpga_processfpga3127_trunc_sel_x_b <= i_clcntype_processfpga_processfpga3127_mult_extender_x_q(63 downto 0);

    -- redist13_i_clcntype_processfpga_processfpga3127_trunc_sel_x_b_1(DELAY,184)
    redist13_i_clcntype_processfpga_processfpga3127_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clcntype_processfpga_processfpga3127_trunc_sel_x_b, xout => redist13_i_clcntype_processfpga_processfpga3127_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localconn_sync_buffer_processfpga(BLACKBOX,92)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_localconn_sync_buffer_processfpga : i_syncbuf_localconn_sync_buffer_processfpga3125
    PORT MAP (
        in_buffer_in => in_localConn,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_localconn_sync_buffer_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_clcntype_processfpga_processfpga3127_add_x(ADD,28)@4
    i_clcntype_processfpga_processfpga3127_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localconn_sync_buffer_processfpga_out_buffer_out);
    i_clcntype_processfpga_processfpga3127_add_x_b <= STD_LOGIC_VECTOR("0" & redist13_i_clcntype_processfpga_processfpga3127_trunc_sel_x_b_1_q);
    i_clcntype_processfpga_processfpga3127_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clcntype_processfpga_processfpga3127_add_x_a) + UNSIGNED(i_clcntype_processfpga_processfpga3127_add_x_b));
    i_clcntype_processfpga_processfpga3127_add_x_q <= i_clcntype_processfpga_processfpga3127_add_x_o(64 downto 0);

    -- i_clcntype_processfpga_processfpga3127_dupName_0_trunc_sel_x(BITSELECT,22)@4
    i_clcntype_processfpga_processfpga3127_dupName_0_trunc_sel_x_b <= i_clcntype_processfpga_processfpga3127_add_x_q(63 downto 0);

    -- i_load_unnamed_processfpga420_processfpga(BLACKBOX,90)@4
    -- in in_i_stall@20000000
    -- out out_o_readdata@9
    -- out out_o_stall@8
    -- out out_o_valid@9
    -- out out_unnamed_processFPGA420_avm_address@20000000
    -- out out_unnamed_processFPGA420_avm_burstcount@20000000
    -- out out_unnamed_processFPGA420_avm_byteenable@20000000
    -- out out_unnamed_processFPGA420_avm_enable@20000000
    -- out out_unnamed_processFPGA420_avm_read@20000000
    -- out out_unnamed_processFPGA420_avm_write@20000000
    -- out out_unnamed_processFPGA420_avm_writedata@20000000
    thei_load_unnamed_processfpga420_processfpga : i_load_unnamed_processfpga420_processfpga3130
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_clcntype_processfpga_processfpga3127_dupName_0_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_cmp421255378_processfpga_out_dest_data_out_19_0,
        in_i_stall => GND_q,
        in_i_valid => redist7_sync_in_aunroll_x_in_i_valid_3_q,
        in_unnamed_processFPGA420_avm_readdata => in_unnamed_processFPGA420_avm_readdata,
        in_unnamed_processFPGA420_avm_readdatavalid => in_unnamed_processFPGA420_avm_readdatavalid,
        in_unnamed_processFPGA420_avm_waitrequest => in_unnamed_processFPGA420_avm_waitrequest,
        in_unnamed_processFPGA420_avm_writeack => in_unnamed_processFPGA420_avm_writeack,
        out_o_readdata => i_load_unnamed_processfpga420_processfpga_out_o_readdata,
        out_unnamed_processFPGA420_avm_address => i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_address,
        out_unnamed_processFPGA420_avm_burstcount => i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_burstcount,
        out_unnamed_processFPGA420_avm_byteenable => i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_byteenable,
        out_unnamed_processFPGA420_avm_enable => i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_enable,
        out_unnamed_processFPGA420_avm_read => i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_read,
        out_unnamed_processFPGA420_avm_write => i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_write,
        out_unnamed_processFPGA420_avm_writedata => i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,6)
    out_unnamed_processFPGA420_avm_address <= i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_address;
    out_unnamed_processFPGA420_avm_enable <= i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_enable;
    out_unnamed_processFPGA420_avm_read <= i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_read;
    out_unnamed_processFPGA420_avm_write <= i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_write;
    out_unnamed_processFPGA420_avm_writedata <= i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_writedata;
    out_unnamed_processFPGA420_avm_byteenable <= i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_byteenable;
    out_unnamed_processFPGA420_avm_burstcount <= i_load_unnamed_processfpga420_processfpga_out_unnamed_processFPGA420_avm_burstcount;

    -- redist8_sync_in_aunroll_x_in_i_valid_4(DELAY,179)
    redist8_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_sync_in_aunroll_x_in_i_valid_3_q, xout => redist8_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- redist9_sync_in_aunroll_x_in_i_valid_7(DELAY,180)
    redist9_sync_in_aunroll_x_in_i_valid_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_sync_in_aunroll_x_in_i_valid_4_q, xout => redist9_sync_in_aunroll_x_in_i_valid_7_q, clk => clock, aclr => resetn );

    -- redist10_sync_in_aunroll_x_in_i_valid_8(DELAY,181)
    redist10_sync_in_aunroll_x_in_i_valid_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist9_sync_in_aunroll_x_in_i_valid_7_q, xout => redist10_sync_in_aunroll_x_in_i_valid_8_q, clk => clock, aclr => resetn );

    -- redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_notEnable(LOGICAL,194)
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_nor(LOGICAL,195)
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_nor_q <= not (redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_notEnable_q or redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_sticky_ena_q);

    -- redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_last(CONSTANT,191)
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_last_q <= "011";

    -- redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_cmp(LOGICAL,192)
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_cmp_q <= "1" WHEN redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_last_q = redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_q ELSE "0";

    -- redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_cmpReg(REG,193)
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_cmpReg_q <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_cmp_q);
        END IF;
    END PROCESS;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_sticky_ena(REG,196)
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_nor_q = "1") THEN
                redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_sticky_ena_q <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_enaAnd(LOGICAL,197)
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_enaAnd_q <= redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_sticky_ena_q and VCC_q;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt(COUNTER,189)
    -- low=0, high=4, step=1, init=0
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_eq <= '1';
            ELSE
                redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_eq <= '0';
            END IF;
            IF (redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_eq = '1') THEN
                redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_i <= redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_i + 4;
            ELSE
                redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_i <= redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_i, 3)));

    -- i_acl_push_i32_acl_hw_wg_id825_push60_processfpga(BLACKBOX,70)@2
    -- out out_feedback_out_60@20000000
    -- out out_feedback_valid_out_60@20000000
    thei_acl_push_i32_acl_hw_wg_id825_push60_processfpga : i_acl_push_i32_acl_hw_wg_id825_push60_processfpga3150
    PORT MAP (
        in_data_in => redist3_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_1_q,
        in_feedback_stall_in_60 => i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_feedback_stall_out_60,
        in_stall_in => GND_q,
        in_unnamed_processFPGA461 => redist0_i_unnamed_processfpga3141_q_1_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_60 => i_acl_push_i32_acl_hw_wg_id825_push60_processfpga_out_feedback_out_60,
        out_feedback_valid_out_60 => i_acl_push_i32_acl_hw_wg_id825_push60_processfpga_out_feedback_valid_out_60,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga(BLACKBOX,66)@1
    -- out out_feedback_stall_out_60@20000000
    thei_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga : i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga3148
    PORT MAP (
        in_data_in => in_c0_eni21159_2,
        in_dir => in_c0_eni21159_1,
        in_feedback_in_60 => i_acl_push_i32_acl_hw_wg_id825_push60_processfpga_out_feedback_out_60,
        in_feedback_valid_in_60 => i_acl_push_i32_acl_hw_wg_id825_push60_processfpga_out_feedback_valid_out_60,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out,
        out_feedback_stall_out_60 => i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_feedback_stall_out_60,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_1(DELAY,174)
    redist3_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out, xout => redist3_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_inputreg(DELAY,187)
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_1_q, xout => redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_inputreg_q, clk => clock, aclr => resetn );

    -- redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_wraddr(REG,190)
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_wraddr_q <= "100";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_wraddr_q <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem(DUALMEM,188)
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_ia <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_inputreg_q);
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_aa <= redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_wraddr_q;
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_ab <= redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_rdcnt_q;
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_reset0 <= not (resetn);
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 5,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 5,
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
        clocken1 => redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_reset0,
        clock1 => clock,
        address_a => redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_aa,
        data_a => redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_ab,
        q_b => redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_iq
    );
    redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_q <= redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_iq(31 downto 0);

    -- redist1_i_unnamed_processfpga3141_q_8(DELAY,172)
    redist1_i_unnamed_processfpga3141_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_unnamed_processfpga3141_q_1_q, xout => redist1_i_unnamed_processfpga3141_q_8_q, clk => clock, aclr => resetn );

    -- i_clpcntype_processfpga_processfpga3137_c_i64_1gr_x(CONSTANT,43)
    i_clpcntype_processfpga_processfpga3137_c_i64_1gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000001";

    -- i_clpcntype_processfpga_processfpga3137_mult_x_im3_shift0(BITSHIFT,160)@6
    i_clpcntype_processfpga_processfpga3137_mult_x_im3_shift0_qint <= i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_c & "0";
    i_clpcntype_processfpga_processfpga3137_mult_x_im3_shift0_q <= i_clpcntype_processfpga_processfpga3137_mult_x_im3_shift0_qint(10 downto 0);

    -- i_ffwd_dst_conv35370_processfpga(BLACKBOX,78)@5
    thei_ffwd_dst_conv35370_processfpga : i_ffwd_dst_conv35370_processfpga3133
    PORT MAP (
        in_intel_reserved_ffwd_17_0 => in_intel_reserved_ffwd_17_0,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_4_q,
        out_dest_data_out_17_0 => i_ffwd_dst_conv35370_processfpga_out_dest_data_out_17_0,
        clock => clock,
        resetn => resetn
    );

    -- i_conv98_processfpga_sel_x(BITSELECT,46)@2
    i_conv98_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(redist5_i_acl_pop_i16_idx96_11371_pop59_processfpga_out_data_out_1_q(15 downto 0)), 32));

    -- i_conv98_processfpga_vt_select_15(BITSELECT,75)@2
    i_conv98_processfpga_vt_select_15_b <= i_conv98_processfpga_sel_x_b(15 downto 0);

    -- redist2_i_conv98_processfpga_vt_select_15_b_3(DELAY,173)
    redist2_i_conv98_processfpga_vt_select_15_b_3 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_conv98_processfpga_vt_select_15_b, xout => redist2_i_conv98_processfpga_vt_select_15_b_3_q, clk => clock, aclr => resetn );

    -- redist2_i_conv98_processfpga_vt_select_15_b_3_outputreg(DELAY,186)
    redist2_i_conv98_processfpga_vt_select_15_b_3_outputreg : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_i_conv98_processfpga_vt_select_15_b_3_q, xout => redist2_i_conv98_processfpga_vt_select_15_b_3_outputreg_q, clk => clock, aclr => resetn );

    -- i_conv98_processfpga_vt_join(BITJOIN,74)@5
    i_conv98_processfpga_vt_join_q <= c_i16_0gr_q & redist2_i_conv98_processfpga_vt_select_15_b_3_outputreg_q;

    -- i_add107_processfpga(ADD,71)@5
    i_add107_processfpga_a <= STD_LOGIC_VECTOR("0" & i_conv98_processfpga_vt_join_q);
    i_add107_processfpga_b <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_conv35370_processfpga_out_dest_data_out_17_0);
    i_add107_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add107_processfpga_a) + UNSIGNED(i_add107_processfpga_b));
    i_add107_processfpga_q <= i_add107_processfpga_o(32 downto 0);

    -- bgTrunc_i_add107_processfpga_sel_x(BITSELECT,2)@5
    bgTrunc_i_add107_processfpga_sel_x_b <= i_add107_processfpga_q(31 downto 0);

    -- redist14_bgTrunc_i_add107_processfpga_sel_x_b_1(DELAY,185)
    redist14_bgTrunc_i_add107_processfpga_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add107_processfpga_sel_x_b, xout => redist14_bgTrunc_i_add107_processfpga_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_idxprom108_processfpga_sel_x(BITSELECT,48)@6
    i_idxprom108_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist14_bgTrunc_i_add107_processfpga_sel_x_b_1_q(31 downto 0)), 64)));

    -- i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select(BITSELECT,169)@6
    i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_b <= i_idxprom108_processfpga_sel_x_b(17 downto 0);
    i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_c <= i_idxprom108_processfpga_sel_x_b(63 downto 54);
    i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_d <= i_idxprom108_processfpga_sel_x_b(35 downto 18);
    i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_e <= i_idxprom108_processfpga_sel_x_b(53 downto 36);

    -- i_clpcntype_processfpga_processfpga3137_mult_x_im3_add_1(ADD,161)@6 + 1
    i_clpcntype_processfpga_processfpga3137_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_c);
    i_clpcntype_processfpga_processfpga3137_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_clpcntype_processfpga_processfpga3137_mult_x_im3_shift0_q);
    i_clpcntype_processfpga_processfpga3137_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clpcntype_processfpga_processfpga3137_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clpcntype_processfpga_processfpga3137_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpcntype_processfpga_processfpga3137_mult_x_im3_add_1_a) + UNSIGNED(i_clpcntype_processfpga_processfpga3137_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_clpcntype_processfpga_processfpga3137_mult_x_im3_add_1_q <= i_clpcntype_processfpga_processfpga3137_mult_x_im3_add_1_o(11 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_mult_x_im3_shift2(BITSHIFT,162)@7
    i_clpcntype_processfpga_processfpga3137_mult_x_im3_shift2_qint <= i_clpcntype_processfpga_processfpga3137_mult_x_im3_add_1_q & "00";
    i_clpcntype_processfpga_processfpga3137_mult_x_im3_shift2_q <= i_clpcntype_processfpga_processfpga3137_mult_x_im3_shift2_qint(13 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_mult_x_align_15(BITSHIFT,136)@7
    i_clpcntype_processfpga_processfpga3137_mult_x_align_15_qint <= i_clpcntype_processfpga_processfpga3137_mult_x_im3_shift2_q & "00000000000000";
    i_clpcntype_processfpga_processfpga3137_mult_x_align_15_q <= i_clpcntype_processfpga_processfpga3137_mult_x_align_15_qint(27 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_mult_x_im6_shift0(BITSHIFT,163)@6
    i_clpcntype_processfpga_processfpga3137_mult_x_im6_shift0_qint <= i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_d & "0";
    i_clpcntype_processfpga_processfpga3137_mult_x_im6_shift0_q <= i_clpcntype_processfpga_processfpga3137_mult_x_im6_shift0_qint(18 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_mult_x_im6_add_1(ADD,164)@6 + 1
    i_clpcntype_processfpga_processfpga3137_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_d);
    i_clpcntype_processfpga_processfpga3137_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_clpcntype_processfpga_processfpga3137_mult_x_im6_shift0_q);
    i_clpcntype_processfpga_processfpga3137_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clpcntype_processfpga_processfpga3137_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clpcntype_processfpga_processfpga3137_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpcntype_processfpga_processfpga3137_mult_x_im6_add_1_a) + UNSIGNED(i_clpcntype_processfpga_processfpga3137_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_clpcntype_processfpga_processfpga3137_mult_x_im6_add_1_q <= i_clpcntype_processfpga_processfpga3137_mult_x_im6_add_1_o(19 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_mult_x_im6_shift2(BITSHIFT,165)@7
    i_clpcntype_processfpga_processfpga3137_mult_x_im6_shift2_qint <= i_clpcntype_processfpga_processfpga3137_mult_x_im6_add_1_q & "00";
    i_clpcntype_processfpga_processfpga3137_mult_x_im6_shift2_q <= i_clpcntype_processfpga_processfpga3137_mult_x_im6_shift2_qint(21 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_mult_x_align_14(BITSHIFT,135)@7
    i_clpcntype_processfpga_processfpga3137_mult_x_align_14_qint <= i_clpcntype_processfpga_processfpga3137_mult_x_im6_shift2_q & "000000000000000000";
    i_clpcntype_processfpga_processfpga3137_mult_x_align_14_q <= i_clpcntype_processfpga_processfpga3137_mult_x_align_14_qint(39 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_mult_x_join_16(BITJOIN,137)@7
    i_clpcntype_processfpga_processfpga3137_mult_x_join_16_q <= i_clpcntype_processfpga_processfpga3137_mult_x_align_15_q & i_clpcntype_processfpga_processfpga3137_mult_x_align_14_q;

    -- i_clpcntype_processfpga_processfpga3137_mult_x_im9_shift0(BITSHIFT,166)@6
    i_clpcntype_processfpga_processfpga3137_mult_x_im9_shift0_qint <= i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_e & "0";
    i_clpcntype_processfpga_processfpga3137_mult_x_im9_shift0_q <= i_clpcntype_processfpga_processfpga3137_mult_x_im9_shift0_qint(18 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_mult_x_im9_add_1(ADD,167)@6 + 1
    i_clpcntype_processfpga_processfpga3137_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_e);
    i_clpcntype_processfpga_processfpga3137_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_clpcntype_processfpga_processfpga3137_mult_x_im9_shift0_q);
    i_clpcntype_processfpga_processfpga3137_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clpcntype_processfpga_processfpga3137_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clpcntype_processfpga_processfpga3137_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpcntype_processfpga_processfpga3137_mult_x_im9_add_1_a) + UNSIGNED(i_clpcntype_processfpga_processfpga3137_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_clpcntype_processfpga_processfpga3137_mult_x_im9_add_1_q <= i_clpcntype_processfpga_processfpga3137_mult_x_im9_add_1_o(19 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_mult_x_im9_shift2(BITSHIFT,168)@7
    i_clpcntype_processfpga_processfpga3137_mult_x_im9_shift2_qint <= i_clpcntype_processfpga_processfpga3137_mult_x_im9_add_1_q & "00";
    i_clpcntype_processfpga_processfpga3137_mult_x_im9_shift2_q <= i_clpcntype_processfpga_processfpga3137_mult_x_im9_shift2_qint(21 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_mult_x_align_12(BITSHIFT,133)@7
    i_clpcntype_processfpga_processfpga3137_mult_x_align_12_qint <= i_clpcntype_processfpga_processfpga3137_mult_x_im9_shift2_q & "00000000000000";
    i_clpcntype_processfpga_processfpga3137_mult_x_align_12_q <= i_clpcntype_processfpga_processfpga3137_mult_x_align_12_qint(35 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_mult_x_im0_shift0(BITSHIFT,157)@6
    i_clpcntype_processfpga_processfpga3137_mult_x_im0_shift0_qint <= i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_b & "0";
    i_clpcntype_processfpga_processfpga3137_mult_x_im0_shift0_q <= i_clpcntype_processfpga_processfpga3137_mult_x_im0_shift0_qint(18 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_mult_x_im0_add_1(ADD,158)@6 + 1
    i_clpcntype_processfpga_processfpga3137_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_clpcntype_processfpga_processfpga3137_mult_x_bs1_merged_bit_select_b);
    i_clpcntype_processfpga_processfpga3137_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_clpcntype_processfpga_processfpga3137_mult_x_im0_shift0_q);
    i_clpcntype_processfpga_processfpga3137_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clpcntype_processfpga_processfpga3137_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clpcntype_processfpga_processfpga3137_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpcntype_processfpga_processfpga3137_mult_x_im0_add_1_a) + UNSIGNED(i_clpcntype_processfpga_processfpga3137_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_clpcntype_processfpga_processfpga3137_mult_x_im0_add_1_q <= i_clpcntype_processfpga_processfpga3137_mult_x_im0_add_1_o(19 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_mult_x_im0_shift2(BITSHIFT,159)@7
    i_clpcntype_processfpga_processfpga3137_mult_x_im0_shift2_qint <= i_clpcntype_processfpga_processfpga3137_mult_x_im0_add_1_q & "00";
    i_clpcntype_processfpga_processfpga3137_mult_x_im0_shift2_q <= i_clpcntype_processfpga_processfpga3137_mult_x_im0_shift2_qint(21 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_mult_x_join_13(BITJOIN,134)@7
    i_clpcntype_processfpga_processfpga3137_mult_x_join_13_q <= i_clpcntype_processfpga_processfpga3137_mult_x_align_12_q & i_clpcntype_processfpga_processfpga3137_mult_x_im0_shift2_q;

    -- i_clpcntype_processfpga_processfpga3137_mult_x_result_add_0_0(ADD,138)@7
    i_clpcntype_processfpga_processfpga3137_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_clpcntype_processfpga_processfpga3137_mult_x_join_13_q);
    i_clpcntype_processfpga_processfpga3137_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_clpcntype_processfpga_processfpga3137_mult_x_join_16_q);
    i_clpcntype_processfpga_processfpga3137_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpcntype_processfpga_processfpga3137_mult_x_result_add_0_0_a) + UNSIGNED(i_clpcntype_processfpga_processfpga3137_mult_x_result_add_0_0_b));
    i_clpcntype_processfpga_processfpga3137_mult_x_result_add_0_0_q <= i_clpcntype_processfpga_processfpga3137_mult_x_result_add_0_0_o(68 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_mult_extender_x(BITJOIN,38)@7
    i_clpcntype_processfpga_processfpga3137_mult_extender_x_q <= i_clcntype_processfpga_processfpga3127_mult_multconst_x_q & i_clpcntype_processfpga_processfpga3137_mult_x_result_add_0_0_q(67 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_trunc_sel_x(BITSELECT,40)@7
    i_clpcntype_processfpga_processfpga3137_trunc_sel_x_b <= i_clpcntype_processfpga_processfpga3137_mult_extender_x_q(63 downto 0);

    -- redist11_i_clpcntype_processfpga_processfpga3137_trunc_sel_x_b_1(DELAY,182)
    redist11_i_clpcntype_processfpga_processfpga3137_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clpcntype_processfpga_processfpga3137_trunc_sel_x_b, xout => redist11_i_clpcntype_processfpga_processfpga3137_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_conns_sync_buffer_processfpga(BLACKBOX,91)@0
    -- in in_i_dependence@8
    -- in in_valid_in@8
    -- out out_buffer_out@8
    -- out out_valid_out@8
    thei_syncbuf_conns_sync_buffer_processfpga : i_syncbuf_conns_sync_buffer_processfpga3135
    PORT MAP (
        in_buffer_in => in_conns,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_7_q,
        out_buffer_out => i_syncbuf_conns_sync_buffer_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_clpcntype_processfpga_processfpga3137_add_x(ADD,41)@8
    i_clpcntype_processfpga_processfpga3137_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_conns_sync_buffer_processfpga_out_buffer_out);
    i_clpcntype_processfpga_processfpga3137_add_x_b <= STD_LOGIC_VECTOR("0" & redist11_i_clpcntype_processfpga_processfpga3137_trunc_sel_x_b_1_q);
    i_clpcntype_processfpga_processfpga3137_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpcntype_processfpga_processfpga3137_add_x_a) + UNSIGNED(i_clpcntype_processfpga_processfpga3137_add_x_b));
    i_clpcntype_processfpga_processfpga3137_add_x_q <= i_clpcntype_processfpga_processfpga3137_add_x_o(64 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_dupName_0_trunc_sel_x(BITSELECT,32)@8
    i_clpcntype_processfpga_processfpga3137_dupName_0_trunc_sel_x_b <= i_clpcntype_processfpga_processfpga3137_add_x_q(63 downto 0);

    -- redist12_i_clpcntype_processfpga_processfpga3137_dupName_0_trunc_sel_x_b_1(DELAY,183)
    redist12_i_clpcntype_processfpga_processfpga3137_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clpcntype_processfpga_processfpga3137_dupName_0_trunc_sel_x_b, xout => redist12_i_clpcntype_processfpga_processfpga3137_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_clpcntype_processfpga_processfpga3137_dupName_0_add_x(ADD,35)@9
    i_clpcntype_processfpga_processfpga3137_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist12_i_clpcntype_processfpga_processfpga3137_dupName_0_trunc_sel_x_b_1_q);
    i_clpcntype_processfpga_processfpga3137_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_clpcntype_processfpga_processfpga3137_c_i64_1gr_x_q);
    i_clpcntype_processfpga_processfpga3137_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpcntype_processfpga_processfpga3137_dupName_0_add_x_a) + UNSIGNED(i_clpcntype_processfpga_processfpga3137_dupName_0_add_x_b));
    i_clpcntype_processfpga_processfpga3137_dupName_0_add_x_q <= i_clpcntype_processfpga_processfpga3137_dupName_0_add_x_o(64 downto 0);

    -- i_clpcntype_processfpga_processfpga3137_dupName_1_trunc_sel_x(BITSELECT,33)@9
    i_clpcntype_processfpga_processfpga3137_dupName_1_trunc_sel_x_b <= i_clpcntype_processfpga_processfpga3137_dupName_0_add_x_q(63 downto 0);

    -- i_unnamed_processfpga3132_vt_const_7(CONSTANT,94)
    i_unnamed_processfpga3132_vt_const_7_q <= "0000000";

    -- c_i8_1gr(CONSTANT,60)
    c_i8_1gr_q <= "00000001";

    -- i_unnamed_processfpga3132(LOGICAL,93)@9
    i_unnamed_processfpga3132_q <= i_load_unnamed_processfpga420_processfpga_out_o_readdata and c_i8_1gr_q;

    -- i_unnamed_processfpga3132_vt_select_0(BITSELECT,96)@9
    i_unnamed_processfpga3132_vt_select_0_b <= i_unnamed_processfpga3132_q(0 downto 0);

    -- i_unnamed_processfpga3132_vt_join(BITJOIN,95)@9
    i_unnamed_processfpga3132_vt_join_q <= i_unnamed_processfpga3132_vt_const_7_q & i_unnamed_processfpga3132_vt_select_0_b;

    -- sync_out_aunroll_x(GPOUT,50)@9
    out_c0_exi41166_0 <= GND_q;
    out_c0_exi41166_1 <= i_unnamed_processfpga3132_vt_join_q;
    out_c0_exi41166_2 <= i_clpcntype_processfpga_processfpga3137_dupName_1_trunc_sel_x_b;
    out_c0_exi41166_3 <= redist1_i_unnamed_processfpga3141_q_8_q;
    out_c0_exi41166_4 <= redist4_i_acl_pop_i32_acl_hw_wg_id825_pop60_processfpga_out_data_out_8_mem_q;
    out_o_valid <= redist10_sync_in_aunroll_x_in_i_valid_8_q;

    -- i_acl_push_i1_notexitcond764_processfpga(BLACKBOX,69)@1
    -- out out_feedback_out_52@20000000
    -- out out_feedback_valid_out_52@20000000
    thei_acl_push_i1_notexitcond764_processfpga : i_acl_push_i1_notexitcond764_processfpga3146
    PORT MAP (
        in_data_in => i_unnamed_processfpga3141_q,
        in_feedback_stall_in_52 => i_acl_pipeline_keep_going763_processfpga_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_52 => i_acl_push_i1_notexitcond764_processfpga_out_feedback_out_52,
        out_feedback_valid_out_52 => i_acl_push_i1_notexitcond764_processfpga_out_feedback_valid_out_52,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going763_processfpga(BLACKBOX,63)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going763_processfpga : i_acl_pipeline_keep_going763_processfpga3117
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond764_processfpga_out_feedback_out_52,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond764_processfpga_out_feedback_valid_out_52,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going763_processfpga_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going763_processfpga_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going763_processfpga_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going763_processfpga_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,62)
    out_aclp_to_limiter_i_acl_pipeline_keep_going763_processfpga_exiting_valid_out <= i_acl_pipeline_keep_going763_processfpga_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going763_processfpga_exiting_stall_out <= i_acl_pipeline_keep_going763_processfpga_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,101)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going763_processfpga_out_pipeline_valid_out;

END normal;
