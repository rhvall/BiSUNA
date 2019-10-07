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

-- VHDL created from i_sfc_logic_c0_for_body49_i_processfpga_c0_enter1015_processfpga1852
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

entity i_sfc_logic_c0_for_body49_i_processfpga_c0_enter1015_processfpga1852 is
    port (
        in_memcoalesce_localNeurons_load_066_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memcoalesce_localNeurons_load_066_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_066_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memcoalesce_localNeurons_load_066_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_066_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_066_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_066_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_066_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memcoalesce_localNeurons_load_066_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memcoalesce_localNeurons_load_066_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memcoalesce_localNeurons_load_066_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni11014_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni11014_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_111_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_114_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_127_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_intel_reserved_ffwd_119_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_120_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_121_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA262_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA258_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_unnamed_processFPGA258_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA258_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA258_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA258_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA258_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA258_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA258_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA258_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_unnamed_processFPGA258_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_unnamed_processFPGA258_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body49_i_processfpga_c0_enter1015_processfpga1852;

architecture normal of i_sfc_logic_c0_for_body49_i_processfpga_c0_enter1015_processfpga1852 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_load_memcoalesce_localneurons_load_066_processfpga1868 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_066_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_066_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_066_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memcoalesce_localNeurons_load_066_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata_0 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_2 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_readdata_3 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_066_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_066_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_066_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_066_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_066_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_066_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memcoalesce_localNeurons_load_066_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_dec_i856538_processfpga1854 is
        port (
            in_intel_reserved_ffwd_127_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_127_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_do_directly_for_end_i801_loopexit_select516_processfpga1856 is
        port (
            in_intel_reserved_ffwd_111_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_111_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_phi_decision1634_xor_or525_processfpga1866 is
        port (
            in_intel_reserved_ffwd_114_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_114_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_phi_decision1634_xor_or526_processfpga1859 is
        port (
            in_intel_reserved_ffwd_114_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_114_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga259_processfpga1872 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_119_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_119_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga260_processfpga1874 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_120_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_120_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga261_processfpga1876 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_121_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_121_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_processfpga258_processfpga1861 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA258_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_unnamed_processFPGA258_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA258_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA258_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA258_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA258_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA258_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_unnamed_processFPGA258_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA258_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA258_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA258_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_localneurons_sync_buffer57_processfpga1863 is
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
    signal i_arrayidx52_i_processfpga_processfpga1858_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_multconst_x_q : STD_LOGIC_VECTOR (61 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom51_i_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_o_readdata_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_o_readdata_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_multconst_x_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_c_i64_4gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_localneurons_zext_061_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_normls_or503_compressed_processfpga_processfpga1871_normls_or503_bitvec_join_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_activeneuronscounter_3_i1310_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_activeneuronscounter_3_i1310_replace_phi_processfpga_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx52_i_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx52_i_processfpga_vt_select_63_b : STD_LOGIC_VECTOR (62 downto 0);
    signal i_ffwd_dst_dec_i856538_processfpga_out_dest_data_out_127_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_do_directly_for_end_i801_loopexit_select516_processfpga_out_dest_data_out_111_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_phi_decision1634_xor_or525_processfpga_out_dest_data_out_114_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_phi_decision1634_xor_or526_processfpga_out_dest_data_out_114_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga259_processfpga_out_intel_reserved_ffwd_119_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_processfpga260_processfpga_out_intel_reserved_ffwd_120_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_src_unnamed_processfpga261_processfpga_out_intel_reserved_ffwd_121_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga258_processfpga_out_o_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_memcoalesce_localneurons_zext_061_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_memcoalesce_localneurons_zext_061_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_memcoalesce_localneurons_zext_061_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_syncbuf_localneurons_sync_buffer57_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_join_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_14_q : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_14_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_join_16_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx52_i_processfpga_processfpga1858_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_activeneuronscounter_3_i1310_replace_phi_processfpga_q_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_sync_in_aunroll_x_in_i_valid_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_sync_in_aunroll_x_in_i_valid_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sync_in_aunroll_x_in_i_valid_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist7_i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist1_sync_in_aunroll_x_in_i_valid_1(DELAY,144)
    redist1_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist1_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist2_sync_in_aunroll_x_in_i_valid_5(DELAY,145)
    redist2_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_sync_in_aunroll_x_in_i_valid_1_q, xout => redist2_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- redist3_sync_in_aunroll_x_in_i_valid_7(DELAY,146)
    redist3_sync_in_aunroll_x_in_i_valid_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_sync_in_aunroll_x_in_i_valid_5_q, xout => redist3_sync_in_aunroll_x_in_i_valid_7_q, clk => clock, aclr => resetn );

    -- redist4_sync_in_aunroll_x_in_i_valid_8(DELAY,147)
    redist4_sync_in_aunroll_x_in_i_valid_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_sync_in_aunroll_x_in_i_valid_7_q, xout => redist4_sync_in_aunroll_x_in_i_valid_8_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_ffwd_dst_phi_decision1634_xor_or525_processfpga(BLACKBOX,71)@9
    thei_ffwd_dst_phi_decision1634_xor_or525_processfpga : i_ffwd_dst_phi_decision1634_xor_or525_processfpga1866
    PORT MAP (
        in_intel_reserved_ffwd_114_0 => in_intel_reserved_ffwd_114_0,
        in_stall_in => GND_q,
        in_valid_in => redist4_sync_in_aunroll_x_in_i_valid_8_q,
        out_dest_data_out_114_0 => i_ffwd_dst_phi_decision1634_xor_or525_processfpga_out_dest_data_out_114_0,
        clock => clock,
        resetn => resetn
    );

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_c_i64_4gr_x(CONSTANT,36)
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_c_i64_4gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000100";

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_multconst_x(CONSTANT,32)
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_multconst_x_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_shift0(BITSHIFT,131)@6
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_shift0_qint <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_c & "0";
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_shift0_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_shift0_qint(10 downto 0);

    -- i_memcoalesce_localneurons_zext_061_processfpga_vt_const_63(CONSTANT,81)
    i_memcoalesce_localneurons_zext_061_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_phi_decision1634_xor_or526_processfpga(BLACKBOX,72)@2
    thei_ffwd_dst_phi_decision1634_xor_or526_processfpga : i_ffwd_dst_phi_decision1634_xor_or526_processfpga1859
    PORT MAP (
        in_intel_reserved_ffwd_114_0 => in_intel_reserved_ffwd_114_0,
        in_stall_in => GND_q,
        in_valid_in => redist1_sync_in_aunroll_x_in_i_valid_1_q,
        out_dest_data_out_114_0 => i_ffwd_dst_phi_decision1634_xor_or526_processfpga_out_dest_data_out_114_0,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx52_i_processfpga_processfpga1858_mult_multconst_x(CONSTANT,17)
    i_arrayidx52_i_processfpga_processfpga1858_mult_multconst_x_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_do_directly_for_end_i801_loopexit_select516_processfpga(BLACKBOX,70)@1
    thei_ffwd_dst_do_directly_for_end_i801_loopexit_select516_processfpga : i_ffwd_dst_do_directly_for_end_i801_loopexit_select516_processfpga1856
    PORT MAP (
        in_intel_reserved_ffwd_111_0 => in_intel_reserved_ffwd_111_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_111_0 => i_ffwd_dst_do_directly_for_end_i801_loopexit_select516_processfpga_out_dest_data_out_111_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_dec_i856538_processfpga(BLACKBOX,69)@1
    thei_ffwd_dst_dec_i856538_processfpga : i_ffwd_dst_dec_i856538_processfpga1854
    PORT MAP (
        in_intel_reserved_ffwd_127_0 => in_intel_reserved_ffwd_127_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_127_0 => i_ffwd_dst_dec_i856538_processfpga_out_dest_data_out_127_0,
        clock => clock,
        resetn => resetn
    );

    -- i_activeneuronscounter_3_i1310_replace_phi_processfpga(MUX,65)@1
    i_activeneuronscounter_3_i1310_replace_phi_processfpga_s <= in_c0_eni11014_1;
    i_activeneuronscounter_3_i1310_replace_phi_processfpga_combproc: PROCESS (i_activeneuronscounter_3_i1310_replace_phi_processfpga_s, i_ffwd_dst_dec_i856538_processfpga_out_dest_data_out_127_0, i_ffwd_dst_do_directly_for_end_i801_loopexit_select516_processfpga_out_dest_data_out_111_0)
    BEGIN
        CASE (i_activeneuronscounter_3_i1310_replace_phi_processfpga_s) IS
            WHEN "0" => i_activeneuronscounter_3_i1310_replace_phi_processfpga_q <= i_ffwd_dst_dec_i856538_processfpga_out_dest_data_out_127_0;
            WHEN "1" => i_activeneuronscounter_3_i1310_replace_phi_processfpga_q <= i_ffwd_dst_do_directly_for_end_i801_loopexit_select516_processfpga_out_dest_data_out_111_0;
            WHEN OTHERS => i_activeneuronscounter_3_i1310_replace_phi_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist0_i_activeneuronscounter_3_i1310_replace_phi_processfpga_q_1(DELAY,143)
    redist0_i_activeneuronscounter_3_i1310_replace_phi_processfpga_q_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_activeneuronscounter_3_i1310_replace_phi_processfpga_q, xout => redist0_i_activeneuronscounter_3_i1310_replace_phi_processfpga_q_1_q, clk => clock, aclr => resetn );

    -- i_idxprom51_i_processfpga_sel_x(BITSELECT,23)@2
    i_idxprom51_i_processfpga_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist0_i_activeneuronscounter_3_i1310_replace_phi_processfpga_q_1_q(31 downto 0)), 64)));

    -- i_arrayidx52_i_processfpga_processfpga1858_mult_x_bs1_merged_bit_select(BITSELECT,140)@2
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_bs1_merged_bit_select_b <= i_idxprom51_i_processfpga_sel_x_b(17 downto 0);
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_bs1_merged_bit_select_c <= i_idxprom51_i_processfpga_sel_x_b(63 downto 54);
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_bs1_merged_bit_select_d <= i_idxprom51_i_processfpga_sel_x_b(35 downto 18);
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_bs1_merged_bit_select_e <= i_idxprom51_i_processfpga_sel_x_b(53 downto 36);

    -- i_arrayidx52_i_processfpga_processfpga1858_mult_x_im3_shift0(BITSHIFT,125)@2
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_im3_shift0_qint <= i_arrayidx52_i_processfpga_processfpga1858_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_im3_shift0_q <= i_arrayidx52_i_processfpga_processfpga1858_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_15(BITSHIFT,101)@2
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx52_i_processfpga_processfpga1858_mult_x_im3_shift0_q) & "0000000000000000";
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_15_q <= i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx52_i_processfpga_processfpga1858_mult_x_im6_shift0(BITSHIFT,126)@2
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_im6_shift0_qint <= i_arrayidx52_i_processfpga_processfpga1858_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_im6_shift0_q <= i_arrayidx52_i_processfpga_processfpga1858_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_14(BITSHIFT,100)@2
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx52_i_processfpga_processfpga1858_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_14_q <= i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_14_qint(37 downto 0);

    -- i_arrayidx52_i_processfpga_processfpga1858_mult_x_join_16(BITJOIN,102)@2
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_join_16_q <= i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_15_q & i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_14_q;

    -- i_arrayidx52_i_processfpga_processfpga1858_mult_x_im9_shift0(BITSHIFT,127)@2
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_im9_shift0_qint <= i_arrayidx52_i_processfpga_processfpga1858_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_im9_shift0_q <= i_arrayidx52_i_processfpga_processfpga1858_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_12(BITSHIFT,98)@2
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx52_i_processfpga_processfpga1858_mult_x_im9_shift0_q) & "0000000000000000";
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_12_q <= i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx52_i_processfpga_processfpga1858_mult_x_im0_shift0(BITSHIFT,124)@2
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_im0_shift0_qint <= i_arrayidx52_i_processfpga_processfpga1858_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_im0_shift0_q <= i_arrayidx52_i_processfpga_processfpga1858_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx52_i_processfpga_processfpga1858_mult_x_join_13(BITJOIN,99)@2
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_join_13_q <= i_arrayidx52_i_processfpga_processfpga1858_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx52_i_processfpga_processfpga1858_mult_x_im0_shift0_q);

    -- i_arrayidx52_i_processfpga_processfpga1858_mult_x_result_add_0_0(ADD,103)@2
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx52_i_processfpga_processfpga1858_mult_x_join_13_q);
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx52_i_processfpga_processfpga1858_mult_x_join_16_q);
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx52_i_processfpga_processfpga1858_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx52_i_processfpga_processfpga1858_mult_x_result_add_0_0_b));
    i_arrayidx52_i_processfpga_processfpga1858_mult_x_result_add_0_0_q <= i_arrayidx52_i_processfpga_processfpga1858_mult_x_result_add_0_0_o(66 downto 0);

    -- i_arrayidx52_i_processfpga_processfpga1858_mult_extender_x(BITJOIN,16)@2
    i_arrayidx52_i_processfpga_processfpga1858_mult_extender_x_q <= i_arrayidx52_i_processfpga_processfpga1858_mult_multconst_x_q & i_arrayidx52_i_processfpga_processfpga1858_mult_x_result_add_0_0_q(65 downto 0);

    -- i_arrayidx52_i_processfpga_processfpga1858_trunc_sel_x(BITSELECT,18)@2
    i_arrayidx52_i_processfpga_processfpga1858_trunc_sel_x_b <= i_arrayidx52_i_processfpga_processfpga1858_mult_extender_x_q(63 downto 0);

    -- i_arrayidx52_i_processfpga_processfpga1858_dupName_0_trunc_sel_x(BITSELECT,13)@2
    i_arrayidx52_i_processfpga_processfpga1858_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_arrayidx52_i_processfpga_processfpga1858_trunc_sel_x_b);
    i_arrayidx52_i_processfpga_processfpga1858_dupName_0_trunc_sel_x_b <= i_arrayidx52_i_processfpga_processfpga1858_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_arrayidx52_i_processfpga_vt_select_63(BITSELECT,68)@2
    i_arrayidx52_i_processfpga_vt_select_63_b <= i_arrayidx52_i_processfpga_processfpga1858_dupName_0_trunc_sel_x_b(63 downto 1);

    -- i_arrayidx52_i_processfpga_vt_join(BITJOIN,67)@2
    i_arrayidx52_i_processfpga_vt_join_q <= i_arrayidx52_i_processfpga_vt_select_63_b & GND_q;

    -- i_load_unnamed_processfpga258_processfpga(BLACKBOX,78)@2
    -- in in_i_stall@20000000
    -- out out_o_readdata@6
    -- out out_o_stall@5
    -- out out_o_valid@6
    -- out out_unnamed_processFPGA258_avm_address@20000000
    -- out out_unnamed_processFPGA258_avm_burstcount@20000000
    -- out out_unnamed_processFPGA258_avm_byteenable@20000000
    -- out out_unnamed_processFPGA258_avm_enable@20000000
    -- out out_unnamed_processFPGA258_avm_read@20000000
    -- out out_unnamed_processFPGA258_avm_write@20000000
    -- out out_unnamed_processFPGA258_avm_writedata@20000000
    thei_load_unnamed_processfpga258_processfpga : i_load_unnamed_processfpga258_processfpga1861
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx52_i_processfpga_vt_join_q,
        in_i_predicate => i_ffwd_dst_phi_decision1634_xor_or526_processfpga_out_dest_data_out_114_0,
        in_i_stall => GND_q,
        in_i_valid => redist1_sync_in_aunroll_x_in_i_valid_1_q,
        in_unnamed_processFPGA258_avm_readdata => in_unnamed_processFPGA258_avm_readdata,
        in_unnamed_processFPGA258_avm_readdatavalid => in_unnamed_processFPGA258_avm_readdatavalid,
        in_unnamed_processFPGA258_avm_waitrequest => in_unnamed_processFPGA258_avm_waitrequest,
        in_unnamed_processFPGA258_avm_writeack => in_unnamed_processFPGA258_avm_writeack,
        out_o_readdata => i_load_unnamed_processfpga258_processfpga_out_o_readdata,
        out_unnamed_processFPGA258_avm_address => i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_address,
        out_unnamed_processFPGA258_avm_burstcount => i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_burstcount,
        out_unnamed_processFPGA258_avm_byteenable => i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_byteenable,
        out_unnamed_processFPGA258_avm_enable => i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_enable,
        out_unnamed_processFPGA258_avm_read => i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_read,
        out_unnamed_processFPGA258_avm_write => i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_write,
        out_unnamed_processFPGA258_avm_writedata => i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- i_memcoalesce_localneurons_zext_061_processfpga_sel_x(BITSELECT,39)@6
    i_memcoalesce_localneurons_zext_061_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(i_load_unnamed_processfpga258_processfpga_out_o_readdata(15 downto 0)), 64));

    -- i_memcoalesce_localneurons_zext_061_processfpga_vt_select_15(BITSELECT,83)@6
    i_memcoalesce_localneurons_zext_061_processfpga_vt_select_15_b <= i_memcoalesce_localneurons_zext_061_processfpga_sel_x_b(15 downto 0);

    -- i_memcoalesce_localneurons_zext_061_processfpga_vt_join(BITJOIN,82)@6
    i_memcoalesce_localneurons_zext_061_processfpga_vt_join_q <= i_memcoalesce_localneurons_zext_061_processfpga_vt_const_63_q & i_memcoalesce_localneurons_zext_061_processfpga_vt_select_15_b;

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select(BITSELECT,142)@6
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_b <= i_memcoalesce_localneurons_zext_061_processfpga_vt_join_q(17 downto 0);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_c <= i_memcoalesce_localneurons_zext_061_processfpga_vt_join_q(63 downto 54);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_d <= i_memcoalesce_localneurons_zext_061_processfpga_vt_join_q(35 downto 18);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_e <= i_memcoalesce_localneurons_zext_061_processfpga_vt_join_q(53 downto 36);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_add_1(ADD,132)@6 + 1
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_c);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_shift0_q);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_add_1_a) + UNSIGNED(i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_add_1_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_add_1_o(11 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_shift2(BITSHIFT,133)@7
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_shift2_qint <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_add_1_q & "00";
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_shift2_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_shift2_qint(13 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_15(BITSHIFT,119)@7
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_15_qint <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im3_shift2_q & "00000000000000";
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_15_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_15_qint(27 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_shift0(BITSHIFT,134)@6
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_shift0_qint <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_d & "0";
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_shift0_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_shift0_qint(18 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_add_1(ADD,135)@6 + 1
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_d);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_shift0_q);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_add_1_a) + UNSIGNED(i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_add_1_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_add_1_o(19 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_shift2(BITSHIFT,136)@7
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_shift2_qint <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_add_1_q & "00";
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_shift2_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_shift2_qint(21 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_14(BITSHIFT,118)@7
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_14_qint <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im6_shift2_q & "000000000000000000";
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_14_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_14_qint(39 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_join_16(BITJOIN,120)@7
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_join_16_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_15_q & i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_14_q;

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_shift0(BITSHIFT,137)@6
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_shift0_qint <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_e & "0";
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_shift0_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_shift0_qint(18 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_add_1(ADD,138)@6 + 1
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_e);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_shift0_q);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_add_1_a) + UNSIGNED(i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_add_1_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_add_1_o(19 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_shift2(BITSHIFT,139)@7
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_shift2_qint <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_add_1_q & "00";
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_shift2_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_shift2_qint(21 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_12(BITSHIFT,116)@7
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_12_qint <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im9_shift2_q & "00000000000000";
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_12_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_12_qint(35 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_shift0(BITSHIFT,128)@6
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_shift0_qint <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_b & "0";
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_shift0_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_shift0_qint(18 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_add_1(ADD,129)@6 + 1
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_bs1_merged_bit_select_b);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_shift0_q);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_add_1_a) + UNSIGNED(i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_add_1_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_add_1_o(19 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_shift2(BITSHIFT,130)@7
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_shift2_qint <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_add_1_q & "00";
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_shift2_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_shift2_qint(21 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_join_13(BITJOIN,117)@7
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_join_13_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_align_12_q & i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_im0_shift2_q;

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_result_add_0_0(ADD,121)@7
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_join_13_q);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_join_16_q);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_result_add_0_0_a) + UNSIGNED(i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_result_add_0_0_b));
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_result_add_0_0_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_result_add_0_0_o(68 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_extender_x(BITJOIN,31)@7
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_extender_x_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_multconst_x_q & i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_x_result_add_0_0_q(67 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_trunc_sel_x(BITSELECT,33)@7
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_trunc_sel_x_b <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_mult_extender_x_q(63 downto 0);

    -- redist6_i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_trunc_sel_x_b_1(DELAY,149)
    redist6_i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_trunc_sel_x_b, xout => redist6_i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer57_processfpga(BLACKBOX,84)@0
    -- in in_i_dependence@8
    -- in in_valid_in@8
    -- out out_buffer_out@8
    -- out out_valid_out@8
    thei_syncbuf_localneurons_sync_buffer57_processfpga : i_syncbuf_localneurons_sync_buffer57_processfpga1863
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist3_sync_in_aunroll_x_in_i_valid_7_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer57_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_add_x(ADD,34)@8
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer57_processfpga_out_buffer_out);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_add_x_b <= STD_LOGIC_VECTOR("0" & redist6_i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_trunc_sel_x_b_1_q);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_add_x_a) + UNSIGNED(i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_add_x_b));
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_add_x_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_add_x_o(64 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_trunc_sel_x(BITSELECT,25)@8
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_trunc_sel_x_b <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_add_x_q(63 downto 0);

    -- redist7_i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_trunc_sel_x_b_1(DELAY,150)
    redist7_i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_trunc_sel_x_b, xout => redist7_i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_add_x(ADD,28)@9
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist7_i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_trunc_sel_x_b_1_q);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_c_i64_4gr_x_q);
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_add_x_a) + UNSIGNED(i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_add_x_b));
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_add_x_q <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_add_x_o(64 downto 0);

    -- i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_1_trunc_sel_x(BITSELECT,26)@9
    i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_1_trunc_sel_x_b <= i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_0_add_x_q(63 downto 0);

    -- i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x(BLACKBOX,24)@9
    -- in in_i_stall@20000000
    -- out out_o_readdata_0@14
    -- out out_o_readdata_1@14
    -- out out_o_readdata_2@14
    -- out out_o_readdata_3@14
    -- out out_memcoalesce_localNeurons_load_066_avm_address@20000000
    -- out out_memcoalesce_localNeurons_load_066_avm_burstcount@20000000
    -- out out_memcoalesce_localNeurons_load_066_avm_byteenable@20000000
    -- out out_memcoalesce_localNeurons_load_066_avm_enable@20000000
    -- out out_memcoalesce_localNeurons_load_066_avm_read@20000000
    -- out out_memcoalesce_localNeurons_load_066_avm_write@20000000
    -- out out_memcoalesce_localNeurons_load_066_avm_writedata@20000000
    -- out out_o_stall@13
    -- out out_o_valid@14
    thei_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x : i_load_memcoalesce_localneurons_load_066_processfpga1868
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_memcoalesce_localneurons_gep_063_processfpga_processfpga1865_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_phi_decision1634_xor_or525_processfpga_out_dest_data_out_114_0,
        in_i_stall => GND_q,
        in_i_valid => redist4_sync_in_aunroll_x_in_i_valid_8_q,
        in_memcoalesce_localNeurons_load_066_avm_readdata => in_memcoalesce_localNeurons_load_066_avm_readdata,
        in_memcoalesce_localNeurons_load_066_avm_readdatavalid => in_memcoalesce_localNeurons_load_066_avm_readdatavalid,
        in_memcoalesce_localNeurons_load_066_avm_waitrequest => in_memcoalesce_localNeurons_load_066_avm_waitrequest,
        in_memcoalesce_localNeurons_load_066_avm_writeack => in_memcoalesce_localNeurons_load_066_avm_writeack,
        out_o_readdata_1 => i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_o_readdata_1,
        out_o_readdata_2 => i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_o_readdata_2,
        out_memcoalesce_localNeurons_load_066_avm_address => i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_address,
        out_memcoalesce_localNeurons_load_066_avm_burstcount => i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_burstcount,
        out_memcoalesce_localNeurons_load_066_avm_byteenable => i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_byteenable,
        out_memcoalesce_localNeurons_load_066_avm_enable => i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_enable,
        out_memcoalesce_localNeurons_load_066_avm_read => i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_read,
        out_memcoalesce_localNeurons_load_066_avm_write => i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_write,
        out_memcoalesce_localNeurons_load_066_avm_writedata => i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,4)
    out_memcoalesce_localNeurons_load_066_avm_address <= i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_address;
    out_memcoalesce_localNeurons_load_066_avm_enable <= i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_enable;
    out_memcoalesce_localNeurons_load_066_avm_read <= i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_read;
    out_memcoalesce_localNeurons_load_066_avm_write <= i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_write;
    out_memcoalesce_localNeurons_load_066_avm_writedata <= i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_writedata;
    out_memcoalesce_localNeurons_load_066_avm_byteenable <= i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_byteenable;
    out_memcoalesce_localNeurons_load_066_avm_burstcount <= i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_memcoalesce_localNeurons_load_066_avm_burstcount;

    -- redist5_sync_in_aunroll_x_in_i_valid_13(DELAY,148)
    redist5_sync_in_aunroll_x_in_i_valid_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist4_sync_in_aunroll_x_in_i_valid_8_q, xout => redist5_sync_in_aunroll_x_in_i_valid_13_q, clk => clock, aclr => resetn );

    -- i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x(BITJOIN,56)@14
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q <= i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_o_readdata_2 & i_load_memcoalesce_localneurons_load_066_processfpga_aunroll_x_out_o_readdata_1;

    -- i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select(BITSELECT,141)@14
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_b <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(0 downto 0);
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_c <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(1 downto 1);
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_d <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(10 downto 10);
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_e <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(11 downto 11);
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_f <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(12 downto 12);
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_g <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(13 downto 13);
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_h <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(14 downto 14);
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_i <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(15 downto 15);
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_j <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(2 downto 2);
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_k <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(3 downto 3);
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_l <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(4 downto 4);
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_m <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(5 downto 5);
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_n <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(6 downto 6);
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_o <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(7 downto 7);
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_p <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(8 downto 8);
    i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_q <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_vec_1_join_x_q(9 downto 9);

    -- i_normls_or503_compressed_processfpga_processfpga1871_normls_or503_bitvec_join_x(BITJOIN,57)@14
    i_normls_or503_compressed_processfpga_processfpga1871_normls_or503_bitvec_join_x_q <= i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_i & i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_h & i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_g & i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_f & i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_e & i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_d & i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_q & i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_p & i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_o & i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_n & i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_m & i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_l & i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_k & i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_j & i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_c & i_normls_or503_bitvec_processfpga_processfpga1870_normls_or503_bitvec_select_0_x_merged_bit_select_b;

    -- i_ffwd_src_unnamed_processfpga261_processfpga(BLACKBOX,75)@14
    -- out out_intel_reserved_ffwd_121_0@20000000
    thei_ffwd_src_unnamed_processfpga261_processfpga : i_ffwd_src_unnamed_processfpga261_processfpga1876
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_121_0 => i_normls_or503_compressed_processfpga_processfpga1871_normls_or503_bitvec_join_x_q,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_13_q,
        out_intel_reserved_ffwd_121_0 => i_ffwd_src_unnamed_processfpga261_processfpga_out_intel_reserved_ffwd_121_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga260_processfpga(BLACKBOX,74)@6
    -- out out_intel_reserved_ffwd_120_0@20000000
    thei_ffwd_src_unnamed_processfpga260_processfpga : i_ffwd_src_unnamed_processfpga260_processfpga1874
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_120_0 => i_load_unnamed_processfpga258_processfpga_out_o_readdata,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_aunroll_x_in_i_valid_5_q,
        out_intel_reserved_ffwd_120_0 => i_ffwd_src_unnamed_processfpga260_processfpga_out_intel_reserved_ffwd_120_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga259_processfpga(BLACKBOX,73)@1
    -- out out_intel_reserved_ffwd_119_0@20000000
    thei_ffwd_src_unnamed_processfpga259_processfpga : i_ffwd_src_unnamed_processfpga259_processfpga1872
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_119_0 => i_activeneuronscounter_3_i1310_replace_phi_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_intel_reserved_ffwd_119_0 => i_ffwd_src_unnamed_processfpga259_processfpga_out_intel_reserved_ffwd_119_0,
        clock => clock,
        resetn => resetn
    );

    -- sync_out_aunroll_x(GPOUT,59)@14
    out_intel_reserved_ffwd_119_0 <= i_ffwd_src_unnamed_processfpga259_processfpga_out_intel_reserved_ffwd_119_0;
    out_intel_reserved_ffwd_120_0 <= i_ffwd_src_unnamed_processfpga260_processfpga_out_intel_reserved_ffwd_120_0;
    out_intel_reserved_ffwd_121_0 <= i_ffwd_src_unnamed_processfpga261_processfpga_out_intel_reserved_ffwd_121_0;
    out_o_valid <= redist5_sync_in_aunroll_x_in_i_valid_13_q;
    out_unnamed_processFPGA262_0 <= GND_q;

    -- ext_sig_sync_out(GPOUT,64)
    out_unnamed_processFPGA258_avm_address <= i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_address;
    out_unnamed_processFPGA258_avm_enable <= i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_enable;
    out_unnamed_processFPGA258_avm_read <= i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_read;
    out_unnamed_processFPGA258_avm_write <= i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_write;
    out_unnamed_processFPGA258_avm_writedata <= i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_writedata;
    out_unnamed_processFPGA258_avm_byteenable <= i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_byteenable;
    out_unnamed_processFPGA258_avm_burstcount <= i_load_unnamed_processfpga258_processfpga_out_unnamed_processFPGA258_avm_burstcount;

END normal;
