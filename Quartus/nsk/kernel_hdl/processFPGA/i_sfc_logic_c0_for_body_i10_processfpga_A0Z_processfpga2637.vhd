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

-- VHDL created from i_sfc_logic_c0_for_body_i10_processfpga_c0_enter1105_processfpga2637
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

entity i_sfc_logic_c0_for_body_i10_processfpga_c0_enter1105_processfpga2637 is
    port (
        in_tmp46_i_i1667_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp46_i_i1667_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp46_i_i1667_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_tmp46_i_i1667_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_tmp46_i_i1667_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp46_i_i1667_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp46_i_i1667_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp46_i_i1667_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_tmp46_i_i1667_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp46_i_i1667_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_tmp46_i_i1667_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni11104_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni11104_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_171_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_intel_reserved_ffwd_187_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_19_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_20_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_6_0 : in std_logic_vector(15 downto 0);  -- ufix16
        in_localNeurons : in std_logic_vector(63 downto 0);  -- ufix64
        out_intel_reserved_ffwd_155_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_156_0 : out std_logic_vector(63 downto 0);  -- ufix64
        out_intel_reserved_ffwd_157_0 : out std_logic_vector(63 downto 0);  -- ufix64
        out_intel_reserved_ffwd_158_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_159_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_160_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_161_0 : out std_logic_vector(15 downto 0);  -- ufix16
        out_intel_reserved_ffwd_162_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_163_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_164_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA380_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA368_avm_readdata : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_processFPGA368_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA368_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_processFPGA368_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA368_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA368_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA368_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA368_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_processFPGA368_avm_writedata : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_processFPGA368_avm_byteenable : out std_logic_vector(3 downto 0);  -- ufix4
        out_unnamed_processFPGA368_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body_i10_processfpga_c0_enter1105_processfpga2637;

architecture normal of i_sfc_logic_c0_for_body_i10_processfpga_c0_enter1105_processfpga2637 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_ffwd_dst_acl_4321_processfpga2641 is
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


    component i_ffwd_dst_cmp421255379_processfpga2659 is
        port (
            in_intel_reserved_ffwd_19_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_19_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp_i51364626_processfpga2655 is
        port (
            in_intel_reserved_ffwd_187_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_187_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp_i51364638_processfpga2662 is
        port (
            in_intel_reserved_ffwd_187_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_187_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp_i51364639_processfpga2646 is
        port (
            in_intel_reserved_ffwd_187_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_187_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_inc_i276609_processfpga2639 is
        port (
            in_intel_reserved_ffwd_171_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_171_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_processfpga369_processfpga2664 is
        port (
            in_intel_reserved_ffwd_20_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_20_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga370_processfpga2667 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_155_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_155_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga371_processfpga2669 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_156_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_156_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga372_processfpga2671 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_157_0 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_157_0 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga373_processfpga2673 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_158_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_158_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga374_processfpga2675 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_159_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_159_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga375_processfpga2677 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_160_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_160_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga376_processfpga2679 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_161_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_161_0 : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga377_processfpga2681 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_162_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_162_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga378_processfpga2683 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_163_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_163_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_processfpga379_processfpga2685 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_164_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_164_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_tmp46_i_i1667_processfpga2657 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp46_i_i1667_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp46_i_i1667_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp46_i_i1667_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tmp46_i_i1667_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp46_i_i1667_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp46_i_i1667_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp46_i_i1667_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_tmp46_i_i1667_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp46_i_i1667_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp46_i_i1667_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_tmp46_i_i1667_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_processfpga368_processfpga2648 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA368_avm_readdata : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_processFPGA368_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA368_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_processFPGA368_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA368_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_processFPGA368_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA368_avm_byteenable : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_unnamed_processFPGA368_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA368_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA368_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_processFPGA368_avm_writedata : out std_logic_vector(31 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_localneurons_sync_buffer70_processfpga2652 is
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


    component i_syncbuf_localneurons_sync_buffer71_processfpga2643 is
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
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_multconst_x_q : STD_LOGIC_VECTOR (59 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_c_i64_2gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_c_i64_4gr_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom_i7_processfpga_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i8_0gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal c_i8_1gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_cmp5_i_phi_decision_xor_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp5_i_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_i51364_phi_decision1844_or_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_i51364_phi_decision1845_or_processfpga_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_acl_4321_processfpga_out_dest_data_out_6_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_cmp421255379_processfpga_out_dest_data_out_19_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp_i51364626_processfpga_out_dest_data_out_187_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp_i51364638_processfpga_out_dest_data_out_187_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp_i51364639_processfpga_out_dest_data_out_187_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_inc_i276609_processfpga_out_dest_data_out_171_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_dst_unnamed_processfpga369_processfpga_out_dest_data_out_20_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga370_processfpga_out_intel_reserved_ffwd_155_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_src_unnamed_processfpga371_processfpga_out_intel_reserved_ffwd_156_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_ffwd_src_unnamed_processfpga372_processfpga_out_intel_reserved_ffwd_157_0 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_ffwd_src_unnamed_processfpga373_processfpga_out_intel_reserved_ffwd_158_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga374_processfpga_out_intel_reserved_ffwd_159_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga375_processfpga_out_intel_reserved_ffwd_160_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga376_processfpga_out_intel_reserved_ffwd_161_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_ffwd_src_unnamed_processfpga377_processfpga_out_intel_reserved_ffwd_162_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga378_processfpga_out_intel_reserved_ffwd_163_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_processfpga379_processfpga_out_intel_reserved_ffwd_164_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_idx_0_i21365_replace_phi_processfpga_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_idx_0_i21365_replace_phi_processfpga_q : STD_LOGIC_VECTOR (15 downto 0);
    signal i_idxprom_i7_processfpga_vt_const_63_q : STD_LOGIC_VECTOR (47 downto 0);
    signal i_idxprom_i7_processfpga_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom_i7_processfpga_vt_select_15_b : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_tmp46_i_i1667_processfpga_out_o_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga368_processfpga_out_o_readdata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_byteenable : STD_LOGIC_VECTOR (3 downto 0);
    signal i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_writedata : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_localneurons_sync_buffer70_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_localneurons_sync_buffer71_processfpga_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_processfpga2650_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_processfpga2650_vt_const_7_q : STD_LOGIC_VECTOR (6 downto 0);
    signal i_unnamed_processfpga2650_vt_join_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_unnamed_processfpga2650_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga2661_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_processfpga2666_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_align_14_q : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_align_14_qint : STD_LOGIC_VECTOR (39 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_join_16_q : STD_LOGIC_VECTOR (67 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (68 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (68 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_clfired_i9_processfpga_processfpga2645_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist4_i_unnamed_processfpga2661_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_aunroll_x_in_i_valid_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_sync_in_aunroll_x_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_sync_in_aunroll_x_in_i_valid_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_sync_in_aunroll_x_in_i_valid_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_clfired_i9_processfpga_processfpga2645_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist13_i_clfired_i9_processfpga_processfpga2645_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist14_i_arrayidx_1_i_i15_processfpga_processfpga2654_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist15_i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_reset0 : std_logic;
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_i : signal is true;
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq : std_logic;
    attribute preserve of redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq : signal is true;
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q : signal is true;
    signal redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_outputreg_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_reset0 : std_logic;
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_i : signal is true;
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq : std_logic;
    attribute preserve of redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq : signal is true;
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q : signal is true;
    signal redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_reset0 : std_logic;
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_i : signal is true;
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq : std_logic;
    attribute preserve of redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq : signal is true;
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q : signal is true;
    signal redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_reset0 : std_logic;
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_i : signal is true;
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq : std_logic;
    attribute preserve of redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq : signal is true;
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q : signal is true;
    signal redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist5_sync_in_aunroll_x_in_i_valid_1(DELAY,166)
    redist5_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist5_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist6_sync_in_aunroll_x_in_i_valid_3(DELAY,167)
    redist6_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_sync_in_aunroll_x_in_i_valid_1_q, xout => redist6_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist7_sync_in_aunroll_x_in_i_valid_4(DELAY,168)
    redist7_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_sync_in_aunroll_x_in_i_valid_3_q, xout => redist7_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- redist8_sync_in_aunroll_x_in_i_valid_8(DELAY,169)
    redist8_sync_in_aunroll_x_in_i_valid_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_sync_in_aunroll_x_in_i_valid_4_q, xout => redist8_sync_in_aunroll_x_in_i_valid_8_q, clk => clock, aclr => resetn );

    -- redist9_sync_in_aunroll_x_in_i_valid_9(DELAY,170)
    redist9_sync_in_aunroll_x_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_sync_in_aunroll_x_in_i_valid_8_q, xout => redist9_sync_in_aunroll_x_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- c_i8_0gr(CONSTANT,57)
    c_i8_0gr_q <= "00000000";

    -- i_unnamed_processfpga2650_vt_const_7(CONSTANT,92)
    i_unnamed_processfpga2650_vt_const_7_q <= "0000000";

    -- c_i8_1gr(CONSTANT,58)
    c_i8_1gr_q <= "00000001";

    -- i_ffwd_dst_cmp_i51364639_processfpga(BLACKBOX,69)@5
    thei_ffwd_dst_cmp_i51364639_processfpga : i_ffwd_dst_cmp_i51364639_processfpga2646
    PORT MAP (
        in_intel_reserved_ffwd_187_0 => in_intel_reserved_ffwd_187_0,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_4_q,
        out_dest_data_out_187_0 => i_ffwd_dst_cmp_i51364639_processfpga_out_dest_data_out_187_0,
        clock => clock,
        resetn => resetn
    );

    -- i_clfired_i9_processfpga_processfpga2645_c_i64_4gr_x(CONSTANT,49)
    i_clfired_i9_processfpga_processfpga2645_c_i64_4gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000100";

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_multconst_x(CONSTANT,31)
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_multconst_x_q <= "000000000000000000000000000000000000000000000000000000000000";

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_im3_shift0(BITSHIFT,151)@2
    i_clfired_i9_processfpga_processfpga2645_mult_x_im3_shift0_qint <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c & "0";
    i_clfired_i9_processfpga_processfpga2645_mult_x_im3_shift0_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_im3_shift0_qint(10 downto 0);

    -- i_idxprom_i7_processfpga_vt_const_63(CONSTANT,84)
    i_idxprom_i7_processfpga_vt_const_63_q <= "000000000000000000000000000000000000000000000000";

    -- i_ffwd_dst_acl_4321_processfpga(BLACKBOX,65)@1
    thei_ffwd_dst_acl_4321_processfpga : i_ffwd_dst_acl_4321_processfpga2641
    PORT MAP (
        in_intel_reserved_ffwd_6_0 => in_intel_reserved_ffwd_6_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_6_0 => i_ffwd_dst_acl_4321_processfpga_out_dest_data_out_6_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_inc_i276609_processfpga(BLACKBOX,70)@1
    thei_ffwd_dst_inc_i276609_processfpga : i_ffwd_dst_inc_i276609_processfpga2639
    PORT MAP (
        in_intel_reserved_ffwd_171_0 => in_intel_reserved_ffwd_171_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_171_0 => i_ffwd_dst_inc_i276609_processfpga_out_dest_data_out_171_0,
        clock => clock,
        resetn => resetn
    );

    -- i_idx_0_i21365_replace_phi_processfpga(MUX,82)@1 + 1
    i_idx_0_i21365_replace_phi_processfpga_s <= in_c0_eni11104_1;
    i_idx_0_i21365_replace_phi_processfpga_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_idx_0_i21365_replace_phi_processfpga_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_idx_0_i21365_replace_phi_processfpga_s) IS
                WHEN "0" => i_idx_0_i21365_replace_phi_processfpga_q <= i_ffwd_dst_inc_i276609_processfpga_out_dest_data_out_171_0;
                WHEN "1" => i_idx_0_i21365_replace_phi_processfpga_q <= i_ffwd_dst_acl_4321_processfpga_out_dest_data_out_6_0;
                WHEN OTHERS => i_idx_0_i21365_replace_phi_processfpga_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_idxprom_i7_processfpga_sel_x(BITSELECT,52)@2
    i_idxprom_i7_processfpga_sel_x_b <= std_logic_vector(resize(unsigned(i_idx_0_i21365_replace_phi_processfpga_q(15 downto 0)), 64));

    -- i_idxprom_i7_processfpga_vt_select_15(BITSELECT,86)@2
    i_idxprom_i7_processfpga_vt_select_15_b <= i_idxprom_i7_processfpga_sel_x_b(15 downto 0);

    -- i_idxprom_i7_processfpga_vt_join(BITJOIN,85)@2
    i_idxprom_i7_processfpga_vt_join_q <= i_idxprom_i7_processfpga_vt_const_63_q & i_idxprom_i7_processfpga_vt_select_15_b;

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select(BITSELECT,160)@2
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b <= i_idxprom_i7_processfpga_vt_join_q(17 downto 0);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c <= i_idxprom_i7_processfpga_vt_join_q(63 downto 54);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d <= i_idxprom_i7_processfpga_vt_join_q(35 downto 18);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e <= i_idxprom_i7_processfpga_vt_join_q(53 downto 36);

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_im3_add_1(ADD,152)@2 + 1
    i_clfired_i9_processfpga_processfpga2645_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c);
    i_clfired_i9_processfpga_processfpga2645_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i9_processfpga_processfpga2645_mult_x_im3_shift0_q);
    i_clfired_i9_processfpga_processfpga2645_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i9_processfpga_processfpga2645_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i9_processfpga_processfpga2645_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i9_processfpga_processfpga2645_mult_x_im3_add_1_a) + UNSIGNED(i_clfired_i9_processfpga_processfpga2645_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i9_processfpga_processfpga2645_mult_x_im3_add_1_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_im3_add_1_o(11 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_im3_shift2(BITSHIFT,153)@3
    i_clfired_i9_processfpga_processfpga2645_mult_x_im3_shift2_qint <= i_clfired_i9_processfpga_processfpga2645_mult_x_im3_add_1_q & "00";
    i_clfired_i9_processfpga_processfpga2645_mult_x_im3_shift2_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_im3_shift2_qint(13 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_align_15(BITSHIFT,132)@3
    i_clfired_i9_processfpga_processfpga2645_mult_x_align_15_qint <= i_clfired_i9_processfpga_processfpga2645_mult_x_im3_shift2_q & "00000000000000";
    i_clfired_i9_processfpga_processfpga2645_mult_x_align_15_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_align_15_qint(27 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_im6_shift0(BITSHIFT,154)@2
    i_clfired_i9_processfpga_processfpga2645_mult_x_im6_shift0_qint <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d & "0";
    i_clfired_i9_processfpga_processfpga2645_mult_x_im6_shift0_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_im6_shift0_qint(18 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_im6_add_1(ADD,155)@2 + 1
    i_clfired_i9_processfpga_processfpga2645_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d);
    i_clfired_i9_processfpga_processfpga2645_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i9_processfpga_processfpga2645_mult_x_im6_shift0_q);
    i_clfired_i9_processfpga_processfpga2645_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i9_processfpga_processfpga2645_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i9_processfpga_processfpga2645_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i9_processfpga_processfpga2645_mult_x_im6_add_1_a) + UNSIGNED(i_clfired_i9_processfpga_processfpga2645_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i9_processfpga_processfpga2645_mult_x_im6_add_1_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_im6_add_1_o(19 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_im6_shift2(BITSHIFT,156)@3
    i_clfired_i9_processfpga_processfpga2645_mult_x_im6_shift2_qint <= i_clfired_i9_processfpga_processfpga2645_mult_x_im6_add_1_q & "00";
    i_clfired_i9_processfpga_processfpga2645_mult_x_im6_shift2_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_im6_shift2_qint(21 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_align_14(BITSHIFT,131)@3
    i_clfired_i9_processfpga_processfpga2645_mult_x_align_14_qint <= i_clfired_i9_processfpga_processfpga2645_mult_x_im6_shift2_q & "000000000000000000";
    i_clfired_i9_processfpga_processfpga2645_mult_x_align_14_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_align_14_qint(39 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_join_16(BITJOIN,133)@3
    i_clfired_i9_processfpga_processfpga2645_mult_x_join_16_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_align_15_q & i_clfired_i9_processfpga_processfpga2645_mult_x_align_14_q;

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_im9_shift0(BITSHIFT,157)@2
    i_clfired_i9_processfpga_processfpga2645_mult_x_im9_shift0_qint <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e & "0";
    i_clfired_i9_processfpga_processfpga2645_mult_x_im9_shift0_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_im9_shift0_qint(18 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_im9_add_1(ADD,158)@2 + 1
    i_clfired_i9_processfpga_processfpga2645_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e);
    i_clfired_i9_processfpga_processfpga2645_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i9_processfpga_processfpga2645_mult_x_im9_shift0_q);
    i_clfired_i9_processfpga_processfpga2645_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i9_processfpga_processfpga2645_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i9_processfpga_processfpga2645_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i9_processfpga_processfpga2645_mult_x_im9_add_1_a) + UNSIGNED(i_clfired_i9_processfpga_processfpga2645_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i9_processfpga_processfpga2645_mult_x_im9_add_1_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_im9_add_1_o(19 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_im9_shift2(BITSHIFT,159)@3
    i_clfired_i9_processfpga_processfpga2645_mult_x_im9_shift2_qint <= i_clfired_i9_processfpga_processfpga2645_mult_x_im9_add_1_q & "00";
    i_clfired_i9_processfpga_processfpga2645_mult_x_im9_shift2_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_im9_shift2_qint(21 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_align_12(BITSHIFT,129)@3
    i_clfired_i9_processfpga_processfpga2645_mult_x_align_12_qint <= i_clfired_i9_processfpga_processfpga2645_mult_x_im9_shift2_q & "00000000000000";
    i_clfired_i9_processfpga_processfpga2645_mult_x_align_12_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_align_12_qint(35 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_im0_shift0(BITSHIFT,148)@2
    i_clfired_i9_processfpga_processfpga2645_mult_x_im0_shift0_qint <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b & "0";
    i_clfired_i9_processfpga_processfpga2645_mult_x_im0_shift0_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_im0_shift0_qint(18 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_im0_add_1(ADD,149)@2 + 1
    i_clfired_i9_processfpga_processfpga2645_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b);
    i_clfired_i9_processfpga_processfpga2645_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_clfired_i9_processfpga_processfpga2645_mult_x_im0_shift0_q);
    i_clfired_i9_processfpga_processfpga2645_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_clfired_i9_processfpga_processfpga2645_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_clfired_i9_processfpga_processfpga2645_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i9_processfpga_processfpga2645_mult_x_im0_add_1_a) + UNSIGNED(i_clfired_i9_processfpga_processfpga2645_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_clfired_i9_processfpga_processfpga2645_mult_x_im0_add_1_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_im0_add_1_o(19 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_im0_shift2(BITSHIFT,150)@3
    i_clfired_i9_processfpga_processfpga2645_mult_x_im0_shift2_qint <= i_clfired_i9_processfpga_processfpga2645_mult_x_im0_add_1_q & "00";
    i_clfired_i9_processfpga_processfpga2645_mult_x_im0_shift2_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_im0_shift2_qint(21 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_join_13(BITJOIN,130)@3
    i_clfired_i9_processfpga_processfpga2645_mult_x_join_13_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_align_12_q & i_clfired_i9_processfpga_processfpga2645_mult_x_im0_shift2_q;

    -- i_clfired_i9_processfpga_processfpga2645_mult_x_result_add_0_0(ADD,134)@3
    i_clfired_i9_processfpga_processfpga2645_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_clfired_i9_processfpga_processfpga2645_mult_x_join_13_q);
    i_clfired_i9_processfpga_processfpga2645_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_clfired_i9_processfpga_processfpga2645_mult_x_join_16_q);
    i_clfired_i9_processfpga_processfpga2645_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i9_processfpga_processfpga2645_mult_x_result_add_0_0_a) + UNSIGNED(i_clfired_i9_processfpga_processfpga2645_mult_x_result_add_0_0_b));
    i_clfired_i9_processfpga_processfpga2645_mult_x_result_add_0_0_q <= i_clfired_i9_processfpga_processfpga2645_mult_x_result_add_0_0_o(68 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_mult_extender_x(BITJOIN,44)@3
    i_clfired_i9_processfpga_processfpga2645_mult_extender_x_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_multconst_x_q & i_clfired_i9_processfpga_processfpga2645_mult_x_result_add_0_0_q(67 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_trunc_sel_x(BITSELECT,46)@3
    i_clfired_i9_processfpga_processfpga2645_trunc_sel_x_b <= i_clfired_i9_processfpga_processfpga2645_mult_extender_x_q(63 downto 0);

    -- redist12_i_clfired_i9_processfpga_processfpga2645_trunc_sel_x_b_1(DELAY,173)
    redist12_i_clfired_i9_processfpga_processfpga2645_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clfired_i9_processfpga_processfpga2645_trunc_sel_x_b, xout => redist12_i_clfired_i9_processfpga_processfpga2645_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer71_processfpga(BLACKBOX,90)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_localneurons_sync_buffer71_processfpga : i_syncbuf_localneurons_sync_buffer71_processfpga2643
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer71_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_clfired_i9_processfpga_processfpga2645_add_x(ADD,47)@4
    i_clfired_i9_processfpga_processfpga2645_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer71_processfpga_out_buffer_out);
    i_clfired_i9_processfpga_processfpga2645_add_x_b <= STD_LOGIC_VECTOR("0" & redist12_i_clfired_i9_processfpga_processfpga2645_trunc_sel_x_b_1_q);
    i_clfired_i9_processfpga_processfpga2645_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i9_processfpga_processfpga2645_add_x_a) + UNSIGNED(i_clfired_i9_processfpga_processfpga2645_add_x_b));
    i_clfired_i9_processfpga_processfpga2645_add_x_q <= i_clfired_i9_processfpga_processfpga2645_add_x_o(64 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_dupName_0_trunc_sel_x(BITSELECT,38)@4
    i_clfired_i9_processfpga_processfpga2645_dupName_0_trunc_sel_x_b <= i_clfired_i9_processfpga_processfpga2645_add_x_q(63 downto 0);

    -- redist13_i_clfired_i9_processfpga_processfpga2645_dupName_0_trunc_sel_x_b_1(DELAY,174)
    redist13_i_clfired_i9_processfpga_processfpga2645_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_clfired_i9_processfpga_processfpga2645_dupName_0_trunc_sel_x_b, xout => redist13_i_clfired_i9_processfpga_processfpga2645_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_clfired_i9_processfpga_processfpga2645_dupName_0_add_x(ADD,41)@5
    i_clfired_i9_processfpga_processfpga2645_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist13_i_clfired_i9_processfpga_processfpga2645_dupName_0_trunc_sel_x_b_1_q);
    i_clfired_i9_processfpga_processfpga2645_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_clfired_i9_processfpga_processfpga2645_c_i64_4gr_x_q);
    i_clfired_i9_processfpga_processfpga2645_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_clfired_i9_processfpga_processfpga2645_dupName_0_add_x_a) + UNSIGNED(i_clfired_i9_processfpga_processfpga2645_dupName_0_add_x_b));
    i_clfired_i9_processfpga_processfpga2645_dupName_0_add_x_q <= i_clfired_i9_processfpga_processfpga2645_dupName_0_add_x_o(64 downto 0);

    -- i_clfired_i9_processfpga_processfpga2645_dupName_1_trunc_sel_x(BITSELECT,39)@5
    i_clfired_i9_processfpga_processfpga2645_dupName_1_trunc_sel_x_b <= i_clfired_i9_processfpga_processfpga2645_dupName_0_add_x_q(63 downto 0);

    -- i_load_unnamed_processfpga368_processfpga(BLACKBOX,88)@5
    -- in in_i_stall@20000000
    -- out out_o_readdata@10
    -- out out_o_stall@9
    -- out out_o_valid@10
    -- out out_unnamed_processFPGA368_avm_address@20000000
    -- out out_unnamed_processFPGA368_avm_burstcount@20000000
    -- out out_unnamed_processFPGA368_avm_byteenable@20000000
    -- out out_unnamed_processFPGA368_avm_enable@20000000
    -- out out_unnamed_processFPGA368_avm_read@20000000
    -- out out_unnamed_processFPGA368_avm_write@20000000
    -- out out_unnamed_processFPGA368_avm_writedata@20000000
    thei_load_unnamed_processfpga368_processfpga : i_load_unnamed_processfpga368_processfpga2648
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_clfired_i9_processfpga_processfpga2645_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_ffwd_dst_cmp_i51364639_processfpga_out_dest_data_out_187_0,
        in_i_stall => GND_q,
        in_i_valid => redist7_sync_in_aunroll_x_in_i_valid_4_q,
        in_unnamed_processFPGA368_avm_readdata => in_unnamed_processFPGA368_avm_readdata,
        in_unnamed_processFPGA368_avm_readdatavalid => in_unnamed_processFPGA368_avm_readdatavalid,
        in_unnamed_processFPGA368_avm_waitrequest => in_unnamed_processFPGA368_avm_waitrequest,
        in_unnamed_processFPGA368_avm_writeack => in_unnamed_processFPGA368_avm_writeack,
        out_o_readdata => i_load_unnamed_processfpga368_processfpga_out_o_readdata,
        out_unnamed_processFPGA368_avm_address => i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_address,
        out_unnamed_processFPGA368_avm_burstcount => i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_burstcount,
        out_unnamed_processFPGA368_avm_byteenable => i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_byteenable,
        out_unnamed_processFPGA368_avm_enable => i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_enable,
        out_unnamed_processFPGA368_avm_read => i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_read,
        out_unnamed_processFPGA368_avm_write => i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_write,
        out_unnamed_processFPGA368_avm_writedata => i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_processfpga2650(LOGICAL,91)@10
    i_unnamed_processfpga2650_q <= i_load_unnamed_processfpga368_processfpga_out_o_readdata and c_i8_1gr_q;

    -- i_unnamed_processfpga2650_vt_select_0(BITSELECT,94)@10
    i_unnamed_processfpga2650_vt_select_0_b <= i_unnamed_processfpga2650_q(0 downto 0);

    -- i_unnamed_processfpga2650_vt_join(BITJOIN,93)@10
    i_unnamed_processfpga2650_vt_join_q <= i_unnamed_processfpga2650_vt_const_7_q & i_unnamed_processfpga2650_vt_select_0_b;

    -- i_cmp5_i_processfpga(LOGICAL,62)@10
    i_cmp5_i_processfpga_q <= "1" WHEN i_unnamed_processfpga2650_vt_join_q = c_i8_0gr_q ELSE "0";

    -- i_cmp5_i_phi_decision_xor_processfpga(LOGICAL,61)@10
    i_cmp5_i_phi_decision_xor_processfpga_q <= i_cmp5_i_processfpga_q xor VCC_q;

    -- i_ffwd_dst_cmp_i51364626_processfpga(BLACKBOX,67)@10
    thei_ffwd_dst_cmp_i51364626_processfpga : i_ffwd_dst_cmp_i51364626_processfpga2655
    PORT MAP (
        in_intel_reserved_ffwd_187_0 => in_intel_reserved_ffwd_187_0,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_187_0 => i_ffwd_dst_cmp_i51364626_processfpga_out_dest_data_out_187_0,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp_i51364_phi_decision1844_or_processfpga(LOGICAL,63)@10
    i_cmp_i51364_phi_decision1844_or_processfpga_q <= i_ffwd_dst_cmp_i51364626_processfpga_out_dest_data_out_187_0 or i_cmp5_i_phi_decision_xor_processfpga_q;

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_c_i64_2gr_x(CONSTANT,35)
    i_arrayidx_1_i_i15_processfpga_processfpga2654_c_i64_2gr_x_q <= "0000000000000000000000000000000000000000000000000000000000000010";

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_shift0(BITSHIFT,139)@7
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_shift0_qint <= redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_outputreg_q & "0";
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_shift0_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_shift0_qint(10 downto 0);

    -- redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_notEnable(LOGICAL,195)
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_nor(LOGICAL,196)
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_nor_q <= not (redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_notEnable_q or redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q);

    -- redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_last(CONSTANT,192)
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_last_q <= "01";

    -- redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_cmp(LOGICAL,193)
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_cmp_q <= "1" WHEN redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_last_q = redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_q ELSE "0";

    -- redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_cmpReg(REG,194)
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_cmpReg_q <= STD_LOGIC_VECTOR(redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_sticky_ena(REG,197)
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_nor_q = "1") THEN
                redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_enaAnd(LOGICAL,198)
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_enaAnd_q <= redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_sticky_ena_q and VCC_q;

    -- redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt(COUNTER,190)
    -- low=0, high=2, step=1, init=0
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq <= '1';
            ELSE
                redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq <= '0';
            END IF;
            IF (redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_eq = '1') THEN
                redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_i <= redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_i + 2;
            ELSE
                redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_i <= redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_i, 2)));

    -- redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_wraddr(REG,191)
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_wraddr_q <= STD_LOGIC_VECTOR(redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem(DUALMEM,189)
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_ia <= STD_LOGIC_VECTOR(i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c);
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_aa <= redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_wraddr_q;
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_ab <= redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_rdcnt_q;
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_reset0 <= not (resetn);
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 10,
        widthad_b => 2,
        numwords_b => 3,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_reset0,
        clock1 => clock,
        address_a => redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_aa,
        data_a => redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_ab,
        q_b => redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_iq
    );
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_q <= redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_iq(9 downto 0);

    -- redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_outputreg(DELAY,188)
    redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_outputreg : dspba_delay
    GENERIC MAP ( width => 10, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_mem_q, xout => redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_add_1(ADD,140)@7 + 1
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("00" & redist1_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_c_5_outputreg_q);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_shift0_q);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_add_1_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_add_1_o(11 downto 0);

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_shift2(BITSHIFT,141)@8
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_shift2_qint <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_add_1_q & "00";
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_shift2_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_shift2_qint(13 downto 0);

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_15(BITSHIFT,114)@8
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_15_qint <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im3_shift2_q & "00000000000000";
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_15_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_shift0(BITSHIFT,142)@7
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_shift0_qint <= redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_outputreg_q & "0";
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_shift0_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_shift0_qint(18 downto 0);

    -- redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_notEnable(LOGICAL,206)
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_nor(LOGICAL,207)
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_nor_q <= not (redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_notEnable_q or redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q);

    -- redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_last(CONSTANT,203)
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_last_q <= "01";

    -- redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_cmp(LOGICAL,204)
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_cmp_q <= "1" WHEN redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_last_q = redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_q ELSE "0";

    -- redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_cmpReg(REG,205)
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_cmpReg_q <= STD_LOGIC_VECTOR(redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_sticky_ena(REG,208)
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_nor_q = "1") THEN
                redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_enaAnd(LOGICAL,209)
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_enaAnd_q <= redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_sticky_ena_q and VCC_q;

    -- redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt(COUNTER,201)
    -- low=0, high=2, step=1, init=0
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq <= '1';
            ELSE
                redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq <= '0';
            END IF;
            IF (redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_eq = '1') THEN
                redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_i <= redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_i + 2;
            ELSE
                redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_i <= redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_i, 2)));

    -- redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_wraddr(REG,202)
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_wraddr_q <= STD_LOGIC_VECTOR(redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem(DUALMEM,200)
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_ia <= STD_LOGIC_VECTOR(i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d);
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_aa <= redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_wraddr_q;
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_ab <= redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_rdcnt_q;
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_reset0 <= not (resetn);
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 18,
        widthad_b => 2,
        numwords_b => 3,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_reset0,
        clock1 => clock,
        address_a => redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_aa,
        data_a => redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_ab,
        q_b => redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_iq
    );
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_q <= redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_iq(17 downto 0);

    -- redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_outputreg(DELAY,199)
    redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_mem_q, xout => redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_add_1(ADD,143)@7 + 1
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("00" & redist2_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_d_5_outputreg_q);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_shift0_q);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_add_1_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_add_1_o(19 downto 0);

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_shift2(BITSHIFT,144)@8
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_shift2_qint <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_add_1_q & "00";
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_shift2_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_shift2_qint(21 downto 0);

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_14(BITSHIFT,113)@8
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_14_qint <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_14_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_14_qint(39 downto 0);

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_join_16(BITJOIN,115)@8
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_join_16_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_15_q & i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_14_q;

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_shift0(BITSHIFT,145)@7
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_shift0_qint <= redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_outputreg_q & "0";
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_shift0_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_shift0_qint(18 downto 0);

    -- redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_notEnable(LOGICAL,217)
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_nor(LOGICAL,218)
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_nor_q <= not (redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_notEnable_q or redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q);

    -- redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_last(CONSTANT,214)
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_last_q <= "01";

    -- redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_cmp(LOGICAL,215)
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_cmp_q <= "1" WHEN redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_last_q = redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_q ELSE "0";

    -- redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_cmpReg(REG,216)
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_cmpReg_q <= STD_LOGIC_VECTOR(redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_sticky_ena(REG,219)
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_nor_q = "1") THEN
                redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_enaAnd(LOGICAL,220)
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_enaAnd_q <= redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_sticky_ena_q and VCC_q;

    -- redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt(COUNTER,212)
    -- low=0, high=2, step=1, init=0
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq <= '1';
            ELSE
                redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq <= '0';
            END IF;
            IF (redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_eq = '1') THEN
                redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_i <= redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_i + 2;
            ELSE
                redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_i <= redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_i, 2)));

    -- redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_wraddr(REG,213)
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_wraddr_q <= STD_LOGIC_VECTOR(redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem(DUALMEM,211)
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_ia <= STD_LOGIC_VECTOR(i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e);
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_aa <= redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_wraddr_q;
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_ab <= redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_rdcnt_q;
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_reset0 <= not (resetn);
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 18,
        widthad_b => 2,
        numwords_b => 3,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_reset0,
        clock1 => clock,
        address_a => redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_aa,
        data_a => redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_ab,
        q_b => redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_iq
    );
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_q <= redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_iq(17 downto 0);

    -- redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_outputreg(DELAY,210)
    redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_mem_q, xout => redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_add_1(ADD,146)@7 + 1
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("00" & redist3_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_e_5_outputreg_q);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_shift0_q);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_add_1_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_add_1_o(19 downto 0);

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_shift2(BITSHIFT,147)@8
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_shift2_qint <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_add_1_q & "00";
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_shift2_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_shift2_qint(21 downto 0);

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_12(BITSHIFT,111)@8
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_12_qint <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im9_shift2_q & "00000000000000";
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_12_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_shift0(BITSHIFT,136)@7
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_shift0_qint <= redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_outputreg_q & "0";
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_shift0_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_shift0_qint(18 downto 0);

    -- redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_notEnable(LOGICAL,184)
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_nor(LOGICAL,185)
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_nor_q <= not (redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_notEnable_q or redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q);

    -- redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_last(CONSTANT,181)
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_last_q <= "01";

    -- redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_cmp(LOGICAL,182)
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_cmp_q <= "1" WHEN redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_last_q = redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_q ELSE "0";

    -- redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_cmpReg(REG,183)
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_cmpReg_q <= STD_LOGIC_VECTOR(redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_sticky_ena(REG,186)
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_nor_q = "1") THEN
                redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_enaAnd(LOGICAL,187)
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_enaAnd_q <= redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_sticky_ena_q and VCC_q;

    -- redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt(COUNTER,179)
    -- low=0, high=2, step=1, init=0
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq <= '1';
            ELSE
                redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq <= '0';
            END IF;
            IF (redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_eq = '1') THEN
                redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_i <= redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_i + 2;
            ELSE
                redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_i <= redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_i, 2)));

    -- redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_wraddr(REG,180)
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_wraddr_q <= STD_LOGIC_VECTOR(redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem(DUALMEM,178)
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_ia <= STD_LOGIC_VECTOR(i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b);
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_aa <= redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_wraddr_q;
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_ab <= redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_rdcnt_q;
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_reset0 <= not (resetn);
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 18,
        widthad_b => 2,
        numwords_b => 3,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_reset0,
        clock1 => clock,
        address_a => redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_aa,
        data_a => redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_ab,
        q_b => redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_iq
    );
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_q <= redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_iq(17 downto 0);

    -- redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_outputreg(DELAY,177)
    redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_mem_q, xout => redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_add_1(ADD,137)@7 + 1
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("00" & redist0_i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_bs1_merged_bit_select_b_5_outputreg_q);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_shift0_q);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_add_1_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_add_1_o(19 downto 0);

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_shift2(BITSHIFT,138)@8
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_shift2_qint <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_add_1_q & "00";
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_shift2_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_shift2_qint(21 downto 0);

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_join_13(BITJOIN,112)@8
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_join_13_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_align_12_q & i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_im0_shift2_q;

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_result_add_0_0(ADD,116)@8
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_join_13_q);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_join_16_q);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_result_add_0_0_b));
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_result_add_0_0_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_result_add_0_0_o(68 downto 0);

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_extender_x(BITJOIN,30)@8
    i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_extender_x_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_multconst_x_q & i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_x_result_add_0_0_q(67 downto 0);

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_trunc_sel_x(BITSELECT,32)@8
    i_arrayidx_1_i_i15_processfpga_processfpga2654_trunc_sel_x_b <= i_arrayidx_1_i_i15_processfpga_processfpga2654_mult_extender_x_q(63 downto 0);

    -- redist14_i_arrayidx_1_i_i15_processfpga_processfpga2654_trunc_sel_x_b_1(DELAY,175)
    redist14_i_arrayidx_1_i_i15_processfpga_processfpga2654_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx_1_i_i15_processfpga_processfpga2654_trunc_sel_x_b, xout => redist14_i_arrayidx_1_i_i15_processfpga_processfpga2654_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_localneurons_sync_buffer70_processfpga(BLACKBOX,89)@0
    -- in in_i_dependence@9
    -- in in_valid_in@9
    -- out out_buffer_out@9
    -- out out_valid_out@9
    thei_syncbuf_localneurons_sync_buffer70_processfpga : i_syncbuf_localneurons_sync_buffer70_processfpga2652
    PORT MAP (
        in_buffer_in => in_localNeurons,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_8_q,
        out_buffer_out => i_syncbuf_localneurons_sync_buffer70_processfpga_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_add_x(ADD,33)@9
    i_arrayidx_1_i_i15_processfpga_processfpga2654_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_localneurons_sync_buffer70_processfpga_out_buffer_out);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_add_x_b <= STD_LOGIC_VECTOR("0" & redist14_i_arrayidx_1_i_i15_processfpga_processfpga2654_trunc_sel_x_b_1_q);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_1_i_i15_processfpga_processfpga2654_add_x_a) + UNSIGNED(i_arrayidx_1_i_i15_processfpga_processfpga2654_add_x_b));
    i_arrayidx_1_i_i15_processfpga_processfpga2654_add_x_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_add_x_o(64 downto 0);

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_trunc_sel_x(BITSELECT,24)@9
    i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_trunc_sel_x_b <= i_arrayidx_1_i_i15_processfpga_processfpga2654_add_x_q(63 downto 0);

    -- redist15_i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_trunc_sel_x_b_1(DELAY,176)
    redist15_i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_trunc_sel_x_b, xout => redist15_i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_add_x(ADD,27)@10
    i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & redist15_i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_trunc_sel_x_b_1_q);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_1_i_i15_processfpga_processfpga2654_c_i64_2gr_x_q);
    i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_add_x_a) + UNSIGNED(i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_add_x_b));
    i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_add_x_q <= i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_1_trunc_sel_x(BITSELECT,25)@10
    i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_1_trunc_sel_x_b <= i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_0_add_x_q(63 downto 0);

    -- i_load_tmp46_i_i1667_processfpga(BLACKBOX,87)@10
    -- in in_i_stall@20000000
    -- out out_o_readdata@15
    -- out out_o_stall@14
    -- out out_o_valid@15
    -- out out_tmp46_i_i1667_avm_address@20000000
    -- out out_tmp46_i_i1667_avm_burstcount@20000000
    -- out out_tmp46_i_i1667_avm_byteenable@20000000
    -- out out_tmp46_i_i1667_avm_enable@20000000
    -- out out_tmp46_i_i1667_avm_read@20000000
    -- out out_tmp46_i_i1667_avm_write@20000000
    -- out out_tmp46_i_i1667_avm_writedata@20000000
    thei_load_tmp46_i_i1667_processfpga : i_load_tmp46_i_i1667_processfpga2657
    PORT MAP (
        in_flush => in_flush,
        in_i_address => i_arrayidx_1_i_i15_processfpga_processfpga2654_dupName_1_trunc_sel_x_b,
        in_i_predicate => i_cmp_i51364_phi_decision1844_or_processfpga_q,
        in_i_stall => GND_q,
        in_i_valid => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        in_tmp46_i_i1667_avm_readdata => in_tmp46_i_i1667_avm_readdata,
        in_tmp46_i_i1667_avm_readdatavalid => in_tmp46_i_i1667_avm_readdatavalid,
        in_tmp46_i_i1667_avm_waitrequest => in_tmp46_i_i1667_avm_waitrequest,
        in_tmp46_i_i1667_avm_writeack => in_tmp46_i_i1667_avm_writeack,
        out_o_readdata => i_load_tmp46_i_i1667_processfpga_out_o_readdata,
        out_tmp46_i_i1667_avm_address => i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_address,
        out_tmp46_i_i1667_avm_burstcount => i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_burstcount,
        out_tmp46_i_i1667_avm_byteenable => i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_byteenable,
        out_tmp46_i_i1667_avm_enable => i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_enable,
        out_tmp46_i_i1667_avm_read => i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_read,
        out_tmp46_i_i1667_avm_write => i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_write,
        out_tmp46_i_i1667_avm_writedata => i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_ext_sig_sync_out_x(GPOUT,4)
    out_tmp46_i_i1667_avm_address <= i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_address;
    out_tmp46_i_i1667_avm_enable <= i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_enable;
    out_tmp46_i_i1667_avm_read <= i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_read;
    out_tmp46_i_i1667_avm_write <= i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_write;
    out_tmp46_i_i1667_avm_writedata <= i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_writedata;
    out_tmp46_i_i1667_avm_byteenable <= i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_byteenable;
    out_tmp46_i_i1667_avm_burstcount <= i_load_tmp46_i_i1667_processfpga_out_tmp46_i_i1667_avm_burstcount;

    -- redist10_sync_in_aunroll_x_in_i_valid_10(DELAY,171)
    redist10_sync_in_aunroll_x_in_i_valid_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist9_sync_in_aunroll_x_in_i_valid_9_q, xout => redist10_sync_in_aunroll_x_in_i_valid_10_q, clk => clock, aclr => resetn );

    -- redist11_sync_in_aunroll_x_in_i_valid_14(DELAY,172)
    redist11_sync_in_aunroll_x_in_i_valid_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist10_sync_in_aunroll_x_in_i_valid_10_q, xout => redist11_sync_in_aunroll_x_in_i_valid_14_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_unnamed_processfpga369_processfpga(BLACKBOX,71)@10
    thei_ffwd_dst_unnamed_processfpga369_processfpga : i_ffwd_dst_unnamed_processfpga369_processfpga2664
    PORT MAP (
        in_intel_reserved_ffwd_20_0 => in_intel_reserved_ffwd_20_0,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_20_0 => i_ffwd_dst_unnamed_processfpga369_processfpga_out_dest_data_out_20_0,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_processfpga2666(LOGICAL,96)@10
    i_unnamed_processfpga2666_q <= i_cmp5_i_processfpga_q and i_ffwd_dst_unnamed_processfpga369_processfpga_out_dest_data_out_20_0;

    -- i_ffwd_src_unnamed_processfpga379_processfpga(BLACKBOX,81)@10
    -- out out_intel_reserved_ffwd_164_0@20000000
    thei_ffwd_src_unnamed_processfpga379_processfpga : i_ffwd_src_unnamed_processfpga379_processfpga2685
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_164_0 => i_unnamed_processfpga2666_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        out_intel_reserved_ffwd_164_0 => i_ffwd_src_unnamed_processfpga379_processfpga_out_intel_reserved_ffwd_164_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_cmp_i51364638_processfpga(BLACKBOX,68)@11
    thei_ffwd_dst_cmp_i51364638_processfpga : i_ffwd_dst_cmp_i51364638_processfpga2662
    PORT MAP (
        in_intel_reserved_ffwd_187_0 => in_intel_reserved_ffwd_187_0,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_10_q,
        out_dest_data_out_187_0 => i_ffwd_dst_cmp_i51364638_processfpga_out_dest_data_out_187_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_cmp421255379_processfpga(BLACKBOX,66)@10
    thei_ffwd_dst_cmp421255379_processfpga : i_ffwd_dst_cmp421255379_processfpga2659
    PORT MAP (
        in_intel_reserved_ffwd_19_0 => in_intel_reserved_ffwd_19_0,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        out_dest_data_out_19_0 => i_ffwd_dst_cmp421255379_processfpga_out_dest_data_out_19_0,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_processfpga2661(LOGICAL,95)@10
    i_unnamed_processfpga2661_q <= i_ffwd_dst_cmp421255379_processfpga_out_dest_data_out_19_0 or i_cmp5_i_phi_decision_xor_processfpga_q;

    -- redist4_i_unnamed_processfpga2661_q_1(DELAY,165)
    redist4_i_unnamed_processfpga2661_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_processfpga2661_q, xout => redist4_i_unnamed_processfpga2661_q_1_q, clk => clock, aclr => resetn );

    -- i_cmp_i51364_phi_decision1845_or_processfpga(LOGICAL,64)@11
    i_cmp_i51364_phi_decision1845_or_processfpga_q <= redist4_i_unnamed_processfpga2661_q_1_q or i_ffwd_dst_cmp_i51364638_processfpga_out_dest_data_out_187_0;

    -- i_ffwd_src_unnamed_processfpga378_processfpga(BLACKBOX,80)@11
    -- out out_intel_reserved_ffwd_163_0@20000000
    thei_ffwd_src_unnamed_processfpga378_processfpga : i_ffwd_src_unnamed_processfpga378_processfpga2683
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_163_0 => i_cmp_i51364_phi_decision1845_or_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_10_q,
        out_intel_reserved_ffwd_163_0 => i_ffwd_src_unnamed_processfpga378_processfpga_out_intel_reserved_ffwd_163_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga377_processfpga(BLACKBOX,79)@10
    -- out out_intel_reserved_ffwd_162_0@20000000
    thei_ffwd_src_unnamed_processfpga377_processfpga : i_ffwd_src_unnamed_processfpga377_processfpga2681
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_162_0 => i_unnamed_processfpga2661_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        out_intel_reserved_ffwd_162_0 => i_ffwd_src_unnamed_processfpga377_processfpga_out_intel_reserved_ffwd_162_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga376_processfpga(BLACKBOX,78)@15
    -- out out_intel_reserved_ffwd_161_0@20000000
    thei_ffwd_src_unnamed_processfpga376_processfpga : i_ffwd_src_unnamed_processfpga376_processfpga2679
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_161_0 => i_load_tmp46_i_i1667_processfpga_out_o_readdata,
        in_stall_in => GND_q,
        in_valid_in => redist11_sync_in_aunroll_x_in_i_valid_14_q,
        out_intel_reserved_ffwd_161_0 => i_ffwd_src_unnamed_processfpga376_processfpga_out_intel_reserved_ffwd_161_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga375_processfpga(BLACKBOX,77)@10
    -- out out_intel_reserved_ffwd_160_0@20000000
    thei_ffwd_src_unnamed_processfpga375_processfpga : i_ffwd_src_unnamed_processfpga375_processfpga2677
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_160_0 => i_cmp_i51364_phi_decision1844_or_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        out_intel_reserved_ffwd_160_0 => i_ffwd_src_unnamed_processfpga375_processfpga_out_intel_reserved_ffwd_160_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga374_processfpga(BLACKBOX,76)@10
    -- out out_intel_reserved_ffwd_159_0@20000000
    thei_ffwd_src_unnamed_processfpga374_processfpga : i_ffwd_src_unnamed_processfpga374_processfpga2675
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_159_0 => i_cmp5_i_phi_decision_xor_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        out_intel_reserved_ffwd_159_0 => i_ffwd_src_unnamed_processfpga374_processfpga_out_intel_reserved_ffwd_159_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga373_processfpga(BLACKBOX,75)@10
    -- out out_intel_reserved_ffwd_158_0@20000000
    thei_ffwd_src_unnamed_processfpga373_processfpga : i_ffwd_src_unnamed_processfpga373_processfpga2673
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_158_0 => i_cmp5_i_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_aunroll_x_in_i_valid_9_q,
        out_intel_reserved_ffwd_158_0 => i_ffwd_src_unnamed_processfpga373_processfpga_out_intel_reserved_ffwd_158_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga372_processfpga(BLACKBOX,74)@5
    -- out out_intel_reserved_ffwd_157_0@20000000
    thei_ffwd_src_unnamed_processfpga372_processfpga : i_ffwd_src_unnamed_processfpga372_processfpga2671
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_157_0 => i_clfired_i9_processfpga_processfpga2645_dupName_1_trunc_sel_x_b,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_4_q,
        out_intel_reserved_ffwd_157_0 => i_ffwd_src_unnamed_processfpga372_processfpga_out_intel_reserved_ffwd_157_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga371_processfpga(BLACKBOX,73)@2
    -- out out_intel_reserved_ffwd_156_0@20000000
    thei_ffwd_src_unnamed_processfpga371_processfpga : i_ffwd_src_unnamed_processfpga371_processfpga2669
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_156_0 => i_idxprom_i7_processfpga_vt_join_q,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_intel_reserved_ffwd_156_0 => i_ffwd_src_unnamed_processfpga371_processfpga_out_intel_reserved_ffwd_156_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_processfpga370_processfpga(BLACKBOX,72)@2
    -- out out_intel_reserved_ffwd_155_0@20000000
    thei_ffwd_src_unnamed_processfpga370_processfpga : i_ffwd_src_unnamed_processfpga370_processfpga2667
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_155_0 => i_idx_0_i21365_replace_phi_processfpga_q,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_intel_reserved_ffwd_155_0 => i_ffwd_src_unnamed_processfpga370_processfpga_out_intel_reserved_ffwd_155_0,
        clock => clock,
        resetn => resetn
    );

    -- sync_out_aunroll_x(GPOUT,54)@15
    out_intel_reserved_ffwd_155_0 <= i_ffwd_src_unnamed_processfpga370_processfpga_out_intel_reserved_ffwd_155_0;
    out_intel_reserved_ffwd_156_0 <= i_ffwd_src_unnamed_processfpga371_processfpga_out_intel_reserved_ffwd_156_0;
    out_intel_reserved_ffwd_157_0 <= i_ffwd_src_unnamed_processfpga372_processfpga_out_intel_reserved_ffwd_157_0;
    out_intel_reserved_ffwd_158_0 <= i_ffwd_src_unnamed_processfpga373_processfpga_out_intel_reserved_ffwd_158_0;
    out_intel_reserved_ffwd_159_0 <= i_ffwd_src_unnamed_processfpga374_processfpga_out_intel_reserved_ffwd_159_0;
    out_intel_reserved_ffwd_160_0 <= i_ffwd_src_unnamed_processfpga375_processfpga_out_intel_reserved_ffwd_160_0;
    out_intel_reserved_ffwd_161_0 <= i_ffwd_src_unnamed_processfpga376_processfpga_out_intel_reserved_ffwd_161_0;
    out_intel_reserved_ffwd_162_0 <= i_ffwd_src_unnamed_processfpga377_processfpga_out_intel_reserved_ffwd_162_0;
    out_intel_reserved_ffwd_163_0 <= i_ffwd_src_unnamed_processfpga378_processfpga_out_intel_reserved_ffwd_163_0;
    out_intel_reserved_ffwd_164_0 <= i_ffwd_src_unnamed_processfpga379_processfpga_out_intel_reserved_ffwd_164_0;
    out_o_valid <= redist11_sync_in_aunroll_x_in_i_valid_14_q;
    out_unnamed_processFPGA380_0 <= GND_q;

    -- ext_sig_sync_out(GPOUT,60)
    out_unnamed_processFPGA368_avm_address <= i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_address;
    out_unnamed_processFPGA368_avm_enable <= i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_enable;
    out_unnamed_processFPGA368_avm_read <= i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_read;
    out_unnamed_processFPGA368_avm_write <= i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_write;
    out_unnamed_processFPGA368_avm_writedata <= i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_writedata;
    out_unnamed_processFPGA368_avm_byteenable <= i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_byteenable;
    out_unnamed_processFPGA368_avm_burstcount <= i_load_unnamed_processfpga368_processfpga_out_unnamed_processFPGA368_avm_burstcount;

END normal;
