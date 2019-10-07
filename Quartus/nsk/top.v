// (C) 1992-2017 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                
    

module top (
	    input         cpu_resetn,
		input         config_clk,          //50MHz clock
		input         pll_ref_clk,         //for DDR3a  50MHz
        input         kernel_pll_refclk,   //50MHz clock
	
	    output [3:0]  pcie_tx_p, //1.5-V PCML
	    input  [3:0]  pcie_rx_p, //1.5-V PCML
	    input         pcie_refclk_p, //HCSL	
	    input         pcie_perstn, //2.5V

       output [14:0] ddr3a_a,
	    output [2:0]  ddr3a_ba,
	    output        ddr3a_clk_p,
	    output        ddr3a_clk_n,
	    output        ddr3a_cke,
	    output        ddr3a_csn,
	    output        ddr3a_rasn,
	    output        ddr3a_casn,
	    output        ddr3a_wen,
	    output        ddr3a_resetn,
	    output        ddr3a_odt,
	    output [3:0]  ddr3a_dm,
	    inout  [31:0] ddr3a_dq,
	    inout  [3:0]  ddr3a_dqs_p,
	    inout  [3:0]  ddr3a_dqs_n,	
	    input         rzqin_1_5v,
				
		 // FAN 
		output        fan_ctrl,
                                         
       //user LED
	    output [3:0]  user_led			//2.5V
 );
   
wire                  npor;


system  system_inst(
        // Global signals
        .global_reset_reset_n( cpu_resetn ),  // No hard reset !!!
        .reset_reset_n( cpu_resetn ),  // No hard reset !!!
        //.config_clk_clk( clkinbot_p ), // OK?
        .config_clk_clk( config_clk ), // OK?
        .ddr3a_pll_ref_clk( pll_ref_clk ),

        // PCIe pins
        .pcie_npor_pin_perst( pcie_perstn ),
        .pcie_npor_npor( npor ),
        .pcie_npor_out_reset_n( npor ),
        .pcie_refclk_clk( pcie_refclk_p ),
        .pcie_rx_in0( pcie_rx_p[0] ),
        .pcie_rx_in1( pcie_rx_p[1] ),
        .pcie_rx_in2( pcie_rx_p[2] ),
        .pcie_rx_in3( pcie_rx_p[3] ),
        .pcie_tx_out0( pcie_tx_p[0] ),
        .pcie_tx_out1( pcie_tx_p[1] ),
        .pcie_tx_out2( pcie_tx_p[2] ),
        .pcie_tx_out3( pcie_tx_p[3] ),

        // DDR3 pins
        .ddr3a_mem_reset_n( ddr3a_resetn ),
        .ddr3a_mem_a( ddr3a_a ),
        .ddr3a_mem_ba( ddr3a_ba ),
        .ddr3a_mem_cas_n( ddr3a_casn ),
        .ddr3a_mem_ck( ddr3a_clk_p ),
        .ddr3a_mem_ck_n( ddr3a_clk_n ),
        .ddr3a_mem_cke( ddr3a_cke ),
        .ddr3a_mem_cs_n( ddr3a_csn ),
        .ddr3a_mem_dm( ddr3a_dm ),
        .ddr3a_mem_dq( ddr3a_dq ),
        .ddr3a_mem_dqs_n( ddr3a_dqs_n ),
        .ddr3a_mem_dqs( ddr3a_dqs_p ),
        .ddr3a_mem_oct_rzqin( rzqin_1_5v ),
        .ddr3a_mem_odt( ddr3a_odt ),
        .ddr3a_mem_ras_n( ddr3a_rasn ),
        .ddr3a_mem_we_n( ddr3a_wen ),

        //.kernel_pll_refclk_clk( clkinbot_p )
        .kernel_pll_refclk_clk( kernel_pll_refclk )
        );

assign user_led = 4'b0101;
assign fan_ctrl = 1'b1;

endmodule
