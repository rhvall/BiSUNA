set kernel_fmax 117.549999803
if { $::TimeQuestInfo(nameofexecutable) == "quartus_sta" } {
  post_message -type warning "Executing OpenCL guaranteed timing flow - this timing report assumes the kernel PLL will be reconfigured to run at $kernel_fmax MHz."
  if { [ get_collection_size [get_clocks system_inst|board|kernel_clk_gen|kernel_pll|altera_pll_i|cyclonev_pll|counter[0].output_counter|divclk] ] != 1 } {
    post_message -type error "Unable to find OpenCL kernel clock system_inst|board|kernel_clk_gen|kernel_pll|altera_pll_i|cyclonev_pll|counter[0].output_counter|divclk.  Make sure this is called after derive_pll_clocks"
  }
  set kclk [get_clocks {system_inst|board|kernel_clk_gen|kernel_pll|altera_pll_i|cyclonev_pll|counter[0].output_counter|divclk}]
  set has_2x_clk 1
  if { [ get_collection_size [get_clocks {system_inst|board|kernel_clk_gen|kernel_pll|altera_pll_i|cyclonev_pll|counter[1].output_counter|divclk}] ] == 0 } {
    set has_2x_clk 0
  }
  set kclk2x [get_clocks {system_inst|board|kernel_clk_gen|kernel_pll|altera_pll_i|cyclonev_pll|counter[1].output_counter|divclk}]
  set refclk [get_clock_info -master_clock $kclk ]
  post_message -type info "Found refclk for kernel clk: $refclk"
  set srcpin [get_clock_info -master_clock_pin $kclk ]
  post_message -type info "Found source for kernel clk: $srcpin"
  set period [get_clock_info -period $kclk ]
  post_message -type info "kernel clk has period: $period"
  set multby [get_clock_info -multiply_by $kclk ] 
  set divby [get_clock_info -divide_by $kclk ] 
  post_message -type info "kernel clk has multby: $multby and divby: $divby"
  set multby [ expr $multby * [ expr int( $period * 1000 )] ]
  set divby [ expr $divby * [ expr int( ceil( 1000 / $kernel_fmax * 1000 ))] ]
  post_message -type info "Using adjusted multby: $multby and divby: $divby"
  remove_clock {system_inst|board|kernel_clk_gen|kernel_pll|altera_pll_i|cyclonev_pll|counter[0].output_counter|divclk}
  create_generated_clock -name {system_inst|board|kernel_clk_gen|kernel_pll|altera_pll_i|cyclonev_pll|counter[0].output_counter|divclk} -source [ get_node_info -name [ get_nodes {*kernel_pll*0]*vco?ph[0]} ] ] -multiply_by $multby -divide_by $divby -master_clock $refclk [get_pins system_inst|board|kernel_clk_gen|kernel_pll|altera_pll_i|cyclonev_pll|counter[0].output_counter|divclk]
  if { $has_2x_clk } {
    remove_clock {system_inst|board|kernel_clk_gen|kernel_pll|altera_pll_i|cyclonev_pll|counter[1].output_counter|divclk}
    create_generated_clock -name {system_inst|board|kernel_clk_gen|kernel_pll|altera_pll_i|cyclonev_pll|counter[1].output_counter|divclk} -source [get_node_info -name [ get_nodes {*kernel_pll*[1]*vco?ph[0]} ] ] -multiply_by [ expr $multby * 2] -divide_by $divby -master_clock $refclk [get_pins {system_inst|board|kernel_clk_gen|kernel_pll|altera_pll_i|cyclonev_pll|counter[1].output_counter|divclk}]
  }
  post_message -type info "Re-created kernel clock with period [ get_clock_info -period system_inst|board|kernel_clk_gen|kernel_pll|altera_pll_i|cyclonev_pll|counter[0].output_counter|divclk ]"
}
