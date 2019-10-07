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

-- VHDL created from i_sfc_c0_for_body_i_processfpga_c0_enter863_processfpga
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

entity i_sfc_c0_for_body_i_processfpga_c0_enter863_processfpga is
    port (
        in_c0_eni1862_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni1862_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit865_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_39_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_30_0 : out std_logic_vector(63 downto 0);  -- ufix64
        in_intel_reserved_ffwd_9_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_31_0 : out std_logic_vector(15 downto 0);  -- ufix16
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_tmp46_i_i1_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        in_tmp46_i_i1_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        out_tmp46_i_i1_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp46_i_i1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_tmp46_i_i1_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        in_tmp46_i_i1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        out_tmp46_i_i1_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        in_tmp46_i_i1_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        out_tmp46_i_i1_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp46_i_i1_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp46_i_i1_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_28_0 : out std_logic_vector(15 downto 0);  -- ufix16
        in_i_stall : in std_logic_vector(0 downto 0);  -- ufix1
        out_o_stall : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_c0_for_body_i_processfpga_c0_enter863_processfpga;

architecture normal of i_sfc_c0_for_body_i_processfpga_c0_enter863_processfpga is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_sfc_exit_c0_for_body_i_processfpga_c0_exit865_processfpga302 is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_input_accepted : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_entry : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285 is
        port (
            in_c0_eni1862_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni1862_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_39_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_9_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_localNeurons : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_tmp46_i_i1_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp46_i_i1_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp46_i_i1_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp46_i_i1_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA43_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_28_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_30_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_31_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp46_i_i1_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp46_i_i1_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp46_i_i1_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_tmp46_i_i1_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp46_i_i1_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp46_i_i1_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp46_i_i1_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_body_i_processfpga_c0_exit865_processfpga_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_body_i_processfpga_c0_exit865_processfpga_aunroll_x_out_stall_entry : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_body_i_processfpga_c0_exit865_processfpga_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_intel_reserved_ffwd_28_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_intel_reserved_ffwd_30_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_intel_reserved_ffwd_31_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal input_accepted_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x(BLACKBOX,21)@1
    -- out out_unnamed_processFPGA43_0@10
    -- out out_intel_reserved_ffwd_28_0@10
    -- out out_intel_reserved_ffwd_30_0@10
    -- out out_intel_reserved_ffwd_31_0@10
    -- out out_o_valid@10
    -- out out_tmp46_i_i1_avm_address@20000000
    -- out out_tmp46_i_i1_avm_burstcount@20000000
    -- out out_tmp46_i_i1_avm_byteenable@20000000
    -- out out_tmp46_i_i1_avm_enable@20000000
    -- out out_tmp46_i_i1_avm_read@20000000
    -- out out_tmp46_i_i1_avm_write@20000000
    -- out out_tmp46_i_i1_avm_writedata@20000000
    thei_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x : i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285
    PORT MAP (
        in_c0_eni1862_0 => in_c0_eni1862_0,
        in_c0_eni1862_1 => in_c0_eni1862_1,
        in_flush => in_flush,
        in_i_valid => input_accepted_and_q,
        in_intel_reserved_ffwd_39_0 => in_intel_reserved_ffwd_39_0,
        in_intel_reserved_ffwd_9_0 => in_intel_reserved_ffwd_9_0,
        in_localNeurons => in_localNeurons,
        in_tmp46_i_i1_avm_readdata => in_tmp46_i_i1_avm_readdata,
        in_tmp46_i_i1_avm_readdatavalid => in_tmp46_i_i1_avm_readdatavalid,
        in_tmp46_i_i1_avm_waitrequest => in_tmp46_i_i1_avm_waitrequest,
        in_tmp46_i_i1_avm_writeack => in_tmp46_i_i1_avm_writeack,
        out_intel_reserved_ffwd_28_0 => i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_intel_reserved_ffwd_28_0,
        out_intel_reserved_ffwd_30_0 => i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_intel_reserved_ffwd_30_0,
        out_intel_reserved_ffwd_31_0 => i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_intel_reserved_ffwd_31_0,
        out_o_valid => i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_o_valid,
        out_tmp46_i_i1_avm_address => i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_address,
        out_tmp46_i_i1_avm_burstcount => i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_burstcount,
        out_tmp46_i_i1_avm_byteenable => i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_byteenable,
        out_tmp46_i_i1_avm_enable => i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_enable,
        out_tmp46_i_i1_avm_read => i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_read,
        out_tmp46_i_i1_avm_write => i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_write,
        out_tmp46_i_i1_avm_writedata => i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_stall_out(LOGICAL,24)
    not_stall_out_q <= not (i_acl_sfc_exit_c0_for_body_i_processfpga_c0_exit865_processfpga_aunroll_x_out_stall_entry);

    -- input_accepted_and(LOGICAL,23)
    input_accepted_and_q <= in_i_valid and not_stall_out_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_acl_sfc_exit_c0_for_body_i_processfpga_c0_exit865_processfpga_aunroll_x(BLACKBOX,20)@20000000
    -- out out_data_out_0@20000003
    -- out out_valid_out@20000003
    thei_acl_sfc_exit_c0_for_body_i_processfpga_c0_exit865_processfpga_aunroll_x : i_acl_sfc_exit_c0_for_body_i_processfpga_c0_exit865_processfpga302
    PORT MAP (
        in_data_in_0 => GND_q,
        in_input_accepted => input_accepted_and_q,
        in_stall_in => in_i_stall,
        in_valid_in => i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_o_valid,
        out_data_out_0 => i_acl_sfc_exit_c0_for_body_i_processfpga_c0_exit865_processfpga_aunroll_x_out_data_out_0,
        out_stall_entry => i_acl_sfc_exit_c0_for_body_i_processfpga_c0_exit865_processfpga_aunroll_x_out_stall_entry,
        out_valid_out => i_acl_sfc_exit_c0_for_body_i_processfpga_c0_exit865_processfpga_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_sync_out_aunroll_x(GPOUT,3)@13
    out_c0_exit865_0 <= i_acl_sfc_exit_c0_for_body_i_processfpga_c0_exit865_processfpga_aunroll_x_out_data_out_0;
    out_o_valid <= i_acl_sfc_exit_c0_for_body_i_processfpga_c0_exit865_processfpga_aunroll_x_out_valid_out;

    -- dupName_0_regfree_osync_x(GPOUT,5)
    out_intel_reserved_ffwd_30_0 <= i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_intel_reserved_ffwd_30_0;

    -- dupName_1_regfree_osync_x(GPOUT,7)
    out_intel_reserved_ffwd_31_0 <= i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_intel_reserved_ffwd_31_0;

    -- dupName_2_regfree_osync_x(GPOUT,9)
    out_tmp46_i_i1_avm_address <= i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_address;

    -- dupName_3_regfree_osync_x(GPOUT,11)
    out_tmp46_i_i1_avm_burstcount <= i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_burstcount;

    -- dupName_4_regfree_osync_x(GPOUT,13)
    out_tmp46_i_i1_avm_byteenable <= i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_byteenable;

    -- dupName_5_regfree_osync_x(GPOUT,15)
    out_tmp46_i_i1_avm_enable <= i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_enable;

    -- dupName_6_regfree_osync_x(GPOUT,17)
    out_tmp46_i_i1_avm_read <= i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_read;

    -- dupName_7_regfree_osync_x(GPOUT,18)
    out_tmp46_i_i1_avm_write <= i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_write;

    -- dupName_8_regfree_osync_x(GPOUT,19)
    out_tmp46_i_i1_avm_writedata <= i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_tmp46_i_i1_avm_writedata;

    -- regfree_osync(GPOUT,26)
    out_intel_reserved_ffwd_28_0 <= i_sfc_logic_c0_for_body_i_processfpga_c0_enter863_processfpga285_aunroll_x_out_intel_reserved_ffwd_28_0;

    -- sync_out(GPOUT,28)@20000000
    out_o_stall <= i_acl_sfc_exit_c0_for_body_i_processfpga_c0_exit865_processfpga_aunroll_x_out_stall_entry;

END normal;
