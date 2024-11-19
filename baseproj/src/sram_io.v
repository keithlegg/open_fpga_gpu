`timescale 1ns / 1ps

/********************************/
//bidirectional SRAM controller  

//TODO - add paramenter to set DATA, ADDR size 
// https://greenbird.tweakblogs.net/blog/3459/sram-controller.html


module sram_io(clk, wren, d, q, address, WE, OE, IO, ADDR);
    input clk;
    input wren;
    input [15:0] d;
    input [18:0] address;
    output reg [15:0] q;

    //output reg BHE; //byte write select input IO[15:0] (active low)
    //output reg BLE; //byte write select input IO[7:0] (active low)
    //output reg CE;  //chip enable (active low)

    output reg WE;  // write enable (active low)
    output reg OE;  // output enable (active low)
    inout [15:0] IO;        // data
    output reg [18:0] ADDR; // address

    /***********/

    reg io_oe; //output enable for IO 
    reg [15:0] buffer_d;
     
    assign IO = io_oe ? buffer_d : 16'bZ;
    
    // WRITE STATE 
    always @ (posedge clk)
    begin
        if (wren)
            begin // write data
                ADDR <= address;
                // CE <= 0;
                OE <= 1;
                WE <= 0;
                io_oe <= 1;
            end 
        else
            begin // read data
                ADDR <= address;
                // CE <= 0;
                OE <= 0;
                WE <= 1;
                io_oe <= 0;
            end
        buffer_d <= d;
    end
    
    // READ STATE  
    always @ (negedge clk)
    if (wren==0)
        begin // read data
            q <= IO;
        end
 
endmodule

/********************************/

/*
module sram_io(
        input clk,
        input dir_pin,
        input [18:0] sram_addr,    //address 
        inout [14:0] sram_data_bus //SHOULD be 16 , but hardware is borked
    );

    reg [14:0] write_buffer;
    reg [14:0] read_buffer;
    
    wire [14:0] sram_data_buffer;

    //if dir_pin is high bidir = write_buffer, else hi-z 
    assign sram_data_buffer =  dir_pin ? write_buffer : 15'bZ ; //SHOULD be 16 , but hardware is borked

    always @ (posedge clk)
    begin
        read_buffer <= sram_data_buffer;
        write_buffer <= 15'b0;//sys_timer+10 ;
    end
    
    // assign sram_data_bus = sram_data_buffer;

endmodule

*/

/********************************/


/*

// https://www.altera.com/support/support-resources/design-examples/design-software/verilog/ver_bidirec.html 

module bidirec (oe, clk, inp, outp, bidir);

// Port Declaration

input   oe;
input   clk;
input   [7:0] inp;
output  [7:0] outp;
inout   [7:0] bidir;

reg     [7:0] a;
reg     [7:0] b;

assign bidir = oe ? a : 8'bZ ;
assign outp  = b;

// Always Construct

always @ (posedge clk)
begin
    b <= bidir;
    a <= inp;
end

endmodule
*/
