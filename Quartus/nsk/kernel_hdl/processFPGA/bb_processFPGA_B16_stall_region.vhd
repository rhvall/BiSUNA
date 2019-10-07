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

-- VHDL created from bb_processFPGA_B16_stall_region
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

entity bb_processFPGA_B16_stall_region is
    port (
        in_memdep_13_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_memdep_13_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_13_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_13_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_13_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_13_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_13_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_13_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_13_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_13_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_memdep_13_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_19_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_49_0 : out std_logic_vector(16 downto 0);  -- ufix17
        in_acl_hw_wg_id798 : in std_logic_vector(31 downto 0);  -- ufix32
        in_forked417 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_acl_hw_wg_id798 : out std_logic_vector(31 downto 0);  -- ufix32
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_43_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_50_0 : out std_logic_vector(15 downto 0);  -- ufix16
        in_intel_reserved_ffwd_45_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_51_0 : out std_logic_vector(63 downto 0);  -- ufix64
        in_intel_reserved_ffwd_47_0 : in std_logic_vector(16 downto 0);  -- ufix17
        out_intel_reserved_ffwd_52_0 : out std_logic_vector(15 downto 0);  -- ufix16
        in_intel_reserved_ffwd_66_0 : in std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_53_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_67_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_54_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_68_0 : in std_logic_vector(16 downto 0);  -- ufix17
        out_intel_reserved_ffwd_55_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_intel_reserved_ffwd_56_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_57_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA86_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_processFPGA86_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA86_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA86_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA86_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA86_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA86_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA86_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA86_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA86_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_processFPGA86_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_48_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_processFPGA_B16_stall_region;

architecture normal of bb_processFPGA_B16_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga is
        port (
            in_c0_eni1904_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni1904_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_19_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_43_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_45_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_66_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_67_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_localNeurons : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_memdep_13_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_memdep_13_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_13_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_13_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA86_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_processFPGA86_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA86_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA86_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit907_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_48_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_50_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_51_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_52_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_53_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_54_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_55_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_56_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_57_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_13_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_13_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_13_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_memdep_13_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_13_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_13_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_13_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA86_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA86_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA86_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_unnamed_processFPGA86_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA86_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA86_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA86_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component processFPGA_B16_merge_reg is
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


    component i_ffwd_dst_fpgaindvars_iv_next201457_processfpga677 is
        port (
            in_intel_reserved_ffwd_68_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_68_0 : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga85_processfpga679 is
        port (
            in_intel_reserved_ffwd_47_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_47_0 : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga97_processfpga726 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_49_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_49_0 : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component acl_data_fifo is
        generic (
            DEPTH : INTEGER := 0;
            DATA_WIDTH : INTEGER := 32;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0;
            IMPL : STRING := "ram"
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            data_in : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            valid_out : out std_logic;
            stall_out : out std_logic;
            data_out : out std_logic_vector(DATA_WIDTH - 1 downto 0);
            full : out std_logic;
            almost_full : out std_logic
        );
    end component;


    component acl_valid_fifo_counter is
        generic (
            DEPTH : INTEGER := 0;
            ASYNC_RESET : INTEGER := 1;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            valid_out : out std_logic;
            stall_out : out std_logic;
            full : out std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_48_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_50_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_51_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_52_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_53_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_54_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_55_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_56_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_57_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal processFPGA_B16_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B16_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal processFPGA_B16_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B16_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_out_dest_data_out_68_0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga85_processfpga_out_dest_data_out_47_0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_ffwd_dst_unnamed_processfpga85_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga85_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga97_processfpga_out_intel_reserved_ffwd_49_0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_ffwd_src_unnamed_processfpga97_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga97_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv200_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv200_replace_phi_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_processFPGA_B16_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (32 downto 0);
    signal bubble_select_processFPGA_B16_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_processFPGA_B16_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal bubble_select_i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_b : STD_LOGIC_VECTOR (16 downto 0);
    signal bubble_join_i_ffwd_dst_unnamed_processfpga85_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal bubble_select_i_ffwd_dst_unnamed_processfpga85_processfpga_b : STD_LOGIC_VECTOR (16 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (32 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B16_merge_reg_aunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga97_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga97_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga97_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_stall_out_bitsignaltemp : std_logic;

begin


    -- redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo(STALLFIFO,52)
    redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_valid_in <= SE_out_processFPGA_B16_merge_reg_aunroll_x_V4;
    redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_stall_in <= SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_backStall;
    redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_data_in <= bubble_select_processFPGA_B16_merge_reg_aunroll_x_c;
    redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_valid_in_bitsignaltemp <= redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_valid_in(0);
    redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_stall_in_bitsignaltemp <= redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_stall_in(0);
    redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_valid_out(0) <= redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_valid_out_bitsignaltemp;
    redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_stall_out(0) <= redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_stall_out_bitsignaltemp;
    theredist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 14,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_valid_in_bitsignaltemp,
        stall_in => redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_processFPGA_B16_merge_reg_aunroll_x_c,
        valid_out => redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_valid_out_bitsignaltemp,
        stall_out => redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_stall_out_bitsignaltemp,
        data_out => redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg(STALLFIFO,118)
    bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_valid_in <= SE_out_i_ffwd_src_unnamed_processfpga97_processfpga_V0;
    bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_stall_in <= SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_backStall;
    bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_valid_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_valid_in(0);
    bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_stall_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_stall_in(0);
    bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_valid_out(0) <= bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_stall_out(0) <= bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 14,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_ffwd_src_unnamed_processfpga97_processfpga(STALLENABLE,82)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_processfpga97_processfpga_V0 <= SE_out_i_ffwd_src_unnamed_processfpga97_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_processfpga97_processfpga_backStall <= bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_stall_out or not (SE_out_i_ffwd_src_unnamed_processfpga97_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_processfpga97_processfpga_wireValid <= i_ffwd_src_unnamed_processfpga97_processfpga_out_valid_out;

    -- bubble_join_i_ffwd_dst_unnamed_processfpga85_processfpga(BITJOIN,63)
    bubble_join_i_ffwd_dst_unnamed_processfpga85_processfpga_q <= i_ffwd_dst_unnamed_processfpga85_processfpga_out_dest_data_out_47_0;

    -- bubble_select_i_ffwd_dst_unnamed_processfpga85_processfpga(BITSELECT,64)
    bubble_select_i_ffwd_dst_unnamed_processfpga85_processfpga_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_unnamed_processfpga85_processfpga_q(16 downto 0));

    -- bubble_join_i_ffwd_dst_fpgaindvars_iv_next201457_processfpga(BITJOIN,60)
    bubble_join_i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_q <= i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_out_dest_data_out_68_0;

    -- bubble_select_i_ffwd_dst_fpgaindvars_iv_next201457_processfpga(BITSELECT,61)
    bubble_select_i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_q(16 downto 0));

    -- i_fpgaindvars_iv200_replace_phi_processfpga(MUX,42)@1
    i_fpgaindvars_iv200_replace_phi_processfpga_s <= bubble_select_processFPGA_B16_merge_reg_aunroll_x_b;
    i_fpgaindvars_iv200_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv200_replace_phi_processfpga_s, bubble_select_i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_b, bubble_select_i_ffwd_dst_unnamed_processfpga85_processfpga_b)
    BEGIN
        CASE (i_fpgaindvars_iv200_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv200_replace_phi_processfpga_q <= bubble_select_i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_b;
            WHEN "1" => i_fpgaindvars_iv200_replace_phi_processfpga_q <= bubble_select_i_ffwd_dst_unnamed_processfpga85_processfpga_b;
            WHEN OTHERS => i_fpgaindvars_iv200_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_ffwd_src_unnamed_processfpga97_processfpga(BLACKBOX,41)@1
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_49_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga97_processfpga : i_ffwd_src_unnamed_processfpga97_processfpga726
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_49_0 => i_fpgaindvars_iv200_replace_phi_processfpga_q,
        in_stall_in => SE_out_i_ffwd_src_unnamed_processfpga97_processfpga_backStall,
        in_valid_in => SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_V0,
        out_intel_reserved_ffwd_49_0 => i_ffwd_src_unnamed_processfpga97_processfpga_out_intel_reserved_ffwd_49_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga97_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga97_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga(STALLENABLE,80)
    -- Valid signal propagation
    SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_V0 <= SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_backStall <= i_ffwd_src_unnamed_processfpga97_processfpga_out_stall_out or not (SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_and0 <= i_ffwd_dst_unnamed_processfpga85_processfpga_out_valid_out;
    SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_and1 <= i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_out_valid_out and SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_and0;
    SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_wireValid <= SE_out_processFPGA_B16_merge_reg_aunroll_x_V2 and SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_and1;

    -- i_ffwd_dst_unnamed_processfpga85_processfpga(BLACKBOX,40)@1
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_unnamed_processfpga85_processfpga : i_ffwd_dst_unnamed_processfpga85_processfpga679
    PORT MAP (
        in_intel_reserved_ffwd_47_0 => in_intel_reserved_ffwd_47_0,
        in_stall_in => SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_backStall,
        in_valid_in => SE_out_processFPGA_B16_merge_reg_aunroll_x_V1,
        out_dest_data_out_47_0 => i_ffwd_dst_unnamed_processfpga85_processfpga_out_dest_data_out_47_0,
        out_stall_out => i_ffwd_dst_unnamed_processfpga85_processfpga_out_stall_out,
        out_valid_out => i_ffwd_dst_unnamed_processfpga85_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_fpgaindvars_iv_next201457_processfpga(BLACKBOX,39)@1
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_fpgaindvars_iv_next201457_processfpga : i_ffwd_dst_fpgaindvars_iv_next201457_processfpga677
    PORT MAP (
        in_intel_reserved_ffwd_68_0 => in_intel_reserved_ffwd_68_0,
        in_stall_in => SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_backStall,
        in_valid_in => SE_out_processFPGA_B16_merge_reg_aunroll_x_V0,
        out_dest_data_out_68_0 => i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_out_dest_data_out_68_0,
        out_stall_out => i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_out_stall_out,
        out_valid_out => i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry(STALLENABLE,84)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= processFPGA_B16_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,67)
    bubble_join_stall_entry_q <= in_forked417 & in_acl_hw_wg_id798;

    -- bubble_select_stall_entry(BITSELECT,68)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(31 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(32 downto 32));

    -- processFPGA_B16_merge_reg_aunroll_x(BLACKBOX,32)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theprocessFPGA_B16_merge_reg_aunroll_x : processFPGA_B16_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_c,
        in_data_in_1 => bubble_select_stall_entry_b,
        in_stall_in => SE_out_processFPGA_B16_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => processFPGA_B16_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => processFPGA_B16_merge_reg_aunroll_x_out_data_out_1,
        out_stall_out => processFPGA_B16_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => processFPGA_B16_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_processFPGA_B16_merge_reg_aunroll_x(STALLENABLE,76)
    SE_out_processFPGA_B16_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg1 <= (others => '0');
            SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg2 <= (others => '0');
            SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg3 <= (others => '0');
            SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg4 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg0 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg1 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg2 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg3 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_toReg3;
            -- Succesor 4
            SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg4 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_toReg4;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed0 <= (not (i_ffwd_dst_fpgaindvars_iv_next201457_processfpga_out_stall_out) and SE_out_processFPGA_B16_merge_reg_aunroll_x_wireValid) or SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg0;
    SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed1 <= (not (i_ffwd_dst_unnamed_processfpga85_processfpga_out_stall_out) and SE_out_processFPGA_B16_merge_reg_aunroll_x_wireValid) or SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg1;
    SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed2 <= (not (SE_out_i_ffwd_dst_unnamed_processfpga85_processfpga_backStall) and SE_out_processFPGA_B16_merge_reg_aunroll_x_wireValid) or SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg2;
    SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed3 <= (not (i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_o_stall) and SE_out_processFPGA_B16_merge_reg_aunroll_x_wireValid) or SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg3;
    SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed4 <= (not (redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_stall_out) and SE_out_processFPGA_B16_merge_reg_aunroll_x_wireValid) or SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg4;
    -- Consuming
    SE_out_processFPGA_B16_merge_reg_aunroll_x_StallValid <= SE_out_processFPGA_B16_merge_reg_aunroll_x_backStall and SE_out_processFPGA_B16_merge_reg_aunroll_x_wireValid;
    SE_out_processFPGA_B16_merge_reg_aunroll_x_toReg0 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_StallValid and SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed0;
    SE_out_processFPGA_B16_merge_reg_aunroll_x_toReg1 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_StallValid and SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed1;
    SE_out_processFPGA_B16_merge_reg_aunroll_x_toReg2 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_StallValid and SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed2;
    SE_out_processFPGA_B16_merge_reg_aunroll_x_toReg3 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_StallValid and SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed3;
    SE_out_processFPGA_B16_merge_reg_aunroll_x_toReg4 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_StallValid and SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed4;
    -- Backward Stall generation
    SE_out_processFPGA_B16_merge_reg_aunroll_x_or0 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed0;
    SE_out_processFPGA_B16_merge_reg_aunroll_x_or1 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed1 and SE_out_processFPGA_B16_merge_reg_aunroll_x_or0;
    SE_out_processFPGA_B16_merge_reg_aunroll_x_or2 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed2 and SE_out_processFPGA_B16_merge_reg_aunroll_x_or1;
    SE_out_processFPGA_B16_merge_reg_aunroll_x_or3 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed3 and SE_out_processFPGA_B16_merge_reg_aunroll_x_or2;
    SE_out_processFPGA_B16_merge_reg_aunroll_x_wireStall <= not (SE_out_processFPGA_B16_merge_reg_aunroll_x_consumed4 and SE_out_processFPGA_B16_merge_reg_aunroll_x_or3);
    SE_out_processFPGA_B16_merge_reg_aunroll_x_backStall <= SE_out_processFPGA_B16_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_processFPGA_B16_merge_reg_aunroll_x_V0 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_wireValid and not (SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg0);
    SE_out_processFPGA_B16_merge_reg_aunroll_x_V1 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_wireValid and not (SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg1);
    SE_out_processFPGA_B16_merge_reg_aunroll_x_V2 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_wireValid and not (SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg2);
    SE_out_processFPGA_B16_merge_reg_aunroll_x_V3 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_wireValid and not (SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg3);
    SE_out_processFPGA_B16_merge_reg_aunroll_x_V4 <= SE_out_processFPGA_B16_merge_reg_aunroll_x_wireValid and not (SE_out_processFPGA_B16_merge_reg_aunroll_x_fromReg4);
    -- Computing multiple Valid(s)
    SE_out_processFPGA_B16_merge_reg_aunroll_x_wireValid <= processFPGA_B16_merge_reg_aunroll_x_out_valid_out;

    -- SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo(STALLENABLE,87)
    -- Valid signal propagation
    SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_V0 <= SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_backStall <= in_stall_in or not (SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_and0 <= redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_valid_out;
    SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_and1 <= bubble_out_i_ffwd_src_unnamed_processfpga97_processfpga_1_reg_valid_out and SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_and0;
    SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_wireValid <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_o_valid and SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_and1;

    -- bubble_join_processFPGA_B16_merge_reg_aunroll_x(BITJOIN,55)
    bubble_join_processFPGA_B16_merge_reg_aunroll_x_q <= processFPGA_B16_merge_reg_aunroll_x_out_data_out_1 & processFPGA_B16_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_processFPGA_B16_merge_reg_aunroll_x(BITSELECT,56)
    bubble_select_processFPGA_B16_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_processFPGA_B16_merge_reg_aunroll_x_q(0 downto 0));
    bubble_select_processFPGA_B16_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_processFPGA_B16_merge_reg_aunroll_x_q(32 downto 1));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x(BLACKBOX,31)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit907_0@14
    -- out out_intel_reserved_ffwd_48_0@20000000
    -- out out_intel_reserved_ffwd_50_0@20000000
    -- out out_intel_reserved_ffwd_51_0@20000000
    -- out out_intel_reserved_ffwd_52_0@20000000
    -- out out_intel_reserved_ffwd_53_0@20000000
    -- out out_intel_reserved_ffwd_54_0@20000000
    -- out out_intel_reserved_ffwd_55_0@20000000
    -- out out_intel_reserved_ffwd_56_0@20000000
    -- out out_intel_reserved_ffwd_57_0@20000000
    -- out out_memdep_13_avm_address@20000000
    -- out out_memdep_13_avm_burstcount@20000000
    -- out out_memdep_13_avm_byteenable@20000000
    -- out out_memdep_13_avm_enable@20000000
    -- out out_memdep_13_avm_read@20000000
    -- out out_memdep_13_avm_write@20000000
    -- out out_memdep_13_avm_writedata@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@14
    -- out out_unnamed_processFPGA86_avm_address@20000000
    -- out out_unnamed_processFPGA86_avm_burstcount@20000000
    -- out out_unnamed_processFPGA86_avm_byteenable@20000000
    -- out out_unnamed_processFPGA86_avm_enable@20000000
    -- out out_unnamed_processFPGA86_avm_read@20000000
    -- out out_unnamed_processFPGA86_avm_write@20000000
    -- out out_unnamed_processFPGA86_avm_writedata@20000000
    thei_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x : i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga
    PORT MAP (
        in_c0_eni1904_0 => GND_q,
        in_c0_eni1904_1 => bubble_select_processFPGA_B16_merge_reg_aunroll_x_b,
        in_flush => in_flush,
        in_i_stall => SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_backStall,
        in_i_valid => SE_out_processFPGA_B16_merge_reg_aunroll_x_V3,
        in_intel_reserved_ffwd_19_0 => in_intel_reserved_ffwd_19_0,
        in_intel_reserved_ffwd_43_0 => in_intel_reserved_ffwd_43_0,
        in_intel_reserved_ffwd_45_0 => in_intel_reserved_ffwd_45_0,
        in_intel_reserved_ffwd_66_0 => in_intel_reserved_ffwd_66_0,
        in_intel_reserved_ffwd_67_0 => in_intel_reserved_ffwd_67_0,
        in_localNeurons => in_localNeurons,
        in_memdep_13_avm_readdata => in_memdep_13_avm_readdata,
        in_memdep_13_avm_readdatavalid => in_memdep_13_avm_readdatavalid,
        in_memdep_13_avm_waitrequest => in_memdep_13_avm_waitrequest,
        in_memdep_13_avm_writeack => in_memdep_13_avm_writeack,
        in_unnamed_processFPGA86_avm_readdata => in_unnamed_processFPGA86_avm_readdata,
        in_unnamed_processFPGA86_avm_readdatavalid => in_unnamed_processFPGA86_avm_readdatavalid,
        in_unnamed_processFPGA86_avm_waitrequest => in_unnamed_processFPGA86_avm_waitrequest,
        in_unnamed_processFPGA86_avm_writeack => in_unnamed_processFPGA86_avm_writeack,
        out_intel_reserved_ffwd_48_0 => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_48_0,
        out_intel_reserved_ffwd_50_0 => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_50_0,
        out_intel_reserved_ffwd_51_0 => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_51_0,
        out_intel_reserved_ffwd_52_0 => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_52_0,
        out_intel_reserved_ffwd_53_0 => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_53_0,
        out_intel_reserved_ffwd_54_0 => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_54_0,
        out_intel_reserved_ffwd_55_0 => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_55_0,
        out_intel_reserved_ffwd_56_0 => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_56_0,
        out_intel_reserved_ffwd_57_0 => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_57_0,
        out_memdep_13_avm_address => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_address,
        out_memdep_13_avm_burstcount => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_burstcount,
        out_memdep_13_avm_byteenable => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_byteenable,
        out_memdep_13_avm_enable => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_enable,
        out_memdep_13_avm_read => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_read,
        out_memdep_13_avm_write => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_write,
        out_memdep_13_avm_writedata => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_writedata,
        out_o_stall => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_o_valid,
        out_unnamed_processFPGA86_avm_address => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_address,
        out_unnamed_processFPGA86_avm_burstcount => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_burstcount,
        out_unnamed_processFPGA86_avm_byteenable => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_byteenable,
        out_unnamed_processFPGA86_avm_enable => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_enable,
        out_unnamed_processFPGA86_avm_read => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_read,
        out_unnamed_processFPGA86_avm_write => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_write,
        out_unnamed_processFPGA86_avm_writedata => i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,3)
    out_memdep_13_avm_address <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_address;
    out_memdep_13_avm_enable <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_enable;
    out_memdep_13_avm_read <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_read;
    out_memdep_13_avm_write <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_write;
    out_memdep_13_avm_writedata <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_writedata;
    out_memdep_13_avm_byteenable <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_byteenable;
    out_memdep_13_avm_burstcount <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_memdep_13_avm_burstcount;

    -- dupName_0_regfree_osync_x(GPOUT,7)
    out_intel_reserved_ffwd_49_0 <= i_ffwd_src_unnamed_processfpga97_processfpga_out_intel_reserved_ffwd_49_0;

    -- bubble_join_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo(BITJOIN,71)
    bubble_join_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_q <= redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_data_out;

    -- bubble_select_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo(BITSELECT,72)
    bubble_select_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_q(31 downto 0));

    -- dupName_0_sync_out_x(GPOUT,9)@14
    out_acl_hw_wg_id798 <= bubble_select_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_b;
    out_valid_out <= SE_out_redist0_processFPGA_B16_merge_reg_aunroll_x_out_data_out_1_13_fifo_V0;

    -- dupName_1_regfree_osync_x(GPOUT,13)
    out_intel_reserved_ffwd_50_0 <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_50_0;

    -- dupName_2_regfree_osync_x(GPOUT,17)
    out_intel_reserved_ffwd_51_0 <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_51_0;

    -- dupName_3_regfree_osync_x(GPOUT,21)
    out_intel_reserved_ffwd_52_0 <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_52_0;

    -- dupName_4_regfree_osync_x(GPOUT,23)
    out_intel_reserved_ffwd_53_0 <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_53_0;

    -- dupName_5_regfree_osync_x(GPOUT,25)
    out_intel_reserved_ffwd_54_0 <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_54_0;

    -- dupName_6_regfree_osync_x(GPOUT,27)
    out_intel_reserved_ffwd_55_0 <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_55_0;

    -- dupName_7_regfree_osync_x(GPOUT,29)
    out_intel_reserved_ffwd_56_0 <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_56_0;

    -- dupName_8_regfree_osync_x(GPOUT,30)
    out_intel_reserved_ffwd_57_0 <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_57_0;

    -- ext_sig_sync_out(GPOUT,38)
    out_unnamed_processFPGA86_avm_address <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_address;
    out_unnamed_processFPGA86_avm_enable <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_enable;
    out_unnamed_processFPGA86_avm_read <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_read;
    out_unnamed_processFPGA86_avm_write <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_write;
    out_unnamed_processFPGA86_avm_writedata <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_writedata;
    out_unnamed_processFPGA86_avm_byteenable <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_byteenable;
    out_unnamed_processFPGA86_avm_burstcount <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_unnamed_processFPGA86_avm_burstcount;

    -- regfree_osync(GPOUT,46)
    out_intel_reserved_ffwd_48_0 <= i_sfc_c0_for_body_i874_processfpga_c0_enter905_processfpga_aunroll_x_out_intel_reserved_ffwd_48_0;

    -- sync_out(GPOUT,50)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
