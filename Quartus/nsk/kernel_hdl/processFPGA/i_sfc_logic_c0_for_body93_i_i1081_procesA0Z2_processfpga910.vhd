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

-- VHDL created from i_sfc_logic_c0_for_body93_i_i1081_processfpga_c0_enter922_processfpga910
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

entity i_sfc_logic_c0_for_body93_i_i1081_processfpga_c0_enter922_processfpga910 is
    port (
        in_memdep_15_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_15_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_15_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_15_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA126_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA126_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA126_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA126_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA126_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_unnamed_processFPGA126_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_unnamed_processFPGA126_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_15_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_15_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_15_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_15_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_15_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_15_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_15_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2921_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2921_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2921_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_60_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_63_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_64_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_65_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_localConn : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi3927_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3927_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3927_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi3927_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA126_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_unnamed_processFPGA126_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA126_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA126_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going676_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going676_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body93_i_i1081_processfpga_c0_enter922_processfpga910;

architecture normal of i_sfc_logic_c0_for_body93_i_i1081_processfpga_c0_enter922_processfpga910 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going676_processfpga912 is
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


    component i_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga944 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_112 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_112 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_112 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_usedconnscounter_6_i_i10721283_pop111_processfpga920 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_111 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_111 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_111 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i33_fpgaindvars_iv197_pop110_processfpga916 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_110 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_feedback_valid_in_110 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_stall_out_110 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond677_processfpga942 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_16 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_16 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_16 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_acl_hw_wg_id800_push112_processfpga946 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_112 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA446 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_112 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_112 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_usedconnscounter_6_i_i10721283_push111_processfpga938 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_111 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA446 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_111 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_111 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i33_fpgaindvars_iv197_push110_processfpga940 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_feedback_stall_in_110 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA446 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_out_110 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_feedback_valid_out_110 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_phi_decision1464_xor_or450_processfpga930 is
        port (
            in_intel_reserved_ffwd_64_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_64_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_phi_decision1464_xor_or451_processfpga923 is
        port (
            in_intel_reserved_ffwd_64_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_64_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_select1275447_processfpga918 is
        port (
            in_intel_reserved_ffwd_60_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_60_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga125_processfpga914 is
        port (
            in_intel_reserved_ffwd_65_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_65_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga127_processfpga935 is
        port (
            in_intel_reserved_ffwd_63_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_63_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_processfpga126_processfpga925 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA126_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_unnamed_processFPGA126_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA126_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA126_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA126_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA126_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA126_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_unnamed_processFPGA126_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA126_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA126_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA126_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_15_processfpga932 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_memdep_15_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_15_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_15_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_15_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_15_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_15_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_15_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_15_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_15_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_15_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_15_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_localconn_sync_buffer150_processfpga927 is
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
    signal bgTrunc_i_dec_i_i1080_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next198_processfpga_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_multconst_x_q : STD_LOGIC_VECTOR (61 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_multconst_x_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_idxprom94_i_i1075_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom96_i_i1077_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_undef_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i33_undef_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i8_1gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_pipeline_keep_going676_processfpga_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going676_processfpga_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going676_processfpga_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going676_processfpga_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga_out_feedback_stall_out_112 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_usedconnscounter_6_i_i10721283_pop111_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_usedconnscounter_6_i_i10721283_pop111_processfpga_out_feedback_stall_out_111 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv197_pop110_processfpga_out_data_out : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv197_pop110_processfpga_out_feedback_stall_out_110 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond677_processfpga_out_feedback_out_16 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond677_processfpga_out_feedback_valid_out_16 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id800_push112_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id800_push112_processfpga_out_feedback_out_112 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id800_push112_processfpga_out_feedback_valid_out_112 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_usedconnscounter_6_i_i10721283_push111_processfpga_out_feedback_out_111 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_usedconnscounter_6_i_i10721283_push111_processfpga_out_feedback_valid_out_111 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv197_push110_processfpga_out_feedback_out_110 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv197_push110_processfpga_out_feedback_valid_out_110 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_vt_select_63_b : STD_LOGIC_VECTOR (62 downto 0);
    signal i_dec_i_i1080_processfpga_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec_i_i1080_processfpga_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec_i_i1080_processfpga_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_dec_i_i1080_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_exitcond199_processfpga_a : STD_LOGIC_VECTOR (34 downto 0);
    signal i_exitcond199_processfpga_b : STD_LOGIC_VECTOR (34 downto 0);
    signal i_exitcond199_processfpga_o : STD_LOGIC_VECTOR (34 downto 0);
    signal i_exitcond199_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_phi_decision1464_xor_or450_processfpga_out_dest_data_out_64_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_phi_decision1464_xor_or451_processfpga_out_dest_data_out_64_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_select1275447_processfpga_out_dest_data_out_60_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_processfpga125_processfpga_out_dest_data_out_65_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_ffwd_dst_unnamed_processfpga127_processfpga_out_dest_data_out_63_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv197_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv197_replace_phi_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_fpgaindvars_iv_next198_processfpga_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next198_processfpga_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next198_processfpga_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next198_processfpga_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_idxprom96_i_i1077_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom96_i_i1077_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom96_i_i1077_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga126_processfpga_out_o_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_store_memdep_15_processfpga_out_memdep_15_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_15_processfpga_out_memdep_15_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_15_processfpga_out_memdep_15_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_store_memdep_15_processfpga_out_memdep_15_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_15_processfpga_out_memdep_15_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_15_processfpga_out_memdep_15_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_15_processfpga_out_memdep_15_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_localconn_sync_buffer150_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga937_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_usedconnscounter_6_i_i10721283_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_usedconnscounter_6_i_i10721283_replace_phi_processfpga_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_join_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_14_q : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_14_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_join_16_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_unnamed_processfpga937_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_unnamed_processfpga937_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_sync_in_aunroll_x_in_c0_eni2921_1_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sync_in_aunroll_x_in_i_valid_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_aunroll_x_in_i_valid_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_clcntype_i_i1079_processfpga_processfpga929_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_reset0 : std_logic;
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_i : signal is true;
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_eq : std_logic;
    attribute preserve of redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_eq : signal is true;
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_sticky_ena_q : signal is true;
    signal redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist5_sync_in_aunroll_x_in_i_valid_1(DELAY,159)
    redist5_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist5_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_ffwd_dst_phi_decision1464_xor_or451_processfpga(BLACKBOX,74)@2
    thei_ffwd_dst_phi_decision1464_xor_or451_processfpga : i_ffwd_dst_phi_decision1464_xor_or451_processfpga923
    PORT MAP (
        in_intel_reserved_ffwd_64_0 => in_intel_reserved_ffwd_64_0,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_64_0 => i_ffwd_dst_phi_decision1464_xor_or451_processfpga_out_dest_data_out_64_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx95_i_i1076_processfpga_processfpga922_mult_multconst_x(CONSTANT,28)
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_multconst_x_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_select1275447_processfpga(BLACKBOX,75)@1
    thei_ffwd_dst_select1275447_processfpga : i_ffwd_dst_select1275447_processfpga918
    PORT MAP (
        in_intel_reserved_ffwd_60_0 => in_intel_reserved_ffwd_60_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_60_0 => i_ffwd_dst_select1275447_processfpga_out_dest_data_out_60_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga125_processfpga(BLACKBOX,76)@1
    thei_ffwd_dst_unnamed_processfpga125_processfpga : i_ffwd_dst_unnamed_processfpga125_processfpga914
    PORT MAP (
        in_intel_reserved_ffwd_65_0 => in_intel_reserved_ffwd_65_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_65_0 => i_ffwd_dst_unnamed_processfpga125_processfpga_out_dest_data_out_65_0,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv_next198_processfpga(ADD,79)@1
    i_fpgaindvars_iv_next198_processfpga_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv197_replace_phi_processfpga_q);
    i_fpgaindvars_iv_next198_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_fpgaindvars_iv_next198_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next198_processfpga_a) + UNSIGNED(i_fpgaindvars_iv_next198_processfpga_b));
    i_fpgaindvars_iv_next198_processfpga_q <= i_fpgaindvars_iv_next198_processfpga_o(33 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next198_processfpga_sel_x(BITSELECT,3)@1
    bgTrunc_i_fpgaindvars_iv_next198_processfpga_sel_x_b <= i_fpgaindvars_iv_next198_processfpga_q(32 downto 0);

    -- i_acl_push_i33_fpgaindvars_iv197_push110_processfpga(BLACKBOX,67)@1
    -- out out_feedback_out_110@20000000
    -- out out_feedback_valid_out_110@20000000
    thei_acl_push_i33_fpgaindvars_iv197_push110_processfpga : i_acl_push_i33_fpgaindvars_iv197_push110_processfpga940
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next198_processfpga_sel_x_b,
        in_feedback_stall_in_110 => i_acl_pop_i33_fpgaindvars_iv197_pop110_processfpga_out_feedback_stall_out_110,
        in_stall_in => GND_q,
        in_unnamed_processFPGA446 => i_unnamed_processfpga937_q,
        in_valid_in => in_i_valid,
        out_feedback_out_110 => i_acl_push_i33_fpgaindvars_iv197_push110_processfpga_out_feedback_out_110,
        out_feedback_valid_out_110 => i_acl_push_i33_fpgaindvars_iv197_push110_processfpga_out_feedback_valid_out_110,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_undef(CONSTANT,56)
    c_i33_undef_q <= "000000000000000000000000000000000";

    -- i_acl_pop_i33_fpgaindvars_iv197_pop110_processfpga(BLACKBOX,63)@1
    -- out out_feedback_stall_out_110@20000000
    thei_acl_pop_i33_fpgaindvars_iv197_pop110_processfpga : i_acl_pop_i33_fpgaindvars_iv197_pop110_processfpga916
    PORT MAP (
        in_data_in => c_i33_undef_q,
        in_dir => in_c0_eni2921_1,
        in_feedback_in_110 => i_acl_push_i33_fpgaindvars_iv197_push110_processfpga_out_feedback_out_110,
        in_feedback_valid_in_110 => i_acl_push_i33_fpgaindvars_iv197_push110_processfpga_out_feedback_valid_out_110,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i33_fpgaindvars_iv197_pop110_processfpga_out_data_out,
        out_feedback_stall_out_110 => i_acl_pop_i33_fpgaindvars_iv197_pop110_processfpga_out_feedback_stall_out_110,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv197_replace_phi_processfpga(MUX,78)@1
    i_fpgaindvars_iv197_replace_phi_processfpga_s <= in_c0_eni2921_1;
    i_fpgaindvars_iv197_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv197_replace_phi_processfpga_s, i_acl_pop_i33_fpgaindvars_iv197_pop110_processfpga_out_data_out, i_ffwd_dst_unnamed_processfpga125_processfpga_out_dest_data_out_65_0)
    BEGIN
        CASE (i_fpgaindvars_iv197_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv197_replace_phi_processfpga_q <= i_acl_pop_i33_fpgaindvars_iv197_pop110_processfpga_out_data_out;
            WHEN "1" => i_fpgaindvars_iv197_replace_phi_processfpga_q <= i_ffwd_dst_unnamed_processfpga125_processfpga_out_dest_data_out_65_0;
            WHEN OTHERS => i_fpgaindvars_iv197_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i33_1gr(CONSTANT,55)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- i_exitcond199_processfpga(COMPARE,72)@1
    i_exitcond199_processfpga_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => c_i33_1gr_q(32)) & c_i33_1gr_q));
    i_exitcond199_processfpga_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => i_fpgaindvars_iv197_replace_phi_processfpga_q(32)) & i_fpgaindvars_iv197_replace_phi_processfpga_q));
    i_exitcond199_processfpga_o <= STD_LOGIC_VECTOR(SIGNED(i_exitcond199_processfpga_a) - SIGNED(i_exitcond199_processfpga_b));
    i_exitcond199_processfpga_c(0) <= i_exitcond199_processfpga_o(34);

    -- i_ffwd_dst_unnamed_processfpga127_processfpga(BLACKBOX,77)@1
    thei_ffwd_dst_unnamed_processfpga127_processfpga : i_ffwd_dst_unnamed_processfpga127_processfpga935
    PORT MAP (
        in_intel_reserved_ffwd_63_0 => in_intel_reserved_ffwd_63_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_63_0 => i_ffwd_dst_unnamed_processfpga127_processfpga_out_dest_data_out_63_0,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_processfpga937(LOGICAL,89)@1
    i_unnamed_processfpga937_q <= i_ffwd_dst_unnamed_processfpga127_processfpga_out_dest_data_out_63_0 and i_exitcond199_processfpga_c;

    -- redist0_i_unnamed_processfpga937_q_1(DELAY,154)
    redist0_i_unnamed_processfpga937_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga937_q, xout => redist0_i_unnamed_processfpga937_q_1_q, clk => clock, aclr => resetn );

    -- c_i32_1gr(CONSTANT,53)
    c_i32_1gr_q <= "11111111111111111111111111111111";

    -- i_dec_i_i1080_processfpga(ADD,71)@2
    i_dec_i_i1080_processfpga_a <= STD_LOGIC_VECTOR("0" & i_usedconnscounter_6_i_i10721283_replace_phi_processfpga_q);
    i_dec_i_i1080_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_dec_i_i1080_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_dec_i_i1080_processfpga_a) + UNSIGNED(i_dec_i_i1080_processfpga_b));
    i_dec_i_i1080_processfpga_q <= i_dec_i_i1080_processfpga_o(32 downto 0);

    -- bgTrunc_i_dec_i_i1080_processfpga_sel_x(BITSELECT,2)@2
    bgTrunc_i_dec_i_i1080_processfpga_sel_x_b <= i_dec_i_i1080_processfpga_q(31 downto 0);

    -- i_acl_push_i32_usedconnscounter_6_i_i10721283_push111_processfpga(BLACKBOX,66)@2
    -- out out_feedback_out_111@20000000
    -- out out_feedback_valid_out_111@20000000
    thei_acl_push_i32_usedconnscounter_6_i_i10721283_push111_processfpga : i_acl_push_i32_usedconnscounter_6_i_i10721283_push111_processfpga938
    PORT MAP (
        in_data_in => bgTrunc_i_dec_i_i1080_processfpga_sel_x_b,
        in_feedback_stall_in_111 => i_acl_pop_i32_usedconnscounter_6_i_i10721283_pop111_processfpga_out_feedback_stall_out_111,
        in_stall_in => GND_q,
        in_unnamed_processFPGA446 => redist0_i_unnamed_processfpga937_q_1_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_111 => i_acl_push_i32_usedconnscounter_6_i_i10721283_push111_processfpga_out_feedback_out_111,
        out_feedback_valid_out_111 => i_acl_push_i32_usedconnscounter_6_i_i10721283_push111_processfpga_out_feedback_valid_out_111,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_undef(CONSTANT,54)
    c_i32_undef_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_usedconnscounter_6_i_i10721283_pop111_processfpga(BLACKBOX,62)@1
    -- out out_feedback_stall_out_111@20000000
    thei_acl_pop_i32_usedconnscounter_6_i_i10721283_pop111_processfpga : i_acl_pop_i32_usedconnscounter_6_i_i10721283_pop111_processfpga920
    PORT MAP (
        in_data_in => c_i32_undef_q,
        in_dir => in_c0_eni2921_1,
        in_feedback_in_111 => i_acl_push_i32_usedconnscounter_6_i_i10721283_push111_processfpga_out_feedback_out_111,
        in_feedback_valid_in_111 => i_acl_push_i32_usedconnscounter_6_i_i10721283_push111_processfpga_out_feedback_valid_out_111,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_usedconnscounter_6_i_i10721283_pop111_processfpga_out_data_out,
        out_feedback_stall_out_111 => i_acl_pop_i32_usedconnscounter_6_i_i10721283_pop111_processfpga_out_feedback_stall_out_111,
        clock => clock,
        resetn => resetn
    );

    -- i_usedconnscounter_6_i_i10721283_replace_phi_processfpga(MUX,90)@1 + 1
    i_usedconnscounter_6_i_i10721283_replace_phi_processfpga_s <= in_c0_eni2921_1;
    i_usedconnscounter_6_i_i10721283_replace_phi_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_usedconnscounter_6_i_i10721283_replace_phi_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_usedconnscounter_6_i_i10721283_replace_phi_processfpga_s) IS
                WHEN "0" => i_usedconnscounter_6_i_i10721283_replace_phi_processfpga_q <= i_acl_pop_i32_usedconnscounter_6_i_i10721283_pop111_processfpga_out_data_out;
                WHEN "1" => i_usedconnscounter_6_i_i10721283_replace_phi_processfpga_q <= i_ffwd_dst_select1275447_processfpga_out_dest_data_out_60_0;
                WHEN OTHERS => i_usedconnscounter_6_i_i10721283_replace_phi_processfpga_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_idxprom94_i_i1075_processfpga_sel_x(BITSELECT,44)@2
    i_idxprom94_i_i1075_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(i_usedconnscounter_6_i_i10721283_replace_phi_processfpga_q(31 downto 0)), 64)));

    -- i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_bs1_merged_bit_select(BITSELECT,152)@2
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_bs1_merged_bit_select_b <= i_idxprom94_i_i1075_processfpga_sel_x_b(17 downto 0);
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_bs1_merged_bit_select_c <= i_idxprom94_i_i1075_processfpga_sel_x_b(63 downto 54);
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_bs1_merged_bit_select_d <= i_idxprom94_i_i1075_processfpga_sel_x_b(35 downto 18);
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_bs1_merged_bit_select_e <= i_idxprom94_i_i1075_processfpga_sel_x_b(53 downto 36);

    -- i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im3_shift0(BITSHIFT,137)@2
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im3_shift0_qint <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im3_shift0_q <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_15(BITSHIFT,111)@2
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im3_shift0_q) & "0000000000000000";
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_15_q <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im6_shift0(BITSHIFT,138)@2
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im6_shift0_qint <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im6_shift0_q <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_14(BITSHIFT,110)@2
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_14_q <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_14_qint(37 downto 0);

    -- i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_join_16(BITJOIN,112)@2
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_join_16_q <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_15_q & i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_14_q;

    -- i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im9_shift0(BITSHIFT,139)@2
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im9_shift0_qint <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im9_shift0_q <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_12(BITSHIFT,108)@2
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im9_shift0_q) & "0000000000000000";
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_12_q <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im0_shift0(BITSHIFT,136)@2
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im0_shift0_qint <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im0_shift0_q <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_join_13(BITJOIN,109)@2
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_join_13_q <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_im0_shift0_q);

    -- i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_result_add_0_0(ADD,113)@2
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_join_13_q);
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_join_16_q);
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_result_add_0_0_b));
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_result_add_0_0_q <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_result_add_0_0_o(66 downto 0);

    -- i_arrayidx95_i_i1076_processfpga_processfpga922_mult_extender_x(BITJOIN,27)@2
    i_arrayidx95_i_i1076_processfpga_processfpga922_mult_extender_x_q <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_multconst_x_q & i_arrayidx95_i_i1076_processfpga_processfpga922_mult_x_result_add_0_0_q(65 downto 0);

    -- i_arrayidx95_i_i1076_processfpga_processfpga922_trunc_sel_x(BITSELECT,29)@2
    i_arrayidx95_i_i1076_processfpga_processfpga922_trunc_sel_x_b <= i_arrayidx95_i_i1076_processfpga_processfpga922_mult_extender_x_q(63 downto 0);

    -- i_arrayidx95_i_i1076_processfpga_processfpga922_dupName_0_trunc_sel_x(BITSELECT,24)@2
    i_arrayidx95_i_i1076_processfpga_processfpga922_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_arrayidx95_i_i1076_processfpga_processfpga922_trunc_sel_x_b);
    i_arrayidx95_i_i1076_processfpga_processfpga922_dupName_0_trunc_sel_x_b <= i_arrayidx95_i_i1076_processfpga_processfpga922_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_arrayidx95_i_i1076_processfpga_vt_select_63(BITSELECT,70)@2
    i_arrayidx95_i_i1076_processfpga_vt_select_63_b <= i_arrayidx95_i_i1076_processfpga_processfpga922_dupName_0_trunc_sel_x_b(63 downto 1);

    -- i_arrayidx95_i_i1076_processfpga_vt_join(BITJOIN,69)@2
    i_arrayidx95_i_i1076_processfpga_vt_join_q <= i_arrayidx95_i_i1076_processfpga_vt_select_63_b & GND_q;

    -- i_load_unnamed_processfpga126_processfpga(BLACKBOX,86)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata@6
    -- out out_o_stall@5
    -- out out_o_valid@6
    -- out out_unnamed_processFPGA126_avm_address@20000000
    -- out out_unnamed_processFPGA126_avm_burstcount@20000000
    -- out out_unnamed_processFPGA126_avm_byteenable@20000000
    -- out out_unnamed_processFPGA126_avm_enable@20000000
    -- out out_unnamed_processFPGA126_avm_read@20000000
    -- out out_unnamed_processFPGA126_avm_write@20000000
    -- out out_unnamed_processFPGA126_avm_writedata@20000000
    thei_load_unnamed_processfpga126_processfpga : i_load_unnamed_processfpga126_processfpga925
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx95_i_i1076_processfpga_vt_join_q,
        in_i_predicate => i_ffwd_dst_phi_decision1464_xor_or451_processfpga_out_dest_data_out_64_0,
        in_i_stall => GND_q,
        in_i_valid => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        in_unnamed_processFPGA126_avm_readdata => in_unnamed_processFPGA126_avm_readdata,
        in_unnamed_processFPGA126_avm_readdatavalid => in_unnamed_processFPGA126_avm_readdatavalid,
        in_unnamed_processFPGA126_avm_waitrequest => in_unnamed_processFPGA126_avm_waitrequest,
        in_unnamed_processFPGA126_avm_writeack => in_unnamed_processFPGA126_avm_writeack,
        out_o_readdata => i_load_unnamed_processfpga126_processfpga_out_o_readdata,
        out_unnamed_processFPGA126_avm_address => i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_address,
        out_unnamed_processFPGA126_avm_burstcount => i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_burstcount,
        out_unnamed_processFPGA126_avm_byteenable => i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_byteenable,
        out_unnamed_processFPGA126_avm_enable => i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_enable,
        out_unnamed_processFPGA126_avm_read => i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_read,
        out_unnamed_processFPGA126_avm_write => i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_write,
        out_unnamed_processFPGA126_avm_writedata => i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,6)
    out_unnamed_processFPGA126_avm_address <= i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_address;
    out_unnamed_processFPGA126_avm_enable <= i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_enable;
    out_unnamed_processFPGA126_avm_read <= i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_read;
    out_unnamed_processFPGA126_avm_write <= i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_write;
    out_unnamed_processFPGA126_avm_writedata <= i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_writedata;
    out_unnamed_processFPGA126_avm_byteenable <= i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_byteenable;
    out_unnamed_processFPGA126_avm_burstcount <= i_load_unnamed_processfpga126_processfpga_out_unnamed_processFPGA126_avm_burstcount;

    -- c_i8_1gr(CONSTANT,57)
    c_i8_1gr_q <= "00000001";

    -- redist6_sync_in_aunroll_x_in_i_valid_7(DELAY,160)
    redist6_sync_in_aunroll_x_in_i_valid_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_sync_in_aunroll_x_in_i_valid_1_q, xout => redist6_sync_in_aunroll_x_in_i_valid_7_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_phi_decision1464_xor_or450_processfpga(BLACKBOX,73)@8
    thei_ffwd_dst_phi_decision1464_xor_or450_processfpga : i_ffwd_dst_phi_decision1464_xor_or450_processfpga930
    PORT MAP (
        in_intel_reserved_ffwd_64_0 => in_intel_reserved_ffwd_64_0,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_7_q,
        out_dest_data_out_64_0 => i_ffwd_dst_phi_decision1464_xor_or450_processfpga_out_dest_data_out_64_0,
        clock => clock,
        resetn => resetn
    );

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_multconst_x(CONSTANT,38)
    i_clcntype_i_i1079_processfpga_processfpga929_mult_multconst_x_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_shift0(BITSHIFT,143)@6
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_shift0_qint <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_c & "0";
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_shift0_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_shift0_qint(10 downto 0);

    -- i_idxprom96_i_i1077_processfpga_vt_const_63(CONSTANT,83)
    i_idxprom96_i_i1077_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_idxprom96_i_i1077_processfpga_sel_x(BITSELECT,45)@6
    i_idxprom96_i_i1077_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(i_load_unnamed_processfpga126_processfpga_out_o_readdata(15 downto 0)), 64));

    -- i_idxprom96_i_i1077_processfpga_vt_select_15(BITSELECT,85)@6
    i_idxprom96_i_i1077_processfpga_vt_select_15_b <= i_idxprom96_i_i1077_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom96_i_i1077_processfpga_vt_join(BITJOIN,84)@6
    i_idxprom96_i_i1077_processfpga_vt_join_q <= i_idxprom96_i_i1077_processfpga_vt_const_63_q & i_idxprom96_i_i1077_processfpga_vt_select_15_b;

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select(BITSELECT,153)@6
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_b <= i_idxprom96_i_i1077_processfpga_vt_join_q(17 downto 0);
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_c <= i_idxprom96_i_i1077_processfpga_vt_join_q(63 downto 54);
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_d <= i_idxprom96_i_i1077_processfpga_vt_join_q(35 downto 18);
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_e <= i_idxprom96_i_i1077_processfpga_vt_join_q(53 downto 36);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_add_1(ADD,144)@6 + 1
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_c);
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_shift0_q);
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_add_1_a) + UNSIGNED(i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_add_1_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_add_1_o(11 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_shift2(BITSHIFT,145)@7
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_shift2_qint <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_add_1_q & "00";
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_shift2_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_shift2_qint(13 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_15(BITSHIFT,129)@7
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_15_qint <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im3_shift2_q & "00000000000000";
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_15_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_15_qint(27 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_shift0(BITSHIFT,146)@6
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_shift0_qint <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_d & "0";
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_shift0_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_shift0_qint(18 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_add_1(ADD,147)@6 + 1
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_d);
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_shift0_q);
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_add_1_a) + UNSIGNED(i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_add_1_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_add_1_o(19 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_shift2(BITSHIFT,148)@7
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_shift2_qint <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_add_1_q & "00";
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_shift2_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_shift2_qint(21 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_14(BITSHIFT,128)@7
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_14_qint <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im6_shift2_q & "000000000000000000";
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_14_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_14_qint(39 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_join_16(BITJOIN,130)@7
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_join_16_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_15_q & i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_14_q;

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_shift0(BITSHIFT,149)@6
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_shift0_qint <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_e & "0";
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_shift0_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_shift0_qint(18 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_add_1(ADD,150)@6 + 1
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_e);
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_shift0_q);
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_add_1_a) + UNSIGNED(i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_add_1_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_add_1_o(19 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_shift2(BITSHIFT,151)@7
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_shift2_qint <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_add_1_q & "00";
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_shift2_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_shift2_qint(21 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_12(BITSHIFT,126)@7
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_12_qint <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im9_shift2_q & "00000000000000";
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_12_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_12_qint(35 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_shift0(BITSHIFT,140)@6
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_shift0_qint <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_b & "0";
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_shift0_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_shift0_qint(18 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_add_1(ADD,141)@6 + 1
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_clcntype_i_i1079_processfpga_processfpga929_mult_x_bs1_merged_bit_select_b);
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_shift0_q);
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_add_1_a) + UNSIGNED(i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_add_1_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_add_1_o(19 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_shift2(BITSHIFT,142)@7
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_shift2_qint <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_add_1_q & "00";
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_shift2_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_shift2_qint(21 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_join_13(BITJOIN,127)@7
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_join_13_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_align_12_q & i_clcntype_i_i1079_processfpga_processfpga929_mult_x_im0_shift2_q;

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_x_result_add_0_0(ADD,131)@7
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_clcntype_i_i1079_processfpga_processfpga929_mult_x_join_13_q);
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_clcntype_i_i1079_processfpga_processfpga929_mult_x_join_16_q);
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clcntype_i_i1079_processfpga_processfpga929_mult_x_result_add_0_0_a) + UNSIGNED(i_clcntype_i_i1079_processfpga_processfpga929_mult_x_result_add_0_0_b));
    i_clcntype_i_i1079_processfpga_processfpga929_mult_x_result_add_0_0_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_x_result_add_0_0_o(68 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_mult_extender_x(BITJOIN,37)@7
    i_clcntype_i_i1079_processfpga_processfpga929_mult_extender_x_q <= i_clcntype_i_i1079_processfpga_processfpga929_mult_multconst_x_q & i_clcntype_i_i1079_processfpga_processfpga929_mult_x_result_add_0_0_q(67 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_trunc_sel_x(BITSELECT,39)@7
    i_clcntype_i_i1079_processfpga_processfpga929_trunc_sel_x_b <= i_clcntype_i_i1079_processfpga_processfpga929_mult_extender_x_q(63 downto 0);

    -- redist8_i_clcntype_i_i1079_processfpga_processfpga929_trunc_sel_x_b_1(DELAY,162)
    redist8_i_clcntype_i_i1079_processfpga_processfpga929_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clcntype_i_i1079_processfpga_processfpga929_trunc_sel_x_b, xout => redist8_i_clcntype_i_i1079_processfpga_processfpga929_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localconn_sync_buffer150_processfpga(BLACKBOX,88)@0
    -- in in_i_dependence@8
    -- in in_valid_in@8
    -- out out_buffer_out@8
    -- out out_valid_out@8
    thei_syncbuf_localconn_sync_buffer150_processfpga : i_syncbuf_localconn_sync_buffer150_processfpga927
    PORT MAP (
        in_buffer_in => in_localConn,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_7_q,
        out_buffer_out => i_syncbuf_localconn_sync_buffer150_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_clcntype_i_i1079_processfpga_processfpga929_add_x(ADD,40)@8
    i_clcntype_i_i1079_processfpga_processfpga929_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localconn_sync_buffer150_processfpga_out_buffer_out);
    i_clcntype_i_i1079_processfpga_processfpga929_add_x_b <= STD_LOGIC_VECTOR("0" & redist8_i_clcntype_i_i1079_processfpga_processfpga929_trunc_sel_x_b_1_q);
    i_clcntype_i_i1079_processfpga_processfpga929_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clcntype_i_i1079_processfpga_processfpga929_add_x_a) + UNSIGNED(i_clcntype_i_i1079_processfpga_processfpga929_add_x_b));
    i_clcntype_i_i1079_processfpga_processfpga929_add_x_q <= i_clcntype_i_i1079_processfpga_processfpga929_add_x_o(64 downto 0);

    -- i_clcntype_i_i1079_processfpga_processfpga929_dupName_0_trunc_sel_x(BITSELECT,34)@8
    i_clcntype_i_i1079_processfpga_processfpga929_dupName_0_trunc_sel_x_b <= i_clcntype_i_i1079_processfpga_processfpga929_add_x_q(63 downto 0);

    -- i_store_memdep_15_processfpga(BLACKBOX,87)@8
    -- out out_memdep_15_avm_address@20000000
    -- out out_memdep_15_avm_burstcount@20000000
    -- out out_memdep_15_avm_byteenable@20000000
    -- out out_memdep_15_avm_enable@20000000
    -- out out_memdep_15_avm_read@20000000
    -- out out_memdep_15_avm_write@20000000
    -- out out_memdep_15_avm_writedata@20000000
    -- out out_o_stall@9
    -- out out_o_valid@9
    -- out out_o_writeack@9
    thei_store_memdep_15_processfpga : i_store_memdep_15_processfpga932
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_clcntype_i_i1079_processfpga_processfpga929_dupName_0_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_phi_decision1464_xor_or450_processfpga_out_dest_data_out_64_0,
        in_i_stall => GND_q,
        in_i_valid => redist6_sync_in_aunroll_x_in_i_valid_7_q,
        in_i_writedata => c_i8_1gr_q,
        in_memdep_15_avm_readdata => in_memdep_15_avm_readdata,
        in_memdep_15_avm_readdatavalid => in_memdep_15_avm_readdatavalid,
        in_memdep_15_avm_waitrequest => in_memdep_15_avm_waitrequest,
        in_memdep_15_avm_writeack => in_memdep_15_avm_writeack,
        out_memdep_15_avm_address => i_store_memdep_15_processfpga_out_memdep_15_avm_address,
        out_memdep_15_avm_burstcount => i_store_memdep_15_processfpga_out_memdep_15_avm_burstcount,
        out_memdep_15_avm_byteenable => i_store_memdep_15_processfpga_out_memdep_15_avm_byteenable,
        out_memdep_15_avm_enable => i_store_memdep_15_processfpga_out_memdep_15_avm_enable,
        out_memdep_15_avm_read => i_store_memdep_15_processfpga_out_memdep_15_avm_read,
        out_memdep_15_avm_write => i_store_memdep_15_processfpga_out_memdep_15_avm_write,
        out_memdep_15_avm_writedata => i_store_memdep_15_processfpga_out_memdep_15_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_1_ext_sig_sync_out_x(GPOUT,8)
    out_memdep_15_avm_address <= i_store_memdep_15_processfpga_out_memdep_15_avm_address;
    out_memdep_15_avm_enable <= i_store_memdep_15_processfpga_out_memdep_15_avm_enable;
    out_memdep_15_avm_read <= i_store_memdep_15_processfpga_out_memdep_15_avm_read;
    out_memdep_15_avm_write <= i_store_memdep_15_processfpga_out_memdep_15_avm_write;
    out_memdep_15_avm_writedata <= i_store_memdep_15_processfpga_out_memdep_15_avm_writedata;
    out_memdep_15_avm_byteenable <= i_store_memdep_15_processfpga_out_memdep_15_avm_byteenable;
    out_memdep_15_avm_burstcount <= i_store_memdep_15_processfpga_out_memdep_15_avm_burstcount;

    -- redist7_sync_in_aunroll_x_in_i_valid_8(DELAY,161)
    redist7_sync_in_aunroll_x_in_i_valid_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_sync_in_aunroll_x_in_i_valid_7_q, xout => redist7_sync_in_aunroll_x_in_i_valid_8_q, clk => clock, aclr => resetn );

    -- redist3_sync_in_aunroll_x_in_c0_eni2921_1_7(DELAY,157)
    redist3_sync_in_aunroll_x_in_c0_eni2921_1_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni2921_1, xout => redist3_sync_in_aunroll_x_in_c0_eni2921_1_7_q, clk => clock, aclr => resetn );

    -- redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_notEnable(LOGICAL,169)
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_nor(LOGICAL,170)
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_nor_q <= not (redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_notEnable_q or redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_sticky_ena_q);

    -- redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_last(CONSTANT,166)
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_last_q <= "0100";

    -- redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_cmp(LOGICAL,167)
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_cmp_b <= STD_LOGIC_VECTOR("0" & redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_q);
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_cmp_q <= "1" WHEN redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_last_q = redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_cmp_b ELSE "0";

    -- redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_cmpReg(REG,168)
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_cmpReg_q <= STD_LOGIC_VECTOR(redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_cmp_q);
        END IF;
    END PROCESS;

    -- redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_sticky_ena(REG,171)
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_nor_q = "1") THEN
                redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_sticky_ena_q <= STD_LOGIC_VECTOR(redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_enaAnd(LOGICAL,172)
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_enaAnd_q <= redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_sticky_ena_q and VCC_q;

    -- redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt(COUNTER,164)
    -- low=0, high=5, step=1, init=0
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_i = TO_UNSIGNED(4, 3)) THEN
                redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_eq <= '1';
            ELSE
                redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_eq <= '0';
            END IF;
            IF (redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_eq = '1') THEN
                redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_i <= redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_i + 3;
            ELSE
                redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_i <= redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_i, 3)));

    -- redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_wraddr(REG,165)
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_wraddr_q <= "101";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_wraddr_q <= STD_LOGIC_VECTOR(redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem(DUALMEM,163)
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_ia <= STD_LOGIC_VECTOR(in_c0_eni2921_2);
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_aa <= redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_wraddr_q;
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_ab <= redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_rdcnt_q;
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_reset0 <= not (resetn);
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_dmem : altera_syncram
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
        clocken1 => redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_reset0,
        clock1 => clock,
        address_a => redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_aa,
        data_a => redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_ab,
        q_b => redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_iq
    );
    redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_q <= redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_iq(31 downto 0);

    -- i_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga(BLACKBOX,61)@8
    -- out out_feedback_stall_out_112@20000000
    thei_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga : i_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga944
    PORT MAP (
        in_data_in => redist4_sync_in_aunroll_x_in_c0_eni2921_2_7_mem_q,
        in_dir => redist3_sync_in_aunroll_x_in_c0_eni2921_1_7_q,
        in_feedback_in_112 => i_acl_push_i32_acl_hw_wg_id800_push112_processfpga_out_feedback_out_112,
        in_feedback_valid_in_112 => i_acl_push_i32_acl_hw_wg_id800_push112_processfpga_out_feedback_valid_out_112,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_7_q,
        out_data_out => i_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga_out_data_out,
        out_feedback_stall_out_112 => i_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga_out_feedback_stall_out_112,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i32_acl_hw_wg_id800_push112_processfpga(BLACKBOX,65)@9
    -- out out_feedback_out_112@20000000
    -- out out_feedback_valid_out_112@20000000
    thei_acl_push_i32_acl_hw_wg_id800_push112_processfpga : i_acl_push_i32_acl_hw_wg_id800_push112_processfpga946
    PORT MAP (
        in_data_in => redist2_i_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga_out_data_out_1_q,
        in_feedback_stall_in_112 => i_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga_out_feedback_stall_out_112,
        in_stall_in => GND_q,
        in_unnamed_processFPGA446 => redist1_i_unnamed_processfpga937_q_8_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_8_q,
        out_data_out => i_acl_push_i32_acl_hw_wg_id800_push112_processfpga_out_data_out,
        out_feedback_out_112 => i_acl_push_i32_acl_hw_wg_id800_push112_processfpga_out_feedback_out_112,
        out_feedback_valid_out_112 => i_acl_push_i32_acl_hw_wg_id800_push112_processfpga_out_feedback_valid_out_112,
        clock => clock,
        resetn => resetn
    );

    -- redist2_i_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga_out_data_out_1(DELAY,156)
    redist2_i_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga_out_data_out, xout => redist2_i_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist1_i_unnamed_processfpga937_q_8(DELAY,155)
    redist1_i_unnamed_processfpga937_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_unnamed_processfpga937_q_1_q, xout => redist1_i_unnamed_processfpga937_q_8_q, clk => clock, aclr => resetn );

    -- sync_out_aunroll_x(GPOUT,47)@9
    out_c0_exi3927_0 <= GND_q;
    out_c0_exi3927_1 <= redist1_i_unnamed_processfpga937_q_8_q;
    out_c0_exi3927_2 <= redist2_i_acl_pop_i32_acl_hw_wg_id800_pop112_processfpga_out_data_out_1_q;
    out_c0_exi3927_3 <= i_acl_push_i32_acl_hw_wg_id800_push112_processfpga_out_data_out;
    out_o_valid <= redist7_sync_in_aunroll_x_in_i_valid_8_q;

    -- i_acl_push_i1_notexitcond677_processfpga(BLACKBOX,64)@1
    -- out out_feedback_out_16@20000000
    -- out out_feedback_valid_out_16@20000000
    thei_acl_push_i1_notexitcond677_processfpga : i_acl_push_i1_notexitcond677_processfpga942
    PORT MAP (
        in_data_in => i_unnamed_processfpga937_q,
        in_feedback_stall_in_16 => i_acl_pipeline_keep_going676_processfpga_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_16 => i_acl_push_i1_notexitcond677_processfpga_out_feedback_out_16,
        out_feedback_valid_out_16 => i_acl_push_i1_notexitcond677_processfpga_out_feedback_valid_out_16,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going676_processfpga(BLACKBOX,60)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going676_processfpga : i_acl_pipeline_keep_going676_processfpga912
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond677_processfpga_out_feedback_out_16,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond677_processfpga_out_feedback_valid_out_16,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going676_processfpga_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going676_processfpga_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going676_processfpga_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going676_processfpga_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,59)
    out_aclp_to_limiter_i_acl_pipeline_keep_going676_processfpga_exiting_valid_out <= i_acl_pipeline_keep_going676_processfpga_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going676_processfpga_exiting_stall_out <= i_acl_pipeline_keep_going676_processfpga_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,94)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going676_processfpga_out_pipeline_valid_out;

END normal;
