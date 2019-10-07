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

-- VHDL created from i_sfc_logic_c0_for_body13_i_processfpga_c0_enter936_processfpga1059
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

entity i_sfc_logic_c0_for_body13_i_processfpga_c0_enter936_processfpga1059 is
    port (
        in_memdep_19_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_19_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_19_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_19_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA150_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA150_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA150_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA150_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA150_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_unnamed_processFPGA150_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_unnamed_processFPGA150_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_19_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_19_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_19_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_19_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_19_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_19_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_19_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2935_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2935_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2935_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_70_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_71_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi3941_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3941_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3941_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3941_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA150_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_unnamed_processFPGA150_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA150_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA150_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going680_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going680_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body13_i_processfpga_c0_enter936_processfpga1059;

architecture normal of i_sfc_logic_c0_for_body13_i_processfpga_c0_enter936_processfpga1059 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going680_processfpga1061 is
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


    component i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga1091 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_73 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_73 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_73 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_i_0_i11461289_pop72_processfpga1067 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_72 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_72 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_72 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i33_fpgaindvars_iv203_pop71_processfpga1065 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_71 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_feedback_valid_in_71 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_stall_out_71 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond681_processfpga1089 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_18 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_18 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_18 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_acl_hw_wg_id801_push73_processfpga1093 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_73 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit682 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_73 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_73 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_i_0_i11461289_push72_processfpga1085 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_72 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit682 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_72 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_72 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i33_fpgaindvars_iv203_push71_processfpga1087 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_feedback_stall_in_71 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit682 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_out_71 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_feedback_valid_out_71 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp11_i11471288459_processfpga1077 is
        port (
            in_intel_reserved_ffwd_70_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_70_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp11_i11471288466_processfpga1082 is
        port (
            in_intel_reserved_ffwd_70_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_70_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp11_i11471288467_processfpga1070 is
        port (
            in_intel_reserved_ffwd_70_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_70_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga149_processfpga1063 is
        port (
            in_intel_reserved_ffwd_71_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_71_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_processfpga150_processfpga1072 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA150_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_unnamed_processFPGA150_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA150_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA150_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA150_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA150_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA150_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_unnamed_processFPGA150_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA150_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA150_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA150_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_19_processfpga1079 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_memdep_19_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_19_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_19_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_19_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_19_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_19_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_19_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_19_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_19_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_19_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_19_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_localneurons_sync_buffer105_processfpga1074 is
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
    signal bgTrunc_i_fpgaindvars_iv_next204_processfpga_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal bgTrunc_i_inc20_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_multconst_x_q : STD_LOGIC_VECTOR (61 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_multconst_x_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_c_i64_4gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom15_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom17_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i33_undef_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i8_1gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pipeline_keep_going680_processfpga_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going680_processfpga_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going680_processfpga_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going680_processfpga_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_feedback_stall_out_73 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_i_0_i11461289_pop72_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_i_0_i11461289_pop72_processfpga_out_feedback_stall_out_72 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv203_pop71_processfpga_out_data_out : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv203_pop71_processfpga_out_feedback_stall_out_71 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond681_processfpga_out_feedback_out_18 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond681_processfpga_out_feedback_valid_out_18 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id801_push73_processfpga_out_feedback_out_73 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id801_push73_processfpga_out_feedback_valid_out_73 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_i_0_i11461289_push72_processfpga_out_feedback_out_72 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_i_0_i11461289_push72_processfpga_out_feedback_valid_out_72 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv203_push71_processfpga_out_feedback_out_71 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv203_push71_processfpga_out_feedback_valid_out_71 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx16_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_i_processfpga_vt_select_63_b : STD_LOGIC_VECTOR (62 downto 0);
    signal i_ffwd_dst_cmp11_i11471288459_processfpga_out_dest_data_out_70_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp11_i11471288466_processfpga_out_dest_data_out_70_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp11_i11471288467_processfpga_out_dest_data_out_70_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga149_processfpga_out_dest_data_out_71_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_fpgaindvars_iv203_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv203_replace_phi_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_fpgaindvars_iv_next204_processfpga_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next204_processfpga_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next204_processfpga_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next204_processfpga_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_idxprom17_i_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom17_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom17_i_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_inc20_i_processfpga_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc20_i_processfpga_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc20_i_processfpga_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc20_i_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_load_unnamed_processfpga150_processfpga_out_o_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_notexit682_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_19_processfpga_out_memdep_19_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_19_processfpga_out_memdep_19_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_19_processfpga_out_memdep_19_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_store_memdep_19_processfpga_out_memdep_19_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_19_processfpga_out_memdep_19_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_19_processfpga_out_memdep_19_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_19_processfpga_out_memdep_19_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_localneurons_sync_buffer105_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga1084_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_join_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_14_q : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_14_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_join_16_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_exitcond205_processfpga_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx16_i_processfpga_processfpga1069_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_unnamed_processfpga1084_q_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_notexit682_processfpga_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_notexit682_processfpga_q_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_acl_pop_i32_i_0_i11461289_pop72_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_aunroll_x_in_i_valid_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_aunroll_x_in_i_valid_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_sync_in_aunroll_x_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_clfired_i1148_processfpga_processfpga1076_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist11_i_clfired_i1148_processfpga_processfpga1076_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_reset0 : std_logic;
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_i : signal is true;
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_eq : std_logic;
    attribute preserve of redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_eq : signal is true;
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_sticky_ena_q : signal is true;
    signal redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist6_sync_in_aunroll_x_in_i_valid_1(DELAY,165)
    redist6_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist6_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_ffwd_dst_cmp11_i11471288467_processfpga(BLACKBOX,78)@2
    thei_ffwd_dst_cmp11_i11471288467_processfpga : i_ffwd_dst_cmp11_i11471288467_processfpga1070
    PORT MAP (
        in_intel_reserved_ffwd_70_0 => in_intel_reserved_ffwd_70_0,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_70_0 => i_ffwd_dst_cmp11_i11471288467_processfpga_out_dest_data_out_70_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx16_i_processfpga_processfpga1069_mult_multconst_x(CONSTANT,27)
    i_arrayidx16_i_processfpga_processfpga1069_mult_multconst_x_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_unnamed_processfpga149_processfpga(BLACKBOX,79)@1
    thei_ffwd_dst_unnamed_processfpga149_processfpga : i_ffwd_dst_unnamed_processfpga149_processfpga1063
    PORT MAP (
        in_intel_reserved_ffwd_71_0 => in_intel_reserved_ffwd_71_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_71_0 => i_ffwd_dst_unnamed_processfpga149_processfpga_out_dest_data_out_71_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_1gr(CONSTANT,59)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- i_fpgaindvars_iv_next204_processfpga(ADD,81)@1
    i_fpgaindvars_iv_next204_processfpga_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv203_replace_phi_processfpga_q);
    i_fpgaindvars_iv_next204_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_fpgaindvars_iv_next204_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next204_processfpga_a) + UNSIGNED(i_fpgaindvars_iv_next204_processfpga_b));
    i_fpgaindvars_iv_next204_processfpga_q <= i_fpgaindvars_iv_next204_processfpga_o(33 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next204_processfpga_sel_x(BITSELECT,2)@1
    bgTrunc_i_fpgaindvars_iv_next204_processfpga_sel_x_b <= i_fpgaindvars_iv_next204_processfpga_q(32 downto 0);

    -- i_acl_push_i33_fpgaindvars_iv203_push71_processfpga(BLACKBOX,71)@1
    -- out out_feedback_out_71@20000000
    -- out out_feedback_valid_out_71@20000000
    thei_acl_push_i33_fpgaindvars_iv203_push71_processfpga : i_acl_push_i33_fpgaindvars_iv203_push71_processfpga1087
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next204_processfpga_sel_x_b,
        in_feedback_stall_in_71 => i_acl_pop_i33_fpgaindvars_iv203_pop71_processfpga_out_feedback_stall_out_71,
        in_notexit682 => i_notexit682_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_71 => i_acl_push_i33_fpgaindvars_iv203_push71_processfpga_out_feedback_out_71,
        out_feedback_valid_out_71 => i_acl_push_i33_fpgaindvars_iv203_push71_processfpga_out_feedback_valid_out_71,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_undef(CONSTANT,60)
    c_i33_undef_q <= "000000000000000000000000000000000";

    -- i_acl_pop_i33_fpgaindvars_iv203_pop71_processfpga(BLACKBOX,67)@1
    -- out out_feedback_stall_out_71@20000000
    thei_acl_pop_i33_fpgaindvars_iv203_pop71_processfpga : i_acl_pop_i33_fpgaindvars_iv203_pop71_processfpga1065
    PORT MAP (
        in_data_in => c_i33_undef_q,
        in_dir => in_c0_eni2935_1,
        in_feedback_in_71 => i_acl_push_i33_fpgaindvars_iv203_push71_processfpga_out_feedback_out_71,
        in_feedback_valid_in_71 => i_acl_push_i33_fpgaindvars_iv203_push71_processfpga_out_feedback_valid_out_71,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i33_fpgaindvars_iv203_pop71_processfpga_out_data_out,
        out_feedback_stall_out_71 => i_acl_pop_i33_fpgaindvars_iv203_pop71_processfpga_out_feedback_stall_out_71,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv203_replace_phi_processfpga(MUX,80)@1
    i_fpgaindvars_iv203_replace_phi_processfpga_s <= in_c0_eni2935_1;
    i_fpgaindvars_iv203_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv203_replace_phi_processfpga_s, i_acl_pop_i33_fpgaindvars_iv203_pop71_processfpga_out_data_out, i_ffwd_dst_unnamed_processfpga149_processfpga_out_dest_data_out_71_0)
    BEGIN
        CASE (i_fpgaindvars_iv203_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv203_replace_phi_processfpga_q <= i_acl_pop_i33_fpgaindvars_iv203_pop71_processfpga_out_data_out;
            WHEN "1" => i_fpgaindvars_iv203_replace_phi_processfpga_q <= i_ffwd_dst_unnamed_processfpga149_processfpga_out_dest_data_out_71_0;
            WHEN OTHERS => i_fpgaindvars_iv203_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_exitcond205_processfpga_cmp_sign(LOGICAL,155)@1
    i_exitcond205_processfpga_cmp_sign_q <= STD_LOGIC_VECTOR(i_fpgaindvars_iv203_replace_phi_processfpga_q(32 downto 32));

    -- i_ffwd_dst_cmp11_i11471288466_processfpga(BLACKBOX,77)@1
    thei_ffwd_dst_cmp11_i11471288466_processfpga : i_ffwd_dst_cmp11_i11471288466_processfpga1082
    PORT MAP (
        in_intel_reserved_ffwd_70_0 => in_intel_reserved_ffwd_70_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_70_0 => i_ffwd_dst_cmp11_i11471288466_processfpga_out_dest_data_out_70_0,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_processfpga1084(LOGICAL,93)@1
    i_unnamed_processfpga1084_q <= i_ffwd_dst_cmp11_i11471288466_processfpga_out_dest_data_out_70_0 or i_exitcond205_processfpga_cmp_sign_q;

    -- i_notexit682_processfpga(LOGICAL,90)@1
    i_notexit682_processfpga_q <= i_unnamed_processfpga1084_q xor VCC_q;

    -- redist1_i_notexit682_processfpga_q_1(DELAY,160)
    redist1_i_notexit682_processfpga_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit682_processfpga_q, xout => redist1_i_notexit682_processfpga_q_1_q, clk => clock, aclr => resetn );

    -- c_i32_1gr(CONSTANT,57)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_inc20_i_processfpga(ADD,88)@2
    i_inc20_i_processfpga_a <= STD_LOGIC_VECTOR("0" & redist3_i_acl_pop_i32_i_0_i11461289_pop72_processfpga_out_data_out_1_q);
    i_inc20_i_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc20_i_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc20_i_processfpga_a) + UNSIGNED(i_inc20_i_processfpga_b));
    i_inc20_i_processfpga_q <= i_inc20_i_processfpga_o(32 downto 0);

    -- bgTrunc_i_inc20_i_processfpga_sel_x(BITSELECT,3)@2
    bgTrunc_i_inc20_i_processfpga_sel_x_b <= i_inc20_i_processfpga_q(31 downto 0);

    -- i_acl_push_i32_i_0_i11461289_push72_processfpga(BLACKBOX,70)@2
    -- out out_feedback_out_72@20000000
    -- out out_feedback_valid_out_72@20000000
    thei_acl_push_i32_i_0_i11461289_push72_processfpga : i_acl_push_i32_i_0_i11461289_push72_processfpga1085
    PORT MAP (
        in_data_in => bgTrunc_i_inc20_i_processfpga_sel_x_b,
        in_feedback_stall_in_72 => i_acl_pop_i32_i_0_i11461289_pop72_processfpga_out_feedback_stall_out_72,
        in_notexit682 => redist1_i_notexit682_processfpga_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_72 => i_acl_push_i32_i_0_i11461289_push72_processfpga_out_feedback_out_72,
        out_feedback_valid_out_72 => i_acl_push_i32_i_0_i11461289_push72_processfpga_out_feedback_valid_out_72,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,56)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_i_0_i11461289_pop72_processfpga(BLACKBOX,66)@1
    -- out out_feedback_stall_out_72@20000000
    thei_acl_pop_i32_i_0_i11461289_pop72_processfpga : i_acl_pop_i32_i_0_i11461289_pop72_processfpga1067
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c0_eni2935_1,
        in_feedback_in_72 => i_acl_push_i32_i_0_i11461289_push72_processfpga_out_feedback_out_72,
        in_feedback_valid_in_72 => i_acl_push_i32_i_0_i11461289_push72_processfpga_out_feedback_valid_out_72,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_i_0_i11461289_pop72_processfpga_out_data_out,
        out_feedback_stall_out_72 => i_acl_pop_i32_i_0_i11461289_pop72_processfpga_out_feedback_stall_out_72,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_acl_pop_i32_i_0_i11461289_pop72_processfpga_out_data_out_1(DELAY,162)
    redist3_i_acl_pop_i32_i_0_i11461289_pop72_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_i_0_i11461289_pop72_processfpga_out_data_out, xout => redist3_i_acl_pop_i32_i_0_i11461289_pop72_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_idxprom15_i_processfpga_sel_x(BITSELECT,47)@2
    i_idxprom15_i_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist3_i_acl_pop_i32_i_0_i11461289_pop72_processfpga_out_data_out_1_q(31 downto 0)), 64)));

    -- i_arrayidx16_i_processfpga_processfpga1069_mult_x_bs1_merged_bit_select(BITSELECT,157)@2
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_bs1_merged_bit_select_b <= i_idxprom15_i_processfpga_sel_x_b(17 downto 0);
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_bs1_merged_bit_select_c <= i_idxprom15_i_processfpga_sel_x_b(63 downto 54);
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_bs1_merged_bit_select_d <= i_idxprom15_i_processfpga_sel_x_b(35 downto 18);
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_bs1_merged_bit_select_e <= i_idxprom15_i_processfpga_sel_x_b(53 downto 36);

    -- i_arrayidx16_i_processfpga_processfpga1069_mult_x_im3_shift0(BITSHIFT,140)@2
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_im3_shift0_qint <= i_arrayidx16_i_processfpga_processfpga1069_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_im3_shift0_q <= i_arrayidx16_i_processfpga_processfpga1069_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_15(BITSHIFT,114)@2
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx16_i_processfpga_processfpga1069_mult_x_im3_shift0_q) & "0000000000000000";
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_15_q <= i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx16_i_processfpga_processfpga1069_mult_x_im6_shift0(BITSHIFT,141)@2
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_im6_shift0_qint <= i_arrayidx16_i_processfpga_processfpga1069_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_im6_shift0_q <= i_arrayidx16_i_processfpga_processfpga1069_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_14(BITSHIFT,113)@2
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx16_i_processfpga_processfpga1069_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_14_q <= i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_14_qint(37 downto 0);

    -- i_arrayidx16_i_processfpga_processfpga1069_mult_x_join_16(BITJOIN,115)@2
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_join_16_q <= i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_15_q & i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_14_q;

    -- i_arrayidx16_i_processfpga_processfpga1069_mult_x_im9_shift0(BITSHIFT,142)@2
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_im9_shift0_qint <= i_arrayidx16_i_processfpga_processfpga1069_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_im9_shift0_q <= i_arrayidx16_i_processfpga_processfpga1069_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_12(BITSHIFT,111)@2
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx16_i_processfpga_processfpga1069_mult_x_im9_shift0_q) & "0000000000000000";
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_12_q <= i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx16_i_processfpga_processfpga1069_mult_x_im0_shift0(BITSHIFT,139)@2
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_im0_shift0_qint <= i_arrayidx16_i_processfpga_processfpga1069_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_im0_shift0_q <= i_arrayidx16_i_processfpga_processfpga1069_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx16_i_processfpga_processfpga1069_mult_x_join_13(BITJOIN,112)@2
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_join_13_q <= i_arrayidx16_i_processfpga_processfpga1069_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx16_i_processfpga_processfpga1069_mult_x_im0_shift0_q);

    -- i_arrayidx16_i_processfpga_processfpga1069_mult_x_result_add_0_0(ADD,116)@2
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx16_i_processfpga_processfpga1069_mult_x_join_13_q);
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_i_processfpga_processfpga1069_mult_x_join_16_q);
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_i_processfpga_processfpga1069_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx16_i_processfpga_processfpga1069_mult_x_result_add_0_0_b));
    i_arrayidx16_i_processfpga_processfpga1069_mult_x_result_add_0_0_q <= i_arrayidx16_i_processfpga_processfpga1069_mult_x_result_add_0_0_o(66 downto 0);

    -- i_arrayidx16_i_processfpga_processfpga1069_mult_extender_x(BITJOIN,26)@2
    i_arrayidx16_i_processfpga_processfpga1069_mult_extender_x_q <= i_arrayidx16_i_processfpga_processfpga1069_mult_multconst_x_q & i_arrayidx16_i_processfpga_processfpga1069_mult_x_result_add_0_0_q(65 downto 0);

    -- i_arrayidx16_i_processfpga_processfpga1069_trunc_sel_x(BITSELECT,28)@2
    i_arrayidx16_i_processfpga_processfpga1069_trunc_sel_x_b <= i_arrayidx16_i_processfpga_processfpga1069_mult_extender_x_q(63 downto 0);

    -- i_arrayidx16_i_processfpga_processfpga1069_dupName_0_trunc_sel_x(BITSELECT,23)@2
    i_arrayidx16_i_processfpga_processfpga1069_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_arrayidx16_i_processfpga_processfpga1069_trunc_sel_x_b);
    i_arrayidx16_i_processfpga_processfpga1069_dupName_0_trunc_sel_x_b <= i_arrayidx16_i_processfpga_processfpga1069_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_arrayidx16_i_processfpga_vt_select_63(BITSELECT,74)@2
    i_arrayidx16_i_processfpga_vt_select_63_b <= i_arrayidx16_i_processfpga_processfpga1069_dupName_0_trunc_sel_x_b(63 downto 1);

    -- i_arrayidx16_i_processfpga_vt_join(BITJOIN,73)@2
    i_arrayidx16_i_processfpga_vt_join_q <= i_arrayidx16_i_processfpga_vt_select_63_b & GND_q;

    -- i_load_unnamed_processfpga150_processfpga(BLACKBOX,89)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata@6
    -- out out_o_stall@5
    -- out out_o_valid@6
    -- out out_unnamed_processFPGA150_avm_address@20000000
    -- out out_unnamed_processFPGA150_avm_burstcount@20000000
    -- out out_unnamed_processFPGA150_avm_byteenable@20000000
    -- out out_unnamed_processFPGA150_avm_enable@20000000
    -- out out_unnamed_processFPGA150_avm_read@20000000
    -- out out_unnamed_processFPGA150_avm_write@20000000
    -- out out_unnamed_processFPGA150_avm_writedata@20000000
    thei_load_unnamed_processfpga150_processfpga : i_load_unnamed_processfpga150_processfpga1072
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx16_i_processfpga_vt_join_q,
        in_i_predicate => i_ffwd_dst_cmp11_i11471288467_processfpga_out_dest_data_out_70_0,
        in_i_stall => GND_q,
        in_i_valid => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        in_unnamed_processFPGA150_avm_readdata => in_unnamed_processFPGA150_avm_readdata,
        in_unnamed_processFPGA150_avm_readdatavalid => in_unnamed_processFPGA150_avm_readdatavalid,
        in_unnamed_processFPGA150_avm_waitrequest => in_unnamed_processFPGA150_avm_waitrequest,
        in_unnamed_processFPGA150_avm_writeack => in_unnamed_processFPGA150_avm_writeack,
        out_o_readdata => i_load_unnamed_processfpga150_processfpga_out_o_readdata,
        out_unnamed_processFPGA150_avm_address => i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_address,
        out_unnamed_processFPGA150_avm_burstcount => i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_burstcount,
        out_unnamed_processFPGA150_avm_byteenable => i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_byteenable,
        out_unnamed_processFPGA150_avm_enable => i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_enable,
        out_unnamed_processFPGA150_avm_read => i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_read,
        out_unnamed_processFPGA150_avm_write => i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_write,
        out_unnamed_processFPGA150_avm_writedata => i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,6)
    out_unnamed_processFPGA150_avm_address <= i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_address;
    out_unnamed_processFPGA150_avm_enable <= i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_enable;
    out_unnamed_processFPGA150_avm_read <= i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_read;
    out_unnamed_processFPGA150_avm_write <= i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_write;
    out_unnamed_processFPGA150_avm_writedata <= i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_writedata;
    out_unnamed_processFPGA150_avm_byteenable <= i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_byteenable;
    out_unnamed_processFPGA150_avm_burstcount <= i_load_unnamed_processfpga150_processfpga_out_unnamed_processFPGA150_avm_burstcount;

    -- c_i8_1gr(CONSTANT,61)
    c_i8_1gr_q <= "00000001";

    -- redist7_sync_in_aunroll_x_in_i_valid_7(DELAY,166)
    redist7_sync_in_aunroll_x_in_i_valid_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_sync_in_aunroll_x_in_i_valid_1_q, xout => redist7_sync_in_aunroll_x_in_i_valid_7_q, clk => clock, aclr => resetn );

    -- redist8_sync_in_aunroll_x_in_i_valid_8(DELAY,167)
    redist8_sync_in_aunroll_x_in_i_valid_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_sync_in_aunroll_x_in_i_valid_7_q, xout => redist8_sync_in_aunroll_x_in_i_valid_8_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_cmp11_i11471288459_processfpga(BLACKBOX,76)@9
    thei_ffwd_dst_cmp11_i11471288459_processfpga : i_ffwd_dst_cmp11_i11471288459_processfpga1077
    PORT MAP (
        in_intel_reserved_ffwd_70_0 => in_intel_reserved_ffwd_70_0,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_8_q,
        out_dest_data_out_70_0 => i_ffwd_dst_cmp11_i11471288459_processfpga_out_dest_data_out_70_0,
        clock => clock,
        resetn => resetn
    );

    -- i_clfired_i1148_processfpga_processfpga1076_c_i64_4gr_x(CONSTANT,44)
    i_clfired_i1148_processfpga_processfpga1076_c_i64_4gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000100";

    -- i_clfired_i1148_processfpga_processfpga1076_mult_multconst_x(CONSTANT,40)
    i_clfired_i1148_processfpga_processfpga1076_mult_multconst_x_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_shift0(BITSHIFT,146)@6
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_shift0_qint <= i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_c & "0";
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_shift0_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_shift0_qint(10 downto 0);

    -- i_idxprom17_i_processfpga_vt_const_63(CONSTANT,85)
    i_idxprom17_i_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_idxprom17_i_processfpga_sel_x(BITSELECT,48)@6
    i_idxprom17_i_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(i_load_unnamed_processfpga150_processfpga_out_o_readdata(15 downto 0)), 64));

    -- i_idxprom17_i_processfpga_vt_select_15(BITSELECT,87)@6
    i_idxprom17_i_processfpga_vt_select_15_b <= i_idxprom17_i_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom17_i_processfpga_vt_join(BITJOIN,86)@6
    i_idxprom17_i_processfpga_vt_join_q <= i_idxprom17_i_processfpga_vt_const_63_q & i_idxprom17_i_processfpga_vt_select_15_b;

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select(BITSELECT,158)@6
    i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_b <= i_idxprom17_i_processfpga_vt_join_q(17 downto 0);
    i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_c <= i_idxprom17_i_processfpga_vt_join_q(63 downto 54);
    i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_d <= i_idxprom17_i_processfpga_vt_join_q(35 downto 18);
    i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_e <= i_idxprom17_i_processfpga_vt_join_q(53 downto 36);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_add_1(ADD,147)@6 + 1
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_c);
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_shift0_q);
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_add_1_a) + UNSIGNED(i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_add_1_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_add_1_o(11 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_shift2(BITSHIFT,148)@7
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_shift2_qint <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_add_1_q & "00";
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_shift2_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_shift2_qint(13 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_align_15(BITSHIFT,132)@7
    i_clfired_i1148_processfpga_processfpga1076_mult_x_align_15_qint <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im3_shift2_q & "00000000000000";
    i_clfired_i1148_processfpga_processfpga1076_mult_x_align_15_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_align_15_qint(27 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_shift0(BITSHIFT,149)@6
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_shift0_qint <= i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_d & "0";
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_shift0_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_shift0_qint(18 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_add_1(ADD,150)@6 + 1
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_d);
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_shift0_q);
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_add_1_a) + UNSIGNED(i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_add_1_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_add_1_o(19 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_shift2(BITSHIFT,151)@7
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_shift2_qint <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_add_1_q & "00";
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_shift2_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_shift2_qint(21 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_align_14(BITSHIFT,131)@7
    i_clfired_i1148_processfpga_processfpga1076_mult_x_align_14_qint <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im6_shift2_q & "000000000000000000";
    i_clfired_i1148_processfpga_processfpga1076_mult_x_align_14_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_align_14_qint(39 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_join_16(BITJOIN,133)@7
    i_clfired_i1148_processfpga_processfpga1076_mult_x_join_16_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_align_15_q & i_clfired_i1148_processfpga_processfpga1076_mult_x_align_14_q;

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_shift0(BITSHIFT,152)@6
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_shift0_qint <= i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_e & "0";
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_shift0_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_shift0_qint(18 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_add_1(ADD,153)@6 + 1
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_e);
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_shift0_q);
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_add_1_a) + UNSIGNED(i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_add_1_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_add_1_o(19 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_shift2(BITSHIFT,154)@7
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_shift2_qint <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_add_1_q & "00";
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_shift2_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_shift2_qint(21 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_align_12(BITSHIFT,129)@7
    i_clfired_i1148_processfpga_processfpga1076_mult_x_align_12_qint <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im9_shift2_q & "00000000000000";
    i_clfired_i1148_processfpga_processfpga1076_mult_x_align_12_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_align_12_qint(35 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_shift0(BITSHIFT,143)@6
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_shift0_qint <= i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_b & "0";
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_shift0_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_shift0_qint(18 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_add_1(ADD,144)@6 + 1
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_clfired_i1148_processfpga_processfpga1076_mult_x_bs1_merged_bit_select_b);
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_shift0_q);
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_add_1_a) + UNSIGNED(i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_add_1_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_add_1_o(19 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_shift2(BITSHIFT,145)@7
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_shift2_qint <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_add_1_q & "00";
    i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_shift2_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_shift2_qint(21 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_join_13(BITJOIN,130)@7
    i_clfired_i1148_processfpga_processfpga1076_mult_x_join_13_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_align_12_q & i_clfired_i1148_processfpga_processfpga1076_mult_x_im0_shift2_q;

    -- i_clfired_i1148_processfpga_processfpga1076_mult_x_result_add_0_0(ADD,134)@7
    i_clfired_i1148_processfpga_processfpga1076_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_clfired_i1148_processfpga_processfpga1076_mult_x_join_13_q);
    i_clfired_i1148_processfpga_processfpga1076_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_clfired_i1148_processfpga_processfpga1076_mult_x_join_16_q);
    i_clfired_i1148_processfpga_processfpga1076_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i1148_processfpga_processfpga1076_mult_x_result_add_0_0_a) + UNSIGNED(i_clfired_i1148_processfpga_processfpga1076_mult_x_result_add_0_0_b));
    i_clfired_i1148_processfpga_processfpga1076_mult_x_result_add_0_0_q <= i_clfired_i1148_processfpga_processfpga1076_mult_x_result_add_0_0_o(68 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_mult_extender_x(BITJOIN,39)@7
    i_clfired_i1148_processfpga_processfpga1076_mult_extender_x_q <= i_clfired_i1148_processfpga_processfpga1076_mult_multconst_x_q & i_clfired_i1148_processfpga_processfpga1076_mult_x_result_add_0_0_q(67 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_trunc_sel_x(BITSELECT,41)@7
    i_clfired_i1148_processfpga_processfpga1076_trunc_sel_x_b <= i_clfired_i1148_processfpga_processfpga1076_mult_extender_x_q(63 downto 0);

    -- redist10_i_clfired_i1148_processfpga_processfpga1076_trunc_sel_x_b_1(DELAY,169)
    redist10_i_clfired_i1148_processfpga_processfpga1076_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clfired_i1148_processfpga_processfpga1076_trunc_sel_x_b, xout => redist10_i_clfired_i1148_processfpga_processfpga1076_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer105_processfpga(BLACKBOX,92)@0
    -- in in_i_dependence@8
    -- in in_valid_in@8
    -- out out_buffer_out@8
    -- out out_valid_out@8
    thei_syncbuf_localneurons_sync_buffer105_processfpga : i_syncbuf_localneurons_sync_buffer105_processfpga1074
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_7_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer105_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_clfired_i1148_processfpga_processfpga1076_add_x(ADD,42)@8
    i_clfired_i1148_processfpga_processfpga1076_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer105_processfpga_out_buffer_out);
    i_clfired_i1148_processfpga_processfpga1076_add_x_b <= STD_LOGIC_VECTOR("0" & redist10_i_clfired_i1148_processfpga_processfpga1076_trunc_sel_x_b_1_q);
    i_clfired_i1148_processfpga_processfpga1076_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i1148_processfpga_processfpga1076_add_x_a) + UNSIGNED(i_clfired_i1148_processfpga_processfpga1076_add_x_b));
    i_clfired_i1148_processfpga_processfpga1076_add_x_q <= i_clfired_i1148_processfpga_processfpga1076_add_x_o(64 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_dupName_0_trunc_sel_x(BITSELECT,33)@8
    i_clfired_i1148_processfpga_processfpga1076_dupName_0_trunc_sel_x_b <= i_clfired_i1148_processfpga_processfpga1076_add_x_q(63 downto 0);

    -- redist11_i_clfired_i1148_processfpga_processfpga1076_dupName_0_trunc_sel_x_b_1(DELAY,170)
    redist11_i_clfired_i1148_processfpga_processfpga1076_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clfired_i1148_processfpga_processfpga1076_dupName_0_trunc_sel_x_b, xout => redist11_i_clfired_i1148_processfpga_processfpga1076_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_clfired_i1148_processfpga_processfpga1076_dupName_0_add_x(ADD,36)@9
    i_clfired_i1148_processfpga_processfpga1076_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist11_i_clfired_i1148_processfpga_processfpga1076_dupName_0_trunc_sel_x_b_1_q);
    i_clfired_i1148_processfpga_processfpga1076_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_clfired_i1148_processfpga_processfpga1076_c_i64_4gr_x_q);
    i_clfired_i1148_processfpga_processfpga1076_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i1148_processfpga_processfpga1076_dupName_0_add_x_a) + UNSIGNED(i_clfired_i1148_processfpga_processfpga1076_dupName_0_add_x_b));
    i_clfired_i1148_processfpga_processfpga1076_dupName_0_add_x_q <= i_clfired_i1148_processfpga_processfpga1076_dupName_0_add_x_o(64 downto 0);

    -- i_clfired_i1148_processfpga_processfpga1076_dupName_1_trunc_sel_x(BITSELECT,34)@9
    i_clfired_i1148_processfpga_processfpga1076_dupName_1_trunc_sel_x_b <= i_clfired_i1148_processfpga_processfpga1076_dupName_0_add_x_q(63 downto 0);

    -- i_store_memdep_19_processfpga(BLACKBOX,91)@9
    -- out out_memdep_19_avm_address@20000000
    -- out out_memdep_19_avm_burstcount@20000000
    -- out out_memdep_19_avm_byteenable@20000000
    -- out out_memdep_19_avm_enable@20000000
    -- out out_memdep_19_avm_read@20000000
    -- out out_memdep_19_avm_write@20000000
    -- out out_memdep_19_avm_writedata@20000000
    -- out out_o_stall@10
    -- out out_o_valid@10
    -- out out_o_writeack@10
    thei_store_memdep_19_processfpga : i_store_memdep_19_processfpga1079
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_clfired_i1148_processfpga_processfpga1076_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_cmp11_i11471288459_processfpga_out_dest_data_out_70_0,
        in_i_stall => GND_q,
        in_i_valid => redist8_sync_in_aunroll_x_in_i_valid_8_q,
        in_i_writedata => c_i8_1gr_q,
        in_memdep_19_avm_readdata => in_memdep_19_avm_readdata,
        in_memdep_19_avm_readdatavalid => in_memdep_19_avm_readdatavalid,
        in_memdep_19_avm_waitrequest => in_memdep_19_avm_waitrequest,
        in_memdep_19_avm_writeack => in_memdep_19_avm_writeack,
        out_memdep_19_avm_address => i_store_memdep_19_processfpga_out_memdep_19_avm_address,
        out_memdep_19_avm_burstcount => i_store_memdep_19_processfpga_out_memdep_19_avm_burstcount,
        out_memdep_19_avm_byteenable => i_store_memdep_19_processfpga_out_memdep_19_avm_byteenable,
        out_memdep_19_avm_enable => i_store_memdep_19_processfpga_out_memdep_19_avm_enable,
        out_memdep_19_avm_read => i_store_memdep_19_processfpga_out_memdep_19_avm_read,
        out_memdep_19_avm_write => i_store_memdep_19_processfpga_out_memdep_19_avm_write,
        out_memdep_19_avm_writedata => i_store_memdep_19_processfpga_out_memdep_19_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_1_ext_sig_sync_out_x(GPOUT,8)
    out_memdep_19_avm_address <= i_store_memdep_19_processfpga_out_memdep_19_avm_address;
    out_memdep_19_avm_enable <= i_store_memdep_19_processfpga_out_memdep_19_avm_enable;
    out_memdep_19_avm_read <= i_store_memdep_19_processfpga_out_memdep_19_avm_read;
    out_memdep_19_avm_write <= i_store_memdep_19_processfpga_out_memdep_19_avm_write;
    out_memdep_19_avm_writedata <= i_store_memdep_19_processfpga_out_memdep_19_avm_writedata;
    out_memdep_19_avm_byteenable <= i_store_memdep_19_processfpga_out_memdep_19_avm_byteenable;
    out_memdep_19_avm_burstcount <= i_store_memdep_19_processfpga_out_memdep_19_avm_burstcount;

    -- redist9_sync_in_aunroll_x_in_i_valid_9(DELAY,168)
    redist9_sync_in_aunroll_x_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_sync_in_aunroll_x_in_i_valid_8_q, xout => redist9_sync_in_aunroll_x_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_notEnable(LOGICAL,177)
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_nor(LOGICAL,178)
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_nor_q <= not (redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_notEnable_q or redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_sticky_ena_q);

    -- redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_last(CONSTANT,174)
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_last_q <= "0101";

    -- redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_cmp(LOGICAL,175)
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_cmp_b <= STD_LOGIC_VECTOR("0" & redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_q);
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_cmp_q <= "1" WHEN redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_last_q = redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_cmp_b ELSE "0";

    -- redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_cmpReg(REG,176)
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_cmpReg_q <= STD_LOGIC_VECTOR(redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_cmp_q);
        END IF;
    END PROCESS;

    -- redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_sticky_ena(REG,179)
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_nor_q = "1") THEN
                redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_sticky_ena_q <= STD_LOGIC_VECTOR(redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_enaAnd(LOGICAL,180)
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_enaAnd_q <= redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_sticky_ena_q and VCC_q;

    -- redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt(COUNTER,172)
    -- low=0, high=6, step=1, init=0
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_eq <= '1';
            ELSE
                redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_eq <= '0';
            END IF;
            IF (redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_eq = '1') THEN
                redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_i <= redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_i + 2;
            ELSE
                redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_i <= redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_i, 3)));

    -- i_acl_push_i32_acl_hw_wg_id801_push73_processfpga(BLACKBOX,69)@2
    -- out out_feedback_out_73@20000000
    -- out out_feedback_valid_out_73@20000000
    thei_acl_push_i32_acl_hw_wg_id801_push73_processfpga : i_acl_push_i32_acl_hw_wg_id801_push73_processfpga1093
    PORT MAP (
        in_data_in => redist4_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_1_q,
        in_feedback_stall_in_73 => i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_feedback_stall_out_73,
        in_notexit682 => redist1_i_notexit682_processfpga_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_73 => i_acl_push_i32_acl_hw_wg_id801_push73_processfpga_out_feedback_out_73,
        out_feedback_valid_out_73 => i_acl_push_i32_acl_hw_wg_id801_push73_processfpga_out_feedback_valid_out_73,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga(BLACKBOX,65)@1
    -- out out_feedback_stall_out_73@20000000
    thei_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga : i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga1091
    PORT MAP (
        in_data_in => in_c0_eni2935_2,
        in_dir => in_c0_eni2935_1,
        in_feedback_in_73 => i_acl_push_i32_acl_hw_wg_id801_push73_processfpga_out_feedback_out_73,
        in_feedback_valid_in_73 => i_acl_push_i32_acl_hw_wg_id801_push73_processfpga_out_feedback_valid_out_73,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out,
        out_feedback_stall_out_73 => i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_feedback_stall_out_73,
        clock => clock,
        resetn => resetn
    );

    -- redist4_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_1(DELAY,163)
    redist4_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out, xout => redist4_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_wraddr(REG,173)
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_wraddr_q <= "110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_wraddr_q <= STD_LOGIC_VECTOR(redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem(DUALMEM,171)
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_ia <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_1_q);
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_aa <= redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_wraddr_q;
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_ab <= redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_rdcnt_q;
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_reset0 <= not (resetn);
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_dmem : altera_syncram
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
        clocken1 => redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_reset0,
        clock1 => clock,
        address_a => redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_aa,
        data_a => redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_ab,
        q_b => redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_iq
    );
    redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_q <= redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_iq(31 downto 0);

    -- redist2_i_notexit682_processfpga_q_9(DELAY,161)
    redist2_i_notexit682_processfpga_q_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_i_notexit682_processfpga_q_1_q, xout => redist2_i_notexit682_processfpga_q_9_q, clk => clock, aclr => resetn );

    -- redist0_i_unnamed_processfpga1084_q_9(DELAY,159)
    redist0_i_unnamed_processfpga1084_q_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga1084_q, xout => redist0_i_unnamed_processfpga1084_q_9_q, clk => clock, aclr => resetn );

    -- sync_out_aunroll_x(GPOUT,50)@10
    out_c0_exi3941_0 <= GND_q;
    out_c0_exi3941_1 <= redist0_i_unnamed_processfpga1084_q_9_q;
    out_c0_exi3941_2 <= redist2_i_notexit682_processfpga_q_9_q;
    out_c0_exi3941_3 <= redist5_i_acl_pop_i32_acl_hw_wg_id801_pop73_processfpga_out_data_out_9_mem_q;
    out_o_valid <= redist9_sync_in_aunroll_x_in_i_valid_9_q;

    -- i_acl_push_i1_notexitcond681_processfpga(BLACKBOX,68)@1
    -- out out_feedback_out_18@20000000
    -- out out_feedback_valid_out_18@20000000
    thei_acl_push_i1_notexitcond681_processfpga : i_acl_push_i1_notexitcond681_processfpga1089
    PORT MAP (
        in_data_in => i_notexit682_processfpga_q,
        in_feedback_stall_in_18 => i_acl_pipeline_keep_going680_processfpga_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_18 => i_acl_push_i1_notexitcond681_processfpga_out_feedback_out_18,
        out_feedback_valid_out_18 => i_acl_push_i1_notexitcond681_processfpga_out_feedback_valid_out_18,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going680_processfpga(BLACKBOX,64)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going680_processfpga : i_acl_pipeline_keep_going680_processfpga1061
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond681_processfpga_out_feedback_out_18,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond681_processfpga_out_feedback_valid_out_18,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going680_processfpga_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going680_processfpga_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going680_processfpga_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going680_processfpga_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,63)
    out_aclp_to_limiter_i_acl_pipeline_keep_going680_processfpga_exiting_valid_out <= i_acl_pipeline_keep_going680_processfpga_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going680_processfpga_exiting_stall_out <= i_acl_pipeline_keep_going680_processfpga_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,97)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going680_processfpga_out_pipeline_valid_out;

END normal;
