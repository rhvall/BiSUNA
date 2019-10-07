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

-- VHDL created from bb_processFPGA_B2
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

entity bb_processFPGA_B2 is
    port (
        out_c0_exit_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit_1 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit_2 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit_5 : out std_logic_vector(31 downto 0);  -- ufix32
        out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA14_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_processFPGA14_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_processFPGA14_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA14_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA14_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA14_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA14_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_acl_hw_wg_id791_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_acl_hw_wg_id791_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_conns : in std_logic_vector(63 downto 0);  -- ufix64
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked352_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked352_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_input : in std_logic_vector(63 downto 0);  -- ufix64
        in_intel_reserved_ffwd_10_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_11_0 : in std_logic_vector(16 downto 0);  -- ufix17
        in_intel_reserved_ffwd_9_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_localConn : in std_logic_vector(63 downto 0);  -- ufix64
        in_localInput : in std_logic_vector(63 downto 0);  -- ufix64
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        in_localOutput : in std_logic_vector(63 downto 0);  -- ufix64
        in_memdep_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_netSt : in std_logic_vector(63 downto 0);  -- ufix64
        in_neurons : in std_logic_vector(63 downto 0);  -- ufix64
        in_output : in std_logic_vector(63 downto 0);  -- ufix64
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA14_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_processFPGA14_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA14_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA14_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_processFPGA_B2;

architecture normal of bb_processFPGA_B2 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component processFPGA_B2_branch is
        port (
            in_c0_exit_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_processFPGA_B2_stall_region is
        port (
            in_acl_hw_wg_id791 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked352 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_10_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_11_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_9_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_localInput : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memdep_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_memdep_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA14_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_processFPGA14_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA14_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA14_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_memdep_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA14_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_processFPGA14_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_processFPGA14_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA14_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA14_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA14_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA14_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component processFPGA_B2_merge is
        port (
            in_acl_hw_wg_id791_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_acl_hw_wg_id791_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_forked352_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked352_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_acl_hw_wg_id791 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_forked352 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal processFPGA_B2_branch_aunroll_x_out_c0_exit_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B2_branch_aunroll_x_out_c0_exit_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal processFPGA_B2_branch_aunroll_x_out_c0_exit_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal processFPGA_B2_branch_aunroll_x_out_c0_exit_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B2_branch_aunroll_x_out_c0_exit_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B2_branch_aunroll_x_out_c0_exit_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal processFPGA_B2_branch_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B2_branch_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B2_branch_aunroll_x_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_c0_exit_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_c0_exit_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_processFPGA_B2_stall_region_out_c0_exit_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_processFPGA_B2_stall_region_out_c0_exit_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_c0_exit_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_c0_exit_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_processfpga_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_processfpga_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_c0_exe3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_memdep_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B2_stall_region_out_memdep_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_memdep_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal bb_processFPGA_B2_stall_region_out_memdep_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_memdep_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_memdep_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_memdep_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal bb_processFPGA_B2_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_processFPGA_B2_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B2_merge_out_acl_hw_wg_id791 : STD_LOGIC_VECTOR (31 downto 0);
    signal processFPGA_B2_merge_out_forked352 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B2_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B2_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B2_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- processFPGA_B2_merge(BLACKBOX,61)
    theprocessFPGA_B2_merge : processFPGA_B2_merge
    PORT MAP (
        in_acl_hw_wg_id791_0 => in_acl_hw_wg_id791_0,
        in_acl_hw_wg_id791_1 => in_acl_hw_wg_id791_1,
        in_forked352_0 => in_forked352_0,
        in_forked352_1 => in_forked352_1,
        in_stall_in => bb_processFPGA_B2_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_acl_hw_wg_id791 => processFPGA_B2_merge_out_acl_hw_wg_id791,
        out_forked352 => processFPGA_B2_merge_out_forked352,
        out_stall_out_0 => processFPGA_B2_merge_out_stall_out_0,
        out_stall_out_1 => processFPGA_B2_merge_out_stall_out_1,
        out_valid_out => processFPGA_B2_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_processFPGA_B2_stall_region(BLACKBOX,29)
    thebb_processFPGA_B2_stall_region : bb_processFPGA_B2_stall_region
    PORT MAP (
        in_acl_hw_wg_id791 => processFPGA_B2_merge_out_acl_hw_wg_id791,
        in_flush => in_flush,
        in_forked352 => processFPGA_B2_merge_out_forked352,
        in_input => in_input,
        in_intel_reserved_ffwd_10_0 => in_intel_reserved_ffwd_10_0,
        in_intel_reserved_ffwd_11_0 => in_intel_reserved_ffwd_11_0,
        in_intel_reserved_ffwd_9_0 => in_intel_reserved_ffwd_9_0,
        in_localInput => in_localInput,
        in_memdep_avm_readdata => in_memdep_avm_readdata,
        in_memdep_avm_readdatavalid => in_memdep_avm_readdatavalid,
        in_memdep_avm_waitrequest => in_memdep_avm_waitrequest,
        in_memdep_avm_writeack => in_memdep_avm_writeack,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => processFPGA_B2_branch_aunroll_x_out_stall_out,
        in_unnamed_processFPGA14_avm_readdata => in_unnamed_processFPGA14_avm_readdata,
        in_unnamed_processFPGA14_avm_readdatavalid => in_unnamed_processFPGA14_avm_readdatavalid,
        in_unnamed_processFPGA14_avm_waitrequest => in_unnamed_processFPGA14_avm_waitrequest,
        in_unnamed_processFPGA14_avm_writeack => in_unnamed_processFPGA14_avm_writeack,
        in_valid_in => processFPGA_B2_merge_out_valid_out,
        out_c0_exit_0 => bb_processFPGA_B2_stall_region_out_c0_exit_0,
        out_c0_exit_1 => bb_processFPGA_B2_stall_region_out_c0_exit_1,
        out_c0_exit_2 => bb_processFPGA_B2_stall_region_out_c0_exit_2,
        out_c0_exit_3 => bb_processFPGA_B2_stall_region_out_c0_exit_3,
        out_c0_exit_4 => bb_processFPGA_B2_stall_region_out_c0_exit_4,
        out_c0_exit_5 => bb_processFPGA_B2_stall_region_out_c0_exit_5,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_processfpga_exiting_stall_out => bb_processFPGA_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_processfpga_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_processfpga_exiting_valid_out => bb_processFPGA_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_processfpga_exiting_valid_out,
        out_c0_exe3 => bb_processFPGA_B2_stall_region_out_c0_exe3,
        out_memdep_avm_address => bb_processFPGA_B2_stall_region_out_memdep_avm_address,
        out_memdep_avm_burstcount => bb_processFPGA_B2_stall_region_out_memdep_avm_burstcount,
        out_memdep_avm_byteenable => bb_processFPGA_B2_stall_region_out_memdep_avm_byteenable,
        out_memdep_avm_enable => bb_processFPGA_B2_stall_region_out_memdep_avm_enable,
        out_memdep_avm_read => bb_processFPGA_B2_stall_region_out_memdep_avm_read,
        out_memdep_avm_write => bb_processFPGA_B2_stall_region_out_memdep_avm_write,
        out_memdep_avm_writedata => bb_processFPGA_B2_stall_region_out_memdep_avm_writedata,
        out_pipeline_valid_out => bb_processFPGA_B2_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_processFPGA_B2_stall_region_out_stall_out,
        out_unnamed_processFPGA14_avm_address => bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_address,
        out_unnamed_processFPGA14_avm_burstcount => bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_burstcount,
        out_unnamed_processFPGA14_avm_byteenable => bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_byteenable,
        out_unnamed_processFPGA14_avm_enable => bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_enable,
        out_unnamed_processFPGA14_avm_read => bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_read,
        out_unnamed_processFPGA14_avm_write => bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_write,
        out_unnamed_processFPGA14_avm_writedata => bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_writedata,
        out_valid_out => bb_processFPGA_B2_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- processFPGA_B2_branch_aunroll_x(BLACKBOX,28)
    theprocessFPGA_B2_branch_aunroll_x : processFPGA_B2_branch
    PORT MAP (
        in_c0_exit_0 => bb_processFPGA_B2_stall_region_out_c0_exit_0,
        in_c0_exit_1 => bb_processFPGA_B2_stall_region_out_c0_exit_1,
        in_c0_exit_2 => bb_processFPGA_B2_stall_region_out_c0_exit_2,
        in_c0_exit_3 => bb_processFPGA_B2_stall_region_out_c0_exit_3,
        in_c0_exit_4 => bb_processFPGA_B2_stall_region_out_c0_exit_4,
        in_c0_exit_5 => bb_processFPGA_B2_stall_region_out_c0_exit_5,
        in_c0_exe3 => bb_processFPGA_B2_stall_region_out_c0_exe3,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_processFPGA_B2_stall_region_out_valid_out,
        out_c0_exit_0 => processFPGA_B2_branch_aunroll_x_out_c0_exit_0,
        out_c0_exit_1 => processFPGA_B2_branch_aunroll_x_out_c0_exit_1,
        out_c0_exit_2 => processFPGA_B2_branch_aunroll_x_out_c0_exit_2,
        out_c0_exit_3 => processFPGA_B2_branch_aunroll_x_out_c0_exit_3,
        out_c0_exit_4 => processFPGA_B2_branch_aunroll_x_out_c0_exit_4,
        out_c0_exit_5 => processFPGA_B2_branch_aunroll_x_out_c0_exit_5,
        out_stall_out => processFPGA_B2_branch_aunroll_x_out_stall_out,
        out_valid_out_0 => processFPGA_B2_branch_aunroll_x_out_valid_out_0,
        out_valid_out_1 => processFPGA_B2_branch_aunroll_x_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exit_0(GPOUT,2)
    out_c0_exit_0 <= processFPGA_B2_branch_aunroll_x_out_c0_exit_0;

    -- out_c0_exit_1(GPOUT,3)
    out_c0_exit_1 <= processFPGA_B2_branch_aunroll_x_out_c0_exit_1;

    -- out_c0_exit_2(GPOUT,4)
    out_c0_exit_2 <= processFPGA_B2_branch_aunroll_x_out_c0_exit_2;

    -- out_c0_exit_3(GPOUT,5)
    out_c0_exit_3 <= processFPGA_B2_branch_aunroll_x_out_c0_exit_3;

    -- out_c0_exit_4(GPOUT,6)
    out_c0_exit_4 <= processFPGA_B2_branch_aunroll_x_out_c0_exit_4;

    -- out_c0_exit_5(GPOUT,7)
    out_c0_exit_5 <= processFPGA_B2_branch_aunroll_x_out_c0_exit_5;

    -- out_exiting_stall_out(GPOUT,8)
    out_exiting_stall_out <= bb_processFPGA_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_processfpga_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,9)
    out_exiting_valid_out <= bb_processFPGA_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_processfpga_exiting_valid_out;

    -- out_memdep_avm_address(GPOUT,10)
    out_memdep_avm_address <= bb_processFPGA_B2_stall_region_out_memdep_avm_address;

    -- out_memdep_avm_burstcount(GPOUT,11)
    out_memdep_avm_burstcount <= bb_processFPGA_B2_stall_region_out_memdep_avm_burstcount;

    -- out_memdep_avm_byteenable(GPOUT,12)
    out_memdep_avm_byteenable <= bb_processFPGA_B2_stall_region_out_memdep_avm_byteenable;

    -- out_memdep_avm_enable(GPOUT,13)
    out_memdep_avm_enable <= bb_processFPGA_B2_stall_region_out_memdep_avm_enable;

    -- out_memdep_avm_read(GPOUT,14)
    out_memdep_avm_read <= bb_processFPGA_B2_stall_region_out_memdep_avm_read;

    -- out_memdep_avm_write(GPOUT,15)
    out_memdep_avm_write <= bb_processFPGA_B2_stall_region_out_memdep_avm_write;

    -- out_memdep_avm_writedata(GPOUT,16)
    out_memdep_avm_writedata <= bb_processFPGA_B2_stall_region_out_memdep_avm_writedata;

    -- out_stall_out_0(GPOUT,17)
    out_stall_out_0 <= processFPGA_B2_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,18)
    out_stall_out_1 <= processFPGA_B2_merge_out_stall_out_1;

    -- out_unnamed_processFPGA14_avm_address(GPOUT,19)
    out_unnamed_processFPGA14_avm_address <= bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_address;

    -- out_unnamed_processFPGA14_avm_burstcount(GPOUT,20)
    out_unnamed_processFPGA14_avm_burstcount <= bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_burstcount;

    -- out_unnamed_processFPGA14_avm_byteenable(GPOUT,21)
    out_unnamed_processFPGA14_avm_byteenable <= bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_byteenable;

    -- out_unnamed_processFPGA14_avm_enable(GPOUT,22)
    out_unnamed_processFPGA14_avm_enable <= bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_enable;

    -- out_unnamed_processFPGA14_avm_read(GPOUT,23)
    out_unnamed_processFPGA14_avm_read <= bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_read;

    -- out_unnamed_processFPGA14_avm_write(GPOUT,24)
    out_unnamed_processFPGA14_avm_write <= bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_write;

    -- out_unnamed_processFPGA14_avm_writedata(GPOUT,25)
    out_unnamed_processFPGA14_avm_writedata <= bb_processFPGA_B2_stall_region_out_unnamed_processFPGA14_avm_writedata;

    -- out_valid_out_0(GPOUT,26)
    out_valid_out_0 <= processFPGA_B2_branch_aunroll_x_out_valid_out_0;

    -- out_valid_out_1(GPOUT,27)
    out_valid_out_1 <= processFPGA_B2_branch_aunroll_x_out_valid_out_1;

    -- pipeline_valid_out_sync(GPOUT,60)
    out_pipeline_valid_out <= bb_processFPGA_B2_stall_region_out_pipeline_valid_out;

END normal;
