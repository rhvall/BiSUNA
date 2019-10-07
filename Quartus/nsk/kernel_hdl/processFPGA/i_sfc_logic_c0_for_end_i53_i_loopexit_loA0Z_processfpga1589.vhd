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

-- VHDL created from i_sfc_logic_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga1589
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

entity i_sfc_logic_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga1589 is
    port (
        out_intel_reserved_ffwd_104_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA222_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA220_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_unnamed_processFPGA220_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA220_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA220_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA220_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA220_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA220_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA220_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA220_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_unnamed_processFPGA220_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_unnamed_processFPGA220_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_102_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_intel_reserved_ffwd_94_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_intel_reserved_ffwd_95_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_intel_reserved_ffwd_98_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_99_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_localInput : in std_logic_vector(63 downto 0);  -- ufix64
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga1589;

architecture normal of i_sfc_logic_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga1589 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_ffwd_dst_acl_933500_processfpga1593 is
        port (
            in_intel_reserved_ffwd_102_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_102_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_idxprom_i571497_processfpga1601 is
        port (
            in_intel_reserved_ffwd_94_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_94_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga217_processfpga1591 is
        port (
            in_intel_reserved_ffwd_99_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_99_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga218_processfpga1595 is
        port (
            in_intel_reserved_ffwd_95_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_95_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga219_processfpga1604 is
        port (
            in_intel_reserved_ffwd_98_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_98_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga221_processfpga1608 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_104_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_104_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_processfpga220_processfpga1606 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA220_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_unnamed_processFPGA220_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA220_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA220_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA220_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA220_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA220_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_unnamed_processFPGA220_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA220_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA220_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA220_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_localinput_sync_buffer162_processfpga1599 is
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
    signal bgTrunc_i_acl_954_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_multconst_x_q : STD_LOGIC_VECTOR (61 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal c_i16_0gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_1gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_954_processfpga_a : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_954_processfpga_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_954_processfpga_o : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_954_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_add_i_i720_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add_i_i720_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_acl_933500_processfpga_out_dest_data_out_102_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_idxprom_i571497_processfpga_out_dest_data_out_94_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_ffwd_dst_unnamed_processfpga217_processfpga_out_dest_data_out_99_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga218_processfpga_out_dest_data_out_95_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_unnamed_processfpga219_processfpga_out_dest_data_out_98_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga221_processfpga_out_intel_reserved_ffwd_104_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga220_processfpga_out_o_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_phi_decision1545_or_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_select1238_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_select1238_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_syncbuf_localinput_sync_buffer162_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_tobool72_i_i715_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1597_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_unnamed_processfpga1597_vt_const_15_q : STD_LOGIC_VECTOR (14 downto 0);
    signal i_unnamed_processfpga1597_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_unnamed_processfpga1597_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_join_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_14_q : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_14_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_join_16_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_sync_in_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_sync_in_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_sync_in_in_i_valid_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_tobool72_i_i715_processfpga_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_arrayidx75_i_i717_processfpga_processfpga1603_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist0_sync_in_in_i_valid_1(DELAY,72)
    redist0_sync_in_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist0_sync_in_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist1_sync_in_in_i_valid_5(DELAY,73)
    redist1_sync_in_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_sync_in_in_i_valid_1_q, xout => redist1_sync_in_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- redist2_sync_in_in_i_valid_6(DELAY,74)
    redist2_sync_in_in_i_valid_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_sync_in_in_i_valid_5_q, xout => redist2_sync_in_in_i_valid_6_q, clk => clock, aclr => resetn );

    -- c_i16_0gr(CONSTANT,22)
    c_i16_0gr_q <= "0000000000000000";

    -- i_ffwd_dst_unnamed_processfpga219_processfpga(BLACKBOX,34)@1
    thei_ffwd_dst_unnamed_processfpga219_processfpga : i_ffwd_dst_unnamed_processfpga219_processfpga1604
    PORT MAP (
        in_intel_reserved_ffwd_98_0 => in_intel_reserved_ffwd_98_0,
        in_stall_in => GND_q,
        in_valid_in => redist0_sync_in_in_i_valid_1_q,
        out_dest_data_out_98_0 => i_ffwd_dst_unnamed_processfpga219_processfpga_out_dest_data_out_98_0,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_processfpga1597_vt_const_15(CONSTANT,42)
    i_unnamed_processfpga1597_vt_const_15_q <= "000000000000000";

    -- c_i16_1gr(CONSTANT,23)
    c_i16_1gr_q <= "0000000000000001";

    -- i_ffwd_dst_unnamed_processfpga218_processfpga(BLACKBOX,33)@1
    thei_ffwd_dst_unnamed_processfpga218_processfpga : i_ffwd_dst_unnamed_processfpga218_processfpga1595
    PORT MAP (
        in_intel_reserved_ffwd_95_0 => in_intel_reserved_ffwd_95_0,
        in_stall_in => GND_q,
        in_valid_in => redist0_sync_in_in_i_valid_1_q,
        out_dest_data_out_95_0 => i_ffwd_dst_unnamed_processfpga218_processfpga_out_dest_data_out_95_0,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_processfpga1597(LOGICAL,41)@1
    i_unnamed_processfpga1597_q <= i_ffwd_dst_unnamed_processfpga218_processfpga_out_dest_data_out_95_0 and c_i16_1gr_q;

    -- i_unnamed_processfpga1597_vt_select_0(BITSELECT,44)@1
    i_unnamed_processfpga1597_vt_select_0_b <= i_unnamed_processfpga1597_q(0 downto 0);

    -- i_unnamed_processfpga1597_vt_join(BITJOIN,43)@1
    i_unnamed_processfpga1597_vt_join_q <= i_unnamed_processfpga1597_vt_const_15_q & i_unnamed_processfpga1597_vt_select_0_b;

    -- i_tobool72_i_i715_processfpga(LOGICAL,40)@1
    i_tobool72_i_i715_processfpga_q <= "1" WHEN i_unnamed_processfpga1597_vt_join_q = c_i16_0gr_q ELSE "0";

    -- i_phi_decision1545_or_processfpga(LOGICAL,37)@1
    i_phi_decision1545_or_processfpga_q <= i_tobool72_i_i715_processfpga_q or i_ffwd_dst_unnamed_processfpga219_processfpga_out_dest_data_out_98_0;

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_mult_multconst_x(CONSTANT,14)
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_multconst_x_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_idxprom_i571497_processfpga(BLACKBOX,31)@0
    thei_ffwd_dst_idxprom_i571497_processfpga : i_ffwd_dst_idxprom_i571497_processfpga1601
    PORT MAP (
        in_intel_reserved_ffwd_94_0 => in_intel_reserved_ffwd_94_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_94_0 => i_ffwd_dst_idxprom_i571497_processfpga_out_dest_data_out_94_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_bs1_merged_bit_select(BITSELECT,71)@0
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_bs1_merged_bit_select_b <= i_ffwd_dst_idxprom_i571497_processfpga_out_dest_data_out_94_0(17 downto 0);
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_bs1_merged_bit_select_c <= i_ffwd_dst_idxprom_i571497_processfpga_out_dest_data_out_94_0(63 downto 54);
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_bs1_merged_bit_select_d <= i_ffwd_dst_idxprom_i571497_processfpga_out_dest_data_out_94_0(35 downto 18);
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_bs1_merged_bit_select_e <= i_ffwd_dst_idxprom_i571497_processfpga_out_dest_data_out_94_0(53 downto 36);

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im3_shift0(BITSHIFT,68)@0
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im3_shift0_qint <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im3_shift0_q <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_15(BITSHIFT,63)@0
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im3_shift0_q) & "0000000000000000";
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_15_q <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im6_shift0(BITSHIFT,69)@0
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im6_shift0_qint <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im6_shift0_q <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_14(BITSHIFT,62)@0
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_14_q <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_14_qint(37 downto 0);

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_join_16(BITJOIN,64)@0
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_join_16_q <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_15_q & i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_14_q;

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im9_shift0(BITSHIFT,70)@0
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im9_shift0_qint <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im9_shift0_q <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_12(BITSHIFT,60)@0
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im9_shift0_q) & "0000000000000000";
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_12_q <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im0_shift0(BITSHIFT,67)@0
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im0_shift0_qint <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im0_shift0_q <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_join_13(BITJOIN,61)@0
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_join_13_q <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_im0_shift0_q);

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_result_add_0_0(ADD,65)@0
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_join_13_q);
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_join_16_q);
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_result_add_0_0_b));
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_result_add_0_0_q <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_result_add_0_0_o(66 downto 0);

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_mult_extender_x(BITJOIN,13)@0
    i_arrayidx75_i_i717_processfpga_processfpga1603_mult_extender_x_q <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_multconst_x_q & i_arrayidx75_i_i717_processfpga_processfpga1603_mult_x_result_add_0_0_q(65 downto 0);

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_trunc_sel_x(BITSELECT,15)@0
    i_arrayidx75_i_i717_processfpga_processfpga1603_trunc_sel_x_b <= i_arrayidx75_i_i717_processfpga_processfpga1603_mult_extender_x_q(63 downto 0);

    -- redist4_i_arrayidx75_i_i717_processfpga_processfpga1603_trunc_sel_x_b_1(DELAY,76)
    redist4_i_arrayidx75_i_i717_processfpga_processfpga1603_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx75_i_i717_processfpga_processfpga1603_trunc_sel_x_b, xout => redist4_i_arrayidx75_i_i717_processfpga_processfpga1603_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localinput_sync_buffer162_processfpga(BLACKBOX,39)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_localinput_sync_buffer162_processfpga : i_syncbuf_localinput_sync_buffer162_processfpga1599
    PORT MAP (
        in_buffer_in => in_localInput,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist0_sync_in_in_i_valid_1_q,
        out_buffer_out => i_syncbuf_localinput_sync_buffer162_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_add_x(ADD,16)@1
    i_arrayidx75_i_i717_processfpga_processfpga1603_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localinput_sync_buffer162_processfpga_out_buffer_out);
    i_arrayidx75_i_i717_processfpga_processfpga1603_add_x_b <= STD_LOGIC_VECTOR("0" & redist4_i_arrayidx75_i_i717_processfpga_processfpga1603_trunc_sel_x_b_1_q);
    i_arrayidx75_i_i717_processfpga_processfpga1603_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx75_i_i717_processfpga_processfpga1603_add_x_a) + UNSIGNED(i_arrayidx75_i_i717_processfpga_processfpga1603_add_x_b));
    i_arrayidx75_i_i717_processfpga_processfpga1603_add_x_q <= i_arrayidx75_i_i717_processfpga_processfpga1603_add_x_o(64 downto 0);

    -- i_arrayidx75_i_i717_processfpga_processfpga1603_dupName_0_trunc_sel_x(BITSELECT,10)@1
    i_arrayidx75_i_i717_processfpga_processfpga1603_dupName_0_trunc_sel_x_b <= i_arrayidx75_i_i717_processfpga_processfpga1603_add_x_q(63 downto 0);

    -- i_load_unnamed_processfpga220_processfpga(BLACKBOX,36)@1
    -- in in_i_stall@20000000
    -- out out_o_readdata@5
    -- out out_o_stall@4
    -- out out_o_valid@5
    -- out out_unnamed_processFPGA220_avm_address@20000000
    -- out out_unnamed_processFPGA220_avm_burstcount@20000000
    -- out out_unnamed_processFPGA220_avm_byteenable@20000000
    -- out out_unnamed_processFPGA220_avm_enable@20000000
    -- out out_unnamed_processFPGA220_avm_read@20000000
    -- out out_unnamed_processFPGA220_avm_write@20000000
    -- out out_unnamed_processFPGA220_avm_writedata@20000000
    thei_load_unnamed_processfpga220_processfpga : i_load_unnamed_processfpga220_processfpga1606
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx75_i_i717_processfpga_processfpga1603_dupName_0_trunc_sel_x_b,
        in_i_predicate => i_phi_decision1545_or_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist0_sync_in_in_i_valid_1_q,
        in_unnamed_processFPGA220_avm_readdata => in_unnamed_processFPGA220_avm_readdata,
        in_unnamed_processFPGA220_avm_readdatavalid => in_unnamed_processFPGA220_avm_readdatavalid,
        in_unnamed_processFPGA220_avm_waitrequest => in_unnamed_processFPGA220_avm_waitrequest,
        in_unnamed_processFPGA220_avm_writeack => in_unnamed_processFPGA220_avm_writeack,
        out_o_readdata => i_load_unnamed_processfpga220_processfpga_out_o_readdata,
        out_unnamed_processFPGA220_avm_address => i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_address,
        out_unnamed_processFPGA220_avm_burstcount => i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_burstcount,
        out_unnamed_processFPGA220_avm_byteenable => i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_byteenable,
        out_unnamed_processFPGA220_avm_enable => i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_enable,
        out_unnamed_processFPGA220_avm_read => i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_read,
        out_unnamed_processFPGA220_avm_write => i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_write,
        out_unnamed_processFPGA220_avm_writedata => i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_tobool72_i_i715_processfpga_q_4(DELAY,75)
    redist3_i_tobool72_i_i715_processfpga_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_tobool72_i_i715_processfpga_q, xout => redist3_i_tobool72_i_i715_processfpga_q_4_q, clk => clock, aclr => resetn );

    -- i_add_i_i720_processfpga(MUX,29)@5 + 1
    i_add_i_i720_processfpga_s <= redist3_i_tobool72_i_i715_processfpga_q_4_q;
    i_add_i_i720_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_add_i_i720_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_add_i_i720_processfpga_s) IS
                WHEN "0" => i_add_i_i720_processfpga_q <= i_load_unnamed_processfpga220_processfpga_out_o_readdata;
                WHEN "1" => i_add_i_i720_processfpga_q <= c_i16_0gr_q;
                WHEN OTHERS => i_add_i_i720_processfpga_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_ffwd_dst_acl_933500_processfpga(BLACKBOX,30)@5
    thei_ffwd_dst_acl_933500_processfpga : i_ffwd_dst_acl_933500_processfpga1593
    PORT MAP (
        in_intel_reserved_ffwd_102_0 => in_intel_reserved_ffwd_102_0,
        in_stall_in => GND_q,
        in_valid_in => redist1_sync_in_in_i_valid_5_q,
        out_dest_data_out_102_0 => i_ffwd_dst_acl_933500_processfpga_out_dest_data_out_102_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga217_processfpga(BLACKBOX,32)@5
    thei_ffwd_dst_unnamed_processfpga217_processfpga : i_ffwd_dst_unnamed_processfpga217_processfpga1591
    PORT MAP (
        in_intel_reserved_ffwd_99_0 => in_intel_reserved_ffwd_99_0,
        in_stall_in => GND_q,
        in_valid_in => redist1_sync_in_in_i_valid_5_q,
        out_dest_data_out_99_0 => i_ffwd_dst_unnamed_processfpga217_processfpga_out_dest_data_out_99_0,
        clock => clock,
        resetn => resetn
    );

    -- i_select1238_processfpga(MUX,38)@5 + 1
    i_select1238_processfpga_s <= i_ffwd_dst_unnamed_processfpga217_processfpga_out_dest_data_out_99_0;
    i_select1238_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_select1238_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_select1238_processfpga_s) IS
                WHEN "0" => i_select1238_processfpga_q <= i_ffwd_dst_acl_933500_processfpga_out_dest_data_out_102_0;
                WHEN "1" => i_select1238_processfpga_q <= c_i16_0gr_q;
                WHEN OTHERS => i_select1238_processfpga_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_acl_954_processfpga(ADD,28)@6
    i_acl_954_processfpga_a <= STD_LOGIC_VECTOR("0" & i_select1238_processfpga_q);
    i_acl_954_processfpga_b <= STD_LOGIC_VECTOR("0" & i_add_i_i720_processfpga_q);
    i_acl_954_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_acl_954_processfpga_a) + UNSIGNED(i_acl_954_processfpga_b));
    i_acl_954_processfpga_q <= i_acl_954_processfpga_o(16 downto 0);

    -- bgTrunc_i_acl_954_processfpga_sel_x(BITSELECT,2)@6
    bgTrunc_i_acl_954_processfpga_sel_x_b <= i_acl_954_processfpga_q(15 downto 0);

    -- i_ffwd_src_unnamed_processfpga221_processfpga(BLACKBOX,35)@6
    -- out out_intel_reserved_ffwd_104_0@20000000
    thei_ffwd_src_unnamed_processfpga221_processfpga : i_ffwd_src_unnamed_processfpga221_processfpga1608
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_104_0 => bgTrunc_i_acl_954_processfpga_sel_x_b,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_in_i_valid_6_q,
        out_intel_reserved_ffwd_104_0 => i_ffwd_src_unnamed_processfpga221_processfpga_out_intel_reserved_ffwd_104_0,
        clock => clock,
        resetn => resetn
    );

    -- sync_out_aunroll_x(GPOUT,20)@6
    out_intel_reserved_ffwd_104_0 <= i_ffwd_src_unnamed_processfpga221_processfpga_out_intel_reserved_ffwd_104_0;
    out_o_valid <= redist2_sync_in_in_i_valid_6_q;
    out_unnamed_processFPGA222_0 <= GND_q;

    -- ext_sig_sync_out(GPOUT,27)
    out_unnamed_processFPGA220_avm_address <= i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_address;
    out_unnamed_processFPGA220_avm_enable <= i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_enable;
    out_unnamed_processFPGA220_avm_read <= i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_read;
    out_unnamed_processFPGA220_avm_write <= i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_write;
    out_unnamed_processFPGA220_avm_writedata <= i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_writedata;
    out_unnamed_processFPGA220_avm_byteenable <= i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_byteenable;
    out_unnamed_processFPGA220_avm_burstcount <= i_load_unnamed_processfpga220_processfpga_out_unnamed_processFPGA220_avm_burstcount;

END normal;
