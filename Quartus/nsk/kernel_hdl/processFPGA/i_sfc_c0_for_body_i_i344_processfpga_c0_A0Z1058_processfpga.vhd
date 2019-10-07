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

-- VHDL created from i_sfc_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga
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

entity i_sfc_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga is
    port (
        in_c0_eni21057_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21057_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni21057_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit1063_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit1063_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit1063_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_131_0 : in std_logic_vector(16 downto 0);  -- ufix17
        out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_134_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_141_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_135_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_142_0 : out std_logic_vector(15 downto 0);  -- ufix16
        in_intel_reserved_ffwd_138_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_143_0 : out std_logic_vector(7 downto 0);  -- ufix8
        in_localConn : in std_logic_vector(63 downto 0);  -- ufix64
        out_memcoalesce_localConn_load_0121_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_memcoalesce_localConn_load_0121_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localConn_load_0121_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localConn_load_0121_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        in_memcoalesce_localConn_load_0121_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localConn_load_0121_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localConn_load_0121_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localConn_load_0121_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localConn_load_0121_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localConn_load_0121_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_0109_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localConn_load_0121_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_localNeurons_load_0109_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_0109_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_localNeurons_load_0109_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_0109_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_0109_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_0109_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        in_memcoalesce_localNeurons_load_0115_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_0109_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_0115_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_0109_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_0115_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_0109_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_0115_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_0109_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_37_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        out_memcoalesce_localNeurons_load_0115_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_37_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_0115_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_37_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_0115_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        in_memdep_37_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_0115_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load587_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_0115_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load587_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_0115_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load587_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_0115_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load587_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_37_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load598_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_37_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load598_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_37_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        in_normls_load598_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_37_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load598_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_37_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load609_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_37_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load609_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_37_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        in_normls_load609_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load587_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load609_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load587_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp38_i_i32755_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load587_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        in_tmp38_i_i32755_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load587_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp38_i_i32755_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load587_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp38_i_i32755_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load587_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp39_i_i32959_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load587_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_tmp39_i_i32959_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load598_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_tmp39_i_i32959_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load598_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp39_i_i32959_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load598_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        in_tmp42_i_i33558_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load598_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp42_i_i33558_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load598_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp42_i_i33558_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load598_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp42_i_i33558_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load598_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_processFPGA314_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load609_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_processFPGA314_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load609_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA314_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load609_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        in_unnamed_processFPGA314_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load609_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load609_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load609_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load609_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp38_i_i32755_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp38_i_i32755_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i32755_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp38_i_i32755_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i32755_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i32755_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i32755_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp39_i_i32959_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp39_i_i32959_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i32959_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp39_i_i32959_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i32959_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i32959_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i32959_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp42_i_i33558_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp42_i_i33558_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i33558_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp42_i_i33558_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i33558_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i33558_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i33558_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA314_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA314_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA314_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_processFPGA314_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA314_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA314_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA314_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_i_stall : in std_logic_vector(0 downto 0);  -- ufix1
        out_o_stall : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga;

architecture normal of i_sfc_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga2340 is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_accepted : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_entry : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205 is
        port (
            in_c0_eni21057_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni21057_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni21057_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_131_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_134_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_135_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_138_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_localConn : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_localNeurons : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memcoalesce_localConn_load_0121_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memcoalesce_localConn_load_0121_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localConn_load_0121_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localConn_load_0121_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_0109_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_0109_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_0109_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_0109_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_0115_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_0115_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_0115_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_0115_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_37_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_memdep_37_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_37_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_37_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load587_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load587_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load587_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load587_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load598_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load598_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load598_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load598_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load609_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load609_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load609_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load609_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp38_i_i32755_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp38_i_i32755_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp38_i_i32755_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp38_i_i32755_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp39_i_i32959_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp39_i_i32959_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp39_i_i32959_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp39_i_i32959_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp42_i_i33558_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp42_i_i33558_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp42_i_i33558_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp42_i_i33558_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA314_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_processFPGA314_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA314_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA314_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exi21062_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exi21062_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exi21062_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_141_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_142_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_143_0 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_0121_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_0121_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_0121_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_0121_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_0121_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_0121_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_0121_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0109_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0109_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0109_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0109_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0109_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0109_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0109_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0115_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0115_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0115_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0115_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0115_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0115_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_0115_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_37_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_37_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_37_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_memdep_37_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_37_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_37_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_37_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_normls_load587_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load587_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load587_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load587_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load587_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load587_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load587_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load598_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load598_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load598_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load598_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load598_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load598_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load598_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load609_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load609_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load609_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load609_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load609_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load609_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load609_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp38_i_i32755_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp38_i_i32755_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp38_i_i32755_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_tmp38_i_i32755_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp38_i_i32755_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp38_i_i32755_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp38_i_i32755_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp39_i_i32959_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp39_i_i32959_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp39_i_i32959_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_tmp39_i_i32959_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp39_i_i32959_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp39_i_i32959_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp39_i_i32959_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp42_i_i33558_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp42_i_i33558_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp42_i_i33558_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_tmp42_i_i33558_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp42_i_i33558_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp42_i_i33558_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp42_i_i33558_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA314_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA314_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA314_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_unnamed_processFPGA314_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA314_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA314_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA314_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_data_out_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_stall_entry : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_c0_exi21062_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_c0_exi21062_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_c0_exi21062_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_intel_reserved_ffwd_141_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_intel_reserved_ffwd_142_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_intel_reserved_ffwd_143_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal input_accepted_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_stall_out(LOGICAL,138)
    not_stall_out_q <= not (i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_stall_entry);

    -- input_accepted_and(LOGICAL,137)
    input_accepted_and_q <= in_i_valid and not_stall_out_q;

    -- i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x(BLACKBOX,136)@1
    -- out out_c0_exi21062_0@37
    -- out out_c0_exi21062_1@37
    -- out out_c0_exi21062_2@37
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_valid_out@20000000
    -- out out_intel_reserved_ffwd_141_0@37
    -- out out_intel_reserved_ffwd_142_0@37
    -- out out_intel_reserved_ffwd_143_0@37
    -- out out_memcoalesce_localConn_load_0121_avm_address@20000000
    -- out out_memcoalesce_localConn_load_0121_avm_burstcount@20000000
    -- out out_memcoalesce_localConn_load_0121_avm_byteenable@20000000
    -- out out_memcoalesce_localConn_load_0121_avm_enable@20000000
    -- out out_memcoalesce_localConn_load_0121_avm_read@20000000
    -- out out_memcoalesce_localConn_load_0121_avm_write@20000000
    -- out out_memcoalesce_localConn_load_0121_avm_writedata@20000000
    -- out out_memcoalesce_localNeurons_load_0109_avm_address@20000000
    -- out out_memcoalesce_localNeurons_load_0109_avm_burstcount@20000000
    -- out out_memcoalesce_localNeurons_load_0109_avm_byteenable@20000000
    -- out out_memcoalesce_localNeurons_load_0109_avm_enable@20000000
    -- out out_memcoalesce_localNeurons_load_0109_avm_read@20000000
    -- out out_memcoalesce_localNeurons_load_0109_avm_write@20000000
    -- out out_memcoalesce_localNeurons_load_0109_avm_writedata@20000000
    -- out out_memcoalesce_localNeurons_load_0115_avm_address@20000000
    -- out out_memcoalesce_localNeurons_load_0115_avm_burstcount@20000000
    -- out out_memcoalesce_localNeurons_load_0115_avm_byteenable@20000000
    -- out out_memcoalesce_localNeurons_load_0115_avm_enable@20000000
    -- out out_memcoalesce_localNeurons_load_0115_avm_read@20000000
    -- out out_memcoalesce_localNeurons_load_0115_avm_write@20000000
    -- out out_memcoalesce_localNeurons_load_0115_avm_writedata@20000000
    -- out out_memdep_37_avm_address@20000000
    -- out out_memdep_37_avm_burstcount@20000000
    -- out out_memdep_37_avm_byteenable@20000000
    -- out out_memdep_37_avm_enable@20000000
    -- out out_memdep_37_avm_read@20000000
    -- out out_memdep_37_avm_write@20000000
    -- out out_memdep_37_avm_writedata@20000000
    -- out out_normls_load587_avm_address@20000000
    -- out out_normls_load587_avm_burstcount@20000000
    -- out out_normls_load587_avm_byteenable@20000000
    -- out out_normls_load587_avm_enable@20000000
    -- out out_normls_load587_avm_read@20000000
    -- out out_normls_load587_avm_write@20000000
    -- out out_normls_load587_avm_writedata@20000000
    -- out out_normls_load598_avm_address@20000000
    -- out out_normls_load598_avm_burstcount@20000000
    -- out out_normls_load598_avm_byteenable@20000000
    -- out out_normls_load598_avm_enable@20000000
    -- out out_normls_load598_avm_read@20000000
    -- out out_normls_load598_avm_write@20000000
    -- out out_normls_load598_avm_writedata@20000000
    -- out out_normls_load609_avm_address@20000000
    -- out out_normls_load609_avm_burstcount@20000000
    -- out out_normls_load609_avm_byteenable@20000000
    -- out out_normls_load609_avm_enable@20000000
    -- out out_normls_load609_avm_read@20000000
    -- out out_normls_load609_avm_write@20000000
    -- out out_normls_load609_avm_writedata@20000000
    -- out out_o_valid@37
    -- out out_pipeline_valid_out@20000000
    -- out out_tmp38_i_i32755_avm_address@20000000
    -- out out_tmp38_i_i32755_avm_burstcount@20000000
    -- out out_tmp38_i_i32755_avm_byteenable@20000000
    -- out out_tmp38_i_i32755_avm_enable@20000000
    -- out out_tmp38_i_i32755_avm_read@20000000
    -- out out_tmp38_i_i32755_avm_write@20000000
    -- out out_tmp38_i_i32755_avm_writedata@20000000
    -- out out_tmp39_i_i32959_avm_address@20000000
    -- out out_tmp39_i_i32959_avm_burstcount@20000000
    -- out out_tmp39_i_i32959_avm_byteenable@20000000
    -- out out_tmp39_i_i32959_avm_enable@20000000
    -- out out_tmp39_i_i32959_avm_read@20000000
    -- out out_tmp39_i_i32959_avm_write@20000000
    -- out out_tmp39_i_i32959_avm_writedata@20000000
    -- out out_tmp42_i_i33558_avm_address@20000000
    -- out out_tmp42_i_i33558_avm_burstcount@20000000
    -- out out_tmp42_i_i33558_avm_byteenable@20000000
    -- out out_tmp42_i_i33558_avm_enable@20000000
    -- out out_tmp42_i_i33558_avm_read@20000000
    -- out out_tmp42_i_i33558_avm_write@20000000
    -- out out_tmp42_i_i33558_avm_writedata@20000000
    -- out out_unnamed_processFPGA314_avm_address@20000000
    -- out out_unnamed_processFPGA314_avm_burstcount@20000000
    -- out out_unnamed_processFPGA314_avm_byteenable@20000000
    -- out out_unnamed_processFPGA314_avm_enable@20000000
    -- out out_unnamed_processFPGA314_avm_read@20000000
    -- out out_unnamed_processFPGA314_avm_write@20000000
    -- out out_unnamed_processFPGA314_avm_writedata@20000000
    thei_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x : i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205
    PORT MAP (
        in_c0_eni21057_0 => in_c0_eni21057_0,
        in_c0_eni21057_1 => in_c0_eni21057_1,
        in_c0_eni21057_2 => in_c0_eni21057_2,
        in_flush => in_flush,
        in_i_valid => input_accepted_and_q,
        in_intel_reserved_ffwd_131_0 => in_intel_reserved_ffwd_131_0,
        in_intel_reserved_ffwd_134_0 => in_intel_reserved_ffwd_134_0,
        in_intel_reserved_ffwd_135_0 => in_intel_reserved_ffwd_135_0,
        in_intel_reserved_ffwd_138_0 => in_intel_reserved_ffwd_138_0,
        in_localConn => in_localConn,
        in_localNeurons => in_localNeurons,
        in_memcoalesce_localConn_load_0121_avm_readdata => in_memcoalesce_localConn_load_0121_avm_readdata,
        in_memcoalesce_localConn_load_0121_avm_readdatavalid => in_memcoalesce_localConn_load_0121_avm_readdatavalid,
        in_memcoalesce_localConn_load_0121_avm_waitrequest => in_memcoalesce_localConn_load_0121_avm_waitrequest,
        in_memcoalesce_localConn_load_0121_avm_writeack => in_memcoalesce_localConn_load_0121_avm_writeack,
        in_memcoalesce_localNeurons_load_0109_avm_readdata => in_memcoalesce_localNeurons_load_0109_avm_readdata,
        in_memcoalesce_localNeurons_load_0109_avm_readdatavalid => in_memcoalesce_localNeurons_load_0109_avm_readdatavalid,
        in_memcoalesce_localNeurons_load_0109_avm_waitrequest => in_memcoalesce_localNeurons_load_0109_avm_waitrequest,
        in_memcoalesce_localNeurons_load_0109_avm_writeack => in_memcoalesce_localNeurons_load_0109_avm_writeack,
        in_memcoalesce_localNeurons_load_0115_avm_readdata => in_memcoalesce_localNeurons_load_0115_avm_readdata,
        in_memcoalesce_localNeurons_load_0115_avm_readdatavalid => in_memcoalesce_localNeurons_load_0115_avm_readdatavalid,
        in_memcoalesce_localNeurons_load_0115_avm_waitrequest => in_memcoalesce_localNeurons_load_0115_avm_waitrequest,
        in_memcoalesce_localNeurons_load_0115_avm_writeack => in_memcoalesce_localNeurons_load_0115_avm_writeack,
        in_memdep_37_avm_readdata => in_memdep_37_avm_readdata,
        in_memdep_37_avm_readdatavalid => in_memdep_37_avm_readdatavalid,
        in_memdep_37_avm_waitrequest => in_memdep_37_avm_waitrequest,
        in_memdep_37_avm_writeack => in_memdep_37_avm_writeack,
        in_normls_load587_avm_readdata => in_normls_load587_avm_readdata,
        in_normls_load587_avm_readdatavalid => in_normls_load587_avm_readdatavalid,
        in_normls_load587_avm_waitrequest => in_normls_load587_avm_waitrequest,
        in_normls_load587_avm_writeack => in_normls_load587_avm_writeack,
        in_normls_load598_avm_readdata => in_normls_load598_avm_readdata,
        in_normls_load598_avm_readdatavalid => in_normls_load598_avm_readdatavalid,
        in_normls_load598_avm_waitrequest => in_normls_load598_avm_waitrequest,
        in_normls_load598_avm_writeack => in_normls_load598_avm_writeack,
        in_normls_load609_avm_readdata => in_normls_load609_avm_readdata,
        in_normls_load609_avm_readdatavalid => in_normls_load609_avm_readdatavalid,
        in_normls_load609_avm_waitrequest => in_normls_load609_avm_waitrequest,
        in_normls_load609_avm_writeack => in_normls_load609_avm_writeack,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_tmp38_i_i32755_avm_readdata => in_tmp38_i_i32755_avm_readdata,
        in_tmp38_i_i32755_avm_readdatavalid => in_tmp38_i_i32755_avm_readdatavalid,
        in_tmp38_i_i32755_avm_waitrequest => in_tmp38_i_i32755_avm_waitrequest,
        in_tmp38_i_i32755_avm_writeack => in_tmp38_i_i32755_avm_writeack,
        in_tmp39_i_i32959_avm_readdata => in_tmp39_i_i32959_avm_readdata,
        in_tmp39_i_i32959_avm_readdatavalid => in_tmp39_i_i32959_avm_readdatavalid,
        in_tmp39_i_i32959_avm_waitrequest => in_tmp39_i_i32959_avm_waitrequest,
        in_tmp39_i_i32959_avm_writeack => in_tmp39_i_i32959_avm_writeack,
        in_tmp42_i_i33558_avm_readdata => in_tmp42_i_i33558_avm_readdata,
        in_tmp42_i_i33558_avm_readdatavalid => in_tmp42_i_i33558_avm_readdatavalid,
        in_tmp42_i_i33558_avm_waitrequest => in_tmp42_i_i33558_avm_waitrequest,
        in_tmp42_i_i33558_avm_writeack => in_tmp42_i_i33558_avm_writeack,
        in_unnamed_processFPGA314_avm_readdata => in_unnamed_processFPGA314_avm_readdata,
        in_unnamed_processFPGA314_avm_readdatavalid => in_unnamed_processFPGA314_avm_readdatavalid,
        in_unnamed_processFPGA314_avm_waitrequest => in_unnamed_processFPGA314_avm_waitrequest,
        in_unnamed_processFPGA314_avm_writeack => in_unnamed_processFPGA314_avm_writeack,
        out_c0_exi21062_0 => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_c0_exi21062_0,
        out_c0_exi21062_1 => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_c0_exi21062_1,
        out_c0_exi21062_2 => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_c0_exi21062_2,
        out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_stall_out => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_valid_out => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_valid_out,
        out_intel_reserved_ffwd_141_0 => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_intel_reserved_ffwd_141_0,
        out_intel_reserved_ffwd_142_0 => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_intel_reserved_ffwd_142_0,
        out_intel_reserved_ffwd_143_0 => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_intel_reserved_ffwd_143_0,
        out_memcoalesce_localConn_load_0121_avm_address => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_address,
        out_memcoalesce_localConn_load_0121_avm_burstcount => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_burstcount,
        out_memcoalesce_localConn_load_0121_avm_byteenable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_byteenable,
        out_memcoalesce_localConn_load_0121_avm_enable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_enable,
        out_memcoalesce_localConn_load_0121_avm_read => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_read,
        out_memcoalesce_localConn_load_0121_avm_write => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_write,
        out_memcoalesce_localConn_load_0121_avm_writedata => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_writedata,
        out_memcoalesce_localNeurons_load_0109_avm_address => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_address,
        out_memcoalesce_localNeurons_load_0109_avm_burstcount => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_burstcount,
        out_memcoalesce_localNeurons_load_0109_avm_byteenable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_byteenable,
        out_memcoalesce_localNeurons_load_0109_avm_enable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_enable,
        out_memcoalesce_localNeurons_load_0109_avm_read => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_read,
        out_memcoalesce_localNeurons_load_0109_avm_write => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_write,
        out_memcoalesce_localNeurons_load_0109_avm_writedata => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_writedata,
        out_memcoalesce_localNeurons_load_0115_avm_address => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_address,
        out_memcoalesce_localNeurons_load_0115_avm_burstcount => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_burstcount,
        out_memcoalesce_localNeurons_load_0115_avm_byteenable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_byteenable,
        out_memcoalesce_localNeurons_load_0115_avm_enable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_enable,
        out_memcoalesce_localNeurons_load_0115_avm_read => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_read,
        out_memcoalesce_localNeurons_load_0115_avm_write => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_write,
        out_memcoalesce_localNeurons_load_0115_avm_writedata => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_writedata,
        out_memdep_37_avm_address => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_address,
        out_memdep_37_avm_burstcount => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_burstcount,
        out_memdep_37_avm_byteenable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_byteenable,
        out_memdep_37_avm_enable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_enable,
        out_memdep_37_avm_read => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_read,
        out_memdep_37_avm_write => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_write,
        out_memdep_37_avm_writedata => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_writedata,
        out_normls_load587_avm_address => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_address,
        out_normls_load587_avm_burstcount => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_burstcount,
        out_normls_load587_avm_byteenable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_byteenable,
        out_normls_load587_avm_enable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_enable,
        out_normls_load587_avm_read => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_read,
        out_normls_load587_avm_write => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_write,
        out_normls_load587_avm_writedata => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_writedata,
        out_normls_load598_avm_address => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_address,
        out_normls_load598_avm_burstcount => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_burstcount,
        out_normls_load598_avm_byteenable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_byteenable,
        out_normls_load598_avm_enable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_enable,
        out_normls_load598_avm_read => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_read,
        out_normls_load598_avm_write => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_write,
        out_normls_load598_avm_writedata => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_writedata,
        out_normls_load609_avm_address => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_address,
        out_normls_load609_avm_burstcount => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_burstcount,
        out_normls_load609_avm_byteenable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_byteenable,
        out_normls_load609_avm_enable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_enable,
        out_normls_load609_avm_read => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_read,
        out_normls_load609_avm_write => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_write,
        out_normls_load609_avm_writedata => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_writedata,
        out_o_valid => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_pipeline_valid_out,
        out_tmp38_i_i32755_avm_address => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_address,
        out_tmp38_i_i32755_avm_burstcount => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_burstcount,
        out_tmp38_i_i32755_avm_byteenable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_byteenable,
        out_tmp38_i_i32755_avm_enable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_enable,
        out_tmp38_i_i32755_avm_read => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_read,
        out_tmp38_i_i32755_avm_write => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_write,
        out_tmp38_i_i32755_avm_writedata => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_writedata,
        out_tmp39_i_i32959_avm_address => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_address,
        out_tmp39_i_i32959_avm_burstcount => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_burstcount,
        out_tmp39_i_i32959_avm_byteenable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_byteenable,
        out_tmp39_i_i32959_avm_enable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_enable,
        out_tmp39_i_i32959_avm_read => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_read,
        out_tmp39_i_i32959_avm_write => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_write,
        out_tmp39_i_i32959_avm_writedata => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_writedata,
        out_tmp42_i_i33558_avm_address => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_address,
        out_tmp42_i_i33558_avm_burstcount => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_burstcount,
        out_tmp42_i_i33558_avm_byteenable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_byteenable,
        out_tmp42_i_i33558_avm_enable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_enable,
        out_tmp42_i_i33558_avm_read => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_read,
        out_tmp42_i_i33558_avm_write => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_write,
        out_tmp42_i_i33558_avm_writedata => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_writedata,
        out_unnamed_processFPGA314_avm_address => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_address,
        out_unnamed_processFPGA314_avm_burstcount => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_burstcount,
        out_unnamed_processFPGA314_avm_byteenable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_byteenable,
        out_unnamed_processFPGA314_avm_enable => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_enable,
        out_unnamed_processFPGA314_avm_read => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_read,
        out_unnamed_processFPGA314_avm_write => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_write,
        out_unnamed_processFPGA314_avm_writedata => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x(BLACKBOX,135)@20000000
    -- out out_data_out_0@20000003
    -- out out_data_out_1@20000003
    -- out out_data_out_2@20000003
    -- out out_valid_out@20000003
    thei_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x : i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga2340
    PORT MAP (
        in_data_in_0 => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_c0_exi21062_0,
        in_data_in_1 => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_c0_exi21062_1,
        in_data_in_2 => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_c0_exi21062_2,
        in_input_accepted => input_accepted_and_q,
        in_stall_in => in_i_stall,
        in_valid_in => i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_o_valid,
        out_data_out_0 => i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_data_out_0,
        out_data_out_1 => i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_data_out_1,
        out_data_out_2 => i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_data_out_2,
        out_stall_entry => i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_stall_entry,
        out_valid_out => i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_sync_out_aunroll_x(GPOUT,3)@40
    out_c0_exit1063_0 <= i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_data_out_0;
    out_c0_exit1063_1 <= i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_data_out_1;
    out_c0_exit1063_2 <= i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_data_out_2;
    out_o_valid <= i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_valid_out;

    -- dupName_0_regfree_osync_x(GPOUT,5)
    out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_valid_out <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_valid_out;

    -- dupName_1_regfree_osync_x(GPOUT,7)
    out_intel_reserved_ffwd_141_0 <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_intel_reserved_ffwd_141_0;

    -- dupName_2_regfree_osync_x(GPOUT,9)
    out_intel_reserved_ffwd_142_0 <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_intel_reserved_ffwd_142_0;

    -- dupName_3_regfree_osync_x(GPOUT,11)
    out_intel_reserved_ffwd_143_0 <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_intel_reserved_ffwd_143_0;

    -- dupName_4_regfree_osync_x(GPOUT,13)
    out_memcoalesce_localConn_load_0121_avm_address <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_address;

    -- dupName_5_regfree_osync_x(GPOUT,15)
    out_memcoalesce_localConn_load_0121_avm_burstcount <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_burstcount;

    -- dupName_6_regfree_osync_x(GPOUT,17)
    out_memcoalesce_localConn_load_0121_avm_byteenable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_byteenable;

    -- dupName_7_regfree_osync_x(GPOUT,19)
    out_memcoalesce_localConn_load_0121_avm_enable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_enable;

    -- dupName_8_regfree_osync_x(GPOUT,21)
    out_memcoalesce_localConn_load_0121_avm_read <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_read;

    -- dupName_9_regfree_osync_x(GPOUT,23)
    out_memcoalesce_localConn_load_0121_avm_write <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_write;

    -- dupName_10_regfree_osync_x(GPOUT,25)
    out_memcoalesce_localConn_load_0121_avm_writedata <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localConn_load_0121_avm_writedata;

    -- dupName_11_regfree_osync_x(GPOUT,27)
    out_memcoalesce_localNeurons_load_0109_avm_address <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_address;

    -- dupName_12_regfree_osync_x(GPOUT,29)
    out_memcoalesce_localNeurons_load_0109_avm_burstcount <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_burstcount;

    -- dupName_13_regfree_osync_x(GPOUT,31)
    out_memcoalesce_localNeurons_load_0109_avm_byteenable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_byteenable;

    -- dupName_14_regfree_osync_x(GPOUT,33)
    out_memcoalesce_localNeurons_load_0109_avm_enable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_enable;

    -- dupName_15_regfree_osync_x(GPOUT,35)
    out_memcoalesce_localNeurons_load_0109_avm_read <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_read;

    -- dupName_16_regfree_osync_x(GPOUT,37)
    out_memcoalesce_localNeurons_load_0109_avm_write <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_write;

    -- dupName_17_regfree_osync_x(GPOUT,39)
    out_memcoalesce_localNeurons_load_0109_avm_writedata <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0109_avm_writedata;

    -- dupName_18_regfree_osync_x(GPOUT,41)
    out_memcoalesce_localNeurons_load_0115_avm_address <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_address;

    -- dupName_19_regfree_osync_x(GPOUT,43)
    out_memcoalesce_localNeurons_load_0115_avm_burstcount <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_burstcount;

    -- dupName_20_regfree_osync_x(GPOUT,45)
    out_memcoalesce_localNeurons_load_0115_avm_byteenable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_byteenable;

    -- dupName_21_regfree_osync_x(GPOUT,47)
    out_memcoalesce_localNeurons_load_0115_avm_enable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_enable;

    -- dupName_22_regfree_osync_x(GPOUT,49)
    out_memcoalesce_localNeurons_load_0115_avm_read <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_read;

    -- dupName_23_regfree_osync_x(GPOUT,51)
    out_memcoalesce_localNeurons_load_0115_avm_write <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_write;

    -- dupName_24_regfree_osync_x(GPOUT,53)
    out_memcoalesce_localNeurons_load_0115_avm_writedata <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memcoalesce_localNeurons_load_0115_avm_writedata;

    -- dupName_25_regfree_osync_x(GPOUT,55)
    out_memdep_37_avm_address <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_address;

    -- dupName_26_regfree_osync_x(GPOUT,57)
    out_memdep_37_avm_burstcount <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_burstcount;

    -- dupName_27_regfree_osync_x(GPOUT,59)
    out_memdep_37_avm_byteenable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_byteenable;

    -- dupName_28_regfree_osync_x(GPOUT,61)
    out_memdep_37_avm_enable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_enable;

    -- dupName_29_regfree_osync_x(GPOUT,63)
    out_memdep_37_avm_read <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_read;

    -- dupName_30_regfree_osync_x(GPOUT,65)
    out_memdep_37_avm_write <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_write;

    -- dupName_31_regfree_osync_x(GPOUT,67)
    out_memdep_37_avm_writedata <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_memdep_37_avm_writedata;

    -- dupName_32_regfree_osync_x(GPOUT,69)
    out_normls_load587_avm_address <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_address;

    -- dupName_33_regfree_osync_x(GPOUT,71)
    out_normls_load587_avm_burstcount <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_burstcount;

    -- dupName_34_regfree_osync_x(GPOUT,73)
    out_normls_load587_avm_byteenable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_byteenable;

    -- dupName_35_regfree_osync_x(GPOUT,75)
    out_normls_load587_avm_enable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_enable;

    -- dupName_36_regfree_osync_x(GPOUT,77)
    out_normls_load587_avm_read <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_read;

    -- dupName_37_regfree_osync_x(GPOUT,79)
    out_normls_load587_avm_write <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_write;

    -- dupName_38_regfree_osync_x(GPOUT,81)
    out_normls_load587_avm_writedata <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load587_avm_writedata;

    -- dupName_39_regfree_osync_x(GPOUT,83)
    out_normls_load598_avm_address <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_address;

    -- dupName_40_regfree_osync_x(GPOUT,85)
    out_normls_load598_avm_burstcount <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_burstcount;

    -- dupName_41_regfree_osync_x(GPOUT,87)
    out_normls_load598_avm_byteenable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_byteenable;

    -- dupName_42_regfree_osync_x(GPOUT,89)
    out_normls_load598_avm_enable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_enable;

    -- dupName_43_regfree_osync_x(GPOUT,91)
    out_normls_load598_avm_read <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_read;

    -- dupName_44_regfree_osync_x(GPOUT,93)
    out_normls_load598_avm_write <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_write;

    -- dupName_45_regfree_osync_x(GPOUT,95)
    out_normls_load598_avm_writedata <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load598_avm_writedata;

    -- dupName_46_regfree_osync_x(GPOUT,97)
    out_normls_load609_avm_address <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_address;

    -- dupName_47_regfree_osync_x(GPOUT,99)
    out_normls_load609_avm_burstcount <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_burstcount;

    -- dupName_48_regfree_osync_x(GPOUT,101)
    out_normls_load609_avm_byteenable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_byteenable;

    -- dupName_49_regfree_osync_x(GPOUT,103)
    out_normls_load609_avm_enable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_enable;

    -- dupName_50_regfree_osync_x(GPOUT,104)
    out_normls_load609_avm_read <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_read;

    -- dupName_51_regfree_osync_x(GPOUT,105)
    out_normls_load609_avm_write <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_write;

    -- dupName_52_regfree_osync_x(GPOUT,106)
    out_normls_load609_avm_writedata <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_normls_load609_avm_writedata;

    -- dupName_53_regfree_osync_x(GPOUT,107)
    out_tmp38_i_i32755_avm_address <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_address;

    -- dupName_54_regfree_osync_x(GPOUT,108)
    out_tmp38_i_i32755_avm_burstcount <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_burstcount;

    -- dupName_55_regfree_osync_x(GPOUT,109)
    out_tmp38_i_i32755_avm_byteenable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_byteenable;

    -- dupName_56_regfree_osync_x(GPOUT,110)
    out_tmp38_i_i32755_avm_enable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_enable;

    -- dupName_57_regfree_osync_x(GPOUT,111)
    out_tmp38_i_i32755_avm_read <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_read;

    -- dupName_58_regfree_osync_x(GPOUT,112)
    out_tmp38_i_i32755_avm_write <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_write;

    -- dupName_59_regfree_osync_x(GPOUT,113)
    out_tmp38_i_i32755_avm_writedata <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp38_i_i32755_avm_writedata;

    -- dupName_60_regfree_osync_x(GPOUT,114)
    out_tmp39_i_i32959_avm_address <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_address;

    -- dupName_61_regfree_osync_x(GPOUT,115)
    out_tmp39_i_i32959_avm_burstcount <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_burstcount;

    -- dupName_62_regfree_osync_x(GPOUT,116)
    out_tmp39_i_i32959_avm_byteenable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_byteenable;

    -- dupName_63_regfree_osync_x(GPOUT,117)
    out_tmp39_i_i32959_avm_enable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_enable;

    -- dupName_64_regfree_osync_x(GPOUT,118)
    out_tmp39_i_i32959_avm_read <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_read;

    -- dupName_65_regfree_osync_x(GPOUT,119)
    out_tmp39_i_i32959_avm_write <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_write;

    -- dupName_66_regfree_osync_x(GPOUT,120)
    out_tmp39_i_i32959_avm_writedata <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp39_i_i32959_avm_writedata;

    -- dupName_67_regfree_osync_x(GPOUT,121)
    out_tmp42_i_i33558_avm_address <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_address;

    -- dupName_68_regfree_osync_x(GPOUT,122)
    out_tmp42_i_i33558_avm_burstcount <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_burstcount;

    -- dupName_69_regfree_osync_x(GPOUT,123)
    out_tmp42_i_i33558_avm_byteenable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_byteenable;

    -- dupName_70_regfree_osync_x(GPOUT,124)
    out_tmp42_i_i33558_avm_enable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_enable;

    -- dupName_71_regfree_osync_x(GPOUT,125)
    out_tmp42_i_i33558_avm_read <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_read;

    -- dupName_72_regfree_osync_x(GPOUT,126)
    out_tmp42_i_i33558_avm_write <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_write;

    -- dupName_73_regfree_osync_x(GPOUT,127)
    out_tmp42_i_i33558_avm_writedata <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_tmp42_i_i33558_avm_writedata;

    -- dupName_74_regfree_osync_x(GPOUT,128)
    out_unnamed_processFPGA314_avm_address <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_address;

    -- dupName_75_regfree_osync_x(GPOUT,129)
    out_unnamed_processFPGA314_avm_burstcount <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_burstcount;

    -- dupName_76_regfree_osync_x(GPOUT,130)
    out_unnamed_processFPGA314_avm_byteenable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_byteenable;

    -- dupName_77_regfree_osync_x(GPOUT,131)
    out_unnamed_processFPGA314_avm_enable <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_enable;

    -- dupName_78_regfree_osync_x(GPOUT,132)
    out_unnamed_processFPGA314_avm_read <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_read;

    -- dupName_79_regfree_osync_x(GPOUT,133)
    out_unnamed_processFPGA314_avm_write <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_write;

    -- dupName_80_regfree_osync_x(GPOUT,134)
    out_unnamed_processFPGA314_avm_writedata <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_unnamed_processFPGA314_avm_writedata;

    -- pipeline_valid_out_sync(GPOUT,140)
    out_pipeline_valid_out <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_pipeline_valid_out;

    -- regfree_osync(GPOUT,142)
    out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_stall_out <= i_sfc_logic_c0_for_body_i_i344_processfpga_c0_enter1058_processfpga2205_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going723_processfpga_exiting_stall_out;

    -- sync_out(GPOUT,144)@20000000
    out_o_stall <= i_acl_sfc_exit_c0_for_body_i_i344_processfpga_c0_exit1063_processfpga_aunroll_x_out_stall_entry;

END normal;
