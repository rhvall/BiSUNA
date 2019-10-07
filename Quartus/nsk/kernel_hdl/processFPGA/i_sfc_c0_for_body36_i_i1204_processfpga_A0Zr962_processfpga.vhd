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

-- VHDL created from i_sfc_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga
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

entity i_sfc_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga is
    port (
        in_c0_eni2961_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2961_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2961_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit968_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit968_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit968_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exit968_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_80_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_82_0 : in std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_null_load_0_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_83_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_84_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0_avm_byteenable : out std_logic_vector(7 downto 0);  -- ufix8
        in_intel_reserved_ffwd_85_0 : in std_logic_vector(32 downto 0);  -- ufix33
        out_memcoalesce_null_load_0_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_memcoalesce_null_load_0_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_0_avm_readdata : in std_logic_vector(63 downto 0);  -- ufix64
        out_memcoalesce_null_load_0_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_null_load_0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_null_load_0_avm_writedata : out std_logic_vector(63 downto 0);  -- ufix64
        in_memcoalesce_null_load_0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_21_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_null_load_0_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_21_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_21_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_21_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        in_memdep_21_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_21_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_21_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_21_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_21_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_21_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_22_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_21_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_22_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_22_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_22_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_22_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_22_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_22_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_22_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_22_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_22_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_22_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_i_stall : in std_logic_vector(0 downto 0);  -- ufix1
        out_o_stall : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga;

architecture normal of i_sfc_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga1339 is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_input_accepted : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_entry : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285 is
        port (
            in_c0_eni2961_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni2961_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni2961_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_80_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_82_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_83_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_84_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_85_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_localNeurons : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_readdata : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_null_load_0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_21_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_21_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_21_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_21_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_22_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_22_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_22_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_22_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exi3967_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exi3967_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exi3967_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exi3967_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_byteenable : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_null_load_0_avm_writedata : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_memdep_21_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_21_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_21_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_21_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_21_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_21_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_21_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_22_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_22_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_22_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_22_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_22_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_22_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_22_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_data_out_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_data_out_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_stall_entry : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_c0_exi3967_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_c0_exi3967_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_c0_exi3967_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_c0_exi3967_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_byteenable : STD_LOGIC_VECTOR (7 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_writedata : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal input_accepted_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_stall_out(LOGICAL,47)
    not_stall_out_q <= not (i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_stall_entry);

    -- input_accepted_and(LOGICAL,46)
    input_accepted_and_q <= in_i_valid and not_stall_out_q;

    -- i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x(BLACKBOX,45)@1
    -- out out_c0_exi3967_0@11
    -- out out_c0_exi3967_1@11
    -- out out_c0_exi3967_2@11
    -- out out_c0_exi3967_3@11
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_valid_out@20000000
    -- out out_memcoalesce_null_load_0_avm_address@20000000
    -- out out_memcoalesce_null_load_0_avm_burstcount@20000000
    -- out out_memcoalesce_null_load_0_avm_byteenable@20000000
    -- out out_memcoalesce_null_load_0_avm_enable@20000000
    -- out out_memcoalesce_null_load_0_avm_read@20000000
    -- out out_memcoalesce_null_load_0_avm_write@20000000
    -- out out_memcoalesce_null_load_0_avm_writedata@20000000
    -- out out_memdep_21_avm_address@20000000
    -- out out_memdep_21_avm_burstcount@20000000
    -- out out_memdep_21_avm_byteenable@20000000
    -- out out_memdep_21_avm_enable@20000000
    -- out out_memdep_21_avm_read@20000000
    -- out out_memdep_21_avm_write@20000000
    -- out out_memdep_21_avm_writedata@20000000
    -- out out_memdep_22_avm_address@20000000
    -- out out_memdep_22_avm_burstcount@20000000
    -- out out_memdep_22_avm_byteenable@20000000
    -- out out_memdep_22_avm_enable@20000000
    -- out out_memdep_22_avm_read@20000000
    -- out out_memdep_22_avm_write@20000000
    -- out out_memdep_22_avm_writedata@20000000
    -- out out_o_valid@11
    -- out out_pipeline_valid_out@20000000
    thei_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x : i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285
    PORT MAP (
        in_c0_eni2961_0 => in_c0_eni2961_0,
        in_c0_eni2961_1 => in_c0_eni2961_1,
        in_c0_eni2961_2 => in_c0_eni2961_2,
        in_flush => in_flush,
        in_i_valid => input_accepted_and_q,
        in_intel_reserved_ffwd_80_0 => in_intel_reserved_ffwd_80_0,
        in_intel_reserved_ffwd_82_0 => in_intel_reserved_ffwd_82_0,
        in_intel_reserved_ffwd_83_0 => in_intel_reserved_ffwd_83_0,
        in_intel_reserved_ffwd_84_0 => in_intel_reserved_ffwd_84_0,
        in_intel_reserved_ffwd_85_0 => in_intel_reserved_ffwd_85_0,
        in_localNeurons => in_localNeurons,
        in_memcoalesce_null_load_0_avm_readdata => in_memcoalesce_null_load_0_avm_readdata,
        in_memcoalesce_null_load_0_avm_readdatavalid => in_memcoalesce_null_load_0_avm_readdatavalid,
        in_memcoalesce_null_load_0_avm_waitrequest => in_memcoalesce_null_load_0_avm_waitrequest,
        in_memcoalesce_null_load_0_avm_writeack => in_memcoalesce_null_load_0_avm_writeack,
        in_memdep_21_avm_readdata => in_memdep_21_avm_readdata,
        in_memdep_21_avm_readdatavalid => in_memdep_21_avm_readdatavalid,
        in_memdep_21_avm_waitrequest => in_memdep_21_avm_waitrequest,
        in_memdep_21_avm_writeack => in_memdep_21_avm_writeack,
        in_memdep_22_avm_readdata => in_memdep_22_avm_readdata,
        in_memdep_22_avm_readdatavalid => in_memdep_22_avm_readdatavalid,
        in_memdep_22_avm_waitrequest => in_memdep_22_avm_waitrequest,
        in_memdep_22_avm_writeack => in_memdep_22_avm_writeack,
        in_pipeline_stall_in => in_pipeline_stall_in,
        out_c0_exi3967_0 => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_c0_exi3967_0,
        out_c0_exi3967_1 => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_c0_exi3967_1,
        out_c0_exi3967_2 => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_c0_exi3967_2,
        out_c0_exi3967_3 => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_c0_exi3967_3,
        out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_stall_out => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_valid_out => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_valid_out,
        out_memcoalesce_null_load_0_avm_address => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_address,
        out_memcoalesce_null_load_0_avm_burstcount => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_burstcount,
        out_memcoalesce_null_load_0_avm_byteenable => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_byteenable,
        out_memcoalesce_null_load_0_avm_enable => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_enable,
        out_memcoalesce_null_load_0_avm_read => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_read,
        out_memcoalesce_null_load_0_avm_write => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_write,
        out_memcoalesce_null_load_0_avm_writedata => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_writedata,
        out_memdep_21_avm_address => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_address,
        out_memdep_21_avm_burstcount => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_burstcount,
        out_memdep_21_avm_byteenable => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_byteenable,
        out_memdep_21_avm_enable => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_enable,
        out_memdep_21_avm_read => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_read,
        out_memdep_21_avm_write => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_write,
        out_memdep_21_avm_writedata => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_writedata,
        out_memdep_22_avm_address => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_address,
        out_memdep_22_avm_burstcount => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_burstcount,
        out_memdep_22_avm_byteenable => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_byteenable,
        out_memdep_22_avm_enable => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_enable,
        out_memdep_22_avm_read => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_read,
        out_memdep_22_avm_write => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_write,
        out_memdep_22_avm_writedata => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_writedata,
        out_o_valid => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x(BLACKBOX,44)@20000000
    -- out out_data_out_0@20000003
    -- out out_data_out_1@20000003
    -- out out_data_out_2@20000003
    -- out out_data_out_3@20000003
    -- out out_valid_out@20000003
    thei_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x : i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga1339
    PORT MAP (
        in_data_in_0 => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_c0_exi3967_0,
        in_data_in_1 => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_c0_exi3967_1,
        in_data_in_2 => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_c0_exi3967_2,
        in_data_in_3 => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_c0_exi3967_3,
        in_input_accepted => input_accepted_and_q,
        in_stall_in => in_i_stall,
        in_valid_in => i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_o_valid,
        out_data_out_0 => i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_data_out_0,
        out_data_out_1 => i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_data_out_1,
        out_data_out_2 => i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_data_out_2,
        out_data_out_3 => i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_data_out_3,
        out_stall_entry => i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_stall_entry,
        out_valid_out => i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_sync_out_aunroll_x(GPOUT,3)@14
    out_c0_exit968_0 <= i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_data_out_0;
    out_c0_exit968_1 <= i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_data_out_1;
    out_c0_exit968_2 <= i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_data_out_2;
    out_c0_exit968_3 <= i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_data_out_3;
    out_o_valid <= i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_valid_out;

    -- dupName_0_regfree_osync_x(GPOUT,5)
    out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_valid_out <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_valid_out;

    -- dupName_1_regfree_osync_x(GPOUT,7)
    out_memcoalesce_null_load_0_avm_address <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_address;

    -- dupName_2_regfree_osync_x(GPOUT,9)
    out_memcoalesce_null_load_0_avm_burstcount <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_burstcount;

    -- dupName_3_regfree_osync_x(GPOUT,11)
    out_memcoalesce_null_load_0_avm_byteenable <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_byteenable;

    -- dupName_4_regfree_osync_x(GPOUT,13)
    out_memcoalesce_null_load_0_avm_enable <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_enable;

    -- dupName_5_regfree_osync_x(GPOUT,15)
    out_memcoalesce_null_load_0_avm_read <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_read;

    -- dupName_6_regfree_osync_x(GPOUT,17)
    out_memcoalesce_null_load_0_avm_write <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_write;

    -- dupName_7_regfree_osync_x(GPOUT,19)
    out_memcoalesce_null_load_0_avm_writedata <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memcoalesce_null_load_0_avm_writedata;

    -- dupName_8_regfree_osync_x(GPOUT,21)
    out_memdep_21_avm_address <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_address;

    -- dupName_9_regfree_osync_x(GPOUT,23)
    out_memdep_21_avm_burstcount <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_burstcount;

    -- dupName_10_regfree_osync_x(GPOUT,25)
    out_memdep_21_avm_byteenable <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_byteenable;

    -- dupName_11_regfree_osync_x(GPOUT,27)
    out_memdep_21_avm_enable <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_enable;

    -- dupName_12_regfree_osync_x(GPOUT,29)
    out_memdep_21_avm_read <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_read;

    -- dupName_13_regfree_osync_x(GPOUT,31)
    out_memdep_21_avm_write <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_write;

    -- dupName_14_regfree_osync_x(GPOUT,33)
    out_memdep_21_avm_writedata <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_21_avm_writedata;

    -- dupName_15_regfree_osync_x(GPOUT,35)
    out_memdep_22_avm_address <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_address;

    -- dupName_16_regfree_osync_x(GPOUT,37)
    out_memdep_22_avm_burstcount <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_burstcount;

    -- dupName_17_regfree_osync_x(GPOUT,39)
    out_memdep_22_avm_byteenable <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_byteenable;

    -- dupName_18_regfree_osync_x(GPOUT,40)
    out_memdep_22_avm_enable <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_enable;

    -- dupName_19_regfree_osync_x(GPOUT,41)
    out_memdep_22_avm_read <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_read;

    -- dupName_20_regfree_osync_x(GPOUT,42)
    out_memdep_22_avm_write <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_write;

    -- dupName_21_regfree_osync_x(GPOUT,43)
    out_memdep_22_avm_writedata <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_memdep_22_avm_writedata;

    -- pipeline_valid_out_sync(GPOUT,49)
    out_pipeline_valid_out <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_pipeline_valid_out;

    -- regfree_osync(GPOUT,51)
    out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_stall_out <= i_sfc_logic_c0_for_body36_i_i1204_processfpga_c0_enter962_processfpga1285_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going690_processfpga_exiting_stall_out;

    -- sync_out(GPOUT,53)@20000000
    out_o_stall <= i_acl_sfc_exit_c0_for_body36_i_i1204_processfpga_c0_exit968_processfpga_aunroll_x_out_stall_entry;

END normal;
