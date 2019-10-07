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

-- VHDL created from i_sfc_logic_c0_for_body_i22_i_processfpga_c0_enter952_processfpga1158
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

entity i_sfc_logic_c0_for_body_i22_i_processfpga_c0_enter952_processfpga1158 is
    port (
        in_tmp12_i_i115827_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp12_i_i115827_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp12_i_i115827_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp12_i_i115827_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_tmp10_i_i115626_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp10_i_i115626_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp10_i_i115626_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp10_i_i115626_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp10_i_i115626_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp10_i_i115626_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp10_i_i115626_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp13_i_i115928_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp13_i_i115928_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp13_i_i115928_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp13_i_i115928_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_tmp12_i_i115827_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp12_i_i115827_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp12_i_i115827_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp12_i_i115827_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp12_i_i115827_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp12_i_i115827_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp12_i_i115827_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp11_i_i115729_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp11_i_i115729_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp11_i_i115729_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp11_i_i115729_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_tmp13_i_i115928_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp13_i_i115928_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp13_i_i115928_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp13_i_i115928_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp13_i_i115928_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp13_i_i115928_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp13_i_i115928_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_033_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_localNeurons_load_033_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_033_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_033_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_tmp11_i_i115729_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp11_i_i115729_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp11_i_i115729_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp11_i_i115729_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp11_i_i115729_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp11_i_i115729_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp11_i_i115729_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load375_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load375_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load375_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load375_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_033_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_033_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_033_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_033_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_033_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_033_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memcoalesce_localNeurons_load_033_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_037_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_localNeurons_load_037_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_037_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_037_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load375_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load375_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load375_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load375_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load375_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load375_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load375_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load386_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load386_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load386_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load386_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_037_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_037_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_037_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_037_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_037_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_037_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memcoalesce_localNeurons_load_037_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_20_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        in_memdep_20_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_20_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_20_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load386_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load386_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load386_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load386_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load386_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load386_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load386_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_20_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_20_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_20_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_20_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_20_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        out_memdep_20_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        out_memdep_20_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2951_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2951_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2951_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_72_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_73_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_75_0 : in std_logic_vector(16 downto 0);  -- ufix17
        in_intel_reserved_ffwd_79_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_localConn : in std_logic_vector(63 downto 0);  -- ufix64
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi2956_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi2956_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi2956_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_81_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp10_i_i115626_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp10_i_i115626_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp10_i_i115626_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp10_i_i115626_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going685_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going685_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body_i22_i_processfpga_c0_enter952_processfpga1158;

architecture normal of i_sfc_logic_c0_for_body_i22_i_processfpga_c0_enter952_processfpga1158 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_load_memcoalesce_localneurons_load_033_processfpga1203 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_033_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_033_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_033_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_033_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata_0 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_2 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_3 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_033_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_033_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_033_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_033_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_033_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_033_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_033_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_memcoalesce_localneurons_load_037_processfpga1225 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_037_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_037_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_037_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_037_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata_0 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_2 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_3 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_037_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_037_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_037_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_037_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_037_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_037_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_037_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_20_processfpga1239 is
        port (
            in_i_writedata_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_i_writedata_1 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_i_writedata_2 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_i_writedata_3 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_byteenable : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_20_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memdep_20_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_20_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_20_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_20_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_20_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_20_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memdep_20_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_20_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_20_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_20_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going685_processfpga1160 is
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


    component i_acl_pop_i16_i_0_i3_i1292_pop107_processfpga1166 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_107 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_valid_in_107 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_stall_out_107 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i17_fpgaindvars_iv207_pop106_processfpga1164 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_106 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_106 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_stall_out_106 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga1255 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_109 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_109 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_109 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_destmodcounter_0_i_i11511291_pop108_processfpga1234 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_108 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_108 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_108 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i16_i_0_i3_i1292_push107_processfpga1247 is
        port (
            in_data_in : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_feedback_stall_in_107 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA447 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_out_107 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_feedback_valid_out_107 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i17_fpgaindvars_iv207_push106_processfpga1249 is
        port (
            in_data_in : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_feedback_stall_in_106 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA447 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_feedback_out_106 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_106 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond686_processfpga1251 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_20 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_20 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_20 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_acl_hw_wg_id803_push109_processfpga1257 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_109 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA447 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_109 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_109 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_destmodcounter_0_i_i11511291_push108_processfpga1245 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_108 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA447 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_108 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_108 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga163_processfpga1162 is
        port (
            in_intel_reserved_ffwd_75_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_75_0 : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga164_processfpga1171 is
        port (
            in_intel_reserved_ffwd_72_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_72_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga165_processfpga1178 is
        port (
            in_intel_reserved_ffwd_72_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_72_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga166_processfpga1185 is
        port (
            in_intel_reserved_ffwd_72_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_72_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga167_processfpga1189 is
        port (
            in_intel_reserved_ffwd_79_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_79_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga168_processfpga1195 is
        port (
            in_intel_reserved_ffwd_72_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_72_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga169_processfpga1212 is
        port (
            in_intel_reserved_ffwd_72_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_72_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga170_processfpga1223 is
        port (
            in_intel_reserved_ffwd_72_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_72_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga171_processfpga1237 is
        port (
            in_intel_reserved_ffwd_73_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_73_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga172_processfpga1242 is
        port (
            in_intel_reserved_ffwd_73_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_73_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga173_processfpga1253 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_81_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_81_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_normls_load375_processfpga1214 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load375_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load375_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load375_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load375_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load375_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load375_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load375_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load375_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load375_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load375_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load375_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_normls_load386_processfpga1228 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load386_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load386_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load386_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load386_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load386_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load386_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load386_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load386_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load386_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load386_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load386_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_tmp10_i_i115626_processfpga1173 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp10_i_i115626_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp10_i_i115626_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp10_i_i115626_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp10_i_i115626_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp10_i_i115626_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp10_i_i115626_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp10_i_i115626_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_tmp10_i_i115626_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp10_i_i115626_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp10_i_i115626_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp10_i_i115626_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_tmp11_i_i115729_processfpga1197 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp11_i_i115729_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp11_i_i115729_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp11_i_i115729_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp11_i_i115729_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp11_i_i115729_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp11_i_i115729_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp11_i_i115729_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_tmp11_i_i115729_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp11_i_i115729_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp11_i_i115729_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp11_i_i115729_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_tmp12_i_i115827_processfpga1180 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp12_i_i115827_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp12_i_i115827_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp12_i_i115827_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp12_i_i115827_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp12_i_i115827_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp12_i_i115827_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp12_i_i115827_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_tmp12_i_i115827_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp12_i_i115827_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp12_i_i115827_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp12_i_i115827_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_tmp13_i_i115928_processfpga1187 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp13_i_i115928_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp13_i_i115928_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp13_i_i115928_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp13_i_i115928_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp13_i_i115928_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp13_i_i115928_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp13_i_i115928_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_tmp13_i_i115928_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp13_i_i115928_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp13_i_i115928_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp13_i_i115928_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_localconn_sync_buffer146_processfpga1192 is
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


    component i_syncbuf_localconn_sync_buffer147_processfpga1182 is
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


    component i_syncbuf_localconn_sync_buffer148_processfpga1175 is
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


    component i_syncbuf_localconn_sync_buffer149_processfpga1168 is
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


    component i_syncbuf_localneurons_sync_buffer102_processfpga1220 is
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


    component i_syncbuf_localneurons_sync_buffer103_processfpga1217 is
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


    component i_syncbuf_localneurons_sync_buffer104_processfpga1208 is
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


    component i_syncbuf_localneurons_sync_buffer58_processfpga1199 is
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
    signal bgTrunc_i_fpgaindvars_iv_next208_processfpga_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal bgTrunc_i_inc32_i_i1192_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal bgTrunc_i_inc_i43_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i16_1gr_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal dupName_0_c_i32_1gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_1_c_i8_0gr_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_multconst_x_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_c_i64_4gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_c_i64_7gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_c_i64_9gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_c_i64_2gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_c_i64_6gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_c_i64_8gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_cond_i_i1179_v_processfpga_processfpga1233_cond_i_i1179_v_v_join_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_cond_i_i1179_v_v_v_processfpga_0_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_v_processfpga_0_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_cond_i_i1179_v_v_v_processfpga_1_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_v_processfpga_1_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_idxprom15_i29_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom30_i_i1186_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom3_i8_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_o_readdata_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_o_readdata_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_o_readdata_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_o_readdata_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_o_readdata_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_o_readdata_3 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_zext_029_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_c_i64_1gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_null_select_byte_en_0_processfpga_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_normls_gep374_processfpga_processfpga1211_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep374_processfpga_processfpga1211_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep374_processfpga_processfpga1211_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep374_processfpga_processfpga1211_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep374_processfpga_processfpga1211_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep385_processfpga_processfpga1227_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep385_processfpga_processfpga1227_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep385_processfpga_processfpga1227_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep385_processfpga_processfpga1227_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep385_processfpga_processfpga1227_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_normls_or367_compressed_processfpga_processfpga1206_normls_or367_bitvec_join_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_normls_zext376_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i16_0gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_1gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_256_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i17_1gr_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i17_undef_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i8_1gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal c_i8_63_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_895_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_895_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_896_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_896_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_897_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_897_processfpga_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_900_xor_or_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_901_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_902_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_902_xor_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going685_processfpga_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going685_processfpga_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going685_processfpga_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going685_processfpga_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i16_i_0_i3_i1292_pop107_processfpga_out_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_pop_i16_i_0_i3_i1292_pop107_processfpga_out_feedback_stall_out_107 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv207_pop106_processfpga_out_data_out : STD_LOGIC_VECTOR (16 downto 0);
    signal i_acl_pop_i17_fpgaindvars_iv207_pop106_processfpga_out_feedback_stall_out_106 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_feedback_stall_out_109 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_destmodcounter_0_i_i11511291_pop108_processfpga_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_destmodcounter_0_i_i11511291_pop108_processfpga_out_feedback_stall_out_108 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i16_i_0_i3_i1292_push107_processfpga_out_feedback_out_107 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_push_i16_i_0_i3_i1292_push107_processfpga_out_feedback_valid_out_107 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv207_push106_processfpga_out_feedback_out_106 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i17_fpgaindvars_iv207_push106_processfpga_out_feedback_valid_out_106 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond686_processfpga_out_feedback_out_20 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond686_processfpga_out_feedback_valid_out_20 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id803_push109_processfpga_out_feedback_out_109 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_acl_hw_wg_id803_push109_processfpga_out_feedback_valid_out_109 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_destmodcounter_0_i_i11511291_push108_processfpga_out_feedback_out_108 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_destmodcounter_0_i_i11511291_push108_processfpga_out_feedback_valid_out_108 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp12_i_i1163_processfpga_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp12_i_i1163_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp7_i21_i_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp7_i21_i_xor_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_i_i40_i_processfpga_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_cmp_i_i40_i_processfpga_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_cmp_i_i40_i_processfpga_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_cmp_i_i40_i_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond209_processfpga_a : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond209_processfpga_b : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond209_processfpga_o : STD_LOGIC_VECTOR (18 downto 0);
    signal i_exitcond209_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga163_processfpga_out_dest_data_out_75_0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_ffwd_dst_unnamed_processfpga164_processfpga_out_dest_data_out_72_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga165_processfpga_out_dest_data_out_72_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga166_processfpga_out_dest_data_out_72_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga167_processfpga_out_dest_data_out_79_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_unnamed_processfpga168_processfpga_out_dest_data_out_72_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga169_processfpga_out_dest_data_out_72_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga170_processfpga_out_dest_data_out_72_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga171_processfpga_out_dest_data_out_73_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga172_processfpga_out_dest_data_out_73_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga173_processfpga_out_intel_reserved_ffwd_81_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fpgaindvars_iv207_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv207_replace_phi_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_fpgaindvars_iv_next208_processfpga_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next208_processfpga_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next208_processfpga_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_fpgaindvars_iv_next208_processfpga_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_idxprom15_i29_i_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom15_i29_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom15_i29_i_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_idxprom3_i8_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom3_i8_i_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_inc32_i_i1192_processfpga_a : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc32_i_i1192_processfpga_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc32_i_i1192_processfpga_o : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc32_i_i1192_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_inc_i43_i_processfpga_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_i43_i_processfpga_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_i43_i_processfpga_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_i43_i_processfpga_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_load_normls_load375_processfpga_out_normls_load375_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load375_processfpga_out_normls_load375_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load375_processfpga_out_normls_load375_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_normls_load375_processfpga_out_normls_load375_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load375_processfpga_out_normls_load375_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load375_processfpga_out_normls_load375_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load375_processfpga_out_normls_load375_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load375_processfpga_out_o_readdata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_normls_load386_processfpga_out_normls_load386_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load386_processfpga_out_normls_load386_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load386_processfpga_out_normls_load386_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_normls_load386_processfpga_out_normls_load386_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load386_processfpga_out_normls_load386_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load386_processfpga_out_normls_load386_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load386_processfpga_out_normls_load386_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load386_processfpga_out_o_readdata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_tmp10_i_i115626_processfpga_out_o_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_tmp11_i_i115729_processfpga_out_o_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_tmp12_i_i115827_processfpga_out_o_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_tmp13_i_i115928_processfpga_out_o_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_memcoalesce_localneurons_zext_029_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_localneurons_zext_029_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_memcoalesce_null_bitcast_0_processfpga_vt_const_2_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_memcoalesce_null_bitcast_0_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_null_bitcast_0_processfpga_vt_select_63_b : STD_LOGIC_VECTOR (60 downto 0);
    signal i_normls_shl377_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_normls_shl377_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_normls_zext376_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_normls_zext376_processfpga_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_not_cmp12_i_i1163_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_not_phi_decision1500_or1503_and_processfpga_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_not_phi_decision1500_or1503_and_processfpga_vt_const_7_q : STD_LOGIC_VECTOR (1 downto 0);
    signal i_not_phi_decision1500_or1503_and_processfpga_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_not_phi_decision1500_or1503_and_processfpga_vt_select_5_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_not_phi_decision1500_or1503_processfpga_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_not_phi_decision1500_or1503_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision1500_or1503_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision1500_or1506_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision1500_or1507_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_scalarizer_0134_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_scalarizer_0134_processfpga_vt_select_63_b : STD_LOGIC_VECTOR (60 downto 0);
    signal i_syncbuf_localconn_sync_buffer146_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localconn_sync_buffer147_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localconn_sync_buffer148_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localconn_sync_buffer149_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer102_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer103_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer104_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer58_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_tobool_i42_i_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1230_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_processfpga1230_vt_const_7_q : STD_LOGIC_VECTOR (6 downto 0);
    signal i_unnamed_processfpga1230_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_processfpga1230_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1244_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal leftShiftStage0Idx1Rng8_uid530_i_normls_shl377_processfpga_processfpga1216_shift_x_in : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1Rng8_uid530_i_normls_shl377_processfpga_processfpga1216_shift_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1_uid531_i_normls_shl377_processfpga_processfpga1216_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0_uid533_i_normls_shl377_processfpga_processfpga1216_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid533_i_normls_shl377_processfpga_processfpga1216_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_scalarizer_0134_processfpga_processfpga1236_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist5_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_7_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist7_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_7_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist9_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_7_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist11_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_7_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist12_i_unnamed_processfpga1244_q_24_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_unnamed_processfpga1244_q_25_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_unnamed_processfpga1244_q_26_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_i_phi_decision1500_or1503_processfpga_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_i_phi_decision1500_or1503_processfpga_q_16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_i_load_tmp11_i_i115729_processfpga_out_o_readdata_2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist20_i_cmp_i_i40_i_processfpga_c_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_i_cmp7_i21_i_xor_processfpga_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_i_cmp7_i21_i_processfpga_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_i_cmp7_i21_i_processfpga_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_i_cmp12_i_i1163_processfpga_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_i_cmp12_i_i1163_processfpga_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_i_cmp12_i_i1163_processfpga_q_16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist28_i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_data_out_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist29_i_acl_pop_i16_i_0_i3_i1292_pop107_processfpga_out_data_out_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist30_sync_in_aunroll_x_in_c0_eni2951_1_24_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_sync_in_aunroll_x_in_i_valid_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_sync_in_aunroll_x_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_sync_in_aunroll_x_in_i_valid_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_sync_in_aunroll_x_in_i_valid_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_sync_in_aunroll_x_in_i_valid_17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_sync_in_aunroll_x_in_i_valid_18_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_sync_in_aunroll_x_in_i_valid_19_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_sync_in_aunroll_x_in_i_valid_20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_sync_in_aunroll_x_in_i_valid_24_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist43_sync_in_aunroll_x_in_i_valid_25_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist44_sync_in_aunroll_x_in_i_valid_26_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist46_i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_1_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist47_i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist48_i_arrayidx4_5_i15_i_processfpga_processfpga1184_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist49_i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist50_i_arrayidx4_4_i14_i_processfpga_processfpga1177_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist51_i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist52_i_arrayidx4_3_i13_i_processfpga_processfpga1194_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist53_i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist54_i_arrayidx4_2_i12_i_processfpga_processfpga1170_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist55_i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist56_i_arrayidx16_5_i37_i_processfpga_processfpga1210_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist57_i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_1_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist58_i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist59_i_arrayidx16_4_i36_i_processfpga_processfpga1219_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist60_i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_1_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist61_i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist62_i_arrayidx16_2_i34_i_processfpga_processfpga1222_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist63_i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist64_bgTrunc_i_inc_i43_i_processfpga_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_reset0 : std_logic;
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_i : signal is true;
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq : std_logic;
    attribute preserve of redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq : signal is true;
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q : signal is true;
    signal redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_outputreg_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_reset0 : std_logic;
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_i : signal is true;
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq : std_logic;
    attribute preserve of redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq : signal is true;
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q : signal is true;
    signal redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_reset0 : std_logic;
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_i : signal is true;
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq : std_logic;
    attribute preserve of redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq : signal is true;
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q : signal is true;
    signal redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_reset0 : std_logic;
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_i : signal is true;
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq : std_logic;
    attribute preserve of redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq : signal is true;
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q : signal is true;
    signal redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_inputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_reset0 : std_logic;
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_i : signal is true;
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq : std_logic;
    attribute preserve of redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq : signal is true;
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q : signal is true;
    signal redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_inputreg_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_outputreg_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_reset0 : std_logic;
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_i : signal is true;
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq : std_logic;
    attribute preserve of redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq : signal is true;
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q : signal is true;
    signal redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_inputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_reset0 : std_logic;
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_i : signal is true;
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq : std_logic;
    attribute preserve of redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq : signal is true;
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q : signal is true;
    signal redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_inputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_reset0 : std_logic;
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_i : signal is true;
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq : std_logic;
    attribute preserve of redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq : signal is true;
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q : signal is true;
    signal redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_inputreg_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_outputreg_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_reset0 : std_logic;
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_rdcnt_i : signal is true;
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_sticky_ena_q : signal is true;
    signal redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_inputreg_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_reset0 : std_logic;
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_i : signal is true;
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_eq : std_logic;
    attribute preserve of redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_eq : signal is true;
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_sticky_ena_q : signal is true;
    signal redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_reset0 : std_logic;
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_i : signal is true;
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_eq : std_logic;
    attribute preserve of redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_eq : signal is true;
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_sticky_ena_q : signal is true;
    signal redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist32_sync_in_aunroll_x_in_i_valid_3(DELAY,699)
    redist32_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist32_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist33_sync_in_aunroll_x_in_i_valid_4(DELAY,700)
    redist33_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist32_sync_in_aunroll_x_in_i_valid_3_q, xout => redist33_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_ffwd_dst_unnamed_processfpga164_processfpga(BLACKBOX,292)@5
    thei_ffwd_dst_unnamed_processfpga164_processfpga : i_ffwd_dst_unnamed_processfpga164_processfpga1171
    PORT MAP (
        in_intel_reserved_ffwd_72_0 => in_intel_reserved_ffwd_72_0,
        in_stall_in => GND_q,
        in_valid_in => redist33_sync_in_aunroll_x_in_i_valid_4_q,
        out_dest_data_out_72_0 => i_ffwd_dst_unnamed_processfpga164_processfpga_out_dest_data_out_72_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_c_i64_2gr_x(CONSTANT,118)
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_c_i64_2gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000010";

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_multconst_x(CONSTANT,72)
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_multconst_x_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_shift0(BITSHIFT,600)@2
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_shift0_qint <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_shift0_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_shift0_qint(10 downto 0);

    -- i_idxprom15_i29_i_processfpga_vt_const_63(CONSTANT,305)
    i_idxprom15_i29_i_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_unnamed_processfpga172_processfpga(BLACKBOX,300)@1
    thei_ffwd_dst_unnamed_processfpga172_processfpga : i_ffwd_dst_unnamed_processfpga172_processfpga1242
    PORT MAP (
        in_intel_reserved_ffwd_73_0 => in_intel_reserved_ffwd_73_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_73_0 => i_ffwd_dst_unnamed_processfpga172_processfpga_out_dest_data_out_73_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga163_processfpga(BLACKBOX,291)@1
    thei_ffwd_dst_unnamed_processfpga163_processfpga : i_ffwd_dst_unnamed_processfpga163_processfpga1162
    PORT MAP (
        in_intel_reserved_ffwd_75_0 => in_intel_reserved_ffwd_75_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_75_0 => i_ffwd_dst_unnamed_processfpga163_processfpga_out_dest_data_out_75_0,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv_next208_processfpga(ADD,303)@1
    i_fpgaindvars_iv_next208_processfpga_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv207_replace_phi_processfpga_q);
    i_fpgaindvars_iv_next208_processfpga_b <= STD_LOGIC_VECTOR("0" & c_i17_1gr_q);
    i_fpgaindvars_iv_next208_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next208_processfpga_a) + UNSIGNED(i_fpgaindvars_iv_next208_processfpga_b));
    i_fpgaindvars_iv_next208_processfpga_q <= i_fpgaindvars_iv_next208_processfpga_o(17 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next208_processfpga_sel_x(BITSELECT,2)@1
    bgTrunc_i_fpgaindvars_iv_next208_processfpga_sel_x_b <= i_fpgaindvars_iv_next208_processfpga_q(16 downto 0);

    -- i_acl_push_i17_fpgaindvars_iv207_push106_processfpga(BLACKBOX,282)@1
    -- out out_feedback_out_106@20000000
    -- out out_feedback_valid_out_106@20000000
    thei_acl_push_i17_fpgaindvars_iv207_push106_processfpga : i_acl_push_i17_fpgaindvars_iv207_push106_processfpga1249
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next208_processfpga_sel_x_b,
        in_feedback_stall_in_106 => i_acl_pop_i17_fpgaindvars_iv207_pop106_processfpga_out_feedback_stall_out_106,
        in_stall_in => GND_q,
        in_unnamed_processFPGA447 => i_unnamed_processfpga1244_q,
        in_valid_in => in_i_valid,
        out_feedback_out_106 => i_acl_push_i17_fpgaindvars_iv207_push106_processfpga_out_feedback_out_106,
        out_feedback_valid_out_106 => i_acl_push_i17_fpgaindvars_iv207_push106_processfpga_out_feedback_valid_out_106,
        clock => clock,
        resetn => resetn
    );

    -- c_i17_undef(CONSTANT,261)
    c_i17_undef_q <= "00000000000000000";

    -- i_acl_pop_i17_fpgaindvars_iv207_pop106_processfpga(BLACKBOX,278)@1
    -- out out_feedback_stall_out_106@20000000
    thei_acl_pop_i17_fpgaindvars_iv207_pop106_processfpga : i_acl_pop_i17_fpgaindvars_iv207_pop106_processfpga1164
    PORT MAP (
        in_data_in => c_i17_undef_q,
        in_dir => in_c0_eni2951_1,
        in_feedback_in_106 => i_acl_push_i17_fpgaindvars_iv207_push106_processfpga_out_feedback_out_106,
        in_feedback_valid_in_106 => i_acl_push_i17_fpgaindvars_iv207_push106_processfpga_out_feedback_valid_out_106,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i17_fpgaindvars_iv207_pop106_processfpga_out_data_out,
        out_feedback_stall_out_106 => i_acl_pop_i17_fpgaindvars_iv207_pop106_processfpga_out_feedback_stall_out_106,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv207_replace_phi_processfpga(MUX,302)@1
    i_fpgaindvars_iv207_replace_phi_processfpga_s <= in_c0_eni2951_1;
    i_fpgaindvars_iv207_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv207_replace_phi_processfpga_s, i_acl_pop_i17_fpgaindvars_iv207_pop106_processfpga_out_data_out, i_ffwd_dst_unnamed_processfpga163_processfpga_out_dest_data_out_75_0)
    BEGIN
        CASE (i_fpgaindvars_iv207_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv207_replace_phi_processfpga_q <= i_acl_pop_i17_fpgaindvars_iv207_pop106_processfpga_out_data_out;
            WHEN "1" => i_fpgaindvars_iv207_replace_phi_processfpga_q <= i_ffwd_dst_unnamed_processfpga163_processfpga_out_dest_data_out_75_0;
            WHEN OTHERS => i_fpgaindvars_iv207_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- c_i17_1gr(CONSTANT,260)
    c_i17_1gr_q <= "11111111111111111";

    -- i_exitcond209_processfpga(COMPARE,290)@1
    i_exitcond209_processfpga_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => c_i17_1gr_q(16)) & c_i17_1gr_q));
    i_exitcond209_processfpga_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => i_fpgaindvars_iv207_replace_phi_processfpga_q(16)) & i_fpgaindvars_iv207_replace_phi_processfpga_q));
    i_exitcond209_processfpga_o <= STD_LOGIC_VECTOR(SIGNED(i_exitcond209_processfpga_a) - SIGNED(i_exitcond209_processfpga_b));
    i_exitcond209_processfpga_c(0) <= i_exitcond209_processfpga_o(18);

    -- i_unnamed_processfpga1244(LOGICAL,369)@1
    i_unnamed_processfpga1244_q <= i_exitcond209_processfpga_c and i_ffwd_dst_unnamed_processfpga172_processfpga_out_dest_data_out_73_0;

    -- dupName_0_c_i16_1gr_x(CONSTANT,5)
    dupName_0_c_i16_1gr_x_q <= "0000000000000001";

    -- i_inc32_i_i1192_processfpga(ADD,314)@1
    i_inc32_i_i1192_processfpga_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i16_i_0_i3_i1292_pop107_processfpga_out_data_out);
    i_inc32_i_i1192_processfpga_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i16_1gr_x_q);
    i_inc32_i_i1192_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc32_i_i1192_processfpga_a) + UNSIGNED(i_inc32_i_i1192_processfpga_b));
    i_inc32_i_i1192_processfpga_q <= i_inc32_i_i1192_processfpga_o(16 downto 0);

    -- bgTrunc_i_inc32_i_i1192_processfpga_sel_x(BITSELECT,3)@1
    bgTrunc_i_inc32_i_i1192_processfpga_sel_x_b <= i_inc32_i_i1192_processfpga_q(15 downto 0);

    -- i_acl_push_i16_i_0_i3_i1292_push107_processfpga(BLACKBOX,281)@1
    -- out out_feedback_out_107@20000000
    -- out out_feedback_valid_out_107@20000000
    thei_acl_push_i16_i_0_i3_i1292_push107_processfpga : i_acl_push_i16_i_0_i3_i1292_push107_processfpga1247
    PORT MAP (
        in_data_in => bgTrunc_i_inc32_i_i1192_processfpga_sel_x_b,
        in_feedback_stall_in_107 => i_acl_pop_i16_i_0_i3_i1292_pop107_processfpga_out_feedback_stall_out_107,
        in_stall_in => GND_q,
        in_unnamed_processFPGA447 => i_unnamed_processfpga1244_q,
        in_valid_in => in_i_valid,
        out_feedback_out_107 => i_acl_push_i16_i_0_i3_i1292_push107_processfpga_out_feedback_out_107,
        out_feedback_valid_out_107 => i_acl_push_i16_i_0_i3_i1292_push107_processfpga_out_feedback_valid_out_107,
        clock => clock,
        resetn => resetn
    );

    -- c_i16_0gr(CONSTANT,256)
    c_i16_0gr_q <= "0000000000000000";

    -- i_acl_pop_i16_i_0_i3_i1292_pop107_processfpga(BLACKBOX,277)@1
    -- out out_feedback_stall_out_107@20000000
    thei_acl_pop_i16_i_0_i3_i1292_pop107_processfpga : i_acl_pop_i16_i_0_i3_i1292_pop107_processfpga1166
    PORT MAP (
        in_data_in => c_i16_0gr_q,
        in_dir => in_c0_eni2951_1,
        in_feedback_in_107 => i_acl_push_i16_i_0_i3_i1292_push107_processfpga_out_feedback_out_107,
        in_feedback_valid_in_107 => i_acl_push_i16_i_0_i3_i1292_push107_processfpga_out_feedback_valid_out_107,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i16_i_0_i3_i1292_pop107_processfpga_out_data_out,
        out_feedback_stall_out_107 => i_acl_pop_i16_i_0_i3_i1292_pop107_processfpga_out_feedback_stall_out_107,
        clock => clock,
        resetn => resetn
    );

    -- redist29_i_acl_pop_i16_i_0_i3_i1292_pop107_processfpga_out_data_out_1(DELAY,696)
    redist29_i_acl_pop_i16_i_0_i3_i1292_pop107_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i16_i_0_i3_i1292_pop107_processfpga_out_data_out, xout => redist29_i_acl_pop_i16_i_0_i3_i1292_pop107_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_idxprom3_i8_i_processfpga_sel_x(BITSELECT,185)@2
    i_idxprom3_i8_i_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(redist29_i_acl_pop_i16_i_0_i3_i1292_pop107_processfpga_out_data_out_1_q(15 downto 0)), 64));

    -- i_idxprom3_i8_i_processfpga_vt_select_15(BITSELECT,313)@2
    i_idxprom3_i8_i_processfpga_vt_select_15_b <= i_idxprom3_i8_i_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom3_i8_i_processfpga_vt_join(BITJOIN,312)@2
    i_idxprom3_i8_i_processfpga_vt_join_q <= i_idxprom15_i29_i_processfpga_vt_const_63_q & i_idxprom3_i8_i_processfpga_vt_select_15_b;

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select(BITSELECT,665)@2
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b <= i_idxprom3_i8_i_processfpga_vt_join_q(17 downto 0);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c <= i_idxprom3_i8_i_processfpga_vt_join_q(63 downto 54);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d <= i_idxprom3_i8_i_processfpga_vt_join_q(35 downto 18);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e <= i_idxprom3_i8_i_processfpga_vt_join_q(53 downto 36);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_add_1(ADD,601)@2 + 1
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_shift0_q);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_add_1_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_shift2(BITSHIFT,602)@3
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_shift2_qint <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_add_1_q & "00";
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_shift2_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_15(BITSHIFT,450)@3
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_15_qint <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_15_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_shift0(BITSHIFT,603)@2
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_shift0_qint <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_shift0_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_add_1(ADD,604)@2 + 1
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_shift0_q);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_add_1_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_shift2(BITSHIFT,605)@3
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_shift2_qint <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_add_1_q & "00";
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_shift2_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_14(BITSHIFT,449)@3
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_14_qint <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_14_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_join_16(BITJOIN,451)@3
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_join_16_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_15_q & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_14_q;

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_shift0(BITSHIFT,606)@2
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_shift0_qint <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_shift0_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_add_1(ADD,607)@2 + 1
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_shift0_q);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_add_1_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_shift2(BITSHIFT,608)@3
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_shift2_qint <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_add_1_q & "00";
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_shift2_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_12(BITSHIFT,447)@3
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_12_qint <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_12_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_shift0(BITSHIFT,597)@2
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_shift0_qint <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_shift0_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_add_1(ADD,598)@2 + 1
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_shift0_q);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_add_1_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_shift2(BITSHIFT,599)@3
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_shift2_qint <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_add_1_q & "00";
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_shift2_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_join_13(BITJOIN,448)@3
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_join_13_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_align_12_q & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_im0_shift2_q;

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_result_add_0_0(ADD,452)@3
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_join_13_q);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_join_16_q);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_result_add_0_0_b));
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_result_add_0_0_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_extender_x(BITJOIN,113)@3
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_extender_x_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_multconst_x_q & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_trunc_sel_x(BITSELECT,115)@3
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_trunc_sel_x_b <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_extender_x_q(63 downto 0);

    -- redist54_i_arrayidx4_2_i12_i_processfpga_processfpga1170_trunc_sel_x_b_1(DELAY,721)
    redist54_i_arrayidx4_2_i12_i_processfpga_processfpga1170_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_2_i12_i_processfpga_processfpga1170_trunc_sel_x_b, xout => redist54_i_arrayidx4_2_i12_i_processfpga_processfpga1170_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localconn_sync_buffer149_processfpga(BLACKBOX,359)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_localconn_sync_buffer149_processfpga : i_syncbuf_localconn_sync_buffer149_processfpga1168
    PORT MAP (
        in_buffer_in => in_localConn,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist32_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_localconn_sync_buffer149_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_add_x(ADD,116)@4
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localconn_sync_buffer149_processfpga_out_buffer_out);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_add_x_b <= STD_LOGIC_VECTOR("0" & redist54_i_arrayidx4_2_i12_i_processfpga_processfpga1170_trunc_sel_x_b_1_q);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_2_i12_i_processfpga_processfpga1170_add_x_a) + UNSIGNED(i_arrayidx4_2_i12_i_processfpga_processfpga1170_add_x_b));
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_add_x_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_add_x_o(64 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_trunc_sel_x(BITSELECT,107)@4
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_trunc_sel_x_b <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_add_x_q(63 downto 0);

    -- redist55_i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_trunc_sel_x_b_1(DELAY,722)
    redist55_i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_trunc_sel_x_b, xout => redist55_i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_add_x(ADD,110)@5
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist55_i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_2_i12_i_processfpga_processfpga1170_c_i64_2gr_x_q);
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_add_x_a) + UNSIGNED(i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_add_x_b));
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_add_x_q <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_1_trunc_sel_x(BITSELECT,108)@5
    i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_1_trunc_sel_x_b <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_0_add_x_q(63 downto 0);

    -- i_load_tmp10_i_i115626_processfpga(BLACKBOX,318)@5
    -- in in_i_stall@20000000
    -- out out_o_readdata@10
    -- out out_o_stall@9
    -- out out_o_valid@10
    -- out out_tmp10_i_i115626_avm_address@20000000
    -- out out_tmp10_i_i115626_avm_burstcount@20000000
    -- out out_tmp10_i_i115626_avm_byteenable@20000000
    -- out out_tmp10_i_i115626_avm_enable@20000000
    -- out out_tmp10_i_i115626_avm_read@20000000
    -- out out_tmp10_i_i115626_avm_write@20000000
    -- out out_tmp10_i_i115626_avm_writedata@20000000
    thei_load_tmp10_i_i115626_processfpga : i_load_tmp10_i_i115626_processfpga1173
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx4_2_i12_i_processfpga_processfpga1170_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga164_processfpga_out_dest_data_out_72_0,
        in_i_stall => GND_q,
        in_i_valid => redist33_sync_in_aunroll_x_in_i_valid_4_q,
        in_tmp10_i_i115626_avm_readdata => in_tmp10_i_i115626_avm_readdata,
        in_tmp10_i_i115626_avm_readdatavalid => in_tmp10_i_i115626_avm_readdatavalid,
        in_tmp10_i_i115626_avm_waitrequest => in_tmp10_i_i115626_avm_waitrequest,
        in_tmp10_i_i115626_avm_writeack => in_tmp10_i_i115626_avm_writeack,
        out_o_readdata => i_load_tmp10_i_i115626_processfpga_out_o_readdata,
        out_tmp10_i_i115626_avm_address => i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_address,
        out_tmp10_i_i115626_avm_burstcount => i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_burstcount,
        out_tmp10_i_i115626_avm_byteenable => i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_byteenable,
        out_tmp10_i_i115626_avm_enable => i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_enable,
        out_tmp10_i_i115626_avm_read => i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_read,
        out_tmp10_i_i115626_avm_write => i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_write,
        out_tmp10_i_i115626_avm_writedata => i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,9)
    out_tmp10_i_i115626_avm_address <= i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_address;
    out_tmp10_i_i115626_avm_enable <= i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_enable;
    out_tmp10_i_i115626_avm_read <= i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_read;
    out_tmp10_i_i115626_avm_write <= i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_write;
    out_tmp10_i_i115626_avm_writedata <= i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_writedata;
    out_tmp10_i_i115626_avm_byteenable <= i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_byteenable;
    out_tmp10_i_i115626_avm_burstcount <= i_load_tmp10_i_i115626_processfpga_out_tmp10_i_i115626_avm_burstcount;

    -- i_ffwd_dst_unnamed_processfpga165_processfpga(BLACKBOX,293)@5
    thei_ffwd_dst_unnamed_processfpga165_processfpga : i_ffwd_dst_unnamed_processfpga165_processfpga1178
    PORT MAP (
        in_intel_reserved_ffwd_72_0 => in_intel_reserved_ffwd_72_0,
        in_stall_in => GND_q,
        in_valid_in => redist33_sync_in_aunroll_x_in_i_valid_4_q,
        out_dest_data_out_72_0 => i_ffwd_dst_unnamed_processfpga165_processfpga_out_dest_data_out_72_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_c_i64_6gr_x(CONSTANT,146)
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_c_i64_6gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000110";

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_shift0(BITSHIFT,624)@2
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_shift0_qint <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_shift0_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_add_1(ADD,625)@2 + 1
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c);
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_shift0_q);
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_add_1_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_shift2(BITSHIFT,626)@3
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_shift2_qint <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_add_1_q & "00";
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_shift2_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_15(BITSHIFT,486)@3
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_15_qint <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_15_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_shift0(BITSHIFT,627)@2
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_shift0_qint <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_shift0_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_add_1(ADD,628)@2 + 1
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d);
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_shift0_q);
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_add_1_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_shift2(BITSHIFT,629)@3
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_shift2_qint <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_add_1_q & "00";
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_shift2_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_14(BITSHIFT,485)@3
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_14_qint <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_14_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_join_16(BITJOIN,487)@3
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_join_16_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_15_q & i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_14_q;

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_shift0(BITSHIFT,630)@2
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_shift0_qint <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_shift0_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_add_1(ADD,631)@2 + 1
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e);
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_shift0_q);
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_add_1_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_shift2(BITSHIFT,632)@3
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_shift2_qint <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_add_1_q & "00";
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_shift2_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_12(BITSHIFT,483)@3
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_12_qint <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_12_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_shift0(BITSHIFT,621)@2
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_shift0_qint <= i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_shift0_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_add_1(ADD,622)@2 + 1
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b);
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_shift0_q);
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_add_1_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_shift2(BITSHIFT,623)@3
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_shift2_qint <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_add_1_q & "00";
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_shift2_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_join_13(BITJOIN,484)@3
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_join_13_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_align_12_q & i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_im0_shift2_q;

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_result_add_0_0(ADD,488)@3
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_join_13_q);
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_join_16_q);
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_result_add_0_0_b));
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_result_add_0_0_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_extender_x(BITJOIN,141)@3
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_extender_x_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_multconst_x_q & i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_trunc_sel_x(BITSELECT,143)@3
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_trunc_sel_x_b <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_mult_extender_x_q(63 downto 0);

    -- redist50_i_arrayidx4_4_i14_i_processfpga_processfpga1177_trunc_sel_x_b_1(DELAY,717)
    redist50_i_arrayidx4_4_i14_i_processfpga_processfpga1177_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_4_i14_i_processfpga_processfpga1177_trunc_sel_x_b, xout => redist50_i_arrayidx4_4_i14_i_processfpga_processfpga1177_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localconn_sync_buffer148_processfpga(BLACKBOX,358)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_localconn_sync_buffer148_processfpga : i_syncbuf_localconn_sync_buffer148_processfpga1175
    PORT MAP (
        in_buffer_in => in_localConn,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist32_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_localconn_sync_buffer148_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_add_x(ADD,144)@4
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localconn_sync_buffer148_processfpga_out_buffer_out);
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_add_x_b <= STD_LOGIC_VECTOR("0" & redist50_i_arrayidx4_4_i14_i_processfpga_processfpga1177_trunc_sel_x_b_1_q);
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_4_i14_i_processfpga_processfpga1177_add_x_a) + UNSIGNED(i_arrayidx4_4_i14_i_processfpga_processfpga1177_add_x_b));
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_add_x_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_add_x_o(64 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_trunc_sel_x(BITSELECT,135)@4
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_trunc_sel_x_b <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_add_x_q(63 downto 0);

    -- redist51_i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_trunc_sel_x_b_1(DELAY,718)
    redist51_i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_trunc_sel_x_b, xout => redist51_i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_add_x(ADD,138)@5
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist51_i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_4_i14_i_processfpga_processfpga1177_c_i64_6gr_x_q);
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_add_x_a) + UNSIGNED(i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_add_x_b));
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_add_x_q <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_1_trunc_sel_x(BITSELECT,136)@5
    i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_1_trunc_sel_x_b <= i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_0_add_x_q(63 downto 0);

    -- i_load_tmp12_i_i115827_processfpga(BLACKBOX,320)@5
    -- in in_i_stall@20000000
    -- out out_o_readdata@10
    -- out out_o_stall@9
    -- out out_o_valid@10
    -- out out_tmp12_i_i115827_avm_address@20000000
    -- out out_tmp12_i_i115827_avm_burstcount@20000000
    -- out out_tmp12_i_i115827_avm_byteenable@20000000
    -- out out_tmp12_i_i115827_avm_enable@20000000
    -- out out_tmp12_i_i115827_avm_read@20000000
    -- out out_tmp12_i_i115827_avm_write@20000000
    -- out out_tmp12_i_i115827_avm_writedata@20000000
    thei_load_tmp12_i_i115827_processfpga : i_load_tmp12_i_i115827_processfpga1180
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx4_4_i14_i_processfpga_processfpga1177_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga165_processfpga_out_dest_data_out_72_0,
        in_i_stall => GND_q,
        in_i_valid => redist33_sync_in_aunroll_x_in_i_valid_4_q,
        in_tmp12_i_i115827_avm_readdata => in_tmp12_i_i115827_avm_readdata,
        in_tmp12_i_i115827_avm_readdatavalid => in_tmp12_i_i115827_avm_readdatavalid,
        in_tmp12_i_i115827_avm_waitrequest => in_tmp12_i_i115827_avm_waitrequest,
        in_tmp12_i_i115827_avm_writeack => in_tmp12_i_i115827_avm_writeack,
        out_o_readdata => i_load_tmp12_i_i115827_processfpga_out_o_readdata,
        out_tmp12_i_i115827_avm_address => i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_address,
        out_tmp12_i_i115827_avm_burstcount => i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_burstcount,
        out_tmp12_i_i115827_avm_byteenable => i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_byteenable,
        out_tmp12_i_i115827_avm_enable => i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_enable,
        out_tmp12_i_i115827_avm_read => i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_read,
        out_tmp12_i_i115827_avm_write => i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_write,
        out_tmp12_i_i115827_avm_writedata => i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_1_ext_sig_sync_out_x(GPOUT,14)
    out_tmp12_i_i115827_avm_address <= i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_address;
    out_tmp12_i_i115827_avm_enable <= i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_enable;
    out_tmp12_i_i115827_avm_read <= i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_read;
    out_tmp12_i_i115827_avm_write <= i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_write;
    out_tmp12_i_i115827_avm_writedata <= i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_writedata;
    out_tmp12_i_i115827_avm_byteenable <= i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_byteenable;
    out_tmp12_i_i115827_avm_burstcount <= i_load_tmp12_i_i115827_processfpga_out_tmp12_i_i115827_avm_burstcount;

    -- redist34_sync_in_aunroll_x_in_i_valid_8(DELAY,701)
    redist34_sync_in_aunroll_x_in_i_valid_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist33_sync_in_aunroll_x_in_i_valid_4_q, xout => redist34_sync_in_aunroll_x_in_i_valid_8_q, clk => clock, aclr => resetn );

    -- redist35_sync_in_aunroll_x_in_i_valid_9(DELAY,702)
    redist35_sync_in_aunroll_x_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist34_sync_in_aunroll_x_in_i_valid_8_q, xout => redist35_sync_in_aunroll_x_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_unnamed_processfpga166_processfpga(BLACKBOX,294)@10
    thei_ffwd_dst_unnamed_processfpga166_processfpga : i_ffwd_dst_unnamed_processfpga166_processfpga1185
    PORT MAP (
        in_intel_reserved_ffwd_72_0 => in_intel_reserved_ffwd_72_0,
        in_stall_in => GND_q,
        in_valid_in => redist35_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_72_0 => i_ffwd_dst_unnamed_processfpga166_processfpga_out_dest_data_out_72_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_c_i64_8gr_x(CONSTANT,160)
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_c_i64_8gr_x_q <= "0000000000000000000000000000000000000000000000000000000000001000";

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_shift0(BITSHIFT,636)@7
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_shift0_qint <= redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_outputreg_q & "0";
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_shift0_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_shift0_qint(10 downto 0);

    -- redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_notEnable(LOGICAL,750)
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_nor(LOGICAL,751)
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_nor_q <= not (redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_notEnable_q or redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q);

    -- redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_last(CONSTANT,747)
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_last_q <= "01";

    -- redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_cmp(LOGICAL,748)
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_cmp_q <= "1" WHEN redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_last_q = redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_q ELSE "0";

    -- redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_cmpReg(REG,749)
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_cmpReg_q <= STD_LOGIC_VECTOR(redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_sticky_ena(REG,752)
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_nor_q = "1") THEN
                redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_enaAnd(LOGICAL,753)
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_enaAnd_q <= redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q and VCC_q;

    -- redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt(COUNTER,745)
    -- low=0, high=2, step=1, init=0
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq <= '1';
            ELSE
                redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq <= '0';
            END IF;
            IF (redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq = '1') THEN
                redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_i <= redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_i + 2;
            ELSE
                redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_i <= redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_i, 2)));

    -- redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_wraddr(REG,746)
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_wraddr_q <= STD_LOGIC_VECTOR(redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem(DUALMEM,744)
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_ia <= STD_LOGIC_VECTOR(i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c);
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_aa <= redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_wraddr_q;
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_ab <= redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_rdcnt_q;
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_reset0 <= not (resetn);
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_dmem : altera_syncram
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
        clocken1 => redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_reset0,
        clock1 => clock,
        address_a => redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_aa,
        data_a => redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_ab,
        q_b => redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_iq
    );
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_q <= redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_iq(9 downto 0);

    -- redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_outputreg(DELAY,743)
    redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_outputreg : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_mem_q, xout => redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_add_1(ADD,637)@7 + 1
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_outputreg_q);
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_shift0_q);
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_add_1_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_shift2(BITSHIFT,638)@8
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_shift2_qint <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_add_1_q & "00";
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_shift2_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_15(BITSHIFT,504)@8
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_15_qint <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_15_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_shift0(BITSHIFT,639)@7
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_shift0_qint <= redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_outputreg_q & "0";
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_shift0_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_shift0_qint(18 downto 0);

    -- redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_notEnable(LOGICAL,761)
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_nor(LOGICAL,762)
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_nor_q <= not (redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_notEnable_q or redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q);

    -- redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_last(CONSTANT,758)
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_last_q <= "01";

    -- redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_cmp(LOGICAL,759)
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_cmp_q <= "1" WHEN redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_last_q = redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_q ELSE "0";

    -- redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_cmpReg(REG,760)
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_cmpReg_q <= STD_LOGIC_VECTOR(redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_sticky_ena(REG,763)
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_nor_q = "1") THEN
                redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_enaAnd(LOGICAL,764)
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_enaAnd_q <= redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q and VCC_q;

    -- redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt(COUNTER,756)
    -- low=0, high=2, step=1, init=0
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq <= '1';
            ELSE
                redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq <= '0';
            END IF;
            IF (redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq = '1') THEN
                redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_i <= redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_i + 2;
            ELSE
                redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_i <= redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_i, 2)));

    -- redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_wraddr(REG,757)
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_wraddr_q <= STD_LOGIC_VECTOR(redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem(DUALMEM,755)
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_ia <= STD_LOGIC_VECTOR(i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d);
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_aa <= redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_wraddr_q;
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_ab <= redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_rdcnt_q;
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_reset0 <= not (resetn);
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_dmem : altera_syncram
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
        clocken1 => redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_reset0,
        clock1 => clock,
        address_a => redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_aa,
        data_a => redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_ab,
        q_b => redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_iq
    );
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_q <= redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_iq(17 downto 0);

    -- redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_outputreg(DELAY,754)
    redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_mem_q, xout => redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_add_1(ADD,640)@7 + 1
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_outputreg_q);
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_shift0_q);
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_add_1_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_shift2(BITSHIFT,641)@8
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_shift2_qint <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_add_1_q & "00";
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_shift2_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_14(BITSHIFT,503)@8
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_14_qint <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_14_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_join_16(BITJOIN,505)@8
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_join_16_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_15_q & i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_14_q;

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_shift0(BITSHIFT,642)@7
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_shift0_qint <= redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_outputreg_q & "0";
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_shift0_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_shift0_qint(18 downto 0);

    -- redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_notEnable(LOGICAL,772)
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_nor(LOGICAL,773)
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_nor_q <= not (redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_notEnable_q or redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q);

    -- redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_last(CONSTANT,769)
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_last_q <= "01";

    -- redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_cmp(LOGICAL,770)
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_cmp_q <= "1" WHEN redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_last_q = redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_q ELSE "0";

    -- redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_cmpReg(REG,771)
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_cmpReg_q <= STD_LOGIC_VECTOR(redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_sticky_ena(REG,774)
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_nor_q = "1") THEN
                redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_enaAnd(LOGICAL,775)
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_enaAnd_q <= redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q and VCC_q;

    -- redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt(COUNTER,767)
    -- low=0, high=2, step=1, init=0
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq <= '1';
            ELSE
                redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq <= '0';
            END IF;
            IF (redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq = '1') THEN
                redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_i <= redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_i + 2;
            ELSE
                redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_i <= redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_i, 2)));

    -- redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_wraddr(REG,768)
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_wraddr_q <= STD_LOGIC_VECTOR(redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem(DUALMEM,766)
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_ia <= STD_LOGIC_VECTOR(i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e);
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_aa <= redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_wraddr_q;
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_ab <= redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_rdcnt_q;
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_reset0 <= not (resetn);
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_dmem : altera_syncram
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
        clocken1 => redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_reset0,
        clock1 => clock,
        address_a => redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_aa,
        data_a => redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_ab,
        q_b => redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_iq
    );
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_q <= redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_iq(17 downto 0);

    -- redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_outputreg(DELAY,765)
    redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_mem_q, xout => redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_add_1(ADD,643)@7 + 1
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_outputreg_q);
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_shift0_q);
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_add_1_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_shift2(BITSHIFT,644)@8
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_shift2_qint <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_add_1_q & "00";
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_shift2_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_12(BITSHIFT,501)@8
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_12_qint <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_12_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_shift0(BITSHIFT,633)@7
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_shift0_qint <= redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_outputreg_q & "0";
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_shift0_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_shift0_qint(18 downto 0);

    -- redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_notEnable(LOGICAL,739)
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_nor(LOGICAL,740)
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_nor_q <= not (redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_notEnable_q or redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q);

    -- redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_last(CONSTANT,736)
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_last_q <= "01";

    -- redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_cmp(LOGICAL,737)
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_cmp_q <= "1" WHEN redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_last_q = redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_q ELSE "0";

    -- redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_cmpReg(REG,738)
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_cmpReg_q <= STD_LOGIC_VECTOR(redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_sticky_ena(REG,741)
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_nor_q = "1") THEN
                redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_enaAnd(LOGICAL,742)
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_enaAnd_q <= redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q and VCC_q;

    -- redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt(COUNTER,734)
    -- low=0, high=2, step=1, init=0
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq <= '1';
            ELSE
                redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq <= '0';
            END IF;
            IF (redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq = '1') THEN
                redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_i <= redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_i + 2;
            ELSE
                redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_i <= redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_i, 2)));

    -- redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_wraddr(REG,735)
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_wraddr_q <= STD_LOGIC_VECTOR(redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem(DUALMEM,733)
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_ia <= STD_LOGIC_VECTOR(i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b);
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_aa <= redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_wraddr_q;
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_ab <= redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_rdcnt_q;
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_reset0 <= not (resetn);
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_dmem : altera_syncram
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
        clocken1 => redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_reset0,
        clock1 => clock,
        address_a => redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_aa,
        data_a => redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_ab,
        q_b => redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_iq
    );
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_q <= redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_iq(17 downto 0);

    -- redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_outputreg(DELAY,732)
    redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_mem_q, xout => redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_add_1(ADD,634)@7 + 1
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_outputreg_q);
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_shift0_q);
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_add_1_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_shift2(BITSHIFT,635)@8
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_shift2_qint <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_add_1_q & "00";
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_shift2_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_join_13(BITJOIN,502)@8
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_join_13_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_align_12_q & i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_im0_shift2_q;

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_result_add_0_0(ADD,506)@8
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_join_13_q);
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_join_16_q);
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_result_add_0_0_b));
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_result_add_0_0_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_extender_x(BITJOIN,155)@8
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_extender_x_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_multconst_x_q & i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_trunc_sel_x(BITSELECT,157)@8
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_trunc_sel_x_b <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_mult_extender_x_q(63 downto 0);

    -- redist48_i_arrayidx4_5_i15_i_processfpga_processfpga1184_trunc_sel_x_b_1(DELAY,715)
    redist48_i_arrayidx4_5_i15_i_processfpga_processfpga1184_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_5_i15_i_processfpga_processfpga1184_trunc_sel_x_b, xout => redist48_i_arrayidx4_5_i15_i_processfpga_processfpga1184_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localconn_sync_buffer147_processfpga(BLACKBOX,357)@0
    -- in in_i_dependence@9
    -- in in_valid_in@9
    -- out out_buffer_out@9
    -- out out_valid_out@9
    thei_syncbuf_localconn_sync_buffer147_processfpga : i_syncbuf_localconn_sync_buffer147_processfpga1182
    PORT MAP (
        in_buffer_in => in_localConn,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist34_sync_in_aunroll_x_in_i_valid_8_q,
        out_buffer_out => i_syncbuf_localconn_sync_buffer147_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_add_x(ADD,158)@9
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localconn_sync_buffer147_processfpga_out_buffer_out);
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_add_x_b <= STD_LOGIC_VECTOR("0" & redist48_i_arrayidx4_5_i15_i_processfpga_processfpga1184_trunc_sel_x_b_1_q);
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_5_i15_i_processfpga_processfpga1184_add_x_a) + UNSIGNED(i_arrayidx4_5_i15_i_processfpga_processfpga1184_add_x_b));
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_add_x_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_add_x_o(64 downto 0);

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_trunc_sel_x(BITSELECT,149)@9
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_trunc_sel_x_b <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_add_x_q(63 downto 0);

    -- redist49_i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_trunc_sel_x_b_1(DELAY,716)
    redist49_i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_trunc_sel_x_b, xout => redist49_i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_add_x(ADD,152)@10
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist49_i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_5_i15_i_processfpga_processfpga1184_c_i64_8gr_x_q);
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_add_x_a) + UNSIGNED(i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_add_x_b));
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_add_x_q <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_1_trunc_sel_x(BITSELECT,150)@10
    i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_1_trunc_sel_x_b <= i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_0_add_x_q(63 downto 0);

    -- i_load_tmp13_i_i115928_processfpga(BLACKBOX,321)@10
    -- in in_i_stall@20000000
    -- out out_o_readdata@15
    -- out out_o_stall@14
    -- out out_o_valid@15
    -- out out_tmp13_i_i115928_avm_address@20000000
    -- out out_tmp13_i_i115928_avm_burstcount@20000000
    -- out out_tmp13_i_i115928_avm_byteenable@20000000
    -- out out_tmp13_i_i115928_avm_enable@20000000
    -- out out_tmp13_i_i115928_avm_read@20000000
    -- out out_tmp13_i_i115928_avm_write@20000000
    -- out out_tmp13_i_i115928_avm_writedata@20000000
    thei_load_tmp13_i_i115928_processfpga : i_load_tmp13_i_i115928_processfpga1187
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx4_5_i15_i_processfpga_processfpga1184_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga166_processfpga_out_dest_data_out_72_0,
        in_i_stall => GND_q,
        in_i_valid => redist35_sync_in_aunroll_x_in_i_valid_9_q,
        in_tmp13_i_i115928_avm_readdata => in_tmp13_i_i115928_avm_readdata,
        in_tmp13_i_i115928_avm_readdatavalid => in_tmp13_i_i115928_avm_readdatavalid,
        in_tmp13_i_i115928_avm_waitrequest => in_tmp13_i_i115928_avm_waitrequest,
        in_tmp13_i_i115928_avm_writeack => in_tmp13_i_i115928_avm_writeack,
        out_o_readdata => i_load_tmp13_i_i115928_processfpga_out_o_readdata,
        out_tmp13_i_i115928_avm_address => i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_address,
        out_tmp13_i_i115928_avm_burstcount => i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_burstcount,
        out_tmp13_i_i115928_avm_byteenable => i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_byteenable,
        out_tmp13_i_i115928_avm_enable => i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_enable,
        out_tmp13_i_i115928_avm_read => i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_read,
        out_tmp13_i_i115928_avm_write => i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_write,
        out_tmp13_i_i115928_avm_writedata => i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_2_ext_sig_sync_out_x(GPOUT,17)
    out_tmp13_i_i115928_avm_address <= i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_address;
    out_tmp13_i_i115928_avm_enable <= i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_enable;
    out_tmp13_i_i115928_avm_read <= i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_read;
    out_tmp13_i_i115928_avm_write <= i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_write;
    out_tmp13_i_i115928_avm_writedata <= i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_writedata;
    out_tmp13_i_i115928_avm_byteenable <= i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_byteenable;
    out_tmp13_i_i115928_avm_burstcount <= i_load_tmp13_i_i115928_processfpga_out_tmp13_i_i115928_avm_burstcount;

    -- i_ffwd_dst_unnamed_processfpga167_processfpga(BLACKBOX,295)@10
    thei_ffwd_dst_unnamed_processfpga167_processfpga : i_ffwd_dst_unnamed_processfpga167_processfpga1189
    PORT MAP (
        in_intel_reserved_ffwd_79_0 => in_intel_reserved_ffwd_79_0,
        in_stall_in => GND_q,
        in_valid_in => redist35_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_79_0 => i_ffwd_dst_unnamed_processfpga167_processfpga_out_dest_data_out_79_0,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp7_i21_i_processfpga(LOGICAL,287)@10
    i_cmp7_i21_i_processfpga_q <= "1" WHEN i_load_tmp10_i_i115626_processfpga_out_o_readdata = i_ffwd_dst_unnamed_processfpga167_processfpga_out_dest_data_out_79_0 ELSE "0";

    -- i_cmp7_i21_i_xor_processfpga(LOGICAL,288)@10
    i_cmp7_i21_i_xor_processfpga_q <= i_cmp7_i21_i_processfpga_q xor VCC_q;

    -- i_ffwd_dst_unnamed_processfpga168_processfpga(BLACKBOX,296)@10
    thei_ffwd_dst_unnamed_processfpga168_processfpga : i_ffwd_dst_unnamed_processfpga168_processfpga1195
    PORT MAP (
        in_intel_reserved_ffwd_72_0 => in_intel_reserved_ffwd_72_0,
        in_stall_in => GND_q,
        in_valid_in => redist35_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_72_0 => i_ffwd_dst_unnamed_processfpga168_processfpga_out_dest_data_out_72_0,
        clock => clock,
        resetn => resetn
    );

    -- i_phi_decision1500_or1503_processfpga(LOGICAL,350)@10
    i_phi_decision1500_or1503_processfpga_q <= i_ffwd_dst_unnamed_processfpga168_processfpga_out_dest_data_out_72_0 or i_cmp7_i21_i_xor_processfpga_q;

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_c_i64_4gr_x(CONSTANT,76)
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_c_i64_4gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000100";

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_shift0(BITSHIFT,612)@7
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_shift0_qint <= redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_outputreg_q & "0";
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_shift0_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_add_1(ADD,613)@7 + 1
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & redist1_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_c_5_outputreg_q);
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_shift0_q);
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_add_1_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_shift2(BITSHIFT,614)@8
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_shift2_qint <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_add_1_q & "00";
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_shift2_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_15(BITSHIFT,468)@8
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_15_qint <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_15_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_shift0(BITSHIFT,615)@7
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_shift0_qint <= redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_outputreg_q & "0";
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_shift0_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_add_1(ADD,616)@7 + 1
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & redist2_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_d_5_outputreg_q);
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_shift0_q);
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_add_1_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_shift2(BITSHIFT,617)@8
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_shift2_qint <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_add_1_q & "00";
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_shift2_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_14(BITSHIFT,467)@8
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_14_qint <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_14_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_join_16(BITJOIN,469)@8
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_join_16_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_15_q & i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_14_q;

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_shift0(BITSHIFT,618)@7
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_shift0_qint <= redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_outputreg_q & "0";
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_shift0_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_add_1(ADD,619)@7 + 1
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & redist3_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_e_5_outputreg_q);
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_shift0_q);
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_add_1_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_shift2(BITSHIFT,620)@8
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_shift2_qint <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_add_1_q & "00";
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_shift2_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_12(BITSHIFT,465)@8
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_12_qint <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_12_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_shift0(BITSHIFT,609)@7
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_shift0_qint <= redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_outputreg_q & "0";
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_shift0_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_add_1(ADD,610)@7 + 1
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & redist0_i_arrayidx4_2_i12_i_processfpga_processfpga1170_mult_x_bs1_merged_bit_select_b_5_outputreg_q);
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_shift0_q);
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_add_1_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_shift2(BITSHIFT,611)@8
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_shift2_qint <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_add_1_q & "00";
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_shift2_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_join_13(BITJOIN,466)@8
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_join_13_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_align_12_q & i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_im0_shift2_q;

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_result_add_0_0(ADD,470)@8
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_join_13_q);
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_join_16_q);
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_result_add_0_0_b));
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_result_add_0_0_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_extender_x(BITJOIN,127)@8
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_extender_x_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_multconst_x_q & i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_trunc_sel_x(BITSELECT,129)@8
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_trunc_sel_x_b <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_mult_extender_x_q(63 downto 0);

    -- redist52_i_arrayidx4_3_i13_i_processfpga_processfpga1194_trunc_sel_x_b_1(DELAY,719)
    redist52_i_arrayidx4_3_i13_i_processfpga_processfpga1194_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_3_i13_i_processfpga_processfpga1194_trunc_sel_x_b, xout => redist52_i_arrayidx4_3_i13_i_processfpga_processfpga1194_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localconn_sync_buffer146_processfpga(BLACKBOX,356)@0
    -- in in_i_dependence@9
    -- in in_valid_in@9
    -- out out_buffer_out@9
    -- out out_valid_out@9
    thei_syncbuf_localconn_sync_buffer146_processfpga : i_syncbuf_localconn_sync_buffer146_processfpga1192
    PORT MAP (
        in_buffer_in => in_localConn,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist34_sync_in_aunroll_x_in_i_valid_8_q,
        out_buffer_out => i_syncbuf_localconn_sync_buffer146_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_add_x(ADD,130)@9
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localconn_sync_buffer146_processfpga_out_buffer_out);
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_add_x_b <= STD_LOGIC_VECTOR("0" & redist52_i_arrayidx4_3_i13_i_processfpga_processfpga1194_trunc_sel_x_b_1_q);
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_3_i13_i_processfpga_processfpga1194_add_x_a) + UNSIGNED(i_arrayidx4_3_i13_i_processfpga_processfpga1194_add_x_b));
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_add_x_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_add_x_o(64 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_trunc_sel_x(BITSELECT,121)@9
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_trunc_sel_x_b <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_add_x_q(63 downto 0);

    -- redist53_i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_trunc_sel_x_b_1(DELAY,720)
    redist53_i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_trunc_sel_x_b, xout => redist53_i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_add_x(ADD,124)@10
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist53_i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_2_i34_i_processfpga_processfpga1222_c_i64_4gr_x_q);
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_add_x_a) + UNSIGNED(i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_add_x_b));
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_add_x_q <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_1_trunc_sel_x(BITSELECT,122)@10
    i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_1_trunc_sel_x_b <= i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_0_add_x_q(63 downto 0);

    -- i_load_tmp11_i_i115729_processfpga(BLACKBOX,319)@10
    -- in in_i_stall@20000000
    -- out out_o_readdata@15
    -- out out_o_stall@14
    -- out out_o_valid@15
    -- out out_tmp11_i_i115729_avm_address@20000000
    -- out out_tmp11_i_i115729_avm_burstcount@20000000
    -- out out_tmp11_i_i115729_avm_byteenable@20000000
    -- out out_tmp11_i_i115729_avm_enable@20000000
    -- out out_tmp11_i_i115729_avm_read@20000000
    -- out out_tmp11_i_i115729_avm_write@20000000
    -- out out_tmp11_i_i115729_avm_writedata@20000000
    thei_load_tmp11_i_i115729_processfpga : i_load_tmp11_i_i115729_processfpga1197
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx4_3_i13_i_processfpga_processfpga1194_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_phi_decision1500_or1503_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist35_sync_in_aunroll_x_in_i_valid_9_q,
        in_tmp11_i_i115729_avm_readdata => in_tmp11_i_i115729_avm_readdata,
        in_tmp11_i_i115729_avm_readdatavalid => in_tmp11_i_i115729_avm_readdatavalid,
        in_tmp11_i_i115729_avm_waitrequest => in_tmp11_i_i115729_avm_waitrequest,
        in_tmp11_i_i115729_avm_writeack => in_tmp11_i_i115729_avm_writeack,
        out_o_readdata => i_load_tmp11_i_i115729_processfpga_out_o_readdata,
        out_tmp11_i_i115729_avm_address => i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_address,
        out_tmp11_i_i115729_avm_burstcount => i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_burstcount,
        out_tmp11_i_i115729_avm_byteenable => i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_byteenable,
        out_tmp11_i_i115729_avm_enable => i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_enable,
        out_tmp11_i_i115729_avm_read => i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_read,
        out_tmp11_i_i115729_avm_write => i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_write,
        out_tmp11_i_i115729_avm_writedata => i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_3_ext_sig_sync_out_x(GPOUT,20)
    out_tmp11_i_i115729_avm_address <= i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_address;
    out_tmp11_i_i115729_avm_enable <= i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_enable;
    out_tmp11_i_i115729_avm_read <= i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_read;
    out_tmp11_i_i115729_avm_write <= i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_write;
    out_tmp11_i_i115729_avm_writedata <= i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_writedata;
    out_tmp11_i_i115729_avm_byteenable <= i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_byteenable;
    out_tmp11_i_i115729_avm_burstcount <= i_load_tmp11_i_i115729_processfpga_out_tmp11_i_i115729_avm_burstcount;

    -- redist36_sync_in_aunroll_x_in_i_valid_11(DELAY,703)
    redist36_sync_in_aunroll_x_in_i_valid_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist35_sync_in_aunroll_x_in_i_valid_9_q, xout => redist36_sync_in_aunroll_x_in_i_valid_11_q, clk => clock, aclr => resetn );

    -- redist37_sync_in_aunroll_x_in_i_valid_13(DELAY,704)
    redist37_sync_in_aunroll_x_in_i_valid_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist36_sync_in_aunroll_x_in_i_valid_11_q, xout => redist37_sync_in_aunroll_x_in_i_valid_13_q, clk => clock, aclr => resetn );

    -- redist38_sync_in_aunroll_x_in_i_valid_17(DELAY,705)
    redist38_sync_in_aunroll_x_in_i_valid_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist37_sync_in_aunroll_x_in_i_valid_13_q, xout => redist38_sync_in_aunroll_x_in_i_valid_17_q, clk => clock, aclr => resetn );

    -- redist39_sync_in_aunroll_x_in_i_valid_18(DELAY,706)
    redist39_sync_in_aunroll_x_in_i_valid_18 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist38_sync_in_aunroll_x_in_i_valid_17_q, xout => redist39_sync_in_aunroll_x_in_i_valid_18_q, clk => clock, aclr => resetn );

    -- redist40_sync_in_aunroll_x_in_i_valid_19(DELAY,707)
    redist40_sync_in_aunroll_x_in_i_valid_19 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist39_sync_in_aunroll_x_in_i_valid_18_q, xout => redist40_sync_in_aunroll_x_in_i_valid_19_q, clk => clock, aclr => resetn );

    -- redist41_sync_in_aunroll_x_in_i_valid_20(DELAY,708)
    redist41_sync_in_aunroll_x_in_i_valid_20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist40_sync_in_aunroll_x_in_i_valid_19_q, xout => redist41_sync_in_aunroll_x_in_i_valid_20_q, clk => clock, aclr => resetn );

    -- redist15_i_phi_decision1500_or1503_processfpga_q_11(DELAY,682)
    redist15_i_phi_decision1500_or1503_processfpga_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 11, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_phi_decision1500_or1503_processfpga_q, xout => redist15_i_phi_decision1500_or1503_processfpga_q_11_q, clk => clock, aclr => resetn );

    -- i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_c_i64_1gr_x(CONSTANT,205)
    i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_c_i64_1gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000001";

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_c_i64_7gr_x(CONSTANT,90)
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_c_i64_7gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000111";

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_shift0(BITSHIFT,648)@17
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_shift0_qint <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_c & "0";
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_shift0_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_shift0_qint(10 downto 0);

    -- redist18_i_load_tmp11_i_i115729_processfpga_out_o_readdata_2(DELAY,685)
    redist18_i_load_tmp11_i_i115729_processfpga_out_o_readdata_2 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_load_tmp11_i_i115729_processfpga_out_o_readdata, xout => redist18_i_load_tmp11_i_i115729_processfpga_out_o_readdata_2_q, clk => clock, aclr => resetn );

    -- i_memcoalesce_localneurons_zext_029_processfpga_sel_x(BITSELECT,202)@17
    i_memcoalesce_localneurons_zext_029_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(redist18_i_load_tmp11_i_i115729_processfpga_out_o_readdata_2_q(15 downto 0)), 64));

    -- i_memcoalesce_localneurons_zext_029_processfpga_vt_select_15(BITSELECT,327)@17
    i_memcoalesce_localneurons_zext_029_processfpga_vt_select_15_b <= i_memcoalesce_localneurons_zext_029_processfpga_sel_x_b(15 downto 0);

    -- i_memcoalesce_localneurons_zext_029_processfpga_vt_join(BITJOIN,326)@17
    i_memcoalesce_localneurons_zext_029_processfpga_vt_join_q <= i_idxprom15_i29_i_processfpga_vt_const_63_q & i_memcoalesce_localneurons_zext_029_processfpga_vt_select_15_b;

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select(BITSELECT,666)@17
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_b <= i_memcoalesce_localneurons_zext_029_processfpga_vt_join_q(17 downto 0);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_c <= i_memcoalesce_localneurons_zext_029_processfpga_vt_join_q(63 downto 54);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_d <= i_memcoalesce_localneurons_zext_029_processfpga_vt_join_q(35 downto 18);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_e <= i_memcoalesce_localneurons_zext_029_processfpga_vt_join_q(53 downto 36);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_add_1(ADD,649)@17 + 1
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_c);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_shift0_q);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_add_1_a) + UNSIGNED(i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_add_1_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_add_1_o(11 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_shift2(BITSHIFT,650)@18
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_shift2_qint <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_add_1_q & "00";
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_shift2_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_shift2_qint(13 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_15(BITSHIFT,522)@18
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_15_qint <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im3_shift2_q & "00000000000000";
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_15_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_15_qint(27 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_shift0(BITSHIFT,651)@17
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_shift0_qint <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_d & "0";
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_shift0_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_shift0_qint(18 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_add_1(ADD,652)@17 + 1
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_d);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_shift0_q);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_add_1_a) + UNSIGNED(i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_add_1_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_add_1_o(19 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_shift2(BITSHIFT,653)@18
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_shift2_qint <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_add_1_q & "00";
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_shift2_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_shift2_qint(21 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_14(BITSHIFT,521)@18
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_14_qint <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im6_shift2_q & "000000000000000000";
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_14_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_14_qint(39 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_join_16(BITJOIN,523)@18
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_join_16_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_15_q & i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_14_q;

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_shift0(BITSHIFT,654)@17
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_shift0_qint <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_e & "0";
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_shift0_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_shift0_qint(18 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_add_1(ADD,655)@17 + 1
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_e);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_shift0_q);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_add_1_a) + UNSIGNED(i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_add_1_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_add_1_o(19 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_shift2(BITSHIFT,656)@18
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_shift2_qint <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_add_1_q & "00";
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_shift2_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_shift2_qint(21 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_12(BITSHIFT,519)@18
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_12_qint <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im9_shift2_q & "00000000000000";
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_12_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_12_qint(35 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_shift0(BITSHIFT,645)@17
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_shift0_qint <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_b & "0";
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_shift0_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_shift0_qint(18 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_add_1(ADD,646)@17 + 1
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_bs1_merged_bit_select_b);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_shift0_q);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_add_1_a) + UNSIGNED(i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_add_1_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_add_1_o(19 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_shift2(BITSHIFT,647)@18
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_shift2_qint <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_add_1_q & "00";
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_shift2_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_shift2_qint(21 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_join_13(BITJOIN,520)@18
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_join_13_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_align_12_q & i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_im0_shift2_q;

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_result_add_0_0(ADD,524)@18
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_join_13_q);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_join_16_q);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_result_add_0_0_a) + UNSIGNED(i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_result_add_0_0_b));
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_result_add_0_0_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_result_add_0_0_o(68 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_extender_x(BITJOIN,194)@18
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_extender_x_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_multconst_x_q & i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_x_result_add_0_0_q(67 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_trunc_sel_x(BITSELECT,196)@18
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_trunc_sel_x_b <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_mult_extender_x_q(63 downto 0);

    -- redist45_i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_trunc_sel_x_b_1(DELAY,712)
    redist45_i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_trunc_sel_x_b, xout => redist45_i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer58_processfpga(BLACKBOX,363)@0
    -- in in_i_dependence@19
    -- in in_valid_in@19
    -- out out_buffer_out@19
    -- out out_valid_out@19
    thei_syncbuf_localneurons_sync_buffer58_processfpga : i_syncbuf_localneurons_sync_buffer58_processfpga1199
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist39_sync_in_aunroll_x_in_i_valid_18_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer58_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_add_x(ADD,197)@19
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer58_processfpga_out_buffer_out);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_add_x_b <= STD_LOGIC_VECTOR("0" & redist45_i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_trunc_sel_x_b_1_q);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_add_x_a) + UNSIGNED(i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_add_x_b));
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_add_x_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_add_x_o(64 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_trunc_sel_x(BITSELECT,188)@19
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_trunc_sel_x_b <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_add_x_q(63 downto 0);

    -- redist47_i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_trunc_sel_x_b_1(DELAY,714)
    redist47_i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_trunc_sel_x_b, xout => redist47_i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_add_x(ADD,191)@20
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist47_i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_trunc_sel_x_b_1_q);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_4_i36_i_processfpga_processfpga1219_c_i64_7gr_x_q);
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_add_x_a) + UNSIGNED(i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_add_x_b));
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_add_x_q <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_add_x_o(64 downto 0);

    -- i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_1_trunc_sel_x(BITSELECT,189)@20
    i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_1_trunc_sel_x_b <= i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_0_add_x_q(63 downto 0);

    -- redist46_i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_1_trunc_sel_x_b_1(DELAY,713)
    redist46_i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_1_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_1_trunc_sel_x_b, xout => redist46_i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_1_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_add_x(ADD,204)@21
    i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_add_x_a <= STD_LOGIC_VECTOR("0" & redist46_i_memcoalesce_localneurons_gep1_0_processfpga_processfpga1201_dupName_1_trunc_sel_x_b_1_q);
    i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_add_x_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_c_i64_1gr_x_q);
    i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_add_x_a) + UNSIGNED(i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_add_x_b));
    i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_add_x_q <= i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_add_x_o(64 downto 0);

    -- i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_trunc_sel_x(BITSELECT,203)@21
    i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_trunc_sel_x_b <= i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_add_x_q(63 downto 0);

    -- i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x(BLACKBOX,186)@21
    -- in in_i_stall@20000000
    -- out out_o_readdata_0@26
    -- out out_o_readdata_1@26
    -- out out_o_readdata_2@26
    -- out out_o_readdata_3@26
    -- out out_memcoalesce_localNeurons_load_033_avm_address@20000000
    -- out out_memcoalesce_localNeurons_load_033_avm_burstcount@20000000
    -- out out_memcoalesce_localNeurons_load_033_avm_byteenable@20000000
    -- out out_memcoalesce_localNeurons_load_033_avm_enable@20000000
    -- out out_memcoalesce_localNeurons_load_033_avm_read@20000000
    -- out out_memcoalesce_localNeurons_load_033_avm_write@20000000
    -- out out_memcoalesce_localNeurons_load_033_avm_writedata@20000000
    -- out out_o_stall@25
    -- out out_o_valid@26
    thei_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x : i_load_memcoalesce_localneurons_load_033_processfpga1203
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_trunc_sel_x_b,
        in_i_predicate => redist15_i_phi_decision1500_or1503_processfpga_q_11_q,
        in_i_stall => GND_q,
        in_i_valid => redist41_sync_in_aunroll_x_in_i_valid_20_q,
        in_memcoalesce_localNeurons_load_033_avm_readdata => in_memcoalesce_localNeurons_load_033_avm_readdata,
        in_memcoalesce_localNeurons_load_033_avm_readdatavalid => in_memcoalesce_localNeurons_load_033_avm_readdatavalid,
        in_memcoalesce_localNeurons_load_033_avm_waitrequest => in_memcoalesce_localNeurons_load_033_avm_waitrequest,
        in_memcoalesce_localNeurons_load_033_avm_writeack => in_memcoalesce_localNeurons_load_033_avm_writeack,
        out_o_readdata_1 => i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_o_readdata_1,
        out_o_readdata_2 => i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_o_readdata_2,
        out_memcoalesce_localNeurons_load_033_avm_address => i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_address,
        out_memcoalesce_localNeurons_load_033_avm_burstcount => i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_burstcount,
        out_memcoalesce_localNeurons_load_033_avm_byteenable => i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_byteenable,
        out_memcoalesce_localNeurons_load_033_avm_enable => i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_enable,
        out_memcoalesce_localNeurons_load_033_avm_read => i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_read,
        out_memcoalesce_localNeurons_load_033_avm_write => i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_write,
        out_memcoalesce_localNeurons_load_033_avm_writedata => i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_4_ext_sig_sync_out_x(GPOUT,23)
    out_memcoalesce_localNeurons_load_033_avm_address <= i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_address;
    out_memcoalesce_localNeurons_load_033_avm_enable <= i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_enable;
    out_memcoalesce_localNeurons_load_033_avm_read <= i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_read;
    out_memcoalesce_localNeurons_load_033_avm_write <= i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_write;
    out_memcoalesce_localNeurons_load_033_avm_writedata <= i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_writedata;
    out_memcoalesce_localNeurons_load_033_avm_byteenable <= i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_byteenable;
    out_memcoalesce_localNeurons_load_033_avm_burstcount <= i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_033_avm_burstcount;

    -- i_ffwd_dst_unnamed_processfpga169_processfpga(BLACKBOX,297)@14
    thei_ffwd_dst_unnamed_processfpga169_processfpga : i_ffwd_dst_unnamed_processfpga169_processfpga1212
    PORT MAP (
        in_intel_reserved_ffwd_72_0 => in_intel_reserved_ffwd_72_0,
        in_stall_in => GND_q,
        in_valid_in => redist37_sync_in_aunroll_x_in_i_valid_13_q,
        out_dest_data_out_72_0 => i_ffwd_dst_unnamed_processfpga169_processfpga_out_dest_data_out_72_0,
        clock => clock,
        resetn => resetn
    );

    -- redist21_i_cmp7_i21_i_xor_processfpga_q_4(DELAY,688)
    redist21_i_cmp7_i21_i_xor_processfpga_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp7_i21_i_xor_processfpga_q, xout => redist21_i_cmp7_i21_i_xor_processfpga_q_4_q, clk => clock, aclr => resetn );

    -- c_i16_1gr(CONSTANT,257)
    c_i16_1gr_q <= "1111111111111111";

    -- i_cmp12_i_i1163_processfpga(LOGICAL,286)@10 + 1
    i_cmp12_i_i1163_processfpga_qi <= "1" WHEN i_load_tmp12_i_i115827_processfpga_out_o_readdata = c_i16_1gr_q ELSE "0";
    i_cmp12_i_i1163_processfpga_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp12_i_i1163_processfpga_qi, xout => i_cmp12_i_i1163_processfpga_q, clk => clock, aclr => resetn );

    -- redist24_i_cmp12_i_i1163_processfpga_q_4(DELAY,691)
    redist24_i_cmp12_i_i1163_processfpga_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp12_i_i1163_processfpga_q, xout => redist24_i_cmp12_i_i1163_processfpga_q_4_q, clk => clock, aclr => resetn );

    -- i_acl_900_xor_or_processfpga(LOGICAL,272)@14
    i_acl_900_xor_or_processfpga_q <= redist24_i_cmp12_i_i1163_processfpga_q_4_q or redist21_i_cmp7_i21_i_xor_processfpga_q_4_q;

    -- i_phi_decision1500_or1506_processfpga(LOGICAL,351)@14
    i_phi_decision1500_or1506_processfpga_q <= i_acl_900_xor_or_processfpga_q or i_ffwd_dst_unnamed_processfpga169_processfpga_out_dest_data_out_72_0;

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_c_i64_9gr_x(CONSTANT,104)
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_c_i64_9gr_x_q <= "0000000000000000000000000000000000000000000000000000000000001001";

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_shift0(BITSHIFT,588)@10
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_shift0_qint <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_shift0_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_shift0_qint(10 downto 0);

    -- i_idxprom15_i29_i_processfpga_sel_x(BITSELECT,183)@10
    i_idxprom15_i29_i_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(i_load_tmp12_i_i115827_processfpga_out_o_readdata(15 downto 0)), 64));

    -- i_idxprom15_i29_i_processfpga_vt_select_15(BITSELECT,307)@10
    i_idxprom15_i29_i_processfpga_vt_select_15_b <= i_idxprom15_i29_i_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom15_i29_i_processfpga_vt_join(BITJOIN,306)@10
    i_idxprom15_i29_i_processfpga_vt_join_q <= i_idxprom15_i29_i_processfpga_vt_const_63_q & i_idxprom15_i29_i_processfpga_vt_select_15_b;

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select(BITSELECT,664)@10
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b <= i_idxprom15_i29_i_processfpga_vt_join_q(17 downto 0);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c <= i_idxprom15_i29_i_processfpga_vt_join_q(63 downto 54);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d <= i_idxprom15_i29_i_processfpga_vt_join_q(35 downto 18);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e <= i_idxprom15_i29_i_processfpga_vt_join_q(53 downto 36);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_add_1(ADD,589)@10 + 1
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c);
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_shift0_q);
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_add_1_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_shift2(BITSHIFT,590)@11
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_shift2_qint <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_add_1_q & "00";
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_shift2_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_15(BITSHIFT,432)@11
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_15_qint <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_15_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_shift0(BITSHIFT,591)@10
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_shift0_qint <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_shift0_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_add_1(ADD,592)@10 + 1
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d);
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_shift0_q);
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_add_1_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_shift2(BITSHIFT,593)@11
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_shift2_qint <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_add_1_q & "00";
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_shift2_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_14(BITSHIFT,431)@11
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_14_qint <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_14_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_join_16(BITJOIN,433)@11
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_join_16_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_15_q & i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_14_q;

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_shift0(BITSHIFT,594)@10
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_shift0_qint <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_shift0_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_add_1(ADD,595)@10 + 1
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e);
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_shift0_q);
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_add_1_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_shift2(BITSHIFT,596)@11
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_shift2_qint <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_add_1_q & "00";
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_shift2_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_12(BITSHIFT,429)@11
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_12_qint <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_12_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_shift0(BITSHIFT,585)@10
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_shift0_qint <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_shift0_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_add_1(ADD,586)@10 + 1
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b);
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_shift0_q);
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_add_1_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_shift2(BITSHIFT,587)@11
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_shift2_qint <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_add_1_q & "00";
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_shift2_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_join_13(BITJOIN,430)@11
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_join_13_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_align_12_q & i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_im0_shift2_q;

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_result_add_0_0(ADD,434)@11
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_join_13_q);
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_join_16_q);
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_result_add_0_0_b));
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_result_add_0_0_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_extender_x(BITJOIN,99)@11
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_extender_x_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_multconst_x_q & i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_trunc_sel_x(BITSELECT,101)@11
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_trunc_sel_x_b <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_mult_extender_x_q(63 downto 0);

    -- redist56_i_arrayidx16_5_i37_i_processfpga_processfpga1210_trunc_sel_x_b_1(DELAY,723)
    redist56_i_arrayidx16_5_i37_i_processfpga_processfpga1210_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_5_i37_i_processfpga_processfpga1210_trunc_sel_x_b, xout => redist56_i_arrayidx16_5_i37_i_processfpga_processfpga1210_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer104_processfpga(BLACKBOX,362)@0
    -- in in_i_dependence@12
    -- in in_valid_in@12
    -- out out_buffer_out@12
    -- out out_valid_out@12
    thei_syncbuf_localneurons_sync_buffer104_processfpga : i_syncbuf_localneurons_sync_buffer104_processfpga1208
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist36_sync_in_aunroll_x_in_i_valid_11_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer104_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_add_x(ADD,102)@12
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer104_processfpga_out_buffer_out);
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_add_x_b <= STD_LOGIC_VECTOR("0" & redist56_i_arrayidx16_5_i37_i_processfpga_processfpga1210_trunc_sel_x_b_1_q);
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_5_i37_i_processfpga_processfpga1210_add_x_a) + UNSIGNED(i_arrayidx16_5_i37_i_processfpga_processfpga1210_add_x_b));
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_add_x_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_add_x_o(64 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_trunc_sel_x(BITSELECT,93)@12
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_trunc_sel_x_b <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_add_x_q(63 downto 0);

    -- redist58_i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_trunc_sel_x_b_1(DELAY,725)
    redist58_i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_trunc_sel_x_b, xout => redist58_i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_add_x(ADD,96)@13
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist58_i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_5_i37_i_processfpga_processfpga1210_c_i64_9gr_x_q);
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_add_x_a) + UNSIGNED(i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_add_x_b));
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_add_x_q <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_1_trunc_sel_x(BITSELECT,94)@13
    i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_1_trunc_sel_x_b <= i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_0_add_x_q(63 downto 0);

    -- redist57_i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_1_trunc_sel_x_b_1(DELAY,724)
    redist57_i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_1_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_1_trunc_sel_x_b, xout => redist57_i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_1_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_normls_gep374_processfpga_processfpga1211_add_x(ADD,209)@14
    i_normls_gep374_processfpga_processfpga1211_add_x_a <= STD_LOGIC_VECTOR("0" & redist57_i_arrayidx16_5_i37_i_processfpga_processfpga1210_dupName_1_trunc_sel_x_b_1_q);
    i_normls_gep374_processfpga_processfpga1211_add_x_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_c_i64_1gr_x_q);
    i_normls_gep374_processfpga_processfpga1211_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep374_processfpga_processfpga1211_add_x_a) + UNSIGNED(i_normls_gep374_processfpga_processfpga1211_add_x_b));
    i_normls_gep374_processfpga_processfpga1211_add_x_q <= i_normls_gep374_processfpga_processfpga1211_add_x_o(64 downto 0);

    -- i_normls_gep374_processfpga_processfpga1211_trunc_sel_x(BITSELECT,208)@14
    i_normls_gep374_processfpga_processfpga1211_trunc_sel_x_b <= i_normls_gep374_processfpga_processfpga1211_add_x_q(63 downto 0);

    -- i_load_normls_load375_processfpga(BLACKBOX,316)@14
    -- in in_i_stall@20000000
    -- out out_normls_load375_avm_address@20000000
    -- out out_normls_load375_avm_burstcount@20000000
    -- out out_normls_load375_avm_byteenable@20000000
    -- out out_normls_load375_avm_enable@20000000
    -- out out_normls_load375_avm_read@20000000
    -- out out_normls_load375_avm_write@20000000
    -- out out_normls_load375_avm_writedata@20000000
    -- out out_o_readdata@19
    -- out out_o_stall@18
    -- out out_o_valid@19
    thei_load_normls_load375_processfpga : i_load_normls_load375_processfpga1214
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_normls_gep374_processfpga_processfpga1211_trunc_sel_x_b,
        in_i_predicate => i_phi_decision1500_or1506_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist37_sync_in_aunroll_x_in_i_valid_13_q,
        in_normls_load375_avm_readdata => in_normls_load375_avm_readdata,
        in_normls_load375_avm_readdatavalid => in_normls_load375_avm_readdatavalid,
        in_normls_load375_avm_waitrequest => in_normls_load375_avm_waitrequest,
        in_normls_load375_avm_writeack => in_normls_load375_avm_writeack,
        out_normls_load375_avm_address => i_load_normls_load375_processfpga_out_normls_load375_avm_address,
        out_normls_load375_avm_burstcount => i_load_normls_load375_processfpga_out_normls_load375_avm_burstcount,
        out_normls_load375_avm_byteenable => i_load_normls_load375_processfpga_out_normls_load375_avm_byteenable,
        out_normls_load375_avm_enable => i_load_normls_load375_processfpga_out_normls_load375_avm_enable,
        out_normls_load375_avm_read => i_load_normls_load375_processfpga_out_normls_load375_avm_read,
        out_normls_load375_avm_write => i_load_normls_load375_processfpga_out_normls_load375_avm_write,
        out_normls_load375_avm_writedata => i_load_normls_load375_processfpga_out_normls_load375_avm_writedata,
        out_o_readdata => i_load_normls_load375_processfpga_out_o_readdata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_5_ext_sig_sync_out_x(GPOUT,26)
    out_normls_load375_avm_address <= i_load_normls_load375_processfpga_out_normls_load375_avm_address;
    out_normls_load375_avm_enable <= i_load_normls_load375_processfpga_out_normls_load375_avm_enable;
    out_normls_load375_avm_read <= i_load_normls_load375_processfpga_out_normls_load375_avm_read;
    out_normls_load375_avm_write <= i_load_normls_load375_processfpga_out_normls_load375_avm_write;
    out_normls_load375_avm_writedata <= i_load_normls_load375_processfpga_out_normls_load375_avm_writedata;
    out_normls_load375_avm_byteenable <= i_load_normls_load375_processfpga_out_normls_load375_avm_byteenable;
    out_normls_load375_avm_burstcount <= i_load_normls_load375_processfpga_out_normls_load375_avm_burstcount;

    -- redist25_i_cmp12_i_i1163_processfpga_q_10(DELAY,692)
    redist25_i_cmp12_i_i1163_processfpga_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist24_i_cmp12_i_i1163_processfpga_q_4_q, xout => redist25_i_cmp12_i_i1163_processfpga_q_10_q, clk => clock, aclr => resetn );

    -- i_not_cmp12_i_i1163_processfpga(LOGICAL,344)@20
    i_not_cmp12_i_i1163_processfpga_q <= redist25_i_cmp12_i_i1163_processfpga_q_10_q xor VCC_q;

    -- c_i16_256(CONSTANT,258)
    c_i16_256_q <= "0000000100000000";

    -- leftShiftStage0Idx1Rng8_uid530_i_normls_shl377_processfpga_processfpga1216_shift_x(BITSELECT,529)@19
    leftShiftStage0Idx1Rng8_uid530_i_normls_shl377_processfpga_processfpga1216_shift_x_in <= i_normls_zext376_processfpga_vt_join_q(7 downto 0);
    leftShiftStage0Idx1Rng8_uid530_i_normls_shl377_processfpga_processfpga1216_shift_x_b <= leftShiftStage0Idx1Rng8_uid530_i_normls_shl377_processfpga_processfpga1216_shift_x_in(7 downto 0);

    -- leftShiftStage0Idx1_uid531_i_normls_shl377_processfpga_processfpga1216_shift_x(BITJOIN,530)@19
    leftShiftStage0Idx1_uid531_i_normls_shl377_processfpga_processfpga1216_shift_x_q <= leftShiftStage0Idx1Rng8_uid530_i_normls_shl377_processfpga_processfpga1216_shift_x_b & dupName_1_c_i8_0gr_x_q;

    -- i_normls_zext376_processfpga_sel_x(BITSELECT,238)@19
    i_normls_zext376_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(i_load_normls_load375_processfpga_out_o_readdata(7 downto 0)), 16));

    -- i_normls_zext376_processfpga_vt_select_7(BITSELECT,343)@19
    i_normls_zext376_processfpga_vt_select_7_b <= i_normls_zext376_processfpga_sel_x_b(7 downto 0);

    -- i_normls_zext376_processfpga_vt_join(BITJOIN,342)@19
    i_normls_zext376_processfpga_vt_join_q <= dupName_1_c_i8_0gr_x_q & i_normls_zext376_processfpga_vt_select_7_b;

    -- leftShiftStage0_uid533_i_normls_shl377_processfpga_processfpga1216_shift_x(MUX,532)@19
    leftShiftStage0_uid533_i_normls_shl377_processfpga_processfpga1216_shift_x_s <= VCC_q;
    leftShiftStage0_uid533_i_normls_shl377_processfpga_processfpga1216_shift_x_combproc: PROCESS (leftShiftStage0_uid533_i_normls_shl377_processfpga_processfpga1216_shift_x_s, i_normls_zext376_processfpga_vt_join_q, leftShiftStage0Idx1_uid531_i_normls_shl377_processfpga_processfpga1216_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid533_i_normls_shl377_processfpga_processfpga1216_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid533_i_normls_shl377_processfpga_processfpga1216_shift_x_q <= i_normls_zext376_processfpga_vt_join_q;
            WHEN "1" => leftShiftStage0_uid533_i_normls_shl377_processfpga_processfpga1216_shift_x_q <= leftShiftStage0Idx1_uid531_i_normls_shl377_processfpga_processfpga1216_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid533_i_normls_shl377_processfpga_processfpga1216_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_normls_shl377_processfpga_vt_select_15(BITSELECT,339)@19
    i_normls_shl377_processfpga_vt_select_15_b <= leftShiftStage0_uid533_i_normls_shl377_processfpga_processfpga1216_shift_x_q(15 downto 8);

    -- dupName_1_c_i8_0gr_x(CONSTANT,12)
    dupName_1_c_i8_0gr_x_q <= "00000000";

    -- i_normls_shl377_processfpga_vt_join(BITJOIN,338)@19
    i_normls_shl377_processfpga_vt_join_q <= i_normls_shl377_processfpga_vt_select_15_b & dupName_1_c_i8_0gr_x_q;

    -- i_cmp_i_i40_i_processfpga(COMPARE,289)@19 + 1
    i_cmp_i_i40_i_processfpga_a <= STD_LOGIC_VECTOR("00" & i_normls_shl377_processfpga_vt_join_q);
    i_cmp_i_i40_i_processfpga_b <= STD_LOGIC_VECTOR("00" & c_i16_256_q);
    i_cmp_i_i40_i_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp_i_i40_i_processfpga_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp_i_i40_i_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp_i_i40_i_processfpga_a) - UNSIGNED(i_cmp_i_i40_i_processfpga_b));
        END IF;
    END PROCESS;
    i_cmp_i_i40_i_processfpga_c(0) <= i_cmp_i_i40_i_processfpga_o(17);

    -- i_acl_901_processfpga(LOGICAL,273)@20
    i_acl_901_processfpga_q <= i_cmp_i_i40_i_processfpga_c and i_not_cmp12_i_i1163_processfpga_q;

    -- redist22_i_cmp7_i21_i_processfpga_q_10(DELAY,689)
    redist22_i_cmp7_i21_i_processfpga_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 10, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp7_i21_i_processfpga_q, xout => redist22_i_cmp7_i21_i_processfpga_q_10_q, clk => clock, aclr => resetn );

    -- i_acl_902_processfpga(LOGICAL,274)@20
    i_acl_902_processfpga_q <= redist22_i_cmp7_i21_i_processfpga_q_10_q and i_acl_901_processfpga_q;

    -- i_acl_902_xor_processfpga(LOGICAL,275)@20
    i_acl_902_xor_processfpga_q <= i_acl_902_processfpga_q xor VCC_q;

    -- i_ffwd_dst_unnamed_processfpga170_processfpga(BLACKBOX,298)@20
    thei_ffwd_dst_unnamed_processfpga170_processfpga : i_ffwd_dst_unnamed_processfpga170_processfpga1223
    PORT MAP (
        in_intel_reserved_ffwd_72_0 => in_intel_reserved_ffwd_72_0,
        in_stall_in => GND_q,
        in_valid_in => redist40_sync_in_aunroll_x_in_i_valid_19_q,
        out_dest_data_out_72_0 => i_ffwd_dst_unnamed_processfpga170_processfpga_out_dest_data_out_72_0,
        clock => clock,
        resetn => resetn
    );

    -- i_phi_decision1500_or1507_processfpga(LOGICAL,352)@20
    i_phi_decision1500_or1507_processfpga_q <= i_ffwd_dst_unnamed_processfpga170_processfpga_out_dest_data_out_72_0 or i_acl_902_xor_processfpga_q;

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_shift0(BITSHIFT,564)@17
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_shift0_qint <= redist7_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_7_q & "0";
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_shift0_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_shift0_qint(10 downto 0);

    -- redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_notEnable(LOGICAL,796)
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_nor(LOGICAL,797)
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_nor_q <= not (redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_notEnable_q or redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q);

    -- redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_last(CONSTANT,793)
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_last_q <= "01";

    -- redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_cmp(LOGICAL,794)
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_cmp_q <= "1" WHEN redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_last_q = redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_q ELSE "0";

    -- redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_cmpReg(REG,795)
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_cmpReg_q <= STD_LOGIC_VECTOR(redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_sticky_ena(REG,798)
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_nor_q = "1") THEN
                redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_enaAnd(LOGICAL,799)
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_enaAnd_q <= redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_sticky_ena_q and VCC_q;

    -- redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt(COUNTER,791)
    -- low=0, high=2, step=1, init=0
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq <= '1';
            ELSE
                redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq <= '0';
            END IF;
            IF (redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_eq = '1') THEN
                redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_i <= redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_i + 2;
            ELSE
                redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_i <= redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_i, 2)));

    -- redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_inputreg(DELAY,788)
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_inputreg : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c, xout => redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_inputreg_q, clk => clock, aclr => resetn );

    -- redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_wraddr(REG,792)
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_wraddr_q <= STD_LOGIC_VECTOR(redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem(DUALMEM,790)
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_ia <= STD_LOGIC_VECTOR(redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_inputreg_q);
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_aa <= redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_wraddr_q;
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_ab <= redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_rdcnt_q;
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_reset0 <= not (resetn);
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_dmem : altera_syncram
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
        clocken1 => redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_reset0,
        clock1 => clock,
        address_a => redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_aa,
        data_a => redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_ab,
        q_b => redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_iq
    );
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_q <= redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_iq(9 downto 0);

    -- redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_outputreg(DELAY,789)
    redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_outputreg : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_mem_q, xout => redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_outputreg_q, clk => clock, aclr => resetn );

    -- redist7_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_7(DELAY,674)
    redist7_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_7 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_outputreg_q, xout => redist7_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_7_q, clk => clock, aclr => resetn );

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_add_1(ADD,565)@17 + 1
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & redist7_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_7_q);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_shift0_q);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_add_1_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_shift2(BITSHIFT,566)@18
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_shift2_qint <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_add_1_q & "00";
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_shift2_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_15(BITSHIFT,396)@18
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_15_qint <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_15_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_shift0(BITSHIFT,567)@17
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_shift0_qint <= redist9_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_7_q & "0";
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_shift0_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_shift0_qint(18 downto 0);

    -- redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_notEnable(LOGICAL,808)
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_nor(LOGICAL,809)
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_nor_q <= not (redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_notEnable_q or redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q);

    -- redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_last(CONSTANT,805)
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_last_q <= "01";

    -- redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_cmp(LOGICAL,806)
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_cmp_q <= "1" WHEN redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_last_q = redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_q ELSE "0";

    -- redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_cmpReg(REG,807)
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_cmpReg_q <= STD_LOGIC_VECTOR(redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_sticky_ena(REG,810)
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_nor_q = "1") THEN
                redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_enaAnd(LOGICAL,811)
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_enaAnd_q <= redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_sticky_ena_q and VCC_q;

    -- redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt(COUNTER,803)
    -- low=0, high=2, step=1, init=0
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq <= '1';
            ELSE
                redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq <= '0';
            END IF;
            IF (redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_eq = '1') THEN
                redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_i <= redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_i + 2;
            ELSE
                redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_i <= redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_i, 2)));

    -- redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_inputreg(DELAY,800)
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_inputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d, xout => redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_inputreg_q, clk => clock, aclr => resetn );

    -- redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_wraddr(REG,804)
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_wraddr_q <= STD_LOGIC_VECTOR(redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem(DUALMEM,802)
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_ia <= STD_LOGIC_VECTOR(redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_inputreg_q);
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_aa <= redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_wraddr_q;
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_ab <= redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_rdcnt_q;
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_reset0 <= not (resetn);
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_dmem : altera_syncram
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
        clocken1 => redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_reset0,
        clock1 => clock,
        address_a => redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_aa,
        data_a => redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_ab,
        q_b => redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_iq
    );
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_q <= redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_iq(17 downto 0);

    -- redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_outputreg(DELAY,801)
    redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_mem_q, xout => redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_outputreg_q, clk => clock, aclr => resetn );

    -- redist9_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_7(DELAY,676)
    redist9_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_7 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_outputreg_q, xout => redist9_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_7_q, clk => clock, aclr => resetn );

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_add_1(ADD,568)@17 + 1
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & redist9_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_7_q);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_shift0_q);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_add_1_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_shift2(BITSHIFT,569)@18
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_shift2_qint <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_add_1_q & "00";
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_shift2_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_14(BITSHIFT,395)@18
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_14_qint <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_14_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_join_16(BITJOIN,397)@18
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_join_16_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_15_q & i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_14_q;

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_shift0(BITSHIFT,570)@17
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_shift0_qint <= redist11_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_7_q & "0";
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_shift0_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_shift0_qint(18 downto 0);

    -- redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_notEnable(LOGICAL,820)
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_nor(LOGICAL,821)
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_nor_q <= not (redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_notEnable_q or redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q);

    -- redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_last(CONSTANT,817)
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_last_q <= "01";

    -- redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_cmp(LOGICAL,818)
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_cmp_q <= "1" WHEN redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_last_q = redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_q ELSE "0";

    -- redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_cmpReg(REG,819)
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_cmpReg_q <= STD_LOGIC_VECTOR(redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_sticky_ena(REG,822)
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_nor_q = "1") THEN
                redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_enaAnd(LOGICAL,823)
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_enaAnd_q <= redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_sticky_ena_q and VCC_q;

    -- redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt(COUNTER,815)
    -- low=0, high=2, step=1, init=0
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq <= '1';
            ELSE
                redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq <= '0';
            END IF;
            IF (redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_eq = '1') THEN
                redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_i <= redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_i + 2;
            ELSE
                redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_i <= redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_i, 2)));

    -- redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_inputreg(DELAY,812)
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_inputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e, xout => redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_inputreg_q, clk => clock, aclr => resetn );

    -- redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_wraddr(REG,816)
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_wraddr_q <= STD_LOGIC_VECTOR(redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem(DUALMEM,814)
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_ia <= STD_LOGIC_VECTOR(redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_inputreg_q);
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_aa <= redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_wraddr_q;
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_ab <= redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_rdcnt_q;
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_reset0 <= not (resetn);
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_dmem : altera_syncram
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
        clocken1 => redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_reset0,
        clock1 => clock,
        address_a => redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_aa,
        data_a => redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_ab,
        q_b => redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_iq
    );
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_q <= redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_iq(17 downto 0);

    -- redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_outputreg(DELAY,813)
    redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_mem_q, xout => redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_outputreg_q, clk => clock, aclr => resetn );

    -- redist11_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_7(DELAY,678)
    redist11_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_7 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_outputreg_q, xout => redist11_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_7_q, clk => clock, aclr => resetn );

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_add_1(ADD,571)@17 + 1
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & redist11_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_7_q);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_shift0_q);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_add_1_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_shift2(BITSHIFT,572)@18
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_shift2_qint <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_add_1_q & "00";
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_shift2_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_12(BITSHIFT,393)@18
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_12_qint <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_12_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_shift0(BITSHIFT,561)@17
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_shift0_qint <= redist5_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_7_q & "0";
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_shift0_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_shift0_qint(18 downto 0);

    -- redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_notEnable(LOGICAL,784)
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_nor(LOGICAL,785)
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_nor_q <= not (redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_notEnable_q or redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q);

    -- redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_last(CONSTANT,781)
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_last_q <= "01";

    -- redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_cmp(LOGICAL,782)
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_cmp_q <= "1" WHEN redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_last_q = redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_q ELSE "0";

    -- redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_cmpReg(REG,783)
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_cmpReg_q <= STD_LOGIC_VECTOR(redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_sticky_ena(REG,786)
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_nor_q = "1") THEN
                redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_enaAnd(LOGICAL,787)
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_enaAnd_q <= redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_sticky_ena_q and VCC_q;

    -- redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt(COUNTER,779)
    -- low=0, high=2, step=1, init=0
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq <= '1';
            ELSE
                redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq <= '0';
            END IF;
            IF (redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_eq = '1') THEN
                redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_i <= redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_i + 2;
            ELSE
                redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_i <= redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_i, 2)));

    -- redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_inputreg(DELAY,776)
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_inputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b, xout => redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_inputreg_q, clk => clock, aclr => resetn );

    -- redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_wraddr(REG,780)
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_wraddr_q <= STD_LOGIC_VECTOR(redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem(DUALMEM,778)
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_ia <= STD_LOGIC_VECTOR(redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_inputreg_q);
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_aa <= redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_wraddr_q;
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_ab <= redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_rdcnt_q;
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_reset0 <= not (resetn);
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_dmem : altera_syncram
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
        clocken1 => redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_reset0,
        clock1 => clock,
        address_a => redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_aa,
        data_a => redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_ab,
        q_b => redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_iq
    );
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_q <= redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_iq(17 downto 0);

    -- redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_outputreg(DELAY,777)
    redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_mem_q, xout => redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_outputreg_q, clk => clock, aclr => resetn );

    -- redist5_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_7(DELAY,672)
    redist5_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_7 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_outputreg_q, xout => redist5_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_7_q, clk => clock, aclr => resetn );

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_add_1(ADD,562)@17 + 1
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & redist5_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_7_q);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_shift0_q);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_add_1_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_shift2(BITSHIFT,563)@18
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_shift2_qint <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_add_1_q & "00";
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_shift2_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_join_13(BITJOIN,394)@18
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_join_13_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_align_12_q & i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_im0_shift2_q;

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_result_add_0_0(ADD,398)@18
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_join_13_q);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_join_16_q);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_result_add_0_0_b));
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_result_add_0_0_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_extender_x(BITJOIN,71)@18
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_extender_x_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_multconst_x_q & i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_trunc_sel_x(BITSELECT,73)@18
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_trunc_sel_x_b <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_extender_x_q(63 downto 0);

    -- redist62_i_arrayidx16_2_i34_i_processfpga_processfpga1222_trunc_sel_x_b_1(DELAY,729)
    redist62_i_arrayidx16_2_i34_i_processfpga_processfpga1222_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_2_i34_i_processfpga_processfpga1222_trunc_sel_x_b, xout => redist62_i_arrayidx16_2_i34_i_processfpga_processfpga1222_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer102_processfpga(BLACKBOX,360)@0
    -- in in_i_dependence@19
    -- in in_valid_in@19
    -- out out_buffer_out@19
    -- out out_valid_out@19
    thei_syncbuf_localneurons_sync_buffer102_processfpga : i_syncbuf_localneurons_sync_buffer102_processfpga1220
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist39_sync_in_aunroll_x_in_i_valid_18_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer102_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_add_x(ADD,74)@19
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer102_processfpga_out_buffer_out);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_add_x_b <= STD_LOGIC_VECTOR("0" & redist62_i_arrayidx16_2_i34_i_processfpga_processfpga1222_trunc_sel_x_b_1_q);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_2_i34_i_processfpga_processfpga1222_add_x_a) + UNSIGNED(i_arrayidx16_2_i34_i_processfpga_processfpga1222_add_x_b));
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_add_x_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_add_x_o(64 downto 0);

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_trunc_sel_x(BITSELECT,65)@19
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_trunc_sel_x_b <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_add_x_q(63 downto 0);

    -- redist63_i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_trunc_sel_x_b_1(DELAY,730)
    redist63_i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_trunc_sel_x_b, xout => redist63_i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_add_x(ADD,68)@20
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist63_i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_2_i34_i_processfpga_processfpga1222_c_i64_4gr_x_q);
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_add_x_a) + UNSIGNED(i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_add_x_b));
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_add_x_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_1_trunc_sel_x(BITSELECT,66)@20
    i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_1_trunc_sel_x_b <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_0_add_x_q(63 downto 0);

    -- i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x(BLACKBOX,187)@20
    -- in in_i_stall@20000000
    -- out out_o_readdata_0@25
    -- out out_o_readdata_1@25
    -- out out_o_readdata_2@25
    -- out out_o_readdata_3@25
    -- out out_memcoalesce_localNeurons_load_037_avm_address@20000000
    -- out out_memcoalesce_localNeurons_load_037_avm_burstcount@20000000
    -- out out_memcoalesce_localNeurons_load_037_avm_byteenable@20000000
    -- out out_memcoalesce_localNeurons_load_037_avm_enable@20000000
    -- out out_memcoalesce_localNeurons_load_037_avm_read@20000000
    -- out out_memcoalesce_localNeurons_load_037_avm_write@20000000
    -- out out_memcoalesce_localNeurons_load_037_avm_writedata@20000000
    -- out out_o_stall@24
    -- out out_o_valid@25
    thei_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x : i_load_memcoalesce_localneurons_load_037_processfpga1225
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx16_2_i34_i_processfpga_processfpga1222_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_phi_decision1500_or1507_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist40_sync_in_aunroll_x_in_i_valid_19_q,
        in_memcoalesce_localNeurons_load_037_avm_readdata => in_memcoalesce_localNeurons_load_037_avm_readdata,
        in_memcoalesce_localNeurons_load_037_avm_readdatavalid => in_memcoalesce_localNeurons_load_037_avm_readdatavalid,
        in_memcoalesce_localNeurons_load_037_avm_waitrequest => in_memcoalesce_localNeurons_load_037_avm_waitrequest,
        in_memcoalesce_localNeurons_load_037_avm_writeack => in_memcoalesce_localNeurons_load_037_avm_writeack,
        out_o_readdata_0 => i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_o_readdata_0,
        out_o_readdata_1 => i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_o_readdata_1,
        out_o_readdata_2 => i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_o_readdata_2,
        out_o_readdata_3 => i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_o_readdata_3,
        out_memcoalesce_localNeurons_load_037_avm_address => i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_address,
        out_memcoalesce_localNeurons_load_037_avm_burstcount => i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_burstcount,
        out_memcoalesce_localNeurons_load_037_avm_byteenable => i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_byteenable,
        out_memcoalesce_localNeurons_load_037_avm_enable => i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_enable,
        out_memcoalesce_localNeurons_load_037_avm_read => i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_read,
        out_memcoalesce_localNeurons_load_037_avm_write => i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_write,
        out_memcoalesce_localNeurons_load_037_avm_writedata => i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_6_ext_sig_sync_out_x(GPOUT,29)
    out_memcoalesce_localNeurons_load_037_avm_address <= i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_address;
    out_memcoalesce_localNeurons_load_037_avm_enable <= i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_enable;
    out_memcoalesce_localNeurons_load_037_avm_read <= i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_read;
    out_memcoalesce_localNeurons_load_037_avm_write <= i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_write;
    out_memcoalesce_localNeurons_load_037_avm_writedata <= i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_writedata;
    out_memcoalesce_localNeurons_load_037_avm_byteenable <= i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_byteenable;
    out_memcoalesce_localNeurons_load_037_avm_burstcount <= i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_037_avm_burstcount;

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_shift0(BITSHIFT,576)@16
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_shift0_qint <= redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_outputreg_q & "0";
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_shift0_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_add_1(ADD,577)@16 + 1
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & redist6_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_c_6_outputreg_q);
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_shift0_q);
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_add_1_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_shift2(BITSHIFT,578)@17
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_shift2_qint <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_add_1_q & "00";
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_shift2_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_15(BITSHIFT,414)@17
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_15_qint <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_15_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_shift0(BITSHIFT,579)@16
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_shift0_qint <= redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_outputreg_q & "0";
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_shift0_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_add_1(ADD,580)@16 + 1
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & redist8_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_d_6_outputreg_q);
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_shift0_q);
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_add_1_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_shift2(BITSHIFT,581)@17
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_shift2_qint <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_add_1_q & "00";
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_shift2_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_14(BITSHIFT,413)@17
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_14_qint <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_14_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_join_16(BITJOIN,415)@17
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_join_16_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_15_q & i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_14_q;

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_shift0(BITSHIFT,582)@16
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_shift0_qint <= redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_outputreg_q & "0";
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_shift0_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_add_1(ADD,583)@16 + 1
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & redist10_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_e_6_outputreg_q);
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_shift0_q);
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_add_1_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_shift2(BITSHIFT,584)@17
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_shift2_qint <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_add_1_q & "00";
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_shift2_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_12(BITSHIFT,411)@17
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_12_qint <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_12_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_shift0(BITSHIFT,573)@16
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_shift0_qint <= redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_outputreg_q & "0";
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_shift0_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_add_1(ADD,574)@16 + 1
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & redist4_i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_x_bs1_merged_bit_select_b_6_outputreg_q);
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_shift0_q);
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_add_1_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_shift2(BITSHIFT,575)@17
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_shift2_qint <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_add_1_q & "00";
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_shift2_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_join_13(BITJOIN,412)@17
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_join_13_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_align_12_q & i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_im0_shift2_q;

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_result_add_0_0(ADD,416)@17
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_join_13_q);
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_join_16_q);
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_result_add_0_0_b));
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_result_add_0_0_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_extender_x(BITJOIN,85)@17
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_extender_x_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_multconst_x_q & i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_trunc_sel_x(BITSELECT,87)@17
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_trunc_sel_x_b <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_mult_extender_x_q(63 downto 0);

    -- redist59_i_arrayidx16_4_i36_i_processfpga_processfpga1219_trunc_sel_x_b_1(DELAY,726)
    redist59_i_arrayidx16_4_i36_i_processfpga_processfpga1219_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_4_i36_i_processfpga_processfpga1219_trunc_sel_x_b, xout => redist59_i_arrayidx16_4_i36_i_processfpga_processfpga1219_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer103_processfpga(BLACKBOX,361)@0
    -- in in_i_dependence@18
    -- in in_valid_in@18
    -- out out_buffer_out@18
    -- out out_valid_out@18
    thei_syncbuf_localneurons_sync_buffer103_processfpga : i_syncbuf_localneurons_sync_buffer103_processfpga1217
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist38_sync_in_aunroll_x_in_i_valid_17_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer103_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_add_x(ADD,88)@18
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer103_processfpga_out_buffer_out);
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_add_x_b <= STD_LOGIC_VECTOR("0" & redist59_i_arrayidx16_4_i36_i_processfpga_processfpga1219_trunc_sel_x_b_1_q);
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_4_i36_i_processfpga_processfpga1219_add_x_a) + UNSIGNED(i_arrayidx16_4_i36_i_processfpga_processfpga1219_add_x_b));
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_add_x_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_add_x_o(64 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_trunc_sel_x(BITSELECT,79)@18
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_trunc_sel_x_b <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_add_x_q(63 downto 0);

    -- redist61_i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_trunc_sel_x_b_1(DELAY,728)
    redist61_i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_trunc_sel_x_b, xout => redist61_i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_add_x(ADD,82)@19
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist61_i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx16_4_i36_i_processfpga_processfpga1219_c_i64_7gr_x_q);
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_add_x_a) + UNSIGNED(i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_add_x_b));
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_add_x_q <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_1_trunc_sel_x(BITSELECT,80)@19
    i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_1_trunc_sel_x_b <= i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_0_add_x_q(63 downto 0);

    -- redist60_i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_1_trunc_sel_x_b_1(DELAY,727)
    redist60_i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_1_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_1_trunc_sel_x_b, xout => redist60_i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_1_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_normls_gep385_processfpga_processfpga1227_add_x(ADD,213)@20
    i_normls_gep385_processfpga_processfpga1227_add_x_a <= STD_LOGIC_VECTOR("0" & redist60_i_arrayidx16_4_i36_i_processfpga_processfpga1219_dupName_1_trunc_sel_x_b_1_q);
    i_normls_gep385_processfpga_processfpga1227_add_x_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_memcoalesce_memcoalesce_localneurons_gep1_0_bitcast_0_gep_0_processfpga_processfpga1202_c_i64_1gr_x_q);
    i_normls_gep385_processfpga_processfpga1227_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep385_processfpga_processfpga1227_add_x_a) + UNSIGNED(i_normls_gep385_processfpga_processfpga1227_add_x_b));
    i_normls_gep385_processfpga_processfpga1227_add_x_q <= i_normls_gep385_processfpga_processfpga1227_add_x_o(64 downto 0);

    -- i_normls_gep385_processfpga_processfpga1227_trunc_sel_x(BITSELECT,212)@20
    i_normls_gep385_processfpga_processfpga1227_trunc_sel_x_b <= i_normls_gep385_processfpga_processfpga1227_add_x_q(63 downto 0);

    -- i_load_normls_load386_processfpga(BLACKBOX,317)@20
    -- in in_i_stall@20000000
    -- out out_normls_load386_avm_address@20000000
    -- out out_normls_load386_avm_burstcount@20000000
    -- out out_normls_load386_avm_byteenable@20000000
    -- out out_normls_load386_avm_enable@20000000
    -- out out_normls_load386_avm_read@20000000
    -- out out_normls_load386_avm_write@20000000
    -- out out_normls_load386_avm_writedata@20000000
    -- out out_o_readdata@25
    -- out out_o_stall@24
    -- out out_o_valid@25
    thei_load_normls_load386_processfpga : i_load_normls_load386_processfpga1228
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_normls_gep385_processfpga_processfpga1227_trunc_sel_x_b,
        in_i_predicate => i_phi_decision1500_or1507_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist40_sync_in_aunroll_x_in_i_valid_19_q,
        in_normls_load386_avm_readdata => in_normls_load386_avm_readdata,
        in_normls_load386_avm_readdatavalid => in_normls_load386_avm_readdatavalid,
        in_normls_load386_avm_waitrequest => in_normls_load386_avm_waitrequest,
        in_normls_load386_avm_writeack => in_normls_load386_avm_writeack,
        out_normls_load386_avm_address => i_load_normls_load386_processfpga_out_normls_load386_avm_address,
        out_normls_load386_avm_burstcount => i_load_normls_load386_processfpga_out_normls_load386_avm_burstcount,
        out_normls_load386_avm_byteenable => i_load_normls_load386_processfpga_out_normls_load386_avm_byteenable,
        out_normls_load386_avm_enable => i_load_normls_load386_processfpga_out_normls_load386_avm_enable,
        out_normls_load386_avm_read => i_load_normls_load386_processfpga_out_normls_load386_avm_read,
        out_normls_load386_avm_write => i_load_normls_load386_processfpga_out_normls_load386_avm_write,
        out_normls_load386_avm_writedata => i_load_normls_load386_processfpga_out_normls_load386_avm_writedata,
        out_o_readdata => i_load_normls_load386_processfpga_out_o_readdata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_7_ext_sig_sync_out_x(GPOUT,32)
    out_normls_load386_avm_address <= i_load_normls_load386_processfpga_out_normls_load386_avm_address;
    out_normls_load386_avm_enable <= i_load_normls_load386_processfpga_out_normls_load386_avm_enable;
    out_normls_load386_avm_read <= i_load_normls_load386_processfpga_out_normls_load386_avm_read;
    out_normls_load386_avm_write <= i_load_normls_load386_processfpga_out_normls_load386_avm_write;
    out_normls_load386_avm_writedata <= i_load_normls_load386_processfpga_out_normls_load386_avm_writedata;
    out_normls_load386_avm_byteenable <= i_load_normls_load386_processfpga_out_normls_load386_avm_byteenable;
    out_normls_load386_avm_burstcount <= i_load_normls_load386_processfpga_out_normls_load386_avm_burstcount;

    -- redist42_sync_in_aunroll_x_in_i_valid_24(DELAY,709)
    redist42_sync_in_aunroll_x_in_i_valid_24 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist41_sync_in_aunroll_x_in_i_valid_20_q, xout => redist42_sync_in_aunroll_x_in_i_valid_24_q, clk => clock, aclr => resetn );

    -- redist43_sync_in_aunroll_x_in_i_valid_25(DELAY,710)
    redist43_sync_in_aunroll_x_in_i_valid_25 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist42_sync_in_aunroll_x_in_i_valid_24_q, xout => redist43_sync_in_aunroll_x_in_i_valid_25_q, clk => clock, aclr => resetn );

    -- redist16_i_phi_decision1500_or1503_processfpga_q_16(DELAY,683)
    redist16_i_phi_decision1500_or1503_processfpga_q_16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist15_i_phi_decision1500_or1503_processfpga_q_11_q, xout => redist16_i_phi_decision1500_or1503_processfpga_q_16_q, clk => clock, aclr => resetn );

    -- i_not_phi_decision1500_or1503_and_processfpga_vt_const_7(CONSTANT,346)
    i_not_phi_decision1500_or1503_and_processfpga_vt_const_7_q <= "00";

    -- c_i8_63(CONSTANT,266)
    c_i8_63_q <= "00111111";

    -- i_ffwd_dst_unnamed_processfpga171_processfpga(BLACKBOX,299)@25
    thei_ffwd_dst_unnamed_processfpga171_processfpga : i_ffwd_dst_unnamed_processfpga171_processfpga1237
    PORT MAP (
        in_intel_reserved_ffwd_73_0 => in_intel_reserved_ffwd_73_0,
        in_stall_in => GND_q,
        in_valid_in => redist42_sync_in_aunroll_x_in_i_valid_24_q,
        out_dest_data_out_73_0 => i_ffwd_dst_unnamed_processfpga171_processfpga_out_dest_data_out_73_0,
        clock => clock,
        resetn => resetn
    );

    -- redist23_i_cmp7_i21_i_processfpga_q_15(DELAY,690)
    redist23_i_cmp7_i21_i_processfpga_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist22_i_cmp7_i21_i_processfpga_q_10_q, xout => redist23_i_cmp7_i21_i_processfpga_q_15_q, clk => clock, aclr => resetn );

    -- i_not_phi_decision1500_or1503_processfpga(LOGICAL,349)@25 + 1
    i_not_phi_decision1500_or1503_processfpga_qi <= redist23_i_cmp7_i21_i_processfpga_q_15_q and i_ffwd_dst_unnamed_processfpga171_processfpga_out_dest_data_out_73_0;
    i_not_phi_decision1500_or1503_processfpga_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_not_phi_decision1500_or1503_processfpga_qi, xout => i_not_phi_decision1500_or1503_processfpga_q, clk => clock, aclr => resetn );

    -- i_memcoalesce_null_select_byte_en_0_processfpga_sel_x(BITSELECT,207)@26
    i_memcoalesce_null_select_byte_en_0_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(i_not_phi_decision1500_or1503_processfpga_q(0 downto 0)), 8)));

    -- i_not_phi_decision1500_or1503_and_processfpga(LOGICAL,345)@26
    i_not_phi_decision1500_or1503_and_processfpga_q <= i_memcoalesce_null_select_byte_en_0_processfpga_sel_x_b and c_i8_63_q;

    -- i_not_phi_decision1500_or1503_and_processfpga_vt_select_5(BITSELECT,348)@26
    i_not_phi_decision1500_or1503_and_processfpga_vt_select_5_b <= i_not_phi_decision1500_or1503_and_processfpga_q(5 downto 0);

    -- i_not_phi_decision1500_or1503_and_processfpga_vt_join(BITJOIN,347)@26
    i_not_phi_decision1500_or1503_and_processfpga_vt_join_q <= i_not_phi_decision1500_or1503_and_processfpga_vt_const_7_q & i_not_phi_decision1500_or1503_and_processfpga_vt_select_5_b;

    -- dupName_0_c_i32_1gr_x(CONSTANT,7)
    dupName_0_c_i32_1gr_x_q <= "00000000000000000000000000000001";

    -- redist12_i_unnamed_processfpga1244_q_24(DELAY,679)
    redist12_i_unnamed_processfpga1244_q_24 : dspba_delay
    GENERIC MAP ( width => 1, depth => 24, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga1244_q, xout => redist12_i_unnamed_processfpga1244_q_24_q, clk => clock, aclr => resetn );

    -- i_acl_897_processfpga(MUX,271)@25
    i_acl_897_processfpga_s <= redist23_i_cmp7_i21_i_processfpga_q_15_q;
    i_acl_897_processfpga_combproc: PROCESS (i_acl_897_processfpga_s, i_acl_pop_i32_destmodcounter_0_i_i11511291_pop108_processfpga_out_data_out, bgTrunc_i_inc_i43_i_processfpga_sel_x_b)
    BEGIN
        CASE (i_acl_897_processfpga_s) IS
            WHEN "0" => i_acl_897_processfpga_q <= i_acl_pop_i32_destmodcounter_0_i_i11511291_pop108_processfpga_out_data_out;
            WHEN "1" => i_acl_897_processfpga_q <= bgTrunc_i_inc_i43_i_processfpga_sel_x_b;
            WHEN OTHERS => i_acl_897_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i32_destmodcounter_0_i_i11511291_push108_processfpga(BLACKBOX,285)@25
    -- out out_feedback_out_108@20000000
    -- out out_feedback_valid_out_108@20000000
    thei_acl_push_i32_destmodcounter_0_i_i11511291_push108_processfpga : i_acl_push_i32_destmodcounter_0_i_i11511291_push108_processfpga1245
    PORT MAP (
        in_data_in => i_acl_897_processfpga_q,
        in_feedback_stall_in_108 => i_acl_pop_i32_destmodcounter_0_i_i11511291_pop108_processfpga_out_feedback_stall_out_108,
        in_stall_in => GND_q,
        in_unnamed_processFPGA447 => redist12_i_unnamed_processfpga1244_q_24_q,
        in_valid_in => redist42_sync_in_aunroll_x_in_i_valid_24_q,
        out_feedback_out_108 => i_acl_push_i32_destmodcounter_0_i_i11511291_push108_processfpga_out_feedback_out_108,
        out_feedback_valid_out_108 => i_acl_push_i32_destmodcounter_0_i_i11511291_push108_processfpga_out_feedback_valid_out_108,
        clock => clock,
        resetn => resetn
    );

    -- redist30_sync_in_aunroll_x_in_c0_eni2951_1_24(DELAY,697)
    redist30_sync_in_aunroll_x_in_c0_eni2951_1_24 : dspba_delay
    GENERIC MAP ( width => 1, depth => 24, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni2951_1, xout => redist30_sync_in_aunroll_x_in_c0_eni2951_1_24_q, clk => clock, aclr => resetn );

    -- c_i32_1gr(CONSTANT,264)
    c_i32_1gr_q <= "11111111111111111111111111111111";

    -- i_acl_pop_i32_destmodcounter_0_i_i11511291_pop108_processfpga(BLACKBOX,280)@25
    -- out out_feedback_stall_out_108@20000000
    thei_acl_pop_i32_destmodcounter_0_i_i11511291_pop108_processfpga : i_acl_pop_i32_destmodcounter_0_i_i11511291_pop108_processfpga1234
    PORT MAP (
        in_data_in => c_i32_1gr_q,
        in_dir => redist30_sync_in_aunroll_x_in_c0_eni2951_1_24_q,
        in_feedback_in_108 => i_acl_push_i32_destmodcounter_0_i_i11511291_push108_processfpga_out_feedback_out_108,
        in_feedback_valid_in_108 => i_acl_push_i32_destmodcounter_0_i_i11511291_push108_processfpga_out_feedback_valid_out_108,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist42_sync_in_aunroll_x_in_i_valid_24_q,
        out_data_out => i_acl_pop_i32_destmodcounter_0_i_i11511291_pop108_processfpga_out_data_out,
        out_feedback_stall_out_108 => i_acl_pop_i32_destmodcounter_0_i_i11511291_pop108_processfpga_out_feedback_stall_out_108,
        clock => clock,
        resetn => resetn
    );

    -- i_inc_i43_i_processfpga(ADD,315)@25
    i_inc_i43_i_processfpga_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_destmodcounter_0_i_i11511291_pop108_processfpga_out_data_out);
    i_inc_i43_i_processfpga_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i32_1gr_x_q);
    i_inc_i43_i_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc_i43_i_processfpga_a) + UNSIGNED(i_inc_i43_i_processfpga_b));
    i_inc_i43_i_processfpga_q <= i_inc_i43_i_processfpga_o(32 downto 0);

    -- bgTrunc_i_inc_i43_i_processfpga_sel_x(BITSELECT,4)@25
    bgTrunc_i_inc_i43_i_processfpga_sel_x_b <= i_inc_i43_i_processfpga_q(31 downto 0);

    -- redist64_bgTrunc_i_inc_i43_i_processfpga_sel_x_b_1(DELAY,731)
    redist64_bgTrunc_i_inc_i43_i_processfpga_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_inc_i43_i_processfpga_sel_x_b, xout => redist64_bgTrunc_i_inc_i43_i_processfpga_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_idxprom30_i_i1186_processfpga_sel_x(BITSELECT,184)@26
    i_idxprom30_i_i1186_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist64_bgTrunc_i_inc_i43_i_processfpga_sel_x_b_1_q(31 downto 0)), 64)));

    -- i_scalarizer_0134_processfpga_processfpga1236_mult_x_bs1_merged_bit_select(BITSELECT,662)@26
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_bs1_merged_bit_select_b <= i_idxprom30_i_i1186_processfpga_sel_x_b(17 downto 0);
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_bs1_merged_bit_select_c <= i_idxprom30_i_i1186_processfpga_sel_x_b(63 downto 54);
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_bs1_merged_bit_select_d <= i_idxprom30_i_i1186_processfpga_sel_x_b(35 downto 18);
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_bs1_merged_bit_select_e <= i_idxprom30_i_i1186_processfpga_sel_x_b(53 downto 36);

    -- i_scalarizer_0134_processfpga_processfpga1236_mult_x_im3_shift0(BITSHIFT,658)@26
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_im3_shift0_qint <= i_scalarizer_0134_processfpga_processfpga1236_mult_x_bs1_merged_bit_select_c & "000";
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_im3_shift0_q <= i_scalarizer_0134_processfpga_processfpga1236_mult_x_im3_shift0_qint(12 downto 0);

    -- i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_15(BITSHIFT,549)@26
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_scalarizer_0134_processfpga_processfpga1236_mult_x_im3_shift0_q) & "00000000000000";
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_15_q <= i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_15_qint(27 downto 0);

    -- i_scalarizer_0134_processfpga_processfpga1236_mult_x_im6_shift0(BITSHIFT,659)@26
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_im6_shift0_qint <= i_scalarizer_0134_processfpga_processfpga1236_mult_x_bs1_merged_bit_select_d & "000";
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_im6_shift0_q <= i_scalarizer_0134_processfpga_processfpga1236_mult_x_im6_shift0_qint(20 downto 0);

    -- i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_14(BITSHIFT,548)@26
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_scalarizer_0134_processfpga_processfpga1236_mult_x_im6_shift0_q) & "000000000000000000";
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_14_q <= i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_14_qint(39 downto 0);

    -- i_scalarizer_0134_processfpga_processfpga1236_mult_x_join_16(BITJOIN,550)@26
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_join_16_q <= i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_15_q & i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_14_q;

    -- i_scalarizer_0134_processfpga_processfpga1236_mult_x_im9_shift0(BITSHIFT,660)@26
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_im9_shift0_qint <= i_scalarizer_0134_processfpga_processfpga1236_mult_x_bs1_merged_bit_select_e & "000";
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_im9_shift0_q <= i_scalarizer_0134_processfpga_processfpga1236_mult_x_im9_shift0_qint(20 downto 0);

    -- i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_12(BITSHIFT,546)@26
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_scalarizer_0134_processfpga_processfpga1236_mult_x_im9_shift0_q) & "00000000000000";
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_12_q <= i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_12_qint(35 downto 0);

    -- i_scalarizer_0134_processfpga_processfpga1236_mult_x_im0_shift0(BITSHIFT,657)@26
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_im0_shift0_qint <= i_scalarizer_0134_processfpga_processfpga1236_mult_x_bs1_merged_bit_select_b & "000";
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_im0_shift0_q <= i_scalarizer_0134_processfpga_processfpga1236_mult_x_im0_shift0_qint(20 downto 0);

    -- i_scalarizer_0134_processfpga_processfpga1236_mult_x_join_13(BITJOIN,547)@26
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_join_13_q <= i_scalarizer_0134_processfpga_processfpga1236_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_scalarizer_0134_processfpga_processfpga1236_mult_x_im0_shift0_q);

    -- i_scalarizer_0134_processfpga_processfpga1236_mult_x_result_add_0_0(ADD,551)@26
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_scalarizer_0134_processfpga_processfpga1236_mult_x_join_13_q);
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_scalarizer_0134_processfpga_processfpga1236_mult_x_join_16_q);
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_scalarizer_0134_processfpga_processfpga1236_mult_x_result_add_0_0_a) + UNSIGNED(i_scalarizer_0134_processfpga_processfpga1236_mult_x_result_add_0_0_b));
    i_scalarizer_0134_processfpga_processfpga1236_mult_x_result_add_0_0_q <= i_scalarizer_0134_processfpga_processfpga1236_mult_x_result_add_0_0_o(68 downto 0);

    -- i_scalarizer_0134_processfpga_processfpga1236_mult_extender_x(BITJOIN,242)@26
    i_scalarizer_0134_processfpga_processfpga1236_mult_extender_x_q <= i_arrayidx16_2_i34_i_processfpga_processfpga1222_mult_multconst_x_q & i_scalarizer_0134_processfpga_processfpga1236_mult_x_result_add_0_0_q(67 downto 0);

    -- i_scalarizer_0134_processfpga_processfpga1236_trunc_sel_x(BITSELECT,244)@26
    i_scalarizer_0134_processfpga_processfpga1236_trunc_sel_x_b <= i_scalarizer_0134_processfpga_processfpga1236_mult_extender_x_q(63 downto 0);

    -- i_scalarizer_0134_processfpga_processfpga1236_dupName_0_trunc_sel_x(BITSELECT,239)@26
    i_scalarizer_0134_processfpga_processfpga1236_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_scalarizer_0134_processfpga_processfpga1236_trunc_sel_x_b);
    i_scalarizer_0134_processfpga_processfpga1236_dupName_0_trunc_sel_x_b <= i_scalarizer_0134_processfpga_processfpga1236_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_scalarizer_0134_processfpga_vt_select_63(BITSELECT,355)@26
    i_scalarizer_0134_processfpga_vt_select_63_b <= i_scalarizer_0134_processfpga_processfpga1236_dupName_0_trunc_sel_x_b(63 downto 3);

    -- i_scalarizer_0134_processfpga_vt_join(BITJOIN,354)@26
    i_scalarizer_0134_processfpga_vt_join_q <= i_scalarizer_0134_processfpga_vt_select_63_b & i_memcoalesce_null_bitcast_0_processfpga_vt_const_2_q;

    -- i_memcoalesce_null_bitcast_0_processfpga_vt_select_63(BITSELECT,332)@26
    i_memcoalesce_null_bitcast_0_processfpga_vt_select_63_b <= i_scalarizer_0134_processfpga_vt_join_q(63 downto 3);

    -- i_memcoalesce_null_bitcast_0_processfpga_vt_const_2(CONSTANT,330)
    i_memcoalesce_null_bitcast_0_processfpga_vt_const_2_q <= "000";

    -- i_memcoalesce_null_bitcast_0_processfpga_vt_join(BITJOIN,331)@26
    i_memcoalesce_null_bitcast_0_processfpga_vt_join_q <= i_memcoalesce_null_bitcast_0_processfpga_vt_select_63_b & i_memcoalesce_null_bitcast_0_processfpga_vt_const_2_q;

    -- i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x(BITJOIN,232)@26
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q <= i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_o_readdata_2 & i_load_memcoalesce_localneurons_load_033_processfpga_aunroll_x_out_o_readdata_1;

    -- i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select(BITSELECT,663)@26
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_b <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(0 downto 0);
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_c <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(1 downto 1);
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_d <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(10 downto 10);
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_e <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(11 downto 11);
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_f <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(12 downto 12);
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_g <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(13 downto 13);
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_h <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(14 downto 14);
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_i <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(15 downto 15);
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_j <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(2 downto 2);
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_k <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(3 downto 3);
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_l <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(4 downto 4);
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_m <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(5 downto 5);
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_n <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(6 downto 6);
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_o <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(7 downto 7);
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_p <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(8 downto 8);
    i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_q <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_vec_1_join_x_q(9 downto 9);

    -- i_normls_or367_compressed_processfpga_processfpga1206_normls_or367_bitvec_join_x(BITJOIN,233)@26
    i_normls_or367_compressed_processfpga_processfpga1206_normls_or367_bitvec_join_x_q <= i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_i & i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_h & i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_g & i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_f & i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_e & i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_d & i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_q & i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_p & i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_o & i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_n & i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_m & i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_l & i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_k & i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_j & i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_c & i_normls_or367_bitvec_processfpga_processfpga1205_normls_or367_bitvec_select_0_x_merged_bit_select_b;

    -- redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_notEnable(LOGICAL,832)
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_nor(LOGICAL,833)
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_nor_q <= not (redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_notEnable_q or redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_sticky_ena_q);

    -- redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_last(CONSTANT,829)
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_last_q <= "0110";

    -- redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_cmp(LOGICAL,830)
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_cmp_b <= STD_LOGIC_VECTOR("0" & redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_rdcnt_q);
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_cmp_q <= "1" WHEN redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_last_q = redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_cmp_b ELSE "0";

    -- redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_cmpReg(REG,831)
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_cmpReg_q <= STD_LOGIC_VECTOR(redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_cmp_q);
        END IF;
    END PROCESS;

    -- redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_sticky_ena(REG,834)
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_nor_q = "1") THEN
                redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_sticky_ena_q <= STD_LOGIC_VECTOR(redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_enaAnd(LOGICAL,835)
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_enaAnd_q <= redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_sticky_ena_q and VCC_q;

    -- redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_rdcnt(COUNTER,827)
    -- low=0, high=7, step=1, init=0
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_rdcnt_i <= TO_UNSIGNED(0, 3);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_rdcnt_i <= redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_rdcnt_i, 3)));

    -- redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_inputreg(DELAY,824)
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_inputreg : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_load_tmp13_i_i115928_processfpga_out_o_readdata, xout => redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_inputreg_q, clk => clock, aclr => resetn );

    -- redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_wraddr(REG,828)
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_wraddr_q <= "111";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_wraddr_q <= STD_LOGIC_VECTOR(redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem(DUALMEM,826)
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_ia <= STD_LOGIC_VECTOR(redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_inputreg_q);
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_aa <= redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_wraddr_q;
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_ab <= redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_rdcnt_q;
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_reset0 <= not (resetn);
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 3,
        numwords_a => 8,
        width_b => 16,
        widthad_b => 3,
        numwords_b => 8,
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
        clocken1 => redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_reset0,
        clock1 => clock,
        address_a => redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_aa,
        data_a => redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_ab,
        q_b => redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_iq
    );
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_q <= redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_iq(15 downto 0);

    -- redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_outputreg(DELAY,825)
    redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_outputreg : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_mem_q, xout => redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_outputreg_q, clk => clock, aclr => resetn );

    -- i_unnamed_processfpga1230_vt_const_7(CONSTANT,366)
    i_unnamed_processfpga1230_vt_const_7_q <= "0000000";

    -- c_i8_1gr(CONSTANT,265)
    c_i8_1gr_q <= "00000001";

    -- i_unnamed_processfpga1230(LOGICAL,365)@25
    i_unnamed_processfpga1230_q <= i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_o_readdata_0 and c_i8_1gr_q;

    -- i_unnamed_processfpga1230_vt_select_0(BITSELECT,368)@25
    i_unnamed_processfpga1230_vt_select_0_b <= i_unnamed_processfpga1230_q(0 downto 0);

    -- i_unnamed_processfpga1230_vt_join(BITJOIN,367)@25
    i_unnamed_processfpga1230_vt_join_q <= i_unnamed_processfpga1230_vt_const_7_q & i_unnamed_processfpga1230_vt_select_0_b;

    -- i_tobool_i42_i_processfpga(LOGICAL,364)@25
    i_tobool_i42_i_processfpga_q <= "1" WHEN i_unnamed_processfpga1230_vt_join_q /= dupName_1_c_i8_0gr_x_q ELSE "0";

    -- i_cond_i_i1179_v_v_v_processfpga_1_x(MUX,182)@25 + 1
    i_cond_i_i1179_v_v_v_processfpga_1_x_s <= i_tobool_i42_i_processfpga_q;
    i_cond_i_i1179_v_v_v_processfpga_1_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cond_i_i1179_v_v_v_processfpga_1_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_cond_i_i1179_v_v_v_processfpga_1_x_s) IS
                WHEN "0" => i_cond_i_i1179_v_v_v_processfpga_1_x_q <= i_load_normls_load386_processfpga_out_o_readdata;
                WHEN "1" => i_cond_i_i1179_v_v_v_processfpga_1_x_q <= i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_o_readdata_2;
                WHEN OTHERS => i_cond_i_i1179_v_v_v_processfpga_1_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_cond_i_i1179_v_v_v_processfpga_0_x(MUX,181)@25 + 1
    i_cond_i_i1179_v_v_v_processfpga_0_x_s <= i_tobool_i42_i_processfpga_q;
    i_cond_i_i1179_v_v_v_processfpga_0_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cond_i_i1179_v_v_v_processfpga_0_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_cond_i_i1179_v_v_v_processfpga_0_x_s) IS
                WHEN "0" => i_cond_i_i1179_v_v_v_processfpga_0_x_q <= i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_o_readdata_3;
                WHEN "1" => i_cond_i_i1179_v_v_v_processfpga_0_x_q <= i_load_memcoalesce_localneurons_load_037_processfpga_aunroll_x_out_o_readdata_1;
                WHEN OTHERS => i_cond_i_i1179_v_v_v_processfpga_0_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x(BITJOIN,180)@26
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q <= i_cond_i_i1179_v_v_v_processfpga_1_x_q & i_cond_i_i1179_v_v_v_processfpga_0_x_q;

    -- i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select(BITSELECT,661)@26
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_b <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(0 downto 0);
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_c <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(1 downto 1);
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_d <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(10 downto 10);
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_e <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(11 downto 11);
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_f <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(12 downto 12);
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_g <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(13 downto 13);
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_h <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(14 downto 14);
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_i <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(15 downto 15);
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_j <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(2 downto 2);
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_k <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(3 downto 3);
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_l <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(4 downto 4);
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_m <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(5 downto 5);
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_n <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(6 downto 6);
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_o <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(7 downto 7);
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_p <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(8 downto 8);
    i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_q <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_v_join_x_q(9 downto 9);

    -- i_cond_i_i1179_v_processfpga_processfpga1233_cond_i_i1179_v_v_join_x(BITJOIN,163)@26
    i_cond_i_i1179_v_processfpga_processfpga1233_cond_i_i1179_v_v_join_x_q <= i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_i & i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_h & i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_g & i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_f & i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_e & i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_d & i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_q & i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_p & i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_o & i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_n & i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_m & i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_l & i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_k & i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_j & i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_c & i_cond_i_i1179_v_v_processfpga_processfpga1232_cond_i_i1179_v_v_select_0_x_merged_bit_select_b;

    -- redist20_i_cmp_i_i40_i_processfpga_c_7(DELAY,687)
    redist20_i_cmp_i_i40_i_processfpga_c_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp_i_i40_i_processfpga_c, xout => redist20_i_cmp_i_i40_i_processfpga_c_7_q, clk => clock, aclr => resetn );

    -- i_acl_895_processfpga(MUX,269)@26
    i_acl_895_processfpga_s <= redist20_i_cmp_i_i40_i_processfpga_c_7_q;
    i_acl_895_processfpga_combproc: PROCESS (i_acl_895_processfpga_s, c_i16_0gr_q, i_cond_i_i1179_v_processfpga_processfpga1233_cond_i_i1179_v_v_join_x_q)
    BEGIN
        CASE (i_acl_895_processfpga_s) IS
            WHEN "0" => i_acl_895_processfpga_q <= c_i16_0gr_q;
            WHEN "1" => i_acl_895_processfpga_q <= i_cond_i_i1179_v_processfpga_processfpga1233_cond_i_i1179_v_v_join_x_q;
            WHEN OTHERS => i_acl_895_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist26_i_cmp12_i_i1163_processfpga_q_16(DELAY,693)
    redist26_i_cmp12_i_i1163_processfpga_q_16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist25_i_cmp12_i_i1163_processfpga_q_10_q, xout => redist26_i_cmp12_i_i1163_processfpga_q_16_q, clk => clock, aclr => resetn );

    -- i_acl_896_processfpga(MUX,270)@26
    i_acl_896_processfpga_s <= redist26_i_cmp12_i_i1163_processfpga_q_16_q;
    i_acl_896_processfpga_combproc: PROCESS (i_acl_896_processfpga_s, i_acl_895_processfpga_q, redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_outputreg_q)
    BEGIN
        CASE (i_acl_896_processfpga_s) IS
            WHEN "0" => i_acl_896_processfpga_q <= i_acl_895_processfpga_q;
            WHEN "1" => i_acl_896_processfpga_q <= redist17_i_load_tmp13_i_i115928_processfpga_out_o_readdata_11_outputreg_q;
            WHEN OTHERS => i_acl_896_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_notEnable(LOGICAL,843)
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_nor(LOGICAL,844)
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_nor_q <= not (redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_notEnable_q or redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_sticky_ena_q);

    -- redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_last(CONSTANT,840)
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_last_q <= "0101";

    -- redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_cmp(LOGICAL,841)
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_cmp_b <= STD_LOGIC_VECTOR("0" & redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_q);
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_cmp_q <= "1" WHEN redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_last_q = redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_cmp_b ELSE "0";

    -- redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_cmpReg(REG,842)
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_cmpReg_q <= STD_LOGIC_VECTOR(redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_cmp_q);
        END IF;
    END PROCESS;

    -- redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_sticky_ena(REG,845)
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_nor_q = "1") THEN
                redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_sticky_ena_q <= STD_LOGIC_VECTOR(redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_enaAnd(LOGICAL,846)
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_enaAnd_q <= redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_sticky_ena_q and VCC_q;

    -- redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt(COUNTER,838)
    -- low=0, high=6, step=1, init=0
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_eq <= '1';
            ELSE
                redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_eq <= '0';
            END IF;
            IF (redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_eq = '1') THEN
                redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_i <= redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_i + 2;
            ELSE
                redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_i <= redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_i, 3)));

    -- redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_inputreg(DELAY,836)
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_inputreg : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist18_i_load_tmp11_i_i115729_processfpga_out_o_readdata_2_q, xout => redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_inputreg_q, clk => clock, aclr => resetn );

    -- redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_wraddr(REG,839)
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_wraddr_q <= "110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_wraddr_q <= STD_LOGIC_VECTOR(redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem(DUALMEM,837)
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_ia <= STD_LOGIC_VECTOR(redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_inputreg_q);
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_aa <= redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_wraddr_q;
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_ab <= redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_rdcnt_q;
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_reset0 <= not (resetn);
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_dmem : altera_syncram
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
        clocken1 => redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_reset0,
        clock1 => clock,
        address_a => redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_aa,
        data_a => redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_ab,
        q_b => redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_iq
    );
    redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_q <= redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_iq(15 downto 0);

    -- i_store_memdep_20_processfpga_aunroll_x(BLACKBOX,249)@26
    -- out out_memdep_20_avm_address@20000000
    -- out out_memdep_20_avm_burstcount@20000000
    -- out out_memdep_20_avm_byteenable@20000000
    -- out out_memdep_20_avm_enable@20000000
    -- out out_memdep_20_avm_read@20000000
    -- out out_memdep_20_avm_write@20000000
    -- out out_memdep_20_avm_writedata@20000000
    -- out out_o_stall@27
    -- out out_o_valid@27
    -- out out_o_writeack@27
    thei_store_memdep_20_processfpga_aunroll_x : i_store_memdep_20_processfpga1239
    PORT MAP (
        in_i_writedata_0 => redist19_i_load_tmp11_i_i115729_processfpga_out_o_readdata_11_mem_q,
        in_i_writedata_1 => i_acl_896_processfpga_q,
        in_i_writedata_2 => i_normls_or367_compressed_processfpga_processfpga1206_normls_or367_bitvec_join_x_q,
        in_i_writedata_3 => c_i16_0gr_q,
        in_flush => in_flush,
        in_i_address => i_memcoalesce_null_bitcast_0_processfpga_vt_join_q,
        in_i_byteenable => i_not_phi_decision1500_or1503_and_processfpga_vt_join_q,
        in_i_predicate => redist16_i_phi_decision1500_or1503_processfpga_q_16_q,
        in_i_stall => GND_q,
        in_i_valid => redist43_sync_in_aunroll_x_in_i_valid_25_q,
        in_memdep_20_avm_readdata => in_memdep_20_avm_readdata,
        in_memdep_20_avm_readdatavalid => in_memdep_20_avm_readdatavalid,
        in_memdep_20_avm_waitrequest => in_memdep_20_avm_waitrequest,
        in_memdep_20_avm_writeack => in_memdep_20_avm_writeack,
        out_memdep_20_avm_address => i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_address,
        out_memdep_20_avm_burstcount => i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_burstcount,
        out_memdep_20_avm_byteenable => i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_byteenable,
        out_memdep_20_avm_enable => i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_enable,
        out_memdep_20_avm_read => i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_read,
        out_memdep_20_avm_write => i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_write,
        out_memdep_20_avm_writedata => i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_8_ext_sig_sync_out_x(GPOUT,34)
    out_memdep_20_avm_address <= i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_address;
    out_memdep_20_avm_enable <= i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_enable;
    out_memdep_20_avm_read <= i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_read;
    out_memdep_20_avm_write <= i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_write;
    out_memdep_20_avm_writedata <= i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_writedata;
    out_memdep_20_avm_byteenable <= i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_byteenable;
    out_memdep_20_avm_burstcount <= i_store_memdep_20_processfpga_aunroll_x_out_memdep_20_avm_burstcount;

    -- redist44_sync_in_aunroll_x_in_i_valid_26(DELAY,711)
    redist44_sync_in_aunroll_x_in_i_valid_26 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist43_sync_in_aunroll_x_in_i_valid_25_q, xout => redist44_sync_in_aunroll_x_in_i_valid_26_q, clk => clock, aclr => resetn );

    -- i_ffwd_src_unnamed_processfpga173_processfpga(BLACKBOX,301)@25
    -- out out_intel_reserved_ffwd_81_0@20000000
    thei_ffwd_src_unnamed_processfpga173_processfpga : i_ffwd_src_unnamed_processfpga173_processfpga1253
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_81_0 => i_acl_897_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => redist42_sync_in_aunroll_x_in_i_valid_24_q,
        out_intel_reserved_ffwd_81_0 => i_ffwd_src_unnamed_processfpga173_processfpga_out_intel_reserved_ffwd_81_0,
        clock => clock,
        resetn => resetn
    );

    -- redist13_i_unnamed_processfpga1244_q_25(DELAY,680)
    redist13_i_unnamed_processfpga1244_q_25 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist12_i_unnamed_processfpga1244_q_24_q, xout => redist13_i_unnamed_processfpga1244_q_25_q, clk => clock, aclr => resetn );

    -- i_acl_push_i32_acl_hw_wg_id803_push109_processfpga(BLACKBOX,284)@26
    -- out out_feedback_out_109@20000000
    -- out out_feedback_valid_out_109@20000000
    thei_acl_push_i32_acl_hw_wg_id803_push109_processfpga : i_acl_push_i32_acl_hw_wg_id803_push109_processfpga1257
    PORT MAP (
        in_data_in => redist27_i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_data_out_1_q,
        in_feedback_stall_in_109 => i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_feedback_stall_out_109,
        in_stall_in => GND_q,
        in_unnamed_processFPGA447 => redist13_i_unnamed_processfpga1244_q_25_q,
        in_valid_in => redist43_sync_in_aunroll_x_in_i_valid_25_q,
        out_feedback_out_109 => i_acl_push_i32_acl_hw_wg_id803_push109_processfpga_out_feedback_out_109,
        out_feedback_valid_out_109 => i_acl_push_i32_acl_hw_wg_id803_push109_processfpga_out_feedback_valid_out_109,
        clock => clock,
        resetn => resetn
    );

    -- redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_notEnable(LOGICAL,853)
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_nor(LOGICAL,854)
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_nor_q <= not (redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_notEnable_q or redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_sticky_ena_q);

    -- redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_last(CONSTANT,850)
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_last_q <= "010101";

    -- redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_cmp(LOGICAL,851)
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_cmp_b <= STD_LOGIC_VECTOR("0" & redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_q);
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_cmp_q <= "1" WHEN redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_last_q = redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_cmp_b ELSE "0";

    -- redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_cmpReg(REG,852)
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_cmpReg_q <= STD_LOGIC_VECTOR(redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_cmp_q);
        END IF;
    END PROCESS;

    -- redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_sticky_ena(REG,855)
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_nor_q = "1") THEN
                redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_sticky_ena_q <= STD_LOGIC_VECTOR(redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_enaAnd(LOGICAL,856)
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_enaAnd_q <= redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_sticky_ena_q and VCC_q;

    -- redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt(COUNTER,848)
    -- low=0, high=22, step=1, init=0
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_i = TO_UNSIGNED(21, 5)) THEN
                redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_eq <= '1';
            ELSE
                redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_eq <= '0';
            END IF;
            IF (redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_eq = '1') THEN
                redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_i <= redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_i + 10;
            ELSE
                redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_i <= redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_i, 5)));

    -- redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_wraddr(REG,849)
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_wraddr_q <= "10110";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_wraddr_q <= STD_LOGIC_VECTOR(redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem(DUALMEM,847)
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_ia <= STD_LOGIC_VECTOR(in_c0_eni2951_2);
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_aa <= redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_wraddr_q;
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_ab <= redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_rdcnt_q;
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_reset0 <= not (resetn);
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 5,
        numwords_a => 23,
        width_b => 32,
        widthad_b => 5,
        numwords_b => 23,
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
        clocken1 => redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_reset0,
        clock1 => clock,
        address_a => redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_aa,
        data_a => redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_ab,
        q_b => redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_iq
    );
    redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_q <= redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_iq(31 downto 0);

    -- i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga(BLACKBOX,279)@25
    -- out out_feedback_stall_out_109@20000000
    thei_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga : i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga1255
    PORT MAP (
        in_data_in => redist31_sync_in_aunroll_x_in_c0_eni2951_2_24_mem_q,
        in_dir => redist30_sync_in_aunroll_x_in_c0_eni2951_1_24_q,
        in_feedback_in_109 => i_acl_push_i32_acl_hw_wg_id803_push109_processfpga_out_feedback_out_109,
        in_feedback_valid_in_109 => i_acl_push_i32_acl_hw_wg_id803_push109_processfpga_out_feedback_valid_out_109,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist42_sync_in_aunroll_x_in_i_valid_24_q,
        out_data_out => i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_data_out,
        out_feedback_stall_out_109 => i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_feedback_stall_out_109,
        clock => clock,
        resetn => resetn
    );

    -- redist27_i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_data_out_1(DELAY,694)
    redist27_i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_data_out, xout => redist27_i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist28_i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_data_out_2(DELAY,695)
    redist28_i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_data_out_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist27_i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_data_out_1_q, xout => redist28_i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_data_out_2_q, clk => clock, aclr => resetn );

    -- redist14_i_unnamed_processfpga1244_q_26(DELAY,681)
    redist14_i_unnamed_processfpga1244_q_26 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist13_i_unnamed_processfpga1244_q_25_q, xout => redist14_i_unnamed_processfpga1244_q_26_q, clk => clock, aclr => resetn );

    -- sync_out_aunroll_x(GPOUT,251)@27
    out_c0_exi2956_0 <= GND_q;
    out_c0_exi2956_1 <= redist14_i_unnamed_processfpga1244_q_26_q;
    out_c0_exi2956_2 <= redist28_i_acl_pop_i32_acl_hw_wg_id803_pop109_processfpga_out_data_out_2_q;
    out_intel_reserved_ffwd_81_0 <= i_ffwd_src_unnamed_processfpga173_processfpga_out_intel_reserved_ffwd_81_0;
    out_o_valid <= redist44_sync_in_aunroll_x_in_i_valid_26_q;

    -- i_acl_push_i1_notexitcond686_processfpga(BLACKBOX,283)@1
    -- out out_feedback_out_20@20000000
    -- out out_feedback_valid_out_20@20000000
    thei_acl_push_i1_notexitcond686_processfpga : i_acl_push_i1_notexitcond686_processfpga1251
    PORT MAP (
        in_data_in => i_unnamed_processfpga1244_q,
        in_feedback_stall_in_20 => i_acl_pipeline_keep_going685_processfpga_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_20 => i_acl_push_i1_notexitcond686_processfpga_out_feedback_out_20,
        out_feedback_valid_out_20 => i_acl_push_i1_notexitcond686_processfpga_out_feedback_valid_out_20,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going685_processfpga(BLACKBOX,276)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going685_processfpga : i_acl_pipeline_keep_going685_processfpga1160
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond686_processfpga_out_feedback_out_20,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond686_processfpga_out_feedback_valid_out_20,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going685_processfpga_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going685_processfpga_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going685_processfpga_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going685_processfpga_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,268)
    out_aclp_to_limiter_i_acl_pipeline_keep_going685_processfpga_exiting_valid_out <= i_acl_pipeline_keep_going685_processfpga_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going685_processfpga_exiting_stall_out <= i_acl_pipeline_keep_going685_processfpga_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,376)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going685_processfpga_out_pipeline_valid_out;

END normal;
