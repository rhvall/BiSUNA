
This BSP doesn't support below.

1, aocl flash command
2, FPGA configuration via PCIE (CvP is not supported)

Therefore USB-Blaster II cable should be connected if you need to update the kernel.


<How to write the flash device>

The Nios II EDS offers a nios2-flash-programmer utility to program the flash memory
directly. To program the base.flash file to the board using
nios2-flash-programmer, do the following:

1. Set the SW4.3 DIP switch to the FACT ON (logic 0) to load the Board Update Portal
design from flash memory on power up.

2. Attach the USB-Blaster cable and power up the system.

3. If the board has powered up and the LCD displays either Connecting... or a valid IP
address (such as 152.198.231.75), proceed to step 8. If no output appears on the
LCD or if the Config Done LED (D7) does not illuminate, continue to step 4 to load
the FPGA with a flash-writing design.

4. Run the Quartus II Programmer to configure the FPGA with a .sof capable of flash
programming. You may need to click Auto Detect to detect the FPGAs.

5. Click 5CGT device, then click Change File and select c5gt_fpga_bup.sof.

6. Turn on the Program/Configure option for the added file.

7. Click Start to download the selected configuration file to the FPGA. Configuration
is complete when the progress bar reaches 100%. The Config Done LED (D7)
illuminates indicating that the flash device is ready for programming.

8. Start Nios II Command Shell.
<quartus install dir>/nios2eds/nios2_command_shell.sh 

9. Type the following jtag command:
jtagconfig --setparam 1 JtagClock 6M

10. Type the following Nios II EDS command:
nios2-flash-programmer --base=0x00000000 base.flash 

11. Set the SW4.3 DIP switch to the FACT OFF (logic 1) position and power cycle the board.

12. Run lspci and check if the board is recognized as PCI device. If the system cannot find the board, you should restore the flash device at first and re-write the .flash file.

13. Run aocl install and aocl diagnose.

Please also refer "A.Programming the Flash Memory Device chapter" of CycloneV GT FPGA Development Kit User Guide if needed.





