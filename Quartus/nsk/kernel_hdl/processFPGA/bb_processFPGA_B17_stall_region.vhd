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

-- VHDL created from bb_processFPGA_B17_stall_region
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

entity bb_processFPGA_B17_stall_region is
    port (
        out_c0_exe1916 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit915_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit915_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit915_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localConn_load_020_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_localConn_load_020_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localConn_load_020_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localConn_load_020_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i91014_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp38_i_i91014_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i91014_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i91014_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i91014_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp38_i_i91014_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp38_i_i91014_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_46_0 : in std_logic_vector(16 downto 0);  -- ufix17
        out_intel_reserved_ffwd_59_0 : out std_logic_vector(15 downto 0);  -- ufix16
        in_acl_hw_wg_id799 : in std_logic_vector(31 downto 0);  -- ufix32
        in_forked429 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp42_i_i91817_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp42_i_i91817_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp42_i_i91817_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp42_i_i91817_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localConn_load_020_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localConn_load_020_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localConn_load_020_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localConn_load_020_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localConn_load_020_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localConn_load_020_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memcoalesce_localConn_load_020_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_50_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_tmp39_i_i91218_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp39_i_i91218_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp39_i_i91218_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp39_i_i91218_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i91817_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp42_i_i91817_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i91817_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i91817_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i91817_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp42_i_i91817_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp42_i_i91817_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_56_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA103_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_processFPGA103_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA103_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA103_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i91218_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp39_i_i91218_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i91218_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i91218_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i91218_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp39_i_i91218_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp39_i_i91218_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_57_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_08_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_localNeurons_load_08_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_08_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_08_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA103_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA103_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA103_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA103_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA103_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA103_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_processFPGA103_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_localConn : in std_logic_vector(63 downto 0);  -- ufix64
        in_normls_load291_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load291_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load291_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load291_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_08_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_08_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_08_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_08_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_08_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_08_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memcoalesce_localNeurons_load_08_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        in_normls_load302_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load302_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load302_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load302_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load291_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load291_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load291_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load291_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load291_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load291_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load291_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_014_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_localNeurons_load_014_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_014_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_014_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load302_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load302_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load302_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load302_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load302_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load302_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load302_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load313_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load313_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load313_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load313_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_014_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_014_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_014_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_014_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_014_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_014_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memcoalesce_localNeurons_load_014_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_14_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_memdep_14_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_14_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_14_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load313_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load313_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load313_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load313_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load313_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load313_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load313_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_14_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_14_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_14_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_14_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_14_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_14_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_memdep_14_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp38_i_i91014_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp38_i_i91014_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp38_i_i91014_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp38_i_i91014_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_58_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_processFPGA_B17_stall_region;

architecture normal of bb_processFPGA_B17_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga is
        port (
            in_c0_eni2909_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni2909_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni2909_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_c0_exit915_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit915_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit915_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
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
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component processFPGA_B17_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_c0_exit915_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_c0_exit915_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_c0_exit915_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_intel_reserved_ffwd_58_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_intel_reserved_ffwd_59_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal processFPGA_B17_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B17_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal processFPGA_B17_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B17_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_q : STD_LOGIC_VECTOR (33 downto 0);
    signal bubble_select_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_d : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_processFPGA_B17_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (32 downto 0);
    signal bubble_select_processFPGA_B17_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_processFPGA_B17_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (32 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B17_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B17_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B17_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- SE_stall_entry(STALLENABLE,66)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= processFPGA_B17_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,59)
    bubble_join_stall_entry_q <= in_forked429 & in_acl_hw_wg_id799;

    -- bubble_select_stall_entry(BITSELECT,60)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(31 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(32 downto 32));

    -- processFPGA_B17_merge_reg_aunroll_x(BLACKBOX,35)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theprocessFPGA_B17_merge_reg_aunroll_x : processFPGA_B17_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_c,
        in_data_in_1 => bubble_select_stall_entry_b,
        in_stall_in => SE_out_processFPGA_B17_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => processFPGA_B17_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => processFPGA_B17_merge_reg_aunroll_x_out_data_out_1,
        out_stall_out => processFPGA_B17_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => processFPGA_B17_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_processFPGA_B17_merge_reg_aunroll_x(STALLENABLE,65)
    -- Valid signal propagation
    SE_out_processFPGA_B17_merge_reg_aunroll_x_V0 <= SE_out_processFPGA_B17_merge_reg_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_processFPGA_B17_merge_reg_aunroll_x_backStall <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_o_stall or not (SE_out_processFPGA_B17_merge_reg_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_processFPGA_B17_merge_reg_aunroll_x_wireValid <= processFPGA_B17_merge_reg_aunroll_x_out_valid_out;

    -- bubble_join_processFPGA_B17_merge_reg_aunroll_x(BITJOIN,56)
    bubble_join_processFPGA_B17_merge_reg_aunroll_x_q <= processFPGA_B17_merge_reg_aunroll_x_out_data_out_1 & processFPGA_B17_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_processFPGA_B17_merge_reg_aunroll_x(BITSELECT,57)
    bubble_select_processFPGA_B17_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_processFPGA_B17_merge_reg_aunroll_x_q(0 downto 0));
    bubble_select_processFPGA_B17_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_processFPGA_B17_merge_reg_aunroll_x_q(32 downto 1));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x(BLACKBOX,34)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit915_0@40
    -- out out_c0_exit915_1@40
    -- out out_c0_exit915_2@40
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_valid_out@20000000
    -- out out_intel_reserved_ffwd_58_0@20000000
    -- out out_intel_reserved_ffwd_59_0@20000000
    -- out out_memcoalesce_localConn_load_020_avm_address@20000000
    -- out out_memcoalesce_localConn_load_020_avm_burstcount@20000000
    -- out out_memcoalesce_localConn_load_020_avm_byteenable@20000000
    -- out out_memcoalesce_localConn_load_020_avm_enable@20000000
    -- out out_memcoalesce_localConn_load_020_avm_read@20000000
    -- out out_memcoalesce_localConn_load_020_avm_write@20000000
    -- out out_memcoalesce_localConn_load_020_avm_writedata@20000000
    -- out out_memcoalesce_localNeurons_load_014_avm_address@20000000
    -- out out_memcoalesce_localNeurons_load_014_avm_burstcount@20000000
    -- out out_memcoalesce_localNeurons_load_014_avm_byteenable@20000000
    -- out out_memcoalesce_localNeurons_load_014_avm_enable@20000000
    -- out out_memcoalesce_localNeurons_load_014_avm_read@20000000
    -- out out_memcoalesce_localNeurons_load_014_avm_write@20000000
    -- out out_memcoalesce_localNeurons_load_014_avm_writedata@20000000
    -- out out_memcoalesce_localNeurons_load_08_avm_address@20000000
    -- out out_memcoalesce_localNeurons_load_08_avm_burstcount@20000000
    -- out out_memcoalesce_localNeurons_load_08_avm_byteenable@20000000
    -- out out_memcoalesce_localNeurons_load_08_avm_enable@20000000
    -- out out_memcoalesce_localNeurons_load_08_avm_read@20000000
    -- out out_memcoalesce_localNeurons_load_08_avm_write@20000000
    -- out out_memcoalesce_localNeurons_load_08_avm_writedata@20000000
    -- out out_memdep_14_avm_address@20000000
    -- out out_memdep_14_avm_burstcount@20000000
    -- out out_memdep_14_avm_byteenable@20000000
    -- out out_memdep_14_avm_enable@20000000
    -- out out_memdep_14_avm_read@20000000
    -- out out_memdep_14_avm_write@20000000
    -- out out_memdep_14_avm_writedata@20000000
    -- out out_normls_load291_avm_address@20000000
    -- out out_normls_load291_avm_burstcount@20000000
    -- out out_normls_load291_avm_byteenable@20000000
    -- out out_normls_load291_avm_enable@20000000
    -- out out_normls_load291_avm_read@20000000
    -- out out_normls_load291_avm_write@20000000
    -- out out_normls_load291_avm_writedata@20000000
    -- out out_normls_load302_avm_address@20000000
    -- out out_normls_load302_avm_burstcount@20000000
    -- out out_normls_load302_avm_byteenable@20000000
    -- out out_normls_load302_avm_enable@20000000
    -- out out_normls_load302_avm_read@20000000
    -- out out_normls_load302_avm_write@20000000
    -- out out_normls_load302_avm_writedata@20000000
    -- out out_normls_load313_avm_address@20000000
    -- out out_normls_load313_avm_burstcount@20000000
    -- out out_normls_load313_avm_byteenable@20000000
    -- out out_normls_load313_avm_enable@20000000
    -- out out_normls_load313_avm_read@20000000
    -- out out_normls_load313_avm_write@20000000
    -- out out_normls_load313_avm_writedata@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@40
    -- out out_pipeline_valid_out@20000000
    -- out out_tmp38_i_i91014_avm_address@20000000
    -- out out_tmp38_i_i91014_avm_burstcount@20000000
    -- out out_tmp38_i_i91014_avm_byteenable@20000000
    -- out out_tmp38_i_i91014_avm_enable@20000000
    -- out out_tmp38_i_i91014_avm_read@20000000
    -- out out_tmp38_i_i91014_avm_write@20000000
    -- out out_tmp38_i_i91014_avm_writedata@20000000
    -- out out_tmp39_i_i91218_avm_address@20000000
    -- out out_tmp39_i_i91218_avm_burstcount@20000000
    -- out out_tmp39_i_i91218_avm_byteenable@20000000
    -- out out_tmp39_i_i91218_avm_enable@20000000
    -- out out_tmp39_i_i91218_avm_read@20000000
    -- out out_tmp39_i_i91218_avm_write@20000000
    -- out out_tmp39_i_i91218_avm_writedata@20000000
    -- out out_tmp42_i_i91817_avm_address@20000000
    -- out out_tmp42_i_i91817_avm_burstcount@20000000
    -- out out_tmp42_i_i91817_avm_byteenable@20000000
    -- out out_tmp42_i_i91817_avm_enable@20000000
    -- out out_tmp42_i_i91817_avm_read@20000000
    -- out out_tmp42_i_i91817_avm_write@20000000
    -- out out_tmp42_i_i91817_avm_writedata@20000000
    -- out out_unnamed_processFPGA103_avm_address@20000000
    -- out out_unnamed_processFPGA103_avm_burstcount@20000000
    -- out out_unnamed_processFPGA103_avm_byteenable@20000000
    -- out out_unnamed_processFPGA103_avm_enable@20000000
    -- out out_unnamed_processFPGA103_avm_read@20000000
    -- out out_unnamed_processFPGA103_avm_write@20000000
    -- out out_unnamed_processFPGA103_avm_writedata@20000000
    thei_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x : i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga
    PORT MAP (
        in_c0_eni2909_0 => GND_q,
        in_c0_eni2909_1 => bubble_select_processFPGA_B17_merge_reg_aunroll_x_b,
        in_c0_eni2909_2 => bubble_select_processFPGA_B17_merge_reg_aunroll_x_c,
        in_flush => in_flush,
        in_i_stall => SE_out_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_backStall,
        in_i_valid => SE_out_processFPGA_B17_merge_reg_aunroll_x_V0,
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
        out_c0_exit915_0 => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_c0_exit915_0,
        out_c0_exit915_1 => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_c0_exit915_1,
        out_c0_exit915_2 => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_c0_exit915_2,
        out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_stall_out => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_valid_out => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_valid_out,
        out_intel_reserved_ffwd_58_0 => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_intel_reserved_ffwd_58_0,
        out_intel_reserved_ffwd_59_0 => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_intel_reserved_ffwd_59_0,
        out_memcoalesce_localConn_load_020_avm_address => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_address,
        out_memcoalesce_localConn_load_020_avm_burstcount => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_burstcount,
        out_memcoalesce_localConn_load_020_avm_byteenable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_byteenable,
        out_memcoalesce_localConn_load_020_avm_enable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_enable,
        out_memcoalesce_localConn_load_020_avm_read => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_read,
        out_memcoalesce_localConn_load_020_avm_write => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_write,
        out_memcoalesce_localConn_load_020_avm_writedata => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_writedata,
        out_memcoalesce_localNeurons_load_014_avm_address => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_address,
        out_memcoalesce_localNeurons_load_014_avm_burstcount => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_burstcount,
        out_memcoalesce_localNeurons_load_014_avm_byteenable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_byteenable,
        out_memcoalesce_localNeurons_load_014_avm_enable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_enable,
        out_memcoalesce_localNeurons_load_014_avm_read => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_read,
        out_memcoalesce_localNeurons_load_014_avm_write => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_write,
        out_memcoalesce_localNeurons_load_014_avm_writedata => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_writedata,
        out_memcoalesce_localNeurons_load_08_avm_address => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_address,
        out_memcoalesce_localNeurons_load_08_avm_burstcount => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_burstcount,
        out_memcoalesce_localNeurons_load_08_avm_byteenable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_byteenable,
        out_memcoalesce_localNeurons_load_08_avm_enable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_enable,
        out_memcoalesce_localNeurons_load_08_avm_read => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_read,
        out_memcoalesce_localNeurons_load_08_avm_write => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_write,
        out_memcoalesce_localNeurons_load_08_avm_writedata => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_writedata,
        out_memdep_14_avm_address => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_address,
        out_memdep_14_avm_burstcount => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_burstcount,
        out_memdep_14_avm_byteenable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_byteenable,
        out_memdep_14_avm_enable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_enable,
        out_memdep_14_avm_read => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_read,
        out_memdep_14_avm_write => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_write,
        out_memdep_14_avm_writedata => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_writedata,
        out_normls_load291_avm_address => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_address,
        out_normls_load291_avm_burstcount => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_burstcount,
        out_normls_load291_avm_byteenable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_byteenable,
        out_normls_load291_avm_enable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_enable,
        out_normls_load291_avm_read => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_read,
        out_normls_load291_avm_write => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_write,
        out_normls_load291_avm_writedata => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_writedata,
        out_normls_load302_avm_address => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_address,
        out_normls_load302_avm_burstcount => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_burstcount,
        out_normls_load302_avm_byteenable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_byteenable,
        out_normls_load302_avm_enable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_enable,
        out_normls_load302_avm_read => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_read,
        out_normls_load302_avm_write => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_write,
        out_normls_load302_avm_writedata => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_writedata,
        out_normls_load313_avm_address => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_address,
        out_normls_load313_avm_burstcount => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_burstcount,
        out_normls_load313_avm_byteenable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_byteenable,
        out_normls_load313_avm_enable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_enable,
        out_normls_load313_avm_read => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_read,
        out_normls_load313_avm_write => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_write,
        out_normls_load313_avm_writedata => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_writedata,
        out_o_stall => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_pipeline_valid_out,
        out_tmp38_i_i91014_avm_address => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_address,
        out_tmp38_i_i91014_avm_burstcount => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_burstcount,
        out_tmp38_i_i91014_avm_byteenable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_byteenable,
        out_tmp38_i_i91014_avm_enable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_enable,
        out_tmp38_i_i91014_avm_read => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_read,
        out_tmp38_i_i91014_avm_write => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_write,
        out_tmp38_i_i91014_avm_writedata => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_writedata,
        out_tmp39_i_i91218_avm_address => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_address,
        out_tmp39_i_i91218_avm_burstcount => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_burstcount,
        out_tmp39_i_i91218_avm_byteenable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_byteenable,
        out_tmp39_i_i91218_avm_enable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_enable,
        out_tmp39_i_i91218_avm_read => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_read,
        out_tmp39_i_i91218_avm_write => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_write,
        out_tmp39_i_i91218_avm_writedata => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_writedata,
        out_tmp42_i_i91817_avm_address => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_address,
        out_tmp42_i_i91817_avm_burstcount => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_burstcount,
        out_tmp42_i_i91817_avm_byteenable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_byteenable,
        out_tmp42_i_i91817_avm_enable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_enable,
        out_tmp42_i_i91817_avm_read => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_read,
        out_tmp42_i_i91817_avm_write => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_write,
        out_tmp42_i_i91817_avm_writedata => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_writedata,
        out_unnamed_processFPGA103_avm_address => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_address,
        out_unnamed_processFPGA103_avm_burstcount => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_burstcount,
        out_unnamed_processFPGA103_avm_byteenable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_byteenable,
        out_unnamed_processFPGA103_avm_enable => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_enable,
        out_unnamed_processFPGA103_avm_read => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_read,
        out_unnamed_processFPGA103_avm_write => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_write,
        out_unnamed_processFPGA103_avm_writedata => i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x(STALLENABLE,63)
    -- Valid signal propagation
    SE_out_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_V0 <= SE_out_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_backStall <= in_stall_in or not (SE_out_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_wireValid <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_o_valid;

    -- bubble_join_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x(BITJOIN,52)
    bubble_join_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_q <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_c0_exit915_2 & i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_c0_exit915_1 & i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_c0_exit915_0;

    -- bubble_select_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x(BITSELECT,53)
    bubble_select_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_q(0 downto 0));
    bubble_select_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_q(1 downto 1));
    bubble_select_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_q(33 downto 2));

    -- dupName_0_sync_out_aunroll_x(GPOUT,2)@40
    out_c0_exe1916 <= bubble_select_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_c;
    out_c0_exit915_0 <= bubble_select_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_b;
    out_c0_exit915_1 <= bubble_select_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_c;
    out_c0_exit915_2 <= bubble_select_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_d;
    out_valid_out <= SE_out_i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_V0;

    -- dupName_0_ext_sig_sync_out_x(GPOUT,4)
    out_tmp38_i_i91014_avm_address <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_address;
    out_tmp38_i_i91014_avm_enable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_enable;
    out_tmp38_i_i91014_avm_read <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_read;
    out_tmp38_i_i91014_avm_write <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_write;
    out_tmp38_i_i91014_avm_writedata <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_writedata;
    out_tmp38_i_i91014_avm_byteenable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_byteenable;
    out_tmp38_i_i91014_avm_burstcount <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp38_i_i91014_avm_burstcount;

    -- dupName_0_regfree_osync_x(GPOUT,8)
    out_intel_reserved_ffwd_59_0 <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_intel_reserved_ffwd_59_0;

    -- dupName_1_ext_sig_sync_out_x(GPOUT,11)
    out_memcoalesce_localConn_load_020_avm_address <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_address;
    out_memcoalesce_localConn_load_020_avm_enable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_enable;
    out_memcoalesce_localConn_load_020_avm_read <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_read;
    out_memcoalesce_localConn_load_020_avm_write <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_write;
    out_memcoalesce_localConn_load_020_avm_writedata <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_writedata;
    out_memcoalesce_localConn_load_020_avm_byteenable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_byteenable;
    out_memcoalesce_localConn_load_020_avm_burstcount <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localConn_load_020_avm_burstcount;

    -- dupName_2_ext_sig_sync_out_x(GPOUT,14)
    out_tmp42_i_i91817_avm_address <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_address;
    out_tmp42_i_i91817_avm_enable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_enable;
    out_tmp42_i_i91817_avm_read <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_read;
    out_tmp42_i_i91817_avm_write <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_write;
    out_tmp42_i_i91817_avm_writedata <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_writedata;
    out_tmp42_i_i91817_avm_byteenable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_byteenable;
    out_tmp42_i_i91817_avm_burstcount <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp42_i_i91817_avm_burstcount;

    -- dupName_3_ext_sig_sync_out_x(GPOUT,17)
    out_tmp39_i_i91218_avm_address <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_address;
    out_tmp39_i_i91218_avm_enable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_enable;
    out_tmp39_i_i91218_avm_read <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_read;
    out_tmp39_i_i91218_avm_write <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_write;
    out_tmp39_i_i91218_avm_writedata <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_writedata;
    out_tmp39_i_i91218_avm_byteenable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_byteenable;
    out_tmp39_i_i91218_avm_burstcount <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_tmp39_i_i91218_avm_burstcount;

    -- dupName_4_ext_sig_sync_out_x(GPOUT,20)
    out_unnamed_processFPGA103_avm_address <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_address;
    out_unnamed_processFPGA103_avm_enable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_enable;
    out_unnamed_processFPGA103_avm_read <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_read;
    out_unnamed_processFPGA103_avm_write <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_write;
    out_unnamed_processFPGA103_avm_writedata <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_writedata;
    out_unnamed_processFPGA103_avm_byteenable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_byteenable;
    out_unnamed_processFPGA103_avm_burstcount <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_unnamed_processFPGA103_avm_burstcount;

    -- dupName_5_ext_sig_sync_out_x(GPOUT,23)
    out_memcoalesce_localNeurons_load_08_avm_address <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_address;
    out_memcoalesce_localNeurons_load_08_avm_enable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_enable;
    out_memcoalesce_localNeurons_load_08_avm_read <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_read;
    out_memcoalesce_localNeurons_load_08_avm_write <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_write;
    out_memcoalesce_localNeurons_load_08_avm_writedata <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_writedata;
    out_memcoalesce_localNeurons_load_08_avm_byteenable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_byteenable;
    out_memcoalesce_localNeurons_load_08_avm_burstcount <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_08_avm_burstcount;

    -- dupName_6_ext_sig_sync_out_x(GPOUT,26)
    out_normls_load291_avm_address <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_address;
    out_normls_load291_avm_enable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_enable;
    out_normls_load291_avm_read <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_read;
    out_normls_load291_avm_write <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_write;
    out_normls_load291_avm_writedata <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_writedata;
    out_normls_load291_avm_byteenable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_byteenable;
    out_normls_load291_avm_burstcount <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load291_avm_burstcount;

    -- dupName_7_ext_sig_sync_out_x(GPOUT,28)
    out_normls_load302_avm_address <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_address;
    out_normls_load302_avm_enable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_enable;
    out_normls_load302_avm_read <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_read;
    out_normls_load302_avm_write <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_write;
    out_normls_load302_avm_writedata <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_writedata;
    out_normls_load302_avm_byteenable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_byteenable;
    out_normls_load302_avm_burstcount <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load302_avm_burstcount;

    -- dupName_8_ext_sig_sync_out_x(GPOUT,30)
    out_memcoalesce_localNeurons_load_014_avm_address <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_address;
    out_memcoalesce_localNeurons_load_014_avm_enable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_enable;
    out_memcoalesce_localNeurons_load_014_avm_read <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_read;
    out_memcoalesce_localNeurons_load_014_avm_write <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_write;
    out_memcoalesce_localNeurons_load_014_avm_writedata <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_writedata;
    out_memcoalesce_localNeurons_load_014_avm_byteenable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_byteenable;
    out_memcoalesce_localNeurons_load_014_avm_burstcount <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_014_avm_burstcount;

    -- dupName_9_ext_sig_sync_out_x(GPOUT,32)
    out_normls_load313_avm_address <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_address;
    out_normls_load313_avm_enable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_enable;
    out_normls_load313_avm_read <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_read;
    out_normls_load313_avm_write <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_write;
    out_normls_load313_avm_writedata <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_writedata;
    out_normls_load313_avm_byteenable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_byteenable;
    out_normls_load313_avm_burstcount <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_normls_load313_avm_burstcount;

    -- dupName_10_ext_sig_sync_out_x(GPOUT,33)
    out_memdep_14_avm_address <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_address;
    out_memdep_14_avm_enable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_enable;
    out_memdep_14_avm_read <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_read;
    out_memdep_14_avm_write <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_write;
    out_memdep_14_avm_writedata <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_writedata;
    out_memdep_14_avm_byteenable <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_byteenable;
    out_memdep_14_avm_burstcount <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_memdep_14_avm_burstcount;

    -- ext_sig_sync_out(GPOUT,40)
    out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_valid_out <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_stall_out <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going671_processfpga_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,44)
    out_pipeline_valid_out <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_pipeline_valid_out;

    -- regfree_osync(GPOUT,46)
    out_intel_reserved_ffwd_58_0 <= i_sfc_c0_for_body_i_i927_processfpga_c0_enter910_processfpga_aunroll_x_out_intel_reserved_ffwd_58_0;

    -- sync_out(GPOUT,50)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
