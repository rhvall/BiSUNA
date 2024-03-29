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

-- VHDL created from bb_processFPGA_B18
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

entity bb_processFPGA_B18 is
    port (
        in_c0_exit9159_0_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit9159_0_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit9159_0_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_conns : in std_logic_vector(63 downto 0);  -- ufix64
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_input : in std_logic_vector(63 downto 0);  -- ufix64
        in_intel_reserved_ffwd_44_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_51_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_intel_reserved_ffwd_52_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_intel_reserved_ffwd_53_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_54_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_56_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_58_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_59_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_localConn : in std_logic_vector(63 downto 0);  -- ufix64
        in_localInput : in std_logic_vector(63 downto 0);  -- ufix64
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        in_localOutput : in std_logic_vector(63 downto 0);  -- ufix64
        in_netSt : in std_logic_vector(63 downto 0);  -- ufix64
        in_neurons : in std_logic_vector(63 downto 0);  -- ufix64
        in_output : in std_logic_vector(63 downto 0);  -- ufix64
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA116_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_unnamed_processFPGA116_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA116_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA116_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe2917 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_60_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_61_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_62_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_63_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_64_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_65_0 : out std_logic_vector(32 downto 0);  -- ufix33
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA116_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA116_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA116_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_unnamed_processFPGA116_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA116_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA116_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA116_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_processFPGA_B18;

architecture normal of bb_processFPGA_B18 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component processFPGA_B18_merge is
        port (
            in_c0_exit9159_0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit9159_0_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit9159_0_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit9159_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit9159_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit9159_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_processFPGA_B18_stall_region is
        port (
            in_c0_exit9159_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit9159_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit9159_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_44_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_51_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_52_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_53_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_54_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_56_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_58_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_59_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_localInput : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA116_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_unnamed_processFPGA116_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA116_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA116_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2917 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_60_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_61_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_62_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_63_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_64_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_65_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA116_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA116_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA116_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_unnamed_processFPGA116_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA116_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA116_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA116_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component processFPGA_B18_branch is
        port (
            in_c0_exe2917 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2917 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal processFPGA_B18_merge_aunroll_x_out_c0_exit9159_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B18_merge_aunroll_x_out_c0_exit9159_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B18_merge_aunroll_x_out_c0_exit9159_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal processFPGA_B18_merge_aunroll_x_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B18_merge_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B18_stall_region_out_c0_exe2917 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_60_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_61_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_62_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_63_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_64_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_65_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal bb_processFPGA_B18_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal bb_processFPGA_B18_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B18_branch_out_c0_exe2917 : STD_LOGIC_VECTOR (31 downto 0);
    signal processFPGA_B18_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B18_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- processFPGA_B18_merge_aunroll_x(BLACKBOX,29)
    theprocessFPGA_B18_merge_aunroll_x : processFPGA_B18_merge
    PORT MAP (
        in_c0_exit9159_0_0 => in_c0_exit9159_0_0,
        in_c0_exit9159_0_1 => in_c0_exit9159_0_1,
        in_c0_exit9159_0_2 => in_c0_exit9159_0_2,
        in_stall_in => bb_processFPGA_B18_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_c0_exit9159_0 => processFPGA_B18_merge_aunroll_x_out_c0_exit9159_0,
        out_c0_exit9159_1 => processFPGA_B18_merge_aunroll_x_out_c0_exit9159_1,
        out_c0_exit9159_2 => processFPGA_B18_merge_aunroll_x_out_c0_exit9159_2,
        out_stall_out_0 => processFPGA_B18_merge_aunroll_x_out_stall_out_0,
        out_valid_out => processFPGA_B18_merge_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_processFPGA_B18_stall_region(BLACKBOX,30)
    thebb_processFPGA_B18_stall_region : bb_processFPGA_B18_stall_region
    PORT MAP (
        in_c0_exit9159_0 => processFPGA_B18_merge_aunroll_x_out_c0_exit9159_0,
        in_c0_exit9159_1 => processFPGA_B18_merge_aunroll_x_out_c0_exit9159_1,
        in_c0_exit9159_2 => processFPGA_B18_merge_aunroll_x_out_c0_exit9159_2,
        in_flush => in_flush,
        in_intel_reserved_ffwd_44_0 => in_intel_reserved_ffwd_44_0,
        in_intel_reserved_ffwd_51_0 => in_intel_reserved_ffwd_51_0,
        in_intel_reserved_ffwd_52_0 => in_intel_reserved_ffwd_52_0,
        in_intel_reserved_ffwd_53_0 => in_intel_reserved_ffwd_53_0,
        in_intel_reserved_ffwd_54_0 => in_intel_reserved_ffwd_54_0,
        in_intel_reserved_ffwd_56_0 => in_intel_reserved_ffwd_56_0,
        in_intel_reserved_ffwd_58_0 => in_intel_reserved_ffwd_58_0,
        in_intel_reserved_ffwd_59_0 => in_intel_reserved_ffwd_59_0,
        in_localInput => in_localInput,
        in_stall_in => processFPGA_B18_branch_out_stall_out,
        in_unnamed_processFPGA116_avm_readdata => in_unnamed_processFPGA116_avm_readdata,
        in_unnamed_processFPGA116_avm_readdatavalid => in_unnamed_processFPGA116_avm_readdatavalid,
        in_unnamed_processFPGA116_avm_waitrequest => in_unnamed_processFPGA116_avm_waitrequest,
        in_unnamed_processFPGA116_avm_writeack => in_unnamed_processFPGA116_avm_writeack,
        in_valid_in => processFPGA_B18_merge_aunroll_x_out_valid_out,
        out_c0_exe2917 => bb_processFPGA_B18_stall_region_out_c0_exe2917,
        out_intel_reserved_ffwd_60_0 => bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_60_0,
        out_intel_reserved_ffwd_61_0 => bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_61_0,
        out_intel_reserved_ffwd_62_0 => bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_62_0,
        out_intel_reserved_ffwd_63_0 => bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_63_0,
        out_intel_reserved_ffwd_64_0 => bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_64_0,
        out_intel_reserved_ffwd_65_0 => bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_65_0,
        out_stall_out => bb_processFPGA_B18_stall_region_out_stall_out,
        out_unnamed_processFPGA116_avm_address => bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_address,
        out_unnamed_processFPGA116_avm_burstcount => bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_burstcount,
        out_unnamed_processFPGA116_avm_byteenable => bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_byteenable,
        out_unnamed_processFPGA116_avm_enable => bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_enable,
        out_unnamed_processFPGA116_avm_read => bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_read,
        out_unnamed_processFPGA116_avm_write => bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_write,
        out_unnamed_processFPGA116_avm_writedata => bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_writedata,
        out_valid_out => bb_processFPGA_B18_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- processFPGA_B18_branch(BLACKBOX,47)
    theprocessFPGA_B18_branch : processFPGA_B18_branch
    PORT MAP (
        in_c0_exe2917 => bb_processFPGA_B18_stall_region_out_c0_exe2917,
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_processFPGA_B18_stall_region_out_valid_out,
        out_c0_exe2917 => processFPGA_B18_branch_out_c0_exe2917,
        out_stall_out => processFPGA_B18_branch_out_stall_out,
        out_valid_out_0 => processFPGA_B18_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe2917(GPOUT,31)
    out_c0_exe2917 <= processFPGA_B18_branch_out_c0_exe2917;

    -- out_intel_reserved_ffwd_60_0(GPOUT,32)
    out_intel_reserved_ffwd_60_0 <= bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_60_0;

    -- out_intel_reserved_ffwd_61_0(GPOUT,33)
    out_intel_reserved_ffwd_61_0 <= bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_61_0;

    -- out_intel_reserved_ffwd_62_0(GPOUT,34)
    out_intel_reserved_ffwd_62_0 <= bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_62_0;

    -- out_intel_reserved_ffwd_63_0(GPOUT,35)
    out_intel_reserved_ffwd_63_0 <= bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_63_0;

    -- out_intel_reserved_ffwd_64_0(GPOUT,36)
    out_intel_reserved_ffwd_64_0 <= bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_64_0;

    -- out_intel_reserved_ffwd_65_0(GPOUT,37)
    out_intel_reserved_ffwd_65_0 <= bb_processFPGA_B18_stall_region_out_intel_reserved_ffwd_65_0;

    -- out_stall_out_0(GPOUT,38)
    out_stall_out_0 <= processFPGA_B18_merge_aunroll_x_out_stall_out_0;

    -- out_unnamed_processFPGA116_avm_address(GPOUT,39)
    out_unnamed_processFPGA116_avm_address <= bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_address;

    -- out_unnamed_processFPGA116_avm_burstcount(GPOUT,40)
    out_unnamed_processFPGA116_avm_burstcount <= bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_burstcount;

    -- out_unnamed_processFPGA116_avm_byteenable(GPOUT,41)
    out_unnamed_processFPGA116_avm_byteenable <= bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_byteenable;

    -- out_unnamed_processFPGA116_avm_enable(GPOUT,42)
    out_unnamed_processFPGA116_avm_enable <= bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_enable;

    -- out_unnamed_processFPGA116_avm_read(GPOUT,43)
    out_unnamed_processFPGA116_avm_read <= bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_read;

    -- out_unnamed_processFPGA116_avm_write(GPOUT,44)
    out_unnamed_processFPGA116_avm_write <= bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_write;

    -- out_unnamed_processFPGA116_avm_writedata(GPOUT,45)
    out_unnamed_processFPGA116_avm_writedata <= bb_processFPGA_B18_stall_region_out_unnamed_processFPGA116_avm_writedata;

    -- out_valid_out_0(GPOUT,46)
    out_valid_out_0 <= processFPGA_B18_branch_out_valid_out_0;

END normal;
