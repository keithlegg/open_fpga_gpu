#!/usr/bin/bash

echo "getting bitstream from compiler "
scp keith@192.168.0.13:/keith/syncfpga/syn/mojo_top.bin mojo_top.bin  

echo "copied bitstream file , flashing locally "
mojoloader -d /dev/ttyACM0 -v -f mojo_top.bin  

echo "all done."