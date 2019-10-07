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

-- VHDL created from bb_processFPGA_B1_stall_region
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

entity bb_processFPGA_B1_stall_region is
    port (
        in_intel_reserved_ffwd_179_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_10_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_acl_hw_wg_id790 : in std_logic_vector(31 downto 0);  -- ufix32
        in_forked617 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_acl_hw_wg_id790 : out std_logic_vector(31 downto 0);  -- ufix32
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_180_0 : in std_logic_vector(7 downto 0);  -- ufix8
        out_intel_reserved_ffwd_11_0 : out std_logic_vector(16 downto 0);  -- ufix17
        in_netSt : in std_logic_vector(63 downto 0);  -- ufix64
        out_intel_reserved_ffwd_1_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_2_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_3_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_4_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_5_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_6_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_7_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_8_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_9_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA0_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_processFPGA0_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA0_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_processFPGA0_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA0_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA0_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA0_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_processFPGA0_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA0_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_0_0 : out std_logic_vector(7 downto 0);  -- ufix8
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_processFPGA_B1_stall_region;

architecture normal of bb_processFPGA_B1_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_load_unnamed_processfpga0_processfpga9 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_processFPGA0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_readdata_1 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_readdata_2 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_readdata_3 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_readdata_4 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_readdata_5 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_readdata_6 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_readdata_7 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA0_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_processFPGA0_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_processFPGA0_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA0_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA0_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA0_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA0_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component processFPGA_B1_merge_reg is
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


    component i_ffwd_dst_fpgaindvars_iv_next275619_processfpga2 is
        port (
            in_intel_reserved_ffwd_180_0 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_180_0 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_inc131618_processfpga4 is
        port (
            in_intel_reserved_ffwd_179_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_179_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga10_processfpga33 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_9_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_9_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga11_processfpga35 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_10_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_10_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga12_processfpga37 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_11_0 : in std_logic_vector(16 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_11_0 : out std_logic_vector(16 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga1_processfpga15 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_0_0 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_0_0 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga2_processfpga17 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_1_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_1_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga3_processfpga19 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_2_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_2_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga4_processfpga21 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_3_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_3_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga5_processfpga23 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_4_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_4_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga6_processfpga25 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_5_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_5_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga7_processfpga27 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_6_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_6_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga8_processfpga29 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_7_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_7_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga9_processfpga31 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_8_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_8_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_netst_sync_buffer_processfpga6 is
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
    signal bgTrunc_i_unnamed_processfpga12_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal bgTrunc_i_unnamed_processfpga14_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_arrayidx_processfpga_processfpga8_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_multconst_x_q : STD_LOGIC_VECTOR (58 downto 0);
    signal i_arrayidx_processfpga_processfpga8_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_processfpga_processfpga8_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_processfpga_processfpga8_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_processfpga_processfpga8_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_processfpga_processfpga8_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_conv8_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_idxprom_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_1 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_2 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_3 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_4 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_5 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_6 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_7 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_unnamed_processfpga13_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal processFPGA_B1_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B1_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal processFPGA_B1_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal processFPGA_B1_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal c_i16_0gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_1gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i17_1gr_q : STD_LOGIC_VECTOR (16 downto 0);
    signal c_i8_98_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_cmp51251_processfpga_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp51251_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_conv8_processfpga_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_conv8_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_out_dest_data_out_180_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_inc131618_processfpga_out_dest_data_out_179_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_inc131618_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_inc131618_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga10_processfpga_out_intel_reserved_ffwd_9_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga10_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga10_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga11_processfpga_out_intel_reserved_ffwd_10_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_processfpga11_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga11_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga12_processfpga_out_intel_reserved_ffwd_11_0 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_ffwd_src_unnamed_processfpga12_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga12_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga1_processfpga_out_intel_reserved_ffwd_0_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_ffwd_src_unnamed_processfpga1_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga1_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga2_processfpga_out_intel_reserved_ffwd_1_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_src_unnamed_processfpga2_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga2_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga3_processfpga_out_intel_reserved_ffwd_2_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_src_unnamed_processfpga3_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga3_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga4_processfpga_out_intel_reserved_ffwd_3_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_src_unnamed_processfpga4_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga4_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga5_processfpga_out_intel_reserved_ffwd_4_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_src_unnamed_processfpga5_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga5_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga6_processfpga_out_intel_reserved_ffwd_5_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_src_unnamed_processfpga6_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga6_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga7_processfpga_out_intel_reserved_ffwd_6_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_src_unnamed_processfpga7_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga7_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga8_processfpga_out_intel_reserved_ffwd_7_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_src_unnamed_processfpga8_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga8_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga9_processfpga_out_intel_reserved_ffwd_8_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_src_unnamed_processfpga9_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga9_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv274_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv274_replace_phi_processfpga_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_i_01374_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_i_01374_replace_phi_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_idxprom_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_syncbuf_netst_sync_buffer_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_netst_sync_buffer_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_netst_sync_buffer_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga12_a : STD_LOGIC_VECTOR (16 downto 0);
    signal i_unnamed_processfpga12_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_unnamed_processfpga12_o : STD_LOGIC_VECTOR (16 downto 0);
    signal i_unnamed_processfpga12_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_unnamed_processfpga13_vt_join_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_unnamed_processfpga13_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_unnamed_processfpga14_a : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_processfpga14_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_processfpga14_o : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_processfpga14_q : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_join_13_q : STD_LOGIC_VECTOR (58 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_align_14_q : STD_LOGIC_VECTOR (40 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_align_14_qint : STD_LOGIC_VECTOR (40 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_join_16_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (69 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (69 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (69 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (69 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_processfpga_processfpga8_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_unnamed_processfpga13_vt_select_15_b_1_0_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_i_load_unnamed_processfpga0_processfpga_vunroll_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_c : STD_LOGIC_VECTOR (15 downto 0);
    signal bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_d : STD_LOGIC_VECTOR (15 downto 0);
    signal bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_e : STD_LOGIC_VECTOR (15 downto 0);
    signal bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_f : STD_LOGIC_VECTOR (15 downto 0);
    signal bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_g : STD_LOGIC_VECTOR (15 downto 0);
    signal bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_h : STD_LOGIC_VECTOR (15 downto 0);
    signal bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_i : STD_LOGIC_VECTOR (15 downto 0);
    signal bubble_join_processFPGA_B1_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (32 downto 0);
    signal bubble_select_processFPGA_B1_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_processFPGA_B1_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_q : STD_LOGIC_VECTOR (7 downto 0);
    signal bubble_select_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_b : STD_LOGIC_VECTOR (7 downto 0);
    signal bubble_join_i_ffwd_dst_inc131618_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal bubble_select_i_ffwd_dst_inc131618_processfpga_b : STD_LOGIC_VECTOR (15 downto 0);
    signal bubble_join_i_syncbuf_netst_sync_buffer_processfpga_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_syncbuf_netst_sync_buffer_processfpga_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (32 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_processFPGA_B1_merge_reg_aunroll_x_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp51251_processfpga_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp51251_processfpga_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp51251_processfpga_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp51251_processfpga_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp51251_processfpga_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp51251_processfpga_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp51251_processfpga_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp51251_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp51251_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp51251_processfpga_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_inc131618_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_inc131618_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_inc131618_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga11_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga11_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga11_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga1_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga1_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga1_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga2_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga2_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga2_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga3_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga3_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga3_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga4_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga4_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga4_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga5_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga5_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga5_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga6_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga6_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga6_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga7_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga7_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga7_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga8_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga8_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga8_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga9_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga9_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga9_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_i_01374_replace_phi_processfpga_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_i_01374_replace_phi_processfpga_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_i_01374_replace_phi_processfpga_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_i_01374_replace_phi_processfpga_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_i_01374_replace_phi_processfpga_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_i_01374_replace_phi_processfpga_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_i_01374_replace_phi_processfpga_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_i_01374_replace_phi_processfpga_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_i_01374_replace_phi_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_i_01374_replace_phi_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_i_01374_replace_phi_processfpga_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_netst_sync_buffer_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_netst_sync_buffer_processfpga_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_netst_sync_buffer_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_netst_sync_buffer_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_r_data0 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_D0 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_D0 : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg(STALLENABLE,324)
    -- Valid signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_V0 <= bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_R_v_0;
    -- Stall signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_s_tv_0 <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_backStall and bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_R_v_0;
    -- Backward Enable generation
    bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_backEN <= not (bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_v_s_0 <= bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_backEN and SE_out_i_ffwd_src_unnamed_processfpga11_processfpga_V0;
    -- Backward Stall generation
    bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_backStall <= not (bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_v_s_0);
    bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_backEN = "0") THEN
                bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_R_v_0 and bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_s_tv_0;
            ELSE
                bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_ffwd_src_unnamed_processfpga8_processfpga(STALLENABLE,234)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_processfpga8_processfpga_V0 <= SE_out_i_ffwd_src_unnamed_processfpga8_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_processfpga8_processfpga_backStall <= bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_backStall or not (SE_out_i_ffwd_src_unnamed_processfpga8_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_processfpga8_processfpga_wireValid <= i_ffwd_src_unnamed_processfpga8_processfpga_out_valid_out;

    -- bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg(STALLENABLE,332)
    -- Valid signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_V0 <= bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_R_v_0;
    -- Stall signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_s_tv_0 <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_backStall and bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_R_v_0;
    -- Backward Enable generation
    bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_backEN <= not (bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_v_s_0 <= bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_backEN and SE_out_i_ffwd_src_unnamed_processfpga8_processfpga_V0;
    -- Backward Stall generation
    bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_backStall <= not (bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_v_s_0);
    bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_backEN = "0") THEN
                bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_R_v_0 and bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_s_tv_0;
            ELSE
                bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_ffwd_src_unnamed_processfpga7_processfpga(STALLENABLE,232)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_processfpga7_processfpga_V0 <= SE_out_i_ffwd_src_unnamed_processfpga7_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_processfpga7_processfpga_backStall <= bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_backStall or not (SE_out_i_ffwd_src_unnamed_processfpga7_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_processfpga7_processfpga_wireValid <= i_ffwd_src_unnamed_processfpga7_processfpga_out_valid_out;

    -- bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg(STALLENABLE,331)
    -- Valid signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_V0 <= bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_R_v_0;
    -- Stall signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_s_tv_0 <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_backStall and bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_R_v_0;
    -- Backward Enable generation
    bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_backEN <= not (bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_v_s_0 <= bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_backEN and SE_out_i_ffwd_src_unnamed_processfpga7_processfpga_V0;
    -- Backward Stall generation
    bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_backStall <= not (bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_v_s_0);
    bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_backEN = "0") THEN
                bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_R_v_0 and bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_s_tv_0;
            ELSE
                bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_ffwd_src_unnamed_processfpga6_processfpga(STALLENABLE,230)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_processfpga6_processfpga_V0 <= SE_out_i_ffwd_src_unnamed_processfpga6_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_processfpga6_processfpga_backStall <= bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_backStall or not (SE_out_i_ffwd_src_unnamed_processfpga6_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_processfpga6_processfpga_wireValid <= i_ffwd_src_unnamed_processfpga6_processfpga_out_valid_out;

    -- bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg(STALLENABLE,330)
    -- Valid signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_V0 <= bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_R_v_0;
    -- Stall signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_s_tv_0 <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_backStall and bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_R_v_0;
    -- Backward Enable generation
    bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_backEN <= not (bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_v_s_0 <= bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_backEN and SE_out_i_ffwd_src_unnamed_processfpga6_processfpga_V0;
    -- Backward Stall generation
    bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_backStall <= not (bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_v_s_0);
    bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_backEN = "0") THEN
                bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_R_v_0 and bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_s_tv_0;
            ELSE
                bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_ffwd_src_unnamed_processfpga5_processfpga(STALLENABLE,228)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_processfpga5_processfpga_V0 <= SE_out_i_ffwd_src_unnamed_processfpga5_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_processfpga5_processfpga_backStall <= bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_backStall or not (SE_out_i_ffwd_src_unnamed_processfpga5_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_processfpga5_processfpga_wireValid <= i_ffwd_src_unnamed_processfpga5_processfpga_out_valid_out;

    -- bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg(STALLENABLE,329)
    -- Valid signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_V0 <= bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_R_v_0;
    -- Stall signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_s_tv_0 <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_backStall and bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_R_v_0;
    -- Backward Enable generation
    bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_backEN <= not (bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_v_s_0 <= bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_backEN and SE_out_i_ffwd_src_unnamed_processfpga5_processfpga_V0;
    -- Backward Stall generation
    bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_backStall <= not (bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_v_s_0);
    bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_backEN = "0") THEN
                bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_R_v_0 and bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_s_tv_0;
            ELSE
                bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_ffwd_src_unnamed_processfpga4_processfpga(STALLENABLE,226)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_processfpga4_processfpga_V0 <= SE_out_i_ffwd_src_unnamed_processfpga4_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_processfpga4_processfpga_backStall <= bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_backStall or not (SE_out_i_ffwd_src_unnamed_processfpga4_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_processfpga4_processfpga_wireValid <= i_ffwd_src_unnamed_processfpga4_processfpga_out_valid_out;

    -- bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg(STALLENABLE,328)
    -- Valid signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_V0 <= bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_R_v_0;
    -- Stall signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_s_tv_0 <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_backStall and bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_R_v_0;
    -- Backward Enable generation
    bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_backEN <= not (bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_v_s_0 <= bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_backEN and SE_out_i_ffwd_src_unnamed_processfpga4_processfpga_V0;
    -- Backward Stall generation
    bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_backStall <= not (bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_v_s_0);
    bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_backEN = "0") THEN
                bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_R_v_0 and bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_s_tv_0;
            ELSE
                bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_ffwd_src_unnamed_processfpga3_processfpga(STALLENABLE,224)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_processfpga3_processfpga_V0 <= SE_out_i_ffwd_src_unnamed_processfpga3_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_processfpga3_processfpga_backStall <= bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_backStall or not (SE_out_i_ffwd_src_unnamed_processfpga3_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_processfpga3_processfpga_wireValid <= i_ffwd_src_unnamed_processfpga3_processfpga_out_valid_out;

    -- bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg(STALLENABLE,327)
    -- Valid signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_V0 <= bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_R_v_0;
    -- Stall signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_s_tv_0 <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_backStall and bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_R_v_0;
    -- Backward Enable generation
    bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_backEN <= not (bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_v_s_0 <= bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_backEN and SE_out_i_ffwd_src_unnamed_processfpga3_processfpga_V0;
    -- Backward Stall generation
    bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_backStall <= not (bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_v_s_0);
    bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_backEN = "0") THEN
                bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_R_v_0 and bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_s_tv_0;
            ELSE
                bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1(STALLENABLE,262)
    -- Valid signal propagation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_V0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_R_v_0;
    -- Stall signal propagation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_s_tv_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_backStall and SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_R_v_0;
    -- Backward Enable generation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_backEN <= not (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_v_s_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_backEN and SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_V;
    -- Backward Stall generation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_backStall <= not (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_backEN);
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_backEN = "0") THEN
                SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_R_v_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_R_v_0 and SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_s_tv_0;
            ELSE
                SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_R_v_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_stall_entry(STALLENABLE,247)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= processFPGA_B1_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- i_arrayidx_processfpga_processfpga8_mult_multconst_x(CONSTANT,56)
    i_arrayidx_processfpga_processfpga8_mult_multconst_x_q <= "00000000000000000000000000000000000000000000000000000000000";

    -- i_idxprom_processfpga_vt_const_63(CONSTANT,101)
    i_idxprom_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- c_i16_0gr(CONSTANT,69)
    c_i16_0gr_q <= "0000000000000000";

    -- bubble_join_i_ffwd_dst_inc131618_processfpga(BITJOIN,172)
    bubble_join_i_ffwd_dst_inc131618_processfpga_q <= i_ffwd_dst_inc131618_processfpga_out_dest_data_out_179_0;

    -- bubble_select_i_ffwd_dst_inc131618_processfpga(BITSELECT,173)
    bubble_select_i_ffwd_dst_inc131618_processfpga_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_inc131618_processfpga_q(15 downto 0));

    -- i_i_01374_replace_phi_processfpga(MUX,99)@1 + 1
    i_i_01374_replace_phi_processfpga_s <= bubble_select_processFPGA_B1_merge_reg_aunroll_x_b;
    i_i_01374_replace_phi_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_i_01374_replace_phi_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_i_01374_replace_phi_processfpga_backEN = "1") THEN
                CASE (i_i_01374_replace_phi_processfpga_s) IS
                    WHEN "0" => i_i_01374_replace_phi_processfpga_q <= bubble_select_i_ffwd_dst_inc131618_processfpga_b;
                    WHEN "1" => i_i_01374_replace_phi_processfpga_q <= c_i16_0gr_q;
                    WHEN OTHERS => i_i_01374_replace_phi_processfpga_q <= (others => '0');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- i_idxprom_processfpga_sel_x(BITSELECT,63)@2
    i_idxprom_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(i_i_01374_replace_phi_processfpga_q(15 downto 0)), 64));

    -- i_idxprom_processfpga_vt_select_15(BITSELECT,103)@2
    i_idxprom_processfpga_vt_select_15_b <= i_idxprom_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom_processfpga_vt_join(BITJOIN,102)@2
    i_idxprom_processfpga_vt_join_q <= i_idxprom_processfpga_vt_const_63_q & i_idxprom_processfpga_vt_select_15_b;

    -- i_arrayidx_processfpga_processfpga8_mult_x_bs1_merged_bit_select(BITSELECT,148)@2
    i_arrayidx_processfpga_processfpga8_mult_x_bs1_merged_bit_select_b <= i_idxprom_processfpga_vt_join_q(17 downto 0);
    i_arrayidx_processfpga_processfpga8_mult_x_bs1_merged_bit_select_c <= i_idxprom_processfpga_vt_join_q(63 downto 54);
    i_arrayidx_processfpga_processfpga8_mult_x_bs1_merged_bit_select_d <= i_idxprom_processfpga_vt_join_q(35 downto 18);
    i_arrayidx_processfpga_processfpga8_mult_x_bs1_merged_bit_select_e <= i_idxprom_processfpga_vt_join_q(53 downto 36);

    -- i_arrayidx_processfpga_processfpga8_mult_x_im3_shift0(BITSHIFT,145)@2
    i_arrayidx_processfpga_processfpga8_mult_x_im3_shift0_qint <= i_arrayidx_processfpga_processfpga8_mult_x_bs1_merged_bit_select_c & "0000";
    i_arrayidx_processfpga_processfpga8_mult_x_im3_shift0_q <= i_arrayidx_processfpga_processfpga8_mult_x_im3_shift0_qint(13 downto 0);

    -- i_arrayidx_processfpga_processfpga8_mult_x_align_15(BITSHIFT,136)@2
    i_arrayidx_processfpga_processfpga8_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_processfpga_processfpga8_mult_x_im3_shift0_q) & "0000000000000";
    i_arrayidx_processfpga_processfpga8_mult_x_align_15_q <= i_arrayidx_processfpga_processfpga8_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx_processfpga_processfpga8_mult_x_im6_shift0(BITSHIFT,146)@2
    i_arrayidx_processfpga_processfpga8_mult_x_im6_shift0_qint <= i_arrayidx_processfpga_processfpga8_mult_x_bs1_merged_bit_select_d & "0000";
    i_arrayidx_processfpga_processfpga8_mult_x_im6_shift0_q <= i_arrayidx_processfpga_processfpga8_mult_x_im6_shift0_qint(21 downto 0);

    -- i_arrayidx_processfpga_processfpga8_mult_x_align_14(BITSHIFT,135)@2
    i_arrayidx_processfpga_processfpga8_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_processfpga_processfpga8_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx_processfpga_processfpga8_mult_x_align_14_q <= i_arrayidx_processfpga_processfpga8_mult_x_align_14_qint(40 downto 0);

    -- i_arrayidx_processfpga_processfpga8_mult_x_join_16(BITJOIN,137)@2
    i_arrayidx_processfpga_processfpga8_mult_x_join_16_q <= i_arrayidx_processfpga_processfpga8_mult_x_align_15_q & i_arrayidx_processfpga_processfpga8_mult_x_align_14_q;

    -- i_arrayidx_processfpga_processfpga8_mult_x_im9_shift0(BITSHIFT,147)@2
    i_arrayidx_processfpga_processfpga8_mult_x_im9_shift0_qint <= i_arrayidx_processfpga_processfpga8_mult_x_bs1_merged_bit_select_e & "0000";
    i_arrayidx_processfpga_processfpga8_mult_x_im9_shift0_q <= i_arrayidx_processfpga_processfpga8_mult_x_im9_shift0_qint(21 downto 0);

    -- i_arrayidx_processfpga_processfpga8_mult_x_align_12(BITSHIFT,133)@2
    i_arrayidx_processfpga_processfpga8_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_processfpga_processfpga8_mult_x_im9_shift0_q) & "0000000000000";
    i_arrayidx_processfpga_processfpga8_mult_x_align_12_q <= i_arrayidx_processfpga_processfpga8_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx_processfpga_processfpga8_mult_x_im0_shift0(BITSHIFT,144)@2
    i_arrayidx_processfpga_processfpga8_mult_x_im0_shift0_qint <= i_arrayidx_processfpga_processfpga8_mult_x_bs1_merged_bit_select_b & "0000";
    i_arrayidx_processfpga_processfpga8_mult_x_im0_shift0_q <= i_arrayidx_processfpga_processfpga8_mult_x_im0_shift0_qint(21 downto 0);

    -- i_arrayidx_processfpga_processfpga8_mult_x_join_13(BITJOIN,134)@2
    i_arrayidx_processfpga_processfpga8_mult_x_join_13_q <= i_arrayidx_processfpga_processfpga8_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx_processfpga_processfpga8_mult_x_im0_shift0_q);

    -- i_arrayidx_processfpga_processfpga8_mult_x_result_add_0_0(ADD,138)@2
    i_arrayidx_processfpga_processfpga8_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx_processfpga_processfpga8_mult_x_join_13_q);
    i_arrayidx_processfpga_processfpga8_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_processfpga_processfpga8_mult_x_join_16_q);
    i_arrayidx_processfpga_processfpga8_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_processfpga_processfpga8_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx_processfpga_processfpga8_mult_x_result_add_0_0_b));
    i_arrayidx_processfpga_processfpga8_mult_x_result_add_0_0_q <= i_arrayidx_processfpga_processfpga8_mult_x_result_add_0_0_o(69 downto 0);

    -- i_arrayidx_processfpga_processfpga8_mult_extender_x(BITJOIN,55)@2
    i_arrayidx_processfpga_processfpga8_mult_extender_x_q <= i_arrayidx_processfpga_processfpga8_mult_multconst_x_q & i_arrayidx_processfpga_processfpga8_mult_x_result_add_0_0_q(68 downto 0);

    -- i_arrayidx_processfpga_processfpga8_trunc_sel_x(BITSELECT,57)@2
    i_arrayidx_processfpga_processfpga8_trunc_sel_x_b <= i_arrayidx_processfpga_processfpga8_mult_extender_x_q(63 downto 0);

    -- SE_out_bubble_out_processFPGA_B1_merge_reg_aunroll_x_3(STALLENABLE,280)
    -- Valid signal propagation
    SE_out_bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_V0 <= SE_out_bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_backStall <= i_syncbuf_netst_sync_buffer_processfpga_out_stall_out or not (SE_out_bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_wireValid <= bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_valid_out;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_syncbuf_netst_sync_buffer_processfpga(BLACKBOX,104)@3
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_netst_sync_buffer_processfpga : i_syncbuf_netst_sync_buffer_processfpga6
    PORT MAP (
        in_buffer_in => in_netSt,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_netst_sync_buffer_processfpga_backStall,
        in_valid_in => SE_out_bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_V0,
        out_buffer_out => i_syncbuf_netst_sync_buffer_processfpga_out_buffer_out,
        out_stall_out => i_syncbuf_netst_sync_buffer_processfpga_out_stall_out,
        out_valid_out => i_syncbuf_netst_sync_buffer_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_syncbuf_netst_sync_buffer_processfpga(STALLENABLE,242)
    -- Valid signal propagation
    SE_out_i_syncbuf_netst_sync_buffer_processfpga_V0 <= SE_out_i_syncbuf_netst_sync_buffer_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_syncbuf_netst_sync_buffer_processfpga_backStall <= i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_stall or not (SE_out_i_syncbuf_netst_sync_buffer_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_netst_sync_buffer_processfpga_and0 <= i_syncbuf_netst_sync_buffer_processfpga_out_valid_out;
    SE_out_i_syncbuf_netst_sync_buffer_processfpga_wireValid <= SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_V0 and SE_out_i_syncbuf_netst_sync_buffer_processfpga_and0;

    -- SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0(STALLENABLE,266)
    -- Valid signal propagation
    SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_V0 <= SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_R_v_0;
    -- Stall signal propagation
    SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_s_tv_0 <= SE_out_i_syncbuf_netst_sync_buffer_processfpga_backStall and SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_R_v_0;
    -- Backward Enable generation
    SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_backEN <= not (SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_v_s_0 <= SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_backEN and SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_V;
    -- Backward Stall generation
    SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_backStall <= not (SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_backEN);
    SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_backEN = "0") THEN
                SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_R_v_0 <= SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_R_v_0 and SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_R_v_0 <= SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0(STALLREG,334)
    SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_r_valid <= (others => '0');
            SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_r_valid <= SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_backStall and (SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_r_valid or SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_i_valid);

            IF (SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_r_data0 <= STD_LOGIC_VECTOR(i_arrayidx_processfpga_processfpga8_trunc_sel_x_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_i_valid <= SE_i_i_01374_replace_phi_processfpga_V1;
    -- Stall signal propagation
    SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_backStall <= SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_r_valid or not (SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_i_valid);

    -- Valid
    SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_V <= SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_r_valid WHEN SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_r_valid = "1" ELSE SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_i_valid;

    SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_D0 <= SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_r_data0 WHEN SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_r_valid = "1" ELSE i_arrayidx_processfpga_processfpga8_trunc_sel_x_b;

    -- SE_out_i_ffwd_src_unnamed_processfpga2_processfpga(STALLENABLE,222)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_processfpga2_processfpga_V0 <= SE_out_i_ffwd_src_unnamed_processfpga2_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_processfpga2_processfpga_backStall <= bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_stall_out or not (SE_out_i_ffwd_src_unnamed_processfpga2_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_processfpga2_processfpga_wireValid <= i_ffwd_src_unnamed_processfpga2_processfpga_out_valid_out;

    -- i_ffwd_src_unnamed_processfpga2_processfpga(BLACKBOX,90)@2
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_1_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga2_processfpga : i_ffwd_src_unnamed_processfpga2_processfpga17
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_1_0 => i_i_01374_replace_phi_processfpga_q,
        in_stall_in => SE_out_i_ffwd_src_unnamed_processfpga2_processfpga_backStall,
        in_valid_in => SE_i_i_01374_replace_phi_processfpga_V0,
        out_intel_reserved_ffwd_1_0 => i_ffwd_src_unnamed_processfpga2_processfpga_out_intel_reserved_ffwd_1_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga2_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga2_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_ffwd_dst_inc131618_processfpga(STALLENABLE,212)
    -- Valid signal propagation
    SE_out_i_ffwd_dst_inc131618_processfpga_V0 <= SE_out_i_ffwd_dst_inc131618_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_dst_inc131618_processfpga_backStall <= SE_i_i_01374_replace_phi_processfpga_backStall or not (SE_out_i_ffwd_dst_inc131618_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_dst_inc131618_processfpga_wireValid <= i_ffwd_dst_inc131618_processfpga_out_valid_out;

    -- SE_i_i_01374_replace_phi_processfpga(STALLENABLE,238)
    -- Valid signal propagation
    SE_i_i_01374_replace_phi_processfpga_V0 <= SE_i_i_01374_replace_phi_processfpga_R_v_0;
    SE_i_i_01374_replace_phi_processfpga_V1 <= SE_i_i_01374_replace_phi_processfpga_R_v_1;
    -- Stall signal propagation
    SE_i_i_01374_replace_phi_processfpga_s_tv_0 <= i_ffwd_src_unnamed_processfpga2_processfpga_out_stall_out and SE_i_i_01374_replace_phi_processfpga_R_v_0;
    SE_i_i_01374_replace_phi_processfpga_s_tv_1 <= SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_backStall and SE_i_i_01374_replace_phi_processfpga_R_v_1;
    -- Backward Enable generation
    SE_i_i_01374_replace_phi_processfpga_or0 <= SE_i_i_01374_replace_phi_processfpga_s_tv_0;
    SE_i_i_01374_replace_phi_processfpga_backEN <= not (SE_i_i_01374_replace_phi_processfpga_s_tv_1 or SE_i_i_01374_replace_phi_processfpga_or0);
    -- Determine whether to write valid data into the first register stage
    SE_i_i_01374_replace_phi_processfpga_and0 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_V4 and SE_i_i_01374_replace_phi_processfpga_backEN;
    SE_i_i_01374_replace_phi_processfpga_v_s_0 <= SE_out_i_ffwd_dst_inc131618_processfpga_V0 and SE_i_i_01374_replace_phi_processfpga_and0;
    -- Backward Stall generation
    SE_i_i_01374_replace_phi_processfpga_backStall <= not (SE_i_i_01374_replace_phi_processfpga_v_s_0);
    SE_i_i_01374_replace_phi_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_i_01374_replace_phi_processfpga_R_v_0 <= (others => '0');
            SE_i_i_01374_replace_phi_processfpga_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_i_01374_replace_phi_processfpga_backEN = "0") THEN
                SE_i_i_01374_replace_phi_processfpga_R_v_0 <= SE_i_i_01374_replace_phi_processfpga_R_v_0 and SE_i_i_01374_replace_phi_processfpga_s_tv_0;
            ELSE
                SE_i_i_01374_replace_phi_processfpga_R_v_0 <= SE_i_i_01374_replace_phi_processfpga_v_s_0;
            END IF;

            IF (SE_i_i_01374_replace_phi_processfpga_backEN = "0") THEN
                SE_i_i_01374_replace_phi_processfpga_R_v_1 <= SE_i_i_01374_replace_phi_processfpga_R_v_1 and SE_i_i_01374_replace_phi_processfpga_s_tv_1;
            ELSE
                SE_i_i_01374_replace_phi_processfpga_R_v_1 <= SE_i_i_01374_replace_phi_processfpga_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_ffwd_src_unnamed_processfpga1_processfpga(STALLENABLE,220)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_processfpga1_processfpga_V0 <= SE_out_i_ffwd_src_unnamed_processfpga1_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_processfpga1_processfpga_backStall <= bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_stall_out or not (SE_out_i_ffwd_src_unnamed_processfpga1_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_processfpga1_processfpga_wireValid <= i_ffwd_src_unnamed_processfpga1_processfpga_out_valid_out;

    -- c_i8_98(CONSTANT,74)
    c_i8_98_q <= "01100010";

    -- bubble_join_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga(BITJOIN,169)
    bubble_join_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_q <= i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_out_dest_data_out_180_0;

    -- bubble_select_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga(BITSELECT,170)
    bubble_select_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_q(7 downto 0));

    -- i_fpgaindvars_iv274_replace_phi_processfpga(MUX,98)@1
    i_fpgaindvars_iv274_replace_phi_processfpga_s <= bubble_select_processFPGA_B1_merge_reg_aunroll_x_b;
    i_fpgaindvars_iv274_replace_phi_processfpga_combproc: PROCESS (i_fpgaindvars_iv274_replace_phi_processfpga_s, bubble_select_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_b, c_i8_98_q)
    BEGIN
        CASE (i_fpgaindvars_iv274_replace_phi_processfpga_s) IS
            WHEN "0" => i_fpgaindvars_iv274_replace_phi_processfpga_q <= bubble_select_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_b;
            WHEN "1" => i_fpgaindvars_iv274_replace_phi_processfpga_q <= c_i8_98_q;
            WHEN OTHERS => i_fpgaindvars_iv274_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_ffwd_src_unnamed_processfpga1_processfpga(BLACKBOX,89)@1
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_0_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga1_processfpga : i_ffwd_src_unnamed_processfpga1_processfpga15
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_0_0 => i_fpgaindvars_iv274_replace_phi_processfpga_q,
        in_stall_in => SE_out_i_ffwd_src_unnamed_processfpga1_processfpga_backStall,
        in_valid_in => SE_out_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_V0,
        out_intel_reserved_ffwd_0_0 => i_ffwd_src_unnamed_processfpga1_processfpga_out_intel_reserved_ffwd_0_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga1_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga1_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga(STALLENABLE,210)
    -- Valid signal propagation
    SE_out_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_V0 <= SE_out_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_backStall <= i_ffwd_src_unnamed_processfpga1_processfpga_out_stall_out or not (SE_out_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_and0 <= i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_out_valid_out;
    SE_out_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_wireValid <= SE_out_processFPGA_B1_merge_reg_aunroll_x_V3 and SE_out_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_and0;

    -- bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg(STALLFIFO,323)
    bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_valid_in <= SE_out_processFPGA_B1_merge_reg_aunroll_x_V2;
    bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_stall_in <= SE_out_bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_backStall;
    bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp <= bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_valid_in(0);
    bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp <= bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_stall_in(0);
    bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_valid_out(0) <= bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_stall_out(0) <= bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    thebubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 3,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_inc131618_processfpga(BLACKBOX,85)@1
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_inc131618_processfpga : i_ffwd_dst_inc131618_processfpga4
    PORT MAP (
        in_intel_reserved_ffwd_179_0 => in_intel_reserved_ffwd_179_0,
        in_stall_in => SE_out_i_ffwd_dst_inc131618_processfpga_backStall,
        in_valid_in => SE_out_processFPGA_B1_merge_reg_aunroll_x_V1,
        out_dest_data_out_179_0 => i_ffwd_dst_inc131618_processfpga_out_dest_data_out_179_0,
        out_stall_out => i_ffwd_dst_inc131618_processfpga_out_stall_out,
        out_valid_out => i_ffwd_dst_inc131618_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_fpgaindvars_iv_next275619_processfpga(BLACKBOX,84)@1
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_fpgaindvars_iv_next275619_processfpga : i_ffwd_dst_fpgaindvars_iv_next275619_processfpga2
    PORT MAP (
        in_intel_reserved_ffwd_180_0 => in_intel_reserved_ffwd_180_0,
        in_stall_in => SE_out_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_backStall,
        in_valid_in => SE_out_processFPGA_B1_merge_reg_aunroll_x_V0,
        out_dest_data_out_180_0 => i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_out_dest_data_out_180_0,
        out_stall_out => i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_out_stall_out,
        out_valid_out => i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_processFPGA_B1_merge_reg_aunroll_x(STALLENABLE,205)
    SE_out_processFPGA_B1_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg1 <= (others => '0');
            SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg2 <= (others => '0');
            SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg3 <= (others => '0');
            SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg4 <= (others => '0');
            SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg5 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg0 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg1 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg2 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg3 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg3;
            -- Succesor 4
            SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg4 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg4;
            -- Succesor 5
            SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg5 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg5;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed0 <= (not (i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_out_stall_out) and SE_out_processFPGA_B1_merge_reg_aunroll_x_wireValid) or SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg0;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed1 <= (not (i_ffwd_dst_inc131618_processfpga_out_stall_out) and SE_out_processFPGA_B1_merge_reg_aunroll_x_wireValid) or SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg1;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed2 <= (not (bubble_out_processFPGA_B1_merge_reg_aunroll_x_3_reg_stall_out) and SE_out_processFPGA_B1_merge_reg_aunroll_x_wireValid) or SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg2;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed3 <= (not (SE_out_i_ffwd_dst_fpgaindvars_iv_next275619_processfpga_backStall) and SE_out_processFPGA_B1_merge_reg_aunroll_x_wireValid) or SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg3;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed4 <= (not (SE_i_i_01374_replace_phi_processfpga_backStall) and SE_out_processFPGA_B1_merge_reg_aunroll_x_wireValid) or SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg4;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed5 <= (not (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_backStall) and SE_out_processFPGA_B1_merge_reg_aunroll_x_wireValid) or SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg5;
    -- Consuming
    SE_out_processFPGA_B1_merge_reg_aunroll_x_StallValid <= SE_out_processFPGA_B1_merge_reg_aunroll_x_backStall and SE_out_processFPGA_B1_merge_reg_aunroll_x_wireValid;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg0 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_StallValid and SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed0;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg1 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_StallValid and SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed1;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg2 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_StallValid and SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed2;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg3 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_StallValid and SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed3;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg4 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_StallValid and SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed4;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_toReg5 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_StallValid and SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed5;
    -- Backward Stall generation
    SE_out_processFPGA_B1_merge_reg_aunroll_x_or0 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed0;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_or1 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed1 and SE_out_processFPGA_B1_merge_reg_aunroll_x_or0;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_or2 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed2 and SE_out_processFPGA_B1_merge_reg_aunroll_x_or1;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_or3 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed3 and SE_out_processFPGA_B1_merge_reg_aunroll_x_or2;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_or4 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed4 and SE_out_processFPGA_B1_merge_reg_aunroll_x_or3;
    SE_out_processFPGA_B1_merge_reg_aunroll_x_wireStall <= not (SE_out_processFPGA_B1_merge_reg_aunroll_x_consumed5 and SE_out_processFPGA_B1_merge_reg_aunroll_x_or4);
    SE_out_processFPGA_B1_merge_reg_aunroll_x_backStall <= SE_out_processFPGA_B1_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_processFPGA_B1_merge_reg_aunroll_x_V0 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_wireValid and not (SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg0);
    SE_out_processFPGA_B1_merge_reg_aunroll_x_V1 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_wireValid and not (SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg1);
    SE_out_processFPGA_B1_merge_reg_aunroll_x_V2 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_wireValid and not (SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg2);
    SE_out_processFPGA_B1_merge_reg_aunroll_x_V3 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_wireValid and not (SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg3);
    SE_out_processFPGA_B1_merge_reg_aunroll_x_V4 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_wireValid and not (SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg4);
    SE_out_processFPGA_B1_merge_reg_aunroll_x_V5 <= SE_out_processFPGA_B1_merge_reg_aunroll_x_wireValid and not (SE_out_processFPGA_B1_merge_reg_aunroll_x_fromReg5);
    -- Computing multiple Valid(s)
    SE_out_processFPGA_B1_merge_reg_aunroll_x_wireValid <= processFPGA_B1_merge_reg_aunroll_x_out_valid_out;

    -- bubble_join_stall_entry(BITJOIN,190)
    bubble_join_stall_entry_q <= in_forked617 & in_acl_hw_wg_id790;

    -- bubble_select_stall_entry(BITSELECT,191)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(31 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(32 downto 32));

    -- processFPGA_B1_merge_reg_aunroll_x(BLACKBOX,66)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theprocessFPGA_B1_merge_reg_aunroll_x : processFPGA_B1_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_c,
        in_data_in_1 => bubble_select_stall_entry_b,
        in_stall_in => SE_out_processFPGA_B1_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => processFPGA_B1_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => processFPGA_B1_merge_reg_aunroll_x_out_data_out_1,
        out_stall_out => processFPGA_B1_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => processFPGA_B1_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_processFPGA_B1_merge_reg_aunroll_x(BITJOIN,163)
    bubble_join_processFPGA_B1_merge_reg_aunroll_x_q <= processFPGA_B1_merge_reg_aunroll_x_out_data_out_1 & processFPGA_B1_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_processFPGA_B1_merge_reg_aunroll_x(BITSELECT,164)
    bubble_select_processFPGA_B1_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_processFPGA_B1_merge_reg_aunroll_x_q(0 downto 0));
    bubble_select_processFPGA_B1_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_processFPGA_B1_merge_reg_aunroll_x_q(32 downto 1));

    -- redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0(REG,153)
    redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_backEN = "1") THEN
                redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_q <= STD_LOGIC_VECTOR(bubble_select_processFPGA_B1_merge_reg_aunroll_x_c);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0(STALLENABLE,261)
    -- Valid signal propagation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_V0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_R_v_0;
    -- Stall signal propagation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_s_tv_0 <= SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_backStall and SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_R_v_0;
    -- Backward Enable generation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_backEN <= not (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_v_s_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_backEN and SE_out_processFPGA_B1_merge_reg_aunroll_x_V5;
    -- Backward Stall generation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_backStall <= not (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_v_s_0);
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_backEN = "0") THEN
                SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_R_v_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_R_v_0 and SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_s_tv_0;
            ELSE
                SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_R_v_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1(STALLREG,335)
    SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_r_valid <= (others => '0');
            SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_r_valid <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_backStall and (SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_r_valid or SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_i_valid);

            IF (SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_r_data0 <= STD_LOGIC_VECTOR(redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_i_valid <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_V0;
    -- Stall signal propagation
    SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_backStall <= SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_r_valid or not (SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_i_valid);

    -- Valid
    SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_V <= SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_r_valid WHEN SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_r_valid = "1" ELSE SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_i_valid;

    SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_D0 <= SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_r_data0 WHEN SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_r_valid = "1" ELSE redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_0_q;

    -- redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1(REG,154)
    redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_backEN = "1") THEN
                redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_q <= STD_LOGIC_VECTOR(SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2(REG,155)
    redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_backEN = "1") THEN
                redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_q <= STD_LOGIC_VECTOR(redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_q);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2(STALLENABLE,263)
    -- Valid signal propagation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_V0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_R_v_0;
    -- Stall signal propagation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_s_tv_0 <= SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_backStall and SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_R_v_0;
    -- Backward Enable generation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_backEN <= not (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_v_s_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_backEN and SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_1_V0;
    -- Backward Stall generation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_backStall <= not (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_v_s_0);
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_backEN = "0") THEN
                SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_R_v_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_R_v_0 and SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_s_tv_0;
            ELSE
                SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_R_v_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3(STALLREG,336)
    SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_r_valid <= (others => '0');
            SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_r_valid <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_backStall and (SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_r_valid or SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_i_valid);

            IF (SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_r_data0 <= STD_LOGIC_VECTOR(redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_i_valid <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_V0;
    -- Stall signal propagation
    SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_backStall <= SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_r_valid or not (SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_i_valid);

    -- Valid
    SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_V <= SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_r_valid WHEN SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_r_valid = "1" ELSE SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_i_valid;

    SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_D0 <= SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_r_data0 WHEN SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_r_valid = "1" ELSE redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_2_q;

    -- SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3(STALLENABLE,264)
    -- Valid signal propagation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_V0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_R_v_0;
    -- Stall signal propagation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_s_tv_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_backStall and SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_R_v_0;
    -- Backward Enable generation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_backEN <= not (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_v_s_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_backEN and SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_V;
    -- Backward Stall generation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_backStall <= not (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_backEN);
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_backEN = "0") THEN
                SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_R_v_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_R_v_0 and SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_s_tv_0;
            ELSE
                SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_R_v_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4(STALLENABLE,265)
    -- Valid signal propagation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_V0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_R_v_0;
    -- Stall signal propagation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_s_tv_0 <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_backStall and SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_R_v_0;
    -- Backward Enable generation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_backEN <= not (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_v_s_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_backEN and SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_V0;
    -- Backward Stall generation
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_backStall <= not (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_v_s_0);
    SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_backEN = "0") THEN
                SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_R_v_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_R_v_0 and SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_s_tv_0;
            ELSE
                SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_R_v_0 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- i_cmp51251_processfpga(LOGICAL,79)@5 + 1
    i_cmp51251_processfpga_qi <= "1" WHEN bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_f = c_i16_0gr_q ELSE "0";
    i_cmp51251_processfpga_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp51251_processfpga_qi, xout => i_cmp51251_processfpga_q, ena => SE_i_cmp51251_processfpga_backEN(0), clk => clock, aclr => resetn );

    -- i_ffwd_src_unnamed_processfpga10_processfpga(BLACKBOX,86)@6
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_9_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga10_processfpga : i_ffwd_src_unnamed_processfpga10_processfpga33
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_9_0 => i_cmp51251_processfpga_q,
        in_stall_in => SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_backStall,
        in_valid_in => SE_i_cmp51251_processfpga_V0,
        out_intel_reserved_ffwd_9_0 => i_ffwd_src_unnamed_processfpga10_processfpga_out_intel_reserved_ffwd_9_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga10_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga10_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i17_1gr(CONSTANT,71)
    c_i17_1gr_q <= "11111111111111111";

    -- c_i16_1gr(CONSTANT,70)
    c_i16_1gr_q <= "1111111111111111";

    -- i_unnamed_processfpga12(ADD,105)@5
    i_unnamed_processfpga12_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_f);
    i_unnamed_processfpga12_b <= STD_LOGIC_VECTOR("0" & c_i16_1gr_q);
    i_unnamed_processfpga12_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_processfpga12_a) + UNSIGNED(i_unnamed_processfpga12_b));
    i_unnamed_processfpga12_q <= i_unnamed_processfpga12_o(16 downto 0);

    -- bgTrunc_i_unnamed_processfpga12_sel_x(BITSELECT,2)@5
    bgTrunc_i_unnamed_processfpga12_sel_x_b <= i_unnamed_processfpga12_q(15 downto 0);

    -- i_unnamed_processfpga13_sel_x(BITSELECT,65)@5
    i_unnamed_processfpga13_sel_x_b <= std_logic_vector(resize(unsigned(bgTrunc_i_unnamed_processfpga12_sel_x_b(15 downto 0)), 17));

    -- i_unnamed_processfpga13_vt_select_15(BITSELECT,109)@5
    i_unnamed_processfpga13_vt_select_15_b <= i_unnamed_processfpga13_sel_x_b(15 downto 0);

    -- redist0_i_unnamed_processfpga13_vt_select_15_b_1_0(REG,152)
    redist0_i_unnamed_processfpga13_vt_select_15_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_unnamed_processfpga13_vt_select_15_b_1_0_q <= "0000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp51251_processfpga_backEN = "1") THEN
                redist0_i_unnamed_processfpga13_vt_select_15_b_1_0_q <= STD_LOGIC_VECTOR(i_unnamed_processfpga13_vt_select_15_b);
            END IF;
        END IF;
    END PROCESS;

    -- i_unnamed_processfpga13_vt_join(BITJOIN,108)@6
    i_unnamed_processfpga13_vt_join_q <= GND_q & redist0_i_unnamed_processfpga13_vt_select_15_b_1_0_q;

    -- i_unnamed_processfpga14(ADD,110)@6
    i_unnamed_processfpga14_a <= STD_LOGIC_VECTOR("0" & i_unnamed_processfpga13_vt_join_q);
    i_unnamed_processfpga14_b <= STD_LOGIC_VECTOR("0" & c_i17_1gr_q);
    i_unnamed_processfpga14_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_processfpga14_a) + UNSIGNED(i_unnamed_processfpga14_b));
    i_unnamed_processfpga14_q <= i_unnamed_processfpga14_o(17 downto 0);

    -- bgTrunc_i_unnamed_processfpga14_sel_x(BITSELECT,3)@6
    bgTrunc_i_unnamed_processfpga14_sel_x_b <= i_unnamed_processfpga14_q(16 downto 0);

    -- i_ffwd_src_unnamed_processfpga12_processfpga(BLACKBOX,88)@6
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_11_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga12_processfpga : i_ffwd_src_unnamed_processfpga12_processfpga37
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_11_0 => bgTrunc_i_unnamed_processfpga14_sel_x_b,
        in_stall_in => SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_backStall,
        in_valid_in => SE_i_cmp51251_processfpga_V1,
        out_intel_reserved_ffwd_11_0 => i_ffwd_src_unnamed_processfpga12_processfpga_out_intel_reserved_ffwd_11_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga12_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga12_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg(STALLFIFO,325)
    bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_valid_in <= SE_out_i_ffwd_src_unnamed_processfpga1_processfpga_V0;
    bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_stall_in <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_backStall;
    bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_valid_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_valid_in(0);
    bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_stall_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_stall_in(0);
    bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_valid_out(0) <= bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_stall_out(0) <= bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 6,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg(STALLFIFO,326)
    bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_valid_in <= SE_out_i_ffwd_src_unnamed_processfpga2_processfpga_V0;
    bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_stall_in <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_backStall;
    bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_valid_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_valid_in(0);
    bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_stall_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_stall_in(0);
    bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_valid_out(0) <= bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_stall_out(0) <= bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 5,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1(STALLENABLE,298)
    -- Valid signal propagation
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_V0 <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_backStall <= in_stall_in or not (SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and0 <= bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_reg_valid_out;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and1 <= bubble_out_i_ffwd_src_unnamed_processfpga1_processfpga_1_reg_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and0;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and2 <= i_ffwd_src_unnamed_processfpga12_processfpga_out_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and1;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and3 <= i_ffwd_src_unnamed_processfpga10_processfpga_out_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and2;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and4 <= SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_V0 and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and3;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and5 <= bubble_out_i_ffwd_src_unnamed_processfpga3_processfpga_1_reg_V0 and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and4;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and6 <= bubble_out_i_ffwd_src_unnamed_processfpga4_processfpga_1_reg_V0 and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and5;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and7 <= bubble_out_i_ffwd_src_unnamed_processfpga5_processfpga_1_reg_V0 and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and6;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and8 <= bubble_out_i_ffwd_src_unnamed_processfpga6_processfpga_1_reg_V0 and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and7;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and9 <= bubble_out_i_ffwd_src_unnamed_processfpga7_processfpga_1_reg_V0 and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and8;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and10 <= bubble_out_i_ffwd_src_unnamed_processfpga8_processfpga_1_reg_V0 and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and9;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and11 <= bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_V0 and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and10;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_wireValid <= bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_V0 and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_and11;

    -- bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg(STALLENABLE,333)
    -- Valid signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_V0 <= bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_R_v_0;
    -- Stall signal propagation
    bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_s_tv_0 <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_backStall and bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_R_v_0;
    -- Backward Enable generation
    bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_backEN <= not (bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_v_s_0 <= bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_backEN and SE_out_i_ffwd_src_unnamed_processfpga9_processfpga_V0;
    -- Backward Stall generation
    bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_backStall <= not (bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_v_s_0);
    bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_backEN = "0") THEN
                bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_R_v_0 and bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_s_tv_0;
            ELSE
                bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_ffwd_src_unnamed_processfpga9_processfpga(STALLENABLE,236)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_processfpga9_processfpga_V0 <= SE_out_i_ffwd_src_unnamed_processfpga9_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_processfpga9_processfpga_backStall <= bubble_out_i_ffwd_src_unnamed_processfpga9_processfpga_1_reg_backStall or not (SE_out_i_ffwd_src_unnamed_processfpga9_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_processfpga9_processfpga_wireValid <= i_ffwd_src_unnamed_processfpga9_processfpga_out_valid_out;

    -- bubble_join_i_load_unnamed_processfpga0_processfpga_vunroll_x(BITJOIN,160)
    bubble_join_i_load_unnamed_processfpga0_processfpga_vunroll_x_q <= i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_7 & i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_6 & i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_5 & i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_4 & i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_3 & i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_2 & i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_1 & i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_0;

    -- bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x(BITSELECT,161)
    bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_processfpga0_processfpga_vunroll_x_q(15 downto 0));
    bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_processfpga0_processfpga_vunroll_x_q(31 downto 16));
    bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_processfpga0_processfpga_vunroll_x_q(47 downto 32));
    bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_processfpga0_processfpga_vunroll_x_q(63 downto 48));
    bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_processfpga0_processfpga_vunroll_x_q(79 downto 64));
    bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_processfpga0_processfpga_vunroll_x_q(95 downto 80));
    bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_h <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_processfpga0_processfpga_vunroll_x_q(111 downto 96));
    bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_i <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_processfpga0_processfpga_vunroll_x_q(127 downto 112));

    -- i_ffwd_src_unnamed_processfpga9_processfpga(BLACKBOX,97)@5
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_8_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga9_processfpga : i_ffwd_src_unnamed_processfpga9_processfpga31
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_8_0 => bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_i,
        in_stall_in => SE_out_i_ffwd_src_unnamed_processfpga9_processfpga_backStall,
        in_valid_in => SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V7,
        out_intel_reserved_ffwd_8_0 => i_ffwd_src_unnamed_processfpga9_processfpga_out_intel_reserved_ffwd_8_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga9_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga9_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga8_processfpga(BLACKBOX,96)@5
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_7_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga8_processfpga : i_ffwd_src_unnamed_processfpga8_processfpga29
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_7_0 => bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_h,
        in_stall_in => SE_out_i_ffwd_src_unnamed_processfpga8_processfpga_backStall,
        in_valid_in => SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V6,
        out_intel_reserved_ffwd_7_0 => i_ffwd_src_unnamed_processfpga8_processfpga_out_intel_reserved_ffwd_7_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga8_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga8_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga7_processfpga(BLACKBOX,95)@5
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_6_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga7_processfpga : i_ffwd_src_unnamed_processfpga7_processfpga27
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_6_0 => bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_f,
        in_stall_in => SE_out_i_ffwd_src_unnamed_processfpga7_processfpga_backStall,
        in_valid_in => SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V5,
        out_intel_reserved_ffwd_6_0 => i_ffwd_src_unnamed_processfpga7_processfpga_out_intel_reserved_ffwd_6_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga7_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga7_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga6_processfpga(BLACKBOX,94)@5
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_5_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga6_processfpga : i_ffwd_src_unnamed_processfpga6_processfpga25
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_5_0 => bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_e,
        in_stall_in => SE_out_i_ffwd_src_unnamed_processfpga6_processfpga_backStall,
        in_valid_in => SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V4,
        out_intel_reserved_ffwd_5_0 => i_ffwd_src_unnamed_processfpga6_processfpga_out_intel_reserved_ffwd_5_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga6_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga6_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga5_processfpga(BLACKBOX,93)@5
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_4_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga5_processfpga : i_ffwd_src_unnamed_processfpga5_processfpga23
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_4_0 => bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_d,
        in_stall_in => SE_out_i_ffwd_src_unnamed_processfpga5_processfpga_backStall,
        in_valid_in => SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V3,
        out_intel_reserved_ffwd_4_0 => i_ffwd_src_unnamed_processfpga5_processfpga_out_intel_reserved_ffwd_4_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga5_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga5_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga4_processfpga(BLACKBOX,92)@5
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_3_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga4_processfpga : i_ffwd_src_unnamed_processfpga4_processfpga21
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_3_0 => bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_c,
        in_stall_in => SE_out_i_ffwd_src_unnamed_processfpga4_processfpga_backStall,
        in_valid_in => SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V2,
        out_intel_reserved_ffwd_3_0 => i_ffwd_src_unnamed_processfpga4_processfpga_out_intel_reserved_ffwd_3_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga4_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga4_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga3_processfpga(BLACKBOX,91)@5
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_2_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga3_processfpga : i_ffwd_src_unnamed_processfpga3_processfpga19
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_2_0 => bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_b,
        in_stall_in => SE_out_i_ffwd_src_unnamed_processfpga3_processfpga_backStall,
        in_valid_in => SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V1,
        out_intel_reserved_ffwd_2_0 => i_ffwd_src_unnamed_processfpga3_processfpga_out_intel_reserved_ffwd_2_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga3_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga3_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_i_cmp51251_processfpga(STALLENABLE,206)
    -- Valid signal propagation
    SE_i_cmp51251_processfpga_V0 <= SE_i_cmp51251_processfpga_R_v_0;
    SE_i_cmp51251_processfpga_V1 <= SE_i_cmp51251_processfpga_R_v_1;
    -- Stall signal propagation
    SE_i_cmp51251_processfpga_s_tv_0 <= i_ffwd_src_unnamed_processfpga10_processfpga_out_stall_out and SE_i_cmp51251_processfpga_R_v_0;
    SE_i_cmp51251_processfpga_s_tv_1 <= i_ffwd_src_unnamed_processfpga12_processfpga_out_stall_out and SE_i_cmp51251_processfpga_R_v_1;
    -- Backward Enable generation
    SE_i_cmp51251_processfpga_or0 <= SE_i_cmp51251_processfpga_s_tv_0;
    SE_i_cmp51251_processfpga_backEN <= not (SE_i_cmp51251_processfpga_s_tv_1 or SE_i_cmp51251_processfpga_or0);
    -- Determine whether to write valid data into the first register stage
    SE_i_cmp51251_processfpga_v_s_0 <= SE_i_cmp51251_processfpga_backEN and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V0;
    -- Backward Stall generation
    SE_i_cmp51251_processfpga_backStall <= not (SE_i_cmp51251_processfpga_v_s_0);
    SE_i_cmp51251_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_cmp51251_processfpga_R_v_0 <= (others => '0');
            SE_i_cmp51251_processfpga_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp51251_processfpga_backEN = "0") THEN
                SE_i_cmp51251_processfpga_R_v_0 <= SE_i_cmp51251_processfpga_R_v_0 and SE_i_cmp51251_processfpga_s_tv_0;
            ELSE
                SE_i_cmp51251_processfpga_R_v_0 <= SE_i_cmp51251_processfpga_v_s_0;
            END IF;

            IF (SE_i_cmp51251_processfpga_backEN = "0") THEN
                SE_i_cmp51251_processfpga_R_v_1 <= SE_i_cmp51251_processfpga_R_v_1 and SE_i_cmp51251_processfpga_s_tv_1;
            ELSE
                SE_i_cmp51251_processfpga_R_v_1 <= SE_i_cmp51251_processfpga_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0(REG,158)
    redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_backEN = "1") THEN
                redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_i_syncbuf_netst_sync_buffer_processfpga(BITJOIN,187)
    bubble_join_i_syncbuf_netst_sync_buffer_processfpga_q <= i_syncbuf_netst_sync_buffer_processfpga_out_buffer_out;

    -- bubble_select_i_syncbuf_netst_sync_buffer_processfpga(BITSELECT,188)
    bubble_select_i_syncbuf_netst_sync_buffer_processfpga_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_netst_sync_buffer_processfpga_q(63 downto 0));

    -- i_arrayidx_processfpga_processfpga8_add_x(ADD,58)@3
    i_arrayidx_processfpga_processfpga8_add_x_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_syncbuf_netst_sync_buffer_processfpga_b);
    i_arrayidx_processfpga_processfpga8_add_x_b <= STD_LOGIC_VECTOR("0" & redist2_i_arrayidx_processfpga_processfpga8_trunc_sel_x_b_1_0_q);
    i_arrayidx_processfpga_processfpga8_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_processfpga_processfpga8_add_x_a) + UNSIGNED(i_arrayidx_processfpga_processfpga8_add_x_b));
    i_arrayidx_processfpga_processfpga8_add_x_q <= i_arrayidx_processfpga_processfpga8_add_x_o(64 downto 0);

    -- i_arrayidx_processfpga_processfpga8_dupName_0_trunc_sel_x(BITSELECT,52)@3
    i_arrayidx_processfpga_processfpga8_dupName_0_trunc_sel_x_b <= i_arrayidx_processfpga_processfpga8_add_x_q(63 downto 0);

    -- i_load_unnamed_processfpga0_processfpga_vunroll_x(BLACKBOX,64)@3
    -- in in_i_stall@20000000
    -- out out_o_readdata_0@5
    -- out out_o_readdata_1@5
    -- out out_o_readdata_2@5
    -- out out_o_readdata_3@5
    -- out out_o_readdata_4@5
    -- out out_o_readdata_5@5
    -- out out_o_readdata_6@5
    -- out out_o_readdata_7@5
    -- out out_o_stall@20000000
    -- out out_o_valid@5
    -- out out_unnamed_processFPGA0_avm_address@20000000
    -- out out_unnamed_processFPGA0_avm_burstcount@20000000
    -- out out_unnamed_processFPGA0_avm_byteenable@20000000
    -- out out_unnamed_processFPGA0_avm_enable@20000000
    -- out out_unnamed_processFPGA0_avm_read@20000000
    -- out out_unnamed_processFPGA0_avm_write@20000000
    -- out out_unnamed_processFPGA0_avm_writedata@20000000
    thei_load_unnamed_processfpga0_processfpga_vunroll_x : i_load_unnamed_processfpga0_processfpga9
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx_processfpga_processfpga8_dupName_0_trunc_sel_x_b,
        in_i_predicate => GND_q,
        in_i_stall => SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_backStall,
        in_i_valid => SE_out_i_syncbuf_netst_sync_buffer_processfpga_V0,
        in_unnamed_processFPGA0_avm_readdata => in_unnamed_processFPGA0_avm_readdata,
        in_unnamed_processFPGA0_avm_readdatavalid => in_unnamed_processFPGA0_avm_readdatavalid,
        in_unnamed_processFPGA0_avm_waitrequest => in_unnamed_processFPGA0_avm_waitrequest,
        in_unnamed_processFPGA0_avm_writeack => in_unnamed_processFPGA0_avm_writeack,
        out_o_readdata_0 => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_0,
        out_o_readdata_1 => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_1,
        out_o_readdata_2 => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_2,
        out_o_readdata_3 => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_3,
        out_o_readdata_4 => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_4,
        out_o_readdata_5 => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_5,
        out_o_readdata_6 => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_6,
        out_o_readdata_7 => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_readdata_7,
        out_o_stall => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_stall,
        out_o_valid => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_valid,
        out_unnamed_processFPGA0_avm_address => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_address,
        out_unnamed_processFPGA0_avm_burstcount => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_burstcount,
        out_unnamed_processFPGA0_avm_byteenable => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_byteenable,
        out_unnamed_processFPGA0_avm_enable => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_enable,
        out_unnamed_processFPGA0_avm_read => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_read,
        out_unnamed_processFPGA0_avm_write => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_write,
        out_unnamed_processFPGA0_avm_writedata => i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x(STALLENABLE,202)
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg0 <= (others => '0');
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg1 <= (others => '0');
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg2 <= (others => '0');
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg3 <= (others => '0');
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg4 <= (others => '0');
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg5 <= (others => '0');
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg6 <= (others => '0');
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg7 <= (others => '0');
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg8 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg0 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg1 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg1;
            -- Succesor 2
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg2 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg2;
            -- Succesor 3
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg3 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg3;
            -- Succesor 4
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg4 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg4;
            -- Succesor 5
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg5 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg5;
            -- Succesor 6
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg6 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg6;
            -- Succesor 7
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg7 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg7;
            -- Succesor 8
            SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg8 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg8;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed0 <= (not (SE_i_cmp51251_processfpga_backStall) and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid) or SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg0;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed1 <= (not (i_ffwd_src_unnamed_processfpga3_processfpga_out_stall_out) and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid) or SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg1;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed2 <= (not (i_ffwd_src_unnamed_processfpga4_processfpga_out_stall_out) and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid) or SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg2;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed3 <= (not (i_ffwd_src_unnamed_processfpga5_processfpga_out_stall_out) and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid) or SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg3;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed4 <= (not (i_ffwd_src_unnamed_processfpga6_processfpga_out_stall_out) and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid) or SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg4;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed5 <= (not (i_ffwd_src_unnamed_processfpga7_processfpga_out_stall_out) and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid) or SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg5;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed6 <= (not (i_ffwd_src_unnamed_processfpga8_processfpga_out_stall_out) and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid) or SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg6;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed7 <= (not (i_ffwd_src_unnamed_processfpga9_processfpga_out_stall_out) and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid) or SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg7;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed8 <= (not (i_ffwd_src_unnamed_processfpga11_processfpga_out_stall_out) and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid) or SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg8;
    -- Consuming
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_StallValid <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_backStall and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg0 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_StallValid and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed0;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg1 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_StallValid and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed1;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg2 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_StallValid and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed2;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg3 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_StallValid and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed3;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg4 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_StallValid and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed4;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg5 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_StallValid and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed5;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg6 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_StallValid and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed6;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg7 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_StallValid and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed7;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_toReg8 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_StallValid and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed8;
    -- Backward Stall generation
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or0 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed0;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or1 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed1 and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or0;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or2 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed2 and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or1;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or3 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed3 and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or2;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or4 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed4 and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or3;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or5 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed5 and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or4;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or6 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed6 and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or5;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or7 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed7 and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or6;
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireStall <= not (SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_consumed8 and SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_or7);
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_backStall <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V0 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid and not (SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg0);
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V1 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid and not (SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg1);
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V2 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid and not (SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg2);
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V3 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid and not (SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg3);
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V4 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid and not (SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg4);
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V5 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid and not (SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg5);
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V6 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid and not (SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg6);
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V7 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid and not (SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg7);
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V8 <= SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid and not (SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_fromReg8);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_wireValid <= i_load_unnamed_processfpga0_processfpga_vunroll_x_out_o_valid;

    -- SE_out_i_ffwd_src_unnamed_processfpga11_processfpga(STALLENABLE,216)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_processfpga11_processfpga_V0 <= SE_out_i_ffwd_src_unnamed_processfpga11_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_processfpga11_processfpga_backStall <= bubble_out_i_ffwd_src_unnamed_processfpga11_processfpga_1_reg_backStall or not (SE_out_i_ffwd_src_unnamed_processfpga11_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_processfpga11_processfpga_wireValid <= i_ffwd_src_unnamed_processfpga11_processfpga_out_valid_out;

    -- i_conv8_processfpga_sel_x(BITSELECT,62)@5
    i_conv8_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(bubble_select_i_load_unnamed_processfpga0_processfpga_vunroll_x_g(15 downto 0)), 32));

    -- i_conv8_processfpga_vt_select_15(BITSELECT,83)@5
    i_conv8_processfpga_vt_select_15_b <= i_conv8_processfpga_sel_x_b(15 downto 0);

    -- i_conv8_processfpga_vt_join(BITJOIN,82)@5
    i_conv8_processfpga_vt_join_q <= c_i16_0gr_q & i_conv8_processfpga_vt_select_15_b;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_ffwd_src_unnamed_processfpga11_processfpga(BLACKBOX,87)@5
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_10_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga11_processfpga : i_ffwd_src_unnamed_processfpga11_processfpga35
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_10_0 => i_conv8_processfpga_vt_join_q,
        in_stall_in => SE_out_i_ffwd_src_unnamed_processfpga11_processfpga_backStall,
        in_valid_in => SE_out_i_load_unnamed_processfpga0_processfpga_vunroll_x_V8,
        out_intel_reserved_ffwd_10_0 => i_ffwd_src_unnamed_processfpga11_processfpga_out_intel_reserved_ffwd_10_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga11_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga11_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_regfree_osync_x(GPOUT,7)
    out_intel_reserved_ffwd_10_0 <= i_ffwd_src_unnamed_processfpga11_processfpga_out_intel_reserved_ffwd_10_0;

    -- redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3(REG,156)
    redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_backEN = "1") THEN
                redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_q <= STD_LOGIC_VECTOR(SR_SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4(REG,157)
    redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_backEN = "1") THEN
                redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_q <= STD_LOGIC_VECTOR(redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_3_q);
            END IF;
        END IF;
    END PROCESS;

    -- dupName_0_sync_out_x(GPOUT,9)@6
    out_acl_hw_wg_id790 <= redist1_processFPGA_B1_merge_reg_aunroll_x_out_data_out_1_5_4_q;
    out_valid_out <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga2_processfpga_1_V0;

    -- dupName_1_regfree_osync_x(GPOUT,13)
    out_intel_reserved_ffwd_11_0 <= i_ffwd_src_unnamed_processfpga12_processfpga_out_intel_reserved_ffwd_11_0;

    -- dupName_2_regfree_osync_x(GPOUT,17)
    out_intel_reserved_ffwd_1_0 <= i_ffwd_src_unnamed_processfpga2_processfpga_out_intel_reserved_ffwd_1_0;

    -- dupName_3_regfree_osync_x(GPOUT,20)
    out_intel_reserved_ffwd_2_0 <= i_ffwd_src_unnamed_processfpga3_processfpga_out_intel_reserved_ffwd_2_0;

    -- dupName_4_regfree_osync_x(GPOUT,23)
    out_intel_reserved_ffwd_3_0 <= i_ffwd_src_unnamed_processfpga4_processfpga_out_intel_reserved_ffwd_3_0;

    -- dupName_5_regfree_osync_x(GPOUT,26)
    out_intel_reserved_ffwd_4_0 <= i_ffwd_src_unnamed_processfpga5_processfpga_out_intel_reserved_ffwd_4_0;

    -- dupName_6_regfree_osync_x(GPOUT,29)
    out_intel_reserved_ffwd_5_0 <= i_ffwd_src_unnamed_processfpga6_processfpga_out_intel_reserved_ffwd_5_0;

    -- dupName_7_regfree_osync_x(GPOUT,32)
    out_intel_reserved_ffwd_6_0 <= i_ffwd_src_unnamed_processfpga7_processfpga_out_intel_reserved_ffwd_6_0;

    -- dupName_8_regfree_osync_x(GPOUT,35)
    out_intel_reserved_ffwd_7_0 <= i_ffwd_src_unnamed_processfpga8_processfpga_out_intel_reserved_ffwd_7_0;

    -- dupName_9_regfree_osync_x(GPOUT,38)
    out_intel_reserved_ffwd_8_0 <= i_ffwd_src_unnamed_processfpga9_processfpga_out_intel_reserved_ffwd_8_0;

    -- dupName_10_regfree_osync_x(GPOUT,41)
    out_intel_reserved_ffwd_9_0 <= i_ffwd_src_unnamed_processfpga10_processfpga_out_intel_reserved_ffwd_9_0;

    -- ext_sig_sync_out(GPOUT,78)
    out_unnamed_processFPGA0_avm_address <= i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_address;
    out_unnamed_processFPGA0_avm_enable <= i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_enable;
    out_unnamed_processFPGA0_avm_read <= i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_read;
    out_unnamed_processFPGA0_avm_write <= i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_write;
    out_unnamed_processFPGA0_avm_writedata <= i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_writedata;
    out_unnamed_processFPGA0_avm_byteenable <= i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_byteenable;
    out_unnamed_processFPGA0_avm_burstcount <= i_load_unnamed_processfpga0_processfpga_vunroll_x_out_unnamed_processFPGA0_avm_burstcount;

    -- regfree_osync(GPOUT,115)
    out_intel_reserved_ffwd_0_0 <= i_ffwd_src_unnamed_processfpga1_processfpga_out_intel_reserved_ffwd_0_0;

    -- sync_out(GPOUT,120)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
