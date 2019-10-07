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

-- VHDL created from bb_processFPGA_B34_stall_region
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

entity bb_processFPGA_B34_stall_region is
    port (
        in_c0_exit98318_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit98318_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit98318_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_101_0 : in std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_104_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_c0_exe2985 : out std_logic_vector(31 downto 0);  -- ufix32
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_102_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_105_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_94_0 : in std_logic_vector(63 downto 0);  -- ufix64
        out_intel_reserved_ffwd_106_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_95_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_107_0 : out std_logic_vector(32 downto 0);  -- ufix33
        in_intel_reserved_ffwd_98_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_99_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_localInput : in std_logic_vector(63 downto 0);  -- ufix64
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
        out_intel_reserved_ffwd_103_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_processFPGA_B34_stall_region;

architecture normal of bb_processFPGA_B34_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga is
        port (
            in_unnamed_processFPGA216_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_102_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_94_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_95_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_98_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_99_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_localInput : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_processFPGA220_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_unnamed_processFPGA220_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA220_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA220_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit987_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_104_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
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


    component i_ffwd_dst_reduction_processfpga_28499_processfpga1587 is
        port (
            in_intel_reserved_ffwd_101_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_101_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga215_processfpga1585 is
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


    component i_ffwd_dst_unnamed_processfpga223_processfpga1611 is
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


    component i_ffwd_dst_unnamed_processfpga224_processfpga1613 is
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


    component i_ffwd_src_unnamed_processfpga225_processfpga1619 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_103_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_103_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga226_processfpga1624 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_105_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_105_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga227_processfpga1626 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_106_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_106_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga228_processfpga1631 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_107_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_107_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component acl_data_fifo is
        generic (
            DEPTH : INTEGER := 0;
            DATA_WIDTH : INTEGER := 32;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0;
            IMPL : STRING := "ram"
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            data_in : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            valid_out : out std_logic;
            stall_out : out std_logic;
            data_out : out std_logic_vector(DATA_WIDTH - 1 downto 0);
            full : out std_logic;
            almost_full : out std_logic
        );
    end component;


    component acl_valid_fifo_counter is
        generic (
            DEPTH : INTEGER := 0;
            ASYNC_RESET : INTEGER := 1;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            valid_out : out std_logic;
            stall_out : out std_logic;
            full : out std_logic
        );
    end component;





    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_unnamed_processfpga1617_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_unnamed_processfpga1628_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_unnamed_processfpga1630_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal dupName_0_c_i32_1gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_intel_reserved_ffwd_104_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_unnamed_processfpga1629_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cmp91_i_i7311320_not_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp91_i_i7311320_processfpga_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp91_i_i7311320_processfpga_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp91_i_i7311320_processfpga_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp91_i_i7311320_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_reduction_processfpga_28499_processfpga_out_dest_data_out_101_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_processfpga_28499_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_reduction_processfpga_28499_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga215_processfpga_out_dest_data_out_99_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga215_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga215_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga223_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga223_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga224_processfpga_out_dest_data_out_98_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga224_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga224_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga225_processfpga_out_intel_reserved_ffwd_103_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_processfpga225_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga225_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga226_processfpga_out_intel_reserved_ffwd_105_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga226_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga226_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga227_processfpga_out_intel_reserved_ffwd_106_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga227_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga227_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga228_processfpga_out_intel_reserved_ffwd_107_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_ffwd_src_unnamed_processfpga228_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga228_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision1594_xor_or_processfpga_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision1594_xor_or_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_select1241_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_select1241_processfpga_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_smax221_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_smax221_processfpga_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_processfpga1615_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1617_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga1617_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga1617_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga1617_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga1618_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_processfpga1621_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1622_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_processfpga1622_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_processfpga1622_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_processfpga1622_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1628_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga1628_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga1628_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga1628_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga1629_vt_join_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga1629_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_processfpga1630_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_processfpga1630_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_processfpga1630_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_processfpga1630_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist0_stall_entry_aunroll_o6_9_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_aunroll_o6_9_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist0_stall_entry_aunroll_o6_9_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_aunroll_o6_9_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist0_stall_entry_aunroll_o6_9_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_stall_entry_aunroll_o6_9_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_aunroll_o6_9_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist0_stall_entry_aunroll_o6_9_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_aunroll_o6_9_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist0_stall_entry_aunroll_o6_9_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_i_unnamed_processfpga1618_q_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_select1241_processfpga_q_2_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_bgTrunc_i_unnamed_processfpga1617_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_ffwd_dst_reduction_processfpga_28499_processfpga_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_ffwd_dst_reduction_processfpga_28499_processfpga_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_ffwd_dst_unnamed_processfpga215_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_ffwd_dst_unnamed_processfpga215_processfpga_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_ffwd_dst_unnamed_processfpga223_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_ffwd_dst_unnamed_processfpga223_processfpga_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_ffwd_dst_unnamed_processfpga224_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_ffwd_dst_unnamed_processfpga224_processfpga_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_stall_entry_aunroll_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_aunroll_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist0_stall_entry_aunroll_o6_9_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist0_stall_entry_aunroll_o6_9_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_R_v_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_R_v_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_s_tv_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_s_tv_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i7311320_processfpga_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_reduction_processfpga_28499_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_reduction_processfpga_28499_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_reduction_processfpga_28499_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga215_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga215_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga215_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga223_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga223_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga223_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga224_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga224_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga224_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga225_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga225_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga225_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga226_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga226_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga226_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga228_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga228_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga228_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_phi_decision1594_xor_or_processfpga_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_phi_decision1594_xor_or_processfpga_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_phi_decision1594_xor_or_processfpga_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_phi_decision1594_xor_or_processfpga_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_phi_decision1594_xor_or_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_phi_decision1594_xor_or_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select1241_processfpga_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select1241_processfpga_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select1241_processfpga_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select1241_processfpga_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select1241_processfpga_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select1241_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select1241_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_smax221_processfpga_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_smax221_processfpga_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_smax221_processfpga_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_smax221_processfpga_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_smax221_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_smax221_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga1615_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga1615_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga1615_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga1615_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_aunroll_4_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_aunroll_4_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_aunroll_4_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_aunroll_4_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_aunroll_4_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_aunroll_4_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_aunroll_4_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_aunroll_4_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_aunroll_4_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_aunroll_4_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_aunroll_4_reg_stall_out_bitsignaltemp : std_logic;
    signal SR_SE_i_cmp91_i_i7311320_processfpga_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_cmp91_i_i7311320_processfpga_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_cmp91_i_i7311320_processfpga_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_cmp91_i_i7311320_processfpga_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_cmp91_i_i7311320_processfpga_r_data2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_cmp91_i_i7311320_processfpga_r_data3 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_cmp91_i_i7311320_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_cmp91_i_i7311320_processfpga_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_cmp91_i_i7311320_processfpga_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_cmp91_i_i7311320_processfpga_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_cmp91_i_i7311320_processfpga_D2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_cmp91_i_i7311320_processfpga_D3 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_smax221_processfpga_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_smax221_processfpga_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_smax221_processfpga_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_smax221_processfpga_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_smax221_processfpga_r_data2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_smax221_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_smax221_processfpga_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_smax221_processfpga_D0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_smax221_processfpga_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_smax221_processfpga_D2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_D0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_phi_decision1594_xor_or_processfpga_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_phi_decision1594_xor_or_processfpga_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_phi_decision1594_xor_or_processfpga_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_phi_decision1594_xor_or_processfpga_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_phi_decision1594_xor_or_processfpga_r_data1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_phi_decision1594_xor_or_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_phi_decision1594_xor_or_processfpga_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_phi_decision1594_xor_or_processfpga_D0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_phi_decision1594_xor_or_processfpga_D1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_D0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_D0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_D0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- bubble_join_stall_entry_aunroll(BITJOIN,126)
    bubble_join_stall_entry_aunroll_q <= in_c0_exit98318_2;

    -- bubble_select_stall_entry_aunroll(BITSELECT,127)
    bubble_select_stall_entry_aunroll_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_aunroll_q(31 downto 0));

    -- redist0_stall_entry_aunroll_o6_9_fifo(STALLFIFO,95)
    redist0_stall_entry_aunroll_o6_9_fifo_valid_in <= SE_stall_entry_aunroll_V5;
    redist0_stall_entry_aunroll_o6_9_fifo_stall_in <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_backStall;
    redist0_stall_entry_aunroll_o6_9_fifo_data_in <= bubble_select_stall_entry_aunroll_b;
    redist0_stall_entry_aunroll_o6_9_fifo_valid_in_bitsignaltemp <= redist0_stall_entry_aunroll_o6_9_fifo_valid_in(0);
    redist0_stall_entry_aunroll_o6_9_fifo_stall_in_bitsignaltemp <= redist0_stall_entry_aunroll_o6_9_fifo_stall_in(0);
    redist0_stall_entry_aunroll_o6_9_fifo_valid_out(0) <= redist0_stall_entry_aunroll_o6_9_fifo_valid_out_bitsignaltemp;
    redist0_stall_entry_aunroll_o6_9_fifo_stall_out(0) <= redist0_stall_entry_aunroll_o6_9_fifo_stall_out_bitsignaltemp;
    theredist0_stall_entry_aunroll_o6_9_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 10,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist0_stall_entry_aunroll_o6_9_fifo_valid_in_bitsignaltemp,
        stall_in => redist0_stall_entry_aunroll_o6_9_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_aunroll_b,
        valid_out => redist0_stall_entry_aunroll_o6_9_fifo_valid_out_bitsignaltemp,
        stall_out => redist0_stall_entry_aunroll_o6_9_fifo_stall_out_bitsignaltemp,
        data_out => redist0_stall_entry_aunroll_o6_9_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_unnamed_processfpga1618(LOGICAL,63)@1
    i_unnamed_processfpga1618_q <= i_select1241_processfpga_q xor c_i32_1gr_q;

    -- bubble_join_i_ffwd_dst_reduction_processfpga_28499_processfpga(BITJOIN,110)
    bubble_join_i_ffwd_dst_reduction_processfpga_28499_processfpga_q <= i_ffwd_dst_reduction_processfpga_28499_processfpga_out_dest_data_out_101_0;

    -- bubble_select_i_ffwd_dst_reduction_processfpga_28499_processfpga(BITSELECT,111)
    bubble_select_i_ffwd_dst_reduction_processfpga_28499_processfpga_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_reduction_processfpga_28499_processfpga_q(31 downto 0));

    -- bubble_join_i_ffwd_dst_unnamed_processfpga215_processfpga(BITJOIN,113)
    bubble_join_i_ffwd_dst_unnamed_processfpga215_processfpga_q <= i_ffwd_dst_unnamed_processfpga215_processfpga_out_dest_data_out_99_0;

    -- bubble_select_i_ffwd_dst_unnamed_processfpga215_processfpga(BITSELECT,114)
    bubble_select_i_ffwd_dst_unnamed_processfpga215_processfpga_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_unnamed_processfpga215_processfpga_q(0 downto 0));

    -- i_select1241_processfpga(MUX,59)@0 + 1
    i_select1241_processfpga_s <= bubble_select_i_ffwd_dst_unnamed_processfpga215_processfpga_b;
    i_select1241_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_select1241_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_select1241_processfpga_backEN = "1") THEN
                CASE (i_select1241_processfpga_s) IS
                    WHEN "0" => i_select1241_processfpga_q <= bubble_select_i_ffwd_dst_reduction_processfpga_28499_processfpga_b;
                    WHEN "1" => i_select1241_processfpga_q <= c_i32_1gr_q;
                    WHEN OTHERS => i_select1241_processfpga_q <= (others => '0');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- SE_out_i_ffwd_dst_unnamed_processfpga215_processfpga(STALLENABLE,147)
    -- Valid signal propagation
    SE_out_i_ffwd_dst_unnamed_processfpga215_processfpga_V0 <= SE_out_i_ffwd_dst_unnamed_processfpga215_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_dst_unnamed_processfpga215_processfpga_backStall <= SE_i_select1241_processfpga_backStall or not (SE_out_i_ffwd_dst_unnamed_processfpga215_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_dst_unnamed_processfpga215_processfpga_wireValid <= i_ffwd_dst_unnamed_processfpga215_processfpga_out_valid_out;

    -- SE_out_i_ffwd_dst_reduction_processfpga_28499_processfpga(STALLENABLE,145)
    -- Valid signal propagation
    SE_out_i_ffwd_dst_reduction_processfpga_28499_processfpga_V0 <= SE_out_i_ffwd_dst_reduction_processfpga_28499_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_dst_reduction_processfpga_28499_processfpga_backStall <= SE_i_select1241_processfpga_backStall or not (SE_out_i_ffwd_dst_reduction_processfpga_28499_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_dst_reduction_processfpga_28499_processfpga_wireValid <= i_ffwd_dst_reduction_processfpga_28499_processfpga_out_valid_out;

    -- SE_i_select1241_processfpga(STALLENABLE,161)
    -- Valid signal propagation
    SE_i_select1241_processfpga_V0 <= SE_i_select1241_processfpga_R_v_0;
    -- Stall signal propagation
    SE_i_select1241_processfpga_s_tv_0 <= SR_SE_i_cmp91_i_i7311320_processfpga_backStall and SE_i_select1241_processfpga_R_v_0;
    -- Backward Enable generation
    SE_i_select1241_processfpga_backEN <= not (SE_i_select1241_processfpga_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_select1241_processfpga_and0 <= SE_out_i_ffwd_dst_reduction_processfpga_28499_processfpga_V0 and SE_i_select1241_processfpga_backEN;
    SE_i_select1241_processfpga_v_s_0 <= SE_out_i_ffwd_dst_unnamed_processfpga215_processfpga_V0 and SE_i_select1241_processfpga_and0;
    -- Backward Stall generation
    SE_i_select1241_processfpga_backStall <= not (SE_i_select1241_processfpga_v_s_0);
    SE_i_select1241_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_select1241_processfpga_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_select1241_processfpga_backEN = "0") THEN
                SE_i_select1241_processfpga_R_v_0 <= SE_i_select1241_processfpga_R_v_0 and SE_i_select1241_processfpga_s_tv_0;
            ELSE
                SE_i_select1241_processfpga_R_v_0 <= SE_i_select1241_processfpga_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_i_cmp91_i_i7311320_processfpga(STALLREG,236)
    SR_SE_i_cmp91_i_i7311320_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_cmp91_i_i7311320_processfpga_r_valid <= (others => '0');
            SR_SE_i_cmp91_i_i7311320_processfpga_r_data0 <= (others => '-');
            SR_SE_i_cmp91_i_i7311320_processfpga_r_data1 <= (others => '-');
            SR_SE_i_cmp91_i_i7311320_processfpga_r_data2 <= (others => '-');
            SR_SE_i_cmp91_i_i7311320_processfpga_r_data3 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_cmp91_i_i7311320_processfpga_r_valid <= SE_i_cmp91_i_i7311320_processfpga_backStall and (SR_SE_i_cmp91_i_i7311320_processfpga_r_valid or SR_SE_i_cmp91_i_i7311320_processfpga_i_valid);

            IF (SR_SE_i_cmp91_i_i7311320_processfpga_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_cmp91_i_i7311320_processfpga_r_data0 <= STD_LOGIC_VECTOR(i_select1241_processfpga_q);
                SR_SE_i_cmp91_i_i7311320_processfpga_r_data1 <= STD_LOGIC_VECTOR(i_select1241_processfpga_q);
                SR_SE_i_cmp91_i_i7311320_processfpga_r_data2 <= STD_LOGIC_VECTOR(i_unnamed_processfpga1618_q);
                SR_SE_i_cmp91_i_i7311320_processfpga_r_data3 <= STD_LOGIC_VECTOR(i_unnamed_processfpga1618_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_cmp91_i_i7311320_processfpga_i_valid <= SE_i_select1241_processfpga_V0;
    -- Stall signal propagation
    SR_SE_i_cmp91_i_i7311320_processfpga_backStall <= SR_SE_i_cmp91_i_i7311320_processfpga_r_valid or not (SR_SE_i_cmp91_i_i7311320_processfpga_i_valid);

    -- Valid
    SR_SE_i_cmp91_i_i7311320_processfpga_V <= SR_SE_i_cmp91_i_i7311320_processfpga_r_valid WHEN SR_SE_i_cmp91_i_i7311320_processfpga_r_valid = "1" ELSE SR_SE_i_cmp91_i_i7311320_processfpga_i_valid;

    -- Data0
    SR_SE_i_cmp91_i_i7311320_processfpga_D0 <= SR_SE_i_cmp91_i_i7311320_processfpga_r_data0 WHEN SR_SE_i_cmp91_i_i7311320_processfpga_r_valid = "1" ELSE i_select1241_processfpga_q;
    -- Data1
    SR_SE_i_cmp91_i_i7311320_processfpga_D1 <= SR_SE_i_cmp91_i_i7311320_processfpga_r_data1 WHEN SR_SE_i_cmp91_i_i7311320_processfpga_r_valid = "1" ELSE i_select1241_processfpga_q;
    -- Data2
    SR_SE_i_cmp91_i_i7311320_processfpga_D2 <= SR_SE_i_cmp91_i_i7311320_processfpga_r_data2 WHEN SR_SE_i_cmp91_i_i7311320_processfpga_r_valid = "1" ELSE i_unnamed_processfpga1618_q;
    -- Data3
    SR_SE_i_cmp91_i_i7311320_processfpga_D3 <= SR_SE_i_cmp91_i_i7311320_processfpga_r_data3 WHEN SR_SE_i_cmp91_i_i7311320_processfpga_r_valid = "1" ELSE i_unnamed_processfpga1618_q;

    -- c_i32_1gr(CONSTANT,42)
    c_i32_1gr_q <= "11111111111111111111111111111111";

    -- i_cmp91_i_i7311320_processfpga(COMPARE,49)@1 + 1
    i_cmp91_i_i7311320_processfpga_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_1gr_q(31)) & c_i32_1gr_q));
    i_cmp91_i_i7311320_processfpga_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => SR_SE_i_cmp91_i_i7311320_processfpga_D0(31)) & SR_SE_i_cmp91_i_i7311320_processfpga_D0));
    i_cmp91_i_i7311320_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp91_i_i7311320_processfpga_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp91_i_i7311320_processfpga_backEN = "1") THEN
                i_cmp91_i_i7311320_processfpga_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp91_i_i7311320_processfpga_a) - SIGNED(i_cmp91_i_i7311320_processfpga_b));
            END IF;
        END IF;
    END PROCESS;
    i_cmp91_i_i7311320_processfpga_c(0) <= i_cmp91_i_i7311320_processfpga_o(33);

    -- i_cmp91_i_i7311320_not_processfpga(LOGICAL,48)@2
    i_cmp91_i_i7311320_not_processfpga_q <= i_cmp91_i_i7311320_processfpga_c xor VCC_q;

    -- bubble_join_i_ffwd_dst_unnamed_processfpga224_processfpga(BITJOIN,119)
    bubble_join_i_ffwd_dst_unnamed_processfpga224_processfpga_q <= i_ffwd_dst_unnamed_processfpga224_processfpga_out_dest_data_out_98_0;

    -- bubble_select_i_ffwd_dst_unnamed_processfpga224_processfpga(BITSELECT,120)
    bubble_select_i_ffwd_dst_unnamed_processfpga224_processfpga_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_unnamed_processfpga224_processfpga_q(0 downto 0));

    -- dupName_0_c_i32_1gr_x(CONSTANT,6)
    dupName_0_c_i32_1gr_x_q <= "00000000000000000000000000000001";

    -- redist3_i_select1241_processfpga_q_2_0(REG,98)
    redist3_i_select1241_processfpga_q_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_select1241_processfpga_q_2_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp91_i_i7311320_processfpga_backEN = "1") THEN
                redist3_i_select1241_processfpga_q_2_0_q <= STD_LOGIC_VECTOR(SR_SE_i_cmp91_i_i7311320_processfpga_D1);
            END IF;
        END IF;
    END PROCESS;

    -- i_unnamed_processfpga1617(ADD,62)@2
    i_unnamed_processfpga1617_a <= STD_LOGIC_VECTOR("0" & redist3_i_select1241_processfpga_q_2_0_q);
    i_unnamed_processfpga1617_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i32_1gr_x_q);
    i_unnamed_processfpga1617_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_processfpga1617_a) + UNSIGNED(i_unnamed_processfpga1617_b));
    i_unnamed_processfpga1617_q <= i_unnamed_processfpga1617_o(32 downto 0);

    -- bgTrunc_i_unnamed_processfpga1617_sel_x(BITSELECT,3)@2
    bgTrunc_i_unnamed_processfpga1617_sel_x_b <= i_unnamed_processfpga1617_q(31 downto 0);

    -- redist2_i_unnamed_processfpga1618_q_1_0(REG,97)
    redist2_i_unnamed_processfpga1618_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_unnamed_processfpga1618_q_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp91_i_i7311320_processfpga_backEN = "1") THEN
                redist2_i_unnamed_processfpga1618_q_1_0_q <= STD_LOGIC_VECTOR(SR_SE_i_cmp91_i_i7311320_processfpga_D3);
            END IF;
        END IF;
    END PROCESS;

    -- i_unnamed_processfpga1622(COMPARE,65)@1 + 1
    i_unnamed_processfpga1622_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_1gr_q(31)) & c_i32_1gr_q));
    i_unnamed_processfpga1622_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => SR_SE_i_cmp91_i_i7311320_processfpga_D2(31)) & SR_SE_i_cmp91_i_i7311320_processfpga_D2));
    i_unnamed_processfpga1622_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_unnamed_processfpga1622_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp91_i_i7311320_processfpga_backEN = "1") THEN
                i_unnamed_processfpga1622_o <= STD_LOGIC_VECTOR(SIGNED(i_unnamed_processfpga1622_a) - SIGNED(i_unnamed_processfpga1622_b));
            END IF;
        END IF;
    END PROCESS;
    i_unnamed_processfpga1622_c(0) <= i_unnamed_processfpga1622_o(33);

    -- bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg(STALLFIFO,234)
    bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_valid_in <= SE_out_i_ffwd_src_unnamed_processfpga228_processfpga_V0;
    bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_stall_in <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_backStall;
    bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_valid_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_valid_in(0);
    bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_stall_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_stall_in(0);
    bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_valid_out(0) <= bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_stall_out(0) <= bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 6,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_ffwd_src_unnamed_processfpga228_processfpga(STALLENABLE,159)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_processfpga228_processfpga_V0 <= SE_out_i_ffwd_src_unnamed_processfpga228_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_processfpga228_processfpga_backStall <= bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_stall_out or not (SE_out_i_ffwd_src_unnamed_processfpga228_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_processfpga228_processfpga_wireValid <= i_ffwd_src_unnamed_processfpga228_processfpga_out_valid_out;

    -- c_i33_1gr(CONSTANT,43)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- i_smax221_processfpga(MUX,60)@2 + 1
    i_smax221_processfpga_s <= SR_SE_i_smax221_processfpga_D0;
    i_smax221_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_smax221_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_smax221_processfpga_backEN = "1") THEN
                CASE (i_smax221_processfpga_s) IS
                    WHEN "0" => i_smax221_processfpga_q <= c_i32_1gr_q;
                    WHEN "1" => i_smax221_processfpga_q <= SR_SE_i_smax221_processfpga_D1;
                    WHEN OTHERS => i_smax221_processfpga_q <= (others => '0');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- redist6_bgTrunc_i_unnamed_processfpga1617_sel_x_b_1_0(REG,107)
    redist6_bgTrunc_i_unnamed_processfpga1617_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_bgTrunc_i_unnamed_processfpga1617_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_smax221_processfpga_backEN = "1") THEN
                redist6_bgTrunc_i_unnamed_processfpga1617_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_i_smax221_processfpga_D2);
            END IF;
        END IF;
    END PROCESS;

    -- i_unnamed_processfpga1628(ADD,66)@3
    i_unnamed_processfpga1628_a <= STD_LOGIC_VECTOR("0" & redist6_bgTrunc_i_unnamed_processfpga1617_sel_x_b_1_0_q);
    i_unnamed_processfpga1628_b <= STD_LOGIC_VECTOR("0" & i_smax221_processfpga_q);
    i_unnamed_processfpga1628_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_processfpga1628_a) + UNSIGNED(i_unnamed_processfpga1628_b));
    i_unnamed_processfpga1628_q <= i_unnamed_processfpga1628_o(32 downto 0);

    -- bgTrunc_i_unnamed_processfpga1628_sel_x(BITSELECT,4)@3
    bgTrunc_i_unnamed_processfpga1628_sel_x_b <= i_unnamed_processfpga1628_q(31 downto 0);

    -- i_unnamed_processfpga1629_sel_x(BITSELECT,36)@3
    i_unnamed_processfpga1629_sel_x_b <= std_logic_vector(resize(unsigned(bgTrunc_i_unnamed_processfpga1628_sel_x_b(31 downto 0)), 33));

    -- i_unnamed_processfpga1629_vt_select_31(BITSELECT,70)@3
    i_unnamed_processfpga1629_vt_select_31_b <= i_unnamed_processfpga1629_sel_x_b(31 downto 0);

    -- redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0(REG,96)
    redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_backEN = "1") THEN
                redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_q <= STD_LOGIC_VECTOR(i_unnamed_processfpga1629_vt_select_31_b);
            END IF;
        END IF;
    END PROCESS;

    -- i_unnamed_processfpga1629_vt_join(BITJOIN,69)@4
    i_unnamed_processfpga1629_vt_join_q <= GND_q & redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_q;

    -- i_unnamed_processfpga1630(ADD,71)@4
    i_unnamed_processfpga1630_a <= STD_LOGIC_VECTOR("0" & i_unnamed_processfpga1629_vt_join_q);
    i_unnamed_processfpga1630_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_unnamed_processfpga1630_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_processfpga1630_a) + UNSIGNED(i_unnamed_processfpga1630_b));
    i_unnamed_processfpga1630_q <= i_unnamed_processfpga1630_o(33 downto 0);

    -- bgTrunc_i_unnamed_processfpga1630_sel_x(BITSELECT,5)@4
    bgTrunc_i_unnamed_processfpga1630_sel_x_b <= i_unnamed_processfpga1630_q(32 downto 0);

    -- i_ffwd_src_unnamed_processfpga228_processfpga(BLACKBOX,57)@4
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_107_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga228_processfpga : i_ffwd_src_unnamed_processfpga228_processfpga1631
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_107_0 => bgTrunc_i_unnamed_processfpga1630_sel_x_b,
        in_stall_in => SE_out_i_ffwd_src_unnamed_processfpga228_processfpga_backStall,
        in_valid_in => SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_V0,
        out_intel_reserved_ffwd_107_0 => i_ffwd_src_unnamed_processfpga228_processfpga_out_intel_reserved_ffwd_107_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga228_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga228_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0(STALLENABLE,176)
    -- Valid signal propagation
    SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_V0 <= SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_s_tv_0 <= i_ffwd_src_unnamed_processfpga228_processfpga_out_stall_out and SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_backEN <= not (SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_v_s_0 <= SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_backEN and SE_i_smax221_processfpga_V0;
    -- Backward Stall generation
    SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_backStall <= not (SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_v_s_0);
    SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_backEN = "0") THEN
                SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_R_v_0 <= SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_R_v_0 and SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_s_tv_0;
            ELSE
                SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_R_v_0 <= SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_smax221_processfpga(STALLENABLE,162)
    -- Valid signal propagation
    SE_i_smax221_processfpga_V0 <= SE_i_smax221_processfpga_R_v_0;
    -- Stall signal propagation
    SE_i_smax221_processfpga_s_tv_0 <= SE_redist1_i_unnamed_processfpga1629_vt_select_31_b_1_0_backStall and SE_i_smax221_processfpga_R_v_0;
    -- Backward Enable generation
    SE_i_smax221_processfpga_backEN <= not (SE_i_smax221_processfpga_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_smax221_processfpga_v_s_0 <= SE_i_smax221_processfpga_backEN and SR_SE_i_smax221_processfpga_V;
    -- Backward Stall generation
    SE_i_smax221_processfpga_backStall <= not (SE_i_smax221_processfpga_backEN);
    SE_i_smax221_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_smax221_processfpga_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_smax221_processfpga_backEN = "0") THEN
                SE_i_smax221_processfpga_R_v_0 <= SE_i_smax221_processfpga_R_v_0 and SE_i_smax221_processfpga_s_tv_0;
            ELSE
                SE_i_smax221_processfpga_R_v_0 <= SE_i_smax221_processfpga_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_i_smax221_processfpga(STALLREG,237)
    SR_SE_i_smax221_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_smax221_processfpga_r_valid <= (others => '0');
            SR_SE_i_smax221_processfpga_r_data0 <= (others => '-');
            SR_SE_i_smax221_processfpga_r_data1 <= (others => '-');
            SR_SE_i_smax221_processfpga_r_data2 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_smax221_processfpga_r_valid <= SE_i_smax221_processfpga_backStall and (SR_SE_i_smax221_processfpga_r_valid or SR_SE_i_smax221_processfpga_i_valid);

            IF (SR_SE_i_smax221_processfpga_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_smax221_processfpga_r_data0 <= i_unnamed_processfpga1622_c;
                SR_SE_i_smax221_processfpga_r_data1 <= redist2_i_unnamed_processfpga1618_q_1_0_q;
                SR_SE_i_smax221_processfpga_r_data2 <= STD_LOGIC_VECTOR(bgTrunc_i_unnamed_processfpga1617_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_smax221_processfpga_i_valid <= SE_i_cmp91_i_i7311320_processfpga_V3;
    -- Stall signal propagation
    SR_SE_i_smax221_processfpga_backStall <= SR_SE_i_smax221_processfpga_r_valid or not (SR_SE_i_smax221_processfpga_i_valid);

    -- Valid
    SR_SE_i_smax221_processfpga_V <= SR_SE_i_smax221_processfpga_r_valid WHEN SR_SE_i_smax221_processfpga_r_valid = "1" ELSE SR_SE_i_smax221_processfpga_i_valid;

    -- Data0
    SR_SE_i_smax221_processfpga_D0 <= SR_SE_i_smax221_processfpga_r_data0 WHEN SR_SE_i_smax221_processfpga_r_valid = "1" ELSE i_unnamed_processfpga1622_c;
    -- Data1
    SR_SE_i_smax221_processfpga_D1 <= SR_SE_i_smax221_processfpga_r_data1 WHEN SR_SE_i_smax221_processfpga_r_valid = "1" ELSE redist2_i_unnamed_processfpga1618_q_1_0_q;
    -- Data2
    SR_SE_i_smax221_processfpga_D2 <= SR_SE_i_smax221_processfpga_r_data2 WHEN SR_SE_i_smax221_processfpga_r_valid = "1" ELSE bgTrunc_i_unnamed_processfpga1617_sel_x_b;

    -- bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg(STALLFIFO,232)
    bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_valid_in <= SE_out_i_ffwd_src_unnamed_processfpga225_processfpga_V0;
    bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_stall_in <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_backStall;
    bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_valid_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_valid_in(0);
    bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_stall_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_stall_in(0);
    bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_valid_out(0) <= bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_stall_out(0) <= bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 8,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_ffwd_src_unnamed_processfpga225_processfpga(STALLENABLE,153)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_processfpga225_processfpga_V0 <= SE_out_i_ffwd_src_unnamed_processfpga225_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_processfpga225_processfpga_backStall <= bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_stall_out or not (SE_out_i_ffwd_src_unnamed_processfpga225_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_processfpga225_processfpga_wireValid <= i_ffwd_src_unnamed_processfpga225_processfpga_out_valid_out;

    -- i_ffwd_src_unnamed_processfpga225_processfpga(BLACKBOX,54)@2
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_103_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga225_processfpga : i_ffwd_src_unnamed_processfpga225_processfpga1619
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_103_0 => redist3_i_select1241_processfpga_q_2_0_q,
        in_stall_in => SE_out_i_ffwd_src_unnamed_processfpga225_processfpga_backStall,
        in_valid_in => SE_i_cmp91_i_i7311320_processfpga_V2,
        out_intel_reserved_ffwd_103_0 => i_ffwd_src_unnamed_processfpga225_processfpga_out_intel_reserved_ffwd_103_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga225_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga225_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg(STALLFIFO,233)
    bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_valid_in <= SE_out_i_ffwd_src_unnamed_processfpga226_processfpga_V0;
    bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_stall_in <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_backStall;
    bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_valid_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_valid_in(0);
    bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_stall_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_stall_in(0);
    bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_valid_out(0) <= bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_stall_out(0) <= bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 8,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_ffwd_src_unnamed_processfpga226_processfpga(STALLENABLE,155)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_processfpga226_processfpga_V0 <= SE_out_i_ffwd_src_unnamed_processfpga226_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_processfpga226_processfpga_backStall <= bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_stall_out or not (SE_out_i_ffwd_src_unnamed_processfpga226_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_processfpga226_processfpga_wireValid <= i_ffwd_src_unnamed_processfpga226_processfpga_out_valid_out;

    -- bubble_join_i_ffwd_dst_unnamed_processfpga223_processfpga(BITJOIN,116)
    bubble_join_i_ffwd_dst_unnamed_processfpga223_processfpga_q <= i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0;

    -- bubble_select_i_ffwd_dst_unnamed_processfpga223_processfpga(BITSELECT,117)
    bubble_select_i_ffwd_dst_unnamed_processfpga223_processfpga_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_unnamed_processfpga223_processfpga_q(0 downto 0));

    -- redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0(REG,105)
    redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_backEN = "1") THEN
                redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_q <= STD_LOGIC_VECTOR(bubble_select_i_ffwd_dst_unnamed_processfpga223_processfpga_b);
            END IF;
        END IF;
    END PROCESS;

    -- SE_out_i_ffwd_dst_unnamed_processfpga223_processfpga(STALLENABLE,149)
    -- Valid signal propagation
    SE_out_i_ffwd_dst_unnamed_processfpga223_processfpga_V0 <= SE_out_i_ffwd_dst_unnamed_processfpga223_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_dst_unnamed_processfpga223_processfpga_backStall <= SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_backStall or not (SE_out_i_ffwd_dst_unnamed_processfpga223_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_dst_unnamed_processfpga223_processfpga_wireValid <= i_ffwd_dst_unnamed_processfpga223_processfpga_out_valid_out;

    -- SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0(STALLENABLE,185)
    -- Valid signal propagation
    SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_V0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_R_v_0;
    -- Stall signal propagation
    SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_s_tv_0 <= SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_backStall and SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_R_v_0;
    -- Backward Enable generation
    SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_backEN <= not (SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_v_s_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_backEN and SE_out_i_ffwd_dst_unnamed_processfpga223_processfpga_V0;
    -- Backward Stall generation
    SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_backStall <= not (SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_v_s_0);
    SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_backEN = "0") THEN
                SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_R_v_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_R_v_0 and SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_s_tv_0;
            ELSE
                SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_R_v_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1(STALLREG,238)
    SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_r_valid <= (others => '0');
            SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_r_valid <= SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_backStall and (SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_r_valid or SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_i_valid);

            IF (SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_r_data0 <= STD_LOGIC_VECTOR(redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_i_valid <= SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_V0;
    -- Stall signal propagation
    SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_backStall <= SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_r_valid or not (SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_i_valid);

    -- Valid
    SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_V <= SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_r_valid WHEN SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_r_valid = "1" ELSE SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_i_valid;

    SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_D0 <= SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_r_data0 WHEN SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_r_valid = "1" ELSE redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_0_q;

    -- redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1(REG,106)
    redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_backEN = "1") THEN
                redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_q <= STD_LOGIC_VECTOR(SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_unnamed_processfpga1615(LOGICAL,61)@2
    i_unnamed_processfpga1615_q <= redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_q xor VCC_q;

    -- i_unnamed_processfpga1621(LOGICAL,64)@2
    i_unnamed_processfpga1621_q <= i_cmp91_i_i7311320_processfpga_c and i_unnamed_processfpga1615_q;

    -- i_ffwd_src_unnamed_processfpga226_processfpga(BLACKBOX,55)@2
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_105_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga226_processfpga : i_ffwd_src_unnamed_processfpga226_processfpga1624
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_105_0 => i_unnamed_processfpga1621_q,
        in_stall_in => SE_out_i_ffwd_src_unnamed_processfpga226_processfpga_backStall,
        in_valid_in => SE_i_unnamed_processfpga1615_V0,
        out_intel_reserved_ffwd_105_0 => i_ffwd_src_unnamed_processfpga226_processfpga_out_intel_reserved_ffwd_105_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga226_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga226_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1(STALLENABLE,186)
    -- Valid signal propagation
    SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_V0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_R_v_0;
    -- Stall signal propagation
    SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_s_tv_0 <= SE_i_unnamed_processfpga1615_backStall and SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_R_v_0;
    -- Backward Enable generation
    SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_backEN <= not (SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_v_s_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_backEN and SR_SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_V;
    -- Backward Stall generation
    SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_backStall <= not (SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_backEN);
    SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_backEN = "0") THEN
                SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_R_v_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_R_v_0 and SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_s_tv_0;
            ELSE
                SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_R_v_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_unnamed_processfpga1615(STALLENABLE,163)
    -- Valid signal propagation
    SE_i_unnamed_processfpga1615_V0 <= SE_i_unnamed_processfpga1615_wireValid;
    -- Backward Stall generation
    SE_i_unnamed_processfpga1615_backStall <= i_ffwd_src_unnamed_processfpga226_processfpga_out_stall_out or not (SE_i_unnamed_processfpga1615_wireValid);
    -- Computing multiple Valid(s)
    SE_i_unnamed_processfpga1615_and0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0_2_1_V0;
    SE_i_unnamed_processfpga1615_wireValid <= SE_i_cmp91_i_i7311320_processfpga_V0 and SE_i_unnamed_processfpga1615_and0;

    -- SE_i_cmp91_i_i7311320_processfpga(STALLENABLE,143)
    -- Valid signal propagation
    SE_i_cmp91_i_i7311320_processfpga_V0 <= SE_i_cmp91_i_i7311320_processfpga_R_v_0;
    SE_i_cmp91_i_i7311320_processfpga_V1 <= SE_i_cmp91_i_i7311320_processfpga_R_v_1;
    SE_i_cmp91_i_i7311320_processfpga_V2 <= SE_i_cmp91_i_i7311320_processfpga_R_v_2;
    SE_i_cmp91_i_i7311320_processfpga_V3 <= SE_i_cmp91_i_i7311320_processfpga_R_v_3;
    -- Stall signal propagation
    SE_i_cmp91_i_i7311320_processfpga_s_tv_0 <= SE_i_unnamed_processfpga1615_backStall and SE_i_cmp91_i_i7311320_processfpga_R_v_0;
    SE_i_cmp91_i_i7311320_processfpga_s_tv_1 <= SR_SE_i_phi_decision1594_xor_or_processfpga_backStall and SE_i_cmp91_i_i7311320_processfpga_R_v_1;
    SE_i_cmp91_i_i7311320_processfpga_s_tv_2 <= i_ffwd_src_unnamed_processfpga225_processfpga_out_stall_out and SE_i_cmp91_i_i7311320_processfpga_R_v_2;
    SE_i_cmp91_i_i7311320_processfpga_s_tv_3 <= SR_SE_i_smax221_processfpga_backStall and SE_i_cmp91_i_i7311320_processfpga_R_v_3;
    -- Backward Enable generation
    SE_i_cmp91_i_i7311320_processfpga_or0 <= SE_i_cmp91_i_i7311320_processfpga_s_tv_0;
    SE_i_cmp91_i_i7311320_processfpga_or1 <= SE_i_cmp91_i_i7311320_processfpga_s_tv_1 or SE_i_cmp91_i_i7311320_processfpga_or0;
    SE_i_cmp91_i_i7311320_processfpga_or2 <= SE_i_cmp91_i_i7311320_processfpga_s_tv_2 or SE_i_cmp91_i_i7311320_processfpga_or1;
    SE_i_cmp91_i_i7311320_processfpga_backEN <= not (SE_i_cmp91_i_i7311320_processfpga_s_tv_3 or SE_i_cmp91_i_i7311320_processfpga_or2);
    -- Determine whether to write valid data into the first register stage
    SE_i_cmp91_i_i7311320_processfpga_v_s_0 <= SE_i_cmp91_i_i7311320_processfpga_backEN and SR_SE_i_cmp91_i_i7311320_processfpga_V;
    -- Backward Stall generation
    SE_i_cmp91_i_i7311320_processfpga_backStall <= not (SE_i_cmp91_i_i7311320_processfpga_backEN);
    SE_i_cmp91_i_i7311320_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_cmp91_i_i7311320_processfpga_R_v_0 <= (others => '0');
            SE_i_cmp91_i_i7311320_processfpga_R_v_1 <= (others => '0');
            SE_i_cmp91_i_i7311320_processfpga_R_v_2 <= (others => '0');
            SE_i_cmp91_i_i7311320_processfpga_R_v_3 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp91_i_i7311320_processfpga_backEN = "0") THEN
                SE_i_cmp91_i_i7311320_processfpga_R_v_0 <= SE_i_cmp91_i_i7311320_processfpga_R_v_0 and SE_i_cmp91_i_i7311320_processfpga_s_tv_0;
            ELSE
                SE_i_cmp91_i_i7311320_processfpga_R_v_0 <= SE_i_cmp91_i_i7311320_processfpga_v_s_0;
            END IF;

            IF (SE_i_cmp91_i_i7311320_processfpga_backEN = "0") THEN
                SE_i_cmp91_i_i7311320_processfpga_R_v_1 <= SE_i_cmp91_i_i7311320_processfpga_R_v_1 and SE_i_cmp91_i_i7311320_processfpga_s_tv_1;
            ELSE
                SE_i_cmp91_i_i7311320_processfpga_R_v_1 <= SE_i_cmp91_i_i7311320_processfpga_v_s_0;
            END IF;

            IF (SE_i_cmp91_i_i7311320_processfpga_backEN = "0") THEN
                SE_i_cmp91_i_i7311320_processfpga_R_v_2 <= SE_i_cmp91_i_i7311320_processfpga_R_v_2 and SE_i_cmp91_i_i7311320_processfpga_s_tv_2;
            ELSE
                SE_i_cmp91_i_i7311320_processfpga_R_v_2 <= SE_i_cmp91_i_i7311320_processfpga_v_s_0;
            END IF;

            IF (SE_i_cmp91_i_i7311320_processfpga_backEN = "0") THEN
                SE_i_cmp91_i_i7311320_processfpga_R_v_3 <= SE_i_cmp91_i_i7311320_processfpga_R_v_3 and SE_i_cmp91_i_i7311320_processfpga_s_tv_3;
            ELSE
                SE_i_cmp91_i_i7311320_processfpga_R_v_3 <= SE_i_cmp91_i_i7311320_processfpga_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- i_phi_decision1594_xor_or_processfpga(LOGICAL,58)@2 + 1
    i_phi_decision1594_xor_or_processfpga_qi <= SR_SE_i_phi_decision1594_xor_or_processfpga_D0 or SR_SE_i_phi_decision1594_xor_or_processfpga_D1;
    i_phi_decision1594_xor_or_processfpga_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_phi_decision1594_xor_or_processfpga_qi, xout => i_phi_decision1594_xor_or_processfpga_q, ena => SE_i_phi_decision1594_xor_or_processfpga_backEN(0), clk => clock, aclr => resetn );

    -- redist4_i_phi_decision1594_xor_or_processfpga_q_7_0(REG,99)
    redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_backEN = "1") THEN
                redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_q <= STD_LOGIC_VECTOR(SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_i_phi_decision1594_xor_or_processfpga_q_7_1(REG,100)
    redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_backEN = "1") THEN
                redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_q <= STD_LOGIC_VECTOR(redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_i_phi_decision1594_xor_or_processfpga_q_7_2(REG,101)
    redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_backEN = "1") THEN
                redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_q <= STD_LOGIC_VECTOR(SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_i_phi_decision1594_xor_or_processfpga_q_7_3(REG,102)
    redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_backEN = "1") THEN
                redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_q <= STD_LOGIC_VECTOR(redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_i_phi_decision1594_xor_or_processfpga_q_7_4(REG,103)
    redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_backEN = "1") THEN
                redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_q <= STD_LOGIC_VECTOR(SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_i_phi_decision1594_xor_or_processfpga_q_7_5(REG,104)
    redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_backEN = "1") THEN
                redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_q <= STD_LOGIC_VECTOR(redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_q);
            END IF;
        END IF;
    END PROCESS;

    -- i_ffwd_src_unnamed_processfpga227_processfpga(BLACKBOX,56)@9
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_106_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga227_processfpga : i_ffwd_src_unnamed_processfpga227_processfpga1626
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_106_0 => redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_q,
        in_stall_in => SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_backStall,
        in_valid_in => SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_V0,
        out_intel_reserved_ffwd_106_0 => i_ffwd_src_unnamed_processfpga227_processfpga_out_intel_reserved_ffwd_106_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga227_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga227_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5(STALLENABLE,184)
    -- Valid signal propagation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_V0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_R_v_0;
    -- Stall signal propagation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_s_tv_0 <= i_ffwd_src_unnamed_processfpga227_processfpga_out_stall_out and SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_R_v_0;
    -- Backward Enable generation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_backEN <= not (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_v_s_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_backEN and SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_V0;
    -- Backward Stall generation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_backStall <= not (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_v_s_0);
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_backEN = "0") THEN
                SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_R_v_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_R_v_0 and SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_s_tv_0;
            ELSE
                SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_R_v_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4(STALLENABLE,183)
    -- Valid signal propagation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_V0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_R_v_0;
    -- Stall signal propagation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_s_tv_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_5_backStall and SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_R_v_0;
    -- Backward Enable generation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_backEN <= not (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_v_s_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_backEN and SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_V;
    -- Backward Stall generation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_backStall <= not (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_backEN);
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_backEN = "0") THEN
                SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_R_v_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_R_v_0 and SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_s_tv_0;
            ELSE
                SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_R_v_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4(STALLREG,242)
    SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_r_valid <= (others => '0');
            SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_r_valid <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_backStall and (SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_r_valid or SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_i_valid);

            IF (SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_r_data0 <= STD_LOGIC_VECTOR(redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_i_valid <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_V0;
    -- Stall signal propagation
    SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_backStall <= SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_r_valid or not (SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_i_valid);

    -- Valid
    SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_V <= SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_r_valid WHEN SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_r_valid = "1" ELSE SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_i_valid;

    SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_D0 <= SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_r_data0 WHEN SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_r_valid = "1" ELSE redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_q;

    -- SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3(STALLENABLE,182)
    -- Valid signal propagation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_V0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_R_v_0;
    -- Stall signal propagation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_s_tv_0 <= SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_4_backStall and SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_R_v_0;
    -- Backward Enable generation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_backEN <= not (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_v_s_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_backEN and SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_V0;
    -- Backward Stall generation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_backStall <= not (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_v_s_0);
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_backEN = "0") THEN
                SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_R_v_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_R_v_0 and SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_s_tv_0;
            ELSE
                SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_R_v_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2(STALLENABLE,181)
    -- Valid signal propagation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_V0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_R_v_0;
    -- Stall signal propagation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_s_tv_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_3_backStall and SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_R_v_0;
    -- Backward Enable generation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_backEN <= not (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_v_s_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_backEN and SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_V;
    -- Backward Stall generation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_backStall <= not (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_backEN);
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_backEN = "0") THEN
                SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_R_v_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_R_v_0 and SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_s_tv_0;
            ELSE
                SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_R_v_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2(STALLREG,241)
    SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_r_valid <= (others => '0');
            SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_r_valid <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_backStall and (SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_r_valid or SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_i_valid);

            IF (SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_r_data0 <= STD_LOGIC_VECTOR(redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_i_valid <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_V0;
    -- Stall signal propagation
    SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_backStall <= SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_r_valid or not (SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_i_valid);

    -- Valid
    SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_V <= SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_r_valid WHEN SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_r_valid = "1" ELSE SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_i_valid;

    SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_D0 <= SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_r_data0 WHEN SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_r_valid = "1" ELSE redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_q;

    -- SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1(STALLENABLE,180)
    -- Valid signal propagation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_V0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_R_v_0;
    -- Stall signal propagation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_s_tv_0 <= SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_2_backStall and SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_R_v_0;
    -- Backward Enable generation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_backEN <= not (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_v_s_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_backEN and SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_V0;
    -- Backward Stall generation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_backStall <= not (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_v_s_0);
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_backEN = "0") THEN
                SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_R_v_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_R_v_0 and SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_s_tv_0;
            ELSE
                SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_R_v_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0(STALLENABLE,179)
    -- Valid signal propagation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_V0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_R_v_0;
    -- Stall signal propagation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_s_tv_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_1_backStall and SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_R_v_0;
    -- Backward Enable generation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_backEN <= not (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_v_s_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_backEN and SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_V;
    -- Backward Stall generation
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_backStall <= not (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_backEN);
    SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_backEN = "0") THEN
                SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_R_v_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_R_v_0 and SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_s_tv_0;
            ELSE
                SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_R_v_0 <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0(STALLREG,240)
    SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_r_valid <= (others => '0');
            SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_r_valid <= SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_backStall and (SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_r_valid or SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_i_valid);

            IF (SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_r_data0 <= STD_LOGIC_VECTOR(i_phi_decision1594_xor_or_processfpga_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_i_valid <= SE_i_phi_decision1594_xor_or_processfpga_V0;
    -- Stall signal propagation
    SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_backStall <= SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_r_valid or not (SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_i_valid);

    -- Valid
    SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_V <= SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_r_valid WHEN SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_r_valid = "1" ELSE SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_i_valid;

    SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_D0 <= SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_r_data0 WHEN SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_r_valid = "1" ELSE i_phi_decision1594_xor_or_processfpga_q;

    -- SE_i_phi_decision1594_xor_or_processfpga(STALLENABLE,160)
    -- Valid signal propagation
    SE_i_phi_decision1594_xor_or_processfpga_V0 <= SE_i_phi_decision1594_xor_or_processfpga_R_v_0;
    -- Stall signal propagation
    SE_i_phi_decision1594_xor_or_processfpga_s_tv_0 <= SR_SE_redist4_i_phi_decision1594_xor_or_processfpga_q_7_0_backStall and SE_i_phi_decision1594_xor_or_processfpga_R_v_0;
    -- Backward Enable generation
    SE_i_phi_decision1594_xor_or_processfpga_backEN <= not (SE_i_phi_decision1594_xor_or_processfpga_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_phi_decision1594_xor_or_processfpga_v_s_0 <= SE_i_phi_decision1594_xor_or_processfpga_backEN and SR_SE_i_phi_decision1594_xor_or_processfpga_V;
    -- Backward Stall generation
    SE_i_phi_decision1594_xor_or_processfpga_backStall <= not (SE_i_phi_decision1594_xor_or_processfpga_backEN);
    SE_i_phi_decision1594_xor_or_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_phi_decision1594_xor_or_processfpga_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_phi_decision1594_xor_or_processfpga_backEN = "0") THEN
                SE_i_phi_decision1594_xor_or_processfpga_R_v_0 <= SE_i_phi_decision1594_xor_or_processfpga_R_v_0 and SE_i_phi_decision1594_xor_or_processfpga_s_tv_0;
            ELSE
                SE_i_phi_decision1594_xor_or_processfpga_R_v_0 <= SE_i_phi_decision1594_xor_or_processfpga_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_i_phi_decision1594_xor_or_processfpga(STALLREG,239)
    SR_SE_i_phi_decision1594_xor_or_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_phi_decision1594_xor_or_processfpga_r_valid <= (others => '0');
            SR_SE_i_phi_decision1594_xor_or_processfpga_r_data0 <= (others => '-');
            SR_SE_i_phi_decision1594_xor_or_processfpga_r_data1 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_phi_decision1594_xor_or_processfpga_r_valid <= SE_i_phi_decision1594_xor_or_processfpga_backStall and (SR_SE_i_phi_decision1594_xor_or_processfpga_r_valid or SR_SE_i_phi_decision1594_xor_or_processfpga_i_valid);

            IF (SR_SE_i_phi_decision1594_xor_or_processfpga_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_phi_decision1594_xor_or_processfpga_r_data0 <= bubble_select_i_ffwd_dst_unnamed_processfpga224_processfpga_b;
                SR_SE_i_phi_decision1594_xor_or_processfpga_r_data1 <= i_cmp91_i_i7311320_not_processfpga_q;
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_phi_decision1594_xor_or_processfpga_and0 <= SE_i_cmp91_i_i7311320_processfpga_V1;
    SR_SE_i_phi_decision1594_xor_or_processfpga_i_valid <= SE_out_i_ffwd_dst_unnamed_processfpga224_processfpga_V0 and SR_SE_i_phi_decision1594_xor_or_processfpga_and0;
    -- Stall signal propagation
    SR_SE_i_phi_decision1594_xor_or_processfpga_backStall <= SR_SE_i_phi_decision1594_xor_or_processfpga_r_valid or not (SR_SE_i_phi_decision1594_xor_or_processfpga_i_valid);

    -- Valid
    SR_SE_i_phi_decision1594_xor_or_processfpga_V <= SR_SE_i_phi_decision1594_xor_or_processfpga_r_valid WHEN SR_SE_i_phi_decision1594_xor_or_processfpga_r_valid = "1" ELSE SR_SE_i_phi_decision1594_xor_or_processfpga_i_valid;

    -- Data0
    SR_SE_i_phi_decision1594_xor_or_processfpga_D0 <= SR_SE_i_phi_decision1594_xor_or_processfpga_r_data0 WHEN SR_SE_i_phi_decision1594_xor_or_processfpga_r_valid = "1" ELSE bubble_select_i_ffwd_dst_unnamed_processfpga224_processfpga_b;
    -- Data1
    SR_SE_i_phi_decision1594_xor_or_processfpga_D1 <= SR_SE_i_phi_decision1594_xor_or_processfpga_r_data1 WHEN SR_SE_i_phi_decision1594_xor_or_processfpga_r_valid = "1" ELSE i_cmp91_i_i7311320_not_processfpga_q;

    -- SE_out_i_ffwd_dst_unnamed_processfpga224_processfpga(STALLENABLE,151)
    -- Valid signal propagation
    SE_out_i_ffwd_dst_unnamed_processfpga224_processfpga_V0 <= SE_out_i_ffwd_dst_unnamed_processfpga224_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_dst_unnamed_processfpga224_processfpga_backStall <= SR_SE_i_phi_decision1594_xor_or_processfpga_backStall or not (SE_out_i_ffwd_dst_unnamed_processfpga224_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_dst_unnamed_processfpga224_processfpga_wireValid <= i_ffwd_dst_unnamed_processfpga224_processfpga_out_valid_out;

    -- i_ffwd_dst_unnamed_processfpga224_processfpga(BLACKBOX,53)@2
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_unnamed_processfpga224_processfpga : i_ffwd_dst_unnamed_processfpga224_processfpga1613
    PORT MAP (
        in_intel_reserved_ffwd_98_0 => in_intel_reserved_ffwd_98_0,
        in_stall_in => SE_out_i_ffwd_dst_unnamed_processfpga224_processfpga_backStall,
        in_valid_in => SE_out_bubble_out_stall_entry_aunroll_4_V0,
        out_dest_data_out_98_0 => i_ffwd_dst_unnamed_processfpga224_processfpga_out_dest_data_out_98_0,
        out_stall_out => i_ffwd_dst_unnamed_processfpga224_processfpga_out_stall_out,
        out_valid_out => i_ffwd_dst_unnamed_processfpga224_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_stall_entry_aunroll_4(STALLENABLE,225)
    -- Valid signal propagation
    SE_out_bubble_out_stall_entry_aunroll_4_V0 <= SE_out_bubble_out_stall_entry_aunroll_4_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_stall_entry_aunroll_4_backStall <= i_ffwd_dst_unnamed_processfpga224_processfpga_out_stall_out or not (SE_out_bubble_out_stall_entry_aunroll_4_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_stall_entry_aunroll_4_wireValid <= bubble_out_stall_entry_aunroll_4_reg_valid_out;

    -- bubble_out_stall_entry_aunroll_4_reg(STALLFIFO,235)
    bubble_out_stall_entry_aunroll_4_reg_valid_in <= SE_stall_entry_aunroll_V4;
    bubble_out_stall_entry_aunroll_4_reg_stall_in <= SE_out_bubble_out_stall_entry_aunroll_4_backStall;
    bubble_out_stall_entry_aunroll_4_reg_valid_in_bitsignaltemp <= bubble_out_stall_entry_aunroll_4_reg_valid_in(0);
    bubble_out_stall_entry_aunroll_4_reg_stall_in_bitsignaltemp <= bubble_out_stall_entry_aunroll_4_reg_stall_in(0);
    bubble_out_stall_entry_aunroll_4_reg_valid_out(0) <= bubble_out_stall_entry_aunroll_4_reg_valid_out_bitsignaltemp;
    bubble_out_stall_entry_aunroll_4_reg_stall_out(0) <= bubble_out_stall_entry_aunroll_4_reg_stall_out_bitsignaltemp;
    thebubble_out_stall_entry_aunroll_4_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 3,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_stall_entry_aunroll_4_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_stall_entry_aunroll_4_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_stall_entry_aunroll_4_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_stall_entry_aunroll_4_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga223_processfpga(BLACKBOX,52)@0
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_unnamed_processfpga223_processfpga : i_ffwd_dst_unnamed_processfpga223_processfpga1611
    PORT MAP (
        in_intel_reserved_ffwd_98_0 => in_intel_reserved_ffwd_98_0,
        in_stall_in => SE_out_i_ffwd_dst_unnamed_processfpga223_processfpga_backStall,
        in_valid_in => SE_stall_entry_aunroll_V3,
        out_dest_data_out_98_0 => i_ffwd_dst_unnamed_processfpga223_processfpga_out_dest_data_out_98_0,
        out_stall_out => i_ffwd_dst_unnamed_processfpga223_processfpga_out_stall_out,
        out_valid_out => i_ffwd_dst_unnamed_processfpga223_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga215_processfpga(BLACKBOX,51)@0
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_unnamed_processfpga215_processfpga : i_ffwd_dst_unnamed_processfpga215_processfpga1585
    PORT MAP (
        in_intel_reserved_ffwd_99_0 => in_intel_reserved_ffwd_99_0,
        in_stall_in => SE_out_i_ffwd_dst_unnamed_processfpga215_processfpga_backStall,
        in_valid_in => SE_stall_entry_aunroll_V2,
        out_dest_data_out_99_0 => i_ffwd_dst_unnamed_processfpga215_processfpga_out_dest_data_out_99_0,
        out_stall_out => i_ffwd_dst_unnamed_processfpga215_processfpga_out_stall_out,
        out_valid_out => i_ffwd_dst_unnamed_processfpga215_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_reduction_processfpga_28499_processfpga(BLACKBOX,50)@0
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_reduction_processfpga_28499_processfpga : i_ffwd_dst_reduction_processfpga_28499_processfpga1587
    PORT MAP (
        in_intel_reserved_ffwd_101_0 => in_intel_reserved_ffwd_101_0,
        in_stall_in => SE_out_i_ffwd_dst_reduction_processfpga_28499_processfpga_backStall,
        in_valid_in => SE_stall_entry_aunroll_V1,
        out_dest_data_out_101_0 => i_ffwd_dst_reduction_processfpga_28499_processfpga_out_dest_data_out_101_0,
        out_stall_out => i_ffwd_dst_reduction_processfpga_28499_processfpga_out_stall_out,
        out_valid_out => i_ffwd_dst_reduction_processfpga_28499_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry_aunroll(STALLENABLE,172)
    SE_stall_entry_aunroll_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_stall_entry_aunroll_fromReg0 <= (others => '0');
            SE_stall_entry_aunroll_fromReg1 <= (others => '0');
            SE_stall_entry_aunroll_fromReg2 <= (others => '0');
            SE_stall_entry_aunroll_fromReg3 <= (others => '0');
            SE_stall_entry_aunroll_fromReg4 <= (others => '0');
            SE_stall_entry_aunroll_fromReg5 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_stall_entry_aunroll_fromReg0 <= SE_stall_entry_aunroll_toReg0;
            -- Succesor 1
            SE_stall_entry_aunroll_fromReg1 <= SE_stall_entry_aunroll_toReg1;
            -- Succesor 2
            SE_stall_entry_aunroll_fromReg2 <= SE_stall_entry_aunroll_toReg2;
            -- Succesor 3
            SE_stall_entry_aunroll_fromReg3 <= SE_stall_entry_aunroll_toReg3;
            -- Succesor 4
            SE_stall_entry_aunroll_fromReg4 <= SE_stall_entry_aunroll_toReg4;
            -- Succesor 5
            SE_stall_entry_aunroll_fromReg5 <= SE_stall_entry_aunroll_toReg5;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_stall_entry_aunroll_consumed0 <= (not (i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_o_stall) and SE_stall_entry_aunroll_wireValid) or SE_stall_entry_aunroll_fromReg0;
    SE_stall_entry_aunroll_consumed1 <= (not (i_ffwd_dst_reduction_processfpga_28499_processfpga_out_stall_out) and SE_stall_entry_aunroll_wireValid) or SE_stall_entry_aunroll_fromReg1;
    SE_stall_entry_aunroll_consumed2 <= (not (i_ffwd_dst_unnamed_processfpga215_processfpga_out_stall_out) and SE_stall_entry_aunroll_wireValid) or SE_stall_entry_aunroll_fromReg2;
    SE_stall_entry_aunroll_consumed3 <= (not (i_ffwd_dst_unnamed_processfpga223_processfpga_out_stall_out) and SE_stall_entry_aunroll_wireValid) or SE_stall_entry_aunroll_fromReg3;
    SE_stall_entry_aunroll_consumed4 <= (not (bubble_out_stall_entry_aunroll_4_reg_stall_out) and SE_stall_entry_aunroll_wireValid) or SE_stall_entry_aunroll_fromReg4;
    SE_stall_entry_aunroll_consumed5 <= (not (redist0_stall_entry_aunroll_o6_9_fifo_stall_out) and SE_stall_entry_aunroll_wireValid) or SE_stall_entry_aunroll_fromReg5;
    -- Consuming
    SE_stall_entry_aunroll_StallValid <= SE_stall_entry_aunroll_backStall and SE_stall_entry_aunroll_wireValid;
    SE_stall_entry_aunroll_toReg0 <= SE_stall_entry_aunroll_StallValid and SE_stall_entry_aunroll_consumed0;
    SE_stall_entry_aunroll_toReg1 <= SE_stall_entry_aunroll_StallValid and SE_stall_entry_aunroll_consumed1;
    SE_stall_entry_aunroll_toReg2 <= SE_stall_entry_aunroll_StallValid and SE_stall_entry_aunroll_consumed2;
    SE_stall_entry_aunroll_toReg3 <= SE_stall_entry_aunroll_StallValid and SE_stall_entry_aunroll_consumed3;
    SE_stall_entry_aunroll_toReg4 <= SE_stall_entry_aunroll_StallValid and SE_stall_entry_aunroll_consumed4;
    SE_stall_entry_aunroll_toReg5 <= SE_stall_entry_aunroll_StallValid and SE_stall_entry_aunroll_consumed5;
    -- Backward Stall generation
    SE_stall_entry_aunroll_or0 <= SE_stall_entry_aunroll_consumed0;
    SE_stall_entry_aunroll_or1 <= SE_stall_entry_aunroll_consumed1 and SE_stall_entry_aunroll_or0;
    SE_stall_entry_aunroll_or2 <= SE_stall_entry_aunroll_consumed2 and SE_stall_entry_aunroll_or1;
    SE_stall_entry_aunroll_or3 <= SE_stall_entry_aunroll_consumed3 and SE_stall_entry_aunroll_or2;
    SE_stall_entry_aunroll_or4 <= SE_stall_entry_aunroll_consumed4 and SE_stall_entry_aunroll_or3;
    SE_stall_entry_aunroll_wireStall <= not (SE_stall_entry_aunroll_consumed5 and SE_stall_entry_aunroll_or4);
    SE_stall_entry_aunroll_backStall <= SE_stall_entry_aunroll_wireStall;
    -- Valid signal propagation
    SE_stall_entry_aunroll_V0 <= SE_stall_entry_aunroll_wireValid and not (SE_stall_entry_aunroll_fromReg0);
    SE_stall_entry_aunroll_V1 <= SE_stall_entry_aunroll_wireValid and not (SE_stall_entry_aunroll_fromReg1);
    SE_stall_entry_aunroll_V2 <= SE_stall_entry_aunroll_wireValid and not (SE_stall_entry_aunroll_fromReg2);
    SE_stall_entry_aunroll_V3 <= SE_stall_entry_aunroll_wireValid and not (SE_stall_entry_aunroll_fromReg3);
    SE_stall_entry_aunroll_V4 <= SE_stall_entry_aunroll_wireValid and not (SE_stall_entry_aunroll_fromReg4);
    SE_stall_entry_aunroll_V5 <= SE_stall_entry_aunroll_wireValid and not (SE_stall_entry_aunroll_fromReg5);
    -- Computing multiple Valid(s)
    SE_stall_entry_aunroll_wireValid <= in_valid_in;

    -- SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1(STALLENABLE,213)
    -- Valid signal propagation
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_V0 <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_backStall <= in_stall_in or not (SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_and0 <= bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_reg_valid_out;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_and1 <= bubble_out_i_ffwd_src_unnamed_processfpga226_processfpga_1_reg_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_and0;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_and2 <= bubble_out_i_ffwd_src_unnamed_processfpga225_processfpga_1_reg_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_and1;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_and3 <= redist0_stall_entry_aunroll_o6_9_fifo_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_and2;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_and4 <= i_ffwd_src_unnamed_processfpga227_processfpga_out_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_and3;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_wireValid <= i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_o_valid and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_and4;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x(BLACKBOX,35)@0
    -- in in_i_stall@20000000
    -- out out_c0_exit987_0@9
    -- out out_intel_reserved_ffwd_104_0@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@9
    -- out out_unnamed_processFPGA220_avm_address@20000000
    -- out out_unnamed_processFPGA220_avm_burstcount@20000000
    -- out out_unnamed_processFPGA220_avm_byteenable@20000000
    -- out out_unnamed_processFPGA220_avm_enable@20000000
    -- out out_unnamed_processFPGA220_avm_read@20000000
    -- out out_unnamed_processFPGA220_avm_write@20000000
    -- out out_unnamed_processFPGA220_avm_writedata@20000000
    thei_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x : i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga
    PORT MAP (
        in_unnamed_processFPGA216_0 => GND_q,
        in_flush => in_flush,
        in_i_stall => SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_backStall,
        in_i_valid => SE_stall_entry_aunroll_V0,
        in_intel_reserved_ffwd_102_0 => in_intel_reserved_ffwd_102_0,
        in_intel_reserved_ffwd_94_0 => in_intel_reserved_ffwd_94_0,
        in_intel_reserved_ffwd_95_0 => in_intel_reserved_ffwd_95_0,
        in_intel_reserved_ffwd_98_0 => in_intel_reserved_ffwd_98_0,
        in_intel_reserved_ffwd_99_0 => in_intel_reserved_ffwd_99_0,
        in_localInput => in_localInput,
        in_unnamed_processFPGA220_avm_readdata => in_unnamed_processFPGA220_avm_readdata,
        in_unnamed_processFPGA220_avm_readdatavalid => in_unnamed_processFPGA220_avm_readdatavalid,
        in_unnamed_processFPGA220_avm_waitrequest => in_unnamed_processFPGA220_avm_waitrequest,
        in_unnamed_processFPGA220_avm_writeack => in_unnamed_processFPGA220_avm_writeack,
        out_intel_reserved_ffwd_104_0 => i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_intel_reserved_ffwd_104_0,
        out_o_stall => i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_o_valid,
        out_unnamed_processFPGA220_avm_address => i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_address,
        out_unnamed_processFPGA220_avm_burstcount => i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_burstcount,
        out_unnamed_processFPGA220_avm_byteenable => i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_byteenable,
        out_unnamed_processFPGA220_avm_enable => i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_enable,
        out_unnamed_processFPGA220_avm_read => i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_read,
        out_unnamed_processFPGA220_avm_write => i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_write,
        out_unnamed_processFPGA220_avm_writedata => i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_regfree_osync_x(GPOUT,10)
    out_intel_reserved_ffwd_104_0 <= i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_intel_reserved_ffwd_104_0;

    -- bubble_join_redist0_stall_entry_aunroll_o6_9_fifo(BITJOIN,134)
    bubble_join_redist0_stall_entry_aunroll_o6_9_fifo_q <= redist0_stall_entry_aunroll_o6_9_fifo_data_out;

    -- bubble_select_redist0_stall_entry_aunroll_o6_9_fifo(BITSELECT,135)
    bubble_select_redist0_stall_entry_aunroll_o6_9_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist0_stall_entry_aunroll_o6_9_fifo_q(31 downto 0));

    -- dupName_0_sync_out_x(GPOUT,11)@9
    out_c0_exe2985 <= bubble_select_redist0_stall_entry_aunroll_o6_9_fifo_b;
    out_valid_out <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga228_processfpga_1_V0;

    -- dupName_1_regfree_osync_x(GPOUT,15)
    out_intel_reserved_ffwd_105_0 <= i_ffwd_src_unnamed_processfpga226_processfpga_out_intel_reserved_ffwd_105_0;

    -- dupName_2_regfree_osync_x(GPOUT,19)
    out_intel_reserved_ffwd_106_0 <= i_ffwd_src_unnamed_processfpga227_processfpga_out_intel_reserved_ffwd_106_0;

    -- dupName_3_regfree_osync_x(GPOUT,23)
    out_intel_reserved_ffwd_107_0 <= i_ffwd_src_unnamed_processfpga228_processfpga_out_intel_reserved_ffwd_107_0;

    -- ext_sig_sync_out(GPOUT,47)
    out_unnamed_processFPGA220_avm_address <= i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_address;
    out_unnamed_processFPGA220_avm_enable <= i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_enable;
    out_unnamed_processFPGA220_avm_read <= i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_read;
    out_unnamed_processFPGA220_avm_write <= i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_write;
    out_unnamed_processFPGA220_avm_writedata <= i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_writedata;
    out_unnamed_processFPGA220_avm_byteenable <= i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_byteenable;
    out_unnamed_processFPGA220_avm_burstcount <= i_sfc_c0_for_end_i53_i_loopexit_loopexit_processfpga_c0_enter986_processfpga_aunroll_x_out_unnamed_processFPGA220_avm_burstcount;

    -- regfree_osync(GPOUT,77)
    out_intel_reserved_ffwd_103_0 <= i_ffwd_src_unnamed_processfpga225_processfpga_out_intel_reserved_ffwd_103_0;

    -- sync_out(GPOUT,83)@0
    out_stall_out <= SE_stall_entry_aunroll_backStall;

END normal;
