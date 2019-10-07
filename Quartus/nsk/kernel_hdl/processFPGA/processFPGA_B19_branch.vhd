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

-- VHDL created from processFPGA_B19_branch
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

entity processFPGA_B19_branch is
    port (
        in_c0_exit928_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit928_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit928_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exit928_3 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe1929 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe2930 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit928_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit928_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit928_2 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exit928_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe2930 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end processFPGA_B19_branch;

architecture normal of processFPGA_B19_branch is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit928_reg_0_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit928_reg_1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit928_reg_2_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exit928_reg_3_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c0_exe1929_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe2930_reg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal not_stall_in_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_in_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B19_branch_enable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B19_branch_enable_not_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_0_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_1_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_0_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_1_and_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_stall_in_1(LOGICAL,26)
    not_stall_in_1_q <= not (in_stall_in_1);

    -- c0_exe1929_cmp(LOGICAL,23)
    c0_exe1929_cmp_q <= not (in_c0_exe1929);

    -- valid_out_1_and(LOGICAL,36)
    valid_out_1_and_q <= in_valid_in and c0_exe1929_cmp_q;

    -- valid_1_reg(REG,34)
    valid_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_1_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (processFPGA_B19_branch_enable_q = "1") THEN
                valid_1_reg_q <= valid_out_1_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_1(LOGICAL,28)
    not_valid_1_q <= not (valid_1_reg_q);

    -- not_valid_or_not_stall_1(LOGICAL,30)
    not_valid_or_not_stall_1_q <= not_valid_1_q or not_stall_in_1_q;

    -- not_stall_in_0(LOGICAL,25)
    not_stall_in_0_q <= not (in_stall_in_0);

    -- valid_out_0_and(LOGICAL,35)
    valid_out_0_and_q <= in_valid_in and in_c0_exe1929;

    -- valid_0_reg(REG,33)
    valid_0_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_0_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (processFPGA_B19_branch_enable_q = "1") THEN
                valid_0_reg_q <= valid_out_0_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_0(LOGICAL,27)
    not_valid_0_q <= not (valid_0_reg_q);

    -- not_valid_or_not_stall_0(LOGICAL,29)
    not_valid_or_not_stall_0_q <= not_valid_0_q or not_stall_in_0_q;

    -- processFPGA_B19_branch_enable(LOGICAL,31)
    processFPGA_B19_branch_enable_q <= not_valid_or_not_stall_0_q and not_valid_or_not_stall_1_q;

    -- c0_exit928_reg_0_x(REG,2)
    c0_exit928_reg_0_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit928_reg_0_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (processFPGA_B19_branch_enable_q = "1") THEN
                c0_exit928_reg_0_x_q <= in_c0_exit928_0;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit928_0(GPOUT,15)
    out_c0_exit928_0 <= c0_exit928_reg_0_x_q;

    -- c0_exit928_reg_1_x(REG,3)
    c0_exit928_reg_1_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit928_reg_1_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (processFPGA_B19_branch_enable_q = "1") THEN
                c0_exit928_reg_1_x_q <= in_c0_exit928_1;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit928_1(GPOUT,16)
    out_c0_exit928_1 <= c0_exit928_reg_1_x_q;

    -- c0_exit928_reg_2_x(REG,4)
    c0_exit928_reg_2_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit928_reg_2_x_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (processFPGA_B19_branch_enable_q = "1") THEN
                c0_exit928_reg_2_x_q <= in_c0_exit928_2;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit928_2(GPOUT,17)
    out_c0_exit928_2 <= c0_exit928_reg_2_x_q;

    -- c0_exit928_reg_3_x(REG,5)
    c0_exit928_reg_3_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit928_reg_3_x_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (processFPGA_B19_branch_enable_q = "1") THEN
                c0_exit928_reg_3_x_q <= in_c0_exit928_3;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit928_3(GPOUT,18)
    out_c0_exit928_3 <= c0_exit928_reg_3_x_q;

    -- c0_exe2930_reg(REG,24)
    c0_exe2930_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe2930_reg_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (processFPGA_B19_branch_enable_q = "1") THEN
                c0_exe2930_reg_q <= in_c0_exe2930;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe2930(GPOUT,19)
    out_c0_exe2930 <= c0_exe2930_reg_q;

    -- processFPGA_B19_branch_enable_not(LOGICAL,32)
    processFPGA_B19_branch_enable_not_q <= not (processFPGA_B19_branch_enable_q);

    -- out_stall_out(GPOUT,20)
    out_stall_out <= processFPGA_B19_branch_enable_not_q;

    -- out_valid_out_0(GPOUT,21)
    out_valid_out_0 <= valid_0_reg_q;

    -- out_valid_out_1(GPOUT,22)
    out_valid_out_1 <= valid_1_reg_q;

END normal;
