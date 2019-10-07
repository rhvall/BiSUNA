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

-- VHDL created from i_sfc_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga
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

entity i_sfc_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga is
    port (
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA234_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit1001_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_104_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_26_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_6_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_26_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        in_intel_reserved_ffwd_93_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_26_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_94_0 : in std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_26_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_95_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_26_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_98_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_26_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_27_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_localOutput : in std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_27_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_26_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_27_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        in_memdep_26_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_27_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_26_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_27_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_26_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_27_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_27_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_27_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_27_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_28_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_27_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_28_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_27_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_28_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        in_memdep_28_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_28_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_28_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_28_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_28_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_28_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_28_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_28_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        in_normls_load477_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load477_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load477_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load477_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load477_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load477_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        in_normls_load477_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load477_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load482_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load477_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load482_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load477_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load482_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load477_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load482_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load482_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load482_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load482_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load482_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load482_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load482_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load482_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_26_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_i_stall : in std_logic_vector(0 downto 0);  -- ufix1
        out_o_stall : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga;

architecture normal of i_sfc_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_sfc_exit_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_exit1001_processfpga1740 is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_accepted : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_entry : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_104_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_93_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_94_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_95_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_98_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_localNeurons : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_localOutput : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memdep_26_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_26_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_26_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_26_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_27_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_27_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_27_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_27_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_28_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_memdep_28_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_28_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_28_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load477_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load477_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load477_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load477_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load482_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load482_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load482_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load482_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA243_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_26_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_26_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_26_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_26_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_26_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_26_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_26_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_27_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_27_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_27_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_27_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_27_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_27_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_27_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_28_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_28_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_28_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_memdep_28_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_28_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_28_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_28_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_normls_load477_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load477_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load477_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load477_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load477_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load477_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load477_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load482_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load482_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load482_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load482_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load482_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load482_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load482_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_exit1001_processfpga_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_exit1001_processfpga_aunroll_x_out_stall_entry : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_exit1001_processfpga_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal input_accepted_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x(BLACKBOX,67)@0
    -- out out_unnamed_processFPGA243_0@10
    -- out out_memdep_26_avm_address@20000000
    -- out out_memdep_26_avm_burstcount@20000000
    -- out out_memdep_26_avm_byteenable@20000000
    -- out out_memdep_26_avm_enable@20000000
    -- out out_memdep_26_avm_read@20000000
    -- out out_memdep_26_avm_write@20000000
    -- out out_memdep_26_avm_writedata@20000000
    -- out out_memdep_27_avm_address@20000000
    -- out out_memdep_27_avm_burstcount@20000000
    -- out out_memdep_27_avm_byteenable@20000000
    -- out out_memdep_27_avm_enable@20000000
    -- out out_memdep_27_avm_read@20000000
    -- out out_memdep_27_avm_write@20000000
    -- out out_memdep_27_avm_writedata@20000000
    -- out out_memdep_28_avm_address@20000000
    -- out out_memdep_28_avm_burstcount@20000000
    -- out out_memdep_28_avm_byteenable@20000000
    -- out out_memdep_28_avm_enable@20000000
    -- out out_memdep_28_avm_read@20000000
    -- out out_memdep_28_avm_write@20000000
    -- out out_memdep_28_avm_writedata@20000000
    -- out out_normls_load477_avm_address@20000000
    -- out out_normls_load477_avm_burstcount@20000000
    -- out out_normls_load477_avm_byteenable@20000000
    -- out out_normls_load477_avm_enable@20000000
    -- out out_normls_load477_avm_read@20000000
    -- out out_normls_load477_avm_write@20000000
    -- out out_normls_load477_avm_writedata@20000000
    -- out out_normls_load482_avm_address@20000000
    -- out out_normls_load482_avm_burstcount@20000000
    -- out out_normls_load482_avm_byteenable@20000000
    -- out out_normls_load482_avm_enable@20000000
    -- out out_normls_load482_avm_read@20000000
    -- out out_normls_load482_avm_write@20000000
    -- out out_normls_load482_avm_writedata@20000000
    -- out out_o_valid@10
    thei_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x : i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678
    PORT MAP (
        in_flush => in_flush,
        in_i_valid => input_accepted_and_q,
        in_intel_reserved_ffwd_104_0 => in_intel_reserved_ffwd_104_0,
        in_intel_reserved_ffwd_6_0 => in_intel_reserved_ffwd_6_0,
        in_intel_reserved_ffwd_93_0 => in_intel_reserved_ffwd_93_0,
        in_intel_reserved_ffwd_94_0 => in_intel_reserved_ffwd_94_0,
        in_intel_reserved_ffwd_95_0 => in_intel_reserved_ffwd_95_0,
        in_intel_reserved_ffwd_98_0 => in_intel_reserved_ffwd_98_0,
        in_localNeurons => in_localNeurons,
        in_localOutput => in_localOutput,
        in_memdep_26_avm_readdata => in_memdep_26_avm_readdata,
        in_memdep_26_avm_readdatavalid => in_memdep_26_avm_readdatavalid,
        in_memdep_26_avm_waitrequest => in_memdep_26_avm_waitrequest,
        in_memdep_26_avm_writeack => in_memdep_26_avm_writeack,
        in_memdep_27_avm_readdata => in_memdep_27_avm_readdata,
        in_memdep_27_avm_readdatavalid => in_memdep_27_avm_readdatavalid,
        in_memdep_27_avm_waitrequest => in_memdep_27_avm_waitrequest,
        in_memdep_27_avm_writeack => in_memdep_27_avm_writeack,
        in_memdep_28_avm_readdata => in_memdep_28_avm_readdata,
        in_memdep_28_avm_readdatavalid => in_memdep_28_avm_readdatavalid,
        in_memdep_28_avm_waitrequest => in_memdep_28_avm_waitrequest,
        in_memdep_28_avm_writeack => in_memdep_28_avm_writeack,
        in_normls_load477_avm_readdata => in_normls_load477_avm_readdata,
        in_normls_load477_avm_readdatavalid => in_normls_load477_avm_readdatavalid,
        in_normls_load477_avm_waitrequest => in_normls_load477_avm_waitrequest,
        in_normls_load477_avm_writeack => in_normls_load477_avm_writeack,
        in_normls_load482_avm_readdata => in_normls_load482_avm_readdata,
        in_normls_load482_avm_readdatavalid => in_normls_load482_avm_readdatavalid,
        in_normls_load482_avm_waitrequest => in_normls_load482_avm_waitrequest,
        in_normls_load482_avm_writeack => in_normls_load482_avm_writeack,
        out_memdep_26_avm_address => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_address,
        out_memdep_26_avm_burstcount => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_burstcount,
        out_memdep_26_avm_byteenable => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_byteenable,
        out_memdep_26_avm_enable => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_enable,
        out_memdep_26_avm_read => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_read,
        out_memdep_26_avm_write => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_write,
        out_memdep_26_avm_writedata => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_writedata,
        out_memdep_27_avm_address => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_address,
        out_memdep_27_avm_burstcount => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_burstcount,
        out_memdep_27_avm_byteenable => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_byteenable,
        out_memdep_27_avm_enable => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_enable,
        out_memdep_27_avm_read => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_read,
        out_memdep_27_avm_write => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_write,
        out_memdep_27_avm_writedata => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_writedata,
        out_memdep_28_avm_address => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_address,
        out_memdep_28_avm_burstcount => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_burstcount,
        out_memdep_28_avm_byteenable => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_byteenable,
        out_memdep_28_avm_enable => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_enable,
        out_memdep_28_avm_read => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_read,
        out_memdep_28_avm_write => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_write,
        out_memdep_28_avm_writedata => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_writedata,
        out_normls_load477_avm_address => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_address,
        out_normls_load477_avm_burstcount => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_burstcount,
        out_normls_load477_avm_byteenable => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_byteenable,
        out_normls_load477_avm_enable => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_enable,
        out_normls_load477_avm_read => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_read,
        out_normls_load477_avm_write => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_write,
        out_normls_load477_avm_writedata => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_writedata,
        out_normls_load482_avm_address => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_address,
        out_normls_load482_avm_burstcount => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_burstcount,
        out_normls_load482_avm_byteenable => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_byteenable,
        out_normls_load482_avm_enable => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_enable,
        out_normls_load482_avm_read => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_read,
        out_normls_load482_avm_write => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_write,
        out_normls_load482_avm_writedata => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_writedata,
        out_o_valid => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_stall_out(LOGICAL,70)
    not_stall_out_q <= not (i_acl_sfc_exit_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_exit1001_processfpga_aunroll_x_out_stall_entry);

    -- input_accepted_and(LOGICAL,69)
    input_accepted_and_q <= in_i_valid and not_stall_out_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_acl_sfc_exit_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_exit1001_processfpga_aunroll_x(BLACKBOX,66)@20000000
    -- out out_data_out_0@20000003
    -- out out_valid_out@20000003
    thei_acl_sfc_exit_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_exit1001_processfpga_aunroll_x : i_acl_sfc_exit_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_exit1001_processfpga1740
    PORT MAP (
        in_data_in_0 => GND_q,
        in_input_accepted => input_accepted_and_q,
        in_stall_in => in_i_stall,
        in_valid_in => i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_o_valid,
        out_data_out_0 => i_acl_sfc_exit_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_exit1001_processfpga_aunroll_x_out_data_out_0,
        out_stall_entry => i_acl_sfc_exit_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_exit1001_processfpga_aunroll_x_out_stall_entry,
        out_valid_out => i_acl_sfc_exit_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_exit1001_processfpga_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_sync_out_aunroll_x(GPOUT,3)@13
    out_c0_exit1001_0 <= i_acl_sfc_exit_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_exit1001_processfpga_aunroll_x_out_data_out_0;
    out_o_valid <= i_acl_sfc_exit_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_exit1001_processfpga_aunroll_x_out_valid_out;

    -- dupName_0_regfree_osync_x(GPOUT,5)
    out_memdep_26_avm_burstcount <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_burstcount;

    -- dupName_1_regfree_osync_x(GPOUT,7)
    out_memdep_26_avm_byteenable <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_byteenable;

    -- dupName_2_regfree_osync_x(GPOUT,9)
    out_memdep_26_avm_enable <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_enable;

    -- dupName_3_regfree_osync_x(GPOUT,11)
    out_memdep_26_avm_read <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_read;

    -- dupName_4_regfree_osync_x(GPOUT,13)
    out_memdep_26_avm_write <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_write;

    -- dupName_5_regfree_osync_x(GPOUT,15)
    out_memdep_26_avm_writedata <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_writedata;

    -- dupName_6_regfree_osync_x(GPOUT,17)
    out_memdep_27_avm_address <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_address;

    -- dupName_7_regfree_osync_x(GPOUT,19)
    out_memdep_27_avm_burstcount <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_burstcount;

    -- dupName_8_regfree_osync_x(GPOUT,21)
    out_memdep_27_avm_byteenable <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_byteenable;

    -- dupName_9_regfree_osync_x(GPOUT,23)
    out_memdep_27_avm_enable <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_enable;

    -- dupName_10_regfree_osync_x(GPOUT,25)
    out_memdep_27_avm_read <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_read;

    -- dupName_11_regfree_osync_x(GPOUT,27)
    out_memdep_27_avm_write <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_write;

    -- dupName_12_regfree_osync_x(GPOUT,29)
    out_memdep_27_avm_writedata <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_27_avm_writedata;

    -- dupName_13_regfree_osync_x(GPOUT,31)
    out_memdep_28_avm_address <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_address;

    -- dupName_14_regfree_osync_x(GPOUT,33)
    out_memdep_28_avm_burstcount <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_burstcount;

    -- dupName_15_regfree_osync_x(GPOUT,35)
    out_memdep_28_avm_byteenable <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_byteenable;

    -- dupName_16_regfree_osync_x(GPOUT,37)
    out_memdep_28_avm_enable <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_enable;

    -- dupName_17_regfree_osync_x(GPOUT,39)
    out_memdep_28_avm_read <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_read;

    -- dupName_18_regfree_osync_x(GPOUT,41)
    out_memdep_28_avm_write <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_write;

    -- dupName_19_regfree_osync_x(GPOUT,43)
    out_memdep_28_avm_writedata <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_28_avm_writedata;

    -- dupName_20_regfree_osync_x(GPOUT,45)
    out_normls_load477_avm_address <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_address;

    -- dupName_21_regfree_osync_x(GPOUT,47)
    out_normls_load477_avm_burstcount <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_burstcount;

    -- dupName_22_regfree_osync_x(GPOUT,49)
    out_normls_load477_avm_byteenable <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_byteenable;

    -- dupName_23_regfree_osync_x(GPOUT,51)
    out_normls_load477_avm_enable <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_enable;

    -- dupName_24_regfree_osync_x(GPOUT,53)
    out_normls_load477_avm_read <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_read;

    -- dupName_25_regfree_osync_x(GPOUT,55)
    out_normls_load477_avm_write <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_write;

    -- dupName_26_regfree_osync_x(GPOUT,57)
    out_normls_load477_avm_writedata <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load477_avm_writedata;

    -- dupName_27_regfree_osync_x(GPOUT,59)
    out_normls_load482_avm_address <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_address;

    -- dupName_28_regfree_osync_x(GPOUT,60)
    out_normls_load482_avm_burstcount <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_burstcount;

    -- dupName_29_regfree_osync_x(GPOUT,61)
    out_normls_load482_avm_byteenable <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_byteenable;

    -- dupName_30_regfree_osync_x(GPOUT,62)
    out_normls_load482_avm_enable <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_enable;

    -- dupName_31_regfree_osync_x(GPOUT,63)
    out_normls_load482_avm_read <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_read;

    -- dupName_32_regfree_osync_x(GPOUT,64)
    out_normls_load482_avm_write <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_write;

    -- dupName_33_regfree_osync_x(GPOUT,65)
    out_normls_load482_avm_writedata <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_normls_load482_avm_writedata;

    -- regfree_osync(GPOUT,72)
    out_memdep_26_avm_address <= i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678_aunroll_x_out_memdep_26_avm_address;

    -- sync_out(GPOUT,74)@20000000
    out_o_stall <= i_acl_sfc_exit_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_exit1001_processfpga_aunroll_x_out_stall_entry;

END normal;
