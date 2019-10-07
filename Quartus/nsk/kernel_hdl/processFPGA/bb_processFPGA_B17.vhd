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

-- VHDL created from bb_processFPGA_B17
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

entity bb_processFPGA_B17 is
    port (
        out_c0_exit915_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit915_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit915_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_58_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_59_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_memcoalesce_localConn_load_020_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localConn_load_020_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localConn_load_020_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memcoalesce_localConn_load_020_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localConn_load_020_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localConn_load_020_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localConn_load_020_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_014_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_014_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_014_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memcoalesce_localNeurons_load_014_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_014_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_014_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_014_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_08_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_08_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_08_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memcoalesce_localNeurons_load_08_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_08_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_08_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_08_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_14_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_14_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_14_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_memdep_14_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_14_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_14_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_14_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_normls_load291_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load291_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load291_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load291_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load291_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load291_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load291_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load302_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load302_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load302_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load302_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load302_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load302_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load302_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load313_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load313_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load313_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load313_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load313_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load313_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load313_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i91014_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp38_i_i91014_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i91014_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp38_i_i91014_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i91014_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i91014_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i91014_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp39_i_i91218_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp39_i_i91218_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i91218_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp39_i_i91218_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i91218_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i91218_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i91218_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp42_i_i91817_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp42_i_i91817_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i91817_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp42_i_i91817_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i91817_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i91817_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i91817_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA103_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA103_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA103_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_processFPGA103_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA103_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA103_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA103_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_acl_hw_wg_id799_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_acl_hw_wg_id799_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_conns : in std_logic_vector(63 downto 0);  -- ufix64
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked429_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked429_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_input : in std_logic_vector(63 downto 0);  -- ufix64
        in_intel_reserved_ffwd_46_0 : in std_logic_vector(16 downto 0);  -- ufix17
        in_intel_reserved_ffwd_50_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_intel_reserved_ffwd_56_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_57_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_localConn : in std_logic_vector(63 downto 0);  -- ufix64
        in_localInput : in std_logic_vector(63 downto 0);  -- ufix64
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        in_localOutput : in std_logic_vector(63 downto 0);  -- ufix64
        in_memcoalesce_localConn_load_020_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_localConn_load_020_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localConn_load_020_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localConn_load_020_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_014_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_localNeurons_load_014_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_014_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_014_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_08_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_localNeurons_load_08_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_08_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_08_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_14_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_memdep_14_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_14_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_14_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_netSt : in std_logic_vector(63 downto 0);  -- ufix64
        in_neurons : in std_logic_vector(63 downto 0);  -- ufix64
        in_normls_load291_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load291_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load291_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load291_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load302_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load302_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load302_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load302_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load313_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load313_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load313_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load313_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_output : in std_logic_vector(63 downto 0);  -- ufix64
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp38_i_i91014_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp38_i_i91014_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp38_i_i91014_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp38_i_i91014_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp39_i_i91218_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp39_i_i91218_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp39_i_i91218_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp39_i_i91218_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp42_i_i91817_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp42_i_i91817_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp42_i_i91817_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp42_i_i91817_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA103_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_processFPGA103_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA103_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA103_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_processFPGA_B17;

architecture normal of bb_processFPGA_B17 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component processFPGA_B17_branch is
        port (
            in_c0_exit915_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit915_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit915_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe1916 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit915_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit915_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit915_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_processFPGA_B17_stall_region is
        port (
            in_acl_hw_wg_id799 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked429 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_46_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_50_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_56_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_57_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_localConn : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_localNeurons : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memcoalesce_localConn_load_020_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memcoalesce_localConn_load_020_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localConn_load_020_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localConn_load_020_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_014_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_014_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_014_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_014_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_08_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_08_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_08_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_08_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_14_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_memdep_14_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_14_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_14_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load291_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load291_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load291_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load291_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load302_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load302_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load302_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load302_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load313_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load313_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load313_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load313_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp38_i_i91014_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp38_i_i91014_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp38_i_i91014_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp38_i_i91014_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp39_i_i91218_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp39_i_i91218_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp39_i_i91218_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp39_i_i91218_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp42_i_i91817_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp42_i_i91817_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp42_i_i91817_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp42_i_i91817_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA103_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_processFPGA103_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA103_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA103_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit915_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit915_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit915_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1916 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_58_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_59_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_020_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_020_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_020_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_020_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_020_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_020_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_020_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_014_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_014_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_014_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_014_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_014_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_014_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_014_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_08_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_08_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_08_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_08_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_08_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_08_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_08_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_14_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_14_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_14_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_memdep_14_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_14_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_14_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_14_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_normls_load291_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load291_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load291_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load291_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load291_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load291_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load291_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load302_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load302_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load302_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load302_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load302_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load302_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load302_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load313_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load313_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load313_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load313_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load313_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load313_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load313_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp38_i_i91014_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp38_i_i91014_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp38_i_i91014_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_tmp38_i_i91014_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp38_i_i91014_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp38_i_i91014_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp38_i_i91014_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp39_i_i91218_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp39_i_i91218_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp39_i_i91218_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_tmp39_i_i91218_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp39_i_i91218_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp39_i_i91218_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp39_i_i91218_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp42_i_i91817_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp42_i_i91817_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp42_i_i91817_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_tmp42_i_i91817_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp42_i_i91817_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp42_i_i91817_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp42_i_i91817_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA103_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA103_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA103_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_unnamed_processFPGA103_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA103_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA103_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA103_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component processFPGA_B17_merge is
        port (
            in_acl_hw_wg_id799_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_acl_hw_wg_id799_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_forked429_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked429_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_acl_hw_wg_id799 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_forked429 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal processFPGA_B17_branch_aunroll_x_out_c0_exit915_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B17_branch_aunroll_x_out_c0_exit915_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B17_branch_aunroll_x_out_c0_exit915_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal processFPGA_B17_branch_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B17_branch_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B17_branch_aunroll_x_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_c0_exit915_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_c0_exit915_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_c0_exit915_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_c0_exe1916 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_intel_reserved_ffwd_58_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_intel_reserved_ffwd_59_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memdep_14_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memdep_14_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memdep_14_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memdep_14_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memdep_14_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memdep_14_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_memdep_14_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load291_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load291_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load291_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load291_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load291_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load291_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load291_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load302_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load302_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load302_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load302_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load302_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load302_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load302_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load313_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load313_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load313_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load313_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load313_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load313_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_normls_load313_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B17_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B17_merge_out_acl_hw_wg_id799 : STD_LOGIC_VECTOR (31 downto 0);
    signal processFPGA_B17_merge_out_forked429 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B17_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B17_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B17_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- processFPGA_B17_merge(BLACKBOX,160)
    theprocessFPGA_B17_merge : processFPGA_B17_merge
    PORT MAP (
        in_acl_hw_wg_id799_0 => in_acl_hw_wg_id799_0,
        in_acl_hw_wg_id799_1 => in_acl_hw_wg_id799_1,
        in_forked429_0 => in_forked429_0,
        in_forked429_1 => in_forked429_1,
        in_stall_in => bb_processFPGA_B17_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_acl_hw_wg_id799 => processFPGA_B17_merge_out_acl_hw_wg_id799,
        out_forked429 => processFPGA_B17_merge_out_forked429,
        out_stall_out_0 => processFPGA_B17_merge_out_stall_out_0,
        out_stall_out_1 => processFPGA_B17_merge_out_stall_out_1,
        out_valid_out => processFPGA_B17_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_processFPGA_B17_stall_region(BLACKBOX,91)
    thebb_processFPGA_B17_stall_region : bb_processFPGA_B17_stall_region
    PORT MAP (
        in_acl_hw_wg_id799 => processFPGA_B17_merge_out_acl_hw_wg_id799,
        in_flush => in_flush,
        in_forked429 => processFPGA_B17_merge_out_forked429,
        in_intel_reserved_ffwd_46_0 => in_intel_reserved_ffwd_46_0,
        in_intel_reserved_ffwd_50_0 => in_intel_reserved_ffwd_50_0,
        in_intel_reserved_ffwd_56_0 => in_intel_reserved_ffwd_56_0,
        in_intel_reserved_ffwd_57_0 => in_intel_reserved_ffwd_57_0,
        in_localConn => in_localConn,
        in_localNeurons => in_localNeurons,
        in_memcoalesce_localConn_load_020_avm_readdata => in_memcoalesce_localConn_load_020_avm_readdata,
        in_memcoalesce_localConn_load_020_avm_readdatavalid => in_memcoalesce_localConn_load_020_avm_readdatavalid,
        in_memcoalesce_localConn_load_020_avm_waitrequest => in_memcoalesce_localConn_load_020_avm_waitrequest,
        in_memcoalesce_localConn_load_020_avm_writeack => in_memcoalesce_localConn_load_020_avm_writeack,
        in_memcoalesce_localNeurons_load_014_avm_readdata => in_memcoalesce_localNeurons_load_014_avm_readdata,
        in_memcoalesce_localNeurons_load_014_avm_readdatavalid => in_memcoalesce_localNeurons_load_014_avm_readdatavalid,
        in_memcoalesce_localNeurons_load_014_avm_waitrequest => in_memcoalesce_localNeurons_load_014_avm_waitrequest,
        in_memcoalesce_localNeurons_load_014_avm_writeack => in_memcoalesce_localNeurons_load_014_avm_writeack,
        in_memcoalesce_localNeurons_load_08_avm_readdata => in_memcoalesce_localNeurons_load_08_avm_readdata,
        in_memcoalesce_localNeurons_load_08_avm_readdatavalid => in_memcoalesce_localNeurons_load_08_avm_readdatavalid,
        in_memcoalesce_localNeurons_load_08_avm_waitrequest => in_memcoalesce_localNeurons_load_08_avm_waitrequest,
        in_memcoalesce_localNeurons_load_08_avm_writeack => in_memcoalesce_localNeurons_load_08_avm_writeack,
        in_memdep_14_avm_readdata => in_memdep_14_avm_readdata,
        in_memdep_14_avm_readdatavalid => in_memdep_14_avm_readdatavalid,
        in_memdep_14_avm_waitrequest => in_memdep_14_avm_waitrequest,
        in_memdep_14_avm_writeack => in_memdep_14_avm_writeack,
        in_normls_load291_avm_readdata => in_normls_load291_avm_readdata,
        in_normls_load291_avm_readdatavalid => in_normls_load291_avm_readdatavalid,
        in_normls_load291_avm_waitrequest => in_normls_load291_avm_waitrequest,
        in_normls_load291_avm_writeack => in_normls_load291_avm_writeack,
        in_normls_load302_avm_readdata => in_normls_load302_avm_readdata,
        in_normls_load302_avm_readdatavalid => in_normls_load302_avm_readdatavalid,
        in_normls_load302_avm_waitrequest => in_normls_load302_avm_waitrequest,
        in_normls_load302_avm_writeack => in_normls_load302_avm_writeack,
        in_normls_load313_avm_readdata => in_normls_load313_avm_readdata,
        in_normls_load313_avm_readdatavalid => in_normls_load313_avm_readdatavalid,
        in_normls_load313_avm_waitrequest => in_normls_load313_avm_waitrequest,
        in_normls_load313_avm_writeack => in_normls_load313_avm_writeack,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => processFPGA_B17_branch_aunroll_x_out_stall_out,
        in_tmp38_i_i91014_avm_readdata => in_tmp38_i_i91014_avm_readdata,
        in_tmp38_i_i91014_avm_readdatavalid => in_tmp38_i_i91014_avm_readdatavalid,
        in_tmp38_i_i91014_avm_waitrequest => in_tmp38_i_i91014_avm_waitrequest,
        in_tmp38_i_i91014_avm_writeack => in_tmp38_i_i91014_avm_writeack,
        in_tmp39_i_i91218_avm_readdata => in_tmp39_i_i91218_avm_readdata,
        in_tmp39_i_i91218_avm_readdatavalid => in_tmp39_i_i91218_avm_readdatavalid,
        in_tmp39_i_i91218_avm_waitrequest => in_tmp39_i_i91218_avm_waitrequest,
        in_tmp39_i_i91218_avm_writeack => in_tmp39_i_i91218_avm_writeack,
        in_tmp42_i_i91817_avm_readdata => in_tmp42_i_i91817_avm_readdata,
        in_tmp42_i_i91817_avm_readdatavalid => in_tmp42_i_i91817_avm_readdatavalid,
        in_tmp42_i_i91817_avm_waitrequest => in_tmp42_i_i91817_avm_waitrequest,
        in_tmp42_i_i91817_avm_writeack => in_tmp42_i_i91817_avm_writeack,
        in_unnamed_processFPGA103_avm_readdata => in_unnamed_processFPGA103_avm_readdata,
        in_unnamed_processFPGA103_avm_readdatavalid => in_unnamed_processFPGA103_avm_readdatavalid,
        in_unnamed_processFPGA103_avm_waitrequest => in_unnamed_processFPGA103_avm_waitrequest,
        in_unnamed_processFPGA103_avm_writeack => in_unnamed_processFPGA103_avm_writeack,
        in_valid_in => processFPGA_B17_merge_out_valid_out,
        out_c0_exit915_0 => bb_processFPGA_B17_stall_region_out_c0_exit915_0,
        out_c0_exit915_1 => bb_processFPGA_B17_stall_region_out_c0_exit915_1,
        out_c0_exit915_2 => bb_processFPGA_B17_stall_region_out_c0_exit915_2,
        out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_stall_out => bb_processFPGA_B17_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_valid_out => bb_processFPGA_B17_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_valid_out,
        out_c0_exe1916 => bb_processFPGA_B17_stall_region_out_c0_exe1916,
        out_intel_reserved_ffwd_58_0 => bb_processFPGA_B17_stall_region_out_intel_reserved_ffwd_58_0,
        out_intel_reserved_ffwd_59_0 => bb_processFPGA_B17_stall_region_out_intel_reserved_ffwd_59_0,
        out_memcoalesce_localConn_load_020_avm_address => bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_address,
        out_memcoalesce_localConn_load_020_avm_burstcount => bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_burstcount,
        out_memcoalesce_localConn_load_020_avm_byteenable => bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_byteenable,
        out_memcoalesce_localConn_load_020_avm_enable => bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_enable,
        out_memcoalesce_localConn_load_020_avm_read => bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_read,
        out_memcoalesce_localConn_load_020_avm_write => bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_write,
        out_memcoalesce_localConn_load_020_avm_writedata => bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_writedata,
        out_memcoalesce_localNeurons_load_014_avm_address => bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_address,
        out_memcoalesce_localNeurons_load_014_avm_burstcount => bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_burstcount,
        out_memcoalesce_localNeurons_load_014_avm_byteenable => bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_byteenable,
        out_memcoalesce_localNeurons_load_014_avm_enable => bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_enable,
        out_memcoalesce_localNeurons_load_014_avm_read => bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_read,
        out_memcoalesce_localNeurons_load_014_avm_write => bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_write,
        out_memcoalesce_localNeurons_load_014_avm_writedata => bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_writedata,
        out_memcoalesce_localNeurons_load_08_avm_address => bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_address,
        out_memcoalesce_localNeurons_load_08_avm_burstcount => bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_burstcount,
        out_memcoalesce_localNeurons_load_08_avm_byteenable => bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_byteenable,
        out_memcoalesce_localNeurons_load_08_avm_enable => bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_enable,
        out_memcoalesce_localNeurons_load_08_avm_read => bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_read,
        out_memcoalesce_localNeurons_load_08_avm_write => bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_write,
        out_memcoalesce_localNeurons_load_08_avm_writedata => bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_writedata,
        out_memdep_14_avm_address => bb_processFPGA_B17_stall_region_out_memdep_14_avm_address,
        out_memdep_14_avm_burstcount => bb_processFPGA_B17_stall_region_out_memdep_14_avm_burstcount,
        out_memdep_14_avm_byteenable => bb_processFPGA_B17_stall_region_out_memdep_14_avm_byteenable,
        out_memdep_14_avm_enable => bb_processFPGA_B17_stall_region_out_memdep_14_avm_enable,
        out_memdep_14_avm_read => bb_processFPGA_B17_stall_region_out_memdep_14_avm_read,
        out_memdep_14_avm_write => bb_processFPGA_B17_stall_region_out_memdep_14_avm_write,
        out_memdep_14_avm_writedata => bb_processFPGA_B17_stall_region_out_memdep_14_avm_writedata,
        out_normls_load291_avm_address => bb_processFPGA_B17_stall_region_out_normls_load291_avm_address,
        out_normls_load291_avm_burstcount => bb_processFPGA_B17_stall_region_out_normls_load291_avm_burstcount,
        out_normls_load291_avm_byteenable => bb_processFPGA_B17_stall_region_out_normls_load291_avm_byteenable,
        out_normls_load291_avm_enable => bb_processFPGA_B17_stall_region_out_normls_load291_avm_enable,
        out_normls_load291_avm_read => bb_processFPGA_B17_stall_region_out_normls_load291_avm_read,
        out_normls_load291_avm_write => bb_processFPGA_B17_stall_region_out_normls_load291_avm_write,
        out_normls_load291_avm_writedata => bb_processFPGA_B17_stall_region_out_normls_load291_avm_writedata,
        out_normls_load302_avm_address => bb_processFPGA_B17_stall_region_out_normls_load302_avm_address,
        out_normls_load302_avm_burstcount => bb_processFPGA_B17_stall_region_out_normls_load302_avm_burstcount,
        out_normls_load302_avm_byteenable => bb_processFPGA_B17_stall_region_out_normls_load302_avm_byteenable,
        out_normls_load302_avm_enable => bb_processFPGA_B17_stall_region_out_normls_load302_avm_enable,
        out_normls_load302_avm_read => bb_processFPGA_B17_stall_region_out_normls_load302_avm_read,
        out_normls_load302_avm_write => bb_processFPGA_B17_stall_region_out_normls_load302_avm_write,
        out_normls_load302_avm_writedata => bb_processFPGA_B17_stall_region_out_normls_load302_avm_writedata,
        out_normls_load313_avm_address => bb_processFPGA_B17_stall_region_out_normls_load313_avm_address,
        out_normls_load313_avm_burstcount => bb_processFPGA_B17_stall_region_out_normls_load313_avm_burstcount,
        out_normls_load313_avm_byteenable => bb_processFPGA_B17_stall_region_out_normls_load313_avm_byteenable,
        out_normls_load313_avm_enable => bb_processFPGA_B17_stall_region_out_normls_load313_avm_enable,
        out_normls_load313_avm_read => bb_processFPGA_B17_stall_region_out_normls_load313_avm_read,
        out_normls_load313_avm_write => bb_processFPGA_B17_stall_region_out_normls_load313_avm_write,
        out_normls_load313_avm_writedata => bb_processFPGA_B17_stall_region_out_normls_load313_avm_writedata,
        out_pipeline_valid_out => bb_processFPGA_B17_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_processFPGA_B17_stall_region_out_stall_out,
        out_tmp38_i_i91014_avm_address => bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_address,
        out_tmp38_i_i91014_avm_burstcount => bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_burstcount,
        out_tmp38_i_i91014_avm_byteenable => bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_byteenable,
        out_tmp38_i_i91014_avm_enable => bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_enable,
        out_tmp38_i_i91014_avm_read => bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_read,
        out_tmp38_i_i91014_avm_write => bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_write,
        out_tmp38_i_i91014_avm_writedata => bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_writedata,
        out_tmp39_i_i91218_avm_address => bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_address,
        out_tmp39_i_i91218_avm_burstcount => bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_burstcount,
        out_tmp39_i_i91218_avm_byteenable => bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_byteenable,
        out_tmp39_i_i91218_avm_enable => bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_enable,
        out_tmp39_i_i91218_avm_read => bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_read,
        out_tmp39_i_i91218_avm_write => bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_write,
        out_tmp39_i_i91218_avm_writedata => bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_writedata,
        out_tmp42_i_i91817_avm_address => bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_address,
        out_tmp42_i_i91817_avm_burstcount => bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_burstcount,
        out_tmp42_i_i91817_avm_byteenable => bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_byteenable,
        out_tmp42_i_i91817_avm_enable => bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_enable,
        out_tmp42_i_i91817_avm_read => bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_read,
        out_tmp42_i_i91817_avm_write => bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_write,
        out_tmp42_i_i91817_avm_writedata => bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_writedata,
        out_unnamed_processFPGA103_avm_address => bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_address,
        out_unnamed_processFPGA103_avm_burstcount => bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_burstcount,
        out_unnamed_processFPGA103_avm_byteenable => bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_byteenable,
        out_unnamed_processFPGA103_avm_enable => bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_enable,
        out_unnamed_processFPGA103_avm_read => bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_read,
        out_unnamed_processFPGA103_avm_write => bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_write,
        out_unnamed_processFPGA103_avm_writedata => bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_writedata,
        out_valid_out => bb_processFPGA_B17_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- processFPGA_B17_branch_aunroll_x(BLACKBOX,90)
    theprocessFPGA_B17_branch_aunroll_x : processFPGA_B17_branch
    PORT MAP (
        in_c0_exit915_0 => bb_processFPGA_B17_stall_region_out_c0_exit915_0,
        in_c0_exit915_1 => bb_processFPGA_B17_stall_region_out_c0_exit915_1,
        in_c0_exit915_2 => bb_processFPGA_B17_stall_region_out_c0_exit915_2,
        in_c0_exe1916 => bb_processFPGA_B17_stall_region_out_c0_exe1916,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_processFPGA_B17_stall_region_out_valid_out,
        out_c0_exit915_0 => processFPGA_B17_branch_aunroll_x_out_c0_exit915_0,
        out_c0_exit915_1 => processFPGA_B17_branch_aunroll_x_out_c0_exit915_1,
        out_c0_exit915_2 => processFPGA_B17_branch_aunroll_x_out_c0_exit915_2,
        out_stall_out => processFPGA_B17_branch_aunroll_x_out_stall_out,
        out_valid_out_0 => processFPGA_B17_branch_aunroll_x_out_valid_out_0,
        out_valid_out_1 => processFPGA_B17_branch_aunroll_x_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exit915_0(GPOUT,2)
    out_c0_exit915_0 <= processFPGA_B17_branch_aunroll_x_out_c0_exit915_0;

    -- out_c0_exit915_1(GPOUT,3)
    out_c0_exit915_1 <= processFPGA_B17_branch_aunroll_x_out_c0_exit915_1;

    -- out_c0_exit915_2(GPOUT,4)
    out_c0_exit915_2 <= processFPGA_B17_branch_aunroll_x_out_c0_exit915_2;

    -- out_exiting_stall_out(GPOUT,5)
    out_exiting_stall_out <= bb_processFPGA_B17_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,6)
    out_exiting_valid_out <= bb_processFPGA_B17_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_valid_out;

    -- out_intel_reserved_ffwd_58_0(GPOUT,7)
    out_intel_reserved_ffwd_58_0 <= bb_processFPGA_B17_stall_region_out_intel_reserved_ffwd_58_0;

    -- out_intel_reserved_ffwd_59_0(GPOUT,8)
    out_intel_reserved_ffwd_59_0 <= bb_processFPGA_B17_stall_region_out_intel_reserved_ffwd_59_0;

    -- out_memcoalesce_localConn_load_020_avm_address(GPOUT,9)
    out_memcoalesce_localConn_load_020_avm_address <= bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_address;

    -- out_memcoalesce_localConn_load_020_avm_burstcount(GPOUT,10)
    out_memcoalesce_localConn_load_020_avm_burstcount <= bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_burstcount;

    -- out_memcoalesce_localConn_load_020_avm_byteenable(GPOUT,11)
    out_memcoalesce_localConn_load_020_avm_byteenable <= bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_byteenable;

    -- out_memcoalesce_localConn_load_020_avm_enable(GPOUT,12)
    out_memcoalesce_localConn_load_020_avm_enable <= bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_enable;

    -- out_memcoalesce_localConn_load_020_avm_read(GPOUT,13)
    out_memcoalesce_localConn_load_020_avm_read <= bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_read;

    -- out_memcoalesce_localConn_load_020_avm_write(GPOUT,14)
    out_memcoalesce_localConn_load_020_avm_write <= bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_write;

    -- out_memcoalesce_localConn_load_020_avm_writedata(GPOUT,15)
    out_memcoalesce_localConn_load_020_avm_writedata <= bb_processFPGA_B17_stall_region_out_memcoalesce_localConn_load_020_avm_writedata;

    -- out_memcoalesce_localNeurons_load_014_avm_address(GPOUT,16)
    out_memcoalesce_localNeurons_load_014_avm_address <= bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_address;

    -- out_memcoalesce_localNeurons_load_014_avm_burstcount(GPOUT,17)
    out_memcoalesce_localNeurons_load_014_avm_burstcount <= bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_burstcount;

    -- out_memcoalesce_localNeurons_load_014_avm_byteenable(GPOUT,18)
    out_memcoalesce_localNeurons_load_014_avm_byteenable <= bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_byteenable;

    -- out_memcoalesce_localNeurons_load_014_avm_enable(GPOUT,19)
    out_memcoalesce_localNeurons_load_014_avm_enable <= bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_enable;

    -- out_memcoalesce_localNeurons_load_014_avm_read(GPOUT,20)
    out_memcoalesce_localNeurons_load_014_avm_read <= bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_read;

    -- out_memcoalesce_localNeurons_load_014_avm_write(GPOUT,21)
    out_memcoalesce_localNeurons_load_014_avm_write <= bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_write;

    -- out_memcoalesce_localNeurons_load_014_avm_writedata(GPOUT,22)
    out_memcoalesce_localNeurons_load_014_avm_writedata <= bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_014_avm_writedata;

    -- out_memcoalesce_localNeurons_load_08_avm_address(GPOUT,23)
    out_memcoalesce_localNeurons_load_08_avm_address <= bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_address;

    -- out_memcoalesce_localNeurons_load_08_avm_burstcount(GPOUT,24)
    out_memcoalesce_localNeurons_load_08_avm_burstcount <= bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_burstcount;

    -- out_memcoalesce_localNeurons_load_08_avm_byteenable(GPOUT,25)
    out_memcoalesce_localNeurons_load_08_avm_byteenable <= bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_byteenable;

    -- out_memcoalesce_localNeurons_load_08_avm_enable(GPOUT,26)
    out_memcoalesce_localNeurons_load_08_avm_enable <= bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_enable;

    -- out_memcoalesce_localNeurons_load_08_avm_read(GPOUT,27)
    out_memcoalesce_localNeurons_load_08_avm_read <= bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_read;

    -- out_memcoalesce_localNeurons_load_08_avm_write(GPOUT,28)
    out_memcoalesce_localNeurons_load_08_avm_write <= bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_write;

    -- out_memcoalesce_localNeurons_load_08_avm_writedata(GPOUT,29)
    out_memcoalesce_localNeurons_load_08_avm_writedata <= bb_processFPGA_B17_stall_region_out_memcoalesce_localNeurons_load_08_avm_writedata;

    -- out_memdep_14_avm_address(GPOUT,30)
    out_memdep_14_avm_address <= bb_processFPGA_B17_stall_region_out_memdep_14_avm_address;

    -- out_memdep_14_avm_burstcount(GPOUT,31)
    out_memdep_14_avm_burstcount <= bb_processFPGA_B17_stall_region_out_memdep_14_avm_burstcount;

    -- out_memdep_14_avm_byteenable(GPOUT,32)
    out_memdep_14_avm_byteenable <= bb_processFPGA_B17_stall_region_out_memdep_14_avm_byteenable;

    -- out_memdep_14_avm_enable(GPOUT,33)
    out_memdep_14_avm_enable <= bb_processFPGA_B17_stall_region_out_memdep_14_avm_enable;

    -- out_memdep_14_avm_read(GPOUT,34)
    out_memdep_14_avm_read <= bb_processFPGA_B17_stall_region_out_memdep_14_avm_read;

    -- out_memdep_14_avm_write(GPOUT,35)
    out_memdep_14_avm_write <= bb_processFPGA_B17_stall_region_out_memdep_14_avm_write;

    -- out_memdep_14_avm_writedata(GPOUT,36)
    out_memdep_14_avm_writedata <= bb_processFPGA_B17_stall_region_out_memdep_14_avm_writedata;

    -- out_normls_load291_avm_address(GPOUT,37)
    out_normls_load291_avm_address <= bb_processFPGA_B17_stall_region_out_normls_load291_avm_address;

    -- out_normls_load291_avm_burstcount(GPOUT,38)
    out_normls_load291_avm_burstcount <= bb_processFPGA_B17_stall_region_out_normls_load291_avm_burstcount;

    -- out_normls_load291_avm_byteenable(GPOUT,39)
    out_normls_load291_avm_byteenable <= bb_processFPGA_B17_stall_region_out_normls_load291_avm_byteenable;

    -- out_normls_load291_avm_enable(GPOUT,40)
    out_normls_load291_avm_enable <= bb_processFPGA_B17_stall_region_out_normls_load291_avm_enable;

    -- out_normls_load291_avm_read(GPOUT,41)
    out_normls_load291_avm_read <= bb_processFPGA_B17_stall_region_out_normls_load291_avm_read;

    -- out_normls_load291_avm_write(GPOUT,42)
    out_normls_load291_avm_write <= bb_processFPGA_B17_stall_region_out_normls_load291_avm_write;

    -- out_normls_load291_avm_writedata(GPOUT,43)
    out_normls_load291_avm_writedata <= bb_processFPGA_B17_stall_region_out_normls_load291_avm_writedata;

    -- out_normls_load302_avm_address(GPOUT,44)
    out_normls_load302_avm_address <= bb_processFPGA_B17_stall_region_out_normls_load302_avm_address;

    -- out_normls_load302_avm_burstcount(GPOUT,45)
    out_normls_load302_avm_burstcount <= bb_processFPGA_B17_stall_region_out_normls_load302_avm_burstcount;

    -- out_normls_load302_avm_byteenable(GPOUT,46)
    out_normls_load302_avm_byteenable <= bb_processFPGA_B17_stall_region_out_normls_load302_avm_byteenable;

    -- out_normls_load302_avm_enable(GPOUT,47)
    out_normls_load302_avm_enable <= bb_processFPGA_B17_stall_region_out_normls_load302_avm_enable;

    -- out_normls_load302_avm_read(GPOUT,48)
    out_normls_load302_avm_read <= bb_processFPGA_B17_stall_region_out_normls_load302_avm_read;

    -- out_normls_load302_avm_write(GPOUT,49)
    out_normls_load302_avm_write <= bb_processFPGA_B17_stall_region_out_normls_load302_avm_write;

    -- out_normls_load302_avm_writedata(GPOUT,50)
    out_normls_load302_avm_writedata <= bb_processFPGA_B17_stall_region_out_normls_load302_avm_writedata;

    -- out_normls_load313_avm_address(GPOUT,51)
    out_normls_load313_avm_address <= bb_processFPGA_B17_stall_region_out_normls_load313_avm_address;

    -- out_normls_load313_avm_burstcount(GPOUT,52)
    out_normls_load313_avm_burstcount <= bb_processFPGA_B17_stall_region_out_normls_load313_avm_burstcount;

    -- out_normls_load313_avm_byteenable(GPOUT,53)
    out_normls_load313_avm_byteenable <= bb_processFPGA_B17_stall_region_out_normls_load313_avm_byteenable;

    -- out_normls_load313_avm_enable(GPOUT,54)
    out_normls_load313_avm_enable <= bb_processFPGA_B17_stall_region_out_normls_load313_avm_enable;

    -- out_normls_load313_avm_read(GPOUT,55)
    out_normls_load313_avm_read <= bb_processFPGA_B17_stall_region_out_normls_load313_avm_read;

    -- out_normls_load313_avm_write(GPOUT,56)
    out_normls_load313_avm_write <= bb_processFPGA_B17_stall_region_out_normls_load313_avm_write;

    -- out_normls_load313_avm_writedata(GPOUT,57)
    out_normls_load313_avm_writedata <= bb_processFPGA_B17_stall_region_out_normls_load313_avm_writedata;

    -- out_stall_out_0(GPOUT,58)
    out_stall_out_0 <= processFPGA_B17_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,59)
    out_stall_out_1 <= processFPGA_B17_merge_out_stall_out_1;

    -- out_tmp38_i_i91014_avm_address(GPOUT,60)
    out_tmp38_i_i91014_avm_address <= bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_address;

    -- out_tmp38_i_i91014_avm_burstcount(GPOUT,61)
    out_tmp38_i_i91014_avm_burstcount <= bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_burstcount;

    -- out_tmp38_i_i91014_avm_byteenable(GPOUT,62)
    out_tmp38_i_i91014_avm_byteenable <= bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_byteenable;

    -- out_tmp38_i_i91014_avm_enable(GPOUT,63)
    out_tmp38_i_i91014_avm_enable <= bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_enable;

    -- out_tmp38_i_i91014_avm_read(GPOUT,64)
    out_tmp38_i_i91014_avm_read <= bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_read;

    -- out_tmp38_i_i91014_avm_write(GPOUT,65)
    out_tmp38_i_i91014_avm_write <= bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_write;

    -- out_tmp38_i_i91014_avm_writedata(GPOUT,66)
    out_tmp38_i_i91014_avm_writedata <= bb_processFPGA_B17_stall_region_out_tmp38_i_i91014_avm_writedata;

    -- out_tmp39_i_i91218_avm_address(GPOUT,67)
    out_tmp39_i_i91218_avm_address <= bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_address;

    -- out_tmp39_i_i91218_avm_burstcount(GPOUT,68)
    out_tmp39_i_i91218_avm_burstcount <= bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_burstcount;

    -- out_tmp39_i_i91218_avm_byteenable(GPOUT,69)
    out_tmp39_i_i91218_avm_byteenable <= bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_byteenable;

    -- out_tmp39_i_i91218_avm_enable(GPOUT,70)
    out_tmp39_i_i91218_avm_enable <= bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_enable;

    -- out_tmp39_i_i91218_avm_read(GPOUT,71)
    out_tmp39_i_i91218_avm_read <= bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_read;

    -- out_tmp39_i_i91218_avm_write(GPOUT,72)
    out_tmp39_i_i91218_avm_write <= bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_write;

    -- out_tmp39_i_i91218_avm_writedata(GPOUT,73)
    out_tmp39_i_i91218_avm_writedata <= bb_processFPGA_B17_stall_region_out_tmp39_i_i91218_avm_writedata;

    -- out_tmp42_i_i91817_avm_address(GPOUT,74)
    out_tmp42_i_i91817_avm_address <= bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_address;

    -- out_tmp42_i_i91817_avm_burstcount(GPOUT,75)
    out_tmp42_i_i91817_avm_burstcount <= bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_burstcount;

    -- out_tmp42_i_i91817_avm_byteenable(GPOUT,76)
    out_tmp42_i_i91817_avm_byteenable <= bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_byteenable;

    -- out_tmp42_i_i91817_avm_enable(GPOUT,77)
    out_tmp42_i_i91817_avm_enable <= bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_enable;

    -- out_tmp42_i_i91817_avm_read(GPOUT,78)
    out_tmp42_i_i91817_avm_read <= bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_read;

    -- out_tmp42_i_i91817_avm_write(GPOUT,79)
    out_tmp42_i_i91817_avm_write <= bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_write;

    -- out_tmp42_i_i91817_avm_writedata(GPOUT,80)
    out_tmp42_i_i91817_avm_writedata <= bb_processFPGA_B17_stall_region_out_tmp42_i_i91817_avm_writedata;

    -- out_unnamed_processFPGA103_avm_address(GPOUT,81)
    out_unnamed_processFPGA103_avm_address <= bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_address;

    -- out_unnamed_processFPGA103_avm_burstcount(GPOUT,82)
    out_unnamed_processFPGA103_avm_burstcount <= bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_burstcount;

    -- out_unnamed_processFPGA103_avm_byteenable(GPOUT,83)
    out_unnamed_processFPGA103_avm_byteenable <= bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_byteenable;

    -- out_unnamed_processFPGA103_avm_enable(GPOUT,84)
    out_unnamed_processFPGA103_avm_enable <= bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_enable;

    -- out_unnamed_processFPGA103_avm_read(GPOUT,85)
    out_unnamed_processFPGA103_avm_read <= bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_read;

    -- out_unnamed_processFPGA103_avm_write(GPOUT,86)
    out_unnamed_processFPGA103_avm_write <= bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_write;

    -- out_unnamed_processFPGA103_avm_writedata(GPOUT,87)
    out_unnamed_processFPGA103_avm_writedata <= bb_processFPGA_B17_stall_region_out_unnamed_processFPGA103_avm_writedata;

    -- out_valid_out_0(GPOUT,88)
    out_valid_out_0 <= processFPGA_B17_branch_aunroll_x_out_valid_out_0;

    -- out_valid_out_1(GPOUT,89)
    out_valid_out_1 <= processFPGA_B17_branch_aunroll_x_out_valid_out_1;

    -- pipeline_valid_out_sync(GPOUT,159)
    out_pipeline_valid_out <= bb_processFPGA_B17_stall_region_out_pipeline_valid_out;

END normal;
