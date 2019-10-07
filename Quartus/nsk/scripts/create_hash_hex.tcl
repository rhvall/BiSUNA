# (C) 1992-2017 Intel Corporation.                            
# Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
# and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
# and/or other countries. Other marks and brands may be claimed as the property  
# of others. See Trademarks on intel.com for full list of Intel trademarks or    
# the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
# Your use of Intel Corporation's design tools, logic functions and other        
# software and tools, and its AMPP partner logic functions, and any output       
# files any of the foregoing (including device programming or simulation         
# files), and any associated documentation or information are expressly subject  
# to the terms and conditions of the Altera Program License Subscription         
# Agreement, Intel MegaCore Function License Agreement, or other applicable      
# license agreement, including, without limitation, that your use is for the     
# sole purpose of programming logic devices manufactured by Intel and sold by    
# Intel or its authorized distributors.  Please refer to the applicable          
# agreement for further details.                                                 

# Update onchip_ram.mif with version and periphery hash data.  Then create Intel
# hex form of the same file.  Adjust_pll's update_mif call will see the new file
# and populate the onchip-RAM with it.

set max_onchip_ram_bytes 1024
set onchip_ram_version_id 1
set hash_bytes 20
set prog create_hash_hex

if { $argc != 1 } {
  post_message "Error: $prog requires one argument: name of file containing the periphery hash"
  exit 2
}

# Open file containing the periphery hash 
set hash_filename [lindex $argv 0]
if { ! [file exists $hash_filename] } {
  post_message "Error: $prog: Hash file doesn't exist"
  exit 2
}

# Fix for possible changes to periphery hash between aocx versions
# Ignore the new hash but add warning if different
set base_compile_aocx_filename "base.aocx"
set temp_fpga_bin "acl.temp.fpga.bin"
set temp_filename "acl.temp.section_extract.bin"
set mismatch_filename "acl.periph_mismatch"
if {[file exists $base_compile_aocx_filename] } {
  file delete $temp_fpga_bin
  file delete $mismatch_filename
  
  # Extract fpga.bin from base.aocx
  if {[catch {qexec "aocl binedit $base_compile_aocx_filename get .acl.fpga.bin $temp_fpga_bin"} res]} {
    post_message "$prog: Can't extract base revision RBF section from $base_compile_aocx_filename to $temp_fpga_bin: $res"
    exit 2
  }
  # Extract periphery_hash rbf from base.aocx
  if {[catch {qexec "aocl binedit $temp_fpga_bin get .acl.periph.hash $temp_filename"} res]} {
    post_message "$prog: Can't extract base revision periphery hash section from $temp_fpga_bin to $temp_filename: $res"
    exit 2
  }
  # Check for a difference
  set fp1 [open $revision_name.periph_hash] 
  set fp2 [open $temp_filename] 
  set hash1 [gets $fp1]
  set hash2 [gets $fp2]
  close $fp1
  close $fp2
  if {[string equal hash1 hash2] == 0 } {
    post_message -type warning "Periphery hash of this compile ($hash1) does not equal periphery hash of base: ($hash2). Configuration via PCIE may fail."
    file copy -force  $hash_filename $mismatch_filename
    file copy -force  $temp_filename $hash_filename
  }
  file delete $temp_fpga_bin
  file delete $temp_filename    
}

set hashfile [open $hash_filename r]

# Create MIF for the onchip_mem component
set mif_file "onchip_ram.mif"
set mif [open $mif_file w]
set ram_depth [expr int ($max_onchip_ram_bytes / 4 ) ]
puts $mif "DEPTH=$ram_depth;"
puts $mif "WIDTH=32;"
puts $mif "ADDRESS_RADIX=DEC;"
puts $mif "DATA_RADIX=HEX;"
puts $mif "CONTENT BEGIN"
#puts $mif "0 : [expr int ($k_achieved * 1000)];"
set addr 0
puts $mif "$addr : $onchip_ram_version_id;"
incr addr

for {set i 0} {$i < [expr int ($hash_bytes/4)] } {incr i} {
  # 8 hex chars define the 4B word
  set hash_four_bytes [read $hashfile 8]
  puts $mif "$addr : $hash_four_bytes;"
  incr addr
}

# Zero out rest of mif
puts $mif "\[$addr\.\.[expr $ram_depth - 1 ]\] : 0 ;"

puts $mif "END;"
close $mif
close $hashfile
qexec "mif2hex $mif_file onchip_ram.hex"
