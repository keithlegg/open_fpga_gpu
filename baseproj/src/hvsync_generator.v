`timescale 1ns / 1ps


///////////////////
// File Name:   VGA Tutorial
// Author   :   Da Cheng
// https://github.com/picus3/2048-Verilog/blob/master/hvsync_generator.v#L45
///////////////////
// timing diagram for the horizontal synch signal (HS)
// 0                       655    752           800 (pixels)
// -------------------------|______|-----------------
// timing diagram for the vertical synch signal (VS)
// 0                                 490    491  525 (lines)
// -----------------------------------|______|-------


module hvsync_generator(clk, sram_addr, vga_h_sync, vga_v_sync, inDisplayArea, CounterX, CounterY);
input clk;
//input reset;
output [18:0] sram_addr;
output vga_h_sync, vga_v_sync;
output inDisplayArea;

//////////////////////////////////////////////////
output [18:0] CounterX;
output [18:0] CounterY;
reg [18:0] CounterX;
reg [18:0] CounterY;
//////////////////////////////////////////////////

reg reset = 1'b0;
reg [18:0] sram_addr;
reg vga_HS, vga_VS;
reg inDisplayArea;


reg [18:0] screen_width = 19'h320;   //h280==640   //h320==800
reg [18:0] screen_height = 19'h209;  //h1E0==480   //h209==521

//increment column counter
always @(posedge clk)
begin
   if(reset)
      CounterX <= 0;
   else if(CounterX==screen_width)
	   CounterX <= 0;
   else
	   CounterX <= CounterX +1;
end

//increment row counter
always @(posedge clk)
begin
   if(reset)
      CounterY <= 0; 
   else if(CounterY==screen_height)     
      CounterY<=0;
   else if(CounterX==screen_width) 
      CounterY <= CounterY + 1;

end


// increment framebuffer memory address
always @(posedge clk)
begin
    sram_addr <= (CounterY*screen_width)+CounterX;
end

//generate synchronization signal for both vertical and horizontal
always @(posedge clk)
begin
	vga_HS <= (CounterX>655 && CounterX<752); 	// change these values to move the display horizontally
	vga_VS <= (CounterY==490 ||CounterY==491); 	// change these values to move the display vertically
end 


always @(posedge clk)
   if(reset)
      inDisplayArea<=0;
   else
	   inDisplayArea <= (CounterX<640) && (CounterY<480);
	
assign vga_h_sync = ~vga_HS;
assign vga_v_sync = ~vga_VS;

endmodule
 

/********************************************/


/*
module hvsync_generator(clk, sram_addr, vga_h_sync, vga_v_sync, inDisplayArea, CounterX, CounterY);
	input clk;
	output vga_h_sync, vga_v_sync;
	output inDisplayArea;
    output [18:0] sram_addr;
	
	//////////////////////////////////////////////////
	output [18:0] CounterX;
	output [18:0] CounterY;
	reg [18:0] CounterX;
	reg [18:0] CounterY;
	//////////////////////////////////////////////////

	wire CounterXmaxed = (CounterX==10'h2FF); //decimal 767 -  compare 10 to 18 digit??
	wire CounterYmaxed = (CounterY==10'h1FF); //decimal 511 - max of 9 bits ?? 

    reg [18:0] sram_addr;

    //640 X 480 = 307200

	always @(posedge clk)
	begin
		if(CounterXmaxed)
			CounterX <= 0;
		else
			CounterX <= CounterX + 1;
    end

	always @(posedge clk)
	begin
	    // keith added this when counters were expanded to 19 bits
		if(CounterYmaxed)
		    CounterY <= 0;	
		if(CounterXmaxed)
		    CounterY <= CounterY + 1;
    end

	//increment framebuffer memory address
	always @(posedge clk)
	begin
	  sram_addr <= (CounterY*19'h320)+CounterX;
	end


	reg	vga_HS, vga_VS;
	always @(posedge clk)
	begin
		//vga_HS <= (CounterX[9:4]==6'h2D); //2d=45  // change this value to move the display horizontally
		vga_HS <= (CounterX[9:0]==10'h2DF);          // change this value to move the display horizontally
		vga_VS <= (CounterY==500);                   // change this value to move the display vertically
	end

	reg inDisplayArea;
	always @(posedge clk)
	if(inDisplayArea==0)
		inDisplayArea <= (CounterXmaxed) && (CounterY<480);
	else
		inDisplayArea <= !(CounterX==639);
		
	assign vga_h_sync = ~vga_HS;
	assign vga_v_sync = ~vga_VS;

endmodule
*/
