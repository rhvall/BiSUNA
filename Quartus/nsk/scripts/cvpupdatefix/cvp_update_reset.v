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

module cvp_update_reset # (
   parameter PIPE32_SIM_ONLY = 0
   ) (
   input pipe8_sim_only,
   input npor,
   input perst,
   output cvp_tx_analogreset
   );


wire npor_int;

   assign npor_int = npor & perst;

//   assign serdes_tx_analogreset      = ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b0           :(low_str(hip_hard_reset)=="disable")?~npor_int:1'b0;
//
   assign cvp_tx_analogreset      = ((PIPE32_SIM_ONLY==1)||(pipe8_sim_only==1'b1))?1'b0           : ~npor_int;



endmodule
