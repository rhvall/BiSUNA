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

-- VHDL created from bb_processFPGA_B18_stall_region
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

entity bb_processFPGA_B18_stall_region is
    port (
        in_c0_exit9159_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit9159_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit9159_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_44_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_61_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_c0_exe2917 : out std_logic_vector(31 downto 0);  -- ufix32
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_51_0 : in std_logic_vector(63 downto 0);  -- ufix64
        out_intel_reserved_ffwd_62_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_52_0 : in std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_63_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_53_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_64_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_54_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_65_0 : out std_logic_vector(32 downto 0);  -- ufix33
        in_intel_reserved_ffwd_56_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_58_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_59_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_localInput : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_processFPGA116_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_unnamed_processFPGA116_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA116_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA116_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA116_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA116_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA116_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA116_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA116_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_unnamed_processFPGA116_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_unnamed_processFPGA116_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_60_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_processFPGA_B18_stall_region;

architecture normal of bb_processFPGA_B18_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga is
        port (
            in_unnamed_processFPGA112_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_51_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_52_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_54_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_56_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_59_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_localInput : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_unnamed_processFPGA116_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_unnamed_processFPGA116_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA116_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA116_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit919_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_61_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA116_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA116_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA116_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_unnamed_processFPGA116_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA116_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA116_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA116_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp_i8661284420_processfpga886 is
        port (
            in_intel_reserved_ffwd_44_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_44_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_processfpga_14444_processfpga860 is
        port (
            in_intel_reserved_ffwd_58_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_58_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_tobool_i873439_processfpga884 is
        port (
            in_intel_reserved_ffwd_53_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_53_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga111_processfpga858 is
        port (
            in_intel_reserved_ffwd_56_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_56_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga119_processfpga888 is
        port (
            in_intel_reserved_ffwd_54_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_54_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga120_processfpga893 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_60_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_60_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga121_processfpga899 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_62_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_62_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga122_processfpga901 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_63_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_63_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga123_processfpga903 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_64_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_64_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga124_processfpga908 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_65_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_65_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
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
    signal bgTrunc_i_unnamed_processfpga891_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_unnamed_processfpga905_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_unnamed_processfpga907_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal dupName_0_c_i32_1gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_intel_reserved_ffwd_61_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_unnamed_processfpga906_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cmp91_i_i10731282_not_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp91_i_i10731282_processfpga_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp91_i_i10731282_processfpga_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp91_i_i10731282_processfpga_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp91_i_i10731282_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp_i8661284420_processfpga_out_dest_data_out_44_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp_i8661284420_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp_i8661284420_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_reduction_processfpga_14444_processfpga_out_dest_data_out_58_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_processfpga_14444_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_reduction_processfpga_14444_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_tobool_i873439_processfpga_out_dest_data_out_53_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_tobool_i873439_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_tobool_i873439_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga111_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga111_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga119_processfpga_out_dest_data_out_54_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga119_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga119_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga120_processfpga_out_intel_reserved_ffwd_60_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_processfpga120_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga120_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga121_processfpga_out_intel_reserved_ffwd_62_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga121_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga121_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga122_processfpga_out_intel_reserved_ffwd_63_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga122_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga122_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga123_processfpga_out_intel_reserved_ffwd_64_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga123_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga123_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga124_processfpga_out_intel_reserved_ffwd_65_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_ffwd_src_unnamed_processfpga124_processfpga_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga124_processfpga_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision1464_xor_or_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_select1275_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_select1275_processfpga_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_smax196_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_smax196_processfpga_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_tobool_i873_not_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga891_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga891_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga891_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga891_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga892_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_processfpga895_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga895_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga896_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_processfpga896_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_processfpga896_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_processfpga896_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga898_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga905_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga905_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga905_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga905_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga906_vt_join_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_processfpga906_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_processfpga907_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_processfpga907_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_processfpga907_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_processfpga907_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist0_stall_entry_aunroll_o6_9_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_aunroll_o6_9_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist0_stall_entry_aunroll_o6_9_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_aunroll_o6_9_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist0_stall_entry_aunroll_o6_9_fifo_data_in : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_stall_entry_aunroll_o6_9_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_aunroll_o6_9_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist0_stall_entry_aunroll_o6_9_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stall_entry_aunroll_o6_9_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist0_stall_entry_aunroll_o6_9_fifo_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_i_unnamed_processfpga895_q_9_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_unnamed_processfpga895_q_9_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist2_i_unnamed_processfpga895_q_9_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_unnamed_processfpga895_q_9_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist2_i_unnamed_processfpga895_q_9_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_unnamed_processfpga895_q_9_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_unnamed_processfpga895_q_9_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist2_i_unnamed_processfpga895_q_9_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_unnamed_processfpga895_q_9_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist2_i_unnamed_processfpga895_q_9_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_unnamed_processfpga892_q_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_select1275_processfpga_q_2_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_cmp91_i_i10731282_processfpga_c_2_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_bgTrunc_i_unnamed_processfpga891_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_ffwd_dst_cmp_i8661284420_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_ffwd_dst_cmp_i8661284420_processfpga_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_ffwd_dst_reduction_processfpga_14444_processfpga_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_ffwd_dst_reduction_processfpga_14444_processfpga_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_ffwd_dst_tobool_i873439_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_ffwd_dst_tobool_i873439_processfpga_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_ffwd_dst_unnamed_processfpga111_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_ffwd_dst_unnamed_processfpga111_processfpga_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_ffwd_dst_unnamed_processfpga119_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_ffwd_dst_unnamed_processfpga119_processfpga_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_stall_entry_aunroll_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_aunroll_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist0_stall_entry_aunroll_o6_9_fifo_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_redist0_stall_entry_aunroll_o6_9_fifo_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist2_i_unnamed_processfpga895_q_9_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist2_i_unnamed_processfpga895_q_9_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i10731282_processfpga_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i10731282_processfpga_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i10731282_processfpga_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i10731282_processfpga_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i10731282_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp91_i_i10731282_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_cmp_i8661284420_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_cmp_i8661284420_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_cmp_i8661284420_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_reduction_processfpga_14444_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_reduction_processfpga_14444_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_reduction_processfpga_14444_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_tobool_i873439_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_tobool_i873439_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_tobool_i873439_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga111_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga111_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga111_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga119_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga119_processfpga_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga119_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_dst_unnamed_processfpga119_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga120_processfpga_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga120_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_processfpga120_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select1275_processfpga_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select1275_processfpga_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select1275_processfpga_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select1275_processfpga_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select1275_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_select1275_processfpga_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga895_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga895_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga895_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga895_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga895_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga895_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga895_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga896_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga896_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga896_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga896_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga896_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga896_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga896_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga896_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga896_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga896_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga898_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga898_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_unnamed_processfpga898_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_toReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_fromReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_consumed6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_or5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_V6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_s_tv_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_aunroll_2_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_aunroll_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_aunroll_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_aunroll_5_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_aunroll_5_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_stall_entry_aunroll_5_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_aunroll_2_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_aunroll_2_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_aunroll_2_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_aunroll_2_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_aunroll_2_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_aunroll_2_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_aunroll_2_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_aunroll_2_reg_stall_out_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_aunroll_5_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_aunroll_5_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_aunroll_5_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_aunroll_5_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_aunroll_5_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_aunroll_5_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_stall_entry_aunroll_5_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_stall_entry_aunroll_5_reg_stall_out_bitsignaltemp : std_logic;
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_D0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_D0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_select1275_processfpga_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_select1275_processfpga_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_select1275_processfpga_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_select1275_processfpga_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_select1275_processfpga_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_select1275_processfpga_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_select1275_processfpga_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_select1275_processfpga_D0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_select1275_processfpga_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_unnamed_processfpga896_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_unnamed_processfpga896_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_unnamed_processfpga896_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_unnamed_processfpga896_r_data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_unnamed_processfpga896_r_data2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_unnamed_processfpga896_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_unnamed_processfpga896_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_unnamed_processfpga896_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_unnamed_processfpga896_D1 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_i_unnamed_processfpga896_D2 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_data0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_data1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_D0 : STD_LOGIC_VECTOR (31 downto 0);
    signal SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_D1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_unnamed_processfpga898_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_unnamed_processfpga898_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_unnamed_processfpga898_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_unnamed_processfpga898_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_unnamed_processfpga898_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_unnamed_processfpga898_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_i_unnamed_processfpga898_D0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- bubble_join_stall_entry_aunroll(BITJOIN,140)
    bubble_join_stall_entry_aunroll_q <= in_c0_exit9159_2;

    -- bubble_select_stall_entry_aunroll(BITSELECT,141)
    bubble_select_stall_entry_aunroll_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_aunroll_q(31 downto 0));

    -- redist0_stall_entry_aunroll_o6_9_fifo(STALLFIFO,106)
    redist0_stall_entry_aunroll_o6_9_fifo_valid_in <= SE_stall_entry_aunroll_V6;
    redist0_stall_entry_aunroll_o6_9_fifo_stall_in <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_backStall;
    redist0_stall_entry_aunroll_o6_9_fifo_data_in <= bubble_select_stall_entry_aunroll_b;
    redist0_stall_entry_aunroll_o6_9_fifo_valid_in_bitsignaltemp <= redist0_stall_entry_aunroll_o6_9_fifo_valid_in(0);
    redist0_stall_entry_aunroll_o6_9_fifo_stall_in_bitsignaltemp <= redist0_stall_entry_aunroll_o6_9_fifo_stall_in(0);
    redist0_stall_entry_aunroll_o6_9_fifo_valid_out(0) <= redist0_stall_entry_aunroll_o6_9_fifo_valid_out_bitsignaltemp;
    redist0_stall_entry_aunroll_o6_9_fifo_stall_out(0) <= redist0_stall_entry_aunroll_o6_9_fifo_stall_out_bitsignaltemp;
    theredist0_stall_entry_aunroll_o6_9_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 10,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 32,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist0_stall_entry_aunroll_o6_9_fifo_valid_in_bitsignaltemp,
        stall_in => redist0_stall_entry_aunroll_o6_9_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_stall_entry_aunroll_b,
        valid_out => redist0_stall_entry_aunroll_o6_9_fifo_valid_out_bitsignaltemp,
        stall_out => redist0_stall_entry_aunroll_o6_9_fifo_stall_out_bitsignaltemp,
        data_out => redist0_stall_entry_aunroll_o6_9_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg(STALLFIFO,267)
    bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_valid_in <= SE_out_i_ffwd_src_unnamed_processfpga120_processfpga_V0;
    bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_stall_in <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_backStall;
    bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_valid_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_valid_in(0);
    bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_stall_in_bitsignaltemp <= bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_stall_in(0);
    bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_valid_out(0) <= bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_valid_out_bitsignaltemp;
    bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_stall_out(0) <= bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_stall_out_bitsignaltemp;
    thebubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 3,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_ffwd_src_unnamed_processfpga120_processfpga(STALLENABLE,173)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_processfpga120_processfpga_V0 <= SE_out_i_ffwd_src_unnamed_processfpga120_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_processfpga120_processfpga_backStall <= bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_stall_out or not (SE_out_i_ffwd_src_unnamed_processfpga120_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_processfpga120_processfpga_wireValid <= i_ffwd_src_unnamed_processfpga120_processfpga_out_valid_out;

    -- i_ffwd_src_unnamed_processfpga120_processfpga(BLACKBOX,62)@7
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_60_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga120_processfpga : i_ffwd_src_unnamed_processfpga120_processfpga893
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_60_0 => redist4_i_select1275_processfpga_q_2_0_q,
        in_stall_in => SE_out_i_ffwd_src_unnamed_processfpga120_processfpga_backStall,
        in_valid_in => SE_i_unnamed_processfpga896_V1,
        out_intel_reserved_ffwd_60_0 => i_ffwd_src_unnamed_processfpga120_processfpga_out_intel_reserved_ffwd_60_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga120_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga120_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_i_unnamed_processfpga896(STALLENABLE,189)
    -- Valid signal propagation
    SE_i_unnamed_processfpga896_V0 <= SE_i_unnamed_processfpga896_R_v_0;
    SE_i_unnamed_processfpga896_V1 <= SE_i_unnamed_processfpga896_R_v_1;
    -- Stall signal propagation
    SE_i_unnamed_processfpga896_s_tv_0 <= SE_i_cmp91_i_i10731282_processfpga_backStall and SE_i_unnamed_processfpga896_R_v_0;
    SE_i_unnamed_processfpga896_s_tv_1 <= i_ffwd_src_unnamed_processfpga120_processfpga_out_stall_out and SE_i_unnamed_processfpga896_R_v_1;
    -- Backward Enable generation
    SE_i_unnamed_processfpga896_or0 <= SE_i_unnamed_processfpga896_s_tv_0;
    SE_i_unnamed_processfpga896_backEN <= not (SE_i_unnamed_processfpga896_s_tv_1 or SE_i_unnamed_processfpga896_or0);
    -- Determine whether to write valid data into the first register stage
    SE_i_unnamed_processfpga896_v_s_0 <= SE_i_unnamed_processfpga896_backEN and SR_SE_i_unnamed_processfpga896_V;
    -- Backward Stall generation
    SE_i_unnamed_processfpga896_backStall <= not (SE_i_unnamed_processfpga896_backEN);
    SE_i_unnamed_processfpga896_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_unnamed_processfpga896_R_v_0 <= (others => '0');
            SE_i_unnamed_processfpga896_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_unnamed_processfpga896_backEN = "0") THEN
                SE_i_unnamed_processfpga896_R_v_0 <= SE_i_unnamed_processfpga896_R_v_0 and SE_i_unnamed_processfpga896_s_tv_0;
            ELSE
                SE_i_unnamed_processfpga896_R_v_0 <= SE_i_unnamed_processfpga896_v_s_0;
            END IF;

            IF (SE_i_unnamed_processfpga896_backEN = "0") THEN
                SE_i_unnamed_processfpga896_R_v_1 <= SE_i_unnamed_processfpga896_R_v_1 and SE_i_unnamed_processfpga896_s_tv_1;
            ELSE
                SE_i_unnamed_processfpga896_R_v_1 <= SE_i_unnamed_processfpga896_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_bubble_out_stall_entry_aunroll_2(STALLENABLE,250)
    -- Valid signal propagation
    SE_out_bubble_out_stall_entry_aunroll_2_V0 <= SE_out_bubble_out_stall_entry_aunroll_2_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_stall_entry_aunroll_2_backStall <= i_ffwd_dst_reduction_processfpga_14444_processfpga_out_stall_out or not (SE_out_bubble_out_stall_entry_aunroll_2_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_stall_entry_aunroll_2_wireValid <= bubble_out_stall_entry_aunroll_2_reg_valid_out;

    -- i_ffwd_dst_reduction_processfpga_14444_processfpga(BLACKBOX,58)@5
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_reduction_processfpga_14444_processfpga : i_ffwd_dst_reduction_processfpga_14444_processfpga860
    PORT MAP (
        in_intel_reserved_ffwd_58_0 => in_intel_reserved_ffwd_58_0,
        in_stall_in => SE_out_i_ffwd_dst_reduction_processfpga_14444_processfpga_backStall,
        in_valid_in => SE_out_bubble_out_stall_entry_aunroll_2_V0,
        out_dest_data_out_58_0 => i_ffwd_dst_reduction_processfpga_14444_processfpga_out_dest_data_out_58_0,
        out_stall_out => i_ffwd_dst_reduction_processfpga_14444_processfpga_out_stall_out,
        out_valid_out => i_ffwd_dst_reduction_processfpga_14444_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_ffwd_dst_reduction_processfpga_14444_processfpga(BITJOIN,123)
    bubble_join_i_ffwd_dst_reduction_processfpga_14444_processfpga_q <= i_ffwd_dst_reduction_processfpga_14444_processfpga_out_dest_data_out_58_0;

    -- bubble_select_i_ffwd_dst_reduction_processfpga_14444_processfpga(BITSELECT,124)
    bubble_select_i_ffwd_dst_reduction_processfpga_14444_processfpga_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_reduction_processfpga_14444_processfpga_q(31 downto 0));

    -- SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3(STALLENABLE,207)
    -- Valid signal propagation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_V0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_R_v_0;
    -- Stall signal propagation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_s_tv_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_backStall and SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_R_v_0;
    -- Backward Enable generation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_backEN <= not (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_v_s_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_backEN and SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_V;
    -- Backward Stall generation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_backStall <= not (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_backEN);
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_backEN = "0") THEN
                SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_R_v_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_R_v_0 and SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_s_tv_0;
            ELSE
                SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_R_v_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1(STALLENABLE,205)
    -- Valid signal propagation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_V0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_R_v_0;
    -- Stall signal propagation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_s_tv_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_backStall and SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_R_v_0;
    -- Backward Enable generation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_backEN <= not (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_v_s_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_backEN and SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_V;
    -- Backward Stall generation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_backStall <= not (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_backEN);
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_backEN = "0") THEN
                SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_R_v_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_R_v_0 and SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_s_tv_0;
            ELSE
                SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_R_v_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_join_i_ffwd_dst_unnamed_processfpga111_processfpga(BITJOIN,129)
    bubble_join_i_ffwd_dst_unnamed_processfpga111_processfpga_q <= i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0;

    -- bubble_select_i_ffwd_dst_unnamed_processfpga111_processfpga(BITSELECT,130)
    bubble_select_i_ffwd_dst_unnamed_processfpga111_processfpga_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_unnamed_processfpga111_processfpga_q(0 downto 0));

    -- redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0(REG,111)
    redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_backEN = "1") THEN
                redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_q <= STD_LOGIC_VECTOR(bubble_select_i_ffwd_dst_unnamed_processfpga111_processfpga_b);
            END IF;
        END IF;
    END PROCESS;

    -- SE_out_i_ffwd_dst_unnamed_processfpga111_processfpga(STALLENABLE,169)
    -- Valid signal propagation
    SE_out_i_ffwd_dst_unnamed_processfpga111_processfpga_V0 <= SE_out_i_ffwd_dst_unnamed_processfpga111_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_dst_unnamed_processfpga111_processfpga_backStall <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_backStall or not (SE_out_i_ffwd_dst_unnamed_processfpga111_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_dst_unnamed_processfpga111_processfpga_wireValid <= i_ffwd_dst_unnamed_processfpga111_processfpga_out_valid_out;

    -- SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0(STALLENABLE,204)
    -- Valid signal propagation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_V0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_R_v_0;
    -- Stall signal propagation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_s_tv_0 <= SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_backStall and SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_R_v_0;
    -- Backward Enable generation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_backEN <= not (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_v_s_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_backEN and SE_out_i_ffwd_dst_unnamed_processfpga111_processfpga_V0;
    -- Backward Stall generation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_backStall <= not (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_v_s_0);
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_backEN = "0") THEN
                SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_R_v_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_R_v_0 and SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_s_tv_0;
            ELSE
                SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_R_v_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1(STALLREG,270)
    SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_r_valid <= (others => '0');
            SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_r_valid <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_backStall and (SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_r_valid or SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_i_valid);

            IF (SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_r_data0 <= STD_LOGIC_VECTOR(redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_i_valid <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_V0;
    -- Stall signal propagation
    SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_backStall <= SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_r_valid or not (SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_i_valid);

    -- Valid
    SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_V <= SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_r_valid WHEN SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_r_valid = "1" ELSE SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_i_valid;

    SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_D0 <= SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_r_data0 WHEN SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_r_valid = "1" ELSE redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_0_q;

    -- redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1(REG,112)
    redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_backEN = "1") THEN
                redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_q <= STD_LOGIC_VECTOR(SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2(REG,113)
    redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_backEN = "1") THEN
                redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_q <= STD_LOGIC_VECTOR(redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_q);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2(STALLENABLE,206)
    -- Valid signal propagation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_V0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_R_v_0;
    -- Stall signal propagation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_s_tv_0 <= SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_backStall and SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_R_v_0;
    -- Backward Enable generation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_backEN <= not (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_v_s_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_backEN and SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_1_V0;
    -- Backward Stall generation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_backStall <= not (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_v_s_0);
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_backEN = "0") THEN
                SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_R_v_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_R_v_0 and SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_s_tv_0;
            ELSE
                SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_R_v_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3(STALLREG,271)
    SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_r_valid <= (others => '0');
            SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_r_valid <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_backStall and (SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_r_valid or SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_i_valid);

            IF (SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_r_data0 <= STD_LOGIC_VECTOR(redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_i_valid <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_V0;
    -- Stall signal propagation
    SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_backStall <= SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_r_valid or not (SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_i_valid);

    -- Valid
    SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_V <= SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_r_valid WHEN SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_r_valid = "1" ELSE SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_i_valid;

    SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_D0 <= SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_r_data0 WHEN SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_r_valid = "1" ELSE redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_2_q;

    -- redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3(REG,114)
    redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_backEN = "1") THEN
                redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_q <= STD_LOGIC_VECTOR(SR_SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4(REG,115)
    redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_backEN = "1") THEN
                redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_q <= STD_LOGIC_VECTOR(redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_q);
            END IF;
        END IF;
    END PROCESS;

    -- SE_out_i_ffwd_dst_reduction_processfpga_14444_processfpga(STALLENABLE,165)
    -- Valid signal propagation
    SE_out_i_ffwd_dst_reduction_processfpga_14444_processfpga_V0 <= SE_out_i_ffwd_dst_reduction_processfpga_14444_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_dst_reduction_processfpga_14444_processfpga_backStall <= SR_SE_i_select1275_processfpga_backStall or not (SE_out_i_ffwd_dst_reduction_processfpga_14444_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_dst_reduction_processfpga_14444_processfpga_wireValid <= i_ffwd_dst_reduction_processfpga_14444_processfpga_out_valid_out;

    -- SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4(STALLENABLE,208)
    -- Valid signal propagation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_V0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_R_v_0;
    -- Stall signal propagation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_s_tv_0 <= SR_SE_i_select1275_processfpga_backStall and SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_R_v_0;
    -- Backward Enable generation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_backEN <= not (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_v_s_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_backEN and SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_3_V0;
    -- Backward Stall generation
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_backStall <= not (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_v_s_0);
    SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_backEN = "0") THEN
                SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_R_v_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_R_v_0 and SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_s_tv_0;
            ELSE
                SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_R_v_0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_i_select1275_processfpga(STALLREG,272)
    SR_SE_i_select1275_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_select1275_processfpga_r_valid <= (others => '0');
            SR_SE_i_select1275_processfpga_r_data0 <= (others => '-');
            SR_SE_i_select1275_processfpga_r_data1 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_select1275_processfpga_r_valid <= SE_i_select1275_processfpga_backStall and (SR_SE_i_select1275_processfpga_r_valid or SR_SE_i_select1275_processfpga_i_valid);

            IF (SR_SE_i_select1275_processfpga_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_select1275_processfpga_r_data0 <= redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_q;
                SR_SE_i_select1275_processfpga_r_data1 <= bubble_select_i_ffwd_dst_reduction_processfpga_14444_processfpga_b;
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_select1275_processfpga_and0 <= SE_redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_V0;
    SR_SE_i_select1275_processfpga_i_valid <= SE_out_i_ffwd_dst_reduction_processfpga_14444_processfpga_V0 and SR_SE_i_select1275_processfpga_and0;
    -- Stall signal propagation
    SR_SE_i_select1275_processfpga_backStall <= SR_SE_i_select1275_processfpga_r_valid or not (SR_SE_i_select1275_processfpga_i_valid);

    -- Valid
    SR_SE_i_select1275_processfpga_V <= SR_SE_i_select1275_processfpga_r_valid WHEN SR_SE_i_select1275_processfpga_r_valid = "1" ELSE SR_SE_i_select1275_processfpga_i_valid;

    -- Data0
    SR_SE_i_select1275_processfpga_D0 <= SR_SE_i_select1275_processfpga_r_data0 WHEN SR_SE_i_select1275_processfpga_r_valid = "1" ELSE redist5_i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0_5_4_q;
    -- Data1
    SR_SE_i_select1275_processfpga_D1 <= SR_SE_i_select1275_processfpga_r_data1 WHEN SR_SE_i_select1275_processfpga_r_valid = "1" ELSE bubble_select_i_ffwd_dst_reduction_processfpga_14444_processfpga_b;

    -- i_select1275_processfpga(MUX,68)@5 + 1
    i_select1275_processfpga_s <= SR_SE_i_select1275_processfpga_D0;
    i_select1275_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_select1275_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_select1275_processfpga_backEN = "1") THEN
                CASE (i_select1275_processfpga_s) IS
                    WHEN "0" => i_select1275_processfpga_q <= SR_SE_i_select1275_processfpga_D1;
                    WHEN "1" => i_select1275_processfpga_q <= c_i32_1gr_q;
                    WHEN OTHERS => i_select1275_processfpga_q <= (others => '0');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- i_unnamed_processfpga892(LOGICAL,72)@6
    i_unnamed_processfpga892_q <= i_select1275_processfpga_q xor c_i32_1gr_q;

    -- SE_i_select1275_processfpga(STALLENABLE,183)
    -- Valid signal propagation
    SE_i_select1275_processfpga_V0 <= SE_i_select1275_processfpga_R_v_0;
    -- Stall signal propagation
    SE_i_select1275_processfpga_s_tv_0 <= SR_SE_i_unnamed_processfpga896_backStall and SE_i_select1275_processfpga_R_v_0;
    -- Backward Enable generation
    SE_i_select1275_processfpga_backEN <= not (SE_i_select1275_processfpga_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_select1275_processfpga_v_s_0 <= SE_i_select1275_processfpga_backEN and SR_SE_i_select1275_processfpga_V;
    -- Backward Stall generation
    SE_i_select1275_processfpga_backStall <= not (SE_i_select1275_processfpga_backEN);
    SE_i_select1275_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_select1275_processfpga_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_select1275_processfpga_backEN = "0") THEN
                SE_i_select1275_processfpga_R_v_0 <= SE_i_select1275_processfpga_R_v_0 and SE_i_select1275_processfpga_s_tv_0;
            ELSE
                SE_i_select1275_processfpga_R_v_0 <= SE_i_select1275_processfpga_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_i_unnamed_processfpga896(STALLREG,273)
    SR_SE_i_unnamed_processfpga896_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_unnamed_processfpga896_r_valid <= (others => '0');
            SR_SE_i_unnamed_processfpga896_r_data0 <= (others => '-');
            SR_SE_i_unnamed_processfpga896_r_data1 <= (others => '-');
            SR_SE_i_unnamed_processfpga896_r_data2 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_unnamed_processfpga896_r_valid <= SE_i_unnamed_processfpga896_backStall and (SR_SE_i_unnamed_processfpga896_r_valid or SR_SE_i_unnamed_processfpga896_i_valid);

            IF (SR_SE_i_unnamed_processfpga896_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_unnamed_processfpga896_r_data0 <= STD_LOGIC_VECTOR(i_unnamed_processfpga892_q);
                SR_SE_i_unnamed_processfpga896_r_data1 <= STD_LOGIC_VECTOR(i_unnamed_processfpga892_q);
                SR_SE_i_unnamed_processfpga896_r_data2 <= STD_LOGIC_VECTOR(i_select1275_processfpga_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_unnamed_processfpga896_i_valid <= SE_i_select1275_processfpga_V0;
    -- Stall signal propagation
    SR_SE_i_unnamed_processfpga896_backStall <= SR_SE_i_unnamed_processfpga896_r_valid or not (SR_SE_i_unnamed_processfpga896_i_valid);

    -- Valid
    SR_SE_i_unnamed_processfpga896_V <= SR_SE_i_unnamed_processfpga896_r_valid WHEN SR_SE_i_unnamed_processfpga896_r_valid = "1" ELSE SR_SE_i_unnamed_processfpga896_i_valid;

    -- Data0
    SR_SE_i_unnamed_processfpga896_D0 <= SR_SE_i_unnamed_processfpga896_r_data0 WHEN SR_SE_i_unnamed_processfpga896_r_valid = "1" ELSE i_unnamed_processfpga892_q;
    -- Data1
    SR_SE_i_unnamed_processfpga896_D1 <= SR_SE_i_unnamed_processfpga896_r_data1 WHEN SR_SE_i_unnamed_processfpga896_r_valid = "1" ELSE i_unnamed_processfpga892_q;
    -- Data2
    SR_SE_i_unnamed_processfpga896_D2 <= SR_SE_i_unnamed_processfpga896_r_data2 WHEN SR_SE_i_unnamed_processfpga896_r_valid = "1" ELSE i_select1275_processfpga_q;

    -- redist4_i_select1275_processfpga_q_2_0(REG,110)
    redist4_i_select1275_processfpga_q_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_select1275_processfpga_q_2_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_unnamed_processfpga896_backEN = "1") THEN
                redist4_i_select1275_processfpga_q_2_0_q <= STD_LOGIC_VECTOR(SR_SE_i_unnamed_processfpga896_D2);
            END IF;
        END IF;
    END PROCESS;

    -- c_i32_1gr(CONSTANT,49)
    c_i32_1gr_q <= "11111111111111111111111111111111";

    -- i_cmp91_i_i10731282_processfpga(COMPARE,56)@7 + 1
    i_cmp91_i_i10731282_processfpga_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_1gr_q(31)) & c_i32_1gr_q));
    i_cmp91_i_i10731282_processfpga_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist4_i_select1275_processfpga_q_2_0_q(31)) & redist4_i_select1275_processfpga_q_2_0_q));
    i_cmp91_i_i10731282_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp91_i_i10731282_processfpga_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp91_i_i10731282_processfpga_backEN = "1") THEN
                i_cmp91_i_i10731282_processfpga_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp91_i_i10731282_processfpga_a) - SIGNED(i_cmp91_i_i10731282_processfpga_b));
            END IF;
        END IF;
    END PROCESS;
    i_cmp91_i_i10731282_processfpga_c(0) <= i_cmp91_i_i10731282_processfpga_o(33);

    -- redist3_i_unnamed_processfpga892_q_1_0(REG,109)
    redist3_i_unnamed_processfpga892_q_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_unnamed_processfpga892_q_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_unnamed_processfpga896_backEN = "1") THEN
                redist3_i_unnamed_processfpga892_q_1_0_q <= STD_LOGIC_VECTOR(SR_SE_i_unnamed_processfpga896_D1);
            END IF;
        END IF;
    END PROCESS;

    -- i_unnamed_processfpga896(COMPARE,74)@6 + 1
    i_unnamed_processfpga896_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_1gr_q(31)) & c_i32_1gr_q));
    i_unnamed_processfpga896_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => SR_SE_i_unnamed_processfpga896_D0(31)) & SR_SE_i_unnamed_processfpga896_D0));
    i_unnamed_processfpga896_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_unnamed_processfpga896_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_unnamed_processfpga896_backEN = "1") THEN
                i_unnamed_processfpga896_o <= STD_LOGIC_VECTOR(SIGNED(i_unnamed_processfpga896_a) - SIGNED(i_unnamed_processfpga896_b));
            END IF;
        END IF;
    END PROCESS;
    i_unnamed_processfpga896_c(0) <= i_unnamed_processfpga896_o(33);

    -- i_smax196_processfpga(MUX,69)@7 + 1
    i_smax196_processfpga_s <= i_unnamed_processfpga896_c;
    i_smax196_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_smax196_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp91_i_i10731282_processfpga_backEN = "1") THEN
                CASE (i_smax196_processfpga_s) IS
                    WHEN "0" => i_smax196_processfpga_q <= c_i32_1gr_q;
                    WHEN "1" => i_smax196_processfpga_q <= redist3_i_unnamed_processfpga892_q_1_0_q;
                    WHEN OTHERS => i_smax196_processfpga_q <= (others => '0');
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_0_c_i32_1gr_x(CONSTANT,6)
    dupName_0_c_i32_1gr_x_q <= "00000000000000000000000000000001";

    -- i_unnamed_processfpga891(ADD,71)@7
    i_unnamed_processfpga891_a <= STD_LOGIC_VECTOR("0" & redist4_i_select1275_processfpga_q_2_0_q);
    i_unnamed_processfpga891_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i32_1gr_x_q);
    i_unnamed_processfpga891_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_processfpga891_a) + UNSIGNED(i_unnamed_processfpga891_b));
    i_unnamed_processfpga891_q <= i_unnamed_processfpga891_o(32 downto 0);

    -- bgTrunc_i_unnamed_processfpga891_sel_x(BITSELECT,3)@7
    bgTrunc_i_unnamed_processfpga891_sel_x_b <= i_unnamed_processfpga891_q(31 downto 0);

    -- redist7_bgTrunc_i_unnamed_processfpga891_sel_x_b_1_0(REG,117)
    redist7_bgTrunc_i_unnamed_processfpga891_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist7_bgTrunc_i_unnamed_processfpga891_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp91_i_i10731282_processfpga_backEN = "1") THEN
                redist7_bgTrunc_i_unnamed_processfpga891_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(bgTrunc_i_unnamed_processfpga891_sel_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- i_unnamed_processfpga905(ADD,76)@8
    i_unnamed_processfpga905_a <= STD_LOGIC_VECTOR("0" & redist7_bgTrunc_i_unnamed_processfpga891_sel_x_b_1_0_q);
    i_unnamed_processfpga905_b <= STD_LOGIC_VECTOR("0" & i_smax196_processfpga_q);
    i_unnamed_processfpga905_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_processfpga905_a) + UNSIGNED(i_unnamed_processfpga905_b));
    i_unnamed_processfpga905_q <= i_unnamed_processfpga905_o(32 downto 0);

    -- bgTrunc_i_unnamed_processfpga905_sel_x(BITSELECT,4)@8
    bgTrunc_i_unnamed_processfpga905_sel_x_b <= i_unnamed_processfpga905_q(31 downto 0);

    -- i_unnamed_processfpga906_sel_x(BITSELECT,43)@8
    i_unnamed_processfpga906_sel_x_b <= std_logic_vector(resize(unsigned(bgTrunc_i_unnamed_processfpga905_sel_x_b(31 downto 0)), 33));

    -- i_unnamed_processfpga906_vt_select_31(BITSELECT,80)@8
    i_unnamed_processfpga906_vt_select_31_b <= i_unnamed_processfpga906_sel_x_b(31 downto 0);

    -- SE_i_cmp91_i_i10731282_processfpga(STALLENABLE,161)
    -- Valid signal propagation
    SE_i_cmp91_i_i10731282_processfpga_V0 <= SE_i_cmp91_i_i10731282_processfpga_R_v_0;
    -- Stall signal propagation
    SE_i_cmp91_i_i10731282_processfpga_s_tv_0 <= SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_backStall and SE_i_cmp91_i_i10731282_processfpga_R_v_0;
    -- Backward Enable generation
    SE_i_cmp91_i_i10731282_processfpga_backEN <= not (SE_i_cmp91_i_i10731282_processfpga_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_cmp91_i_i10731282_processfpga_v_s_0 <= SE_i_cmp91_i_i10731282_processfpga_backEN and SE_i_unnamed_processfpga896_V0;
    -- Backward Stall generation
    SE_i_cmp91_i_i10731282_processfpga_backStall <= not (SE_i_cmp91_i_i10731282_processfpga_v_s_0);
    SE_i_cmp91_i_i10731282_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_cmp91_i_i10731282_processfpga_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp91_i_i10731282_processfpga_backEN = "0") THEN
                SE_i_cmp91_i_i10731282_processfpga_R_v_0 <= SE_i_cmp91_i_i10731282_processfpga_R_v_0 and SE_i_cmp91_i_i10731282_processfpga_s_tv_0;
            ELSE
                SE_i_cmp91_i_i10731282_processfpga_R_v_0 <= SE_i_cmp91_i_i10731282_processfpga_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0(STALLREG,274)
    SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_valid <= (others => '0');
            SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_data0 <= (others => '-');
            SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_data1 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_valid <= SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_backStall and (SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_valid or SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_i_valid);

            IF (SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_data0 <= STD_LOGIC_VECTOR(i_unnamed_processfpga906_vt_select_31_b);
                SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_data1 <= STD_LOGIC_VECTOR(i_cmp91_i_i10731282_processfpga_c);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_i_valid <= SE_i_cmp91_i_i10731282_processfpga_V0;
    -- Stall signal propagation
    SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_backStall <= SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_valid or not (SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_i_valid);

    -- Valid
    SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_V <= SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_valid WHEN SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_valid = "1" ELSE SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_i_valid;

    -- Data0
    SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_D0 <= SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_data0 WHEN SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_valid = "1" ELSE i_unnamed_processfpga906_vt_select_31_b;
    -- Data1
    SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_D1 <= SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_data1 WHEN SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_r_valid = "1" ELSE i_cmp91_i_i10731282_processfpga_c;

    -- redist6_i_cmp91_i_i10731282_processfpga_c_2_0(REG,116)
    redist6_i_cmp91_i_i10731282_processfpga_c_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_cmp91_i_i10731282_processfpga_c_2_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_backEN = "1") THEN
                redist6_i_cmp91_i_i10731282_processfpga_c_2_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_D1);
            END IF;
        END IF;
    END PROCESS;

    -- i_cmp91_i_i10731282_not_processfpga(LOGICAL,55)@9
    i_cmp91_i_i10731282_not_processfpga_q <= redist6_i_cmp91_i_i10731282_processfpga_c_2_0_q xor VCC_q;

    -- bubble_join_i_ffwd_dst_unnamed_processfpga119_processfpga(BITJOIN,132)
    bubble_join_i_ffwd_dst_unnamed_processfpga119_processfpga_q <= i_ffwd_dst_unnamed_processfpga119_processfpga_out_dest_data_out_54_0;

    -- bubble_select_i_ffwd_dst_unnamed_processfpga119_processfpga(BITSELECT,133)
    bubble_select_i_ffwd_dst_unnamed_processfpga119_processfpga_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_unnamed_processfpga119_processfpga_q(0 downto 0));

    -- i_phi_decision1464_xor_or_processfpga(LOGICAL,67)@9
    i_phi_decision1464_xor_or_processfpga_q <= bubble_select_i_ffwd_dst_unnamed_processfpga119_processfpga_b or i_cmp91_i_i10731282_not_processfpga_q;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_ffwd_src_unnamed_processfpga123_processfpga(BLACKBOX,65)@9
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_64_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga123_processfpga : i_ffwd_src_unnamed_processfpga123_processfpga903
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_64_0 => i_phi_decision1464_xor_or_processfpga_q,
        in_stall_in => SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_backStall,
        in_valid_in => SE_out_i_ffwd_dst_unnamed_processfpga119_processfpga_V0,
        out_intel_reserved_ffwd_64_0 => i_ffwd_src_unnamed_processfpga123_processfpga_out_intel_reserved_ffwd_64_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga123_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga123_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_ffwd_dst_tobool_i873439_processfpga(BITJOIN,126)
    bubble_join_i_ffwd_dst_tobool_i873439_processfpga_q <= i_ffwd_dst_tobool_i873439_processfpga_out_dest_data_out_53_0;

    -- bubble_select_i_ffwd_dst_tobool_i873439_processfpga(BITSELECT,127)
    bubble_select_i_ffwd_dst_tobool_i873439_processfpga_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_tobool_i873439_processfpga_q(0 downto 0));

    -- i_tobool_i873_not_processfpga(LOGICAL,70)@0
    i_tobool_i873_not_processfpga_q <= bubble_select_i_ffwd_dst_tobool_i873439_processfpga_b xor VCC_q;

    -- bubble_join_i_ffwd_dst_cmp_i8661284420_processfpga(BITJOIN,120)
    bubble_join_i_ffwd_dst_cmp_i8661284420_processfpga_q <= i_ffwd_dst_cmp_i8661284420_processfpga_out_dest_data_out_44_0;

    -- bubble_select_i_ffwd_dst_cmp_i8661284420_processfpga(BITSELECT,121)
    bubble_select_i_ffwd_dst_cmp_i8661284420_processfpga_b <= STD_LOGIC_VECTOR(bubble_join_i_ffwd_dst_cmp_i8661284420_processfpga_q(0 downto 0));

    -- i_unnamed_processfpga895(LOGICAL,73)@0 + 1
    i_unnamed_processfpga895_qi <= bubble_select_i_ffwd_dst_cmp_i8661284420_processfpga_b and i_tobool_i873_not_processfpga_q;
    i_unnamed_processfpga895_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga895_qi, xout => i_unnamed_processfpga895_q, ena => SE_i_unnamed_processfpga895_backEN(0), clk => clock, aclr => resetn );

    -- SE_out_i_ffwd_dst_cmp_i8661284420_processfpga(STALLENABLE,163)
    -- Valid signal propagation
    SE_out_i_ffwd_dst_cmp_i8661284420_processfpga_V0 <= SE_out_i_ffwd_dst_cmp_i8661284420_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_dst_cmp_i8661284420_processfpga_backStall <= SE_i_unnamed_processfpga895_backStall or not (SE_out_i_ffwd_dst_cmp_i8661284420_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_dst_cmp_i8661284420_processfpga_wireValid <= i_ffwd_dst_cmp_i8661284420_processfpga_out_valid_out;

    -- SE_out_i_ffwd_dst_tobool_i873439_processfpga(STALLENABLE,167)
    -- Valid signal propagation
    SE_out_i_ffwd_dst_tobool_i873439_processfpga_V0 <= SE_out_i_ffwd_dst_tobool_i873439_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_dst_tobool_i873439_processfpga_backStall <= SE_i_unnamed_processfpga895_backStall or not (SE_out_i_ffwd_dst_tobool_i873439_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_dst_tobool_i873439_processfpga_wireValid <= i_ffwd_dst_tobool_i873439_processfpga_out_valid_out;

    -- SE_i_unnamed_processfpga895(STALLENABLE,188)
    -- Valid signal propagation
    SE_i_unnamed_processfpga895_V0 <= SE_i_unnamed_processfpga895_R_v_0;
    -- Stall signal propagation
    SE_i_unnamed_processfpga895_s_tv_0 <= redist2_i_unnamed_processfpga895_q_9_fifo_stall_out and SE_i_unnamed_processfpga895_R_v_0;
    -- Backward Enable generation
    SE_i_unnamed_processfpga895_backEN <= not (SE_i_unnamed_processfpga895_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_i_unnamed_processfpga895_and0 <= SE_out_i_ffwd_dst_tobool_i873439_processfpga_V0 and SE_i_unnamed_processfpga895_backEN;
    SE_i_unnamed_processfpga895_v_s_0 <= SE_out_i_ffwd_dst_cmp_i8661284420_processfpga_V0 and SE_i_unnamed_processfpga895_and0;
    -- Backward Stall generation
    SE_i_unnamed_processfpga895_backStall <= not (SE_i_unnamed_processfpga895_v_s_0);
    SE_i_unnamed_processfpga895_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_unnamed_processfpga895_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_unnamed_processfpga895_backEN = "0") THEN
                SE_i_unnamed_processfpga895_R_v_0 <= SE_i_unnamed_processfpga895_R_v_0 and SE_i_unnamed_processfpga895_s_tv_0;
            ELSE
                SE_i_unnamed_processfpga895_R_v_0 <= SE_i_unnamed_processfpga895_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- redist2_i_unnamed_processfpga895_q_9_fifo(STALLFIFO,108)
    redist2_i_unnamed_processfpga895_q_9_fifo_valid_in <= SE_i_unnamed_processfpga895_V0;
    redist2_i_unnamed_processfpga895_q_9_fifo_stall_in <= SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_backStall;
    redist2_i_unnamed_processfpga895_q_9_fifo_data_in <= i_unnamed_processfpga895_q;
    redist2_i_unnamed_processfpga895_q_9_fifo_valid_in_bitsignaltemp <= redist2_i_unnamed_processfpga895_q_9_fifo_valid_in(0);
    redist2_i_unnamed_processfpga895_q_9_fifo_stall_in_bitsignaltemp <= redist2_i_unnamed_processfpga895_q_9_fifo_stall_in(0);
    redist2_i_unnamed_processfpga895_q_9_fifo_valid_out(0) <= redist2_i_unnamed_processfpga895_q_9_fifo_valid_out_bitsignaltemp;
    redist2_i_unnamed_processfpga895_q_9_fifo_stall_out(0) <= redist2_i_unnamed_processfpga895_q_9_fifo_stall_out_bitsignaltemp;
    theredist2_i_unnamed_processfpga895_q_9_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 9,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist2_i_unnamed_processfpga895_q_9_fifo_valid_in_bitsignaltemp,
        stall_in => redist2_i_unnamed_processfpga895_q_9_fifo_stall_in_bitsignaltemp,
        data_in => i_unnamed_processfpga895_q,
        valid_out => redist2_i_unnamed_processfpga895_q_9_fifo_valid_out_bitsignaltemp,
        stall_out => redist2_i_unnamed_processfpga895_q_9_fifo_stall_out_bitsignaltemp,
        data_out => redist2_i_unnamed_processfpga895_q_9_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_redist2_i_unnamed_processfpga895_q_9_fifo(BITJOIN,152)
    bubble_join_redist2_i_unnamed_processfpga895_q_9_fifo_q <= redist2_i_unnamed_processfpga895_q_9_fifo_data_out;

    -- bubble_select_redist2_i_unnamed_processfpga895_q_9_fifo(BITSELECT,153)
    bubble_select_redist2_i_unnamed_processfpga895_q_9_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist2_i_unnamed_processfpga895_q_9_fifo_q(0 downto 0));

    -- i_unnamed_processfpga898(LOGICAL,75)@9
    i_unnamed_processfpga898_q <= redist6_i_cmp91_i_i10731282_processfpga_c_2_0_q and bubble_select_redist2_i_unnamed_processfpga895_q_9_fifo_b;

    -- i_ffwd_src_unnamed_processfpga121_processfpga(BLACKBOX,63)@9
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_62_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga121_processfpga : i_ffwd_src_unnamed_processfpga121_processfpga899
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_62_0 => bubble_select_redist2_i_unnamed_processfpga895_q_9_fifo_b,
        in_stall_in => SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_backStall,
        in_valid_in => SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_V1,
        out_intel_reserved_ffwd_62_0 => i_ffwd_src_unnamed_processfpga121_processfpga_out_intel_reserved_ffwd_62_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga121_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga121_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist2_i_unnamed_processfpga895_q_9_fifo(STALLENABLE,201)
    SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_fromReg0 <= (others => '0');
            SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_fromReg0 <= SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_toReg0;
            -- Succesor 1
            SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_fromReg1 <= SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_consumed0 <= (not (SR_SE_i_unnamed_processfpga898_backStall) and SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_wireValid) or SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_fromReg0;
    SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_consumed1 <= (not (i_ffwd_src_unnamed_processfpga121_processfpga_out_stall_out) and SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_wireValid) or SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_fromReg1;
    -- Consuming
    SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_StallValid <= SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_backStall and SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_wireValid;
    SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_toReg0 <= SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_StallValid and SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_consumed0;
    SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_toReg1 <= SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_StallValid and SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_or0 <= SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_consumed0;
    SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_wireStall <= not (SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_consumed1 and SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_or0);
    SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_backStall <= SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_V0 <= SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_wireValid and not (SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_fromReg0);
    SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_V1 <= SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_wireValid and not (SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_wireValid <= redist2_i_unnamed_processfpga895_q_9_fifo_valid_out;

    -- i_ffwd_src_unnamed_processfpga122_processfpga(BLACKBOX,64)@9
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_63_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga122_processfpga : i_ffwd_src_unnamed_processfpga122_processfpga901
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_63_0 => SR_SE_i_unnamed_processfpga898_D0,
        in_stall_in => SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_backStall,
        in_valid_in => SE_i_unnamed_processfpga898_V0,
        out_intel_reserved_ffwd_63_0 => i_ffwd_src_unnamed_processfpga122_processfpga_out_intel_reserved_ffwd_63_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga122_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga122_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_i_unnamed_processfpga898(STALLENABLE,190)
    -- Valid signal propagation
    SE_i_unnamed_processfpga898_V0 <= SE_i_unnamed_processfpga898_wireValid;
    -- Backward Stall generation
    SE_i_unnamed_processfpga898_backStall <= i_ffwd_src_unnamed_processfpga122_processfpga_out_stall_out or not (SE_i_unnamed_processfpga898_wireValid);
    -- Computing multiple Valid(s)
    SE_i_unnamed_processfpga898_wireValid <= SR_SE_i_unnamed_processfpga898_V;

    -- SR_SE_i_unnamed_processfpga898(STALLREG,275)
    SR_SE_i_unnamed_processfpga898_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_i_unnamed_processfpga898_r_valid <= (others => '0');
            SR_SE_i_unnamed_processfpga898_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_i_unnamed_processfpga898_r_valid <= SE_i_unnamed_processfpga898_backStall and (SR_SE_i_unnamed_processfpga898_r_valid or SR_SE_i_unnamed_processfpga898_i_valid);

            IF (SR_SE_i_unnamed_processfpga898_r_valid = "0") THEN
                -- Data(s)
                SR_SE_i_unnamed_processfpga898_r_data0 <= i_unnamed_processfpga898_q;
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_i_unnamed_processfpga898_and0 <= SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_V2;
    SR_SE_i_unnamed_processfpga898_i_valid <= SE_out_redist2_i_unnamed_processfpga895_q_9_fifo_V0 and SR_SE_i_unnamed_processfpga898_and0;
    -- Stall signal propagation
    SR_SE_i_unnamed_processfpga898_backStall <= SR_SE_i_unnamed_processfpga898_r_valid or not (SR_SE_i_unnamed_processfpga898_i_valid);

    -- Valid
    SR_SE_i_unnamed_processfpga898_V <= SR_SE_i_unnamed_processfpga898_r_valid WHEN SR_SE_i_unnamed_processfpga898_r_valid = "1" ELSE SR_SE_i_unnamed_processfpga898_i_valid;

    SR_SE_i_unnamed_processfpga898_D0 <= SR_SE_i_unnamed_processfpga898_r_data0 WHEN SR_SE_i_unnamed_processfpga898_r_valid = "1" ELSE i_unnamed_processfpga898_q;

    -- c_i33_1gr(CONSTANT,50)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- redist1_i_unnamed_processfpga906_vt_select_31_b_1_0(REG,107)
    redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_backEN = "1") THEN
                redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_q <= STD_LOGIC_VECTOR(SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- i_unnamed_processfpga906_vt_join(BITJOIN,79)@9
    i_unnamed_processfpga906_vt_join_q <= GND_q & redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_q;

    -- i_unnamed_processfpga907(ADD,81)@9
    i_unnamed_processfpga907_a <= STD_LOGIC_VECTOR("0" & i_unnamed_processfpga906_vt_join_q);
    i_unnamed_processfpga907_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_unnamed_processfpga907_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_processfpga907_a) + UNSIGNED(i_unnamed_processfpga907_b));
    i_unnamed_processfpga907_q <= i_unnamed_processfpga907_o(33 downto 0);

    -- bgTrunc_i_unnamed_processfpga907_sel_x(BITSELECT,5)@9
    bgTrunc_i_unnamed_processfpga907_sel_x_b <= i_unnamed_processfpga907_q(32 downto 0);

    -- i_ffwd_src_unnamed_processfpga124_processfpga(BLACKBOX,66)@9
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_65_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_processfpga124_processfpga : i_ffwd_src_unnamed_processfpga124_processfpga908
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_65_0 => bgTrunc_i_unnamed_processfpga907_sel_x_b,
        in_stall_in => SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_backStall,
        in_valid_in => SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_V0,
        out_intel_reserved_ffwd_65_0 => i_ffwd_src_unnamed_processfpga124_processfpga_out_intel_reserved_ffwd_65_0,
        out_stall_out => i_ffwd_src_unnamed_processfpga124_processfpga_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_processfpga124_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0(STALLENABLE,199)
    -- Valid signal propagation
    SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_V0 <= SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_0;
    SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_V1 <= SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_1;
    SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_V2 <= SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_2;
    -- Stall signal propagation
    SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_s_tv_0 <= i_ffwd_src_unnamed_processfpga124_processfpga_out_stall_out and SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_0;
    SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_s_tv_1 <= SE_out_i_ffwd_dst_unnamed_processfpga119_processfpga_backStall and SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_1;
    SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_s_tv_2 <= SR_SE_i_unnamed_processfpga898_backStall and SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_2;
    -- Backward Enable generation
    SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_or0 <= SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_s_tv_0;
    SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_or1 <= SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_s_tv_1 or SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_or0;
    SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_backEN <= not (SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_s_tv_2 or SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_or1);
    -- Determine whether to write valid data into the first register stage
    SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_v_s_0 <= SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_backEN and SR_SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_V;
    -- Backward Stall generation
    SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_backStall <= not (SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_backEN);
    SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_0 <= (others => '0');
            SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_1 <= (others => '0');
            SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_backEN = "0") THEN
                SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_0 <= SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_0 and SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_s_tv_0;
            ELSE
                SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_0 <= SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_v_s_0;
            END IF;

            IF (SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_backEN = "0") THEN
                SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_1 <= SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_1 and SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_s_tv_1;
            ELSE
                SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_1 <= SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_v_s_0;
            END IF;

            IF (SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_backEN = "0") THEN
                SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_2 <= SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_2 and SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_s_tv_2;
            ELSE
                SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_R_v_2 <= SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_ffwd_dst_unnamed_processfpga119_processfpga(STALLENABLE,171)
    -- Valid signal propagation
    SE_out_i_ffwd_dst_unnamed_processfpga119_processfpga_V0 <= SE_out_i_ffwd_dst_unnamed_processfpga119_processfpga_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_dst_unnamed_processfpga119_processfpga_backStall <= i_ffwd_src_unnamed_processfpga123_processfpga_out_stall_out or not (SE_out_i_ffwd_dst_unnamed_processfpga119_processfpga_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_dst_unnamed_processfpga119_processfpga_and0 <= i_ffwd_dst_unnamed_processfpga119_processfpga_out_valid_out;
    SE_out_i_ffwd_dst_unnamed_processfpga119_processfpga_wireValid <= SE_redist1_i_unnamed_processfpga906_vt_select_31_b_1_0_V1 and SE_out_i_ffwd_dst_unnamed_processfpga119_processfpga_and0;

    -- i_ffwd_dst_unnamed_processfpga119_processfpga(BLACKBOX,61)@9
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_unnamed_processfpga119_processfpga : i_ffwd_dst_unnamed_processfpga119_processfpga888
    PORT MAP (
        in_intel_reserved_ffwd_54_0 => in_intel_reserved_ffwd_54_0,
        in_stall_in => SE_out_i_ffwd_dst_unnamed_processfpga119_processfpga_backStall,
        in_valid_in => SE_out_bubble_out_stall_entry_aunroll_5_V0,
        out_dest_data_out_54_0 => i_ffwd_dst_unnamed_processfpga119_processfpga_out_dest_data_out_54_0,
        out_stall_out => i_ffwd_dst_unnamed_processfpga119_processfpga_out_stall_out,
        out_valid_out => i_ffwd_dst_unnamed_processfpga119_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_stall_entry_aunroll_5(STALLENABLE,256)
    -- Valid signal propagation
    SE_out_bubble_out_stall_entry_aunroll_5_V0 <= SE_out_bubble_out_stall_entry_aunroll_5_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_stall_entry_aunroll_5_backStall <= i_ffwd_dst_unnamed_processfpga119_processfpga_out_stall_out or not (SE_out_bubble_out_stall_entry_aunroll_5_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_stall_entry_aunroll_5_wireValid <= bubble_out_stall_entry_aunroll_5_reg_valid_out;

    -- bubble_out_stall_entry_aunroll_5_reg(STALLFIFO,269)
    bubble_out_stall_entry_aunroll_5_reg_valid_in <= SE_stall_entry_aunroll_V5;
    bubble_out_stall_entry_aunroll_5_reg_stall_in <= SE_out_bubble_out_stall_entry_aunroll_5_backStall;
    bubble_out_stall_entry_aunroll_5_reg_valid_in_bitsignaltemp <= bubble_out_stall_entry_aunroll_5_reg_valid_in(0);
    bubble_out_stall_entry_aunroll_5_reg_stall_in_bitsignaltemp <= bubble_out_stall_entry_aunroll_5_reg_stall_in(0);
    bubble_out_stall_entry_aunroll_5_reg_valid_out(0) <= bubble_out_stall_entry_aunroll_5_reg_valid_out_bitsignaltemp;
    bubble_out_stall_entry_aunroll_5_reg_stall_out(0) <= bubble_out_stall_entry_aunroll_5_reg_stall_out_bitsignaltemp;
    thebubble_out_stall_entry_aunroll_5_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 10,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_stall_entry_aunroll_5_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_stall_entry_aunroll_5_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_stall_entry_aunroll_5_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_stall_entry_aunroll_5_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_stall_entry_aunroll_2_reg(STALLFIFO,268)
    bubble_out_stall_entry_aunroll_2_reg_valid_in <= SE_stall_entry_aunroll_V4;
    bubble_out_stall_entry_aunroll_2_reg_stall_in <= SE_out_bubble_out_stall_entry_aunroll_2_backStall;
    bubble_out_stall_entry_aunroll_2_reg_valid_in_bitsignaltemp <= bubble_out_stall_entry_aunroll_2_reg_valid_in(0);
    bubble_out_stall_entry_aunroll_2_reg_stall_in_bitsignaltemp <= bubble_out_stall_entry_aunroll_2_reg_stall_in(0);
    bubble_out_stall_entry_aunroll_2_reg_valid_out(0) <= bubble_out_stall_entry_aunroll_2_reg_valid_out_bitsignaltemp;
    bubble_out_stall_entry_aunroll_2_reg_stall_out(0) <= bubble_out_stall_entry_aunroll_2_reg_stall_out_bitsignaltemp;
    thebubble_out_stall_entry_aunroll_2_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 6,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_stall_entry_aunroll_2_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_stall_entry_aunroll_2_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_stall_entry_aunroll_2_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_stall_entry_aunroll_2_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_unnamed_processfpga111_processfpga(BLACKBOX,60)@0
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_unnamed_processfpga111_processfpga : i_ffwd_dst_unnamed_processfpga111_processfpga858
    PORT MAP (
        in_intel_reserved_ffwd_56_0 => in_intel_reserved_ffwd_56_0,
        in_stall_in => SE_out_i_ffwd_dst_unnamed_processfpga111_processfpga_backStall,
        in_valid_in => SE_stall_entry_aunroll_V3,
        out_dest_data_out_56_0 => i_ffwd_dst_unnamed_processfpga111_processfpga_out_dest_data_out_56_0,
        out_stall_out => i_ffwd_dst_unnamed_processfpga111_processfpga_out_stall_out,
        out_valid_out => i_ffwd_dst_unnamed_processfpga111_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_tobool_i873439_processfpga(BLACKBOX,59)@0
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_tobool_i873439_processfpga : i_ffwd_dst_tobool_i873439_processfpga884
    PORT MAP (
        in_intel_reserved_ffwd_53_0 => in_intel_reserved_ffwd_53_0,
        in_stall_in => SE_out_i_ffwd_dst_tobool_i873439_processfpga_backStall,
        in_valid_in => SE_stall_entry_aunroll_V2,
        out_dest_data_out_53_0 => i_ffwd_dst_tobool_i873439_processfpga_out_dest_data_out_53_0,
        out_stall_out => i_ffwd_dst_tobool_i873439_processfpga_out_stall_out,
        out_valid_out => i_ffwd_dst_tobool_i873439_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_cmp_i8661284420_processfpga(BLACKBOX,57)@0
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_ffwd_dst_cmp_i8661284420_processfpga : i_ffwd_dst_cmp_i8661284420_processfpga886
    PORT MAP (
        in_intel_reserved_ffwd_44_0 => in_intel_reserved_ffwd_44_0,
        in_stall_in => SE_out_i_ffwd_dst_cmp_i8661284420_processfpga_backStall,
        in_valid_in => SE_stall_entry_aunroll_V1,
        out_dest_data_out_44_0 => i_ffwd_dst_cmp_i8661284420_processfpga_out_dest_data_out_44_0,
        out_stall_out => i_ffwd_dst_cmp_i8661284420_processfpga_out_stall_out,
        out_valid_out => i_ffwd_dst_cmp_i8661284420_processfpga_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry_aunroll(STALLENABLE,195)
    SE_stall_entry_aunroll_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_stall_entry_aunroll_fromReg0 <= (others => '0');
            SE_stall_entry_aunroll_fromReg1 <= (others => '0');
            SE_stall_entry_aunroll_fromReg2 <= (others => '0');
            SE_stall_entry_aunroll_fromReg3 <= (others => '0');
            SE_stall_entry_aunroll_fromReg4 <= (others => '0');
            SE_stall_entry_aunroll_fromReg5 <= (others => '0');
            SE_stall_entry_aunroll_fromReg6 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_stall_entry_aunroll_fromReg0 <= SE_stall_entry_aunroll_toReg0;
            -- Succesor 1
            SE_stall_entry_aunroll_fromReg1 <= SE_stall_entry_aunroll_toReg1;
            -- Succesor 2
            SE_stall_entry_aunroll_fromReg2 <= SE_stall_entry_aunroll_toReg2;
            -- Succesor 3
            SE_stall_entry_aunroll_fromReg3 <= SE_stall_entry_aunroll_toReg3;
            -- Succesor 4
            SE_stall_entry_aunroll_fromReg4 <= SE_stall_entry_aunroll_toReg4;
            -- Succesor 5
            SE_stall_entry_aunroll_fromReg5 <= SE_stall_entry_aunroll_toReg5;
            -- Succesor 6
            SE_stall_entry_aunroll_fromReg6 <= SE_stall_entry_aunroll_toReg6;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_stall_entry_aunroll_consumed0 <= (not (i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_o_stall) and SE_stall_entry_aunroll_wireValid) or SE_stall_entry_aunroll_fromReg0;
    SE_stall_entry_aunroll_consumed1 <= (not (i_ffwd_dst_cmp_i8661284420_processfpga_out_stall_out) and SE_stall_entry_aunroll_wireValid) or SE_stall_entry_aunroll_fromReg1;
    SE_stall_entry_aunroll_consumed2 <= (not (i_ffwd_dst_tobool_i873439_processfpga_out_stall_out) and SE_stall_entry_aunroll_wireValid) or SE_stall_entry_aunroll_fromReg2;
    SE_stall_entry_aunroll_consumed3 <= (not (i_ffwd_dst_unnamed_processfpga111_processfpga_out_stall_out) and SE_stall_entry_aunroll_wireValid) or SE_stall_entry_aunroll_fromReg3;
    SE_stall_entry_aunroll_consumed4 <= (not (bubble_out_stall_entry_aunroll_2_reg_stall_out) and SE_stall_entry_aunroll_wireValid) or SE_stall_entry_aunroll_fromReg4;
    SE_stall_entry_aunroll_consumed5 <= (not (bubble_out_stall_entry_aunroll_5_reg_stall_out) and SE_stall_entry_aunroll_wireValid) or SE_stall_entry_aunroll_fromReg5;
    SE_stall_entry_aunroll_consumed6 <= (not (redist0_stall_entry_aunroll_o6_9_fifo_stall_out) and SE_stall_entry_aunroll_wireValid) or SE_stall_entry_aunroll_fromReg6;
    -- Consuming
    SE_stall_entry_aunroll_StallValid <= SE_stall_entry_aunroll_backStall and SE_stall_entry_aunroll_wireValid;
    SE_stall_entry_aunroll_toReg0 <= SE_stall_entry_aunroll_StallValid and SE_stall_entry_aunroll_consumed0;
    SE_stall_entry_aunroll_toReg1 <= SE_stall_entry_aunroll_StallValid and SE_stall_entry_aunroll_consumed1;
    SE_stall_entry_aunroll_toReg2 <= SE_stall_entry_aunroll_StallValid and SE_stall_entry_aunroll_consumed2;
    SE_stall_entry_aunroll_toReg3 <= SE_stall_entry_aunroll_StallValid and SE_stall_entry_aunroll_consumed3;
    SE_stall_entry_aunroll_toReg4 <= SE_stall_entry_aunroll_StallValid and SE_stall_entry_aunroll_consumed4;
    SE_stall_entry_aunroll_toReg5 <= SE_stall_entry_aunroll_StallValid and SE_stall_entry_aunroll_consumed5;
    SE_stall_entry_aunroll_toReg6 <= SE_stall_entry_aunroll_StallValid and SE_stall_entry_aunroll_consumed6;
    -- Backward Stall generation
    SE_stall_entry_aunroll_or0 <= SE_stall_entry_aunroll_consumed0;
    SE_stall_entry_aunroll_or1 <= SE_stall_entry_aunroll_consumed1 and SE_stall_entry_aunroll_or0;
    SE_stall_entry_aunroll_or2 <= SE_stall_entry_aunroll_consumed2 and SE_stall_entry_aunroll_or1;
    SE_stall_entry_aunroll_or3 <= SE_stall_entry_aunroll_consumed3 and SE_stall_entry_aunroll_or2;
    SE_stall_entry_aunroll_or4 <= SE_stall_entry_aunroll_consumed4 and SE_stall_entry_aunroll_or3;
    SE_stall_entry_aunroll_or5 <= SE_stall_entry_aunroll_consumed5 and SE_stall_entry_aunroll_or4;
    SE_stall_entry_aunroll_wireStall <= not (SE_stall_entry_aunroll_consumed6 and SE_stall_entry_aunroll_or5);
    SE_stall_entry_aunroll_backStall <= SE_stall_entry_aunroll_wireStall;
    -- Valid signal propagation
    SE_stall_entry_aunroll_V0 <= SE_stall_entry_aunroll_wireValid and not (SE_stall_entry_aunroll_fromReg0);
    SE_stall_entry_aunroll_V1 <= SE_stall_entry_aunroll_wireValid and not (SE_stall_entry_aunroll_fromReg1);
    SE_stall_entry_aunroll_V2 <= SE_stall_entry_aunroll_wireValid and not (SE_stall_entry_aunroll_fromReg2);
    SE_stall_entry_aunroll_V3 <= SE_stall_entry_aunroll_wireValid and not (SE_stall_entry_aunroll_fromReg3);
    SE_stall_entry_aunroll_V4 <= SE_stall_entry_aunroll_wireValid and not (SE_stall_entry_aunroll_fromReg4);
    SE_stall_entry_aunroll_V5 <= SE_stall_entry_aunroll_wireValid and not (SE_stall_entry_aunroll_fromReg5);
    SE_stall_entry_aunroll_V6 <= SE_stall_entry_aunroll_wireValid and not (SE_stall_entry_aunroll_fromReg6);
    -- Computing multiple Valid(s)
    SE_stall_entry_aunroll_wireValid <= in_valid_in;

    -- SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1(STALLENABLE,234)
    -- Valid signal propagation
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_V0 <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_backStall <= in_stall_in or not (SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and0 <= bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_reg_valid_out;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and1 <= redist0_stall_entry_aunroll_o6_9_fifo_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and0;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and2 <= i_ffwd_src_unnamed_processfpga124_processfpga_out_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and1;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and3 <= i_ffwd_src_unnamed_processfpga123_processfpga_out_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and2;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and4 <= i_ffwd_src_unnamed_processfpga122_processfpga_out_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and3;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and5 <= i_ffwd_src_unnamed_processfpga121_processfpga_out_valid_out and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and4;
    SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_wireValid <= i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_o_valid and SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_and5;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x(BLACKBOX,42)@0
    -- in in_i_stall@20000000
    -- out out_c0_exit919_0@9
    -- out out_intel_reserved_ffwd_61_0@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@9
    -- out out_unnamed_processFPGA116_avm_address@20000000
    -- out out_unnamed_processFPGA116_avm_burstcount@20000000
    -- out out_unnamed_processFPGA116_avm_byteenable@20000000
    -- out out_unnamed_processFPGA116_avm_enable@20000000
    -- out out_unnamed_processFPGA116_avm_read@20000000
    -- out out_unnamed_processFPGA116_avm_write@20000000
    -- out out_unnamed_processFPGA116_avm_writedata@20000000
    thei_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x : i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga
    PORT MAP (
        in_unnamed_processFPGA112_0 => GND_q,
        in_flush => in_flush,
        in_i_stall => SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_backStall,
        in_i_valid => SE_stall_entry_aunroll_V0,
        in_intel_reserved_ffwd_51_0 => in_intel_reserved_ffwd_51_0,
        in_intel_reserved_ffwd_52_0 => in_intel_reserved_ffwd_52_0,
        in_intel_reserved_ffwd_54_0 => in_intel_reserved_ffwd_54_0,
        in_intel_reserved_ffwd_56_0 => in_intel_reserved_ffwd_56_0,
        in_intel_reserved_ffwd_59_0 => in_intel_reserved_ffwd_59_0,
        in_localInput => in_localInput,
        in_unnamed_processFPGA116_avm_readdata => in_unnamed_processFPGA116_avm_readdata,
        in_unnamed_processFPGA116_avm_readdatavalid => in_unnamed_processFPGA116_avm_readdatavalid,
        in_unnamed_processFPGA116_avm_waitrequest => in_unnamed_processFPGA116_avm_waitrequest,
        in_unnamed_processFPGA116_avm_writeack => in_unnamed_processFPGA116_avm_writeack,
        out_intel_reserved_ffwd_61_0 => i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_intel_reserved_ffwd_61_0,
        out_o_stall => i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_o_valid,
        out_unnamed_processFPGA116_avm_address => i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_address,
        out_unnamed_processFPGA116_avm_burstcount => i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_burstcount,
        out_unnamed_processFPGA116_avm_byteenable => i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_byteenable,
        out_unnamed_processFPGA116_avm_enable => i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_enable,
        out_unnamed_processFPGA116_avm_read => i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_read,
        out_unnamed_processFPGA116_avm_write => i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_write,
        out_unnamed_processFPGA116_avm_writedata => i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_regfree_osync_x(GPOUT,10)
    out_intel_reserved_ffwd_61_0 <= i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_intel_reserved_ffwd_61_0;

    -- bubble_join_redist0_stall_entry_aunroll_o6_9_fifo(BITJOIN,149)
    bubble_join_redist0_stall_entry_aunroll_o6_9_fifo_q <= redist0_stall_entry_aunroll_o6_9_fifo_data_out;

    -- bubble_select_redist0_stall_entry_aunroll_o6_9_fifo(BITSELECT,150)
    bubble_select_redist0_stall_entry_aunroll_o6_9_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist0_stall_entry_aunroll_o6_9_fifo_q(31 downto 0));

    -- dupName_0_sync_out_x(GPOUT,11)@9
    out_c0_exe2917 <= bubble_select_redist0_stall_entry_aunroll_o6_9_fifo_b;
    out_valid_out <= SE_out_bubble_out_i_ffwd_src_unnamed_processfpga120_processfpga_1_V0;

    -- dupName_1_regfree_osync_x(GPOUT,15)
    out_intel_reserved_ffwd_62_0 <= i_ffwd_src_unnamed_processfpga121_processfpga_out_intel_reserved_ffwd_62_0;

    -- dupName_2_regfree_osync_x(GPOUT,19)
    out_intel_reserved_ffwd_63_0 <= i_ffwd_src_unnamed_processfpga122_processfpga_out_intel_reserved_ffwd_63_0;

    -- dupName_3_regfree_osync_x(GPOUT,23)
    out_intel_reserved_ffwd_64_0 <= i_ffwd_src_unnamed_processfpga123_processfpga_out_intel_reserved_ffwd_64_0;

    -- dupName_4_regfree_osync_x(GPOUT,27)
    out_intel_reserved_ffwd_65_0 <= i_ffwd_src_unnamed_processfpga124_processfpga_out_intel_reserved_ffwd_65_0;

    -- ext_sig_sync_out(GPOUT,54)
    out_unnamed_processFPGA116_avm_address <= i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_address;
    out_unnamed_processFPGA116_avm_enable <= i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_enable;
    out_unnamed_processFPGA116_avm_read <= i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_read;
    out_unnamed_processFPGA116_avm_write <= i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_write;
    out_unnamed_processFPGA116_avm_writedata <= i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_writedata;
    out_unnamed_processFPGA116_avm_byteenable <= i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_byteenable;
    out_unnamed_processFPGA116_avm_burstcount <= i_sfc_c0_for_end_i_i1057_loopexit_loopexit_processfpga_c0_enter918_processfpga_aunroll_x_out_unnamed_processFPGA116_avm_burstcount;

    -- regfree_osync(GPOUT,87)
    out_intel_reserved_ffwd_60_0 <= i_ffwd_src_unnamed_processfpga120_processfpga_out_intel_reserved_ffwd_60_0;

    -- sync_out(GPOUT,93)@0
    out_stall_out <= SE_stall_entry_aunroll_backStall;

END normal;
