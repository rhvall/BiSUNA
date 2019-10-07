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

-- VHDL created from bb_processFPGA_B35
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

entity bb_processFPGA_B35 is
    port (
        out_c0_exit996_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit996_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit996_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exit996_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe2998 : out std_logic_vector(31 downto 0);  -- ufix32
        out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_25_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_25_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_25_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_25_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_25_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_25_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_25_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA230_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA230_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA230_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_unnamed_processFPGA230_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA230_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA230_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA230_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_acl_hw_wg_id808_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_acl_hw_wg_id808_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_conns : in std_logic_vector(63 downto 0);  -- ufix64
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked501_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked501_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_input : in std_logic_vector(63 downto 0);  -- ufix64
        in_intel_reserved_ffwd_103_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_105_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_106_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_107_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_localConn : in std_logic_vector(63 downto 0);  -- ufix64
        in_localInput : in std_logic_vector(63 downto 0);  -- ufix64
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        in_localOutput : in std_logic_vector(63 downto 0);  -- ufix64
        in_memdep_25_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_25_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_25_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_25_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_netSt : in std_logic_vector(63 downto 0);  -- ufix64
        in_neurons : in std_logic_vector(63 downto 0);  -- ufix64
        in_output : in std_logic_vector(63 downto 0);  -- ufix64
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA230_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_unnamed_processFPGA230_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA230_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA230_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_processFPGA_B35;

architecture normal of bb_processFPGA_B35 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component processFPGA_B35_branch is
        port (
            in_c0_exit996_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit996_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit996_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exit996_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe1997 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe2998 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit996_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit996_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit996_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit996_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe2998 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_processFPGA_B35_stall_region is
        port (
            in_acl_hw_wg_id808 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked501 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_103_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_105_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_106_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_107_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_localConn : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memdep_25_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_25_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_25_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_25_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA230_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_unnamed_processFPGA230_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA230_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA230_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit996_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit996_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit996_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit996_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going700_processfpga_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going700_processfpga_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1997 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2998 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_25_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_25_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_25_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_25_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_25_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_25_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_25_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA230_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA230_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA230_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_unnamed_processFPGA230_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA230_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA230_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA230_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component processFPGA_B35_merge is
        port (
            in_acl_hw_wg_id808_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_acl_hw_wg_id808_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_forked501_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked501_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_acl_hw_wg_id808 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_forked501 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal processFPGA_B35_branch_aunroll_x_out_c0_exit996_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B35_branch_aunroll_x_out_c0_exit996_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B35_branch_aunroll_x_out_c0_exit996_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal processFPGA_B35_branch_aunroll_x_out_c0_exit996_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal processFPGA_B35_branch_aunroll_x_out_c0_exe2998 : STD_LOGIC_VECTOR (31 downto 0);
    signal processFPGA_B35_branch_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B35_branch_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B35_branch_aunroll_x_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_c0_exit996_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_c0_exit996_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_c0_exit996_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B35_stall_region_out_c0_exit996_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B35_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going700_processfpga_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going700_processfpga_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_c0_exe1997 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_c0_exe2998 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B35_stall_region_out_memdep_25_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B35_stall_region_out_memdep_25_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_memdep_25_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal bb_processFPGA_B35_stall_region_out_memdep_25_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_memdep_25_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_memdep_25_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_memdep_25_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B35_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal bb_processFPGA_B35_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B35_merge_out_acl_hw_wg_id808 : STD_LOGIC_VECTOR (31 downto 0);
    signal processFPGA_B35_merge_out_forked501 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B35_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B35_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B35_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- processFPGA_B35_merge(BLACKBOX,61)
    theprocessFPGA_B35_merge : processFPGA_B35_merge
    PORT MAP (
        in_acl_hw_wg_id808_0 => in_acl_hw_wg_id808_0,
        in_acl_hw_wg_id808_1 => in_acl_hw_wg_id808_1,
        in_forked501_0 => in_forked501_0,
        in_forked501_1 => in_forked501_1,
        in_stall_in => bb_processFPGA_B35_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_acl_hw_wg_id808 => processFPGA_B35_merge_out_acl_hw_wg_id808,
        out_forked501 => processFPGA_B35_merge_out_forked501,
        out_stall_out_0 => processFPGA_B35_merge_out_stall_out_0,
        out_stall_out_1 => processFPGA_B35_merge_out_stall_out_1,
        out_valid_out => processFPGA_B35_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_processFPGA_B35_stall_region(BLACKBOX,28)
    thebb_processFPGA_B35_stall_region : bb_processFPGA_B35_stall_region
    PORT MAP (
        in_acl_hw_wg_id808 => processFPGA_B35_merge_out_acl_hw_wg_id808,
        in_flush => in_flush,
        in_forked501 => processFPGA_B35_merge_out_forked501,
        in_intel_reserved_ffwd_103_0 => in_intel_reserved_ffwd_103_0,
        in_intel_reserved_ffwd_105_0 => in_intel_reserved_ffwd_105_0,
        in_intel_reserved_ffwd_106_0 => in_intel_reserved_ffwd_106_0,
        in_intel_reserved_ffwd_107_0 => in_intel_reserved_ffwd_107_0,
        in_localConn => in_localConn,
        in_memdep_25_avm_readdata => in_memdep_25_avm_readdata,
        in_memdep_25_avm_readdatavalid => in_memdep_25_avm_readdatavalid,
        in_memdep_25_avm_waitrequest => in_memdep_25_avm_waitrequest,
        in_memdep_25_avm_writeack => in_memdep_25_avm_writeack,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => processFPGA_B35_branch_aunroll_x_out_stall_out,
        in_unnamed_processFPGA230_avm_readdata => in_unnamed_processFPGA230_avm_readdata,
        in_unnamed_processFPGA230_avm_readdatavalid => in_unnamed_processFPGA230_avm_readdatavalid,
        in_unnamed_processFPGA230_avm_waitrequest => in_unnamed_processFPGA230_avm_waitrequest,
        in_unnamed_processFPGA230_avm_writeack => in_unnamed_processFPGA230_avm_writeack,
        in_valid_in => processFPGA_B35_merge_out_valid_out,
        out_c0_exit996_0 => bb_processFPGA_B35_stall_region_out_c0_exit996_0,
        out_c0_exit996_1 => bb_processFPGA_B35_stall_region_out_c0_exit996_1,
        out_c0_exit996_2 => bb_processFPGA_B35_stall_region_out_c0_exit996_2,
        out_c0_exit996_3 => bb_processFPGA_B35_stall_region_out_c0_exit996_3,
        out_aclp_to_limiter_i_acl_pipeline_keep_going700_processfpga_exiting_stall_out => bb_processFPGA_B35_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going700_processfpga_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going700_processfpga_exiting_valid_out => bb_processFPGA_B35_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going700_processfpga_exiting_valid_out,
        out_c0_exe1997 => bb_processFPGA_B35_stall_region_out_c0_exe1997,
        out_c0_exe2998 => bb_processFPGA_B35_stall_region_out_c0_exe2998,
        out_memdep_25_avm_address => bb_processFPGA_B35_stall_region_out_memdep_25_avm_address,
        out_memdep_25_avm_burstcount => bb_processFPGA_B35_stall_region_out_memdep_25_avm_burstcount,
        out_memdep_25_avm_byteenable => bb_processFPGA_B35_stall_region_out_memdep_25_avm_byteenable,
        out_memdep_25_avm_enable => bb_processFPGA_B35_stall_region_out_memdep_25_avm_enable,
        out_memdep_25_avm_read => bb_processFPGA_B35_stall_region_out_memdep_25_avm_read,
        out_memdep_25_avm_write => bb_processFPGA_B35_stall_region_out_memdep_25_avm_write,
        out_memdep_25_avm_writedata => bb_processFPGA_B35_stall_region_out_memdep_25_avm_writedata,
        out_pipeline_valid_out => bb_processFPGA_B35_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_processFPGA_B35_stall_region_out_stall_out,
        out_unnamed_processFPGA230_avm_address => bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_address,
        out_unnamed_processFPGA230_avm_burstcount => bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_burstcount,
        out_unnamed_processFPGA230_avm_byteenable => bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_byteenable,
        out_unnamed_processFPGA230_avm_enable => bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_enable,
        out_unnamed_processFPGA230_avm_read => bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_read,
        out_unnamed_processFPGA230_avm_write => bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_write,
        out_unnamed_processFPGA230_avm_writedata => bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_writedata,
        out_valid_out => bb_processFPGA_B35_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- processFPGA_B35_branch_aunroll_x(BLACKBOX,27)
    theprocessFPGA_B35_branch_aunroll_x : processFPGA_B35_branch
    PORT MAP (
        in_c0_exit996_0 => bb_processFPGA_B35_stall_region_out_c0_exit996_0,
        in_c0_exit996_1 => bb_processFPGA_B35_stall_region_out_c0_exit996_1,
        in_c0_exit996_2 => bb_processFPGA_B35_stall_region_out_c0_exit996_2,
        in_c0_exit996_3 => bb_processFPGA_B35_stall_region_out_c0_exit996_3,
        in_c0_exe1997 => bb_processFPGA_B35_stall_region_out_c0_exe1997,
        in_c0_exe2998 => bb_processFPGA_B35_stall_region_out_c0_exe2998,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_processFPGA_B35_stall_region_out_valid_out,
        out_c0_exit996_0 => processFPGA_B35_branch_aunroll_x_out_c0_exit996_0,
        out_c0_exit996_1 => processFPGA_B35_branch_aunroll_x_out_c0_exit996_1,
        out_c0_exit996_2 => processFPGA_B35_branch_aunroll_x_out_c0_exit996_2,
        out_c0_exit996_3 => processFPGA_B35_branch_aunroll_x_out_c0_exit996_3,
        out_c0_exe2998 => processFPGA_B35_branch_aunroll_x_out_c0_exe2998,
        out_stall_out => processFPGA_B35_branch_aunroll_x_out_stall_out,
        out_valid_out_0 => processFPGA_B35_branch_aunroll_x_out_valid_out_0,
        out_valid_out_1 => processFPGA_B35_branch_aunroll_x_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exit996_0(GPOUT,2)
    out_c0_exit996_0 <= processFPGA_B35_branch_aunroll_x_out_c0_exit996_0;

    -- out_c0_exit996_1(GPOUT,3)
    out_c0_exit996_1 <= processFPGA_B35_branch_aunroll_x_out_c0_exit996_1;

    -- out_c0_exit996_2(GPOUT,4)
    out_c0_exit996_2 <= processFPGA_B35_branch_aunroll_x_out_c0_exit996_2;

    -- out_c0_exit996_3(GPOUT,5)
    out_c0_exit996_3 <= processFPGA_B35_branch_aunroll_x_out_c0_exit996_3;

    -- out_c0_exe2998(GPOUT,6)
    out_c0_exe2998 <= processFPGA_B35_branch_aunroll_x_out_c0_exe2998;

    -- out_exiting_stall_out(GPOUT,7)
    out_exiting_stall_out <= bb_processFPGA_B35_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going700_processfpga_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,8)
    out_exiting_valid_out <= bb_processFPGA_B35_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going700_processfpga_exiting_valid_out;

    -- out_memdep_25_avm_address(GPOUT,9)
    out_memdep_25_avm_address <= bb_processFPGA_B35_stall_region_out_memdep_25_avm_address;

    -- out_memdep_25_avm_burstcount(GPOUT,10)
    out_memdep_25_avm_burstcount <= bb_processFPGA_B35_stall_region_out_memdep_25_avm_burstcount;

    -- out_memdep_25_avm_byteenable(GPOUT,11)
    out_memdep_25_avm_byteenable <= bb_processFPGA_B35_stall_region_out_memdep_25_avm_byteenable;

    -- out_memdep_25_avm_enable(GPOUT,12)
    out_memdep_25_avm_enable <= bb_processFPGA_B35_stall_region_out_memdep_25_avm_enable;

    -- out_memdep_25_avm_read(GPOUT,13)
    out_memdep_25_avm_read <= bb_processFPGA_B35_stall_region_out_memdep_25_avm_read;

    -- out_memdep_25_avm_write(GPOUT,14)
    out_memdep_25_avm_write <= bb_processFPGA_B35_stall_region_out_memdep_25_avm_write;

    -- out_memdep_25_avm_writedata(GPOUT,15)
    out_memdep_25_avm_writedata <= bb_processFPGA_B35_stall_region_out_memdep_25_avm_writedata;

    -- out_stall_out_0(GPOUT,16)
    out_stall_out_0 <= processFPGA_B35_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,17)
    out_stall_out_1 <= processFPGA_B35_merge_out_stall_out_1;

    -- out_unnamed_processFPGA230_avm_address(GPOUT,18)
    out_unnamed_processFPGA230_avm_address <= bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_address;

    -- out_unnamed_processFPGA230_avm_burstcount(GPOUT,19)
    out_unnamed_processFPGA230_avm_burstcount <= bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_burstcount;

    -- out_unnamed_processFPGA230_avm_byteenable(GPOUT,20)
    out_unnamed_processFPGA230_avm_byteenable <= bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_byteenable;

    -- out_unnamed_processFPGA230_avm_enable(GPOUT,21)
    out_unnamed_processFPGA230_avm_enable <= bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_enable;

    -- out_unnamed_processFPGA230_avm_read(GPOUT,22)
    out_unnamed_processFPGA230_avm_read <= bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_read;

    -- out_unnamed_processFPGA230_avm_write(GPOUT,23)
    out_unnamed_processFPGA230_avm_write <= bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_write;

    -- out_unnamed_processFPGA230_avm_writedata(GPOUT,24)
    out_unnamed_processFPGA230_avm_writedata <= bb_processFPGA_B35_stall_region_out_unnamed_processFPGA230_avm_writedata;

    -- out_valid_out_0(GPOUT,25)
    out_valid_out_0 <= processFPGA_B35_branch_aunroll_x_out_valid_out_0;

    -- out_valid_out_1(GPOUT,26)
    out_valid_out_1 <= processFPGA_B35_branch_aunroll_x_out_valid_out_1;

    -- pipeline_valid_out_sync(GPOUT,60)
    out_pipeline_valid_out <= bb_processFPGA_B35_stall_region_out_pipeline_valid_out;

END normal;
