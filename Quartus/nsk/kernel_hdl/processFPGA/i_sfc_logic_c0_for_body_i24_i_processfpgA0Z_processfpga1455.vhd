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

-- VHDL created from i_sfc_logic_c0_for_body_i24_i_processfpga_c0_enter978_processfpga1455
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

entity i_sfc_logic_c0_for_body_i24_i_processfpga_c0_enter978_processfpga1455 is
    port (
        in_memcoalesce_localConn_load_057_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_localConn_load_057_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localConn_load_057_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localConn_load_057_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i60834_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp38_i_i60834_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i60834_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i60834_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp38_i_i60834_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp38_i_i60834_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp38_i_i60834_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp42_i_i61237_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp42_i_i61237_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp42_i_i61237_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp42_i_i61237_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localConn_load_057_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localConn_load_057_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localConn_load_057_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localConn_load_057_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localConn_load_057_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localConn_load_057_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memcoalesce_localConn_load_057_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp39_i_i60938_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp39_i_i60938_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp39_i_i60938_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp39_i_i60938_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i61237_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp42_i_i61237_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i61237_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i61237_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp42_i_i61237_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp42_i_i61237_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp42_i_i61237_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA207_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_processFPGA207_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA207_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA207_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i60938_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp39_i_i60938_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i60938_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i60938_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp39_i_i60938_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp39_i_i60938_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp39_i_i60938_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_045_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_localNeurons_load_045_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_045_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_045_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA207_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA207_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA207_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA207_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA207_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA207_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_processFPGA207_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load438_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load438_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load438_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load438_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_045_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_045_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_045_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_045_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_045_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_045_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memcoalesce_localNeurons_load_045_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load449_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load449_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load449_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load449_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load438_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load438_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load438_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load438_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load438_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load438_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load438_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_051_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_localNeurons_load_051_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_051_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_051_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load449_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load449_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load449_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load449_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load449_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load449_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load449_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load460_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load460_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load460_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load460_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_051_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_051_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_051_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_051_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_051_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_051_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memcoalesce_localNeurons_load_051_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_24_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_memdep_24_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_24_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_24_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load460_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load460_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load460_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load460_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load460_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load460_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load460_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_24_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_24_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_24_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_24_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_24_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_24_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_memdep_24_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2977_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2977_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2977_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_100_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_88_0 : in std_logic_vector(16 downto 0);  -- ufix17
        in_intel_reserved_ffwd_93_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_intel_reserved_ffwd_99_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_localConn : in std_logic_vector(63 downto 0);  -- ufix64
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi2982_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi2982_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi2982_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_101_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_102_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp38_i_i60834_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp38_i_i60834_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp38_i_i60834_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp38_i_i60834_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going695_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going695_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body_i24_i_processfpga_c0_enter978_processfpga1455;

architecture normal of i_sfc_logic_c0_for_body_i24_i_processfpga_c0_enter978_processfpga1455 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_load_memcoalesce_localconn_load_057_processfpga1477 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localConn_load_057_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memcoalesce_localConn_load_057_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localConn_load_057_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localConn_load_057_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_readdata_1 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_057_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_057_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_057_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_057_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_057_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_057_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localConn_load_057_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_memcoalesce_localneurons_load_045_processfpga1507 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_045_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_045_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_045_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_045_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata_0 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_2 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_3 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_045_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_045_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_045_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_045_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_045_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_045_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_045_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_memcoalesce_localneurons_load_051_processfpga1542 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_051_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_051_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_051_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_051_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata_0 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_2 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_3 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_051_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_051_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_051_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_051_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_051_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_051_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_051_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going695_processfpga1457 is
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


    component i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga1463 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_148 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_148 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_148 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i16_sum_0_i_i6031313_pop149_processfpga1560 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_149 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_149 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_149 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i17_fpgaindvars_iv218_pop147_processfpga1461 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_147 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_147 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_stall_out_147 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga1580 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_151 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_151 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_151 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_usedconnscounter_0_i_i6021312_pop150_processfpga1531 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_150 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_150 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_150 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_i_0_i5_i1315_push148_processfpga1570 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_148 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA449 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_148 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_148 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_sum_0_i_i6031313_push149_processfpga1568 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_149 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA449 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_149 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_149 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i17_fpgaindvars_iv218_push147_processfpga1572 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_feedback_stall_in_147 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA449 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_out_147 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_147 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond696_processfpga1574 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_24 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_24 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_24 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_acl_hw_wg_id807_push151_processfpga1582 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_151 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA449 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_151 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_151 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_usedconnscounter_0_i_i6021312_push150_processfpga1566 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_150 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA449 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_150 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_150 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_idx_1_i1324_replace_phi494_processfpga1486 is
        port (
            in_intel_reserved_ffwd_93_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_93_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga202_processfpga1459 is
        port (
            in_intel_reserved_ffwd_88_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_88_0 : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga203_processfpga1468 is
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


    component i_ffwd_dst_unnamed_processfpga204_processfpga1475 is
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


    component i_ffwd_dst_unnamed_processfpga205_processfpga1482 is
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


    component i_ffwd_dst_unnamed_processfpga206_processfpga1492 is
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


    component i_ffwd_dst_unnamed_processfpga208_processfpga1505 is
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


    component i_ffwd_dst_unnamed_processfpga209_processfpga1526 is
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


    component i_ffwd_dst_unnamed_processfpga210_processfpga1540 is
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


    component i_ffwd_dst_unnamed_processfpga211_processfpga1552 is
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


    component i_ffwd_dst_unnamed_processfpga212_processfpga1563 is
        port (
            in_intel_reserved_ffwd_100_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_100_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga213_processfpga1576 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_101_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_101_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga214_processfpga1578 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_102_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_102_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_normls_load438_processfpga1515 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load438_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load438_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load438_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load438_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load438_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load438_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load438_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load438_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load438_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load438_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load438_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_normls_load449_processfpga1528 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load449_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load449_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load449_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load449_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load449_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load449_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load449_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load449_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load449_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load449_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load449_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_normls_load460_processfpga1545 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load460_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load460_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load460_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load460_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load460_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load460_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load460_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load460_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load460_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load460_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load460_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_tmp38_i_i60834_processfpga1470 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp38_i_i60834_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp38_i_i60834_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp38_i_i60834_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp38_i_i60834_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp38_i_i60834_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp38_i_i60834_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp38_i_i60834_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_tmp38_i_i60834_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp38_i_i60834_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp38_i_i60834_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp38_i_i60834_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_tmp39_i_i60938_processfpga1494 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp39_i_i60938_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp39_i_i60938_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp39_i_i60938_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp39_i_i60938_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp39_i_i60938_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp39_i_i60938_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp39_i_i60938_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_tmp39_i_i60938_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp39_i_i60938_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp39_i_i60938_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp39_i_i60938_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_tmp42_i_i61237_processfpga1484 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp42_i_i61237_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp42_i_i61237_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp42_i_i61237_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp42_i_i61237_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp42_i_i61237_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp42_i_i61237_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp42_i_i61237_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_tmp42_i_i61237_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp42_i_i61237_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp42_i_i61237_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp42_i_i61237_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_processfpga207_processfpga1499 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA207_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_processFPGA207_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA207_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA207_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA207_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA207_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA207_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_unnamed_processFPGA207_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA207_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA207_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA207_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_24_processfpga1554 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_memdep_24_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_memdep_24_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_24_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_24_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_24_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_24_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_24_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_memdep_24_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_24_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_24_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_24_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_localconn_sync_buffer142_processfpga1489 is
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


    component i_syncbuf_localconn_sync_buffer143_processfpga1479 is
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


    component i_syncbuf_localconn_sync_buffer144_processfpga1472 is
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


    component i_syncbuf_localconn_sync_buffer145_processfpga1465 is
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


    component i_syncbuf_localneurons_sync_buffer92_processfpga1537 is
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


    component i_syncbuf_localneurons_sync_buffer93_processfpga1534 is
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


    component i_syncbuf_localneurons_sync_buffer94_processfpga1522 is
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


    component i_syncbuf_localneurons_sync_buffer95_processfpga1511 is
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


    component i_syncbuf_localneurons_sync_buffer96_processfpga1502 is
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


    component i_syncbuf_localneurons_sync_buffer97_processfpga1496 is
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
    signal bgTrunc_i_fpgaindvars_iv_next219_processfpga_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal bgTrunc_i_inc68_i_i712_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal bgTrunc_i_inc_i47_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i16_1gr_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal dupName_0_c_i32_1gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_2_c_i8_0gr_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_multconst_x_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_c_i64_4gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_c_i64_7gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_multconst_x_q : STD_LOGIC_VECTOR (61 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_c_i64_9gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_c_i64_1gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_c_i64_2gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_c_i64_8gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_idxprom26_i_i633_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom37_i49_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom3_i10_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom9_i26_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_3 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_o_readdata_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_o_readdata_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_o_readdata_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_o_readdata_3 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_normls_gep437_processfpga_processfpga1514_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep437_processfpga_processfpga1514_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep437_processfpga_processfpga1514_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep437_processfpga_processfpga1514_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep437_processfpga_processfpga1514_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep448_processfpga_processfpga1525_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep448_processfpga_processfpga1525_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep448_processfpga_processfpga1525_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep448_processfpga_processfpga1525_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep448_processfpga_processfpga1525_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep459_processfpga_processfpga1544_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep459_processfpga_processfpga1544_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep459_processfpga_processfpga1544_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep459_processfpga_processfpga1544_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep459_processfpga_processfpga1544_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_normls_or430_compressed_processfpga_processfpga1510_normls_or430_bitvec_join_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_normls_or441_compressed_processfpga_processfpga1518_normls_or441_bitvec_join_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_normls_zext450_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_processfpga_processfpga1550_tmp26_i_i658_tmp27_i_i660_v_join_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_0_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_0_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_1_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_1_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal c_i16_0gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_1gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_256_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_768_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i17_1gr_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i17_undef_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i8_1gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_912_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_912_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_914_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_914_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_922_processfpga_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_922_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_930_v_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_930_v_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_931_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_931_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_931_v_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_931_v_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_932_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_932_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_933_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_937_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_937_xor_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_942_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_943_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_943_xor_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_946_xor_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_951_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_951_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_952_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_953_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_953_xor_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going695_processfpga_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going695_processfpga_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going695_processfpga_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going695_processfpga_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_feedback_stall_out_148 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_sum_0_i_i6031313_pop149_processfpga_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_sum_0_i_i6031313_pop149_processfpga_out_feedback_stall_out_149 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv218_pop147_processfpga_out_data_out : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv218_pop147_processfpga_out_feedback_stall_out_147 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_feedback_stall_out_151 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_usedconnscounter_0_i_i6021312_pop150_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_usedconnscounter_0_i_i6021312_pop150_processfpga_out_feedback_stall_out_150 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_i_0_i5_i1315_push148_processfpga_out_feedback_out_148 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_i_0_i5_i1315_push148_processfpga_out_feedback_valid_out_148 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_sum_0_i_i6031313_push149_processfpga_out_feedback_out_149 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_sum_0_i_i6031313_push149_processfpga_out_feedback_valid_out_149 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv218_push147_processfpga_out_feedback_out_147 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv218_push147_processfpga_out_feedback_valid_out_147 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond696_processfpga_out_feedback_out_24 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond696_processfpga_out_feedback_valid_out_24 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id807_push151_processfpga_out_feedback_out_151 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id807_push151_processfpga_out_feedback_valid_out_151 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_usedconnscounter_0_i_i6021312_push150_processfpga_out_feedback_out_150 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_usedconnscounter_0_i_i6021312_push150_processfpga_out_feedback_valid_out_150 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and_i13_i_i6911226_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and_i21_i_i6421228_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and_i_i44_i1230_processfpga_qi : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and_i_i44_i1230_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and_i_i616_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and_i_i616_processfpga_vt_const_15_q : STD_LOGIC_VECTOR (5 downto 0);
    signal i_and_i_i616_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and_i_i616_processfpga_vt_select_9_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_arrayidx27_i_i634_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx27_i_i634_processfpga_vt_select_63_b : STD_LOGIC_VECTOR (62 downto 0);
    signal i_cmp18_i_i628_not_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp18_i_i628_processfpga_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp18_i_i628_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp7_i23_i_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp7_i23_i_xor_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_i17_i_i666_processfpga_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_cmp_i17_i_i666_processfpga_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_cmp_i17_i_i666_processfpga_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_cmp_i17_i_i666_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond220_processfpga_a : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond220_processfpga_b : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond220_processfpga_o : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond220_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_idx_1_i1324_replace_phi494_processfpga_out_dest_data_out_93_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_unnamed_processfpga202_processfpga_out_dest_data_out_88_0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_ffwd_dst_unnamed_processfpga203_processfpga_out_dest_data_out_99_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga204_processfpga_out_dest_data_out_99_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga205_processfpga_out_dest_data_out_99_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga206_processfpga_out_dest_data_out_99_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga208_processfpga_out_dest_data_out_99_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga209_processfpga_out_dest_data_out_99_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga210_processfpga_out_dest_data_out_99_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga211_processfpga_out_dest_data_out_99_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga212_processfpga_out_dest_data_out_100_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga213_processfpga_out_intel_reserved_ffwd_101_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_processfpga214_processfpga_out_intel_reserved_ffwd_102_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_fpgaindvars_iv218_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv218_replace_phi_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_fpgaindvars_iv_next219_processfpga_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next219_processfpga_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next219_processfpga_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next219_processfpga_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_idxprom37_i49_i_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom37_i49_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom37_i49_i_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_idxprom3_i10_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom3_i10_i_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_idxprom9_i26_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom9_i26_i_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_inc68_i_i712_processfpga_a : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc68_i_i712_processfpga_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc68_i_i712_processfpga_o : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc68_i_i712_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc_i47_i_processfpga_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_i47_i_processfpga_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_i47_i_processfpga_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_i47_i_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_lnot_i_i617_not_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_lnot_i_i617_processfpga_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_lnot_i_i617_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load438_processfpga_out_normls_load438_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load438_processfpga_out_normls_load438_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load438_processfpga_out_normls_load438_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_normls_load438_processfpga_out_normls_load438_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load438_processfpga_out_normls_load438_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load438_processfpga_out_normls_load438_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load438_processfpga_out_normls_load438_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load438_processfpga_out_o_readdata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_normls_load449_processfpga_out_normls_load449_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load449_processfpga_out_normls_load449_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load449_processfpga_out_normls_load449_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_normls_load449_processfpga_out_normls_load449_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load449_processfpga_out_normls_load449_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load449_processfpga_out_normls_load449_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load449_processfpga_out_normls_load449_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load449_processfpga_out_o_readdata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_normls_load460_processfpga_out_normls_load460_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load460_processfpga_out_normls_load460_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load460_processfpga_out_normls_load460_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_normls_load460_processfpga_out_normls_load460_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load460_processfpga_out_normls_load460_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load460_processfpga_out_normls_load460_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load460_processfpga_out_normls_load460_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load460_processfpga_out_o_readdata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_tmp38_i_i60834_processfpga_out_o_readdata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_tmp39_i_i60938_processfpga_out_o_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_tmp42_i_i61237_processfpga_out_o_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga207_processfpga_out_o_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_normls_shl451_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_normls_shl451_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_normls_zext450_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_normls_zext450_processfpga_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_or_i22_i_i6431229_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_i22_i_i6431229_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_phi_decision1561_or1565_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision1561_or1567_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision1561_or1572_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision1561_or1573_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision1561_or1578_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_processfpga_28_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_processfpga_28_processfpga_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_processfpga_30_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_processfpga_31_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_processfpga_33_processfpga_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_processfpga_33_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_processfpga_34_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_processfpga_36_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_processfpga_37_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_selcond_processfpga_18_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_selcond_processfpga_19_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_selcond_processfpga_20_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_24_processfpga_out_memdep_24_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_24_processfpga_out_memdep_24_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_24_processfpga_out_memdep_24_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_store_memdep_24_processfpga_out_memdep_24_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_24_processfpga_out_memdep_24_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_24_processfpga_out_memdep_24_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_24_processfpga_out_memdep_24_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_syncbuf_localconn_sync_buffer142_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localconn_sync_buffer143_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localconn_sync_buffer144_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localconn_sync_buffer145_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer92_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer93_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer94_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer95_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer96_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer97_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_tobool21_i_i629_not_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool42_i_i668_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool53_i_i677_not_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool53_i_i677_processfpga_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tobool53_i_i677_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1520_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_processfpga1520_vt_const_7_q : STD_LOGIC_VECTOR (6 downto 0);
    signal i_unnamed_processfpga1520_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_processfpga1520_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1547_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_processfpga1547_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_processfpga1547_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1556_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_processfpga1557_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_processfpga1557_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_processfpga1557_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1558_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1558_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1565_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_join_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_14_q : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_14_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_join_16_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal leftShiftStage0Idx1Rng8_uid693_i_normls_shl451_processfpga_processfpga1530_shift_x_in : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1Rng8_uid693_i_normls_shl451_processfpga_processfpga1530_shift_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1_uid694_i_normls_shl451_processfpga_processfpga1530_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0_uid696_i_normls_shl451_processfpga_processfpga1530_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid696_i_normls_shl451_processfpga_processfpga1530_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist12_i_unnamed_processfpga1565_q_29_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_unnamed_processfpga1565_q_36_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_tobool21_i_i629_not_processfpga_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_i_reduction_processfpga_34_processfpga_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_i_phi_decision1561_or1567_processfpga_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_phi_decision1561_or1565_processfpga_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_i_lnot_i_i617_processfpga_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_i_lnot_i_i617_processfpga_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_i_cmp_i17_i_i666_processfpga_c_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_i_cmp7_i23_i_processfpga_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_i_cmp7_i23_i_processfpga_q_21_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_i_cmp7_i23_i_processfpga_q_26_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_i_cmp7_i23_i_processfpga_q_27_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_i_cmp18_i_i628_processfpga_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_i_cmp18_i_i628_processfpga_q_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_i_cmp18_i_i628_processfpga_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_i_cmp18_i_i628_not_processfpga_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist32_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist34_i_acl_943_xor_processfpga_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_i_acl_943_processfpga_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_i_acl_943_processfpga_q_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_i_acl_937_processfpga_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_sync_in_aunroll_x_in_c0_eni2977_1_29_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_sync_in_aunroll_x_in_c0_eni2977_1_36_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist43_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist44_sync_in_aunroll_x_in_i_valid_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_sync_in_aunroll_x_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist46_sync_in_aunroll_x_in_i_valid_16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist47_sync_in_aunroll_x_in_i_valid_17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist48_sync_in_aunroll_x_in_i_valid_21_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist49_sync_in_aunroll_x_in_i_valid_22_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist50_sync_in_aunroll_x_in_i_valid_23_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist51_sync_in_aunroll_x_in_i_valid_24_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist52_sync_in_aunroll_x_in_i_valid_27_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist53_sync_in_aunroll_x_in_i_valid_28_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist54_sync_in_aunroll_x_in_i_valid_29_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist55_sync_in_aunroll_x_in_i_valid_30_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist56_sync_in_aunroll_x_in_i_valid_36_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_1_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist58_i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_2_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist59_i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_3_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist61_i_clfrnt_i_i615_processfpga_processfpga1498_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist62_i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist63_i_arrayidx4_5_i17_i_processfpga_processfpga1481_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist64_i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist65_i_arrayidx4_3_i15_i_processfpga_processfpga1474_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist66_i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist67_i_arrayidx4_2_i14_i_processfpga_processfpga1491_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist68_i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist69_i_arrayidx4_1_i13_i_processfpga_processfpga1467_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist70_i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist71_i_arrayidx38_5_i_i661_processfpga_processfpga1524_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist72_i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_1_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist73_i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist74_i_arrayidx38_4_i_i659_processfpga_processfpga1536_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist75_i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_1_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist76_i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist77_i_arrayidx38_2_i_i655_processfpga_processfpga1539_trunc_sel_x_b_2_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist78_i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist79_i_arrayidx16_4_i37_i_processfpga_processfpga1513_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist80_i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_1_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist81_i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist82_i_arrayidx16_2_i35_i_processfpga_processfpga1504_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist83_i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist84_bgTrunc_i_inc_i47_i_processfpga_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_inputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_reset0 : std_logic;
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_i : signal is true;
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq : std_logic;
    attribute preserve of redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq : signal is true;
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q : signal is true;
    signal redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_inputreg_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_outputreg_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_reset0 : std_logic;
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_i : signal is true;
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq : std_logic;
    attribute preserve of redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq : signal is true;
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q : signal is true;
    signal redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_inputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_reset0 : std_logic;
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_i : signal is true;
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq : std_logic;
    attribute preserve of redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq : signal is true;
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q : signal is true;
    signal redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_inputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_reset0 : std_logic;
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_i : signal is true;
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq : std_logic;
    attribute preserve of redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq : signal is true;
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q : signal is true;
    signal redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_reset0 : std_logic;
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_i : signal is true;
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq : std_logic;
    attribute preserve of redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq : signal is true;
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q : signal is true;
    signal redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_outputreg_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_reset0 : std_logic;
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_i : signal is true;
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq : std_logic;
    attribute preserve of redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq : signal is true;
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q : signal is true;
    signal redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_reset0 : std_logic;
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_i : signal is true;
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq : std_logic;
    attribute preserve of redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq : signal is true;
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q : signal is true;
    signal redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_reset0 : std_logic;
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_i : signal is true;
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq : std_logic;
    attribute preserve of redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq : signal is true;
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q : signal is true;
    signal redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_inputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_reset0 : std_logic;
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_i : signal is true;
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq : std_logic;
    attribute preserve of redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq : signal is true;
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q : signal is true;
    signal redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_inputreg_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_outputreg_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_reset0 : std_logic;
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_i : signal is true;
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq : std_logic;
    attribute preserve of redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq : signal is true;
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q : signal is true;
    signal redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_inputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_reset0 : std_logic;
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_i : signal is true;
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq : std_logic;
    attribute preserve of redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq : signal is true;
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q : signal is true;
    signal redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_inputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_reset0 : std_logic;
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_i : signal is true;
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq : std_logic;
    attribute preserve of redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq : signal is true;
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q : signal is true;
    signal redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_inputreg_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_outputreg_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_reset0 : std_logic;
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_i : signal is true;
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_eq : std_logic;
    attribute preserve of redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_eq : signal is true;
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_sticky_ena_q : signal is true;
    signal redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_inputreg_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_outputreg_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_reset0 : std_logic;
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_i : signal is true;
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_eq : std_logic;
    attribute preserve of redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_eq : signal is true;
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_sticky_ena_q : signal is true;
    signal redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_reset0 : std_logic;
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_i : signal is true;
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_eq : std_logic;
    attribute preserve of redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_eq : signal is true;
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_sticky_ena_q : signal is true;
    signal redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_i_acl_930_v_processfpga_q_5_outputreg_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist38_i_acl_930_v_processfpga_q_5_mem_reset0 : std_logic;
    signal redist38_i_acl_930_v_processfpga_q_5_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist38_i_acl_930_v_processfpga_q_5_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_i_acl_930_v_processfpga_q_5_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_i_acl_930_v_processfpga_q_5_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist38_i_acl_930_v_processfpga_q_5_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist38_i_acl_930_v_processfpga_q_5_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_i_acl_930_v_processfpga_q_5_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist38_i_acl_930_v_processfpga_q_5_rdcnt_i : signal is true;
    signal redist38_i_acl_930_v_processfpga_q_5_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_i_acl_930_v_processfpga_q_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_i_acl_930_v_processfpga_q_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_i_acl_930_v_processfpga_q_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_i_acl_930_v_processfpga_q_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist38_i_acl_930_v_processfpga_q_5_sticky_ena_q : signal is true;
    signal redist38_i_acl_930_v_processfpga_q_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_i_acl_914_processfpga_q_6_outputreg_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist39_i_acl_914_processfpga_q_6_mem_reset0 : std_logic;
    signal redist39_i_acl_914_processfpga_q_6_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist39_i_acl_914_processfpga_q_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist39_i_acl_914_processfpga_q_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist39_i_acl_914_processfpga_q_6_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist39_i_acl_914_processfpga_q_6_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist39_i_acl_914_processfpga_q_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist39_i_acl_914_processfpga_q_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist39_i_acl_914_processfpga_q_6_rdcnt_i : signal is true;
    signal redist39_i_acl_914_processfpga_q_6_rdcnt_eq : std_logic;
    attribute preserve of redist39_i_acl_914_processfpga_q_6_rdcnt_eq : signal is true;
    signal redist39_i_acl_914_processfpga_q_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist39_i_acl_914_processfpga_q_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist39_i_acl_914_processfpga_q_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_i_acl_914_processfpga_q_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_i_acl_914_processfpga_q_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_i_acl_914_processfpga_q_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_i_acl_914_processfpga_q_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist39_i_acl_914_processfpga_q_6_sticky_ena_q : signal is true;
    signal redist39_i_acl_914_processfpga_q_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_inputreg_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_outputreg_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_reset0 : std_logic;
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_i : signal is true;
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_eq : std_logic;
    attribute preserve of redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_eq : signal is true;
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_sticky_ena_q : signal is true;
    signal redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_reset0 : std_logic;
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_i : signal is true;
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_eq : std_logic;
    attribute preserve of redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_eq : signal is true;
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_sticky_ena_q : signal is true;
    signal redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist42_sync_in_aunroll_x_in_i_valid_3(DELAY,878)
    redist42_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist42_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist43_sync_in_aunroll_x_in_i_valid_4(DELAY,879)
    redist43_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist42_sync_in_aunroll_x_in_i_valid_3_q, xout => redist43_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- redist44_sync_in_aunroll_x_in_i_valid_8(DELAY,880)
    redist44_sync_in_aunroll_x_in_i_valid_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist43_sync_in_aunroll_x_in_i_valid_4_q, xout => redist44_sync_in_aunroll_x_in_i_valid_8_q, clk => clock, aclr => resetn );

    -- redist45_sync_in_aunroll_x_in_i_valid_9(DELAY,881)
    redist45_sync_in_aunroll_x_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist44_sync_in_aunroll_x_in_i_valid_8_q, xout => redist45_sync_in_aunroll_x_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_ffwd_dst_unnamed_processfpga203_processfpga(BLACKBOX,374)@10
    thei_ffwd_dst_unnamed_processfpga203_processfpga : i_ffwd_dst_unnamed_processfpga203_processfpga1468
    PORT MAP (
        in_intel_reserved_ffwd_99_0 => in_intel_reserved_ffwd_99_0,
        in_stall_in => GND_q,
        in_valid_in => redist45_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_99_0 => i_ffwd_dst_unnamed_processfpga203_processfpga_out_dest_data_out_99_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_c_i64_1gr_x(CONSTANT,167)
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_c_i64_1gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000001";

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_multconst_x(CONSTANT,83)
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_multconst_x_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_shift0(BITSHIFT,772)@7
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_shift0_qint <= redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_outputreg_q & "0";
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_shift0_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_shift0_qint(10 downto 0);

    -- redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_notEnable(LOGICAL,988)
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_nor(LOGICAL,989)
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_nor_q <= not (redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_notEnable_q or redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q);

    -- redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_last(CONSTANT,985)
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_last_q <= "01";

    -- redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_cmp(LOGICAL,986)
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_cmp_q <= "1" WHEN redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_last_q = redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_q ELSE "0";

    -- redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_cmpReg(REG,987)
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_cmpReg_q <= STD_LOGIC_VECTOR(redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_sticky_ena(REG,990)
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_nor_q = "1") THEN
                redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_enaAnd(LOGICAL,991)
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_enaAnd_q <= redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q and VCC_q;

    -- redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt(COUNTER,983)
    -- low=0, high=2, step=1, init=0
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq <= '1';
            ELSE
                redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq <= '0';
            END IF;
            IF (redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq = '1') THEN
                redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_i <= redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_i + 2;
            ELSE
                redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_i <= redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_i, 2)));

    -- i_idxprom37_i49_i_processfpga_vt_const_63(CONSTANT,390)
    i_idxprom37_i49_i_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_unnamed_processfpga212_processfpga(BLACKBOX,382)@1
    thei_ffwd_dst_unnamed_processfpga212_processfpga : i_ffwd_dst_unnamed_processfpga212_processfpga1563
    PORT MAP (
        in_intel_reserved_ffwd_100_0 => in_intel_reserved_ffwd_100_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_100_0 => i_ffwd_dst_unnamed_processfpga212_processfpga_out_dest_data_out_100_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga202_processfpga(BLACKBOX,373)@1
    thei_ffwd_dst_unnamed_processfpga202_processfpga : i_ffwd_dst_unnamed_processfpga202_processfpga1459
    PORT MAP (
        in_intel_reserved_ffwd_88_0 => in_intel_reserved_ffwd_88_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_88_0 => i_ffwd_dst_unnamed_processfpga202_processfpga_out_dest_data_out_88_0,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv_next219_processfpga(ADD,386)@1
    i_fpgaindvars_iv_next219_processfpga_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv218_replace_phi_processfpga_q);
    i_fpgaindvars_iv_next219_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i17_1gr_q);
    i_fpgaindvars_iv_next219_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next219_processfpga_a) + UNSIGNED(i_fpgaindvars_iv_next219_processfpga_b));
    i_fpgaindvars_iv_next219_processfpga_q <= i_fpgaindvars_iv_next219_processfpga_o(17 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next219_processfpga_sel_x(BITSELECT,2)@1
    bgTrunc_i_fpgaindvars_iv_next219_processfpga_sel_x_b <= i_fpgaindvars_iv_next219_processfpga_q(16 downto 0);

    -- i_acl_push_i17_fpgaindvars_iv218_push147_processfpga(BLACKBOX,351)@1
    -- out out_feedback_out_147@20000000
    -- out out_feedback_valid_out_147@20000000
    thei_acl_push_i17_fpgaindvars_iv218_push147_processfpga : i_acl_push_i17_fpgaindvars_iv218_push147_processfpga1572
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next219_processfpga_sel_x_b,
        in_feedback_stall_in_147 => i_acl_pop_i17_fpgaindvars_iv218_pop147_processfpga_out_feedback_stall_out_147,
        in_stall_in => GND_q,
        in_unnamed_processFPGA449 => i_unnamed_processfpga1565_q,
        in_valid_in => in_i_valid,
        out_feedback_out_147 => i_acl_push_i17_fpgaindvars_iv218_push147_processfpga_out_feedback_out_147,
        out_feedback_valid_out_147 => i_acl_push_i17_fpgaindvars_iv218_push147_processfpga_out_feedback_valid_out_147,
        clock => clock,
        resetn => resetn
    );

    -- c_i17_undef(CONSTANT,318)
    c_i17_undef_q <= "00000000000000000";

    -- i_acl_pop_i17_fpgaindvars_iv218_pop147_processfpga(BLACKBOX,346)@1
    -- out out_feedback_stall_out_147@20000000
    thei_acl_pop_i17_fpgaindvars_iv218_pop147_processfpga : i_acl_pop_i17_fpgaindvars_iv218_pop147_processfpga1461
    PORT MAP (
        in_data_in => c_i17_undef_q,
        in_dir => in_c0_eni2977_1,
        in_feedback_in_147 => i_acl_push_i17_fpgaindvars_iv218_push147_processfpga_out_feedback_out_147,
        in_feedback_valid_in_147 => i_acl_push_i17_fpgaindvars_iv218_push147_processfpga_out_feedback_valid_out_147,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i17_fpgaindvars_iv218_pop147_processfpga_out_data_out,
        out_feedback_stall_out_147 => i_acl_pop_i17_fpgaindvars_iv218_pop147_processfpga_out_feedback_stall_out_147,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv218_replace_phi_processfpga(MUX,385)@1
    i_fpgaindvars_iv218_replace_phi_processfpga_s <= in_c0_eni2977_1;
    i_fpgaindvars_iv218_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv218_replace_phi_processfpga_s, i_acl_pop_i17_fpgaindvars_iv218_pop147_processfpga_out_data_out, i_ffwd_dst_unnamed_processfpga202_processfpga_out_dest_data_out_88_0)
    BEGIN
        CASE (i_fpgaindvars_iv218_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv218_replace_phi_processfpga_q <= i_acl_pop_i17_fpgaindvars_iv218_pop147_processfpga_out_data_out;
            WHEN "1" => i_fpgaindvars_iv218_replace_phi_processfpga_q <= i_ffwd_dst_unnamed_processfpga202_processfpga_out_dest_data_out_88_0;
            WHEN OTHERS => i_fpgaindvars_iv218_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i17_1gr(CONSTANT,317)
    c_i17_1gr_q <= "11111111111111111";

    -- i_exitcond220_processfpga(COMPARE,371)@1
    i_exitcond220_processfpga_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => c_i17_1gr_q(16)) & c_i17_1gr_q));
    i_exitcond220_processfpga_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => i_fpgaindvars_iv218_replace_phi_processfpga_q(16)) & i_fpgaindvars_iv218_replace_phi_processfpga_q));
    i_exitcond220_processfpga_o <= STD_LOGIC_VECTOR(SIGNED(i_exitcond220_processfpga_a) - SIGNED(i_exitcond220_processfpga_b));
    i_exitcond220_processfpga_c(0) <= i_exitcond220_processfpga_o(18);

    -- i_unnamed_processfpga1565(LOGICAL,470)@1
    i_unnamed_processfpga1565_q <= i_exitcond220_processfpga_c and i_ffwd_dst_unnamed_processfpga212_processfpga_out_dest_data_out_100_0;

    -- dupName_0_c_i16_1gr_x(CONSTANT,5)
    dupName_0_c_i16_1gr_x_q <= "0000000000000001";

    -- i_inc68_i_i712_processfpga(ADD,401)@1
    i_inc68_i_i712_processfpga_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out);
    i_inc68_i_i712_processfpga_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i16_1gr_x_q);
    i_inc68_i_i712_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc68_i_i712_processfpga_a) + UNSIGNED(i_inc68_i_i712_processfpga_b));
    i_inc68_i_i712_processfpga_q <= i_inc68_i_i712_processfpga_o(16 downto 0);

    -- bgTrunc_i_inc68_i_i712_processfpga_sel_x(BITSELECT,3)@1
    bgTrunc_i_inc68_i_i712_processfpga_sel_x_b <= i_inc68_i_i712_processfpga_q(15 downto 0);

    -- i_acl_push_i16_i_0_i5_i1315_push148_processfpga(BLACKBOX,349)@1
    -- out out_feedback_out_148@20000000
    -- out out_feedback_valid_out_148@20000000
    thei_acl_push_i16_i_0_i5_i1315_push148_processfpga : i_acl_push_i16_i_0_i5_i1315_push148_processfpga1570
    PORT MAP (
        in_data_in => bgTrunc_i_inc68_i_i712_processfpga_sel_x_b,
        in_feedback_stall_in_148 => i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_feedback_stall_out_148,
        in_stall_in => GND_q,
        in_unnamed_processFPGA449 => i_unnamed_processfpga1565_q,
        in_valid_in => in_i_valid,
        out_feedback_out_148 => i_acl_push_i16_i_0_i5_i1315_push148_processfpga_out_feedback_out_148,
        out_feedback_valid_out_148 => i_acl_push_i16_i_0_i5_i1315_push148_processfpga_out_feedback_valid_out_148,
        clock => clock,
        resetn => resetn
    );

    -- c_i16_0gr(CONSTANT,312)
    c_i16_0gr_q <= "0000000000000000";

    -- i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga(BLACKBOX,344)@1
    -- out out_feedback_stall_out_148@20000000
    thei_acl_pop_i16_i_0_i5_i1315_pop148_processfpga : i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga1463
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c0_eni2977_1,
        in_feedback_in_148 => i_acl_push_i16_i_0_i5_i1315_push148_processfpga_out_feedback_out_148,
        in_feedback_valid_in_148 => i_acl_push_i16_i_0_i5_i1315_push148_processfpga_out_feedback_valid_out_148,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out,
        out_feedback_stall_out_148 => i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_feedback_stall_out_148,
        clock => clock,
        resetn => resetn
    );

    -- redist32_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_1(DELAY,868)
    redist32_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out, xout => redist32_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_idxprom3_i10_i_processfpga_sel_x(BITSELECT,228)@2
    i_idxprom3_i10_i_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(redist32_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_1_q(15 downto 0)), 64));

    -- i_idxprom3_i10_i_processfpga_vt_select_15(BITSELECT,396)@2
    i_idxprom3_i10_i_processfpga_vt_select_15_b <= i_idxprom3_i10_i_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom3_i10_i_processfpga_vt_join(BITJOIN,395)@2
    i_idxprom3_i10_i_processfpga_vt_join_q <= i_idxprom37_i49_i_processfpga_vt_const_63_q & i_idxprom3_i10_i_processfpga_vt_select_15_b;

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select(BITSELECT,834)@2
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b <= i_idxprom3_i10_i_processfpga_vt_join_q(17 downto 0);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c <= i_idxprom3_i10_i_processfpga_vt_join_q(63 downto 54);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d <= i_idxprom3_i10_i_processfpga_vt_join_q(35 downto 18);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e <= i_idxprom3_i10_i_processfpga_vt_join_q(53 downto 36);

    -- redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_wraddr(REG,984)
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_wraddr_q <= STD_LOGIC_VECTOR(redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem(DUALMEM,982)
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_ia <= STD_LOGIC_VECTOR(i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c);
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_aa <= redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_wraddr_q;
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_ab <= redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_rdcnt_q;
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_reset0 <= not (resetn);
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 10,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_reset0,
        clock1 => clock,
        address_a => redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_aa,
        data_a => redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_ab,
        q_b => redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_iq
    );
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_q <= redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_iq(9 downto 0);

    -- redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_outputreg(DELAY,981)
    redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_outputreg : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_mem_q, xout => redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_add_1(ADD,773)@7 + 1
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_outputreg_q);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_shift0_q);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_add_1_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_shift2(BITSHIFT,774)@8
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_shift2_qint <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_add_1_q & "00";
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_shift2_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_15(BITSHIFT,613)@8
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_15_qint <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_15_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_shift0(BITSHIFT,775)@7
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_shift0_qint <= redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_outputreg_q & "0";
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_shift0_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_shift0_qint(18 downto 0);

    -- redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_notEnable(LOGICAL,999)
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_nor(LOGICAL,1000)
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_nor_q <= not (redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_notEnable_q or redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q);

    -- redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_last(CONSTANT,996)
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_last_q <= "01";

    -- redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_cmp(LOGICAL,997)
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_cmp_q <= "1" WHEN redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_last_q = redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_q ELSE "0";

    -- redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_cmpReg(REG,998)
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_cmpReg_q <= STD_LOGIC_VECTOR(redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_sticky_ena(REG,1001)
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_nor_q = "1") THEN
                redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_enaAnd(LOGICAL,1002)
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_enaAnd_q <= redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q and VCC_q;

    -- redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt(COUNTER,994)
    -- low=0, high=2, step=1, init=0
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq <= '1';
            ELSE
                redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq <= '0';
            END IF;
            IF (redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq = '1') THEN
                redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_i <= redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_i + 2;
            ELSE
                redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_i <= redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_i, 2)));

    -- redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_wraddr(REG,995)
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_wraddr_q <= STD_LOGIC_VECTOR(redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem(DUALMEM,993)
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_ia <= STD_LOGIC_VECTOR(i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d);
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_aa <= redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_wraddr_q;
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_ab <= redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_rdcnt_q;
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_reset0 <= not (resetn);
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 18,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_reset0,
        clock1 => clock,
        address_a => redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_aa,
        data_a => redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_ab,
        q_b => redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_iq
    );
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_q <= redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_iq(17 downto 0);

    -- redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_outputreg(DELAY,992)
    redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_mem_q, xout => redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_add_1(ADD,776)@7 + 1
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_outputreg_q);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_shift0_q);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_add_1_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_shift2(BITSHIFT,777)@8
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_shift2_qint <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_add_1_q & "00";
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_shift2_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_14(BITSHIFT,612)@8
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_14_qint <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_14_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_join_16(BITJOIN,614)@8
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_join_16_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_15_q & i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_14_q;

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_shift0(BITSHIFT,778)@7
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_shift0_qint <= redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_outputreg_q & "0";
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_shift0_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_shift0_qint(18 downto 0);

    -- redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_notEnable(LOGICAL,1010)
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_nor(LOGICAL,1011)
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_nor_q <= not (redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_notEnable_q or redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q);

    -- redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_last(CONSTANT,1007)
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_last_q <= "01";

    -- redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_cmp(LOGICAL,1008)
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_cmp_q <= "1" WHEN redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_last_q = redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_q ELSE "0";

    -- redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_cmpReg(REG,1009)
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_cmpReg_q <= STD_LOGIC_VECTOR(redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_sticky_ena(REG,1012)
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_nor_q = "1") THEN
                redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_enaAnd(LOGICAL,1013)
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_enaAnd_q <= redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q and VCC_q;

    -- redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt(COUNTER,1005)
    -- low=0, high=2, step=1, init=0
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq <= '1';
            ELSE
                redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq <= '0';
            END IF;
            IF (redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq = '1') THEN
                redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_i <= redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_i + 2;
            ELSE
                redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_i <= redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_i, 2)));

    -- redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_wraddr(REG,1006)
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_wraddr_q <= STD_LOGIC_VECTOR(redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem(DUALMEM,1004)
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_ia <= STD_LOGIC_VECTOR(i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e);
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_aa <= redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_wraddr_q;
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_ab <= redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_rdcnt_q;
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_reset0 <= not (resetn);
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 18,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_reset0,
        clock1 => clock,
        address_a => redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_aa,
        data_a => redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_ab,
        q_b => redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_iq
    );
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_q <= redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_iq(17 downto 0);

    -- redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_outputreg(DELAY,1003)
    redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_mem_q, xout => redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_add_1(ADD,779)@7 + 1
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_outputreg_q);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_shift0_q);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_add_1_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_shift2(BITSHIFT,780)@8
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_shift2_qint <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_add_1_q & "00";
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_shift2_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_12(BITSHIFT,610)@8
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_12_qint <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_12_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_shift0(BITSHIFT,769)@7
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_shift0_qint <= redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_outputreg_q & "0";
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_shift0_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_shift0_qint(18 downto 0);

    -- redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_notEnable(LOGICAL,977)
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_nor(LOGICAL,978)
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_nor_q <= not (redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_notEnable_q or redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q);

    -- redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_last(CONSTANT,974)
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_last_q <= "01";

    -- redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_cmp(LOGICAL,975)
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_cmp_q <= "1" WHEN redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_last_q = redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_q ELSE "0";

    -- redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_cmpReg(REG,976)
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_cmpReg_q <= STD_LOGIC_VECTOR(redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_sticky_ena(REG,979)
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_nor_q = "1") THEN
                redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_enaAnd(LOGICAL,980)
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_enaAnd_q <= redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q and VCC_q;

    -- redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt(COUNTER,972)
    -- low=0, high=2, step=1, init=0
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq <= '1';
            ELSE
                redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq <= '0';
            END IF;
            IF (redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq = '1') THEN
                redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_i <= redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_i + 2;
            ELSE
                redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_i <= redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_i, 2)));

    -- redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_wraddr(REG,973)
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_wraddr_q <= STD_LOGIC_VECTOR(redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem(DUALMEM,971)
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_ia <= STD_LOGIC_VECTOR(i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b);
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_aa <= redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_wraddr_q;
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_ab <= redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_rdcnt_q;
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_reset0 <= not (resetn);
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 18,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_reset0,
        clock1 => clock,
        address_a => redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_aa,
        data_a => redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_ab,
        q_b => redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_iq
    );
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_q <= redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_iq(17 downto 0);

    -- redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_outputreg(DELAY,970)
    redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_mem_q, xout => redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_add_1(ADD,770)@7 + 1
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_outputreg_q);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_shift0_q);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_add_1_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_shift2(BITSHIFT,771)@8
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_shift2_qint <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_add_1_q & "00";
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_shift2_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_join_13(BITJOIN,611)@8
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_join_13_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_align_12_q & i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_im0_shift2_q;

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_result_add_0_0(ADD,615)@8
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_join_13_q);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_join_16_q);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_result_add_0_0_b));
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_result_add_0_0_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_extender_x(BITJOIN,162)@8
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_extender_x_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_multconst_x_q & i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_trunc_sel_x(BITSELECT,164)@8
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_trunc_sel_x_b <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_extender_x_q(63 downto 0);

    -- redist69_i_arrayidx4_1_i13_i_processfpga_processfpga1467_trunc_sel_x_b_1(DELAY,905)
    redist69_i_arrayidx4_1_i13_i_processfpga_processfpga1467_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_1_i13_i_processfpga_processfpga1467_trunc_sel_x_b, xout => redist69_i_arrayidx4_1_i13_i_processfpga_processfpga1467_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localconn_sync_buffer145_processfpga(BLACKBOX,445)@0
    -- in in_i_dependence@9
    -- in in_valid_in@9
    -- out out_buffer_out@9
    -- out out_valid_out@9
    thei_syncbuf_localconn_sync_buffer145_processfpga : i_syncbuf_localconn_sync_buffer145_processfpga1465
    PORT MAP (
        in_buffer_in => in_localConn,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist44_sync_in_aunroll_x_in_i_valid_8_q,
        out_buffer_out => i_syncbuf_localconn_sync_buffer145_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_add_x(ADD,165)@9
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localconn_sync_buffer145_processfpga_out_buffer_out);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_add_x_b <= STD_LOGIC_VECTOR("0" & redist69_i_arrayidx4_1_i13_i_processfpga_processfpga1467_trunc_sel_x_b_1_q);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_1_i13_i_processfpga_processfpga1467_add_x_a) + UNSIGNED(i_arrayidx4_1_i13_i_processfpga_processfpga1467_add_x_b));
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_add_x_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_add_x_o(64 downto 0);

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_trunc_sel_x(BITSELECT,156)@9
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_trunc_sel_x_b <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_add_x_q(63 downto 0);

    -- redist70_i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_trunc_sel_x_b_1(DELAY,906)
    redist70_i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_trunc_sel_x_b, xout => redist70_i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_add_x(ADD,159)@10
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist70_i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_1_i13_i_processfpga_processfpga1467_c_i64_1gr_x_q);
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_add_x_a) + UNSIGNED(i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_add_x_b));
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_add_x_q <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_1_trunc_sel_x(BITSELECT,157)@10
    i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_1_trunc_sel_x_b <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_0_add_x_q(63 downto 0);

    -- i_load_tmp38_i_i60834_processfpga(BLACKBOX,408)@10
    -- in in_i_stall@20000000
    -- out out_o_readdata@15
    -- out out_o_stall@14
    -- out out_o_valid@15
    -- out out_tmp38_i_i60834_avm_address@20000000
    -- out out_tmp38_i_i60834_avm_burstcount@20000000
    -- out out_tmp38_i_i60834_avm_byteenable@20000000
    -- out out_tmp38_i_i60834_avm_enable@20000000
    -- out out_tmp38_i_i60834_avm_read@20000000
    -- out out_tmp38_i_i60834_avm_write@20000000
    -- out out_tmp38_i_i60834_avm_writedata@20000000
    thei_load_tmp38_i_i60834_processfpga : i_load_tmp38_i_i60834_processfpga1470
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx4_1_i13_i_processfpga_processfpga1467_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga203_processfpga_out_dest_data_out_99_0,
        in_i_stall => GND_q,
        in_i_valid => redist45_sync_in_aunroll_x_in_i_valid_9_q,
        in_tmp38_i_i60834_avm_readdata => in_tmp38_i_i60834_avm_readdata,
        in_tmp38_i_i60834_avm_readdatavalid => in_tmp38_i_i60834_avm_readdatavalid,
        in_tmp38_i_i60834_avm_waitrequest => in_tmp38_i_i60834_avm_waitrequest,
        in_tmp38_i_i60834_avm_writeack => in_tmp38_i_i60834_avm_writeack,
        out_o_readdata => i_load_tmp38_i_i60834_processfpga_out_o_readdata,
        out_tmp38_i_i60834_avm_address => i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_address,
        out_tmp38_i_i60834_avm_burstcount => i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_burstcount,
        out_tmp38_i_i60834_avm_byteenable => i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_byteenable,
        out_tmp38_i_i60834_avm_enable => i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_enable,
        out_tmp38_i_i60834_avm_read => i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_read,
        out_tmp38_i_i60834_avm_write => i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_write,
        out_tmp38_i_i60834_avm_writedata => i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,9)
    out_tmp38_i_i60834_avm_address <= i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_address;
    out_tmp38_i_i60834_avm_enable <= i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_enable;
    out_tmp38_i_i60834_avm_read <= i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_read;
    out_tmp38_i_i60834_avm_write <= i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_write;
    out_tmp38_i_i60834_avm_writedata <= i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_writedata;
    out_tmp38_i_i60834_avm_byteenable <= i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_byteenable;
    out_tmp38_i_i60834_avm_burstcount <= i_load_tmp38_i_i60834_processfpga_out_tmp38_i_i60834_avm_burstcount;

    -- i_ffwd_dst_unnamed_processfpga204_processfpga(BLACKBOX,375)@5
    thei_ffwd_dst_unnamed_processfpga204_processfpga : i_ffwd_dst_unnamed_processfpga204_processfpga1475
    PORT MAP (
        in_intel_reserved_ffwd_99_0 => in_intel_reserved_ffwd_99_0,
        in_stall_in => GND_q,
        in_valid_in => redist43_sync_in_aunroll_x_in_i_valid_4_q,
        out_dest_data_out_99_0 => i_ffwd_dst_unnamed_processfpga204_processfpga_out_dest_data_out_99_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_c_i64_4gr_x(CONSTANT,87)
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_c_i64_4gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000100";

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_shift0(BITSHIFT,796)@2
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_shift0_qint <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_shift0_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_add_1(ADD,797)@2 + 1
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c);
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_shift0_q);
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_add_1_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_shift2(BITSHIFT,798)@3
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_shift2_qint <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_add_1_q & "00";
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_shift2_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_15(BITSHIFT,649)@3
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_15_qint <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_15_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_shift0(BITSHIFT,799)@2
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_shift0_qint <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_shift0_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_add_1(ADD,800)@2 + 1
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d);
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_shift0_q);
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_add_1_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_shift2(BITSHIFT,801)@3
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_shift2_qint <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_add_1_q & "00";
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_shift2_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_14(BITSHIFT,648)@3
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_14_qint <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_14_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_join_16(BITJOIN,650)@3
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_join_16_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_15_q & i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_14_q;

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_shift0(BITSHIFT,802)@2
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_shift0_qint <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_shift0_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_add_1(ADD,803)@2 + 1
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e);
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_shift0_q);
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_add_1_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_shift2(BITSHIFT,804)@3
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_shift2_qint <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_add_1_q & "00";
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_shift2_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_12(BITSHIFT,646)@3
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_12_qint <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_12_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_shift0(BITSHIFT,793)@2
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_shift0_qint <= i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_shift0_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_add_1(ADD,794)@2 + 1
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b);
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_shift0_q);
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_add_1_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_shift2(BITSHIFT,795)@3
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_shift2_qint <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_add_1_q & "00";
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_shift2_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_join_13(BITJOIN,647)@3
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_join_13_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_align_12_q & i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_im0_shift2_q;

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_result_add_0_0(ADD,651)@3
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_join_13_q);
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_join_16_q);
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_result_add_0_0_b));
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_result_add_0_0_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_extender_x(BITJOIN,190)@3
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_extender_x_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_multconst_x_q & i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_trunc_sel_x(BITSELECT,192)@3
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_trunc_sel_x_b <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_mult_extender_x_q(63 downto 0);

    -- redist65_i_arrayidx4_3_i15_i_processfpga_processfpga1474_trunc_sel_x_b_1(DELAY,901)
    redist65_i_arrayidx4_3_i15_i_processfpga_processfpga1474_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_3_i15_i_processfpga_processfpga1474_trunc_sel_x_b, xout => redist65_i_arrayidx4_3_i15_i_processfpga_processfpga1474_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localconn_sync_buffer144_processfpga(BLACKBOX,444)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_localconn_sync_buffer144_processfpga : i_syncbuf_localconn_sync_buffer144_processfpga1472
    PORT MAP (
        in_buffer_in => in_localConn,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist42_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_localconn_sync_buffer144_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_add_x(ADD,193)@4
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localconn_sync_buffer144_processfpga_out_buffer_out);
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_add_x_b <= STD_LOGIC_VECTOR("0" & redist65_i_arrayidx4_3_i15_i_processfpga_processfpga1474_trunc_sel_x_b_1_q);
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_3_i15_i_processfpga_processfpga1474_add_x_a) + UNSIGNED(i_arrayidx4_3_i15_i_processfpga_processfpga1474_add_x_b));
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_add_x_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_add_x_o(64 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_trunc_sel_x(BITSELECT,184)@4
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_trunc_sel_x_b <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_add_x_q(63 downto 0);

    -- redist66_i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_trunc_sel_x_b_1(DELAY,902)
    redist66_i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_trunc_sel_x_b, xout => redist66_i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_add_x(ADD,187)@5
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist66_i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_2_i35_i_processfpga_processfpga1504_c_i64_4gr_x_q);
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_add_x_a) + UNSIGNED(i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_add_x_b));
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_add_x_q <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_1_trunc_sel_x(BITSELECT,185)@5
    i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_1_trunc_sel_x_b <= i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_0_add_x_q(63 downto 0);

    -- i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x(BLACKBOX,230)@5
    -- in in_i_stall@20000000
    -- out out_o_readdata_0@10
    -- out out_o_readdata_1@10
    -- out out_memcoalesce_localConn_load_057_avm_address@20000000
    -- out out_memcoalesce_localConn_load_057_avm_burstcount@20000000
    -- out out_memcoalesce_localConn_load_057_avm_byteenable@20000000
    -- out out_memcoalesce_localConn_load_057_avm_enable@20000000
    -- out out_memcoalesce_localConn_load_057_avm_read@20000000
    -- out out_memcoalesce_localConn_load_057_avm_write@20000000
    -- out out_memcoalesce_localConn_load_057_avm_writedata@20000000
    -- out out_o_stall@9
    -- out out_o_valid@10
    thei_load_memcoalesce_localconn_load_057_processfpga_aunroll_x : i_load_memcoalesce_localconn_load_057_processfpga1477
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx4_3_i15_i_processfpga_processfpga1474_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga204_processfpga_out_dest_data_out_99_0,
        in_i_stall => GND_q,
        in_i_valid => redist43_sync_in_aunroll_x_in_i_valid_4_q,
        in_memcoalesce_localConn_load_057_avm_readdata => in_memcoalesce_localConn_load_057_avm_readdata,
        in_memcoalesce_localConn_load_057_avm_readdatavalid => in_memcoalesce_localConn_load_057_avm_readdatavalid,
        in_memcoalesce_localConn_load_057_avm_waitrequest => in_memcoalesce_localConn_load_057_avm_waitrequest,
        in_memcoalesce_localConn_load_057_avm_writeack => in_memcoalesce_localConn_load_057_avm_writeack,
        out_o_readdata_0 => i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_0,
        out_o_readdata_1 => i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1,
        out_memcoalesce_localConn_load_057_avm_address => i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_address,
        out_memcoalesce_localConn_load_057_avm_burstcount => i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_burstcount,
        out_memcoalesce_localConn_load_057_avm_byteenable => i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_byteenable,
        out_memcoalesce_localConn_load_057_avm_enable => i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_enable,
        out_memcoalesce_localConn_load_057_avm_read => i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_read,
        out_memcoalesce_localConn_load_057_avm_write => i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_write,
        out_memcoalesce_localConn_load_057_avm_writedata => i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_1_ext_sig_sync_out_x(GPOUT,12)
    out_memcoalesce_localConn_load_057_avm_address <= i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_address;
    out_memcoalesce_localConn_load_057_avm_enable <= i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_enable;
    out_memcoalesce_localConn_load_057_avm_read <= i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_read;
    out_memcoalesce_localConn_load_057_avm_write <= i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_write;
    out_memcoalesce_localConn_load_057_avm_writedata <= i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_writedata;
    out_memcoalesce_localConn_load_057_avm_byteenable <= i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_byteenable;
    out_memcoalesce_localConn_load_057_avm_burstcount <= i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_memcoalesce_localConn_load_057_avm_burstcount;

    -- i_ffwd_dst_unnamed_processfpga205_processfpga(BLACKBOX,376)@10
    thei_ffwd_dst_unnamed_processfpga205_processfpga : i_ffwd_dst_unnamed_processfpga205_processfpga1482
    PORT MAP (
        in_intel_reserved_ffwd_99_0 => in_intel_reserved_ffwd_99_0,
        in_stall_in => GND_q,
        in_valid_in => redist45_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_99_0 => i_ffwd_dst_unnamed_processfpga205_processfpga_out_dest_data_out_99_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_c_i64_8gr_x(CONSTANT,209)
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_c_i64_8gr_x_q <= "0000000000000000000000000000000000000000000000000000000000001000";

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_shift0(BITSHIFT,808)@7
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_shift0_qint <= redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_outputreg_q & "0";
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_shift0_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_add_1(ADD,809)@7 + 1
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_outputreg_q);
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_shift0_q);
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_add_1_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_shift2(BITSHIFT,810)@8
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_shift2_qint <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_add_1_q & "00";
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_shift2_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_15(BITSHIFT,667)@8
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_15_qint <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_15_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_shift0(BITSHIFT,811)@7
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_shift0_qint <= redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_outputreg_q & "0";
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_shift0_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_add_1(ADD,812)@7 + 1
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_outputreg_q);
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_shift0_q);
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_add_1_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_shift2(BITSHIFT,813)@8
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_shift2_qint <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_add_1_q & "00";
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_shift2_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_14(BITSHIFT,666)@8
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_14_qint <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_14_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_join_16(BITJOIN,668)@8
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_join_16_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_15_q & i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_14_q;

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_shift0(BITSHIFT,814)@7
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_shift0_qint <= redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_outputreg_q & "0";
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_shift0_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_add_1(ADD,815)@7 + 1
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_outputreg_q);
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_shift0_q);
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_add_1_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_shift2(BITSHIFT,816)@8
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_shift2_qint <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_add_1_q & "00";
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_shift2_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_12(BITSHIFT,664)@8
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_12_qint <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_12_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_shift0(BITSHIFT,805)@7
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_shift0_qint <= redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_outputreg_q & "0";
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_shift0_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_add_1(ADD,806)@7 + 1
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_outputreg_q);
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_shift0_q);
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_add_1_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_shift2(BITSHIFT,807)@8
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_shift2_qint <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_add_1_q & "00";
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_shift2_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_join_13(BITJOIN,665)@8
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_join_13_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_align_12_q & i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_im0_shift2_q;

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_result_add_0_0(ADD,669)@8
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_join_13_q);
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_join_16_q);
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_result_add_0_0_b));
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_result_add_0_0_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_extender_x(BITJOIN,204)@8
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_extender_x_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_multconst_x_q & i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_trunc_sel_x(BITSELECT,206)@8
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_trunc_sel_x_b <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_mult_extender_x_q(63 downto 0);

    -- redist63_i_arrayidx4_5_i17_i_processfpga_processfpga1481_trunc_sel_x_b_1(DELAY,899)
    redist63_i_arrayidx4_5_i17_i_processfpga_processfpga1481_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_5_i17_i_processfpga_processfpga1481_trunc_sel_x_b, xout => redist63_i_arrayidx4_5_i17_i_processfpga_processfpga1481_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localconn_sync_buffer143_processfpga(BLACKBOX,443)@0
    -- in in_i_dependence@9
    -- in in_valid_in@9
    -- out out_buffer_out@9
    -- out out_valid_out@9
    thei_syncbuf_localconn_sync_buffer143_processfpga : i_syncbuf_localconn_sync_buffer143_processfpga1479
    PORT MAP (
        in_buffer_in => in_localConn,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist44_sync_in_aunroll_x_in_i_valid_8_q,
        out_buffer_out => i_syncbuf_localconn_sync_buffer143_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_add_x(ADD,207)@9
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localconn_sync_buffer143_processfpga_out_buffer_out);
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_add_x_b <= STD_LOGIC_VECTOR("0" & redist63_i_arrayidx4_5_i17_i_processfpga_processfpga1481_trunc_sel_x_b_1_q);
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_5_i17_i_processfpga_processfpga1481_add_x_a) + UNSIGNED(i_arrayidx4_5_i17_i_processfpga_processfpga1481_add_x_b));
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_add_x_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_add_x_o(64 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_trunc_sel_x(BITSELECT,198)@9
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_trunc_sel_x_b <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_add_x_q(63 downto 0);

    -- redist64_i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_trunc_sel_x_b_1(DELAY,900)
    redist64_i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_trunc_sel_x_b, xout => redist64_i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_add_x(ADD,201)@10
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist64_i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_5_i17_i_processfpga_processfpga1481_c_i64_8gr_x_q);
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_add_x_a) + UNSIGNED(i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_add_x_b));
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_add_x_q <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_1_trunc_sel_x(BITSELECT,199)@10
    i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_1_trunc_sel_x_b <= i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_0_add_x_q(63 downto 0);

    -- i_load_tmp42_i_i61237_processfpga(BLACKBOX,410)@10
    -- in in_i_stall@20000000
    -- out out_o_readdata@15
    -- out out_o_stall@14
    -- out out_o_valid@15
    -- out out_tmp42_i_i61237_avm_address@20000000
    -- out out_tmp42_i_i61237_avm_burstcount@20000000
    -- out out_tmp42_i_i61237_avm_byteenable@20000000
    -- out out_tmp42_i_i61237_avm_enable@20000000
    -- out out_tmp42_i_i61237_avm_read@20000000
    -- out out_tmp42_i_i61237_avm_write@20000000
    -- out out_tmp42_i_i61237_avm_writedata@20000000
    thei_load_tmp42_i_i61237_processfpga : i_load_tmp42_i_i61237_processfpga1484
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx4_5_i17_i_processfpga_processfpga1481_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga205_processfpga_out_dest_data_out_99_0,
        in_i_stall => GND_q,
        in_i_valid => redist45_sync_in_aunroll_x_in_i_valid_9_q,
        in_tmp42_i_i61237_avm_readdata => in_tmp42_i_i61237_avm_readdata,
        in_tmp42_i_i61237_avm_readdatavalid => in_tmp42_i_i61237_avm_readdatavalid,
        in_tmp42_i_i61237_avm_waitrequest => in_tmp42_i_i61237_avm_waitrequest,
        in_tmp42_i_i61237_avm_writeack => in_tmp42_i_i61237_avm_writeack,
        out_o_readdata => i_load_tmp42_i_i61237_processfpga_out_o_readdata,
        out_tmp42_i_i61237_avm_address => i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_address,
        out_tmp42_i_i61237_avm_burstcount => i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_burstcount,
        out_tmp42_i_i61237_avm_byteenable => i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_byteenable,
        out_tmp42_i_i61237_avm_enable => i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_enable,
        out_tmp42_i_i61237_avm_read => i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_read,
        out_tmp42_i_i61237_avm_write => i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_write,
        out_tmp42_i_i61237_avm_writedata => i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_2_ext_sig_sync_out_x(GPOUT,16)
    out_tmp42_i_i61237_avm_address <= i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_address;
    out_tmp42_i_i61237_avm_enable <= i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_enable;
    out_tmp42_i_i61237_avm_read <= i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_read;
    out_tmp42_i_i61237_avm_write <= i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_write;
    out_tmp42_i_i61237_avm_writedata <= i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_writedata;
    out_tmp42_i_i61237_avm_byteenable <= i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_byteenable;
    out_tmp42_i_i61237_avm_burstcount <= i_load_tmp42_i_i61237_processfpga_out_tmp42_i_i61237_avm_burstcount;

    -- i_ffwd_dst_idx_1_i1324_replace_phi494_processfpga(BLACKBOX,372)@10
    thei_ffwd_dst_idx_1_i1324_replace_phi494_processfpga : i_ffwd_dst_idx_1_i1324_replace_phi494_processfpga1486
    PORT MAP (
        in_intel_reserved_ffwd_93_0 => in_intel_reserved_ffwd_93_0,
        in_stall_in => GND_q,
        in_valid_in => redist45_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_93_0 => i_ffwd_dst_idx_1_i1324_replace_phi494_processfpga_out_dest_data_out_93_0,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp7_i23_i_processfpga(LOGICAL,368)@10
    i_cmp7_i23_i_processfpga_q <= "1" WHEN i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_0 = i_ffwd_dst_idx_1_i1324_replace_phi494_processfpga_out_dest_data_out_93_0 ELSE "0";

    -- i_cmp7_i23_i_xor_processfpga(LOGICAL,369)@10
    i_cmp7_i23_i_xor_processfpga_q <= i_cmp7_i23_i_processfpga_q xor VCC_q;

    -- i_ffwd_dst_unnamed_processfpga206_processfpga(BLACKBOX,377)@10
    thei_ffwd_dst_unnamed_processfpga206_processfpga : i_ffwd_dst_unnamed_processfpga206_processfpga1492
    PORT MAP (
        in_intel_reserved_ffwd_99_0 => in_intel_reserved_ffwd_99_0,
        in_stall_in => GND_q,
        in_valid_in => redist45_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_99_0 => i_ffwd_dst_unnamed_processfpga206_processfpga_out_dest_data_out_99_0,
        clock => clock,
        resetn => resetn
    );

    -- i_phi_decision1561_or1565_processfpga(LOGICAL,426)@10
    i_phi_decision1561_or1565_processfpga_q <= i_ffwd_dst_unnamed_processfpga206_processfpga_out_dest_data_out_99_0 or i_cmp7_i23_i_xor_processfpga_q;

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_c_i64_2gr_x(CONSTANT,181)
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_c_i64_2gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000010";

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_shift0(BITSHIFT,784)@7
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_shift0_qint <= redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_outputreg_q & "0";
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_shift0_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_add_1(ADD,785)@7 + 1
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & redist5_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_c_5_outputreg_q);
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_shift0_q);
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_add_1_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_shift2(BITSHIFT,786)@8
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_shift2_qint <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_add_1_q & "00";
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_shift2_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_15(BITSHIFT,631)@8
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_15_qint <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_15_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_shift0(BITSHIFT,787)@7
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_shift0_qint <= redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_outputreg_q & "0";
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_shift0_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_add_1(ADD,788)@7 + 1
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & redist6_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_d_5_outputreg_q);
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_shift0_q);
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_add_1_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_shift2(BITSHIFT,789)@8
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_shift2_qint <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_add_1_q & "00";
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_shift2_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_14(BITSHIFT,630)@8
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_14_qint <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_14_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_join_16(BITJOIN,632)@8
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_join_16_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_15_q & i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_14_q;

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_shift0(BITSHIFT,790)@7
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_shift0_qint <= redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_outputreg_q & "0";
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_shift0_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_add_1(ADD,791)@7 + 1
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & redist7_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_e_5_outputreg_q);
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_shift0_q);
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_add_1_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_shift2(BITSHIFT,792)@8
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_shift2_qint <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_add_1_q & "00";
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_shift2_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_12(BITSHIFT,628)@8
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_12_qint <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_12_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_shift0(BITSHIFT,781)@7
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_shift0_qint <= redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_outputreg_q & "0";
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_shift0_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_add_1(ADD,782)@7 + 1
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & redist4_i_arrayidx4_1_i13_i_processfpga_processfpga1467_mult_x_bs1_merged_bit_select_b_5_outputreg_q);
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_shift0_q);
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_add_1_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_shift2(BITSHIFT,783)@8
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_shift2_qint <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_add_1_q & "00";
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_shift2_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_join_13(BITJOIN,629)@8
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_join_13_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_align_12_q & i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_im0_shift2_q;

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_result_add_0_0(ADD,633)@8
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_join_13_q);
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_join_16_q);
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_result_add_0_0_b));
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_result_add_0_0_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_extender_x(BITJOIN,176)@8
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_extender_x_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_multconst_x_q & i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_trunc_sel_x(BITSELECT,178)@8
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_trunc_sel_x_b <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_mult_extender_x_q(63 downto 0);

    -- redist67_i_arrayidx4_2_i14_i_processfpga_processfpga1491_trunc_sel_x_b_1(DELAY,903)
    redist67_i_arrayidx4_2_i14_i_processfpga_processfpga1491_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_2_i14_i_processfpga_processfpga1491_trunc_sel_x_b, xout => redist67_i_arrayidx4_2_i14_i_processfpga_processfpga1491_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localconn_sync_buffer142_processfpga(BLACKBOX,442)@0
    -- in in_i_dependence@9
    -- in in_valid_in@9
    -- out out_buffer_out@9
    -- out out_valid_out@9
    thei_syncbuf_localconn_sync_buffer142_processfpga : i_syncbuf_localconn_sync_buffer142_processfpga1489
    PORT MAP (
        in_buffer_in => in_localConn,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist44_sync_in_aunroll_x_in_i_valid_8_q,
        out_buffer_out => i_syncbuf_localconn_sync_buffer142_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_add_x(ADD,179)@9
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localconn_sync_buffer142_processfpga_out_buffer_out);
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_add_x_b <= STD_LOGIC_VECTOR("0" & redist67_i_arrayidx4_2_i14_i_processfpga_processfpga1491_trunc_sel_x_b_1_q);
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_2_i14_i_processfpga_processfpga1491_add_x_a) + UNSIGNED(i_arrayidx4_2_i14_i_processfpga_processfpga1491_add_x_b));
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_add_x_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_add_x_o(64 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_trunc_sel_x(BITSELECT,170)@9
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_trunc_sel_x_b <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_add_x_q(63 downto 0);

    -- redist68_i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_trunc_sel_x_b_1(DELAY,904)
    redist68_i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_trunc_sel_x_b, xout => redist68_i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_add_x(ADD,173)@10
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist68_i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_2_i14_i_processfpga_processfpga1491_c_i64_2gr_x_q);
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_add_x_a) + UNSIGNED(i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_add_x_b));
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_add_x_q <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_1_trunc_sel_x(BITSELECT,171)@10
    i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_1_trunc_sel_x_b <= i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_0_add_x_q(63 downto 0);

    -- i_load_tmp39_i_i60938_processfpga(BLACKBOX,409)@10
    -- in in_i_stall@20000000
    -- out out_o_readdata@15
    -- out out_o_stall@14
    -- out out_o_valid@15
    -- out out_tmp39_i_i60938_avm_address@20000000
    -- out out_tmp39_i_i60938_avm_burstcount@20000000
    -- out out_tmp39_i_i60938_avm_byteenable@20000000
    -- out out_tmp39_i_i60938_avm_enable@20000000
    -- out out_tmp39_i_i60938_avm_read@20000000
    -- out out_tmp39_i_i60938_avm_write@20000000
    -- out out_tmp39_i_i60938_avm_writedata@20000000
    thei_load_tmp39_i_i60938_processfpga : i_load_tmp39_i_i60938_processfpga1494
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx4_2_i14_i_processfpga_processfpga1491_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_phi_decision1561_or1565_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist45_sync_in_aunroll_x_in_i_valid_9_q,
        in_tmp39_i_i60938_avm_readdata => in_tmp39_i_i60938_avm_readdata,
        in_tmp39_i_i60938_avm_readdatavalid => in_tmp39_i_i60938_avm_readdatavalid,
        in_tmp39_i_i60938_avm_waitrequest => in_tmp39_i_i60938_avm_waitrequest,
        in_tmp39_i_i60938_avm_writeack => in_tmp39_i_i60938_avm_writeack,
        out_o_readdata => i_load_tmp39_i_i60938_processfpga_out_o_readdata,
        out_tmp39_i_i60938_avm_address => i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_address,
        out_tmp39_i_i60938_avm_burstcount => i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_burstcount,
        out_tmp39_i_i60938_avm_byteenable => i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_byteenable,
        out_tmp39_i_i60938_avm_enable => i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_enable,
        out_tmp39_i_i60938_avm_read => i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_read,
        out_tmp39_i_i60938_avm_write => i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_write,
        out_tmp39_i_i60938_avm_writedata => i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_3_ext_sig_sync_out_x(GPOUT,19)
    out_tmp39_i_i60938_avm_address <= i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_address;
    out_tmp39_i_i60938_avm_enable <= i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_enable;
    out_tmp39_i_i60938_avm_read <= i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_read;
    out_tmp39_i_i60938_avm_write <= i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_write;
    out_tmp39_i_i60938_avm_writedata <= i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_writedata;
    out_tmp39_i_i60938_avm_byteenable <= i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_byteenable;
    out_tmp39_i_i60938_avm_burstcount <= i_load_tmp39_i_i60938_processfpga_out_tmp39_i_i60938_avm_burstcount;

    -- redist46_sync_in_aunroll_x_in_i_valid_16(DELAY,882)
    redist46_sync_in_aunroll_x_in_i_valid_16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist45_sync_in_aunroll_x_in_i_valid_9_q, xout => redist46_sync_in_aunroll_x_in_i_valid_16_q, clk => clock, aclr => resetn );

    -- redist47_sync_in_aunroll_x_in_i_valid_17(DELAY,883)
    redist47_sync_in_aunroll_x_in_i_valid_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist46_sync_in_aunroll_x_in_i_valid_16_q, xout => redist47_sync_in_aunroll_x_in_i_valid_17_q, clk => clock, aclr => resetn );

    -- redist17_i_phi_decision1561_or1565_processfpga_q_8(DELAY,853)
    redist17_i_phi_decision1561_or1565_processfpga_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_phi_decision1561_or1565_processfpga_q, xout => redist17_i_phi_decision1561_or1565_processfpga_q_8_q, clk => clock, aclr => resetn );

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_shift0(BITSHIFT,820)@15
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_shift0_qint <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c & "0";
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_shift0_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_shift0_qint(10 downto 0);

    -- i_idxprom9_i26_i_processfpga_sel_x(BITSELECT,229)@15
    i_idxprom9_i26_i_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(i_load_tmp39_i_i60938_processfpga_out_o_readdata(15 downto 0)), 64));

    -- i_idxprom9_i26_i_processfpga_vt_select_15(BITSELECT,400)@15
    i_idxprom9_i26_i_processfpga_vt_select_15_b <= i_idxprom9_i26_i_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom9_i26_i_processfpga_vt_join(BITJOIN,399)@15
    i_idxprom9_i26_i_processfpga_vt_join_q <= i_idxprom37_i49_i_processfpga_vt_const_63_q & i_idxprom9_i26_i_processfpga_vt_select_15_b;

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select(BITSELECT,835)@15
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b <= i_idxprom9_i26_i_processfpga_vt_join_q(17 downto 0);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c <= i_idxprom9_i26_i_processfpga_vt_join_q(63 downto 54);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d <= i_idxprom9_i26_i_processfpga_vt_join_q(35 downto 18);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e <= i_idxprom9_i26_i_processfpga_vt_join_q(53 downto 36);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_add_1(ADD,821)@15 + 1
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c);
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_shift0_q);
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_add_1_a) + UNSIGNED(i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_add_1_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_add_1_o(11 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_shift2(BITSHIFT,822)@16
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_shift2_qint <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_add_1_q & "00";
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_shift2_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_shift2_qint(13 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_15(BITSHIFT,685)@16
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_15_qint <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im3_shift2_q & "00000000000000";
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_15_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_15_qint(27 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_shift0(BITSHIFT,823)@15
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_shift0_qint <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d & "0";
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_shift0_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_shift0_qint(18 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_add_1(ADD,824)@15 + 1
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d);
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_shift0_q);
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_add_1_a) + UNSIGNED(i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_add_1_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_add_1_o(19 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_shift2(BITSHIFT,825)@16
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_shift2_qint <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_add_1_q & "00";
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_shift2_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_shift2_qint(21 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_14(BITSHIFT,684)@16
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_14_qint <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im6_shift2_q & "000000000000000000";
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_14_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_14_qint(39 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_join_16(BITJOIN,686)@16
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_join_16_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_15_q & i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_14_q;

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_shift0(BITSHIFT,826)@15
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_shift0_qint <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e & "0";
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_shift0_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_shift0_qint(18 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_add_1(ADD,827)@15 + 1
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e);
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_shift0_q);
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_add_1_a) + UNSIGNED(i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_add_1_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_add_1_o(19 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_shift2(BITSHIFT,828)@16
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_shift2_qint <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_add_1_q & "00";
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_shift2_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_shift2_qint(21 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_12(BITSHIFT,682)@16
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_12_qint <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im9_shift2_q & "00000000000000";
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_12_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_12_qint(35 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_shift0(BITSHIFT,817)@15
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_shift0_qint <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b & "0";
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_shift0_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_shift0_qint(18 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_add_1(ADD,818)@15 + 1
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b);
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_shift0_q);
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_add_1_a) + UNSIGNED(i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_add_1_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_add_1_o(19 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_shift2(BITSHIFT,819)@16
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_shift2_qint <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_add_1_q & "00";
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_shift2_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_shift2_qint(21 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_join_13(BITJOIN,683)@16
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_join_13_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_align_12_q & i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_im0_shift2_q;

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_result_add_0_0(ADD,687)@16
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_join_13_q);
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_join_16_q);
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_result_add_0_0_a) + UNSIGNED(i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_result_add_0_0_b));
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_result_add_0_0_q <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_result_add_0_0_o(68 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_mult_extender_x(BITJOIN,218)@16
    i_clfrnt_i_i615_processfpga_processfpga1498_mult_extender_x_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_multconst_x_q & i_clfrnt_i_i615_processfpga_processfpga1498_mult_x_result_add_0_0_q(67 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_trunc_sel_x(BITSELECT,220)@16
    i_clfrnt_i_i615_processfpga_processfpga1498_trunc_sel_x_b <= i_clfrnt_i_i615_processfpga_processfpga1498_mult_extender_x_q(63 downto 0);

    -- redist61_i_clfrnt_i_i615_processfpga_processfpga1498_trunc_sel_x_b_1(DELAY,897)
    redist61_i_clfrnt_i_i615_processfpga_processfpga1498_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clfrnt_i_i615_processfpga_processfpga1498_trunc_sel_x_b, xout => redist61_i_clfrnt_i_i615_processfpga_processfpga1498_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer97_processfpga(BLACKBOX,451)@0
    -- in in_i_dependence@17
    -- in in_valid_in@17
    -- out out_buffer_out@17
    -- out out_valid_out@17
    thei_syncbuf_localneurons_sync_buffer97_processfpga : i_syncbuf_localneurons_sync_buffer97_processfpga1496
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist46_sync_in_aunroll_x_in_i_valid_16_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer97_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_clfrnt_i_i615_processfpga_processfpga1498_add_x(ADD,221)@17
    i_clfrnt_i_i615_processfpga_processfpga1498_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer97_processfpga_out_buffer_out);
    i_clfrnt_i_i615_processfpga_processfpga1498_add_x_b <= STD_LOGIC_VECTOR("0" & redist61_i_clfrnt_i_i615_processfpga_processfpga1498_trunc_sel_x_b_1_q);
    i_clfrnt_i_i615_processfpga_processfpga1498_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfrnt_i_i615_processfpga_processfpga1498_add_x_a) + UNSIGNED(i_clfrnt_i_i615_processfpga_processfpga1498_add_x_b));
    i_clfrnt_i_i615_processfpga_processfpga1498_add_x_q <= i_clfrnt_i_i615_processfpga_processfpga1498_add_x_o(64 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_trunc_sel_x(BITSELECT,212)@17
    i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_trunc_sel_x_b <= i_clfrnt_i_i615_processfpga_processfpga1498_add_x_q(63 downto 0);

    -- redist62_i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_trunc_sel_x_b_1(DELAY,898)
    redist62_i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_trunc_sel_x_b, xout => redist62_i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_add_x(ADD,215)@18
    i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist62_i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_trunc_sel_x_b_1_q);
    i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_2_i14_i_processfpga_processfpga1491_c_i64_2gr_x_q);
    i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_add_x_a) + UNSIGNED(i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_add_x_b));
    i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_add_x_q <= i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_add_x_o(64 downto 0);

    -- i_clfrnt_i_i615_processfpga_processfpga1498_dupName_1_trunc_sel_x(BITSELECT,213)@18
    i_clfrnt_i_i615_processfpga_processfpga1498_dupName_1_trunc_sel_x_b <= i_clfrnt_i_i615_processfpga_processfpga1498_dupName_0_add_x_q(63 downto 0);

    -- i_load_unnamed_processfpga207_processfpga(BLACKBOX,411)@18
    -- in in_i_stall@20000000
    -- out out_o_readdata@23
    -- out out_o_stall@22
    -- out out_o_valid@23
    -- out out_unnamed_processFPGA207_avm_address@20000000
    -- out out_unnamed_processFPGA207_avm_burstcount@20000000
    -- out out_unnamed_processFPGA207_avm_byteenable@20000000
    -- out out_unnamed_processFPGA207_avm_enable@20000000
    -- out out_unnamed_processFPGA207_avm_read@20000000
    -- out out_unnamed_processFPGA207_avm_write@20000000
    -- out out_unnamed_processFPGA207_avm_writedata@20000000
    thei_load_unnamed_processfpga207_processfpga : i_load_unnamed_processfpga207_processfpga1499
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_clfrnt_i_i615_processfpga_processfpga1498_dupName_1_trunc_sel_x_b,
        in_i_predicate => redist17_i_phi_decision1561_or1565_processfpga_q_8_q,
        in_i_stall => GND_q,
        in_i_valid => redist47_sync_in_aunroll_x_in_i_valid_17_q,
        in_unnamed_processFPGA207_avm_readdata => in_unnamed_processFPGA207_avm_readdata,
        in_unnamed_processFPGA207_avm_readdatavalid => in_unnamed_processFPGA207_avm_readdatavalid,
        in_unnamed_processFPGA207_avm_waitrequest => in_unnamed_processFPGA207_avm_waitrequest,
        in_unnamed_processFPGA207_avm_writeack => in_unnamed_processFPGA207_avm_writeack,
        out_o_readdata => i_load_unnamed_processfpga207_processfpga_out_o_readdata,
        out_unnamed_processFPGA207_avm_address => i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_address,
        out_unnamed_processFPGA207_avm_burstcount => i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_burstcount,
        out_unnamed_processFPGA207_avm_byteenable => i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_byteenable,
        out_unnamed_processFPGA207_avm_enable => i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_enable,
        out_unnamed_processFPGA207_avm_read => i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_read,
        out_unnamed_processFPGA207_avm_write => i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_write,
        out_unnamed_processFPGA207_avm_writedata => i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_4_ext_sig_sync_out_x(GPOUT,22)
    out_unnamed_processFPGA207_avm_address <= i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_address;
    out_unnamed_processFPGA207_avm_enable <= i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_enable;
    out_unnamed_processFPGA207_avm_read <= i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_read;
    out_unnamed_processFPGA207_avm_write <= i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_write;
    out_unnamed_processFPGA207_avm_writedata <= i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_writedata;
    out_unnamed_processFPGA207_avm_byteenable <= i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_byteenable;
    out_unnamed_processFPGA207_avm_burstcount <= i_load_unnamed_processfpga207_processfpga_out_unnamed_processFPGA207_avm_burstcount;

    -- redist48_sync_in_aunroll_x_in_i_valid_21(DELAY,884)
    redist48_sync_in_aunroll_x_in_i_valid_21 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist47_sync_in_aunroll_x_in_i_valid_17_q, xout => redist48_sync_in_aunroll_x_in_i_valid_21_q, clk => clock, aclr => resetn );

    -- redist49_sync_in_aunroll_x_in_i_valid_22(DELAY,885)
    redist49_sync_in_aunroll_x_in_i_valid_22 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist48_sync_in_aunroll_x_in_i_valid_21_q, xout => redist49_sync_in_aunroll_x_in_i_valid_22_q, clk => clock, aclr => resetn );

    -- redist50_sync_in_aunroll_x_in_i_valid_23(DELAY,886)
    redist50_sync_in_aunroll_x_in_i_valid_23 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist49_sync_in_aunroll_x_in_i_valid_22_q, xout => redist50_sync_in_aunroll_x_in_i_valid_23_q, clk => clock, aclr => resetn );

    -- i_and_i_i616_processfpga_vt_const_15(CONSTANT,359)
    i_and_i_i616_processfpga_vt_const_15_q <= "000000";

    -- c_i16_768(CONSTANT,315)
    c_i16_768_q <= "0000001100000000";

    -- i_and_i_i616_processfpga(LOGICAL,358)@23
    i_and_i_i616_processfpga_q <= i_load_unnamed_processfpga207_processfpga_out_o_readdata and c_i16_768_q;

    -- i_and_i_i616_processfpga_vt_select_9(BITSELECT,362)@23
    i_and_i_i616_processfpga_vt_select_9_b <= i_and_i_i616_processfpga_q(9 downto 8);

    -- dupName_2_c_i8_0gr_x(CONSTANT,14)
    dupName_2_c_i8_0gr_x_q <= "00000000";

    -- i_and_i_i616_processfpga_vt_join(BITJOIN,361)@23
    i_and_i_i616_processfpga_vt_join_q <= i_and_i_i616_processfpga_vt_const_15_q & i_and_i_i616_processfpga_vt_select_9_b & dupName_2_c_i8_0gr_x_q;

    -- i_lnot_i_i617_processfpga(LOGICAL,404)@23 + 1
    i_lnot_i_i617_processfpga_qi <= "1" WHEN i_and_i_i616_processfpga_vt_join_q = c_i16_0gr_q ELSE "0";
    i_lnot_i_i617_processfpga_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_lnot_i_i617_processfpga_qi, xout => i_lnot_i_i617_processfpga_q, clk => clock, aclr => resetn );

    -- redist23_i_cmp7_i23_i_processfpga_q_14(DELAY,859)
    redist23_i_cmp7_i23_i_processfpga_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 14, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp7_i23_i_processfpga_q, xout => redist23_i_cmp7_i23_i_processfpga_q_14_q, clk => clock, aclr => resetn );

    -- i_acl_937_processfpga(LOGICAL,333)@24
    i_acl_937_processfpga_q <= redist23_i_cmp7_i23_i_processfpga_q_14_q and i_lnot_i_i617_processfpga_q;

    -- i_acl_937_xor_processfpga(LOGICAL,334)@24
    i_acl_937_xor_processfpga_q <= i_acl_937_processfpga_q xor VCC_q;

    -- i_ffwd_dst_unnamed_processfpga208_processfpga(BLACKBOX,378)@24
    thei_ffwd_dst_unnamed_processfpga208_processfpga : i_ffwd_dst_unnamed_processfpga208_processfpga1505
    PORT MAP (
        in_intel_reserved_ffwd_99_0 => in_intel_reserved_ffwd_99_0,
        in_stall_in => GND_q,
        in_valid_in => redist50_sync_in_aunroll_x_in_i_valid_23_q,
        out_dest_data_out_99_0 => i_ffwd_dst_unnamed_processfpga208_processfpga_out_dest_data_out_99_0,
        clock => clock,
        resetn => resetn
    );

    -- i_phi_decision1561_or1567_processfpga(LOGICAL,427)@24
    i_phi_decision1561_or1567_processfpga_q <= i_ffwd_dst_unnamed_processfpga208_processfpga_out_dest_data_out_99_0 or i_acl_937_xor_processfpga_q;

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_shift0(BITSHIFT,708)@21
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_shift0_qint <= redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_outputreg_q & "0";
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_shift0_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_shift0_qint(10 downto 0);

    -- redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_notEnable(LOGICAL,942)
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_nor(LOGICAL,943)
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_nor_q <= not (redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_notEnable_q or redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q);

    -- redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_last(CONSTANT,939)
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_last_q <= "01";

    -- redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_cmp(LOGICAL,940)
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_cmp_q <= "1" WHEN redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_last_q = redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_q ELSE "0";

    -- redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_cmpReg(REG,941)
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_cmpReg_q <= STD_LOGIC_VECTOR(redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_sticky_ena(REG,944)
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_nor_q = "1") THEN
                redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_enaAnd(LOGICAL,945)
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_enaAnd_q <= redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q and VCC_q;

    -- redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt(COUNTER,937)
    -- low=0, high=2, step=1, init=0
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq <= '1';
            ELSE
                redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq <= '0';
            END IF;
            IF (redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq = '1') THEN
                redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_i <= redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_i + 2;
            ELSE
                redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_i <= redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_i, 2)));

    -- redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_inputreg(DELAY,934)
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_inputreg : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c, xout => redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_inputreg_q, clk => clock, aclr => resetn );

    -- redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_wraddr(REG,938)
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_wraddr_q <= STD_LOGIC_VECTOR(redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem(DUALMEM,936)
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_ia <= STD_LOGIC_VECTOR(redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_inputreg_q);
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_aa <= redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_wraddr_q;
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_ab <= redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_rdcnt_q;
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_reset0 <= not (resetn);
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 10,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_reset0,
        clock1 => clock,
        address_a => redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_aa,
        data_a => redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_ab,
        q_b => redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_iq
    );
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_q <= redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_iq(9 downto 0);

    -- redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_outputreg(DELAY,935)
    redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_outputreg : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_mem_q, xout => redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_add_1(ADD,709)@21 + 1
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_outputreg_q);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_shift0_q);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_add_1_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_shift2(BITSHIFT,710)@22
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_shift2_qint <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_add_1_q & "00";
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_shift2_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_15(BITSHIFT,505)@22
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_15_qint <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_15_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_shift0(BITSHIFT,711)@21
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_shift0_qint <= redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_outputreg_q & "0";
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_shift0_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_shift0_qint(18 downto 0);

    -- redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_notEnable(LOGICAL,954)
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_nor(LOGICAL,955)
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_nor_q <= not (redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_notEnable_q or redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q);

    -- redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_last(CONSTANT,951)
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_last_q <= "01";

    -- redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_cmp(LOGICAL,952)
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_cmp_q <= "1" WHEN redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_last_q = redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_q ELSE "0";

    -- redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_cmpReg(REG,953)
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_cmpReg_q <= STD_LOGIC_VECTOR(redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_sticky_ena(REG,956)
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_nor_q = "1") THEN
                redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_enaAnd(LOGICAL,957)
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_enaAnd_q <= redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q and VCC_q;

    -- redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt(COUNTER,949)
    -- low=0, high=2, step=1, init=0
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq <= '1';
            ELSE
                redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq <= '0';
            END IF;
            IF (redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq = '1') THEN
                redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_i <= redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_i + 2;
            ELSE
                redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_i <= redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_i, 2)));

    -- redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_inputreg(DELAY,946)
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_inputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d, xout => redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_inputreg_q, clk => clock, aclr => resetn );

    -- redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_wraddr(REG,950)
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_wraddr_q <= STD_LOGIC_VECTOR(redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem(DUALMEM,948)
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_ia <= STD_LOGIC_VECTOR(redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_inputreg_q);
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_aa <= redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_wraddr_q;
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_ab <= redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_rdcnt_q;
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_reset0 <= not (resetn);
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 18,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_reset0,
        clock1 => clock,
        address_a => redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_aa,
        data_a => redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_ab,
        q_b => redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_iq
    );
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_q <= redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_iq(17 downto 0);

    -- redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_outputreg(DELAY,947)
    redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_mem_q, xout => redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_add_1(ADD,712)@21 + 1
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_outputreg_q);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_shift0_q);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_add_1_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_shift2(BITSHIFT,713)@22
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_shift2_qint <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_add_1_q & "00";
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_shift2_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_14(BITSHIFT,504)@22
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_14_qint <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_14_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_join_16(BITJOIN,506)@22
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_join_16_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_15_q & i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_14_q;

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_shift0(BITSHIFT,714)@21
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_shift0_qint <= redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_outputreg_q & "0";
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_shift0_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_shift0_qint(18 downto 0);

    -- redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_notEnable(LOGICAL,966)
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_nor(LOGICAL,967)
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_nor_q <= not (redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_notEnable_q or redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q);

    -- redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_last(CONSTANT,963)
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_last_q <= "01";

    -- redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_cmp(LOGICAL,964)
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_cmp_q <= "1" WHEN redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_last_q = redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_q ELSE "0";

    -- redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_cmpReg(REG,965)
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_cmpReg_q <= STD_LOGIC_VECTOR(redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_sticky_ena(REG,968)
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_nor_q = "1") THEN
                redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_enaAnd(LOGICAL,969)
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_enaAnd_q <= redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q and VCC_q;

    -- redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt(COUNTER,961)
    -- low=0, high=2, step=1, init=0
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq <= '1';
            ELSE
                redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq <= '0';
            END IF;
            IF (redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq = '1') THEN
                redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_i <= redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_i + 2;
            ELSE
                redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_i <= redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_i, 2)));

    -- redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_inputreg(DELAY,958)
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_inputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e, xout => redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_inputreg_q, clk => clock, aclr => resetn );

    -- redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_wraddr(REG,962)
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_wraddr_q <= STD_LOGIC_VECTOR(redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem(DUALMEM,960)
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_ia <= STD_LOGIC_VECTOR(redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_inputreg_q);
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_aa <= redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_wraddr_q;
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_ab <= redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_rdcnt_q;
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_reset0 <= not (resetn);
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 18,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_reset0,
        clock1 => clock,
        address_a => redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_aa,
        data_a => redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_ab,
        q_b => redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_iq
    );
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_q <= redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_iq(17 downto 0);

    -- redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_outputreg(DELAY,959)
    redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_mem_q, xout => redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_add_1(ADD,715)@21 + 1
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_outputreg_q);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_shift0_q);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_add_1_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_shift2(BITSHIFT,716)@22
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_shift2_qint <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_add_1_q & "00";
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_shift2_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_12(BITSHIFT,502)@22
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_12_qint <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_12_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_shift0(BITSHIFT,705)@21
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_shift0_qint <= redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_outputreg_q & "0";
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_shift0_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_shift0_qint(18 downto 0);

    -- redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_notEnable(LOGICAL,930)
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_nor(LOGICAL,931)
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_nor_q <= not (redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_notEnable_q or redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q);

    -- redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_last(CONSTANT,927)
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_last_q <= "01";

    -- redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_cmp(LOGICAL,928)
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_cmp_q <= "1" WHEN redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_last_q = redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_q ELSE "0";

    -- redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_cmpReg(REG,929)
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_cmpReg_q <= STD_LOGIC_VECTOR(redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_sticky_ena(REG,932)
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_nor_q = "1") THEN
                redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_enaAnd(LOGICAL,933)
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_enaAnd_q <= redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q and VCC_q;

    -- redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt(COUNTER,925)
    -- low=0, high=2, step=1, init=0
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq <= '1';
            ELSE
                redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq <= '0';
            END IF;
            IF (redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq = '1') THEN
                redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_i <= redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_i + 2;
            ELSE
                redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_i <= redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_i, 2)));

    -- redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_inputreg(DELAY,922)
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_inputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b, xout => redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_inputreg_q, clk => clock, aclr => resetn );

    -- redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_wraddr(REG,926)
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_wraddr_q <= STD_LOGIC_VECTOR(redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem(DUALMEM,924)
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_ia <= STD_LOGIC_VECTOR(redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_inputreg_q);
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_aa <= redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_wraddr_q;
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_ab <= redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_rdcnt_q;
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_reset0 <= not (resetn);
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 18,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_reset0,
        clock1 => clock,
        address_a => redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_aa,
        data_a => redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_ab,
        q_b => redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_iq
    );
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_q <= redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_iq(17 downto 0);

    -- redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_outputreg(DELAY,923)
    redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_mem_q, xout => redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_add_1(ADD,706)@21 + 1
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_outputreg_q);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_shift0_q);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_add_1_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_shift2(BITSHIFT,707)@22
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_shift2_qint <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_add_1_q & "00";
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_shift2_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_join_13(BITJOIN,503)@22
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_join_13_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_align_12_q & i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_im0_shift2_q;

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_result_add_0_0(ADD,507)@22
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_join_13_q);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_join_16_q);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_result_add_0_0_b));
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_result_add_0_0_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_extender_x(BITJOIN,82)@22
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_extender_x_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_multconst_x_q & i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_trunc_sel_x(BITSELECT,84)@22
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_trunc_sel_x_b <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_extender_x_q(63 downto 0);

    -- redist82_i_arrayidx16_2_i35_i_processfpga_processfpga1504_trunc_sel_x_b_1(DELAY,918)
    redist82_i_arrayidx16_2_i35_i_processfpga_processfpga1504_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_2_i35_i_processfpga_processfpga1504_trunc_sel_x_b, xout => redist82_i_arrayidx16_2_i35_i_processfpga_processfpga1504_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer96_processfpga(BLACKBOX,450)@0
    -- in in_i_dependence@23
    -- in in_valid_in@23
    -- out out_buffer_out@23
    -- out out_valid_out@23
    thei_syncbuf_localneurons_sync_buffer96_processfpga : i_syncbuf_localneurons_sync_buffer96_processfpga1502
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist49_sync_in_aunroll_x_in_i_valid_22_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer96_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_add_x(ADD,85)@23
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer96_processfpga_out_buffer_out);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_add_x_b <= STD_LOGIC_VECTOR("0" & redist82_i_arrayidx16_2_i35_i_processfpga_processfpga1504_trunc_sel_x_b_1_q);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_2_i35_i_processfpga_processfpga1504_add_x_a) + UNSIGNED(i_arrayidx16_2_i35_i_processfpga_processfpga1504_add_x_b));
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_add_x_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_add_x_o(64 downto 0);

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_trunc_sel_x(BITSELECT,76)@23
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_trunc_sel_x_b <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_add_x_q(63 downto 0);

    -- redist83_i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_trunc_sel_x_b_1(DELAY,919)
    redist83_i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_trunc_sel_x_b, xout => redist83_i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_add_x(ADD,79)@24
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist83_i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_2_i35_i_processfpga_processfpga1504_c_i64_4gr_x_q);
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_add_x_a) + UNSIGNED(i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_add_x_b));
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_add_x_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_1_trunc_sel_x(BITSELECT,77)@24
    i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_1_trunc_sel_x_b <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_0_add_x_q(63 downto 0);

    -- i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x(BLACKBOX,231)@24
    -- in in_i_stall@20000000
    -- out out_o_readdata_0@29
    -- out out_o_readdata_1@29
    -- out out_o_readdata_2@29
    -- out out_o_readdata_3@29
    -- out out_memcoalesce_localNeurons_load_045_avm_address@20000000
    -- out out_memcoalesce_localNeurons_load_045_avm_burstcount@20000000
    -- out out_memcoalesce_localNeurons_load_045_avm_byteenable@20000000
    -- out out_memcoalesce_localNeurons_load_045_avm_enable@20000000
    -- out out_memcoalesce_localNeurons_load_045_avm_read@20000000
    -- out out_memcoalesce_localNeurons_load_045_avm_write@20000000
    -- out out_memcoalesce_localNeurons_load_045_avm_writedata@20000000
    -- out out_o_stall@28
    -- out out_o_valid@29
    thei_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x : i_load_memcoalesce_localneurons_load_045_processfpga1507
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx16_2_i35_i_processfpga_processfpga1504_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_phi_decision1561_or1567_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist50_sync_in_aunroll_x_in_i_valid_23_q,
        in_memcoalesce_localNeurons_load_045_avm_readdata => in_memcoalesce_localNeurons_load_045_avm_readdata,
        in_memcoalesce_localNeurons_load_045_avm_readdatavalid => in_memcoalesce_localNeurons_load_045_avm_readdatavalid,
        in_memcoalesce_localNeurons_load_045_avm_waitrequest => in_memcoalesce_localNeurons_load_045_avm_waitrequest,
        in_memcoalesce_localNeurons_load_045_avm_writeack => in_memcoalesce_localNeurons_load_045_avm_writeack,
        out_o_readdata_0 => i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_0,
        out_o_readdata_1 => i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_1,
        out_o_readdata_2 => i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_2,
        out_o_readdata_3 => i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_3,
        out_memcoalesce_localNeurons_load_045_avm_address => i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_address,
        out_memcoalesce_localNeurons_load_045_avm_burstcount => i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_burstcount,
        out_memcoalesce_localNeurons_load_045_avm_byteenable => i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_byteenable,
        out_memcoalesce_localNeurons_load_045_avm_enable => i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_enable,
        out_memcoalesce_localNeurons_load_045_avm_read => i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_read,
        out_memcoalesce_localNeurons_load_045_avm_write => i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_write,
        out_memcoalesce_localNeurons_load_045_avm_writedata => i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_5_ext_sig_sync_out_x(GPOUT,25)
    out_memcoalesce_localNeurons_load_045_avm_address <= i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_address;
    out_memcoalesce_localNeurons_load_045_avm_enable <= i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_enable;
    out_memcoalesce_localNeurons_load_045_avm_read <= i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_read;
    out_memcoalesce_localNeurons_load_045_avm_write <= i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_write;
    out_memcoalesce_localNeurons_load_045_avm_writedata <= i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_writedata;
    out_memcoalesce_localNeurons_load_045_avm_byteenable <= i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_byteenable;
    out_memcoalesce_localNeurons_load_045_avm_burstcount <= i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_045_avm_burstcount;

    -- redist51_sync_in_aunroll_x_in_i_valid_24(DELAY,887)
    redist51_sync_in_aunroll_x_in_i_valid_24 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist50_sync_in_aunroll_x_in_i_valid_23_q, xout => redist51_sync_in_aunroll_x_in_i_valid_24_q, clk => clock, aclr => resetn );

    -- redist16_i_phi_decision1561_or1567_processfpga_q_1(DELAY,852)
    redist16_i_phi_decision1561_or1567_processfpga_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_phi_decision1561_or1567_processfpga_q, xout => redist16_i_phi_decision1561_or1567_processfpga_q_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_c_i64_7gr_x(CONSTANT,101)
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_c_i64_7gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000111";

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_shift0(BITSHIFT,720)@21
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_shift0_qint <= redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_outputreg_q & "0";
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_shift0_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_add_1(ADD,721)@21 + 1
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & redist1_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_c_6_outputreg_q);
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_shift0_q);
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_add_1_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_shift2(BITSHIFT,722)@22
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_shift2_qint <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_add_1_q & "00";
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_shift2_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_15(BITSHIFT,523)@22
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_15_qint <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_15_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_shift0(BITSHIFT,723)@21
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_shift0_qint <= redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_outputreg_q & "0";
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_shift0_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_add_1(ADD,724)@21 + 1
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & redist2_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_d_6_outputreg_q);
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_shift0_q);
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_add_1_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_shift2(BITSHIFT,725)@22
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_shift2_qint <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_add_1_q & "00";
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_shift2_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_14(BITSHIFT,522)@22
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_14_qint <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_14_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_join_16(BITJOIN,524)@22
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_join_16_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_15_q & i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_14_q;

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_shift0(BITSHIFT,726)@21
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_shift0_qint <= redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_outputreg_q & "0";
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_shift0_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_add_1(ADD,727)@21 + 1
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & redist3_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_e_6_outputreg_q);
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_shift0_q);
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_add_1_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_shift2(BITSHIFT,728)@22
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_shift2_qint <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_add_1_q & "00";
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_shift2_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_12(BITSHIFT,520)@22
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_12_qint <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_12_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_shift0(BITSHIFT,717)@21
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_shift0_qint <= redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_outputreg_q & "0";
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_shift0_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_add_1(ADD,718)@21 + 1
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & redist0_i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_x_bs1_merged_bit_select_b_6_outputreg_q);
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_shift0_q);
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_add_1_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_shift2(BITSHIFT,719)@22
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_shift2_qint <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_add_1_q & "00";
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_shift2_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_join_13(BITJOIN,521)@22
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_join_13_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_align_12_q & i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_im0_shift2_q;

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_result_add_0_0(ADD,525)@22
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_join_13_q);
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_join_16_q);
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_result_add_0_0_b));
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_result_add_0_0_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_extender_x(BITJOIN,96)@22
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_extender_x_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_multconst_x_q & i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_trunc_sel_x(BITSELECT,98)@22
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_trunc_sel_x_b <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_mult_extender_x_q(63 downto 0);

    -- redist79_i_arrayidx16_4_i37_i_processfpga_processfpga1513_trunc_sel_x_b_1(DELAY,915)
    redist79_i_arrayidx16_4_i37_i_processfpga_processfpga1513_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_4_i37_i_processfpga_processfpga1513_trunc_sel_x_b, xout => redist79_i_arrayidx16_4_i37_i_processfpga_processfpga1513_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer95_processfpga(BLACKBOX,449)@0
    -- in in_i_dependence@23
    -- in in_valid_in@23
    -- out out_buffer_out@23
    -- out out_valid_out@23
    thei_syncbuf_localneurons_sync_buffer95_processfpga : i_syncbuf_localneurons_sync_buffer95_processfpga1511
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist49_sync_in_aunroll_x_in_i_valid_22_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer95_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_add_x(ADD,99)@23
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer95_processfpga_out_buffer_out);
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_add_x_b <= STD_LOGIC_VECTOR("0" & redist79_i_arrayidx16_4_i37_i_processfpga_processfpga1513_trunc_sel_x_b_1_q);
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_4_i37_i_processfpga_processfpga1513_add_x_a) + UNSIGNED(i_arrayidx16_4_i37_i_processfpga_processfpga1513_add_x_b));
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_add_x_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_add_x_o(64 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_trunc_sel_x(BITSELECT,90)@23
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_trunc_sel_x_b <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_add_x_q(63 downto 0);

    -- redist81_i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_trunc_sel_x_b_1(DELAY,917)
    redist81_i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_trunc_sel_x_b, xout => redist81_i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_add_x(ADD,93)@24
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist81_i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_4_i37_i_processfpga_processfpga1513_c_i64_7gr_x_q);
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_add_x_a) + UNSIGNED(i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_add_x_b));
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_add_x_q <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_1_trunc_sel_x(BITSELECT,91)@24
    i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_1_trunc_sel_x_b <= i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_0_add_x_q(63 downto 0);

    -- redist80_i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_1_trunc_sel_x_b_1(DELAY,916)
    redist80_i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_1_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_1_trunc_sel_x_b, xout => redist80_i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_1_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_normls_gep437_processfpga_processfpga1514_add_x(ADD,234)@25
    i_normls_gep437_processfpga_processfpga1514_add_x_a <= STD_LOGIC_VECTOR("0" & redist80_i_arrayidx16_4_i37_i_processfpga_processfpga1513_dupName_1_trunc_sel_x_b_1_q);
    i_normls_gep437_processfpga_processfpga1514_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_1_i13_i_processfpga_processfpga1467_c_i64_1gr_x_q);
    i_normls_gep437_processfpga_processfpga1514_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep437_processfpga_processfpga1514_add_x_a) + UNSIGNED(i_normls_gep437_processfpga_processfpga1514_add_x_b));
    i_normls_gep437_processfpga_processfpga1514_add_x_q <= i_normls_gep437_processfpga_processfpga1514_add_x_o(64 downto 0);

    -- i_normls_gep437_processfpga_processfpga1514_trunc_sel_x(BITSELECT,233)@25
    i_normls_gep437_processfpga_processfpga1514_trunc_sel_x_b <= i_normls_gep437_processfpga_processfpga1514_add_x_q(63 downto 0);

    -- i_load_normls_load438_processfpga(BLACKBOX,405)@25
    -- in in_i_stall@20000000
    -- out out_normls_load438_avm_address@20000000
    -- out out_normls_load438_avm_burstcount@20000000
    -- out out_normls_load438_avm_byteenable@20000000
    -- out out_normls_load438_avm_enable@20000000
    -- out out_normls_load438_avm_read@20000000
    -- out out_normls_load438_avm_write@20000000
    -- out out_normls_load438_avm_writedata@20000000
    -- out out_o_readdata@30
    -- out out_o_stall@29
    -- out out_o_valid@30
    thei_load_normls_load438_processfpga : i_load_normls_load438_processfpga1515
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_normls_gep437_processfpga_processfpga1514_trunc_sel_x_b,
        in_i_predicate => redist16_i_phi_decision1561_or1567_processfpga_q_1_q,
        in_i_stall => GND_q,
        in_i_valid => redist51_sync_in_aunroll_x_in_i_valid_24_q,
        in_normls_load438_avm_readdata => in_normls_load438_avm_readdata,
        in_normls_load438_avm_readdatavalid => in_normls_load438_avm_readdatavalid,
        in_normls_load438_avm_waitrequest => in_normls_load438_avm_waitrequest,
        in_normls_load438_avm_writeack => in_normls_load438_avm_writeack,
        out_normls_load438_avm_address => i_load_normls_load438_processfpga_out_normls_load438_avm_address,
        out_normls_load438_avm_burstcount => i_load_normls_load438_processfpga_out_normls_load438_avm_burstcount,
        out_normls_load438_avm_byteenable => i_load_normls_load438_processfpga_out_normls_load438_avm_byteenable,
        out_normls_load438_avm_enable => i_load_normls_load438_processfpga_out_normls_load438_avm_enable,
        out_normls_load438_avm_read => i_load_normls_load438_processfpga_out_normls_load438_avm_read,
        out_normls_load438_avm_write => i_load_normls_load438_processfpga_out_normls_load438_avm_write,
        out_normls_load438_avm_writedata => i_load_normls_load438_processfpga_out_normls_load438_avm_writedata,
        out_o_readdata => i_load_normls_load438_processfpga_out_o_readdata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_6_ext_sig_sync_out_x(GPOUT,28)
    out_normls_load438_avm_address <= i_load_normls_load438_processfpga_out_normls_load438_avm_address;
    out_normls_load438_avm_enable <= i_load_normls_load438_processfpga_out_normls_load438_avm_enable;
    out_normls_load438_avm_read <= i_load_normls_load438_processfpga_out_normls_load438_avm_read;
    out_normls_load438_avm_write <= i_load_normls_load438_processfpga_out_normls_load438_avm_write;
    out_normls_load438_avm_writedata <= i_load_normls_load438_processfpga_out_normls_load438_avm_writedata;
    out_normls_load438_avm_byteenable <= i_load_normls_load438_processfpga_out_normls_load438_avm_byteenable;
    out_normls_load438_avm_burstcount <= i_load_normls_load438_processfpga_out_normls_load438_avm_burstcount;

    -- c_i16_1gr(CONSTANT,313)
    c_i16_1gr_q <= "1111111111111111";

    -- redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_notEnable(LOGICAL,1125)
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_nor(LOGICAL,1126)
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_nor_q <= not (redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_notEnable_q or redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_sticky_ena_q);

    -- redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_last(CONSTANT,1122)
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_last_q <= "0101";

    -- redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_cmp(LOGICAL,1123)
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_cmp_b <= STD_LOGIC_VECTOR("0" & redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_q);
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_cmp_q <= "1" WHEN redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_last_q = redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_cmp_b ELSE "0";

    -- redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_cmpReg(REG,1124)
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_cmpReg_q <= STD_LOGIC_VECTOR(redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_cmp_q);
        END IF;
    END PROCESS;

    -- redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_sticky_ena(REG,1127)
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_nor_q = "1") THEN
                redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_sticky_ena_q <= STD_LOGIC_VECTOR(redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_enaAnd(LOGICAL,1128)
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_enaAnd_q <= redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_sticky_ena_q and VCC_q;

    -- redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt(COUNTER,1120)
    -- low=0, high=6, step=1, init=0
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_eq <= '1';
            ELSE
                redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_eq <= '0';
            END IF;
            IF (redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_eq = '1') THEN
                redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_i <= redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_i + 2;
            ELSE
                redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_i <= redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_i, 3)));

    -- redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_inputreg(DELAY,1117)
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_inputreg : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1, xout => redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_inputreg_q, clk => clock, aclr => resetn );

    -- redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_wraddr(REG,1121)
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_wraddr_q <= "110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_wraddr_q <= STD_LOGIC_VECTOR(redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem(DUALMEM,1119)
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_ia <= STD_LOGIC_VECTOR(redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_inputreg_q);
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_aa <= redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_wraddr_q;
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_ab <= redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_rdcnt_q;
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_reset0 <= not (resetn);
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 3,
        numwords_a => 7,
        width_b => 16,
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
        clocken1 => redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_reset0,
        clock1 => clock,
        address_a => redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_aa,
        data_a => redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_ab,
        q_b => redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_iq
    );
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_q <= redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_iq(15 downto 0);

    -- redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_outputreg(DELAY,1118)
    redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_outputreg : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_mem_q, xout => redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_outputreg_q, clk => clock, aclr => resetn );

    -- i_cmp18_i_i628_processfpga(LOGICAL,367)@20 + 1
    i_cmp18_i_i628_processfpga_qi <= "1" WHEN redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_outputreg_q = c_i16_1gr_q ELSE "0";
    i_cmp18_i_i628_processfpga_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp18_i_i628_processfpga_qi, xout => i_cmp18_i_i628_processfpga_q, clk => clock, aclr => resetn );

    -- redist27_i_cmp18_i_i628_processfpga_q_4(DELAY,863)
    redist27_i_cmp18_i_i628_processfpga_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp18_i_i628_processfpga_q, xout => redist27_i_cmp18_i_i628_processfpga_q_4_q, clk => clock, aclr => resetn );

    -- i_cmp18_i_i628_not_processfpga(LOGICAL,366)@24
    i_cmp18_i_i628_not_processfpga_q <= redist27_i_cmp18_i_i628_processfpga_q_4_q xor VCC_q;

    -- i_acl_942_processfpga(LOGICAL,335)@24
    i_acl_942_processfpga_q <= i_lnot_i_i617_processfpga_q and i_cmp18_i_i628_not_processfpga_q;

    -- i_acl_943_processfpga(LOGICAL,336)@24
    i_acl_943_processfpga_q <= redist23_i_cmp7_i23_i_processfpga_q_14_q and i_acl_942_processfpga_q;

    -- i_acl_943_xor_processfpga(LOGICAL,337)@24
    i_acl_943_xor_processfpga_q <= i_acl_943_processfpga_q xor VCC_q;

    -- i_ffwd_dst_unnamed_processfpga209_processfpga(BLACKBOX,379)@24
    thei_ffwd_dst_unnamed_processfpga209_processfpga : i_ffwd_dst_unnamed_processfpga209_processfpga1526
    PORT MAP (
        in_intel_reserved_ffwd_99_0 => in_intel_reserved_ffwd_99_0,
        in_stall_in => GND_q,
        in_valid_in => redist50_sync_in_aunroll_x_in_i_valid_23_q,
        out_dest_data_out_99_0 => i_ffwd_dst_unnamed_processfpga209_processfpga_out_dest_data_out_99_0,
        clock => clock,
        resetn => resetn
    );

    -- i_phi_decision1561_or1572_processfpga(LOGICAL,428)@24
    i_phi_decision1561_or1572_processfpga_q <= i_ffwd_dst_unnamed_processfpga209_processfpga_out_dest_data_out_99_0 or i_acl_943_xor_processfpga_q;

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_c_i64_9gr_x(CONSTANT,153)
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_c_i64_9gr_x_q <= "0000000000000000000000000000000000000000000000000000000000001001";

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_shift0(BITSHIFT,760)@20
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_shift0_qint <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_shift0_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_shift0_qint(10 downto 0);

    -- i_idxprom37_i49_i_processfpga_sel_x(BITSELECT,227)@20
    i_idxprom37_i49_i_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(redist60_i_load_memcoalesce_localconn_load_057_processfpga_aunroll_x_out_o_readdata_1_10_outputreg_q(15 downto 0)), 64));

    -- i_idxprom37_i49_i_processfpga_vt_select_15(BITSELECT,392)@20
    i_idxprom37_i49_i_processfpga_vt_select_15_b <= i_idxprom37_i49_i_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom37_i49_i_processfpga_vt_join(BITJOIN,391)@20
    i_idxprom37_i49_i_processfpga_vt_join_q <= i_idxprom37_i49_i_processfpga_vt_const_63_q & i_idxprom37_i49_i_processfpga_vt_select_15_b;

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select(BITSELECT,833)@20
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b <= i_idxprom37_i49_i_processfpga_vt_join_q(17 downto 0);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c <= i_idxprom37_i49_i_processfpga_vt_join_q(63 downto 54);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d <= i_idxprom37_i49_i_processfpga_vt_join_q(35 downto 18);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e <= i_idxprom37_i49_i_processfpga_vt_join_q(53 downto 36);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_add_1(ADD,761)@20 + 1
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c);
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_shift0_q);
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_add_1_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_shift2(BITSHIFT,762)@21
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_shift2_qint <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_add_1_q & "00";
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_shift2_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_15(BITSHIFT,595)@21
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_15_qint <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_15_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_shift0(BITSHIFT,763)@20
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_shift0_qint <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_shift0_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_add_1(ADD,764)@20 + 1
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d);
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_shift0_q);
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_add_1_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_shift2(BITSHIFT,765)@21
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_shift2_qint <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_add_1_q & "00";
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_shift2_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_14(BITSHIFT,594)@21
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_14_qint <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_14_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_join_16(BITJOIN,596)@21
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_join_16_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_15_q & i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_14_q;

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_shift0(BITSHIFT,766)@20
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_shift0_qint <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_shift0_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_add_1(ADD,767)@20 + 1
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e);
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_shift0_q);
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_add_1_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_shift2(BITSHIFT,768)@21
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_shift2_qint <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_add_1_q & "00";
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_shift2_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_12(BITSHIFT,592)@21
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_12_qint <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_12_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_shift0(BITSHIFT,757)@20
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_shift0_qint <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_shift0_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_add_1(ADD,758)@20 + 1
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b);
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_shift0_q);
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_add_1_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_shift2(BITSHIFT,759)@21
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_shift2_qint <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_add_1_q & "00";
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_shift2_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_join_13(BITJOIN,593)@21
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_join_13_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_align_12_q & i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_im0_shift2_q;

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_result_add_0_0(ADD,597)@21
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_join_13_q);
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_join_16_q);
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_result_add_0_0_b));
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_result_add_0_0_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_extender_x(BITJOIN,148)@21
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_extender_x_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_multconst_x_q & i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_trunc_sel_x(BITSELECT,150)@21
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_trunc_sel_x_b <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_mult_extender_x_q(63 downto 0);

    -- redist71_i_arrayidx38_5_i_i661_processfpga_processfpga1524_trunc_sel_x_b_1(DELAY,907)
    redist71_i_arrayidx38_5_i_i661_processfpga_processfpga1524_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx38_5_i_i661_processfpga_processfpga1524_trunc_sel_x_b, xout => redist71_i_arrayidx38_5_i_i661_processfpga_processfpga1524_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer94_processfpga(BLACKBOX,448)@0
    -- in in_i_dependence@22
    -- in in_valid_in@22
    -- out out_buffer_out@22
    -- out out_valid_out@22
    thei_syncbuf_localneurons_sync_buffer94_processfpga : i_syncbuf_localneurons_sync_buffer94_processfpga1522
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist48_sync_in_aunroll_x_in_i_valid_21_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer94_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_add_x(ADD,151)@22
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer94_processfpga_out_buffer_out);
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_add_x_b <= STD_LOGIC_VECTOR("0" & redist71_i_arrayidx38_5_i_i661_processfpga_processfpga1524_trunc_sel_x_b_1_q);
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_5_i_i661_processfpga_processfpga1524_add_x_a) + UNSIGNED(i_arrayidx38_5_i_i661_processfpga_processfpga1524_add_x_b));
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_add_x_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_add_x_o(64 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_trunc_sel_x(BITSELECT,142)@22
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_trunc_sel_x_b <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_add_x_q(63 downto 0);

    -- redist73_i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_trunc_sel_x_b_1(DELAY,909)
    redist73_i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_trunc_sel_x_b, xout => redist73_i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_add_x(ADD,145)@23
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist73_i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_5_i_i661_processfpga_processfpga1524_c_i64_9gr_x_q);
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_add_x_a) + UNSIGNED(i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_add_x_b));
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_add_x_q <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_1_trunc_sel_x(BITSELECT,143)@23
    i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_1_trunc_sel_x_b <= i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_0_add_x_q(63 downto 0);

    -- redist72_i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_1_trunc_sel_x_b_1(DELAY,908)
    redist72_i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_1_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_1_trunc_sel_x_b, xout => redist72_i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_1_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_normls_gep448_processfpga_processfpga1525_add_x(ADD,238)@24
    i_normls_gep448_processfpga_processfpga1525_add_x_a <= STD_LOGIC_VECTOR("0" & redist72_i_arrayidx38_5_i_i661_processfpga_processfpga1524_dupName_1_trunc_sel_x_b_1_q);
    i_normls_gep448_processfpga_processfpga1525_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_1_i13_i_processfpga_processfpga1467_c_i64_1gr_x_q);
    i_normls_gep448_processfpga_processfpga1525_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep448_processfpga_processfpga1525_add_x_a) + UNSIGNED(i_normls_gep448_processfpga_processfpga1525_add_x_b));
    i_normls_gep448_processfpga_processfpga1525_add_x_q <= i_normls_gep448_processfpga_processfpga1525_add_x_o(64 downto 0);

    -- i_normls_gep448_processfpga_processfpga1525_trunc_sel_x(BITSELECT,237)@24
    i_normls_gep448_processfpga_processfpga1525_trunc_sel_x_b <= i_normls_gep448_processfpga_processfpga1525_add_x_q(63 downto 0);

    -- i_load_normls_load449_processfpga(BLACKBOX,406)@24
    -- in in_i_stall@20000000
    -- out out_normls_load449_avm_address@20000000
    -- out out_normls_load449_avm_burstcount@20000000
    -- out out_normls_load449_avm_byteenable@20000000
    -- out out_normls_load449_avm_enable@20000000
    -- out out_normls_load449_avm_read@20000000
    -- out out_normls_load449_avm_write@20000000
    -- out out_normls_load449_avm_writedata@20000000
    -- out out_o_readdata@29
    -- out out_o_stall@28
    -- out out_o_valid@29
    thei_load_normls_load449_processfpga : i_load_normls_load449_processfpga1528
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_normls_gep448_processfpga_processfpga1525_trunc_sel_x_b,
        in_i_predicate => i_phi_decision1561_or1572_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist50_sync_in_aunroll_x_in_i_valid_23_q,
        in_normls_load449_avm_readdata => in_normls_load449_avm_readdata,
        in_normls_load449_avm_readdatavalid => in_normls_load449_avm_readdatavalid,
        in_normls_load449_avm_waitrequest => in_normls_load449_avm_waitrequest,
        in_normls_load449_avm_writeack => in_normls_load449_avm_writeack,
        out_normls_load449_avm_address => i_load_normls_load449_processfpga_out_normls_load449_avm_address,
        out_normls_load449_avm_burstcount => i_load_normls_load449_processfpga_out_normls_load449_avm_burstcount,
        out_normls_load449_avm_byteenable => i_load_normls_load449_processfpga_out_normls_load449_avm_byteenable,
        out_normls_load449_avm_enable => i_load_normls_load449_processfpga_out_normls_load449_avm_enable,
        out_normls_load449_avm_read => i_load_normls_load449_processfpga_out_normls_load449_avm_read,
        out_normls_load449_avm_write => i_load_normls_load449_processfpga_out_normls_load449_avm_write,
        out_normls_load449_avm_writedata => i_load_normls_load449_processfpga_out_normls_load449_avm_writedata,
        out_o_readdata => i_load_normls_load449_processfpga_out_o_readdata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_7_ext_sig_sync_out_x(GPOUT,31)
    out_normls_load449_avm_address <= i_load_normls_load449_processfpga_out_normls_load449_avm_address;
    out_normls_load449_avm_enable <= i_load_normls_load449_processfpga_out_normls_load449_avm_enable;
    out_normls_load449_avm_read <= i_load_normls_load449_processfpga_out_normls_load449_avm_read;
    out_normls_load449_avm_write <= i_load_normls_load449_processfpga_out_normls_load449_avm_write;
    out_normls_load449_avm_writedata <= i_load_normls_load449_processfpga_out_normls_load449_avm_writedata;
    out_normls_load449_avm_byteenable <= i_load_normls_load449_processfpga_out_normls_load449_avm_byteenable;
    out_normls_load449_avm_burstcount <= i_load_normls_load449_processfpga_out_normls_load449_avm_burstcount;

    -- redist52_sync_in_aunroll_x_in_i_valid_27(DELAY,888)
    redist52_sync_in_aunroll_x_in_i_valid_27 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist51_sync_in_aunroll_x_in_i_valid_24_q, xout => redist52_sync_in_aunroll_x_in_i_valid_27_q, clk => clock, aclr => resetn );

    -- redist53_sync_in_aunroll_x_in_i_valid_28(DELAY,889)
    redist53_sync_in_aunroll_x_in_i_valid_28 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist52_sync_in_aunroll_x_in_i_valid_27_q, xout => redist53_sync_in_aunroll_x_in_i_valid_28_q, clk => clock, aclr => resetn );

    -- redist54_sync_in_aunroll_x_in_i_valid_29(DELAY,890)
    redist54_sync_in_aunroll_x_in_i_valid_29 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist53_sync_in_aunroll_x_in_i_valid_28_q, xout => redist54_sync_in_aunroll_x_in_i_valid_29_q, clk => clock, aclr => resetn );

    -- redist30_i_cmp18_i_i628_not_processfpga_q_6(DELAY,866)
    redist30_i_cmp18_i_i628_not_processfpga_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp18_i_i628_not_processfpga_q, xout => redist30_i_cmp18_i_i628_not_processfpga_q_6_q, clk => clock, aclr => resetn );

    -- c_i16_256(CONSTANT,314)
    c_i16_256_q <= "0000000100000000";

    -- leftShiftStage0Idx1Rng8_uid693_i_normls_shl451_processfpga_processfpga1530_shift_x(BITSELECT,692)@29
    leftShiftStage0Idx1Rng8_uid693_i_normls_shl451_processfpga_processfpga1530_shift_x_in <= i_normls_zext450_processfpga_vt_join_q(7 downto 0);
    leftShiftStage0Idx1Rng8_uid693_i_normls_shl451_processfpga_processfpga1530_shift_x_b <= leftShiftStage0Idx1Rng8_uid693_i_normls_shl451_processfpga_processfpga1530_shift_x_in(7 downto 0);

    -- leftShiftStage0Idx1_uid694_i_normls_shl451_processfpga_processfpga1530_shift_x(BITJOIN,693)@29
    leftShiftStage0Idx1_uid694_i_normls_shl451_processfpga_processfpga1530_shift_x_q <= leftShiftStage0Idx1Rng8_uid693_i_normls_shl451_processfpga_processfpga1530_shift_x_b & dupName_2_c_i8_0gr_x_q;

    -- i_normls_zext450_processfpga_sel_x(BITSELECT,285)@29
    i_normls_zext450_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(i_load_normls_load449_processfpga_out_o_readdata(7 downto 0)), 16));

    -- i_normls_zext450_processfpga_vt_select_7(BITSELECT,424)@29
    i_normls_zext450_processfpga_vt_select_7_b <= i_normls_zext450_processfpga_sel_x_b(7 downto 0);

    -- i_normls_zext450_processfpga_vt_join(BITJOIN,423)@29
    i_normls_zext450_processfpga_vt_join_q <= dupName_2_c_i8_0gr_x_q & i_normls_zext450_processfpga_vt_select_7_b;

    -- leftShiftStage0_uid696_i_normls_shl451_processfpga_processfpga1530_shift_x(MUX,695)@29
    leftShiftStage0_uid696_i_normls_shl451_processfpga_processfpga1530_shift_x_s <= VCC_q;
    leftShiftStage0_uid696_i_normls_shl451_processfpga_processfpga1530_shift_x_combproc: PROCESS (leftShiftStage0_uid696_i_normls_shl451_processfpga_processfpga1530_shift_x_s, i_normls_zext450_processfpga_vt_join_q, leftShiftStage0Idx1_uid694_i_normls_shl451_processfpga_processfpga1530_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid696_i_normls_shl451_processfpga_processfpga1530_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid696_i_normls_shl451_processfpga_processfpga1530_shift_x_q <= i_normls_zext450_processfpga_vt_join_q;
            WHEN "1" => leftShiftStage0_uid696_i_normls_shl451_processfpga_processfpga1530_shift_x_q <= leftShiftStage0Idx1_uid694_i_normls_shl451_processfpga_processfpga1530_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid696_i_normls_shl451_processfpga_processfpga1530_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_normls_shl451_processfpga_vt_select_15(BITSELECT,420)@29
    i_normls_shl451_processfpga_vt_select_15_b <= leftShiftStage0_uid696_i_normls_shl451_processfpga_processfpga1530_shift_x_q(15 downto 8);

    -- i_normls_shl451_processfpga_vt_join(BITJOIN,419)@29
    i_normls_shl451_processfpga_vt_join_q <= i_normls_shl451_processfpga_vt_select_15_b & dupName_2_c_i8_0gr_x_q;

    -- i_cmp_i17_i_i666_processfpga(COMPARE,370)@29 + 1
    i_cmp_i17_i_i666_processfpga_a <= STD_LOGIC_VECTOR("00" & i_normls_shl451_processfpga_vt_join_q);
    i_cmp_i17_i_i666_processfpga_b <= STD_LOGIC_VECTOR("00" & c_i16_256_q);
    i_cmp_i17_i_i666_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp_i17_i_i666_processfpga_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp_i17_i_i666_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp_i17_i_i666_processfpga_a) - UNSIGNED(i_cmp_i17_i_i666_processfpga_b));
        END IF;
    END PROCESS;
    i_cmp_i17_i_i666_processfpga_c(0) <= i_cmp_i17_i_i666_processfpga_o(17);

    -- i_reduction_processfpga_30_processfpga(LOGICAL,432)@30
    i_reduction_processfpga_30_processfpga_q <= i_cmp_i17_i_i666_processfpga_c and redist30_i_cmp18_i_i628_not_processfpga_q_6_q;

    -- redist37_i_acl_937_processfpga_q_6(DELAY,873)
    redist37_i_acl_937_processfpga_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_937_processfpga_q, xout => redist37_i_acl_937_processfpga_q_6_q, clk => clock, aclr => resetn );

    -- i_reduction_processfpga_31_processfpga(LOGICAL,433)@30
    i_reduction_processfpga_31_processfpga_q <= redist37_i_acl_937_processfpga_q_6_q and i_reduction_processfpga_30_processfpga_q;

    -- i_acl_946_xor_processfpga(LOGICAL,338)@30
    i_acl_946_xor_processfpga_q <= i_reduction_processfpga_31_processfpga_q xor VCC_q;

    -- i_ffwd_dst_unnamed_processfpga210_processfpga(BLACKBOX,380)@30
    thei_ffwd_dst_unnamed_processfpga210_processfpga : i_ffwd_dst_unnamed_processfpga210_processfpga1540
    PORT MAP (
        in_intel_reserved_ffwd_99_0 => in_intel_reserved_ffwd_99_0,
        in_stall_in => GND_q,
        in_valid_in => redist54_sync_in_aunroll_x_in_i_valid_29_q,
        out_dest_data_out_99_0 => i_ffwd_dst_unnamed_processfpga210_processfpga_out_dest_data_out_99_0,
        clock => clock,
        resetn => resetn
    );

    -- i_phi_decision1561_or1573_processfpga(LOGICAL,429)@30
    i_phi_decision1561_or1573_processfpga_q <= i_ffwd_dst_unnamed_processfpga210_processfpga_out_dest_data_out_99_0 or i_acl_946_xor_processfpga_q;

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_shift0(BITSHIFT,736)@26
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_shift0_qint <= redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_outputreg_q & "0";
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_shift0_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_shift0_qint(10 downto 0);

    -- redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_notEnable(LOGICAL,1034)
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_nor(LOGICAL,1035)
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_nor_q <= not (redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_notEnable_q or redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q);

    -- redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_last(CONSTANT,1031)
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_last_q <= "01";

    -- redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_cmp(LOGICAL,1032)
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_cmp_q <= "1" WHEN redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_last_q = redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_q ELSE "0";

    -- redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_cmpReg(REG,1033)
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_cmpReg_q <= STD_LOGIC_VECTOR(redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_sticky_ena(REG,1036)
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_nor_q = "1") THEN
                redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_enaAnd(LOGICAL,1037)
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_enaAnd_q <= redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q and VCC_q;

    -- redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt(COUNTER,1029)
    -- low=0, high=2, step=1, init=0
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq <= '1';
            ELSE
                redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq <= '0';
            END IF;
            IF (redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq = '1') THEN
                redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_i <= redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_i + 2;
            ELSE
                redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_i <= redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_i, 2)));

    -- redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_inputreg(DELAY,1026)
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_inputreg : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c, xout => redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_inputreg_q, clk => clock, aclr => resetn );

    -- redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_wraddr(REG,1030)
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_wraddr_q <= STD_LOGIC_VECTOR(redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem(DUALMEM,1028)
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_ia <= STD_LOGIC_VECTOR(redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_inputreg_q);
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_aa <= redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_wraddr_q;
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_ab <= redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_rdcnt_q;
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_reset0 <= not (resetn);
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 10,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_reset0,
        clock1 => clock,
        address_a => redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_aa,
        data_a => redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_ab,
        q_b => redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_iq
    );
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_q <= redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_iq(9 downto 0);

    -- redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_outputreg(DELAY,1027)
    redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_outputreg : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_mem_q, xout => redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_add_1(ADD,737)@26 + 1
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_outputreg_q);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_shift0_q);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_add_1_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_shift2(BITSHIFT,738)@27
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_shift2_qint <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_add_1_q & "00";
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_shift2_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_15(BITSHIFT,559)@27
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_15_qint <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_15_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_shift0(BITSHIFT,739)@26
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_shift0_qint <= redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_outputreg_q & "0";
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_shift0_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_shift0_qint(18 downto 0);

    -- redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_notEnable(LOGICAL,1046)
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_nor(LOGICAL,1047)
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_nor_q <= not (redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_notEnable_q or redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q);

    -- redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_last(CONSTANT,1043)
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_last_q <= "01";

    -- redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_cmp(LOGICAL,1044)
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_cmp_q <= "1" WHEN redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_last_q = redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_q ELSE "0";

    -- redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_cmpReg(REG,1045)
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_cmpReg_q <= STD_LOGIC_VECTOR(redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_sticky_ena(REG,1048)
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_nor_q = "1") THEN
                redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_enaAnd(LOGICAL,1049)
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_enaAnd_q <= redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q and VCC_q;

    -- redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt(COUNTER,1041)
    -- low=0, high=2, step=1, init=0
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq <= '1';
            ELSE
                redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq <= '0';
            END IF;
            IF (redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq = '1') THEN
                redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_i <= redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_i + 2;
            ELSE
                redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_i <= redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_i, 2)));

    -- redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_inputreg(DELAY,1038)
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_inputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d, xout => redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_inputreg_q, clk => clock, aclr => resetn );

    -- redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_wraddr(REG,1042)
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_wraddr_q <= STD_LOGIC_VECTOR(redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem(DUALMEM,1040)
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_ia <= STD_LOGIC_VECTOR(redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_inputreg_q);
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_aa <= redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_wraddr_q;
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_ab <= redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_rdcnt_q;
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_reset0 <= not (resetn);
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 18,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_reset0,
        clock1 => clock,
        address_a => redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_aa,
        data_a => redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_ab,
        q_b => redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_iq
    );
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_q <= redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_iq(17 downto 0);

    -- redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_outputreg(DELAY,1039)
    redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_mem_q, xout => redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_add_1(ADD,740)@26 + 1
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_outputreg_q);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_shift0_q);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_add_1_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_shift2(BITSHIFT,741)@27
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_shift2_qint <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_add_1_q & "00";
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_shift2_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_14(BITSHIFT,558)@27
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_14_qint <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_14_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_join_16(BITJOIN,560)@27
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_join_16_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_15_q & i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_14_q;

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_shift0(BITSHIFT,742)@26
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_shift0_qint <= redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_outputreg_q & "0";
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_shift0_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_shift0_qint(18 downto 0);

    -- redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_notEnable(LOGICAL,1058)
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_nor(LOGICAL,1059)
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_nor_q <= not (redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_notEnable_q or redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q);

    -- redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_last(CONSTANT,1055)
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_last_q <= "01";

    -- redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_cmp(LOGICAL,1056)
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_cmp_q <= "1" WHEN redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_last_q = redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_q ELSE "0";

    -- redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_cmpReg(REG,1057)
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_cmpReg_q <= STD_LOGIC_VECTOR(redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_sticky_ena(REG,1060)
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_nor_q = "1") THEN
                redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_enaAnd(LOGICAL,1061)
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_enaAnd_q <= redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q and VCC_q;

    -- redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt(COUNTER,1053)
    -- low=0, high=2, step=1, init=0
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq <= '1';
            ELSE
                redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq <= '0';
            END IF;
            IF (redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq = '1') THEN
                redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_i <= redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_i + 2;
            ELSE
                redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_i <= redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_i, 2)));

    -- redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_inputreg(DELAY,1050)
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_inputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e, xout => redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_inputreg_q, clk => clock, aclr => resetn );

    -- redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_wraddr(REG,1054)
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_wraddr_q <= STD_LOGIC_VECTOR(redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem(DUALMEM,1052)
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_ia <= STD_LOGIC_VECTOR(redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_inputreg_q);
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_aa <= redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_wraddr_q;
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_ab <= redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_rdcnt_q;
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_reset0 <= not (resetn);
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 18,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_reset0,
        clock1 => clock,
        address_a => redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_aa,
        data_a => redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_ab,
        q_b => redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_iq
    );
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_q <= redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_iq(17 downto 0);

    -- redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_outputreg(DELAY,1051)
    redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_mem_q, xout => redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_add_1(ADD,743)@26 + 1
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_outputreg_q);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_shift0_q);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_add_1_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_shift2(BITSHIFT,744)@27
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_shift2_qint <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_add_1_q & "00";
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_shift2_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_12(BITSHIFT,556)@27
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_12_qint <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_12_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_shift0(BITSHIFT,733)@26
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_shift0_qint <= redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_outputreg_q & "0";
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_shift0_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_shift0_qint(18 downto 0);

    -- redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_notEnable(LOGICAL,1022)
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_nor(LOGICAL,1023)
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_nor_q <= not (redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_notEnable_q or redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q);

    -- redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_last(CONSTANT,1019)
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_last_q <= "01";

    -- redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_cmp(LOGICAL,1020)
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_cmp_q <= "1" WHEN redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_last_q = redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_q ELSE "0";

    -- redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_cmpReg(REG,1021)
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_cmpReg_q <= STD_LOGIC_VECTOR(redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_sticky_ena(REG,1024)
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_nor_q = "1") THEN
                redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_enaAnd(LOGICAL,1025)
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_enaAnd_q <= redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q and VCC_q;

    -- redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt(COUNTER,1017)
    -- low=0, high=2, step=1, init=0
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq <= '1';
            ELSE
                redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq <= '0';
            END IF;
            IF (redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq = '1') THEN
                redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_i <= redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_i + 2;
            ELSE
                redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_i <= redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_i, 2)));

    -- redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_inputreg(DELAY,1014)
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_inputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b, xout => redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_inputreg_q, clk => clock, aclr => resetn );

    -- redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_wraddr(REG,1018)
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_wraddr_q <= STD_LOGIC_VECTOR(redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem(DUALMEM,1016)
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_ia <= STD_LOGIC_VECTOR(redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_inputreg_q);
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_aa <= redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_wraddr_q;
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_ab <= redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_rdcnt_q;
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_reset0 <= not (resetn);
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 18,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_reset0,
        clock1 => clock,
        address_a => redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_aa,
        data_a => redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_ab,
        q_b => redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_iq
    );
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_q <= redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_iq(17 downto 0);

    -- redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_outputreg(DELAY,1015)
    redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_mem_q, xout => redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_add_1(ADD,734)@26 + 1
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_outputreg_q);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_shift0_q);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_add_1_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_shift2(BITSHIFT,735)@27
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_shift2_qint <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_add_1_q & "00";
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_shift2_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_join_13(BITJOIN,557)@27
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_join_13_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_align_12_q & i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_im0_shift2_q;

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_result_add_0_0(ADD,561)@27
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_join_13_q);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_join_16_q);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_result_add_0_0_b));
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_result_add_0_0_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_extender_x(BITJOIN,120)@27
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_extender_x_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_multconst_x_q & i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_trunc_sel_x(BITSELECT,122)@27
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_trunc_sel_x_b <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_extender_x_q(63 downto 0);

    -- redist77_i_arrayidx38_2_i_i655_processfpga_processfpga1539_trunc_sel_x_b_2(DELAY,913)
    redist77_i_arrayidx38_2_i_i655_processfpga_processfpga1539_trunc_sel_x_b_2 : dspba_delay
    GENERIC MAP ( width => 64, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx38_2_i_i655_processfpga_processfpga1539_trunc_sel_x_b, xout => redist77_i_arrayidx38_2_i_i655_processfpga_processfpga1539_trunc_sel_x_b_2_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer92_processfpga(BLACKBOX,446)@0
    -- in in_i_dependence@29
    -- in in_valid_in@29
    -- out out_buffer_out@29
    -- out out_valid_out@29
    thei_syncbuf_localneurons_sync_buffer92_processfpga : i_syncbuf_localneurons_sync_buffer92_processfpga1537
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist53_sync_in_aunroll_x_in_i_valid_28_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer92_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_add_x(ADD,123)@29
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer92_processfpga_out_buffer_out);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_add_x_b <= STD_LOGIC_VECTOR("0" & redist77_i_arrayidx38_2_i_i655_processfpga_processfpga1539_trunc_sel_x_b_2_q);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_2_i_i655_processfpga_processfpga1539_add_x_a) + UNSIGNED(i_arrayidx38_2_i_i655_processfpga_processfpga1539_add_x_b));
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_add_x_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_add_x_o(64 downto 0);

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_trunc_sel_x(BITSELECT,114)@29
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_trunc_sel_x_b <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_add_x_q(63 downto 0);

    -- redist78_i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_trunc_sel_x_b_1(DELAY,914)
    redist78_i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_trunc_sel_x_b, xout => redist78_i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_add_x(ADD,117)@30
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist78_i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_2_i35_i_processfpga_processfpga1504_c_i64_4gr_x_q);
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_add_x_a) + UNSIGNED(i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_add_x_b));
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_add_x_q <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_1_trunc_sel_x(BITSELECT,115)@30
    i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_1_trunc_sel_x_b <= i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_0_add_x_q(63 downto 0);

    -- i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x(BLACKBOX,232)@30
    -- in in_i_stall@20000000
    -- out out_o_readdata_0@35
    -- out out_o_readdata_1@35
    -- out out_o_readdata_2@35
    -- out out_o_readdata_3@35
    -- out out_memcoalesce_localNeurons_load_051_avm_address@20000000
    -- out out_memcoalesce_localNeurons_load_051_avm_burstcount@20000000
    -- out out_memcoalesce_localNeurons_load_051_avm_byteenable@20000000
    -- out out_memcoalesce_localNeurons_load_051_avm_enable@20000000
    -- out out_memcoalesce_localNeurons_load_051_avm_read@20000000
    -- out out_memcoalesce_localNeurons_load_051_avm_write@20000000
    -- out out_memcoalesce_localNeurons_load_051_avm_writedata@20000000
    -- out out_o_stall@34
    -- out out_o_valid@35
    thei_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x : i_load_memcoalesce_localneurons_load_051_processfpga1542
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx38_2_i_i655_processfpga_processfpga1539_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_phi_decision1561_or1573_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist54_sync_in_aunroll_x_in_i_valid_29_q,
        in_memcoalesce_localNeurons_load_051_avm_readdata => in_memcoalesce_localNeurons_load_051_avm_readdata,
        in_memcoalesce_localNeurons_load_051_avm_readdatavalid => in_memcoalesce_localNeurons_load_051_avm_readdatavalid,
        in_memcoalesce_localNeurons_load_051_avm_waitrequest => in_memcoalesce_localNeurons_load_051_avm_waitrequest,
        in_memcoalesce_localNeurons_load_051_avm_writeack => in_memcoalesce_localNeurons_load_051_avm_writeack,
        out_o_readdata_0 => i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_o_readdata_0,
        out_o_readdata_1 => i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_o_readdata_1,
        out_o_readdata_2 => i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_o_readdata_2,
        out_o_readdata_3 => i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_o_readdata_3,
        out_memcoalesce_localNeurons_load_051_avm_address => i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_address,
        out_memcoalesce_localNeurons_load_051_avm_burstcount => i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_burstcount,
        out_memcoalesce_localNeurons_load_051_avm_byteenable => i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_byteenable,
        out_memcoalesce_localNeurons_load_051_avm_enable => i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_enable,
        out_memcoalesce_localNeurons_load_051_avm_read => i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_read,
        out_memcoalesce_localNeurons_load_051_avm_write => i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_write,
        out_memcoalesce_localNeurons_load_051_avm_writedata => i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_8_ext_sig_sync_out_x(GPOUT,34)
    out_memcoalesce_localNeurons_load_051_avm_address <= i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_address;
    out_memcoalesce_localNeurons_load_051_avm_enable <= i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_enable;
    out_memcoalesce_localNeurons_load_051_avm_read <= i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_read;
    out_memcoalesce_localNeurons_load_051_avm_write <= i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_write;
    out_memcoalesce_localNeurons_load_051_avm_writedata <= i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_writedata;
    out_memcoalesce_localNeurons_load_051_avm_byteenable <= i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_byteenable;
    out_memcoalesce_localNeurons_load_051_avm_burstcount <= i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_051_avm_burstcount;

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_shift0(BITSHIFT,748)@26
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_shift0_qint <= redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_outputreg_q & "0";
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_shift0_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_add_1(ADD,749)@26 + 1
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & redist9_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_c_6_outputreg_q);
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_shift0_q);
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_add_1_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_shift2(BITSHIFT,750)@27
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_shift2_qint <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_add_1_q & "00";
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_shift2_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_15(BITSHIFT,577)@27
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_15_qint <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_15_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_shift0(BITSHIFT,751)@26
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_shift0_qint <= redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_outputreg_q & "0";
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_shift0_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_add_1(ADD,752)@26 + 1
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & redist10_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_d_6_outputreg_q);
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_shift0_q);
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_add_1_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_shift2(BITSHIFT,753)@27
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_shift2_qint <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_add_1_q & "00";
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_shift2_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_14(BITSHIFT,576)@27
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_14_qint <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_14_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_join_16(BITJOIN,578)@27
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_join_16_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_15_q & i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_14_q;

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_shift0(BITSHIFT,754)@26
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_shift0_qint <= redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_outputreg_q & "0";
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_shift0_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_add_1(ADD,755)@26 + 1
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & redist11_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_e_6_outputreg_q);
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_shift0_q);
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_add_1_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_shift2(BITSHIFT,756)@27
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_shift2_qint <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_add_1_q & "00";
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_shift2_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_12(BITSHIFT,574)@27
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_12_qint <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_12_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_shift0(BITSHIFT,745)@26
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_shift0_qint <= redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_outputreg_q & "0";
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_shift0_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_add_1(ADD,746)@26 + 1
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & redist8_i_arrayidx38_2_i_i655_processfpga_processfpga1539_mult_x_bs1_merged_bit_select_b_6_outputreg_q);
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_shift0_q);
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_add_1_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_shift2(BITSHIFT,747)@27
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_shift2_qint <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_add_1_q & "00";
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_shift2_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_join_13(BITJOIN,575)@27
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_join_13_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_align_12_q & i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_im0_shift2_q;

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_result_add_0_0(ADD,579)@27
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_join_13_q);
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_join_16_q);
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_result_add_0_0_b));
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_result_add_0_0_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_extender_x(BITJOIN,134)@27
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_extender_x_q <= i_arrayidx16_2_i35_i_processfpga_processfpga1504_mult_multconst_x_q & i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_trunc_sel_x(BITSELECT,136)@27
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_trunc_sel_x_b <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_mult_extender_x_q(63 downto 0);

    -- redist74_i_arrayidx38_4_i_i659_processfpga_processfpga1536_trunc_sel_x_b_1(DELAY,910)
    redist74_i_arrayidx38_4_i_i659_processfpga_processfpga1536_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx38_4_i_i659_processfpga_processfpga1536_trunc_sel_x_b, xout => redist74_i_arrayidx38_4_i_i659_processfpga_processfpga1536_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer93_processfpga(BLACKBOX,447)@0
    -- in in_i_dependence@28
    -- in in_valid_in@28
    -- out out_buffer_out@28
    -- out out_valid_out@28
    thei_syncbuf_localneurons_sync_buffer93_processfpga : i_syncbuf_localneurons_sync_buffer93_processfpga1534
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist52_sync_in_aunroll_x_in_i_valid_27_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer93_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_add_x(ADD,137)@28
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer93_processfpga_out_buffer_out);
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_add_x_b <= STD_LOGIC_VECTOR("0" & redist74_i_arrayidx38_4_i_i659_processfpga_processfpga1536_trunc_sel_x_b_1_q);
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_4_i_i659_processfpga_processfpga1536_add_x_a) + UNSIGNED(i_arrayidx38_4_i_i659_processfpga_processfpga1536_add_x_b));
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_add_x_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_add_x_o(64 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_trunc_sel_x(BITSELECT,128)@28
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_trunc_sel_x_b <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_add_x_q(63 downto 0);

    -- redist76_i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_trunc_sel_x_b_1(DELAY,912)
    redist76_i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_trunc_sel_x_b, xout => redist76_i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_add_x(ADD,131)@29
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist76_i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_4_i37_i_processfpga_processfpga1513_c_i64_7gr_x_q);
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_add_x_a) + UNSIGNED(i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_add_x_b));
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_add_x_q <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_1_trunc_sel_x(BITSELECT,129)@29
    i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_1_trunc_sel_x_b <= i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_0_add_x_q(63 downto 0);

    -- redist75_i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_1_trunc_sel_x_b_1(DELAY,911)
    redist75_i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_1_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_1_trunc_sel_x_b, xout => redist75_i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_1_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_normls_gep459_processfpga_processfpga1544_add_x(ADD,242)@30
    i_normls_gep459_processfpga_processfpga1544_add_x_a <= STD_LOGIC_VECTOR("0" & redist75_i_arrayidx38_4_i_i659_processfpga_processfpga1536_dupName_1_trunc_sel_x_b_1_q);
    i_normls_gep459_processfpga_processfpga1544_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_1_i13_i_processfpga_processfpga1467_c_i64_1gr_x_q);
    i_normls_gep459_processfpga_processfpga1544_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep459_processfpga_processfpga1544_add_x_a) + UNSIGNED(i_normls_gep459_processfpga_processfpga1544_add_x_b));
    i_normls_gep459_processfpga_processfpga1544_add_x_q <= i_normls_gep459_processfpga_processfpga1544_add_x_o(64 downto 0);

    -- i_normls_gep459_processfpga_processfpga1544_trunc_sel_x(BITSELECT,241)@30
    i_normls_gep459_processfpga_processfpga1544_trunc_sel_x_b <= i_normls_gep459_processfpga_processfpga1544_add_x_q(63 downto 0);

    -- i_load_normls_load460_processfpga(BLACKBOX,407)@30
    -- in in_i_stall@20000000
    -- out out_normls_load460_avm_address@20000000
    -- out out_normls_load460_avm_burstcount@20000000
    -- out out_normls_load460_avm_byteenable@20000000
    -- out out_normls_load460_avm_enable@20000000
    -- out out_normls_load460_avm_read@20000000
    -- out out_normls_load460_avm_write@20000000
    -- out out_normls_load460_avm_writedata@20000000
    -- out out_o_readdata@35
    -- out out_o_stall@34
    -- out out_o_valid@35
    thei_load_normls_load460_processfpga : i_load_normls_load460_processfpga1545
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_normls_gep459_processfpga_processfpga1544_trunc_sel_x_b,
        in_i_predicate => i_phi_decision1561_or1573_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist54_sync_in_aunroll_x_in_i_valid_29_q,
        in_normls_load460_avm_readdata => in_normls_load460_avm_readdata,
        in_normls_load460_avm_readdatavalid => in_normls_load460_avm_readdatavalid,
        in_normls_load460_avm_waitrequest => in_normls_load460_avm_waitrequest,
        in_normls_load460_avm_writeack => in_normls_load460_avm_writeack,
        out_normls_load460_avm_address => i_load_normls_load460_processfpga_out_normls_load460_avm_address,
        out_normls_load460_avm_burstcount => i_load_normls_load460_processfpga_out_normls_load460_avm_burstcount,
        out_normls_load460_avm_byteenable => i_load_normls_load460_processfpga_out_normls_load460_avm_byteenable,
        out_normls_load460_avm_enable => i_load_normls_load460_processfpga_out_normls_load460_avm_enable,
        out_normls_load460_avm_read => i_load_normls_load460_processfpga_out_normls_load460_avm_read,
        out_normls_load460_avm_write => i_load_normls_load460_processfpga_out_normls_load460_avm_write,
        out_normls_load460_avm_writedata => i_load_normls_load460_processfpga_out_normls_load460_avm_writedata,
        out_o_readdata => i_load_normls_load460_processfpga_out_o_readdata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_9_ext_sig_sync_out_x(GPOUT,37)
    out_normls_load460_avm_address <= i_load_normls_load460_processfpga_out_normls_load460_avm_address;
    out_normls_load460_avm_enable <= i_load_normls_load460_processfpga_out_normls_load460_avm_enable;
    out_normls_load460_avm_read <= i_load_normls_load460_processfpga_out_normls_load460_avm_read;
    out_normls_load460_avm_write <= i_load_normls_load460_processfpga_out_normls_load460_avm_write;
    out_normls_load460_avm_writedata <= i_load_normls_load460_processfpga_out_normls_load460_avm_writedata;
    out_normls_load460_avm_byteenable <= i_load_normls_load460_processfpga_out_normls_load460_avm_byteenable;
    out_normls_load460_avm_burstcount <= i_load_normls_load460_processfpga_out_normls_load460_avm_burstcount;

    -- redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_notEnable(LOGICAL,1093)
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_nor(LOGICAL,1094)
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_nor_q <= not (redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_notEnable_q or redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_sticky_ena_q);

    -- redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_last(CONSTANT,1090)
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_last_q <= "011010";

    -- redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_cmp(LOGICAL,1091)
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_cmp_b <= STD_LOGIC_VECTOR("0" & redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_q);
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_cmp_q <= "1" WHEN redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_last_q = redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_cmp_b ELSE "0";

    -- redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_cmpReg(REG,1092)
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_cmpReg_q <= STD_LOGIC_VECTOR(redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_cmp_q);
        END IF;
    END PROCESS;

    -- redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_sticky_ena(REG,1095)
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_nor_q = "1") THEN
                redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_sticky_ena_q <= STD_LOGIC_VECTOR(redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_enaAnd(LOGICAL,1096)
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_enaAnd_q <= redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_sticky_ena_q and VCC_q;

    -- redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt(COUNTER,1088)
    -- low=0, high=27, step=1, init=0
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_i = TO_UNSIGNED(26, 5)) THEN
                redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_eq <= '1';
            ELSE
                redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_eq <= '0';
            END IF;
            IF (redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_eq = '1') THEN
                redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_i <= redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_i + 5;
            ELSE
                redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_i <= redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_i, 5)));

    -- redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_wraddr(REG,1089)
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_wraddr_q <= "11011";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_wraddr_q <= STD_LOGIC_VECTOR(redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem(DUALMEM,1087)
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_ia <= STD_LOGIC_VECTOR(redist32_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_1_q);
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_aa <= redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_wraddr_q;
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_ab <= redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_rdcnt_q;
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_reset0 <= not (resetn);
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 5,
        numwords_a => 28,
        width_b => 16,
        widthad_b => 5,
        numwords_b => 28,
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
        clocken1 => redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_reset0,
        clock1 => clock,
        address_a => redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_aa,
        data_a => redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_ab,
        q_b => redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_iq
    );
    redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_q <= redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_iq(15 downto 0);

    -- redist55_sync_in_aunroll_x_in_i_valid_30(DELAY,891)
    redist55_sync_in_aunroll_x_in_i_valid_30 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist54_sync_in_aunroll_x_in_i_valid_29_q, xout => redist55_sync_in_aunroll_x_in_i_valid_30_q, clk => clock, aclr => resetn );

    -- i_unnamed_processfpga1520_vt_const_7(CONSTANT,457)
    i_unnamed_processfpga1520_vt_const_7_q <= "0000000";

    -- c_i8_1gr(CONSTANT,322)
    c_i8_1gr_q <= "00000001";

    -- i_unnamed_processfpga1520(LOGICAL,456)@29
    i_unnamed_processfpga1520_q <= i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_0 and c_i8_1gr_q;

    -- i_unnamed_processfpga1520_vt_select_0(BITSELECT,459)@29
    i_unnamed_processfpga1520_vt_select_0_b <= i_unnamed_processfpga1520_q(0 downto 0);

    -- i_unnamed_processfpga1520_vt_join(BITJOIN,458)@29
    i_unnamed_processfpga1520_vt_join_q <= i_unnamed_processfpga1520_vt_const_7_q & i_unnamed_processfpga1520_vt_select_0_b;

    -- i_tobool21_i_i629_not_processfpga(LOGICAL,452)@29
    i_tobool21_i_i629_not_processfpga_q <= "1" WHEN i_unnamed_processfpga1520_vt_join_q /= dupName_2_c_i8_0gr_x_q ELSE "0";

    -- redist14_i_tobool21_i_i629_not_processfpga_q_1(DELAY,850)
    redist14_i_tobool21_i_i629_not_processfpga_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_tobool21_i_i629_not_processfpga_q, xout => redist14_i_tobool21_i_i629_not_processfpga_q_1_q, clk => clock, aclr => resetn );

    -- i_tobool53_i_i677_processfpga(LOGICAL,455)@29 + 1
    i_tobool53_i_i677_processfpga_qi <= "1" WHEN i_unnamed_processfpga1520_vt_join_q = dupName_2_c_i8_0gr_x_q ELSE "0";
    i_tobool53_i_i677_processfpga_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_tobool53_i_i677_processfpga_qi, xout => i_tobool53_i_i677_processfpga_q, clk => clock, aclr => resetn );

    -- i_tobool53_i_i677_not_processfpga(LOGICAL,454)@30
    i_tobool53_i_i677_not_processfpga_q <= i_tobool53_i_i677_processfpga_q xor VCC_q;

    -- redist28_i_cmp18_i_i628_processfpga_q_9(DELAY,864)
    redist28_i_cmp18_i_i628_processfpga_q_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist27_i_cmp18_i_i628_processfpga_q_4_q, xout => redist28_i_cmp18_i_i628_processfpga_q_9_q, clk => clock, aclr => resetn );

    -- redist29_i_cmp18_i_i628_processfpga_q_10(DELAY,865)
    redist29_i_cmp18_i_i628_processfpga_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist28_i_cmp18_i_i628_processfpga_q_9_q, xout => redist29_i_cmp18_i_i628_processfpga_q_10_q, clk => clock, aclr => resetn );

    -- i_acl_951_processfpga(MUX,339)@30 + 1
    i_acl_951_processfpga_s <= redist29_i_cmp18_i_i628_processfpga_q_10_q;
    i_acl_951_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_acl_951_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_acl_951_processfpga_s) IS
                WHEN "0" => i_acl_951_processfpga_q <= i_tobool53_i_i677_not_processfpga_q;
                WHEN "1" => i_acl_951_processfpga_q <= redist14_i_tobool21_i_i629_not_processfpga_q_1_q;
                WHEN OTHERS => i_acl_951_processfpga_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist20_i_lnot_i_i617_processfpga_q_8(DELAY,856)
    redist20_i_lnot_i_i617_processfpga_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_lnot_i_i617_processfpga_q, xout => redist20_i_lnot_i_i617_processfpga_q_8_q, clk => clock, aclr => resetn );

    -- i_acl_952_processfpga(LOGICAL,340)@31
    i_acl_952_processfpga_q <= redist20_i_lnot_i_i617_processfpga_q_8_q and i_acl_951_processfpga_q;

    -- redist24_i_cmp7_i23_i_processfpga_q_21(DELAY,860)
    redist24_i_cmp7_i23_i_processfpga_q_21 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist23_i_cmp7_i23_i_processfpga_q_14_q, xout => redist24_i_cmp7_i23_i_processfpga_q_21_q, clk => clock, aclr => resetn );

    -- i_acl_953_processfpga(LOGICAL,341)@31
    i_acl_953_processfpga_q <= redist24_i_cmp7_i23_i_processfpga_q_21_q and i_acl_952_processfpga_q;

    -- i_acl_953_xor_processfpga(LOGICAL,342)@31
    i_acl_953_xor_processfpga_q <= i_acl_953_processfpga_q xor VCC_q;

    -- i_ffwd_dst_unnamed_processfpga211_processfpga(BLACKBOX,381)@31
    thei_ffwd_dst_unnamed_processfpga211_processfpga : i_ffwd_dst_unnamed_processfpga211_processfpga1552
    PORT MAP (
        in_intel_reserved_ffwd_99_0 => in_intel_reserved_ffwd_99_0,
        in_stall_in => GND_q,
        in_valid_in => redist55_sync_in_aunroll_x_in_i_valid_30_q,
        out_dest_data_out_99_0 => i_ffwd_dst_unnamed_processfpga211_processfpga_out_dest_data_out_99_0,
        clock => clock,
        resetn => resetn
    );

    -- i_phi_decision1561_or1578_processfpga(LOGICAL,430)@31
    i_phi_decision1561_or1578_processfpga_q <= i_ffwd_dst_unnamed_processfpga211_processfpga_out_dest_data_out_99_0 or i_acl_953_xor_processfpga_q;

    -- i_arrayidx27_i_i634_processfpga_processfpga1533_mult_multconst_x(CONSTANT,108)
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_multconst_x_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- dupName_0_c_i32_1gr_x(CONSTANT,7)
    dupName_0_c_i32_1gr_x_q <= "00000000000000000000000000000001";

    -- redist12_i_unnamed_processfpga1565_q_29(DELAY,848)
    redist12_i_unnamed_processfpga1565_q_29 : dspba_delay
    GENERIC MAP ( width => 1, depth => 29, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga1565_q, xout => redist12_i_unnamed_processfpga1565_q_29_q, clk => clock, aclr => resetn );

    -- redist35_i_acl_943_processfpga_q_6(DELAY,871)
    redist35_i_acl_943_processfpga_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_943_processfpga_q, xout => redist35_i_acl_943_processfpga_q_6_q, clk => clock, aclr => resetn );

    -- i_selcond_processfpga_19_processfpga(LOGICAL,439)@30
    i_selcond_processfpga_19_processfpga_q <= redist35_i_acl_943_processfpga_q_6_q and i_tobool53_i_i677_not_processfpga_q;

    -- redist34_i_acl_943_xor_processfpga_q_6(DELAY,870)
    redist34_i_acl_943_xor_processfpga_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_943_xor_processfpga_q, xout => redist34_i_acl_943_xor_processfpga_q_6_q, clk => clock, aclr => resetn );

    -- i_reduction_processfpga_33_processfpga(LOGICAL,434)@29 + 1
    i_reduction_processfpga_33_processfpga_qi <= redist28_i_cmp18_i_i628_processfpga_q_9_q and i_tobool21_i_i629_not_processfpga_q;
    i_reduction_processfpga_33_processfpga_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_processfpga_33_processfpga_qi, xout => i_reduction_processfpga_33_processfpga_q, clk => clock, aclr => resetn );

    -- i_reduction_processfpga_34_processfpga(LOGICAL,435)@30
    i_reduction_processfpga_34_processfpga_q <= redist37_i_acl_937_processfpga_q_6_q and i_reduction_processfpga_33_processfpga_q;

    -- i_selcond_processfpga_18_processfpga(LOGICAL,438)@30
    i_selcond_processfpga_18_processfpga_q <= i_reduction_processfpga_34_processfpga_q and redist34_i_acl_943_xor_processfpga_q_6_q;

    -- i_selcond_processfpga_20_processfpga(LOGICAL,440)@30
    i_selcond_processfpga_20_processfpga_q <= i_selcond_processfpga_18_processfpga_q or i_selcond_processfpga_19_processfpga_q;

    -- i_reduction_processfpga_28_processfpga(MUX,431)@30
    i_reduction_processfpga_28_processfpga_s <= i_selcond_processfpga_20_processfpga_q;
    i_reduction_processfpga_28_processfpga_combproc: PROCESS (i_reduction_processfpga_28_processfpga_s, i_acl_pop_i32_usedconnscounter_0_i_i6021312_pop150_processfpga_out_data_out, bgTrunc_i_inc_i47_i_processfpga_sel_x_b)
    BEGIN
        CASE (i_reduction_processfpga_28_processfpga_s) IS
            WHEN "0" => i_reduction_processfpga_28_processfpga_q <= i_acl_pop_i32_usedconnscounter_0_i_i6021312_pop150_processfpga_out_data_out;
            WHEN "1" => i_reduction_processfpga_28_processfpga_q <= bgTrunc_i_inc_i47_i_processfpga_sel_x_b;
            WHEN OTHERS => i_reduction_processfpga_28_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i32_usedconnscounter_0_i_i6021312_push150_processfpga(BLACKBOX,354)@30
    -- out out_feedback_out_150@20000000
    -- out out_feedback_valid_out_150@20000000
    thei_acl_push_i32_usedconnscounter_0_i_i6021312_push150_processfpga : i_acl_push_i32_usedconnscounter_0_i_i6021312_push150_processfpga1566
    PORT MAP (
        in_data_in => i_reduction_processfpga_28_processfpga_q,
        in_feedback_stall_in_150 => i_acl_pop_i32_usedconnscounter_0_i_i6021312_pop150_processfpga_out_feedback_stall_out_150,
        in_stall_in => GND_q,
        in_unnamed_processFPGA449 => redist12_i_unnamed_processfpga1565_q_29_q,
        in_valid_in => redist54_sync_in_aunroll_x_in_i_valid_29_q,
        out_feedback_out_150 => i_acl_push_i32_usedconnscounter_0_i_i6021312_push150_processfpga_out_feedback_out_150,
        out_feedback_valid_out_150 => i_acl_push_i32_usedconnscounter_0_i_i6021312_push150_processfpga_out_feedback_valid_out_150,
        clock => clock,
        resetn => resetn
    );

    -- redist40_sync_in_aunroll_x_in_c0_eni2977_1_29(DELAY,876)
    redist40_sync_in_aunroll_x_in_c0_eni2977_1_29 : dspba_delay
    GENERIC MAP ( width => 1, depth => 29, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni2977_1, xout => redist40_sync_in_aunroll_x_in_c0_eni2977_1_29_q, clk => clock, aclr => resetn );

    -- c_i32_1gr(CONSTANT,321)
    c_i32_1gr_q <= "11111111111111111111111111111111";

    -- i_acl_pop_i32_usedconnscounter_0_i_i6021312_pop150_processfpga(BLACKBOX,348)@30
    -- out out_feedback_stall_out_150@20000000
    thei_acl_pop_i32_usedconnscounter_0_i_i6021312_pop150_processfpga : i_acl_pop_i32_usedconnscounter_0_i_i6021312_pop150_processfpga1531
    PORT MAP (
        in_data_in => c_i32_1gr_q,
        in_dir => redist40_sync_in_aunroll_x_in_c0_eni2977_1_29_q,
        in_feedback_in_150 => i_acl_push_i32_usedconnscounter_0_i_i6021312_push150_processfpga_out_feedback_out_150,
        in_feedback_valid_in_150 => i_acl_push_i32_usedconnscounter_0_i_i6021312_push150_processfpga_out_feedback_valid_out_150,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist54_sync_in_aunroll_x_in_i_valid_29_q,
        out_data_out => i_acl_pop_i32_usedconnscounter_0_i_i6021312_pop150_processfpga_out_data_out,
        out_feedback_stall_out_150 => i_acl_pop_i32_usedconnscounter_0_i_i6021312_pop150_processfpga_out_feedback_stall_out_150,
        clock => clock,
        resetn => resetn
    );

    -- i_inc_i47_i_processfpga(ADD,402)@30
    i_inc_i47_i_processfpga_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_usedconnscounter_0_i_i6021312_pop150_processfpga_out_data_out);
    i_inc_i47_i_processfpga_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i32_1gr_x_q);
    i_inc_i47_i_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc_i47_i_processfpga_a) + UNSIGNED(i_inc_i47_i_processfpga_b));
    i_inc_i47_i_processfpga_q <= i_inc_i47_i_processfpga_o(32 downto 0);

    -- bgTrunc_i_inc_i47_i_processfpga_sel_x(BITSELECT,4)@30
    bgTrunc_i_inc_i47_i_processfpga_sel_x_b <= i_inc_i47_i_processfpga_q(31 downto 0);

    -- redist84_bgTrunc_i_inc_i47_i_processfpga_sel_x_b_1(DELAY,920)
    redist84_bgTrunc_i_inc_i47_i_processfpga_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_inc_i47_i_processfpga_sel_x_b, xout => redist84_bgTrunc_i_inc_i47_i_processfpga_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_idxprom26_i_i633_processfpga_sel_x(BITSELECT,226)@31
    i_idxprom26_i_i633_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist84_bgTrunc_i_inc_i47_i_processfpga_sel_x_b_1_q(31 downto 0)), 64)));

    -- i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_bs1_merged_bit_select(BITSELECT,829)@31
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_bs1_merged_bit_select_b <= i_idxprom26_i_i633_processfpga_sel_x_b(17 downto 0);
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_bs1_merged_bit_select_c <= i_idxprom26_i_i633_processfpga_sel_x_b(63 downto 54);
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_bs1_merged_bit_select_d <= i_idxprom26_i_i633_processfpga_sel_x_b(35 downto 18);
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_bs1_merged_bit_select_e <= i_idxprom26_i_i633_processfpga_sel_x_b(53 downto 36);

    -- i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im3_shift0(BITSHIFT,730)@31
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im3_shift0_qint <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im3_shift0_q <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_15(BITSHIFT,541)@31
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im3_shift0_q) & "0000000000000000";
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_15_q <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im6_shift0(BITSHIFT,731)@31
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im6_shift0_qint <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im6_shift0_q <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_14(BITSHIFT,540)@31
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_14_q <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_14_qint(37 downto 0);

    -- i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_join_16(BITJOIN,542)@31
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_join_16_q <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_15_q & i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_14_q;

    -- i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im9_shift0(BITSHIFT,732)@31
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im9_shift0_qint <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im9_shift0_q <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_12(BITSHIFT,538)@31
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im9_shift0_q) & "0000000000000000";
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_12_q <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im0_shift0(BITSHIFT,729)@31
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im0_shift0_qint <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im0_shift0_q <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_join_13(BITJOIN,539)@31
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_join_13_q <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_im0_shift0_q);

    -- i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_result_add_0_0(ADD,543)@31
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_join_13_q);
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_join_16_q);
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_result_add_0_0_b));
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_result_add_0_0_q <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_result_add_0_0_o(66 downto 0);

    -- i_arrayidx27_i_i634_processfpga_processfpga1533_mult_extender_x(BITJOIN,107)@31
    i_arrayidx27_i_i634_processfpga_processfpga1533_mult_extender_x_q <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_multconst_x_q & i_arrayidx27_i_i634_processfpga_processfpga1533_mult_x_result_add_0_0_q(65 downto 0);

    -- i_arrayidx27_i_i634_processfpga_processfpga1533_trunc_sel_x(BITSELECT,109)@31
    i_arrayidx27_i_i634_processfpga_processfpga1533_trunc_sel_x_b <= i_arrayidx27_i_i634_processfpga_processfpga1533_mult_extender_x_q(63 downto 0);

    -- i_arrayidx27_i_i634_processfpga_processfpga1533_dupName_0_trunc_sel_x(BITSELECT,104)@31
    i_arrayidx27_i_i634_processfpga_processfpga1533_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_arrayidx27_i_i634_processfpga_processfpga1533_trunc_sel_x_b);
    i_arrayidx27_i_i634_processfpga_processfpga1533_dupName_0_trunc_sel_x_b <= i_arrayidx27_i_i634_processfpga_processfpga1533_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_arrayidx27_i_i634_processfpga_vt_select_63(BITSELECT,365)@31
    i_arrayidx27_i_i634_processfpga_vt_select_63_b <= i_arrayidx27_i_i634_processfpga_processfpga1533_dupName_0_trunc_sel_x_b(63 downto 1);

    -- i_arrayidx27_i_i634_processfpga_vt_join(BITJOIN,364)@31
    i_arrayidx27_i_i634_processfpga_vt_join_q <= i_arrayidx27_i_i634_processfpga_vt_select_63_b & GND_q;

    -- i_store_memdep_24_processfpga(BLACKBOX,441)@31
    -- out out_memdep_24_avm_address@20000000
    -- out out_memdep_24_avm_burstcount@20000000
    -- out out_memdep_24_avm_byteenable@20000000
    -- out out_memdep_24_avm_enable@20000000
    -- out out_memdep_24_avm_read@20000000
    -- out out_memdep_24_avm_write@20000000
    -- out out_memdep_24_avm_writedata@20000000
    -- out out_o_stall@32
    -- out out_o_valid@32
    -- out out_o_writeack@32
    thei_store_memdep_24_processfpga : i_store_memdep_24_processfpga1554
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx27_i_i634_processfpga_vt_join_q,
        in_i_predicate => i_phi_decision1561_or1578_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist55_sync_in_aunroll_x_in_i_valid_30_q,
        in_i_writedata => redist33_i_acl_pop_i16_i_0_i5_i1315_pop148_processfpga_out_data_out_30_mem_q,
        in_memdep_24_avm_readdata => in_memdep_24_avm_readdata,
        in_memdep_24_avm_readdatavalid => in_memdep_24_avm_readdatavalid,
        in_memdep_24_avm_waitrequest => in_memdep_24_avm_waitrequest,
        in_memdep_24_avm_writeack => in_memdep_24_avm_writeack,
        out_memdep_24_avm_address => i_store_memdep_24_processfpga_out_memdep_24_avm_address,
        out_memdep_24_avm_burstcount => i_store_memdep_24_processfpga_out_memdep_24_avm_burstcount,
        out_memdep_24_avm_byteenable => i_store_memdep_24_processfpga_out_memdep_24_avm_byteenable,
        out_memdep_24_avm_enable => i_store_memdep_24_processfpga_out_memdep_24_avm_enable,
        out_memdep_24_avm_read => i_store_memdep_24_processfpga_out_memdep_24_avm_read,
        out_memdep_24_avm_write => i_store_memdep_24_processfpga_out_memdep_24_avm_write,
        out_memdep_24_avm_writedata => i_store_memdep_24_processfpga_out_memdep_24_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_10_ext_sig_sync_out_x(GPOUT,39)
    out_memdep_24_avm_address <= i_store_memdep_24_processfpga_out_memdep_24_avm_address;
    out_memdep_24_avm_enable <= i_store_memdep_24_processfpga_out_memdep_24_avm_enable;
    out_memdep_24_avm_read <= i_store_memdep_24_processfpga_out_memdep_24_avm_read;
    out_memdep_24_avm_write <= i_store_memdep_24_processfpga_out_memdep_24_avm_write;
    out_memdep_24_avm_writedata <= i_store_memdep_24_processfpga_out_memdep_24_avm_writedata;
    out_memdep_24_avm_byteenable <= i_store_memdep_24_processfpga_out_memdep_24_avm_byteenable;
    out_memdep_24_avm_burstcount <= i_store_memdep_24_processfpga_out_memdep_24_avm_burstcount;

    -- redist56_sync_in_aunroll_x_in_i_valid_36(DELAY,892)
    redist56_sync_in_aunroll_x_in_i_valid_36 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist55_sync_in_aunroll_x_in_i_valid_30_q, xout => redist56_sync_in_aunroll_x_in_i_valid_36_q, clk => clock, aclr => resetn );

    -- i_unnamed_processfpga1547(LOGICAL,460)@35
    i_unnamed_processfpga1547_q <= i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_o_readdata_0 and c_i8_1gr_q;

    -- i_unnamed_processfpga1547_vt_select_0(BITSELECT,463)@35
    i_unnamed_processfpga1547_vt_select_0_b <= i_unnamed_processfpga1547_q(0 downto 0);

    -- i_unnamed_processfpga1547_vt_join(BITJOIN,462)@35
    i_unnamed_processfpga1547_vt_join_q <= i_unnamed_processfpga1520_vt_const_7_q & i_unnamed_processfpga1547_vt_select_0_b;

    -- i_tobool42_i_i668_processfpga(LOGICAL,453)@35
    i_tobool42_i_i668_processfpga_q <= "1" WHEN i_unnamed_processfpga1547_vt_join_q /= dupName_2_c_i8_0gr_x_q ELSE "0";

    -- i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_1_x(MUX,305)@35 + 1
    i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_1_x_s <= i_tobool42_i_i668_processfpga_q;
    i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_1_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_1_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_1_x_s) IS
                WHEN "0" => i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_1_x_q <= i_load_normls_load460_processfpga_out_o_readdata;
                WHEN "1" => i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_1_x_q <= i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_o_readdata_2;
                WHEN OTHERS => i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_1_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_0_x(MUX,304)@35 + 1
    i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_0_x_s <= i_tobool42_i_i668_processfpga_q;
    i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_0_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_0_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_0_x_s) IS
                WHEN "0" => i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_0_x_q <= i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_o_readdata_3;
                WHEN "1" => i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_0_x_q <= i_load_memcoalesce_localneurons_load_051_processfpga_aunroll_x_out_o_readdata_1;
                WHEN OTHERS => i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_0_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x(BITJOIN,303)@36
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q <= i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_1_x_q & i_tmp26_i_i658_tmp27_i_i660_v_v_processfpga_0_x_q;

    -- i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select(BITSELECT,832)@36
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_b <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(0 downto 0);
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_c <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(1 downto 1);
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_d <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(10 downto 10);
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_e <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(11 downto 11);
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_f <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(12 downto 12);
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_g <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(13 downto 13);
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_h <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(14 downto 14);
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_i <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(15 downto 15);
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_j <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(2 downto 2);
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_k <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(3 downto 3);
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_l <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(4 downto 4);
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_m <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(5 downto 5);
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_n <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(6 downto 6);
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_o <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(7 downto 7);
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_p <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(8 downto 8);
    i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_q <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_v_join_x_q(9 downto 9);

    -- i_tmp26_i_i658_tmp27_i_i660_processfpga_processfpga1550_tmp26_i_i658_tmp27_i_i660_v_join_x(BITJOIN,286)@36
    i_tmp26_i_i658_tmp27_i_i660_processfpga_processfpga1550_tmp26_i_i658_tmp27_i_i660_v_join_x_q <= i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_i & i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_h & i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_g & i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_f & i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_e & i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_d & i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_q & i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_p & i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_o & i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_n & i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_m & i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_l & i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_k & i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_j & i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_c & i_tmp26_i_i658_tmp27_i_i660_v_processfpga_processfpga1549_tmp26_i_i658_tmp27_i_i660_v_select_0_x_merged_bit_select_b;

    -- redist22_i_cmp_i17_i_i666_processfpga_c_7(DELAY,858)
    redist22_i_cmp_i17_i_i666_processfpga_c_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp_i17_i_i666_processfpga_c, xout => redist22_i_cmp_i17_i_i666_processfpga_c_7_q, clk => clock, aclr => resetn );

    -- i_acl_912_processfpga(MUX,325)@36
    i_acl_912_processfpga_s <= redist22_i_cmp_i17_i_i666_processfpga_c_7_q;
    i_acl_912_processfpga_combproc: PROCESS (i_acl_912_processfpga_s, c_i16_0gr_q, i_tmp26_i_i658_tmp27_i_i660_processfpga_processfpga1550_tmp26_i_i658_tmp27_i_i660_v_join_x_q)
    BEGIN
        CASE (i_acl_912_processfpga_s) IS
            WHEN "0" => i_acl_912_processfpga_q <= c_i16_0gr_q;
            WHEN "1" => i_acl_912_processfpga_q <= i_tmp26_i_i658_tmp27_i_i660_processfpga_processfpga1550_tmp26_i_i658_tmp27_i_i660_v_join_x_q;
            WHEN OTHERS => i_acl_912_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist39_i_acl_914_processfpga_q_6_notEnable(LOGICAL,1113)
    redist39_i_acl_914_processfpga_q_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist39_i_acl_914_processfpga_q_6_nor(LOGICAL,1114)
    redist39_i_acl_914_processfpga_q_6_nor_q <= not (redist39_i_acl_914_processfpga_q_6_notEnable_q or redist39_i_acl_914_processfpga_q_6_sticky_ena_q);

    -- redist39_i_acl_914_processfpga_q_6_mem_last(CONSTANT,1110)
    redist39_i_acl_914_processfpga_q_6_mem_last_q <= "01";

    -- redist39_i_acl_914_processfpga_q_6_cmp(LOGICAL,1111)
    redist39_i_acl_914_processfpga_q_6_cmp_q <= "1" WHEN redist39_i_acl_914_processfpga_q_6_mem_last_q = redist39_i_acl_914_processfpga_q_6_rdcnt_q ELSE "0";

    -- redist39_i_acl_914_processfpga_q_6_cmpReg(REG,1112)
    redist39_i_acl_914_processfpga_q_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist39_i_acl_914_processfpga_q_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist39_i_acl_914_processfpga_q_6_cmpReg_q <= STD_LOGIC_VECTOR(redist39_i_acl_914_processfpga_q_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist39_i_acl_914_processfpga_q_6_sticky_ena(REG,1115)
    redist39_i_acl_914_processfpga_q_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist39_i_acl_914_processfpga_q_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist39_i_acl_914_processfpga_q_6_nor_q = "1") THEN
                redist39_i_acl_914_processfpga_q_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist39_i_acl_914_processfpga_q_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist39_i_acl_914_processfpga_q_6_enaAnd(LOGICAL,1116)
    redist39_i_acl_914_processfpga_q_6_enaAnd_q <= redist39_i_acl_914_processfpga_q_6_sticky_ena_q and VCC_q;

    -- redist39_i_acl_914_processfpga_q_6_rdcnt(COUNTER,1108)
    -- low=0, high=2, step=1, init=0
    redist39_i_acl_914_processfpga_q_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist39_i_acl_914_processfpga_q_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist39_i_acl_914_processfpga_q_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist39_i_acl_914_processfpga_q_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist39_i_acl_914_processfpga_q_6_rdcnt_eq <= '1';
            ELSE
                redist39_i_acl_914_processfpga_q_6_rdcnt_eq <= '0';
            END IF;
            IF (redist39_i_acl_914_processfpga_q_6_rdcnt_eq = '1') THEN
                redist39_i_acl_914_processfpga_q_6_rdcnt_i <= redist39_i_acl_914_processfpga_q_6_rdcnt_i + 2;
            ELSE
                redist39_i_acl_914_processfpga_q_6_rdcnt_i <= redist39_i_acl_914_processfpga_q_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist39_i_acl_914_processfpga_q_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist39_i_acl_914_processfpga_q_6_rdcnt_i, 2)));

    -- redist59_i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_3_1(DELAY,895)
    redist59_i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_3_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_3, xout => redist59_i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_3_1_q, clk => clock, aclr => resetn );

    -- i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x(BITJOIN,279)@30
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q <= i_load_normls_load438_processfpga_out_o_readdata & redist59_i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_3_1_q;

    -- i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select(BITSELECT,831)@30
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_b <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(0 downto 0);
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_c <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(1 downto 1);
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_d <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(10 downto 10);
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_e <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(11 downto 11);
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_f <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(12 downto 12);
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_g <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(13 downto 13);
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_h <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(14 downto 14);
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_i <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(15 downto 15);
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_j <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(2 downto 2);
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_k <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(3 downto 3);
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_l <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(4 downto 4);
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_m <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(5 downto 5);
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_n <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(6 downto 6);
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_o <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(7 downto 7);
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_p <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(8 downto 8);
    i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_q <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_vec_1_join_x_q(9 downto 9);

    -- i_normls_or441_compressed_processfpga_processfpga1518_normls_or441_bitvec_join_x(BITJOIN,280)@30
    i_normls_or441_compressed_processfpga_processfpga1518_normls_or441_bitvec_join_x_q <= i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_i & i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_h & i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_g & i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_f & i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_e & i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_d & i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_q & i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_p & i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_o & i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_n & i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_m & i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_l & i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_k & i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_j & i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_c & i_normls_or441_bitvec_processfpga_processfpga1517_normls_or441_bitvec_select_0_x_merged_bit_select_b;

    -- redist58_i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_2_1(DELAY,894)
    redist58_i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_2_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_2, xout => redist58_i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_2_1_q, clk => clock, aclr => resetn );

    -- redist57_i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_1_1(DELAY,893)
    redist57_i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_1_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_1, xout => redist57_i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_1_1_q, clk => clock, aclr => resetn );

    -- i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x(BITJOIN,261)@30
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q <= redist58_i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_2_1_q & redist57_i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_1_1_q;

    -- i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select(BITSELECT,830)@30
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_b <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(0 downto 0);
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_c <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(1 downto 1);
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_d <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(10 downto 10);
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_e <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(11 downto 11);
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_f <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(12 downto 12);
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_g <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(13 downto 13);
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_h <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(14 downto 14);
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_i <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(15 downto 15);
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_j <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(2 downto 2);
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_k <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(3 downto 3);
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_l <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(4 downto 4);
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_m <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(5 downto 5);
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_n <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(6 downto 6);
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_o <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(7 downto 7);
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_p <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(8 downto 8);
    i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_q <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_vec_1_join_x_q(9 downto 9);

    -- i_normls_or430_compressed_processfpga_processfpga1510_normls_or430_bitvec_join_x(BITJOIN,262)@30
    i_normls_or430_compressed_processfpga_processfpga1510_normls_or430_bitvec_join_x_q <= i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_i & i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_h & i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_g & i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_f & i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_e & i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_d & i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_q & i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_p & i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_o & i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_n & i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_m & i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_l & i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_k & i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_j & i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_c & i_normls_or430_bitvec_processfpga_processfpga1509_normls_or430_bitvec_select_0_x_merged_bit_select_b;

    -- i_acl_914_processfpga(MUX,326)@30 + 1
    i_acl_914_processfpga_s <= i_tobool53_i_i677_processfpga_q;
    i_acl_914_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_acl_914_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_acl_914_processfpga_s) IS
                WHEN "0" => i_acl_914_processfpga_q <= i_normls_or430_compressed_processfpga_processfpga1510_normls_or430_bitvec_join_x_q;
                WHEN "1" => i_acl_914_processfpga_q <= i_normls_or441_compressed_processfpga_processfpga1518_normls_or441_bitvec_join_x_q;
                WHEN OTHERS => i_acl_914_processfpga_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist39_i_acl_914_processfpga_q_6_wraddr(REG,1109)
    redist39_i_acl_914_processfpga_q_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist39_i_acl_914_processfpga_q_6_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist39_i_acl_914_processfpga_q_6_wraddr_q <= STD_LOGIC_VECTOR(redist39_i_acl_914_processfpga_q_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist39_i_acl_914_processfpga_q_6_mem(DUALMEM,1107)
    redist39_i_acl_914_processfpga_q_6_mem_ia <= STD_LOGIC_VECTOR(i_acl_914_processfpga_q);
    redist39_i_acl_914_processfpga_q_6_mem_aa <= redist39_i_acl_914_processfpga_q_6_wraddr_q;
    redist39_i_acl_914_processfpga_q_6_mem_ab <= redist39_i_acl_914_processfpga_q_6_rdcnt_q;
    redist39_i_acl_914_processfpga_q_6_mem_reset0 <= not (resetn);
    redist39_i_acl_914_processfpga_q_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 16,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist39_i_acl_914_processfpga_q_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist39_i_acl_914_processfpga_q_6_mem_reset0,
        clock1 => clock,
        address_a => redist39_i_acl_914_processfpga_q_6_mem_aa,
        data_a => redist39_i_acl_914_processfpga_q_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist39_i_acl_914_processfpga_q_6_mem_ab,
        q_b => redist39_i_acl_914_processfpga_q_6_mem_iq
    );
    redist39_i_acl_914_processfpga_q_6_mem_q <= redist39_i_acl_914_processfpga_q_6_mem_iq(15 downto 0);

    -- redist39_i_acl_914_processfpga_q_6_outputreg(DELAY,1106)
    redist39_i_acl_914_processfpga_q_6_outputreg : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist39_i_acl_914_processfpga_q_6_mem_q, xout => redist39_i_acl_914_processfpga_q_6_outputreg_q, clk => clock, aclr => resetn );

    -- i_and_i13_i_i6911226_processfpga(LOGICAL,355)@36
    i_and_i13_i_i6911226_processfpga_q <= redist39_i_acl_914_processfpga_q_6_outputreg_q and i_acl_912_processfpga_q;

    -- redist38_i_acl_930_v_processfpga_q_5_notEnable(LOGICAL,1102)
    redist38_i_acl_930_v_processfpga_q_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist38_i_acl_930_v_processfpga_q_5_nor(LOGICAL,1103)
    redist38_i_acl_930_v_processfpga_q_5_nor_q <= not (redist38_i_acl_930_v_processfpga_q_5_notEnable_q or redist38_i_acl_930_v_processfpga_q_5_sticky_ena_q);

    -- redist38_i_acl_930_v_processfpga_q_5_cmpReg(REG,1101)
    redist38_i_acl_930_v_processfpga_q_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist38_i_acl_930_v_processfpga_q_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist38_i_acl_930_v_processfpga_q_5_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist38_i_acl_930_v_processfpga_q_5_sticky_ena(REG,1104)
    redist38_i_acl_930_v_processfpga_q_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist38_i_acl_930_v_processfpga_q_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist38_i_acl_930_v_processfpga_q_5_nor_q = "1") THEN
                redist38_i_acl_930_v_processfpga_q_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist38_i_acl_930_v_processfpga_q_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist38_i_acl_930_v_processfpga_q_5_enaAnd(LOGICAL,1105)
    redist38_i_acl_930_v_processfpga_q_5_enaAnd_q <= redist38_i_acl_930_v_processfpga_q_5_sticky_ena_q and VCC_q;

    -- redist38_i_acl_930_v_processfpga_q_5_rdcnt(COUNTER,1099)
    -- low=0, high=1, step=1, init=0
    redist38_i_acl_930_v_processfpga_q_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist38_i_acl_930_v_processfpga_q_5_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist38_i_acl_930_v_processfpga_q_5_rdcnt_i <= redist38_i_acl_930_v_processfpga_q_5_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist38_i_acl_930_v_processfpga_q_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist38_i_acl_930_v_processfpga_q_5_rdcnt_i, 1)));

    -- redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_notEnable(LOGICAL,1070)
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_nor(LOGICAL,1071)
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_nor_q <= not (redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_notEnable_q or redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_sticky_ena_q);

    -- redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_last(CONSTANT,1067)
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_last_q <= "01010";

    -- redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_cmp(LOGICAL,1068)
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_cmp_b <= STD_LOGIC_VECTOR("0" & redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_q);
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_cmp_q <= "1" WHEN redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_last_q = redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_cmp_b ELSE "0";

    -- redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_cmpReg(REG,1069)
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_cmpReg_q <= STD_LOGIC_VECTOR(redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_cmp_q);
        END IF;
    END PROCESS;

    -- redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_sticky_ena(REG,1072)
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_nor_q = "1") THEN
                redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_sticky_ena_q <= STD_LOGIC_VECTOR(redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_enaAnd(LOGICAL,1073)
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_enaAnd_q <= redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_sticky_ena_q and VCC_q;

    -- redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt(COUNTER,1065)
    -- low=0, high=11, step=1, init=0
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_i = TO_UNSIGNED(10, 4)) THEN
                redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_eq <= '1';
            ELSE
                redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_eq <= '0';
            END IF;
            IF (redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_eq = '1') THEN
                redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_i <= redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_i + 5;
            ELSE
                redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_i <= redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_i, 4)));

    -- redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_inputreg(DELAY,1062)
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_inputreg : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_load_tmp42_i_i61237_processfpga_out_o_readdata, xout => redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_inputreg_q, clk => clock, aclr => resetn );

    -- redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_wraddr(REG,1066)
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_wraddr_q <= "1011";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_wraddr_q <= STD_LOGIC_VECTOR(redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem(DUALMEM,1064)
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_ia <= STD_LOGIC_VECTOR(redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_inputreg_q);
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_aa <= redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_wraddr_q;
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_ab <= redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_rdcnt_q;
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_reset0 <= not (resetn);
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 4,
        numwords_a => 12,
        width_b => 16,
        widthad_b => 4,
        numwords_b => 12,
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
        clocken1 => redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_reset0,
        clock1 => clock,
        address_a => redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_aa,
        data_a => redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_ab,
        q_b => redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_iq
    );
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_q <= redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_iq(15 downto 0);

    -- redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_outputreg(DELAY,1063)
    redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_outputreg : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_mem_q, xout => redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_outputreg_q, clk => clock, aclr => resetn );

    -- i_and_i_i44_i1230_processfpga(LOGICAL,357)@30 + 1
    i_and_i_i44_i1230_processfpga_qi <= i_normls_or430_compressed_processfpga_processfpga1510_normls_or430_bitvec_join_x_q and redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_outputreg_q;
    i_and_i_i44_i1230_processfpga_delay : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_and_i_i44_i1230_processfpga_qi, xout => i_and_i_i44_i1230_processfpga_q, clk => clock, aclr => resetn );

    -- i_and_i21_i_i6421228_processfpga(LOGICAL,356)@30
    i_and_i21_i_i6421228_processfpga_q <= i_normls_or441_compressed_processfpga_processfpga1518_normls_or441_bitvec_join_x_q and redist18_i_load_tmp42_i_i61237_processfpga_out_o_readdata_15_outputreg_q;

    -- redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_notEnable(LOGICAL,1082)
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_nor(LOGICAL,1083)
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_nor_q <= not (redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_notEnable_q or redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_sticky_ena_q);

    -- redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_last(CONSTANT,1079)
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_last_q <= "01001";

    -- redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_cmp(LOGICAL,1080)
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_cmp_b <= STD_LOGIC_VECTOR("0" & redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_q);
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_cmp_q <= "1" WHEN redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_last_q = redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_cmp_b ELSE "0";

    -- redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_cmpReg(REG,1081)
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_cmpReg_q <= STD_LOGIC_VECTOR(redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_cmp_q);
        END IF;
    END PROCESS;

    -- redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_sticky_ena(REG,1084)
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_nor_q = "1") THEN
                redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_sticky_ena_q <= STD_LOGIC_VECTOR(redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_enaAnd(LOGICAL,1085)
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_enaAnd_q <= redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_sticky_ena_q and VCC_q;

    -- redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt(COUNTER,1077)
    -- low=0, high=10, step=1, init=0
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_i = TO_UNSIGNED(9, 4)) THEN
                redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_eq <= '1';
            ELSE
                redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_eq <= '0';
            END IF;
            IF (redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_eq = '1') THEN
                redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_i <= redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_i + 6;
            ELSE
                redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_i <= redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_i, 4)));

    -- redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_inputreg(DELAY,1074)
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_inputreg : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_load_tmp38_i_i60834_processfpga_out_o_readdata, xout => redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_inputreg_q, clk => clock, aclr => resetn );

    -- redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_wraddr(REG,1078)
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_wraddr_q <= "1010";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_wraddr_q <= STD_LOGIC_VECTOR(redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem(DUALMEM,1076)
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_ia <= STD_LOGIC_VECTOR(redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_inputreg_q);
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_aa <= redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_wraddr_q;
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_ab <= redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_rdcnt_q;
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_reset0 <= not (resetn);
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 4,
        numwords_a => 11,
        width_b => 8,
        widthad_b => 4,
        numwords_b => 11,
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
        clocken1 => redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_reset0,
        clock1 => clock,
        address_a => redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_aa,
        data_a => redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_ab,
        q_b => redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_iq
    );
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_q <= redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_iq(7 downto 0);

    -- redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_outputreg(DELAY,1075)
    redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_outputreg : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_mem_q, xout => redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_outputreg_q, clk => clock, aclr => resetn );

    -- i_unnamed_processfpga1556(LOGICAL,464)@29
    i_unnamed_processfpga1556_q <= i_load_memcoalesce_localneurons_load_045_processfpga_aunroll_x_out_o_readdata_0 or redist19_i_load_tmp38_i_i60834_processfpga_out_o_readdata_14_outputreg_q;

    -- i_unnamed_processfpga1557(LOGICAL,465)@29
    i_unnamed_processfpga1557_q <= i_unnamed_processfpga1556_q and c_i8_1gr_q;

    -- i_unnamed_processfpga1557_vt_select_0(BITSELECT,468)@29
    i_unnamed_processfpga1557_vt_select_0_b <= i_unnamed_processfpga1557_q(0 downto 0);

    -- i_unnamed_processfpga1557_vt_join(BITJOIN,467)@29
    i_unnamed_processfpga1557_vt_join_q <= i_unnamed_processfpga1520_vt_const_7_q & i_unnamed_processfpga1557_vt_select_0_b;

    -- i_unnamed_processfpga1558(LOGICAL,469)@29 + 1
    i_unnamed_processfpga1558_qi <= "1" WHEN i_unnamed_processfpga1557_vt_join_q = dupName_2_c_i8_0gr_x_q ELSE "0";
    i_unnamed_processfpga1558_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga1558_qi, xout => i_unnamed_processfpga1558_q, clk => clock, aclr => resetn );

    -- i_reduction_processfpga_36_processfpga(LOGICAL,436)@30
    i_reduction_processfpga_36_processfpga_q <= redist29_i_cmp18_i_i628_processfpga_q_10_q and i_unnamed_processfpga1558_q;

    -- i_reduction_processfpga_37_processfpga(LOGICAL,437)@30
    i_reduction_processfpga_37_processfpga_q <= redist37_i_acl_937_processfpga_q_6_q and i_reduction_processfpga_36_processfpga_q;

    -- i_or_i22_i_i6431229_processfpga(MUX,425)@30 + 1
    i_or_i22_i_i6431229_processfpga_s <= i_reduction_processfpga_37_processfpga_q;
    i_or_i22_i_i6431229_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_or_i22_i_i6431229_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_or_i22_i_i6431229_processfpga_s) IS
                WHEN "0" => i_or_i22_i_i6431229_processfpga_q <= c_i16_0gr_q;
                WHEN "1" => i_or_i22_i_i6431229_processfpga_q <= i_and_i21_i_i6421228_processfpga_q;
                WHEN OTHERS => i_or_i22_i_i6431229_processfpga_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist15_i_reduction_processfpga_34_processfpga_q_1(DELAY,851)
    redist15_i_reduction_processfpga_34_processfpga_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_reduction_processfpga_34_processfpga_q, xout => redist15_i_reduction_processfpga_34_processfpga_q_1_q, clk => clock, aclr => resetn );

    -- i_acl_930_v_processfpga(MUX,328)@31 + 1
    i_acl_930_v_processfpga_s <= redist15_i_reduction_processfpga_34_processfpga_q_1_q;
    i_acl_930_v_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_acl_930_v_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_acl_930_v_processfpga_s) IS
                WHEN "0" => i_acl_930_v_processfpga_q <= i_or_i22_i_i6431229_processfpga_q;
                WHEN "1" => i_acl_930_v_processfpga_q <= i_and_i_i44_i1230_processfpga_q;
                WHEN OTHERS => i_acl_930_v_processfpga_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist38_i_acl_930_v_processfpga_q_5_wraddr(REG,1100)
    redist38_i_acl_930_v_processfpga_q_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist38_i_acl_930_v_processfpga_q_5_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist38_i_acl_930_v_processfpga_q_5_wraddr_q <= STD_LOGIC_VECTOR(redist38_i_acl_930_v_processfpga_q_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist38_i_acl_930_v_processfpga_q_5_mem(DUALMEM,1098)
    redist38_i_acl_930_v_processfpga_q_5_mem_ia <= STD_LOGIC_VECTOR(i_acl_930_v_processfpga_q);
    redist38_i_acl_930_v_processfpga_q_5_mem_aa <= redist38_i_acl_930_v_processfpga_q_5_wraddr_q;
    redist38_i_acl_930_v_processfpga_q_5_mem_ab <= redist38_i_acl_930_v_processfpga_q_5_rdcnt_q;
    redist38_i_acl_930_v_processfpga_q_5_mem_reset0 <= not (resetn);
    redist38_i_acl_930_v_processfpga_q_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 16,
        widthad_b => 1,
        numwords_b => 2,
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
        clocken1 => redist38_i_acl_930_v_processfpga_q_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist38_i_acl_930_v_processfpga_q_5_mem_reset0,
        clock1 => clock,
        address_a => redist38_i_acl_930_v_processfpga_q_5_mem_aa,
        data_a => redist38_i_acl_930_v_processfpga_q_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist38_i_acl_930_v_processfpga_q_5_mem_ab,
        q_b => redist38_i_acl_930_v_processfpga_q_5_mem_iq
    );
    redist38_i_acl_930_v_processfpga_q_5_mem_q <= redist38_i_acl_930_v_processfpga_q_5_mem_iq(15 downto 0);

    -- redist38_i_acl_930_v_processfpga_q_5_outputreg(DELAY,1097)
    redist38_i_acl_930_v_processfpga_q_5_outputreg : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist38_i_acl_930_v_processfpga_q_5_mem_q, xout => redist38_i_acl_930_v_processfpga_q_5_outputreg_q, clk => clock, aclr => resetn );

    -- redist36_i_acl_943_processfpga_q_12(DELAY,872)
    redist36_i_acl_943_processfpga_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist35_i_acl_943_processfpga_q_6_q, xout => redist36_i_acl_943_processfpga_q_12_q, clk => clock, aclr => resetn );

    -- i_acl_931_v_processfpga(MUX,330)@36 + 1
    i_acl_931_v_processfpga_s <= redist36_i_acl_943_processfpga_q_12_q;
    i_acl_931_v_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_acl_931_v_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_acl_931_v_processfpga_s) IS
                WHEN "0" => i_acl_931_v_processfpga_q <= redist38_i_acl_930_v_processfpga_q_5_outputreg_q;
                WHEN "1" => i_acl_931_v_processfpga_q <= i_and_i13_i_i6911226_processfpga_q;
                WHEN OTHERS => i_acl_931_v_processfpga_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist21_i_lnot_i_i617_processfpga_q_13(DELAY,857)
    redist21_i_lnot_i_i617_processfpga_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist20_i_lnot_i_i617_processfpga_q_8_q, xout => redist21_i_lnot_i_i617_processfpga_q_13_q, clk => clock, aclr => resetn );

    -- i_lnot_i_i617_not_processfpga(LOGICAL,403)@36
    i_lnot_i_i617_not_processfpga_q <= redist21_i_lnot_i_i617_processfpga_q_13_q xor VCC_q;

    -- redist25_i_cmp7_i23_i_processfpga_q_26(DELAY,861)
    redist25_i_cmp7_i23_i_processfpga_q_26 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist24_i_cmp7_i23_i_processfpga_q_21_q, xout => redist25_i_cmp7_i23_i_processfpga_q_26_q, clk => clock, aclr => resetn );

    -- i_acl_922_processfpga(LOGICAL,327)@36 + 1
    i_acl_922_processfpga_qi <= redist25_i_cmp7_i23_i_processfpga_q_26_q and i_lnot_i_i617_not_processfpga_q;
    i_acl_922_processfpga_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_922_processfpga_qi, xout => i_acl_922_processfpga_q, clk => clock, aclr => resetn );

    -- i_acl_931_processfpga(MUX,329)@37
    i_acl_931_processfpga_s <= i_acl_922_processfpga_q;
    i_acl_931_processfpga_combproc: PROCESS (i_acl_931_processfpga_s, i_acl_931_v_processfpga_q, c_i16_0gr_q)
    BEGIN
        CASE (i_acl_931_processfpga_s) IS
            WHEN "0" => i_acl_931_processfpga_q <= i_acl_931_v_processfpga_q;
            WHEN "1" => i_acl_931_processfpga_q <= c_i16_0gr_q;
            WHEN OTHERS => i_acl_931_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist26_i_cmp7_i23_i_processfpga_q_27(DELAY,862)
    redist26_i_cmp7_i23_i_processfpga_q_27 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist25_i_cmp7_i23_i_processfpga_q_26_q, xout => redist26_i_cmp7_i23_i_processfpga_q_27_q, clk => clock, aclr => resetn );

    -- i_acl_932_processfpga(MUX,331)@37
    i_acl_932_processfpga_s <= redist26_i_cmp7_i23_i_processfpga_q_27_q;
    i_acl_932_processfpga_combproc: PROCESS (i_acl_932_processfpga_s, c_i16_0gr_q, i_acl_931_processfpga_q)
    BEGIN
        CASE (i_acl_932_processfpga_s) IS
            WHEN "0" => i_acl_932_processfpga_q <= c_i16_0gr_q;
            WHEN "1" => i_acl_932_processfpga_q <= i_acl_931_processfpga_q;
            WHEN OTHERS => i_acl_932_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i16_sum_0_i_i6031313_push149_processfpga(BLACKBOX,350)@37
    -- out out_feedback_out_149@20000000
    -- out out_feedback_valid_out_149@20000000
    thei_acl_push_i16_sum_0_i_i6031313_push149_processfpga : i_acl_push_i16_sum_0_i_i6031313_push149_processfpga1568
    PORT MAP (
        in_data_in => i_acl_933_processfpga_q,
        in_feedback_stall_in_149 => i_acl_pop_i16_sum_0_i_i6031313_pop149_processfpga_out_feedback_stall_out_149,
        in_stall_in => GND_q,
        in_unnamed_processFPGA449 => redist13_i_unnamed_processfpga1565_q_36_q,
        in_valid_in => redist56_sync_in_aunroll_x_in_i_valid_36_q,
        out_feedback_out_149 => i_acl_push_i16_sum_0_i_i6031313_push149_processfpga_out_feedback_out_149,
        out_feedback_valid_out_149 => i_acl_push_i16_sum_0_i_i6031313_push149_processfpga_out_feedback_valid_out_149,
        clock => clock,
        resetn => resetn
    );

    -- redist41_sync_in_aunroll_x_in_c0_eni2977_1_36(DELAY,877)
    redist41_sync_in_aunroll_x_in_c0_eni2977_1_36 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist40_sync_in_aunroll_x_in_c0_eni2977_1_29_q, xout => redist41_sync_in_aunroll_x_in_c0_eni2977_1_36_q, clk => clock, aclr => resetn );

    -- i_acl_pop_i16_sum_0_i_i6031313_pop149_processfpga(BLACKBOX,345)@37
    -- out out_feedback_stall_out_149@20000000
    thei_acl_pop_i16_sum_0_i_i6031313_pop149_processfpga : i_acl_pop_i16_sum_0_i_i6031313_pop149_processfpga1560
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => redist41_sync_in_aunroll_x_in_c0_eni2977_1_36_q,
        in_feedback_in_149 => i_acl_push_i16_sum_0_i_i6031313_push149_processfpga_out_feedback_out_149,
        in_feedback_valid_in_149 => i_acl_push_i16_sum_0_i_i6031313_push149_processfpga_out_feedback_valid_out_149,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist56_sync_in_aunroll_x_in_i_valid_36_q,
        out_data_out => i_acl_pop_i16_sum_0_i_i6031313_pop149_processfpga_out_data_out,
        out_feedback_stall_out_149 => i_acl_pop_i16_sum_0_i_i6031313_pop149_processfpga_out_feedback_stall_out_149,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_933_processfpga(LOGICAL,332)@37
    i_acl_933_processfpga_q <= i_acl_pop_i16_sum_0_i_i6031313_pop149_processfpga_out_data_out or i_acl_932_processfpga_q;

    -- i_ffwd_src_unnamed_processfpga214_processfpga(BLACKBOX,384)@37
    -- out out_intel_reserved_ffwd_102_0@20000000
    thei_ffwd_src_unnamed_processfpga214_processfpga : i_ffwd_src_unnamed_processfpga214_processfpga1578
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_102_0 => i_acl_933_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => redist56_sync_in_aunroll_x_in_i_valid_36_q,
        out_intel_reserved_ffwd_102_0 => i_ffwd_src_unnamed_processfpga214_processfpga_out_intel_reserved_ffwd_102_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga213_processfpga(BLACKBOX,383)@30
    -- out out_intel_reserved_ffwd_101_0@20000000
    thei_ffwd_src_unnamed_processfpga213_processfpga : i_ffwd_src_unnamed_processfpga213_processfpga1576
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_101_0 => i_reduction_processfpga_28_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => redist54_sync_in_aunroll_x_in_i_valid_29_q,
        out_intel_reserved_ffwd_101_0 => i_ffwd_src_unnamed_processfpga213_processfpga_out_intel_reserved_ffwd_101_0,
        clock => clock,
        resetn => resetn
    );

    -- redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_notEnable(LOGICAL,1136)
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_nor(LOGICAL,1137)
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_nor_q <= not (redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_notEnable_q or redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_sticky_ena_q);

    -- redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_last(CONSTANT,1133)
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_last_q <= "011101";

    -- redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_cmp(LOGICAL,1134)
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_cmp_b <= STD_LOGIC_VECTOR("0" & redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_q);
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_cmp_q <= "1" WHEN redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_last_q = redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_cmp_b ELSE "0";

    -- redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_cmpReg(REG,1135)
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_cmpReg_q <= STD_LOGIC_VECTOR(redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_cmp_q);
        END IF;
    END PROCESS;

    -- redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_sticky_ena(REG,1138)
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_nor_q = "1") THEN
                redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_sticky_ena_q <= STD_LOGIC_VECTOR(redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_enaAnd(LOGICAL,1139)
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_enaAnd_q <= redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_sticky_ena_q and VCC_q;

    -- redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt(COUNTER,1131)
    -- low=0, high=30, step=1, init=0
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_i = TO_UNSIGNED(29, 5)) THEN
                redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_eq <= '1';
            ELSE
                redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_eq <= '0';
            END IF;
            IF (redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_eq = '1') THEN
                redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_i <= redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_i + 2;
            ELSE
                redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_i <= redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_i, 5)));

    -- i_acl_push_i32_acl_hw_wg_id807_push151_processfpga(BLACKBOX,353)@1
    -- out out_feedback_out_151@20000000
    -- out out_feedback_valid_out_151@20000000
    thei_acl_push_i32_acl_hw_wg_id807_push151_processfpga : i_acl_push_i32_acl_hw_wg_id807_push151_processfpga1582
    PORT MAP (
        in_data_in => i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out,
        in_feedback_stall_in_151 => i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_feedback_stall_out_151,
        in_stall_in => GND_q,
        in_unnamed_processFPGA449 => i_unnamed_processfpga1565_q,
        in_valid_in => in_i_valid,
        out_feedback_out_151 => i_acl_push_i32_acl_hw_wg_id807_push151_processfpga_out_feedback_out_151,
        out_feedback_valid_out_151 => i_acl_push_i32_acl_hw_wg_id807_push151_processfpga_out_feedback_valid_out_151,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga(BLACKBOX,347)@1
    -- out out_feedback_stall_out_151@20000000
    thei_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga : i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga1580
    PORT MAP (
        in_data_in => in_c0_eni2977_2,
        in_dir => in_c0_eni2977_1,
        in_feedback_in_151 => i_acl_push_i32_acl_hw_wg_id807_push151_processfpga_out_feedback_out_151,
        in_feedback_valid_in_151 => i_acl_push_i32_acl_hw_wg_id807_push151_processfpga_out_feedback_valid_out_151,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out,
        out_feedback_stall_out_151 => i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_feedback_stall_out_151,
        clock => clock,
        resetn => resetn
    );

    -- redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_wraddr(REG,1132)
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_wraddr_q <= "11110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_wraddr_q <= STD_LOGIC_VECTOR(redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem(DUALMEM,1130)
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_ia <= STD_LOGIC_VECTOR(i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out);
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_aa <= redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_wraddr_q;
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_ab <= redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_rdcnt_q;
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_reset0 <= not (resetn);
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 5,
        numwords_a => 31,
        width_b => 32,
        widthad_b => 5,
        numwords_b => 31,
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
        clocken1 => redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_reset0,
        clock1 => clock,
        address_a => redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_aa,
        data_a => redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_ab,
        q_b => redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_iq
    );
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_q <= redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_iq(31 downto 0);

    -- redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_outputreg(DELAY,1129)
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_mem_q, xout => redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_outputreg_q, clk => clock, aclr => resetn );

    -- redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_inputreg(DELAY,1086)
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_split_0_outputreg_q, xout => redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_inputreg_q, clk => clock, aclr => resetn );

    -- redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36(DELAY,867)
    redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_inputreg_q, xout => redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_q, clk => clock, aclr => resetn );

    -- redist13_i_unnamed_processfpga1565_q_36(DELAY,849)
    redist13_i_unnamed_processfpga1565_q_36 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist12_i_unnamed_processfpga1565_q_29_q, xout => redist13_i_unnamed_processfpga1565_q_36_q, clk => clock, aclr => resetn );

    -- sync_out_aunroll_x(GPOUT,307)@37
    out_c0_exi2982_0 <= GND_q;
    out_c0_exi2982_1 <= redist13_i_unnamed_processfpga1565_q_36_q;
    out_c0_exi2982_2 <= redist31_i_acl_pop_i32_acl_hw_wg_id807_pop151_processfpga_out_data_out_36_q;
    out_intel_reserved_ffwd_101_0 <= i_ffwd_src_unnamed_processfpga213_processfpga_out_intel_reserved_ffwd_101_0;
    out_intel_reserved_ffwd_102_0 <= i_ffwd_src_unnamed_processfpga214_processfpga_out_intel_reserved_ffwd_102_0;
    out_o_valid <= redist56_sync_in_aunroll_x_in_i_valid_36_q;

    -- i_acl_push_i1_notexitcond696_processfpga(BLACKBOX,352)@1
    -- out out_feedback_out_24@20000000
    -- out out_feedback_valid_out_24@20000000
    thei_acl_push_i1_notexitcond696_processfpga : i_acl_push_i1_notexitcond696_processfpga1574
    PORT MAP (
        in_data_in => i_unnamed_processfpga1565_q,
        in_feedback_stall_in_24 => i_acl_pipeline_keep_going695_processfpga_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_24 => i_acl_push_i1_notexitcond696_processfpga_out_feedback_out_24,
        out_feedback_valid_out_24 => i_acl_push_i1_notexitcond696_processfpga_out_feedback_valid_out_24,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going695_processfpga(BLACKBOX,343)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going695_processfpga : i_acl_pipeline_keep_going695_processfpga1457
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond696_processfpga_out_feedback_out_24,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond696_processfpga_out_feedback_valid_out_24,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going695_processfpga_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going695_processfpga_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going695_processfpga_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going695_processfpga_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,324)
    out_aclp_to_limiter_i_acl_pipeline_keep_going695_processfpga_exiting_valid_out <= i_acl_pipeline_keep_going695_processfpga_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going695_processfpga_exiting_stall_out <= i_acl_pipeline_keep_going695_processfpga_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,481)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going695_processfpga_out_pipeline_valid_out;

END normal;
