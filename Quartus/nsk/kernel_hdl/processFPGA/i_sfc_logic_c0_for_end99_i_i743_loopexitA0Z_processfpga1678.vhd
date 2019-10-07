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

-- VHDL created from i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678
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

entity i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678 is
    port (
        in_normls_load482_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load482_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load482_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load482_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load482_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load482_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load482_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load482_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load482_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load482_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load482_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_26_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_26_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_26_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_26_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_26_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_26_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_26_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_26_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_26_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_26_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_26_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_27_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_memdep_27_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_27_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_27_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_27_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_27_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_27_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_27_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_27_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_27_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_memdep_27_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_28_avm_readdata : in std_logic_vector(15 downto 0);  -- ufix16
        in_memdep_28_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_28_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_memdep_28_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_28_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_memdep_28_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_28_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_28_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_memdep_28_avm_writedata : out std_logic_vector(15 downto 0);  -- ufix16
        out_memdep_28_avm_byteenable : out std_logic_vector(1 downto 0);  -- ufix2
        out_memdep_28_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA243_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load477_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_normls_load477_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load477_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_normls_load477_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load477_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load477_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load477_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load477_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_normls_load477_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_normls_load477_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_normls_load477_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_104_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_intel_reserved_ffwd_6_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_intel_reserved_ffwd_93_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_intel_reserved_ffwd_94_0 : in std_logic_vector(63 downto 0);  -- ufix64
        in_intel_reserved_ffwd_95_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_intel_reserved_ffwd_98_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        in_localOutput : in std_logic_vector(63 downto 0);  -- ufix64
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678;

architecture normal of i_sfc_logic_c0_for_end99_i_i743_loopexit_loopexit_processfpga_c0_enter1000_processfpga1678 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_ffwd_dst_acl_4325_processfpga1729 is
        port (
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_6_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_acl_954503_processfpga1684 is
        port (
            in_intel_reserved_ffwd_104_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_104_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_acl_954504_processfpga1682 is
        port (
            in_intel_reserved_ffwd_104_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_104_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_idx_1_i1324_replace_phi493_processfpga1731 is
        port (
            in_intel_reserved_ffwd_93_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_93_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_idxprom_i571495_processfpga1713 is
        port (
            in_intel_reserved_ffwd_94_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_94_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_idxprom_i571496_processfpga1688 is
        port (
            in_intel_reserved_ffwd_94_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_94_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga235_processfpga1680 is
        port (
            in_intel_reserved_ffwd_95_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_95_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga236_processfpga1691 is
        port (
            in_intel_reserved_ffwd_98_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_98_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga237_processfpga1696 is
        port (
            in_intel_reserved_ffwd_98_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_98_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga238_processfpga1702 is
        port (
            in_intel_reserved_ffwd_95_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_95_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga239_processfpga1716 is
        port (
            in_intel_reserved_ffwd_98_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_98_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga240_processfpga1722 is
        port (
            in_intel_reserved_ffwd_98_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_98_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga241_processfpga1726 is
        port (
            in_intel_reserved_ffwd_95_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_95_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga242_processfpga1736 is
        port (
            in_intel_reserved_ffwd_98_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_98_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component thirtysix_six_comp is
        port (
            data : in std_logic_vector(31 downto 0);
            sum : out std_logic_vector(31 downto 0)
        );
    end component;


    component i_load_normls_load477_processfpga1693 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load477_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load477_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load477_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load477_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load477_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load477_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load477_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load477_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load477_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load477_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load477_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_normls_load482_processfpga1698 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load482_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_normls_load482_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load482_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_normls_load482_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load482_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_normls_load482_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load482_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_normls_load482_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load482_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load482_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_normls_load482_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_26_processfpga1718 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_memdep_26_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_26_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_26_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_26_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_26_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_26_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_26_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_26_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_26_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_26_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_26_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_27_processfpga1724 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_memdep_27_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_memdep_27_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_27_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_27_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_27_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_27_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_27_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_memdep_27_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_27_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_27_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_27_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_memdep_28_processfpga1738 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_memdep_28_avm_readdata : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_memdep_28_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_28_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_memdep_28_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_28_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_memdep_28_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_28_avm_byteenable : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_memdep_28_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_28_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_28_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_memdep_28_avm_writedata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_writeack : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_localneurons_sync_buffer90_processfpga1711 is
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


    component i_syncbuf_localneurons_sync_buffer91_processfpga1686 is
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


    component i_syncbuf_localoutput_sync_buffer168_processfpga1733 is
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
    signal bgTrunc_i_sub_i_i790_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal dupName_0_c_i16_1gr_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal dupName_0_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_2_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_2_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_3_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_3_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_4_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_4_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_5_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_5_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_multconst_x_q : STD_LOGIC_VECTOR (61 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_multconst_x_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_c_i64_7gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_c_i64_5gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom118_i_i792_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep481_processfpga_processfpga1695_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep481_processfpga_processfpga1695_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep481_processfpga_processfpga1695_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep481_processfpga_processfpga1695_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep481_processfpga_processfpga1695_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep481_processfpga_processfpga1695_c_i64_1gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep490_processfpga_processfpga1721_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_normls_gep490_processfpga_processfpga1721_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep490_processfpga_processfpga1721_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep490_processfpga_processfpga1721_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_gep490_processfpga_processfpga1721_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_normls_or485_compressed_processfpga_processfpga1701_normls_or485_bitvec_join_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_normls_trunc491_processfpga_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_result_i_i_i_i747_processfpga_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_wide_i_i_i_i745_processfpga_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i16_0gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_1023_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_16_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_1gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_2047_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_255_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_256_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_2gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_32_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_49_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_512_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_63_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_64_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i16_7gr_q : STD_LOGIC_VECTOR (15 downto 0);
    signal c_i32_3gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal comparator_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal comparator_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_969_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_970_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_970_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_970_processfpga_vt_const_10_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_acl_970_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_970_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_acl_971_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_972_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_973_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_973_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_973_processfpga_vt_const_5_q : STD_LOGIC_VECTOR (5 downto 0);
    signal i_acl_973_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_973_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (9 downto 0);
    signal i_acl_975_demorgan_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_976_demorgan_processfpga_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_976_demorgan_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_977_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_977_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_acl_case_case_stmt1223_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and112_i_i785_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and112_i_i785_processfpga_vt_const_15_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_and112_i_i785_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and112_i_i785_processfpga_vt_select_1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_and_i5_i_i778_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and_i7_i_i740_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and_i7_i_i740_processfpga_vt_const_15_q : STD_LOGIC_VECTOR (5 downto 0);
    signal i_and_i7_i_i740_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_and_i7_i_i740_processfpga_vt_select_9_b : STD_LOGIC_VECTOR (9 downto 0);
    signal i_cmp_i_i55_i_processfpga_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp_i_i55_i_processfpga_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp_i_i55_i_processfpga_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp_i_i55_i_processfpga_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_conv8_i_i_i754_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_conv8_i_i_i754_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv8_i_i_i754_processfpga_vt_const_15_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_conv8_i_i_i754_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_conv8_i_i_i754_processfpga_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_ffwd_dst_acl_4325_processfpga_out_dest_data_out_6_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_acl_954503_processfpga_out_dest_data_out_104_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_acl_954504_processfpga_out_dest_data_out_104_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_idx_1_i1324_replace_phi493_processfpga_out_dest_data_out_93_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_idxprom_i571495_processfpga_out_dest_data_out_94_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_ffwd_dst_idxprom_i571496_processfpga_out_dest_data_out_94_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_ffwd_dst_unnamed_processfpga235_processfpga_out_dest_data_out_95_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_unnamed_processfpga236_processfpga_out_dest_data_out_98_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga237_processfpga_out_dest_data_out_98_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga238_processfpga_out_dest_data_out_95_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_unnamed_processfpga239_processfpga_out_dest_data_out_98_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga240_processfpga_out_dest_data_out_98_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_processfpga241_processfpga_out_dest_data_out_95_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_unnamed_processfpga242_processfpga_out_dest_data_out_98_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_idxprom118_i_i792_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom118_i_i792_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom118_i_i792_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_data : STD_LOGIC_VECTOR (31 downto 0);
    signal i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_sum : STD_LOGIC_VECTOR (31 downto 0);
    signal i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_vt_const_31_q : STD_LOGIC_VECTOR (25 downto 0);
    signal i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_vt_select_5_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_load_normls_load477_processfpga_out_normls_load477_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load477_processfpga_out_normls_load477_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load477_processfpga_out_normls_load477_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_normls_load477_processfpga_out_normls_load477_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load477_processfpga_out_normls_load477_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load477_processfpga_out_normls_load477_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load477_processfpga_out_normls_load477_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load477_processfpga_out_o_readdata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_normls_load482_processfpga_out_normls_load482_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load482_processfpga_out_normls_load482_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load482_processfpga_out_normls_load482_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_normls_load482_processfpga_out_normls_load482_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load482_processfpga_out_normls_load482_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load482_processfpga_out_normls_load482_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_normls_load482_processfpga_out_normls_load482_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_normls_load482_processfpga_out_o_readdata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_neg_i_i_i777_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_nomrls_lshr489_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_nomrls_lshr489_processfpga_vt_select_7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_not_1345_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_not_1346_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or1233_xor_or_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_result_i_i_i_i747_processfpga_vt_const_15_q : STD_LOGIC_VECTOR (9 downto 0);
    signal i_result_i_i_i_i747_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_result_i_i_i_i747_processfpga_vt_select_5_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shr_i_i_i_i7641224_processfpga_vt_join_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_shr_i_i_i_i7641224_processfpga_vt_select_5_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_store_memdep_26_processfpga_out_memdep_26_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_26_processfpga_out_memdep_26_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_26_processfpga_out_memdep_26_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_store_memdep_26_processfpga_out_memdep_26_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_26_processfpga_out_memdep_26_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_26_processfpga_out_memdep_26_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_26_processfpga_out_memdep_26_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_27_processfpga_out_memdep_27_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_27_processfpga_out_memdep_27_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_27_processfpga_out_memdep_27_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_store_memdep_27_processfpga_out_memdep_27_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_27_processfpga_out_memdep_27_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_27_processfpga_out_memdep_27_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_27_processfpga_out_memdep_27_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_28_processfpga_out_memdep_28_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_memdep_28_processfpga_out_memdep_28_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_28_processfpga_out_memdep_28_avm_byteenable : STD_LOGIC_VECTOR (1 downto 0);
    signal i_store_memdep_28_processfpga_out_memdep_28_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_28_processfpga_out_memdep_28_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_28_processfpga_out_memdep_28_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_memdep_28_processfpga_out_memdep_28_avm_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_sub_i_i790_processfpga_a : STD_LOGIC_VECTOR (16 downto 0);
    signal i_sub_i_i790_processfpga_b : STD_LOGIC_VECTOR (16 downto 0);
    signal i_sub_i_i790_processfpga_o : STD_LOGIC_VECTOR (16 downto 0);
    signal i_sub_i_i790_processfpga_q : STD_LOGIC_VECTOR (16 downto 0);
    signal i_syncbuf_localneurons_sync_buffer90_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer91_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localoutput_sync_buffer168_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_tobool113_i_i786_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1705_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1705_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1707_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1707_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1709_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga1709_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_wide_i_i_i_i745_processfpga_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_wide_i_i_i_i745_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_xor4_i_i_i779_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_xor_i_i_i7761225_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_join_13_q : STD_LOGIC_VECTOR (55 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_14_q : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_14_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_join_16_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal rightShiftStage0Idx1_uid298_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0_uid300_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid300_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng8_uid305_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage0Idx1_uid307_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0_uid309_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid309_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage1Idx1Rng2_uid310_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_b : STD_LOGIC_VECTOR (13 downto 0);
    signal rightShiftStage1Idx1Pad2_uid311_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1Idx1_uid312_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage1_uid314_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid314_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_f : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_g : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_h : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_i : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_j : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_k : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_l : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_m : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_o : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_p : STD_LOGIC_VECTOR (0 downto 0);
    signal i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal rightShiftStage0Idx1Rng8_uid296_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage0Idx1Rng8_uid296_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal redist0_sync_in_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_sync_in_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_sync_in_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_sync_in_in_i_valid_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_sync_in_in_i_valid_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sync_in_in_i_valid_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sync_in_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_in_i_valid_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_result_i_i_i_i747_processfpga_vt_select_5_b_1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist9_i_idxprom118_i_i792_processfpga_vt_select_15_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist10_i_acl_case_case_stmt1223_processfpga_q_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist11_i_acl_973_processfpga_vt_select_15_b_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist12_i_clst109_i_i783_processfpga_processfpga1715_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist13_i_clst109_i_i783_processfpga_processfpga1715_dupName_1_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist14_i_clst109_i_i783_processfpga_processfpga1715_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist15_i_clpst105_i_i762_processfpga_processfpga1690_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist16_i_clpst105_i_i762_processfpga_processfpga1690_dupName_1_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist17_i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist18_i_arrayidx119_i_i793_processfpga_processfpga1735_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist0_sync_in_in_i_valid_2(DELAY,354)
    redist0_sync_in_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist0_sync_in_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- redist1_sync_in_in_i_valid_4(DELAY,355)
    redist1_sync_in_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_sync_in_in_i_valid_2_q, xout => redist1_sync_in_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_ffwd_dst_unnamed_processfpga237_processfpga(BLACKBOX,178)@4
    thei_ffwd_dst_unnamed_processfpga237_processfpga : i_ffwd_dst_unnamed_processfpga237_processfpga1696
    PORT MAP (
        in_intel_reserved_ffwd_98_0 => in_intel_reserved_ffwd_98_0,
        in_stall_in => GND_q,
        in_valid_in => redist1_sync_in_in_i_valid_4_q,
        out_dest_data_out_98_0 => i_ffwd_dst_unnamed_processfpga237_processfpga_out_dest_data_out_98_0,
        clock => clock,
        resetn => resetn
    );

    -- i_normls_gep481_processfpga_processfpga1695_c_i64_1gr_x(CONSTANT,84)
    i_normls_gep481_processfpga_processfpga1695_c_i64_1gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000001";

    -- i_clpst105_i_i762_processfpga_processfpga1690_c_i64_7gr_x(CONSTANT,60)
    i_clpst105_i_i762_processfpga_processfpga1690_c_i64_7gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000111";

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_multconst_x(CONSTANT,56)
    i_clpst105_i_i762_processfpga_processfpga1690_mult_multconst_x_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_shift0(BITSHIFT,328)@0
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_shift0_qint <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_c & "0";
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_shift0_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_shift0_qint(10 downto 0);

    -- i_ffwd_dst_idxprom_i571496_processfpga(BLACKBOX,175)@0
    thei_ffwd_dst_idxprom_i571496_processfpga : i_ffwd_dst_idxprom_i571496_processfpga1688
    PORT MAP (
        in_intel_reserved_ffwd_94_0 => in_intel_reserved_ffwd_94_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_94_0 => i_ffwd_dst_idxprom_i571496_processfpga_out_dest_data_out_94_0,
        clock => clock,
        resetn => resetn
    );

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select(BITSELECT,351)@0
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_b <= i_ffwd_dst_idxprom_i571496_processfpga_out_dest_data_out_94_0(17 downto 0);
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_c <= i_ffwd_dst_idxprom_i571496_processfpga_out_dest_data_out_94_0(63 downto 54);
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_d <= i_ffwd_dst_idxprom_i571496_processfpga_out_dest_data_out_94_0(35 downto 18);
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_e <= i_ffwd_dst_idxprom_i571496_processfpga_out_dest_data_out_94_0(53 downto 36);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_add_1(ADD,329)@0 + 1
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_c);
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_shift0_q);
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_add_1_a) + UNSIGNED(i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_add_1_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_add_1_o(11 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_shift2(BITSHIFT,330)@1
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_shift2_qint <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_add_1_q & "00";
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_shift2_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_shift2_qint(13 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_15(BITSHIFT,271)@1
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_15_qint <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im3_shift2_q & "00000000000000";
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_15_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_15_qint(27 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_shift0(BITSHIFT,331)@0
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_shift0_qint <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_d & "0";
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_shift0_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_shift0_qint(18 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_add_1(ADD,332)@0 + 1
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_d);
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_shift0_q);
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_add_1_a) + UNSIGNED(i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_add_1_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_add_1_o(19 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_shift2(BITSHIFT,333)@1
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_shift2_qint <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_add_1_q & "00";
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_shift2_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_shift2_qint(21 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_14(BITSHIFT,270)@1
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_14_qint <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im6_shift2_q & "000000000000000000";
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_14_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_14_qint(39 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_join_16(BITJOIN,272)@1
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_join_16_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_15_q & i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_14_q;

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_shift0(BITSHIFT,334)@0
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_shift0_qint <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_e & "0";
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_shift0_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_shift0_qint(18 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_add_1(ADD,335)@0 + 1
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_e);
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_shift0_q);
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_add_1_a) + UNSIGNED(i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_add_1_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_add_1_o(19 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_shift2(BITSHIFT,336)@1
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_shift2_qint <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_add_1_q & "00";
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_shift2_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_shift2_qint(21 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_12(BITSHIFT,268)@1
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_12_qint <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im9_shift2_q & "00000000000000";
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_12_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_12_qint(35 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_shift0(BITSHIFT,325)@0
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_shift0_qint <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_b & "0";
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_shift0_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_shift0_qint(18 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_add_1(ADD,326)@0 + 1
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_clpst105_i_i762_processfpga_processfpga1690_mult_x_bs1_merged_bit_select_b);
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_shift0_q);
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_add_1_a) + UNSIGNED(i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_add_1_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_add_1_o(19 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_shift2(BITSHIFT,327)@1
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_shift2_qint <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_add_1_q & "00";
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_shift2_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_shift2_qint(21 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_join_13(BITJOIN,269)@1
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_join_13_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_align_12_q & i_clpst105_i_i762_processfpga_processfpga1690_mult_x_im0_shift2_q;

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_x_result_add_0_0(ADD,273)@1
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_clpst105_i_i762_processfpga_processfpga1690_mult_x_join_13_q);
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_clpst105_i_i762_processfpga_processfpga1690_mult_x_join_16_q);
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpst105_i_i762_processfpga_processfpga1690_mult_x_result_add_0_0_a) + UNSIGNED(i_clpst105_i_i762_processfpga_processfpga1690_mult_x_result_add_0_0_b));
    i_clpst105_i_i762_processfpga_processfpga1690_mult_x_result_add_0_0_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_x_result_add_0_0_o(68 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_mult_extender_x(BITJOIN,55)@1
    i_clpst105_i_i762_processfpga_processfpga1690_mult_extender_x_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_multconst_x_q & i_clpst105_i_i762_processfpga_processfpga1690_mult_x_result_add_0_0_q(67 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_trunc_sel_x(BITSELECT,57)@1
    i_clpst105_i_i762_processfpga_processfpga1690_trunc_sel_x_b <= i_clpst105_i_i762_processfpga_processfpga1690_mult_extender_x_q(63 downto 0);

    -- redist15_i_clpst105_i_i762_processfpga_processfpga1690_trunc_sel_x_b_1(DELAY,369)
    redist15_i_clpst105_i_i762_processfpga_processfpga1690_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clpst105_i_i762_processfpga_processfpga1690_trunc_sel_x_b, xout => redist15_i_clpst105_i_i762_processfpga_processfpga1690_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer91_processfpga(BLACKBOX,217)@0
    -- in in_i_dependence@2
    -- in in_valid_in@2
    -- out out_buffer_out@2
    -- out out_valid_out@2
    thei_syncbuf_localneurons_sync_buffer91_processfpga : i_syncbuf_localneurons_sync_buffer91_processfpga1686
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist0_sync_in_in_i_valid_2_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer91_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_clpst105_i_i762_processfpga_processfpga1690_add_x(ADD,58)@2
    i_clpst105_i_i762_processfpga_processfpga1690_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer91_processfpga_out_buffer_out);
    i_clpst105_i_i762_processfpga_processfpga1690_add_x_b <= STD_LOGIC_VECTOR("0" & redist15_i_clpst105_i_i762_processfpga_processfpga1690_trunc_sel_x_b_1_q);
    i_clpst105_i_i762_processfpga_processfpga1690_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpst105_i_i762_processfpga_processfpga1690_add_x_a) + UNSIGNED(i_clpst105_i_i762_processfpga_processfpga1690_add_x_b));
    i_clpst105_i_i762_processfpga_processfpga1690_add_x_q <= i_clpst105_i_i762_processfpga_processfpga1690_add_x_o(64 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_trunc_sel_x(BITSELECT,49)@2
    i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_trunc_sel_x_b <= i_clpst105_i_i762_processfpga_processfpga1690_add_x_q(63 downto 0);

    -- redist17_i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_trunc_sel_x_b_1(DELAY,371)
    redist17_i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_trunc_sel_x_b, xout => redist17_i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_add_x(ADD,52)@3
    i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist17_i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_trunc_sel_x_b_1_q);
    i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_clpst105_i_i762_processfpga_processfpga1690_c_i64_7gr_x_q);
    i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_add_x_a) + UNSIGNED(i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_add_x_b));
    i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_add_x_q <= i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_add_x_o(64 downto 0);

    -- i_clpst105_i_i762_processfpga_processfpga1690_dupName_1_trunc_sel_x(BITSELECT,50)@3
    i_clpst105_i_i762_processfpga_processfpga1690_dupName_1_trunc_sel_x_b <= i_clpst105_i_i762_processfpga_processfpga1690_dupName_0_add_x_q(63 downto 0);

    -- redist16_i_clpst105_i_i762_processfpga_processfpga1690_dupName_1_trunc_sel_x_b_1(DELAY,370)
    redist16_i_clpst105_i_i762_processfpga_processfpga1690_dupName_1_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clpst105_i_i762_processfpga_processfpga1690_dupName_1_trunc_sel_x_b, xout => redist16_i_clpst105_i_i762_processfpga_processfpga1690_dupName_1_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_normls_gep481_processfpga_processfpga1695_add_x(ADD,83)@4
    i_normls_gep481_processfpga_processfpga1695_add_x_a <= STD_LOGIC_VECTOR("0" & redist16_i_clpst105_i_i762_processfpga_processfpga1690_dupName_1_trunc_sel_x_b_1_q);
    i_normls_gep481_processfpga_processfpga1695_add_x_b <= STD_LOGIC_VECTOR("0" & i_normls_gep481_processfpga_processfpga1695_c_i64_1gr_x_q);
    i_normls_gep481_processfpga_processfpga1695_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep481_processfpga_processfpga1695_add_x_a) + UNSIGNED(i_normls_gep481_processfpga_processfpga1695_add_x_b));
    i_normls_gep481_processfpga_processfpga1695_add_x_q <= i_normls_gep481_processfpga_processfpga1695_add_x_o(64 downto 0);

    -- i_normls_gep481_processfpga_processfpga1695_trunc_sel_x(BITSELECT,82)@4
    i_normls_gep481_processfpga_processfpga1695_trunc_sel_x_b <= i_normls_gep481_processfpga_processfpga1695_add_x_q(63 downto 0);

    -- i_load_normls_load482_processfpga(BLACKBOX,193)@4
    -- in in_i_stall@20000000
    -- out out_normls_load482_avm_address@20000000
    -- out out_normls_load482_avm_burstcount@20000000
    -- out out_normls_load482_avm_byteenable@20000000
    -- out out_normls_load482_avm_enable@20000000
    -- out out_normls_load482_avm_read@20000000
    -- out out_normls_load482_avm_write@20000000
    -- out out_normls_load482_avm_writedata@20000000
    -- out out_o_readdata@9
    -- out out_o_stall@8
    -- out out_o_valid@9
    thei_load_normls_load482_processfpga : i_load_normls_load482_processfpga1698
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_normls_gep481_processfpga_processfpga1695_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga237_processfpga_out_dest_data_out_98_0,
        in_i_stall => GND_q,
        in_i_valid => redist1_sync_in_in_i_valid_4_q,
        in_normls_load482_avm_readdata => in_normls_load482_avm_readdata,
        in_normls_load482_avm_readdatavalid => in_normls_load482_avm_readdatavalid,
        in_normls_load482_avm_waitrequest => in_normls_load482_avm_waitrequest,
        in_normls_load482_avm_writeack => in_normls_load482_avm_writeack,
        out_normls_load482_avm_address => i_load_normls_load482_processfpga_out_normls_load482_avm_address,
        out_normls_load482_avm_burstcount => i_load_normls_load482_processfpga_out_normls_load482_avm_burstcount,
        out_normls_load482_avm_byteenable => i_load_normls_load482_processfpga_out_normls_load482_avm_byteenable,
        out_normls_load482_avm_enable => i_load_normls_load482_processfpga_out_normls_load482_avm_enable,
        out_normls_load482_avm_read => i_load_normls_load482_processfpga_out_normls_load482_avm_read,
        out_normls_load482_avm_write => i_load_normls_load482_processfpga_out_normls_load482_avm_write,
        out_normls_load482_avm_writedata => i_load_normls_load482_processfpga_out_normls_load482_avm_writedata,
        out_o_readdata => i_load_normls_load482_processfpga_out_o_readdata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,7)
    out_normls_load482_avm_address <= i_load_normls_load482_processfpga_out_normls_load482_avm_address;
    out_normls_load482_avm_enable <= i_load_normls_load482_processfpga_out_normls_load482_avm_enable;
    out_normls_load482_avm_read <= i_load_normls_load482_processfpga_out_normls_load482_avm_read;
    out_normls_load482_avm_write <= i_load_normls_load482_processfpga_out_normls_load482_avm_write;
    out_normls_load482_avm_writedata <= i_load_normls_load482_processfpga_out_normls_load482_avm_writedata;
    out_normls_load482_avm_byteenable <= i_load_normls_load482_processfpga_out_normls_load482_avm_byteenable;
    out_normls_load482_avm_burstcount <= i_load_normls_load482_processfpga_out_normls_load482_avm_burstcount;

    -- i_ffwd_dst_unnamed_processfpga236_processfpga(BLACKBOX,177)@4
    thei_ffwd_dst_unnamed_processfpga236_processfpga : i_ffwd_dst_unnamed_processfpga236_processfpga1691
    PORT MAP (
        in_intel_reserved_ffwd_98_0 => in_intel_reserved_ffwd_98_0,
        in_stall_in => GND_q,
        in_valid_in => redist1_sync_in_in_i_valid_4_q,
        out_dest_data_out_98_0 => i_ffwd_dst_unnamed_processfpga236_processfpga_out_dest_data_out_98_0,
        clock => clock,
        resetn => resetn
    );

    -- i_load_normls_load477_processfpga(BLACKBOX,192)@4
    -- in in_i_stall@20000000
    -- out out_normls_load477_avm_address@20000000
    -- out out_normls_load477_avm_burstcount@20000000
    -- out out_normls_load477_avm_byteenable@20000000
    -- out out_normls_load477_avm_enable@20000000
    -- out out_normls_load477_avm_read@20000000
    -- out out_normls_load477_avm_write@20000000
    -- out out_normls_load477_avm_writedata@20000000
    -- out out_o_readdata@9
    -- out out_o_stall@8
    -- out out_o_valid@9
    thei_load_normls_load477_processfpga : i_load_normls_load477_processfpga1693
    PORT MAP (
        in_flush => in_flush,
        in_i_address => redist16_i_clpst105_i_i762_processfpga_processfpga1690_dupName_1_trunc_sel_x_b_1_q,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga236_processfpga_out_dest_data_out_98_0,
        in_i_stall => GND_q,
        in_i_valid => redist1_sync_in_in_i_valid_4_q,
        in_normls_load477_avm_readdata => in_normls_load477_avm_readdata,
        in_normls_load477_avm_readdatavalid => in_normls_load477_avm_readdatavalid,
        in_normls_load477_avm_waitrequest => in_normls_load477_avm_waitrequest,
        in_normls_load477_avm_writeack => in_normls_load477_avm_writeack,
        out_normls_load477_avm_address => i_load_normls_load477_processfpga_out_normls_load477_avm_address,
        out_normls_load477_avm_burstcount => i_load_normls_load477_processfpga_out_normls_load477_avm_burstcount,
        out_normls_load477_avm_byteenable => i_load_normls_load477_processfpga_out_normls_load477_avm_byteenable,
        out_normls_load477_avm_enable => i_load_normls_load477_processfpga_out_normls_load477_avm_enable,
        out_normls_load477_avm_read => i_load_normls_load477_processfpga_out_normls_load477_avm_read,
        out_normls_load477_avm_write => i_load_normls_load477_processfpga_out_normls_load477_avm_write,
        out_normls_load477_avm_writedata => i_load_normls_load477_processfpga_out_normls_load477_avm_writedata,
        out_o_readdata => i_load_normls_load477_processfpga_out_o_readdata,
        clock => clock,
        resetn => resetn
    );

    -- i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x(BITJOIN,106)@9
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q <= i_load_normls_load482_processfpga_out_o_readdata & i_load_normls_load477_processfpga_out_o_readdata;

    -- i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select(BITSELECT,349)@9
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_b <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(0 downto 0);
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_c <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(1 downto 1);
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_d <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(10 downto 10);
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_e <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(11 downto 11);
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_f <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(12 downto 12);
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_g <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(13 downto 13);
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_h <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(14 downto 14);
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_i <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(15 downto 15);
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_j <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(2 downto 2);
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_k <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(3 downto 3);
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_l <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(4 downto 4);
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_m <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(5 downto 5);
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_n <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(6 downto 6);
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_o <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(7 downto 7);
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_p <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(8 downto 8);
    i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_q <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_vec_1_join_x_q(9 downto 9);

    -- i_normls_or485_compressed_processfpga_processfpga1701_normls_or485_bitvec_join_x(BITJOIN,107)@9
    i_normls_or485_compressed_processfpga_processfpga1701_normls_or485_bitvec_join_x_q <= i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_i & i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_h & i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_g & i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_f & i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_e & i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_d & i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_q & i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_p & i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_o & i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_n & i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_m & i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_l & i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_k & i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_j & i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_c & i_normls_or485_bitvec_processfpga_processfpga1700_normls_or485_bitvec_select_0_x_merged_bit_select_b;

    -- dupName_0_c_i16_1gr_x(CONSTANT,3)
    dupName_0_c_i16_1gr_x_q <= "1111111111111111";

    -- c_i16_0gr(CONSTANT,118)
    c_i16_0gr_q <= "0000000000000000";

    -- c_i16_512(CONSTANT,129)
    c_i16_512_q <= "0000001000000000";

    -- i_and_i7_i_i740_processfpga_vt_const_15(CONSTANT,162)
    i_and_i7_i_i740_processfpga_vt_const_15_q <= "000000";

    -- c_i16_1023(CONSTANT,120)
    c_i16_1023_q <= "0000001111111111";

    -- redist2_sync_in_in_i_valid_5(DELAY,356)
    redist2_sync_in_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_sync_in_in_i_valid_4_q, xout => redist2_sync_in_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- redist3_sync_in_in_i_valid_6(DELAY,357)
    redist3_sync_in_in_i_valid_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_sync_in_in_i_valid_5_q, xout => redist3_sync_in_in_i_valid_6_q, clk => clock, aclr => resetn );

    -- redist4_sync_in_in_i_valid_7(DELAY,358)
    redist4_sync_in_in_i_valid_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_sync_in_in_i_valid_6_q, xout => redist4_sync_in_in_i_valid_7_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_unnamed_processfpga235_processfpga(BLACKBOX,176)@7
    thei_ffwd_dst_unnamed_processfpga235_processfpga : i_ffwd_dst_unnamed_processfpga235_processfpga1680
    PORT MAP (
        in_intel_reserved_ffwd_95_0 => in_intel_reserved_ffwd_95_0,
        in_stall_in => GND_q,
        in_valid_in => redist4_sync_in_in_i_valid_7_q,
        out_dest_data_out_95_0 => i_ffwd_dst_unnamed_processfpga235_processfpga_out_dest_data_out_95_0,
        clock => clock,
        resetn => resetn
    );

    -- i_and_i7_i_i740_processfpga(LOGICAL,161)@7
    i_and_i7_i_i740_processfpga_q <= i_ffwd_dst_unnamed_processfpga235_processfpga_out_dest_data_out_95_0 and c_i16_1023_q;

    -- i_and_i7_i_i740_processfpga_vt_select_9(BITSELECT,164)@7
    i_and_i7_i_i740_processfpga_vt_select_9_b <= i_and_i7_i_i740_processfpga_q(9 downto 0);

    -- i_and_i7_i_i740_processfpga_vt_join(BITJOIN,163)@7
    i_and_i7_i_i740_processfpga_vt_join_q <= i_and_i7_i_i740_processfpga_vt_const_15_q & i_and_i7_i_i740_processfpga_vt_select_9_b;

    -- dupName_5_comparator_x(LOGICAL,23)@7 + 1
    dupName_5_comparator_x_qi <= "1" WHEN i_and_i7_i_i740_processfpga_vt_join_q = c_i16_512_q ELSE "0";
    dupName_5_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_5_comparator_x_qi, xout => dupName_5_comparator_x_q, clk => clock, aclr => resetn );

    -- c_i16_256(CONSTANT,125)
    c_i16_256_q <= "0000000100000000";

    -- dupName_4_comparator_x(LOGICAL,21)@7 + 1
    dupName_4_comparator_x_qi <= "1" WHEN i_and_i7_i_i740_processfpga_vt_join_q = c_i16_256_q ELSE "0";
    dupName_4_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_4_comparator_x_qi, xout => dupName_4_comparator_x_q, clk => clock, aclr => resetn );

    -- i_conv8_i_i_i754_processfpga_vt_const_15(CONSTANT,167)
    i_conv8_i_i_i754_processfpga_vt_const_15_q <= "00000000";

    -- c_i16_255(CONSTANT,124)
    c_i16_255_q <= "0000000011111111";

    -- i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_vt_const_31(CONSTANT,189)
    i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_vt_const_31_q <= "00000000000000000000000000";

    -- i_ffwd_dst_acl_954504_processfpga(BLACKBOX,172)@7
    thei_ffwd_dst_acl_954504_processfpga : i_ffwd_dst_acl_954504_processfpga1682
    PORT MAP (
        in_intel_reserved_ffwd_104_0 => in_intel_reserved_ffwd_104_0,
        in_stall_in => GND_q,
        in_valid_in => redist4_sync_in_in_i_valid_7_q,
        out_dest_data_out_104_0 => i_ffwd_dst_acl_954504_processfpga_out_dest_data_out_104_0,
        clock => clock,
        resetn => resetn
    );

    -- i_wide_i_i_i_i745_processfpga_sel_x(BITSELECT,115)@7
    i_wide_i_i_i_i745_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(i_ffwd_dst_acl_954504_processfpga_out_dest_data_out_104_0(15 downto 0)), 32));

    -- i_wide_i_i_i_i745_processfpga_vt_select_15(BITSELECT,226)@7
    i_wide_i_i_i_i745_processfpga_vt_select_15_b <= i_wide_i_i_i_i745_processfpga_sel_x_b(15 downto 0);

    -- i_wide_i_i_i_i745_processfpga_vt_join(BITJOIN,225)@7
    i_wide_i_i_i_i745_processfpga_vt_join_q <= c_i16_0gr_q & i_wide_i_i_i_i745_processfpga_vt_select_15_b;

    -- i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga(EXTIFACE,188)@7
    i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_data <= i_wide_i_i_i_i745_processfpga_vt_join_q;
    thei_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga : thirtysix_six_comp
    PORT MAP (
        data => i_wide_i_i_i_i745_processfpga_vt_join_q,
        sum => i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_sum
    );

    -- i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_vt_select_5(BITSELECT,191)@7
    i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_vt_select_5_b <= i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_sum(5 downto 0);

    -- i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_vt_join(BITJOIN,190)@7
    i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_vt_join_q <= i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_vt_const_31_q & i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_vt_select_5_b;

    -- c_i32_3gr(CONSTANT,136)
    c_i32_3gr_q <= "00000000000000000000000000000011";

    -- i_cmp_i_i55_i_processfpga(COMPARE,165)@7 + 1
    i_cmp_i_i55_i_processfpga_a <= STD_LOGIC_VECTOR("00" & c_i32_3gr_q);
    i_cmp_i_i55_i_processfpga_b <= STD_LOGIC_VECTOR("00" & i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_vt_join_q);
    i_cmp_i_i55_i_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp_i_i55_i_processfpga_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp_i_i55_i_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_cmp_i_i55_i_processfpga_a) - UNSIGNED(i_cmp_i_i55_i_processfpga_b));
        END IF;
    END PROCESS;
    i_cmp_i_i55_i_processfpga_c(0) <= i_cmp_i_i55_i_processfpga_o(33);

    -- i_conv8_i_i_i754_processfpga(MUX,166)@8
    i_conv8_i_i_i754_processfpga_s <= i_cmp_i_i55_i_processfpga_c;
    i_conv8_i_i_i754_processfpga_combproc: PROCESS (i_conv8_i_i_i754_processfpga_s, c_i16_0gr_q, c_i16_255_q)
    BEGIN
        CASE (i_conv8_i_i_i754_processfpga_s) IS
            WHEN "0" => i_conv8_i_i_i754_processfpga_q <= c_i16_0gr_q;
            WHEN "1" => i_conv8_i_i_i754_processfpga_q <= c_i16_255_q;
            WHEN OTHERS => i_conv8_i_i_i754_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_conv8_i_i_i754_processfpga_vt_select_7(BITSELECT,169)@8
    i_conv8_i_i_i754_processfpga_vt_select_7_b <= i_conv8_i_i_i754_processfpga_q(7 downto 0);

    -- i_conv8_i_i_i754_processfpga_vt_join(BITJOIN,168)@8
    i_conv8_i_i_i754_processfpga_vt_join_q <= i_conv8_i_i_i754_processfpga_vt_const_15_q & i_conv8_i_i_i754_processfpga_vt_select_7_b;

    -- c_i16_64(CONSTANT,131)
    c_i16_64_q <= "0000000001000000";

    -- dupName_3_comparator_x(LOGICAL,17)@7 + 1
    dupName_3_comparator_x_qi <= "1" WHEN i_and_i7_i_i740_processfpga_vt_join_q = c_i16_64_q ELSE "0";
    dupName_3_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_3_comparator_x_qi, xout => dupName_3_comparator_x_q, clk => clock, aclr => resetn );

    -- i_result_i_i_i_i747_processfpga_vt_const_15(CONSTANT,206)
    i_result_i_i_i_i747_processfpga_vt_const_15_q <= "0000000000";

    -- i_result_i_i_i_i747_processfpga_sel_x(BITSELECT,110)@7
    i_result_i_i_i_i747_processfpga_sel_x_b <= i_llvm_ctpop_i32_result_i_i_i_i_i746_processfpga_vt_join_q(15 downto 0);

    -- i_result_i_i_i_i747_processfpga_vt_select_5(BITSELECT,208)@7
    i_result_i_i_i_i747_processfpga_vt_select_5_b <= i_result_i_i_i_i747_processfpga_sel_x_b(5 downto 0);

    -- redist8_i_result_i_i_i_i747_processfpga_vt_select_5_b_1(DELAY,362)
    redist8_i_result_i_i_i_i747_processfpga_vt_select_5_b_1 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_result_i_i_i_i747_processfpga_vt_select_5_b, xout => redist8_i_result_i_i_i_i747_processfpga_vt_select_5_b_1_q, clk => clock, aclr => resetn );

    -- i_result_i_i_i_i747_processfpga_vt_join(BITJOIN,207)@8
    i_result_i_i_i_i747_processfpga_vt_join_q <= i_result_i_i_i_i747_processfpga_vt_const_15_q & redist8_i_result_i_i_i_i747_processfpga_vt_select_5_b_1_q;

    -- c_i16_32(CONSTANT,127)
    c_i16_32_q <= "0000000000100000";

    -- dupName_2_comparator_x(LOGICAL,13)@7 + 1
    dupName_2_comparator_x_qi <= "1" WHEN i_and_i7_i_i740_processfpga_vt_join_q = c_i16_32_q ELSE "0";
    dupName_2_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_2_comparator_x_qi, xout => dupName_2_comparator_x_q, clk => clock, aclr => resetn );

    -- c_i16_16(CONSTANT,121)
    c_i16_16_q <= "0000000000010000";

    -- dupName_1_comparator_x(LOGICAL,9)@7 + 1
    dupName_1_comparator_x_qi <= "1" WHEN i_and_i7_i_i740_processfpga_vt_join_q = c_i16_16_q ELSE "0";
    dupName_1_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_1_comparator_x_qi, xout => dupName_1_comparator_x_q, clk => clock, aclr => resetn );

    -- c_i16_2gr(CONSTANT,126)
    c_i16_2gr_q <= "0000000000000010";

    -- dupName_0_comparator_x(LOGICAL,5)@7 + 1
    dupName_0_comparator_x_qi <= "1" WHEN i_and_i7_i_i740_processfpga_vt_join_q = c_i16_2gr_q ELSE "0";
    dupName_0_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_0_comparator_x_qi, xout => dupName_0_comparator_x_q, clk => clock, aclr => resetn );

    -- redist5_sync_in_in_i_valid_8(DELAY,359)
    redist5_sync_in_in_i_valid_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist4_sync_in_in_i_valid_7_q, xout => redist5_sync_in_in_i_valid_8_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_acl_954503_processfpga(BLACKBOX,171)@8
    thei_ffwd_dst_acl_954503_processfpga : i_ffwd_dst_acl_954503_processfpga1684
    PORT MAP (
        in_intel_reserved_ffwd_104_0 => in_intel_reserved_ffwd_104_0,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_in_i_valid_8_q,
        out_dest_data_out_104_0 => i_ffwd_dst_acl_954503_processfpga_out_dest_data_out_104_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i16_1gr(CONSTANT,122)
    c_i16_1gr_q <= "0000000000000001";

    -- comparator(LOGICAL,137)@7 + 1
    comparator_qi <= "1" WHEN i_and_i7_i_i740_processfpga_vt_join_q = c_i16_1gr_q ELSE "0";
    comparator_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => comparator_qi, xout => comparator_q, clk => clock, aclr => resetn );

    -- i_acl_case_case_stmt1223_processfpga(SELECTOR,154)@8
    i_acl_case_case_stmt1223_processfpga_combproc: PROCESS (comparator_q, i_ffwd_dst_acl_954503_processfpga_out_dest_data_out_104_0, dupName_0_comparator_x_q, dupName_1_comparator_x_q, dupName_2_comparator_x_q, i_result_i_i_i_i747_processfpga_vt_join_q, dupName_3_comparator_x_q, i_conv8_i_i_i754_processfpga_vt_join_q, dupName_4_comparator_x_q, dupName_5_comparator_x_q, c_i16_0gr_q)
    BEGIN
        i_acl_case_case_stmt1223_processfpga_q <= c_i16_0gr_q;
        IF (dupName_5_comparator_x_q = "1") THEN
            i_acl_case_case_stmt1223_processfpga_q <= i_conv8_i_i_i754_processfpga_vt_join_q;
        END IF;
        IF (dupName_4_comparator_x_q = "1") THEN
            i_acl_case_case_stmt1223_processfpga_q <= i_conv8_i_i_i754_processfpga_vt_join_q;
        END IF;
        IF (dupName_3_comparator_x_q = "1") THEN
            i_acl_case_case_stmt1223_processfpga_q <= i_conv8_i_i_i754_processfpga_vt_join_q;
        END IF;
        IF (dupName_2_comparator_x_q = "1") THEN
            i_acl_case_case_stmt1223_processfpga_q <= i_result_i_i_i_i747_processfpga_vt_join_q;
        END IF;
        IF (dupName_1_comparator_x_q = "1") THEN
            i_acl_case_case_stmt1223_processfpga_q <= i_ffwd_dst_acl_954503_processfpga_out_dest_data_out_104_0;
        END IF;
        IF (dupName_0_comparator_x_q = "1") THEN
            i_acl_case_case_stmt1223_processfpga_q <= i_ffwd_dst_acl_954503_processfpga_out_dest_data_out_104_0;
        END IF;
        IF (comparator_q = "1") THEN
            i_acl_case_case_stmt1223_processfpga_q <= i_ffwd_dst_acl_954503_processfpga_out_dest_data_out_104_0;
        END IF;
    END PROCESS;

    -- redist10_i_acl_case_case_stmt1223_processfpga_q_1(DELAY,364)
    redist10_i_acl_case_case_stmt1223_processfpga_q_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_case_case_stmt1223_processfpga_q, xout => redist10_i_acl_case_case_stmt1223_processfpga_q_1_q, clk => clock, aclr => resetn );

    -- i_xor_i_i_i7761225_processfpga(LOGICAL,228)@9
    i_xor_i_i_i7761225_processfpga_q <= redist10_i_acl_case_case_stmt1223_processfpga_q_1_q xor dupName_0_c_i16_1gr_x_q;

    -- i_neg_i_i_i777_processfpga(LOGICAL,194)@9
    i_neg_i_i_i777_processfpga_q <= i_normls_or485_compressed_processfpga_processfpga1701_normls_or485_bitvec_join_x_q xor i_xor_i_i_i7761225_processfpga_q;

    -- c_i16_63(CONSTANT,130)
    c_i16_63_q <= "0000000000111111";

    -- c_i16_2047(CONSTANT,123)
    c_i16_2047_q <= "0000011111111111";

    -- rightShiftStage1Idx1Pad2_uid311_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x(CONSTANT,310)
    rightShiftStage1Idx1Pad2_uid311_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q <= "00";

    -- rightShiftStage1Idx1Rng2_uid310_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x(BITSELECT,309)@7
    rightShiftStage1Idx1Rng2_uid310_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_b <= rightShiftStage0_uid309_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q(15 downto 2);

    -- rightShiftStage1Idx1_uid312_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x(BITJOIN,311)@7
    rightShiftStage1Idx1_uid312_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q <= rightShiftStage1Idx1Pad2_uid311_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q & rightShiftStage1Idx1Rng2_uid310_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_b;

    -- rightShiftStage0Idx1Rng8_uid305_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x(BITSELECT,304)@7
    rightShiftStage0Idx1Rng8_uid305_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_b <= i_ffwd_dst_unnamed_processfpga238_processfpga_out_dest_data_out_95_0(15 downto 8);

    -- rightShiftStage0Idx1_uid307_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x(BITJOIN,306)@7
    rightShiftStage0Idx1_uid307_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q <= i_conv8_i_i_i754_processfpga_vt_const_15_q & rightShiftStage0Idx1Rng8_uid305_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_b;

    -- i_ffwd_dst_unnamed_processfpga238_processfpga(BLACKBOX,179)@7
    thei_ffwd_dst_unnamed_processfpga238_processfpga : i_ffwd_dst_unnamed_processfpga238_processfpga1702
    PORT MAP (
        in_intel_reserved_ffwd_95_0 => in_intel_reserved_ffwd_95_0,
        in_stall_in => GND_q,
        in_valid_in => redist4_sync_in_in_i_valid_7_q,
        out_dest_data_out_95_0 => i_ffwd_dst_unnamed_processfpga238_processfpga_out_dest_data_out_95_0,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0_uid309_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x(MUX,308)@7
    rightShiftStage0_uid309_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_s <= VCC_q;
    rightShiftStage0_uid309_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_combproc: PROCESS (rightShiftStage0_uid309_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_s, i_ffwd_dst_unnamed_processfpga238_processfpga_out_dest_data_out_95_0, rightShiftStage0Idx1_uid307_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid309_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid309_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q <= i_ffwd_dst_unnamed_processfpga238_processfpga_out_dest_data_out_95_0;
            WHEN "1" => rightShiftStage0_uid309_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q <= rightShiftStage0Idx1_uid307_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid309_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid314_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x(MUX,313)@7
    rightShiftStage1_uid314_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_s <= VCC_q;
    rightShiftStage1_uid314_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_combproc: PROCESS (rightShiftStage1_uid314_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_s, rightShiftStage0_uid309_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q, rightShiftStage1Idx1_uid312_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid314_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid314_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q <= rightShiftStage0_uid309_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q;
            WHEN "1" => rightShiftStage1_uid314_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q <= rightShiftStage1Idx1_uid312_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid314_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_shr_i_i_i_i7641224_processfpga_vt_select_5(BITSELECT,211)@7
    i_shr_i_i_i_i7641224_processfpga_vt_select_5_b <= rightShiftStage1_uid314_i_shr_i_i_i_i7641224_processfpga_processfpga1704_shift_x_q(5 downto 0);

    -- i_shr_i_i_i_i7641224_processfpga_vt_join(BITJOIN,210)@7
    i_shr_i_i_i_i7641224_processfpga_vt_join_q <= i_result_i_i_i_i747_processfpga_vt_const_15_q & i_shr_i_i_i_i7641224_processfpga_vt_select_5_b;

    -- i_unnamed_processfpga1705(LOGICAL,220)@7 + 1
    i_unnamed_processfpga1705_qi <= "1" WHEN i_shr_i_i_i_i7641224_processfpga_vt_join_q = c_i16_1gr_q ELSE "0";
    i_unnamed_processfpga1705_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga1705_qi, xout => i_unnamed_processfpga1705_q, clk => clock, aclr => resetn );

    -- i_not_1345_processfpga(LOGICAL,202)@8
    i_not_1345_processfpga_q <= i_unnamed_processfpga1705_q xor VCC_q;

    -- c_i16_7gr(CONSTANT,132)
    c_i16_7gr_q <= "0000000000000111";

    -- i_unnamed_processfpga1707(LOGICAL,221)@7 + 1
    i_unnamed_processfpga1707_qi <= "1" WHEN i_shr_i_i_i_i7641224_processfpga_vt_join_q = c_i16_7gr_q ELSE "0";
    i_unnamed_processfpga1707_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga1707_qi, xout => i_unnamed_processfpga1707_q, clk => clock, aclr => resetn );

    -- i_acl_969_processfpga(LOGICAL,140)@8
    i_acl_969_processfpga_q <= i_unnamed_processfpga1707_q and i_not_1345_processfpga_q;

    -- i_acl_970_processfpga(MUX,141)@8
    i_acl_970_processfpga_s <= i_acl_969_processfpga_q;
    i_acl_970_processfpga_combproc: PROCESS (i_acl_970_processfpga_s, dupName_0_c_i16_1gr_x_q, c_i16_2047_q)
    BEGIN
        CASE (i_acl_970_processfpga_s) IS
            WHEN "0" => i_acl_970_processfpga_q <= dupName_0_c_i16_1gr_x_q;
            WHEN "1" => i_acl_970_processfpga_q <= c_i16_2047_q;
            WHEN OTHERS => i_acl_970_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_970_processfpga_vt_select_15(BITSELECT,144)@8
    i_acl_970_processfpga_vt_select_15_b <= i_acl_970_processfpga_q(15 downto 11);

    -- i_acl_970_processfpga_vt_const_10(CONSTANT,142)
    i_acl_970_processfpga_vt_const_10_q <= "11111111111";

    -- i_acl_970_processfpga_vt_join(BITJOIN,143)@8
    i_acl_970_processfpga_vt_join_q <= i_acl_970_processfpga_vt_select_15_b & i_acl_970_processfpga_vt_const_10_q;

    -- i_not_1346_processfpga(LOGICAL,203)@8
    i_not_1346_processfpga_q <= i_unnamed_processfpga1707_q xor VCC_q;

    -- c_i16_49(CONSTANT,128)
    c_i16_49_q <= "0000000000110001";

    -- i_unnamed_processfpga1709(LOGICAL,222)@7 + 1
    i_unnamed_processfpga1709_qi <= "1" WHEN i_shr_i_i_i_i7641224_processfpga_vt_join_q = c_i16_49_q ELSE "0";
    i_unnamed_processfpga1709_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga1709_qi, xout => i_unnamed_processfpga1709_q, clk => clock, aclr => resetn );

    -- i_acl_971_processfpga(LOGICAL,145)@8
    i_acl_971_processfpga_q <= i_unnamed_processfpga1709_q and i_not_1346_processfpga_q;

    -- i_acl_972_processfpga(LOGICAL,146)@8
    i_acl_972_processfpga_q <= i_acl_971_processfpga_q and i_not_1345_processfpga_q;

    -- i_acl_973_processfpga(MUX,147)@8
    i_acl_973_processfpga_s <= i_acl_972_processfpga_q;
    i_acl_973_processfpga_combproc: PROCESS (i_acl_973_processfpga_s, i_acl_970_processfpga_vt_join_q, c_i16_63_q)
    BEGIN
        CASE (i_acl_973_processfpga_s) IS
            WHEN "0" => i_acl_973_processfpga_q <= i_acl_970_processfpga_vt_join_q;
            WHEN "1" => i_acl_973_processfpga_q <= c_i16_63_q;
            WHEN OTHERS => i_acl_973_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_973_processfpga_vt_select_15(BITSELECT,150)@8
    i_acl_973_processfpga_vt_select_15_b <= i_acl_973_processfpga_q(15 downto 6);

    -- redist11_i_acl_973_processfpga_vt_select_15_b_1(DELAY,365)
    redist11_i_acl_973_processfpga_vt_select_15_b_1 : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_973_processfpga_vt_select_15_b, xout => redist11_i_acl_973_processfpga_vt_select_15_b_1_q, clk => clock, aclr => resetn );

    -- i_acl_973_processfpga_vt_const_5(CONSTANT,148)
    i_acl_973_processfpga_vt_const_5_q <= "111111";

    -- i_acl_973_processfpga_vt_join(BITJOIN,149)@9
    i_acl_973_processfpga_vt_join_q <= redist11_i_acl_973_processfpga_vt_select_15_b_1_q & i_acl_973_processfpga_vt_const_5_q;

    -- i_acl_975_demorgan_processfpga(LOGICAL,151)@8
    i_acl_975_demorgan_processfpga_q <= i_unnamed_processfpga1707_q or i_unnamed_processfpga1709_q;

    -- i_acl_976_demorgan_processfpga(LOGICAL,152)@8 + 1
    i_acl_976_demorgan_processfpga_qi <= i_unnamed_processfpga1705_q or i_acl_975_demorgan_processfpga_q;
    i_acl_976_demorgan_processfpga_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_976_demorgan_processfpga_qi, xout => i_acl_976_demorgan_processfpga_q, clk => clock, aclr => resetn );

    -- i_acl_977_processfpga(MUX,153)@9
    i_acl_977_processfpga_s <= i_acl_976_demorgan_processfpga_q;
    i_acl_977_processfpga_combproc: PROCESS (i_acl_977_processfpga_s, c_i16_0gr_q, i_acl_973_processfpga_vt_join_q)
    BEGIN
        CASE (i_acl_977_processfpga_s) IS
            WHEN "0" => i_acl_977_processfpga_q <= c_i16_0gr_q;
            WHEN "1" => i_acl_977_processfpga_q <= i_acl_973_processfpga_vt_join_q;
            WHEN OTHERS => i_acl_977_processfpga_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_and_i5_i_i778_processfpga(LOGICAL,160)@9
    i_and_i5_i_i778_processfpga_q <= i_acl_977_processfpga_q and i_neg_i_i_i777_processfpga_q;

    -- i_xor4_i_i_i779_processfpga(LOGICAL,227)@9
    i_xor4_i_i_i779_processfpga_q <= i_and_i5_i_i778_processfpga_q xor i_normls_or485_compressed_processfpga_processfpga1701_normls_or485_bitvec_join_x_q;

    -- rightShiftStage0Idx1Rng8_uid296_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_merged_bit_select(BITSELECT,353)@9
    rightShiftStage0Idx1Rng8_uid296_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_merged_bit_select_b <= i_xor4_i_i_i779_processfpga_q(15 downto 8);
    rightShiftStage0Idx1Rng8_uid296_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_merged_bit_select_c <= i_xor4_i_i_i779_processfpga_q(7 downto 0);

    -- redist6_sync_in_in_i_valid_9(DELAY,360)
    redist6_sync_in_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_sync_in_in_i_valid_8_q, xout => redist6_sync_in_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_unnamed_processfpga239_processfpga(BLACKBOX,180)@9
    thei_ffwd_dst_unnamed_processfpga239_processfpga : i_ffwd_dst_unnamed_processfpga239_processfpga1716
    PORT MAP (
        in_intel_reserved_ffwd_98_0 => in_intel_reserved_ffwd_98_0,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_in_i_valid_9_q,
        out_dest_data_out_98_0 => i_ffwd_dst_unnamed_processfpga239_processfpga_out_dest_data_out_98_0,
        clock => clock,
        resetn => resetn
    );

    -- i_clst109_i_i783_processfpga_processfpga1715_c_i64_5gr_x(CONSTANT,74)
    i_clst109_i_i783_processfpga_processfpga1715_c_i64_5gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000101";

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_shift0(BITSHIFT,340)@5
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_shift0_qint <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_c & "0";
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_shift0_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_shift0_qint(10 downto 0);

    -- i_ffwd_dst_idxprom_i571495_processfpga(BLACKBOX,174)@5
    thei_ffwd_dst_idxprom_i571495_processfpga : i_ffwd_dst_idxprom_i571495_processfpga1713
    PORT MAP (
        in_intel_reserved_ffwd_94_0 => in_intel_reserved_ffwd_94_0,
        in_stall_in => GND_q,
        in_valid_in => redist2_sync_in_in_i_valid_5_q,
        out_dest_data_out_94_0 => i_ffwd_dst_idxprom_i571495_processfpga_out_dest_data_out_94_0,
        clock => clock,
        resetn => resetn
    );

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select(BITSELECT,350)@5
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_b <= i_ffwd_dst_idxprom_i571495_processfpga_out_dest_data_out_94_0(17 downto 0);
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_c <= i_ffwd_dst_idxprom_i571495_processfpga_out_dest_data_out_94_0(63 downto 54);
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_d <= i_ffwd_dst_idxprom_i571495_processfpga_out_dest_data_out_94_0(35 downto 18);
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_e <= i_ffwd_dst_idxprom_i571495_processfpga_out_dest_data_out_94_0(53 downto 36);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_add_1(ADD,341)@5 + 1
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_c);
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_shift0_q);
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_add_1_a) + UNSIGNED(i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_add_1_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_add_1_o(11 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_shift2(BITSHIFT,342)@6
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_shift2_qint <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_add_1_q & "00";
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_shift2_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_shift2_qint(13 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_15(BITSHIFT,289)@6
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_15_qint <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im3_shift2_q & "00000000000000";
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_15_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_15_qint(27 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_shift0(BITSHIFT,343)@5
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_shift0_qint <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_d & "0";
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_shift0_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_shift0_qint(18 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_add_1(ADD,344)@5 + 1
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_d);
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_shift0_q);
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_add_1_a) + UNSIGNED(i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_add_1_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_add_1_o(19 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_shift2(BITSHIFT,345)@6
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_shift2_qint <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_add_1_q & "00";
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_shift2_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_shift2_qint(21 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_14(BITSHIFT,288)@6
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_14_qint <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im6_shift2_q & "000000000000000000";
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_14_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_14_qint(39 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_join_16(BITJOIN,290)@6
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_join_16_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_15_q & i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_14_q;

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_shift0(BITSHIFT,346)@5
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_shift0_qint <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_e & "0";
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_shift0_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_shift0_qint(18 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_add_1(ADD,347)@5 + 1
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_e);
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_shift0_q);
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_add_1_a) + UNSIGNED(i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_add_1_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_add_1_o(19 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_shift2(BITSHIFT,348)@6
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_shift2_qint <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_add_1_q & "00";
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_shift2_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_shift2_qint(21 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_12(BITSHIFT,286)@6
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_12_qint <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im9_shift2_q & "00000000000000";
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_12_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_12_qint(35 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_shift0(BITSHIFT,337)@5
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_shift0_qint <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_b & "0";
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_shift0_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_shift0_qint(18 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_add_1(ADD,338)@5 + 1
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_clst109_i_i783_processfpga_processfpga1715_mult_x_bs1_merged_bit_select_b);
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_shift0_q);
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_add_1_a) + UNSIGNED(i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_add_1_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_add_1_o(19 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_shift2(BITSHIFT,339)@6
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_shift2_qint <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_add_1_q & "00";
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_shift2_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_shift2_qint(21 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_join_13(BITJOIN,287)@6
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_join_13_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_align_12_q & i_clst109_i_i783_processfpga_processfpga1715_mult_x_im0_shift2_q;

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_x_result_add_0_0(ADD,291)@6
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_clst109_i_i783_processfpga_processfpga1715_mult_x_join_13_q);
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_clst109_i_i783_processfpga_processfpga1715_mult_x_join_16_q);
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clst109_i_i783_processfpga_processfpga1715_mult_x_result_add_0_0_a) + UNSIGNED(i_clst109_i_i783_processfpga_processfpga1715_mult_x_result_add_0_0_b));
    i_clst109_i_i783_processfpga_processfpga1715_mult_x_result_add_0_0_q <= i_clst109_i_i783_processfpga_processfpga1715_mult_x_result_add_0_0_o(68 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_mult_extender_x(BITJOIN,69)@6
    i_clst109_i_i783_processfpga_processfpga1715_mult_extender_x_q <= i_clpst105_i_i762_processfpga_processfpga1690_mult_multconst_x_q & i_clst109_i_i783_processfpga_processfpga1715_mult_x_result_add_0_0_q(67 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_trunc_sel_x(BITSELECT,71)@6
    i_clst109_i_i783_processfpga_processfpga1715_trunc_sel_x_b <= i_clst109_i_i783_processfpga_processfpga1715_mult_extender_x_q(63 downto 0);

    -- redist12_i_clst109_i_i783_processfpga_processfpga1715_trunc_sel_x_b_1(DELAY,366)
    redist12_i_clst109_i_i783_processfpga_processfpga1715_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clst109_i_i783_processfpga_processfpga1715_trunc_sel_x_b, xout => redist12_i_clst109_i_i783_processfpga_processfpga1715_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer90_processfpga(BLACKBOX,216)@0
    -- in in_i_dependence@7
    -- in in_valid_in@7
    -- out out_buffer_out@7
    -- out out_valid_out@7
    thei_syncbuf_localneurons_sync_buffer90_processfpga : i_syncbuf_localneurons_sync_buffer90_processfpga1711
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist4_sync_in_in_i_valid_7_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer90_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_clst109_i_i783_processfpga_processfpga1715_add_x(ADD,72)@7
    i_clst109_i_i783_processfpga_processfpga1715_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer90_processfpga_out_buffer_out);
    i_clst109_i_i783_processfpga_processfpga1715_add_x_b <= STD_LOGIC_VECTOR("0" & redist12_i_clst109_i_i783_processfpga_processfpga1715_trunc_sel_x_b_1_q);
    i_clst109_i_i783_processfpga_processfpga1715_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clst109_i_i783_processfpga_processfpga1715_add_x_a) + UNSIGNED(i_clst109_i_i783_processfpga_processfpga1715_add_x_b));
    i_clst109_i_i783_processfpga_processfpga1715_add_x_q <= i_clst109_i_i783_processfpga_processfpga1715_add_x_o(64 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_dupName_0_trunc_sel_x(BITSELECT,63)@7
    i_clst109_i_i783_processfpga_processfpga1715_dupName_0_trunc_sel_x_b <= i_clst109_i_i783_processfpga_processfpga1715_add_x_q(63 downto 0);

    -- redist14_i_clst109_i_i783_processfpga_processfpga1715_dupName_0_trunc_sel_x_b_1(DELAY,368)
    redist14_i_clst109_i_i783_processfpga_processfpga1715_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clst109_i_i783_processfpga_processfpga1715_dupName_0_trunc_sel_x_b, xout => redist14_i_clst109_i_i783_processfpga_processfpga1715_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_clst109_i_i783_processfpga_processfpga1715_dupName_0_add_x(ADD,66)@8
    i_clst109_i_i783_processfpga_processfpga1715_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist14_i_clst109_i_i783_processfpga_processfpga1715_dupName_0_trunc_sel_x_b_1_q);
    i_clst109_i_i783_processfpga_processfpga1715_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_clst109_i_i783_processfpga_processfpga1715_c_i64_5gr_x_q);
    i_clst109_i_i783_processfpga_processfpga1715_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clst109_i_i783_processfpga_processfpga1715_dupName_0_add_x_a) + UNSIGNED(i_clst109_i_i783_processfpga_processfpga1715_dupName_0_add_x_b));
    i_clst109_i_i783_processfpga_processfpga1715_dupName_0_add_x_q <= i_clst109_i_i783_processfpga_processfpga1715_dupName_0_add_x_o(64 downto 0);

    -- i_clst109_i_i783_processfpga_processfpga1715_dupName_1_trunc_sel_x(BITSELECT,64)@8
    i_clst109_i_i783_processfpga_processfpga1715_dupName_1_trunc_sel_x_b <= i_clst109_i_i783_processfpga_processfpga1715_dupName_0_add_x_q(63 downto 0);

    -- redist13_i_clst109_i_i783_processfpga_processfpga1715_dupName_1_trunc_sel_x_b_1(DELAY,367)
    redist13_i_clst109_i_i783_processfpga_processfpga1715_dupName_1_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clst109_i_i783_processfpga_processfpga1715_dupName_1_trunc_sel_x_b, xout => redist13_i_clst109_i_i783_processfpga_processfpga1715_dupName_1_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_store_memdep_26_processfpga(BLACKBOX,212)@9
    -- out out_memdep_26_avm_address@20000000
    -- out out_memdep_26_avm_burstcount@20000000
    -- out out_memdep_26_avm_byteenable@20000000
    -- out out_memdep_26_avm_enable@20000000
    -- out out_memdep_26_avm_read@20000000
    -- out out_memdep_26_avm_write@20000000
    -- out out_memdep_26_avm_writedata@20000000
    -- out out_o_stall@10
    -- out out_o_valid@10
    -- out out_o_writeack@10
    thei_store_memdep_26_processfpga : i_store_memdep_26_processfpga1718
    PORT MAP (
        in_flush => in_flush,
        in_i_address => redist13_i_clst109_i_i783_processfpga_processfpga1715_dupName_1_trunc_sel_x_b_1_q,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga239_processfpga_out_dest_data_out_98_0,
        in_i_stall => GND_q,
        in_i_valid => redist6_sync_in_in_i_valid_9_q,
        in_i_writedata => rightShiftStage0Idx1Rng8_uid296_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_merged_bit_select_c,
        in_memdep_26_avm_readdata => in_memdep_26_avm_readdata,
        in_memdep_26_avm_readdatavalid => in_memdep_26_avm_readdatavalid,
        in_memdep_26_avm_waitrequest => in_memdep_26_avm_waitrequest,
        in_memdep_26_avm_writeack => in_memdep_26_avm_writeack,
        out_memdep_26_avm_address => i_store_memdep_26_processfpga_out_memdep_26_avm_address,
        out_memdep_26_avm_burstcount => i_store_memdep_26_processfpga_out_memdep_26_avm_burstcount,
        out_memdep_26_avm_byteenable => i_store_memdep_26_processfpga_out_memdep_26_avm_byteenable,
        out_memdep_26_avm_enable => i_store_memdep_26_processfpga_out_memdep_26_avm_enable,
        out_memdep_26_avm_read => i_store_memdep_26_processfpga_out_memdep_26_avm_read,
        out_memdep_26_avm_write => i_store_memdep_26_processfpga_out_memdep_26_avm_write,
        out_memdep_26_avm_writedata => i_store_memdep_26_processfpga_out_memdep_26_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_1_ext_sig_sync_out_x(GPOUT,11)
    out_memdep_26_avm_address <= i_store_memdep_26_processfpga_out_memdep_26_avm_address;
    out_memdep_26_avm_enable <= i_store_memdep_26_processfpga_out_memdep_26_avm_enable;
    out_memdep_26_avm_read <= i_store_memdep_26_processfpga_out_memdep_26_avm_read;
    out_memdep_26_avm_write <= i_store_memdep_26_processfpga_out_memdep_26_avm_write;
    out_memdep_26_avm_writedata <= i_store_memdep_26_processfpga_out_memdep_26_avm_writedata;
    out_memdep_26_avm_byteenable <= i_store_memdep_26_processfpga_out_memdep_26_avm_byteenable;
    out_memdep_26_avm_burstcount <= i_store_memdep_26_processfpga_out_memdep_26_avm_burstcount;

    -- rightShiftStage0Idx1_uid298_i_nomrls_lshr489_processfpga_processfpga1720_shift_x(BITJOIN,297)@9
    rightShiftStage0Idx1_uid298_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_q <= i_conv8_i_i_i754_processfpga_vt_const_15_q & rightShiftStage0Idx1Rng8_uid296_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_merged_bit_select_b;

    -- rightShiftStage0_uid300_i_nomrls_lshr489_processfpga_processfpga1720_shift_x(MUX,299)@9
    rightShiftStage0_uid300_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_s <= VCC_q;
    rightShiftStage0_uid300_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_combproc: PROCESS (rightShiftStage0_uid300_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_s, i_xor4_i_i_i779_processfpga_q, rightShiftStage0Idx1_uid298_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid300_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid300_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_q <= i_xor4_i_i_i779_processfpga_q;
            WHEN "1" => rightShiftStage0_uid300_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_q <= rightShiftStage0Idx1_uid298_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid300_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_nomrls_lshr489_processfpga_vt_select_7(BITSELECT,197)@9
    i_nomrls_lshr489_processfpga_vt_select_7_b <= rightShiftStage0_uid300_i_nomrls_lshr489_processfpga_processfpga1720_shift_x_q(7 downto 0);

    -- i_nomrls_lshr489_processfpga_vt_join(BITJOIN,196)@9
    i_nomrls_lshr489_processfpga_vt_join_q <= i_conv8_i_i_i754_processfpga_vt_const_15_q & i_nomrls_lshr489_processfpga_vt_select_7_b;

    -- i_normls_trunc491_processfpga_sel_x(BITSELECT,109)@9
    i_normls_trunc491_processfpga_sel_x_b <= i_nomrls_lshr489_processfpga_vt_join_q(7 downto 0);

    -- i_ffwd_dst_unnamed_processfpga240_processfpga(BLACKBOX,181)@9
    thei_ffwd_dst_unnamed_processfpga240_processfpga : i_ffwd_dst_unnamed_processfpga240_processfpga1722
    PORT MAP (
        in_intel_reserved_ffwd_98_0 => in_intel_reserved_ffwd_98_0,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_in_i_valid_9_q,
        out_dest_data_out_98_0 => i_ffwd_dst_unnamed_processfpga240_processfpga_out_dest_data_out_98_0,
        clock => clock,
        resetn => resetn
    );

    -- i_normls_gep490_processfpga_processfpga1721_add_x(ADD,87)@9
    i_normls_gep490_processfpga_processfpga1721_add_x_a <= STD_LOGIC_VECTOR("0" & redist13_i_clst109_i_i783_processfpga_processfpga1715_dupName_1_trunc_sel_x_b_1_q);
    i_normls_gep490_processfpga_processfpga1721_add_x_b <= STD_LOGIC_VECTOR("0" & i_normls_gep481_processfpga_processfpga1695_c_i64_1gr_x_q);
    i_normls_gep490_processfpga_processfpga1721_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_normls_gep490_processfpga_processfpga1721_add_x_a) + UNSIGNED(i_normls_gep490_processfpga_processfpga1721_add_x_b));
    i_normls_gep490_processfpga_processfpga1721_add_x_q <= i_normls_gep490_processfpga_processfpga1721_add_x_o(64 downto 0);

    -- i_normls_gep490_processfpga_processfpga1721_trunc_sel_x(BITSELECT,86)@9
    i_normls_gep490_processfpga_processfpga1721_trunc_sel_x_b <= i_normls_gep490_processfpga_processfpga1721_add_x_q(63 downto 0);

    -- i_store_memdep_27_processfpga(BLACKBOX,213)@9
    -- out out_memdep_27_avm_address@20000000
    -- out out_memdep_27_avm_burstcount@20000000
    -- out out_memdep_27_avm_byteenable@20000000
    -- out out_memdep_27_avm_enable@20000000
    -- out out_memdep_27_avm_read@20000000
    -- out out_memdep_27_avm_write@20000000
    -- out out_memdep_27_avm_writedata@20000000
    -- out out_o_stall@10
    -- out out_o_valid@10
    -- out out_o_writeack@10
    thei_store_memdep_27_processfpga : i_store_memdep_27_processfpga1724
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_normls_gep490_processfpga_processfpga1721_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_unnamed_processfpga240_processfpga_out_dest_data_out_98_0,
        in_i_stall => GND_q,
        in_i_valid => redist6_sync_in_in_i_valid_9_q,
        in_i_writedata => i_normls_trunc491_processfpga_sel_x_b,
        in_memdep_27_avm_readdata => in_memdep_27_avm_readdata,
        in_memdep_27_avm_readdatavalid => in_memdep_27_avm_readdatavalid,
        in_memdep_27_avm_waitrequest => in_memdep_27_avm_waitrequest,
        in_memdep_27_avm_writeack => in_memdep_27_avm_writeack,
        out_memdep_27_avm_address => i_store_memdep_27_processfpga_out_memdep_27_avm_address,
        out_memdep_27_avm_burstcount => i_store_memdep_27_processfpga_out_memdep_27_avm_burstcount,
        out_memdep_27_avm_byteenable => i_store_memdep_27_processfpga_out_memdep_27_avm_byteenable,
        out_memdep_27_avm_enable => i_store_memdep_27_processfpga_out_memdep_27_avm_enable,
        out_memdep_27_avm_read => i_store_memdep_27_processfpga_out_memdep_27_avm_read,
        out_memdep_27_avm_write => i_store_memdep_27_processfpga_out_memdep_27_avm_write,
        out_memdep_27_avm_writedata => i_store_memdep_27_processfpga_out_memdep_27_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_2_ext_sig_sync_out_x(GPOUT,15)
    out_memdep_27_avm_address <= i_store_memdep_27_processfpga_out_memdep_27_avm_address;
    out_memdep_27_avm_enable <= i_store_memdep_27_processfpga_out_memdep_27_avm_enable;
    out_memdep_27_avm_read <= i_store_memdep_27_processfpga_out_memdep_27_avm_read;
    out_memdep_27_avm_write <= i_store_memdep_27_processfpga_out_memdep_27_avm_write;
    out_memdep_27_avm_writedata <= i_store_memdep_27_processfpga_out_memdep_27_avm_writedata;
    out_memdep_27_avm_byteenable <= i_store_memdep_27_processfpga_out_memdep_27_avm_byteenable;
    out_memdep_27_avm_burstcount <= i_store_memdep_27_processfpga_out_memdep_27_avm_burstcount;

    -- i_ffwd_dst_unnamed_processfpga242_processfpga(BLACKBOX,183)@8
    thei_ffwd_dst_unnamed_processfpga242_processfpga : i_ffwd_dst_unnamed_processfpga242_processfpga1736
    PORT MAP (
        in_intel_reserved_ffwd_98_0 => in_intel_reserved_ffwd_98_0,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_in_i_valid_8_q,
        out_dest_data_out_98_0 => i_ffwd_dst_unnamed_processfpga242_processfpga_out_dest_data_out_98_0,
        clock => clock,
        resetn => resetn
    );

    -- i_and112_i_i785_processfpga_vt_const_15(CONSTANT,157)
    i_and112_i_i785_processfpga_vt_const_15_q <= "00000000000000";

    -- i_ffwd_dst_unnamed_processfpga241_processfpga(BLACKBOX,182)@8
    thei_ffwd_dst_unnamed_processfpga241_processfpga : i_ffwd_dst_unnamed_processfpga241_processfpga1726
    PORT MAP (
        in_intel_reserved_ffwd_95_0 => in_intel_reserved_ffwd_95_0,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_in_i_valid_8_q,
        out_dest_data_out_95_0 => i_ffwd_dst_unnamed_processfpga241_processfpga_out_dest_data_out_95_0,
        clock => clock,
        resetn => resetn
    );

    -- i_and112_i_i785_processfpga(LOGICAL,155)@8
    i_and112_i_i785_processfpga_q <= i_ffwd_dst_unnamed_processfpga241_processfpga_out_dest_data_out_95_0 and c_i16_2gr_q;

    -- i_and112_i_i785_processfpga_vt_select_1(BITSELECT,159)@8
    i_and112_i_i785_processfpga_vt_select_1_b <= i_and112_i_i785_processfpga_q(1 downto 1);

    -- i_and112_i_i785_processfpga_vt_join(BITJOIN,158)@8
    i_and112_i_i785_processfpga_vt_join_q <= i_and112_i_i785_processfpga_vt_const_15_q & i_and112_i_i785_processfpga_vt_select_1_b & GND_q;

    -- i_tobool113_i_i786_processfpga(LOGICAL,219)@8
    i_tobool113_i_i786_processfpga_q <= "1" WHEN i_and112_i_i785_processfpga_vt_join_q = c_i16_0gr_q ELSE "0";

    -- i_or1233_xor_or_processfpga(LOGICAL,204)@8
    i_or1233_xor_or_processfpga_q <= i_tobool113_i_i786_processfpga_q or i_ffwd_dst_unnamed_processfpga242_processfpga_out_dest_data_out_98_0;

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_mult_multconst_x(CONSTANT,43)
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_multconst_x_q <= "00000000000000000000000000000000000000000000000000000000000000";

    -- i_idxprom118_i_i792_processfpga_vt_const_63(CONSTANT,185)
    i_idxprom118_i_i792_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_acl_4325_processfpga(BLACKBOX,170)@6
    thei_ffwd_dst_acl_4325_processfpga : i_ffwd_dst_acl_4325_processfpga1729
    PORT MAP (
        in_intel_reserved_ffwd_6_0 => in_intel_reserved_ffwd_6_0,
        in_stall_in => GND_q,
        in_valid_in => redist3_sync_in_in_i_valid_6_q,
        out_dest_data_out_6_0 => i_ffwd_dst_acl_4325_processfpga_out_dest_data_out_6_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_idx_1_i1324_replace_phi493_processfpga(BLACKBOX,173)@6
    thei_ffwd_dst_idx_1_i1324_replace_phi493_processfpga : i_ffwd_dst_idx_1_i1324_replace_phi493_processfpga1731
    PORT MAP (
        in_intel_reserved_ffwd_93_0 => in_intel_reserved_ffwd_93_0,
        in_stall_in => GND_q,
        in_valid_in => redist3_sync_in_in_i_valid_6_q,
        out_dest_data_out_93_0 => i_ffwd_dst_idx_1_i1324_replace_phi493_processfpga_out_dest_data_out_93_0,
        clock => clock,
        resetn => resetn
    );

    -- i_sub_i_i790_processfpga(SUB,215)@6
    i_sub_i_i790_processfpga_a <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_idx_1_i1324_replace_phi493_processfpga_out_dest_data_out_93_0);
    i_sub_i_i790_processfpga_b <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_acl_4325_processfpga_out_dest_data_out_6_0);
    i_sub_i_i790_processfpga_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_i_i790_processfpga_a) - UNSIGNED(i_sub_i_i790_processfpga_b));
    i_sub_i_i790_processfpga_q <= i_sub_i_i790_processfpga_o(16 downto 0);

    -- bgTrunc_i_sub_i_i790_processfpga_sel_x(BITSELECT,2)@6
    bgTrunc_i_sub_i_i790_processfpga_sel_x_b <= STD_LOGIC_VECTOR(i_sub_i_i790_processfpga_q(15 downto 0));

    -- i_idxprom118_i_i792_processfpga_sel_x(BITSELECT,77)@6
    i_idxprom118_i_i792_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(bgTrunc_i_sub_i_i790_processfpga_sel_x_b(15 downto 0)), 64));

    -- i_idxprom118_i_i792_processfpga_vt_select_15(BITSELECT,187)@6
    i_idxprom118_i_i792_processfpga_vt_select_15_b <= i_idxprom118_i_i792_processfpga_sel_x_b(15 downto 0);

    -- redist9_i_idxprom118_i_i792_processfpga_vt_select_15_b_1(DELAY,363)
    redist9_i_idxprom118_i_i792_processfpga_vt_select_15_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_idxprom118_i_i792_processfpga_vt_select_15_b, xout => redist9_i_idxprom118_i_i792_processfpga_vt_select_15_b_1_q, clk => clock, aclr => resetn );

    -- i_idxprom118_i_i792_processfpga_vt_join(BITJOIN,186)@7
    i_idxprom118_i_i792_processfpga_vt_join_q <= i_idxprom118_i_i792_processfpga_vt_const_63_q & redist9_i_idxprom118_i_i792_processfpga_vt_select_15_b_1_q;

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_bs1_merged_bit_select(BITSELECT,352)@7
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_bs1_merged_bit_select_b <= i_idxprom118_i_i792_processfpga_vt_join_q(17 downto 0);
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_bs1_merged_bit_select_c <= i_idxprom118_i_i792_processfpga_vt_join_q(63 downto 54);
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_bs1_merged_bit_select_d <= i_idxprom118_i_i792_processfpga_vt_join_q(35 downto 18);
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_bs1_merged_bit_select_e <= i_idxprom118_i_i792_processfpga_vt_join_q(53 downto 36);

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im3_shift0(BITSHIFT,322)@7
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im3_shift0_qint <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_bs1_merged_bit_select_c & "0";
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im3_shift0_q <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im3_shift0_qint(10 downto 0);

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_15(BITSHIFT,253)@7
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im3_shift0_q) & "0000000000000000";
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_15_q <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im6_shift0(BITSHIFT,323)@7
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im6_shift0_qint <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_bs1_merged_bit_select_d & "0";
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im6_shift0_q <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im6_shift0_qint(18 downto 0);

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_14(BITSHIFT,252)@7
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_14_q <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_14_qint(37 downto 0);

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_join_16(BITJOIN,254)@7
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_join_16_q <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_15_q & i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_14_q;

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im9_shift0(BITSHIFT,324)@7
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im9_shift0_qint <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_bs1_merged_bit_select_e & "0";
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im9_shift0_q <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im9_shift0_qint(18 downto 0);

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_12(BITSHIFT,250)@7
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im9_shift0_q) & "0000000000000000";
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_12_q <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im0_shift0(BITSHIFT,321)@7
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im0_shift0_qint <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_bs1_merged_bit_select_b & "0";
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im0_shift0_q <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im0_shift0_qint(18 downto 0);

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_join_13(BITJOIN,251)@7
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_join_13_q <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_im0_shift0_q);

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_result_add_0_0(ADD,255)@7
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_join_13_q);
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_join_16_q);
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_result_add_0_0_b));
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_result_add_0_0_q <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_result_add_0_0_o(66 downto 0);

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_mult_extender_x(BITJOIN,42)@7
    i_arrayidx119_i_i793_processfpga_processfpga1735_mult_extender_x_q <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_multconst_x_q & i_arrayidx119_i_i793_processfpga_processfpga1735_mult_x_result_add_0_0_q(65 downto 0);

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_trunc_sel_x(BITSELECT,44)@7
    i_arrayidx119_i_i793_processfpga_processfpga1735_trunc_sel_x_b <= i_arrayidx119_i_i793_processfpga_processfpga1735_mult_extender_x_q(63 downto 0);

    -- redist18_i_arrayidx119_i_i793_processfpga_processfpga1735_trunc_sel_x_b_1(DELAY,372)
    redist18_i_arrayidx119_i_i793_processfpga_processfpga1735_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx119_i_i793_processfpga_processfpga1735_trunc_sel_x_b, xout => redist18_i_arrayidx119_i_i793_processfpga_processfpga1735_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localoutput_sync_buffer168_processfpga(BLACKBOX,218)@0
    -- in in_i_dependence@8
    -- in in_valid_in@8
    -- out out_buffer_out@8
    -- out out_valid_out@8
    thei_syncbuf_localoutput_sync_buffer168_processfpga : i_syncbuf_localoutput_sync_buffer168_processfpga1733
    PORT MAP (
        in_buffer_in => in_localOutput,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_in_i_valid_8_q,
        out_buffer_out => i_syncbuf_localoutput_sync_buffer168_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_add_x(ADD,45)@8
    i_arrayidx119_i_i793_processfpga_processfpga1735_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localoutput_sync_buffer168_processfpga_out_buffer_out);
    i_arrayidx119_i_i793_processfpga_processfpga1735_add_x_b <= STD_LOGIC_VECTOR("0" & redist18_i_arrayidx119_i_i793_processfpga_processfpga1735_trunc_sel_x_b_1_q);
    i_arrayidx119_i_i793_processfpga_processfpga1735_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx119_i_i793_processfpga_processfpga1735_add_x_a) + UNSIGNED(i_arrayidx119_i_i793_processfpga_processfpga1735_add_x_b));
    i_arrayidx119_i_i793_processfpga_processfpga1735_add_x_q <= i_arrayidx119_i_i793_processfpga_processfpga1735_add_x_o(64 downto 0);

    -- i_arrayidx119_i_i793_processfpga_processfpga1735_dupName_0_trunc_sel_x(BITSELECT,39)@8
    i_arrayidx119_i_i793_processfpga_processfpga1735_dupName_0_trunc_sel_x_b <= i_arrayidx119_i_i793_processfpga_processfpga1735_add_x_q(63 downto 0);

    -- i_store_memdep_28_processfpga(BLACKBOX,214)@8
    -- out out_memdep_28_avm_address@20000000
    -- out out_memdep_28_avm_burstcount@20000000
    -- out out_memdep_28_avm_byteenable@20000000
    -- out out_memdep_28_avm_enable@20000000
    -- out out_memdep_28_avm_read@20000000
    -- out out_memdep_28_avm_write@20000000
    -- out out_memdep_28_avm_writedata@20000000
    -- out out_o_stall@9
    -- out out_o_valid@9
    -- out out_o_writeack@9
    thei_store_memdep_28_processfpga : i_store_memdep_28_processfpga1738
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx119_i_i793_processfpga_processfpga1735_dupName_0_trunc_sel_x_b,
        in_i_predicate => i_or1233_xor_or_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist5_sync_in_in_i_valid_8_q,
        in_i_writedata => i_acl_case_case_stmt1223_processfpga_q,
        in_memdep_28_avm_readdata => in_memdep_28_avm_readdata,
        in_memdep_28_avm_readdatavalid => in_memdep_28_avm_readdatavalid,
        in_memdep_28_avm_waitrequest => in_memdep_28_avm_waitrequest,
        in_memdep_28_avm_writeack => in_memdep_28_avm_writeack,
        out_memdep_28_avm_address => i_store_memdep_28_processfpga_out_memdep_28_avm_address,
        out_memdep_28_avm_burstcount => i_store_memdep_28_processfpga_out_memdep_28_avm_burstcount,
        out_memdep_28_avm_byteenable => i_store_memdep_28_processfpga_out_memdep_28_avm_byteenable,
        out_memdep_28_avm_enable => i_store_memdep_28_processfpga_out_memdep_28_avm_enable,
        out_memdep_28_avm_read => i_store_memdep_28_processfpga_out_memdep_28_avm_read,
        out_memdep_28_avm_write => i_store_memdep_28_processfpga_out_memdep_28_avm_write,
        out_memdep_28_avm_writedata => i_store_memdep_28_processfpga_out_memdep_28_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_3_ext_sig_sync_out_x(GPOUT,19)
    out_memdep_28_avm_address <= i_store_memdep_28_processfpga_out_memdep_28_avm_address;
    out_memdep_28_avm_enable <= i_store_memdep_28_processfpga_out_memdep_28_avm_enable;
    out_memdep_28_avm_read <= i_store_memdep_28_processfpga_out_memdep_28_avm_read;
    out_memdep_28_avm_write <= i_store_memdep_28_processfpga_out_memdep_28_avm_write;
    out_memdep_28_avm_writedata <= i_store_memdep_28_processfpga_out_memdep_28_avm_writedata;
    out_memdep_28_avm_byteenable <= i_store_memdep_28_processfpga_out_memdep_28_avm_byteenable;
    out_memdep_28_avm_burstcount <= i_store_memdep_28_processfpga_out_memdep_28_avm_burstcount;

    -- redist7_sync_in_in_i_valid_10(DELAY,361)
    redist7_sync_in_in_i_valid_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_sync_in_in_i_valid_9_q, xout => redist7_sync_in_in_i_valid_10_q, clk => clock, aclr => resetn );

    -- sync_out_aunroll_x(GPOUT,116)@10
    out_o_valid <= redist7_sync_in_in_i_valid_10_q;
    out_unnamed_processFPGA243_0 <= GND_q;

    -- ext_sig_sync_out(GPOUT,139)
    out_normls_load477_avm_address <= i_load_normls_load477_processfpga_out_normls_load477_avm_address;
    out_normls_load477_avm_enable <= i_load_normls_load477_processfpga_out_normls_load477_avm_enable;
    out_normls_load477_avm_read <= i_load_normls_load477_processfpga_out_normls_load477_avm_read;
    out_normls_load477_avm_write <= i_load_normls_load477_processfpga_out_normls_load477_avm_write;
    out_normls_load477_avm_writedata <= i_load_normls_load477_processfpga_out_normls_load477_avm_writedata;
    out_normls_load477_avm_byteenable <= i_load_normls_load477_processfpga_out_normls_load477_avm_byteenable;
    out_normls_load477_avm_burstcount <= i_load_normls_load477_processfpga_out_normls_load477_avm_burstcount;

END normal;
