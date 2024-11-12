

![alt text](https://raw.githubusercontent.com/keithlegg/open_fpga_gpu/master/images/sram_back/board2.jpg) 


# open_fpga_gpu


WHAT IS IT? 

Another big silly experiment from Keith. A hardware platform for graphics and possibly computer vision. Basically its an SRAM "shield" for the mojo FPGA. The mojo/ISE is getting a bit "long in the tooth". Probably not going to last forever. I built on this platform because its what I am familiar with. 

This is an experiment. This is probably never going to be much more than that. It currently works as an SRAM framebuffer, it can draw the contents of memory to VGA and only draws a single line on the screen.

There will be much done to it before it is even close to ready to be called a "GPU".



HARDWARE:


Features 2 IS62WV51216BLL SRAM chips.

Each SRAM chip has 512K x 16 CMOS low power static RAM

Both chips share the address and data bus with separate programable control lines.


Also has a slot for a 1bitsy ARM chip, not wired directly to the FPGA but there are headers if you want to.

Every mojo pin has been broken out so you can snoop with logic tools, or reconfigure how you want. 
This makes the board much larger, but keeps things easier for prototyping. 


The verilog is added to the mojo-base-project found here:

    https://github.com/embmicro/mojo-base-project

Just copy the files into the src folder, and add the link in ISE GUI before you build the project.

Bresenham code borrowed from here:

    https://github.com/kavinr/Bresenham-Line-Drawing-Algorithm



