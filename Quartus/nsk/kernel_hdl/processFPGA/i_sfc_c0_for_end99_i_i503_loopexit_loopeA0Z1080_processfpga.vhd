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

-- VHDL created from i_sfc_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga
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

entity i_sfc_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga is
    port (
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA341_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit1081_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_133_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_39_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_134_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_39_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_136_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_39_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        in_intel_reserved_ffwd_137_0 : in std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_39_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_138_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_39_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_139_0 : in std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_39_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_140_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_39_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_144_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_40_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_146_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_40_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_147_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_40_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        in_intel_reserved_ffwd_148_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_40_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_6_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_40_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_40_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_localOutput : in std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_40_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_39_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_41_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_39_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_41_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_39_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_41_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        in_memdep_39_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_41_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_40_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_41_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_40_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_41_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_40_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_41_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        in_memdep_40_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_42_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_41_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_42_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_41_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_42_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        in_memdep_41_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_42_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_41_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_42_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_42_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_42_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_42_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_42_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_42_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load626_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_42_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load626_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load626_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load626_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        in_normls_load626_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load626_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load626_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load626_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load626_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load626_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load631_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load626_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load631_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load631_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load631_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load631_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load631_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load631_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load631_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load631_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load631_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load631_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_151_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_i_stall : in std_logic_vector(0 downto 0);  -- ufix1
        out_o_stall : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga;

architecture normal of i_sfc_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_sfc_exit_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_exit1081_processfpga2511 is
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


    component i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_133_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_134_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_136_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_137_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_138_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_139_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_140_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_144_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_146_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_147_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_148_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_localNeurons : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_localOutput : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memdep_39_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_39_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_39_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_39_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_40_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_40_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_40_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_40_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_41_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_memdep_41_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_41_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_41_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_42_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_42_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_42_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_42_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load626_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load626_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load626_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load626_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load631_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load631_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load631_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load631_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA349_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_151_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_39_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_39_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_39_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_39_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_39_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_39_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_39_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_40_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_40_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_40_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_40_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_40_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_40_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_40_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_41_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_41_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_41_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_memdep_41_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_41_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_41_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_41_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_memdep_42_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_42_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_42_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_42_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_42_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_42_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_42_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load626_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load626_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load626_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load626_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load626_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load626_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load626_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load631_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load631_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load631_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load631_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load631_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load631_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load631_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_exit1081_processfpga_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_exit1081_processfpga_aunroll_x_out_stall_entry : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_exit1081_processfpga_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_intel_reserved_ffwd_151_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal input_accepted_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x(BLACKBOX,85)@0
    -- out out_unnamed_processFPGA349_0@10
    -- out out_intel_reserved_ffwd_151_0@10
    -- out out_memdep_39_avm_address@20000000
    -- out out_memdep_39_avm_burstcount@20000000
    -- out out_memdep_39_avm_byteenable@20000000
    -- out out_memdep_39_avm_enable@20000000
    -- out out_memdep_39_avm_read@20000000
    -- out out_memdep_39_avm_write@20000000
    -- out out_memdep_39_avm_writedata@20000000
    -- out out_memdep_40_avm_address@20000000
    -- out out_memdep_40_avm_burstcount@20000000
    -- out out_memdep_40_avm_byteenable@20000000
    -- out out_memdep_40_avm_enable@20000000
    -- out out_memdep_40_avm_read@20000000
    -- out out_memdep_40_avm_write@20000000
    -- out out_memdep_40_avm_writedata@20000000
    -- out out_memdep_41_avm_address@20000000
    -- out out_memdep_41_avm_burstcount@20000000
    -- out out_memdep_41_avm_byteenable@20000000
    -- out out_memdep_41_avm_enable@20000000
    -- out out_memdep_41_avm_read@20000000
    -- out out_memdep_41_avm_write@20000000
    -- out out_memdep_41_avm_writedata@20000000
    -- out out_memdep_42_avm_address@20000000
    -- out out_memdep_42_avm_burstcount@20000000
    -- out out_memdep_42_avm_byteenable@20000000
    -- out out_memdep_42_avm_enable@20000000
    -- out out_memdep_42_avm_read@20000000
    -- out out_memdep_42_avm_write@20000000
    -- out out_memdep_42_avm_writedata@20000000
    -- out out_normls_load626_avm_address@20000000
    -- out out_normls_load626_avm_burstcount@20000000
    -- out out_normls_load626_avm_byteenable@20000000
    -- out out_normls_load626_avm_enable@20000000
    -- out out_normls_load626_avm_read@20000000
    -- out out_normls_load626_avm_write@20000000
    -- out out_normls_load626_avm_writedata@20000000
    -- out out_normls_load631_avm_address@20000000
    -- out out_normls_load631_avm_burstcount@20000000
    -- out out_normls_load631_avm_byteenable@20000000
    -- out out_normls_load631_avm_enable@20000000
    -- out out_normls_load631_avm_read@20000000
    -- out out_normls_load631_avm_write@20000000
    -- out out_normls_load631_avm_writedata@20000000
    -- out out_o_valid@10
    thei_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x : i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432
    PORT MAP (
        in_flush => in_flush,
        in_i_valid => input_accepted_and_q,
        in_intel_reserved_ffwd_133_0 => in_intel_reserved_ffwd_133_0,
        in_intel_reserved_ffwd_134_0 => in_intel_reserved_ffwd_134_0,
        in_intel_reserved_ffwd_136_0 => in_intel_reserved_ffwd_136_0,
        in_intel_reserved_ffwd_137_0 => in_intel_reserved_ffwd_137_0,
        in_intel_reserved_ffwd_138_0 => in_intel_reserved_ffwd_138_0,
        in_intel_reserved_ffwd_139_0 => in_intel_reserved_ffwd_139_0,
        in_intel_reserved_ffwd_140_0 => in_intel_reserved_ffwd_140_0,
        in_intel_reserved_ffwd_144_0 => in_intel_reserved_ffwd_144_0,
        in_intel_reserved_ffwd_146_0 => in_intel_reserved_ffwd_146_0,
        in_intel_reserved_ffwd_147_0 => in_intel_reserved_ffwd_147_0,
        in_intel_reserved_ffwd_148_0 => in_intel_reserved_ffwd_148_0,
        in_intel_reserved_ffwd_6_0 => in_intel_reserved_ffwd_6_0,
        in_localNeurons => in_localNeurons,
        in_localOutput => in_localOutput,
        in_memdep_39_avm_readdata => in_memdep_39_avm_readdata,
        in_memdep_39_avm_readdatavalid => in_memdep_39_avm_readdatavalid,
        in_memdep_39_avm_waitrequest => in_memdep_39_avm_waitrequest,
        in_memdep_39_avm_writeack => in_memdep_39_avm_writeack,
        in_memdep_40_avm_readdata => in_memdep_40_avm_readdata,
        in_memdep_40_avm_readdatavalid => in_memdep_40_avm_readdatavalid,
        in_memdep_40_avm_waitrequest => in_memdep_40_avm_waitrequest,
        in_memdep_40_avm_writeack => in_memdep_40_avm_writeack,
        in_memdep_41_avm_readdata => in_memdep_41_avm_readdata,
        in_memdep_41_avm_readdatavalid => in_memdep_41_avm_readdatavalid,
        in_memdep_41_avm_waitrequest => in_memdep_41_avm_waitrequest,
        in_memdep_41_avm_writeack => in_memdep_41_avm_writeack,
        in_memdep_42_avm_readdata => in_memdep_42_avm_readdata,
        in_memdep_42_avm_readdatavalid => in_memdep_42_avm_readdatavalid,
        in_memdep_42_avm_waitrequest => in_memdep_42_avm_waitrequest,
        in_memdep_42_avm_writeack => in_memdep_42_avm_writeack,
        in_normls_load626_avm_readdata => in_normls_load626_avm_readdata,
        in_normls_load626_avm_readdatavalid => in_normls_load626_avm_readdatavalid,
        in_normls_load626_avm_waitrequest => in_normls_load626_avm_waitrequest,
        in_normls_load626_avm_writeack => in_normls_load626_avm_writeack,
        in_normls_load631_avm_readdata => in_normls_load631_avm_readdata,
        in_normls_load631_avm_readdatavalid => in_normls_load631_avm_readdatavalid,
        in_normls_load631_avm_waitrequest => in_normls_load631_avm_waitrequest,
        in_normls_load631_avm_writeack => in_normls_load631_avm_writeack,
        out_intel_reserved_ffwd_151_0 => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_intel_reserved_ffwd_151_0,
        out_memdep_39_avm_address => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_address,
        out_memdep_39_avm_burstcount => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_burstcount,
        out_memdep_39_avm_byteenable => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_byteenable,
        out_memdep_39_avm_enable => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_enable,
        out_memdep_39_avm_read => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_read,
        out_memdep_39_avm_write => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_write,
        out_memdep_39_avm_writedata => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_writedata,
        out_memdep_40_avm_address => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_address,
        out_memdep_40_avm_burstcount => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_burstcount,
        out_memdep_40_avm_byteenable => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_byteenable,
        out_memdep_40_avm_enable => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_enable,
        out_memdep_40_avm_read => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_read,
        out_memdep_40_avm_write => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_write,
        out_memdep_40_avm_writedata => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_writedata,
        out_memdep_41_avm_address => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_address,
        out_memdep_41_avm_burstcount => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_burstcount,
        out_memdep_41_avm_byteenable => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_byteenable,
        out_memdep_41_avm_enable => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_enable,
        out_memdep_41_avm_read => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_read,
        out_memdep_41_avm_write => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_write,
        out_memdep_41_avm_writedata => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_writedata,
        out_memdep_42_avm_address => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_address,
        out_memdep_42_avm_burstcount => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_burstcount,
        out_memdep_42_avm_byteenable => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_byteenable,
        out_memdep_42_avm_enable => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_enable,
        out_memdep_42_avm_read => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_read,
        out_memdep_42_avm_write => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_write,
        out_memdep_42_avm_writedata => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_writedata,
        out_normls_load626_avm_address => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_address,
        out_normls_load626_avm_burstcount => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_burstcount,
        out_normls_load626_avm_byteenable => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_byteenable,
        out_normls_load626_avm_enable => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_enable,
        out_normls_load626_avm_read => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_read,
        out_normls_load626_avm_write => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_write,
        out_normls_load626_avm_writedata => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_writedata,
        out_normls_load631_avm_address => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_address,
        out_normls_load631_avm_burstcount => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_burstcount,
        out_normls_load631_avm_byteenable => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_byteenable,
        out_normls_load631_avm_enable => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_enable,
        out_normls_load631_avm_read => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_read,
        out_normls_load631_avm_write => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_write,
        out_normls_load631_avm_writedata => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_writedata,
        out_o_valid => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_stall_out(LOGICAL,88)
    not_stall_out_q <= not (i_acl_sfc_exit_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_exit1081_processfpga_aunroll_x_out_stall_entry);

    -- input_accepted_and(LOGICAL,87)
    input_accepted_and_q <= in_i_valid and not_stall_out_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_acl_sfc_exit_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_exit1081_processfpga_aunroll_x(BLACKBOX,84)@20000000
    -- out out_data_out_0@20000003
    -- out out_valid_out@20000003
    thei_acl_sfc_exit_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_exit1081_processfpga_aunroll_x : i_acl_sfc_exit_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_exit1081_processfpga2511
    PORT MAP (
        in_data_in_0 => GND_q,
        in_input_accepted => input_accepted_and_q,
        in_stall_in => in_i_stall,
        in_valid_in => i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_o_valid,
        out_data_out_0 => i_acl_sfc_exit_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_exit1081_processfpga_aunroll_x_out_data_out_0,
        out_stall_entry => i_acl_sfc_exit_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_exit1081_processfpga_aunroll_x_out_stall_entry,
        out_valid_out => i_acl_sfc_exit_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_exit1081_processfpga_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_sync_out_aunroll_x(GPOUT,3)@13
    out_c0_exit1081_0 <= i_acl_sfc_exit_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_exit1081_processfpga_aunroll_x_out_data_out_0;
    out_o_valid <= i_acl_sfc_exit_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_exit1081_processfpga_aunroll_x_out_valid_out;

    -- dupName_0_regfree_osync_x(GPOUT,5)
    out_memdep_39_avm_address <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_address;

    -- dupName_1_regfree_osync_x(GPOUT,7)
    out_memdep_39_avm_burstcount <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_burstcount;

    -- dupName_2_regfree_osync_x(GPOUT,9)
    out_memdep_39_avm_byteenable <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_byteenable;

    -- dupName_3_regfree_osync_x(GPOUT,11)
    out_memdep_39_avm_enable <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_enable;

    -- dupName_4_regfree_osync_x(GPOUT,13)
    out_memdep_39_avm_read <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_read;

    -- dupName_5_regfree_osync_x(GPOUT,15)
    out_memdep_39_avm_write <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_write;

    -- dupName_6_regfree_osync_x(GPOUT,17)
    out_memdep_39_avm_writedata <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_39_avm_writedata;

    -- dupName_7_regfree_osync_x(GPOUT,19)
    out_memdep_40_avm_address <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_address;

    -- dupName_8_regfree_osync_x(GPOUT,21)
    out_memdep_40_avm_burstcount <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_burstcount;

    -- dupName_9_regfree_osync_x(GPOUT,23)
    out_memdep_40_avm_byteenable <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_byteenable;

    -- dupName_10_regfree_osync_x(GPOUT,25)
    out_memdep_40_avm_enable <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_enable;

    -- dupName_11_regfree_osync_x(GPOUT,27)
    out_memdep_40_avm_read <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_read;

    -- dupName_12_regfree_osync_x(GPOUT,29)
    out_memdep_40_avm_write <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_write;

    -- dupName_13_regfree_osync_x(GPOUT,31)
    out_memdep_40_avm_writedata <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_40_avm_writedata;

    -- dupName_14_regfree_osync_x(GPOUT,33)
    out_memdep_41_avm_address <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_address;

    -- dupName_15_regfree_osync_x(GPOUT,35)
    out_memdep_41_avm_burstcount <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_burstcount;

    -- dupName_16_regfree_osync_x(GPOUT,37)
    out_memdep_41_avm_byteenable <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_byteenable;

    -- dupName_17_regfree_osync_x(GPOUT,39)
    out_memdep_41_avm_enable <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_enable;

    -- dupName_18_regfree_osync_x(GPOUT,41)
    out_memdep_41_avm_read <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_read;

    -- dupName_19_regfree_osync_x(GPOUT,43)
    out_memdep_41_avm_write <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_write;

    -- dupName_20_regfree_osync_x(GPOUT,45)
    out_memdep_41_avm_writedata <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_41_avm_writedata;

    -- dupName_21_regfree_osync_x(GPOUT,47)
    out_memdep_42_avm_address <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_address;

    -- dupName_22_regfree_osync_x(GPOUT,49)
    out_memdep_42_avm_burstcount <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_burstcount;

    -- dupName_23_regfree_osync_x(GPOUT,51)
    out_memdep_42_avm_byteenable <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_byteenable;

    -- dupName_24_regfree_osync_x(GPOUT,53)
    out_memdep_42_avm_enable <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_enable;

    -- dupName_25_regfree_osync_x(GPOUT,55)
    out_memdep_42_avm_read <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_read;

    -- dupName_26_regfree_osync_x(GPOUT,57)
    out_memdep_42_avm_write <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_write;

    -- dupName_27_regfree_osync_x(GPOUT,59)
    out_memdep_42_avm_writedata <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_memdep_42_avm_writedata;

    -- dupName_28_regfree_osync_x(GPOUT,61)
    out_normls_load626_avm_address <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_address;

    -- dupName_29_regfree_osync_x(GPOUT,63)
    out_normls_load626_avm_burstcount <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_burstcount;

    -- dupName_30_regfree_osync_x(GPOUT,65)
    out_normls_load626_avm_byteenable <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_byteenable;

    -- dupName_31_regfree_osync_x(GPOUT,67)
    out_normls_load626_avm_enable <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_enable;

    -- dupName_32_regfree_osync_x(GPOUT,69)
    out_normls_load626_avm_read <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_read;

    -- dupName_33_regfree_osync_x(GPOUT,71)
    out_normls_load626_avm_write <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_write;

    -- dupName_34_regfree_osync_x(GPOUT,73)
    out_normls_load626_avm_writedata <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load626_avm_writedata;

    -- dupName_35_regfree_osync_x(GPOUT,75)
    out_normls_load631_avm_address <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_address;

    -- dupName_36_regfree_osync_x(GPOUT,77)
    out_normls_load631_avm_burstcount <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_burstcount;

    -- dupName_37_regfree_osync_x(GPOUT,79)
    out_normls_load631_avm_byteenable <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_byteenable;

    -- dupName_38_regfree_osync_x(GPOUT,80)
    out_normls_load631_avm_enable <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_enable;

    -- dupName_39_regfree_osync_x(GPOUT,81)
    out_normls_load631_avm_read <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_read;

    -- dupName_40_regfree_osync_x(GPOUT,82)
    out_normls_load631_avm_write <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_write;

    -- dupName_41_regfree_osync_x(GPOUT,83)
    out_normls_load631_avm_writedata <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_normls_load631_avm_writedata;

    -- regfree_osync(GPOUT,90)
    out_intel_reserved_ffwd_151_0 <= i_sfc_logic_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_enter1080_processfpga2432_aunroll_x_out_intel_reserved_ffwd_151_0;

    -- sync_out(GPOUT,92)@20000000
    out_o_stall <= i_acl_sfc_exit_c0_for_end99_i_i503_loopexit_loopexit_processfpga_c0_exit1081_processfpga_aunroll_x_out_stall_entry;

END normal;
