module mojo_top(
    // 50MHz clock input
    input clk,
    // Input from reset button (active low)
    input rst_n,
    // cclk input from AVR, high when AVR is ready
    input cclk,
    // Outputs to the 8 onboard LEDs
    output[7:0]led,
    // AVR SPI connections
    output spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    // AVR ADC channel select
    output [3:0] spi_channel,
    // Serial connections
    input avr_tx,      // AVR Tx => FPGA Rx
    output avr_rx,     // AVR Rx => FPGA Tx
    input avr_rx_busy, ////

    /********/
    //SPI1 - keith was here, went for beer 
    input klspi_cs,
    input klspi_clk, 
    input klspi_mosi, 
    output klspi_miso,
    /********/
    //SPI2 - echo SPI for logic analyzer snooping - all outputs  
    output klspi_cs_2,
    output klspi_clk_2,
    output klspi_miso2,
    output klspi_mosi2,

    /********/  
    //SRAM data and address buses 

    inout[15:0]sram_bidir, 
    output[18:0]sram_a,

    /********/ 
    //sram1 control bus 
    output sram1_we,//active low
    output sram1_cs,//active low
    output sram1_oe,//active low

    //sram2 control bus 
    output sram2_we,//active low
    output sram2_cs,//active low
    output sram2_oe,//active low

    /********/    
    //VGA output        
    output rpin,
    output gpin,
    output bpin,
    output vpin,
    output hpin

    );


/********************************/

wire inv_rst;         
assign inv_rst = ~rst_n;

/********************************/
//initialize values - "plugz"

// these signals should be high-z when not used
assign spi_miso = 1'bz;
assign avr_rx = 1'bz;
assign spi_channel = 4'bzzzz;


//echo SPI to second bus 
assign klspi_cs_2 = klspi_cs;
assign klspi_clk_2 = klspi_clk; 
assign klspi_mosi2 = klspi_mosi; 
assign klspi_miso = 1'b1;
assign klspi_miso2 = 1'b1;

/******************************************/
// SRAM interface  - chip1 is on right of board when VGA is top 
/******************************************/

wire we_wire1; // high on read, low on write 
wire oe_wire1; // low on read , high on write 

wire we_wire2; // high on read, low on write  
wire oe_wire2; // low on read , high on write 

// sram1 control buses 
assign sram1_we = 1'b1; //we_wire1; // high means READ data (active low) 
assign sram1_cs = 1'b1;             // low is selected      (active low) 
assign sram1_oe = 1'b1; //oe_wire1; // low on read          (active low)  

assign sram2_we = we_wire2;   // high means READ data (active low)
assign sram2_cs = 1'b0; //~rst_n;     // low is selected      (active low) 
assign sram2_oe = oe_wire2;   // low on read          (active low)

reg [7:0] led_intermed; //led output signal - 8bit

/********************************/
//CLOCK DIVIDER
wire blink;
reg [23:0] counter_d, counter_q;

assign blink = counter_q[23];

always @(counter_q) begin
    counter_d = counter_q + 1'b1;
end


/*
always @(posedge clk) begin
    if (inv_rst) begin
        counter_q <= 24'b0;
        //cur_state=STATE_RESET; //only ONE block can set a value
    end else begin
        counter_q <= counter_d;
    end

end
*/




/********************************/

reg dir_pin = 1'b1;

wire [15:0] data_intermed;

reg[18:0] addr_cntr1 = 19'd0;

reg[15:0] sram_data_in = 16'd0;


/********************************/
//bidirectional pin code - SRAM read/write 
/********************************/
reg  half_clk;

sram_io shramio(
    .clk(clk),
    //data to interact with sram chip 
    .wren(dir_pin),
    .d(sram_data_in),
    .q(data_intermed),
    .address(addr_cntr1),
    //physical wires to control sram chip 
    .WE(we_wire2),
    .OE(oe_wire2),
    .ADDR(sram_a), 
    .IO(sram_bidir) 
);





/***********************************************/
/***********************************************/
//VGA portion 

//cut clock in half to 25mhz

always @(posedge clk) 
begin
    half_clk <= ~half_clk;
end

/******************/

wire inDisplayArea;
wire [18:0] CounterX;
wire [18:0] CounterY;

wire [18:0] mem_ptr;

hvsync_generator syncgen(.clk(half_clk), 
                         .sram_addr(mem_ptr), 
                         .vga_h_sync(hpin), 
                         .vga_v_sync(vpin),
                         .inDisplayArea(inDisplayArea), 
                         .CounterX(CounterX), 
                         .CounterY(CounterY));

reg vga_R;
reg vga_G;
reg vga_B;


 

/***************************************/
/***************************************/


reg [7:0] stax, stay = 0;
reg [7:0] endx, endy = 0;
reg [17:1] prng = 1;
reg [3:0] beam = 0;
reg [1:0] mode = 0;

reg go = 0;
wire busy;
wire linedraw_wr;
wire [15:0] linedraw_addr;

linedraw my_linedraw (
	.go(go),
	.busy(busy),
	.stax(stax),
	.stay(stay),
	.endx(endx),
	.endy(endy),
	.wr(linedraw_wr),
	.addr(linedraw_addr), // {8 bits X, 8 bits Y }
	.pclk(half_clk)
);


/***************************************/
/***************************************/
//3 STATE - ERASE, DRAW, SHOW SRAM 

reg [18:0] clear_mem_stop   =  19'd416800; //19'd416800; //521*800
reg [18:0] draw_screen_stop =  19'd416800; //19'd416800; //521*800

//very basic state machine 
reg [3:0] run_state = 4'd0; //clear /write pattern/ run 

// reg [18:0] cntr_x = 19'h0;
// reg [18:0] cntr_y = 19'h0;
reg [7:0] linecount = 8'h0;


reg [3:0] toggle_reset = 4'd1;  

reg [7:0] anim_x = 0;
reg [7:0] anim_y = 0; 

always @(posedge clk) begin

    if ( inv_rst )begin
        addr_cntr1 <= 19'b0;

        if (toggle_reset == 4'd1) begin
            addr_cntr1 <= 19'b0;
            run_state <= 4'd4;           
            toggle_reset <= 4'd2;  

            // if(anim_x>250)begin
            //     anim_x <= 0;
            //     anim_y <= 0; 
            // end
            // else begin
            //     //debug this aint right
            //     anim_x <= anim_x + 5;
            //     anim_y <= anim_y + 5;                 
            // end
                 
        end
        else if (toggle_reset == 4'd2) begin  
            addr_cntr1 <= 19'b0;
            run_state <= 4'd0;         
            toggle_reset <= 4'd1;
        end
    end 

    /*****************************/ 
    //clear sram 
    if (run_state == 4'd0) begin
        dir_pin <= 1'b1; //set SRAM to write 
        if (addr_cntr1 < clear_mem_stop) begin
            sram_data_in <= 0;
            addr_cntr1 <= addr_cntr1 + 1;
        end
        // overflow condition - reset count and start over      
        else begin
            addr_cntr1 <= 19'b0;
            //go to next state
            run_state <= 4'd1;  
        end
    end

    /*****************************/ 
    //write to sram 
    if (run_state == 4'd1) begin
        // SRAM address to stop writing  
        if (addr_cntr1 < draw_screen_stop) begin
            // attempt to make a visual pattern in sram
            addr_cntr1 <= addr_cntr1 + 1;

            
            if (addr_cntr1 > 19'd9600 && addr_cntr1 < 19'd10200) begin        // Y 12
                sram_data_in <= 16'd350;
            end
            else if (addr_cntr1 > 19'd80020 && addr_cntr1 < 19'd80300) begin // Y 100
                //sram_data_in = 16'd150;
                sram_data_in <= 16'd150;
            end            
            else begin
                //sram_data_in = 16'd0;
                sram_data_in <= {16{half_clk}};

            end

        end
        // overflow condition - reset count and start over 
        else begin
            addr_cntr1 <= 19'b0;
            run_state <= 4'd2; //go to next state 
                
        end   
    end

    /*****************************/ 
    // draw whats in SRAM on the screen 
    if (run_state == 4'd2)begin
        dir_pin <= 1'b0; //set SRAM to read instead of write  
        // allows the video sync generator to drive the SRAM address
        addr_cntr1 <= mem_ptr;
    end

    /*****************************/ 
    /*****************************/ 
    /*****************************/    

    //clear sram 2 
    if (run_state == 4'd4) begin
        dir_pin <= 1'b1; //set SRAM to write     
        if (addr_cntr1 < clear_mem_stop) begin
            sram_data_in <= 0;
            addr_cntr1 <= addr_cntr1 + 1;
        end
        // overflow condition - reset count and start over      
        else begin
            addr_cntr1 <= 19'b0;
            //go to next state
            run_state <= 4'd5;  
        end
    end

    // pattern 2  
    if (run_state == 4'd5) begin
        // SRAM address to stop writing  

        
        if (! busy) begin
            stax = 8'd0;   //8 bit - only goes to 256!!
            stay = 8'd0;   //8 bit - only goes to 256!!
            endx = 8'd150; //8 bit - only goes to 256!!
            endy = 8'd34; //8 bit - only goes to 256!!
            go <= 1'b1; //start drawing 
        end

        if (busy) begin
           
            // 800 X 525 
            addr_cntr1 <= ( (800 * linedraw_addr[7:0]) + linedraw_addr[15:8] );
            sram_data_in <= 16'd350;

			// reg go = 0;
			// wire busy;
			// wire linedraw_wr;
			// wire [15:0] linedraw_addr;

        end
        // overflow condition - reset count and start over 
        else begin
            addr_cntr1 <= 19'b0;
            run_state <= 4'd2; //go to next state 
        end   
    end
 

end




/***************************************/

/*
 
//SHOW SRAM WITH NO MEMORY TWEAKING  
always @(posedge clk) begin

        dir_pin = 1'b0;

        vga_R =  inDisplayArea && (data_intermed<=16'd1024); 
        vga_G =  inDisplayArea && (data_intermed<=16'd1024); 
        vga_B =  inDisplayArea && (data_intermed<=16'd1024); 

        //800 pixel horizontal and 525 lines

        // SRAM address to stop writing at 
        //if (addr_cntr1<19'd416800) begin
            addr_cntr1 = addr_cntr1 + 1;  
        //end
        // overflow condition - reset count and start over 
        //else begin
        //    addr_cntr1 = 19'b0;
        //end    
    
end
*/  

/***************************************/

//assign led = addr_cntr1[7:0];
assign led = {2{toggle_reset}};

/***************************************/
//ANIMATE A BLIP MOVING ON SCREEN 
/*
reg [9:0] blipsize_x = 10'd10;
reg [9:0] blipsize_y = 10'd10;
reg [18:0] bc_x = 19'd220;
reg [18:0] bc_y = 19'd220;

reg [20:0] foo = 21'h1;

always @(posedge blink)
begin
    bc_x =  bc_x + foo; 
end
wire overlay2 = (CounterX>(bc_x-(blipsize_x*2))) && 
                (CounterX<(bc_x+(blipsize_x*2))) && 
                (CounterY>(bc_y-(blipsize_y*2))) && 
                (CounterY<(bc_y+(blipsize_y*2)));
*/

//wire framebuffer = inDisplayArea && (data_intermed>16'd1024); 

wire overlay2 = CounterX == 5   || 
                CounterX == 638 || 
                CounterY == 7   || 
                CounterY == 478;

always @(posedge clk)begin
   
    //          check location     layer1        layer2            
    vga_R =  inDisplayArea  && overlay2 || (data_intermed>16'd100);   
    vga_G =  inDisplayArea  && overlay2 || (data_intermed>16'd200); 
    vga_B =  inDisplayArea  && overlay2 || (data_intermed>16'd500); 
          
    // vga_R =  inDisplayArea && (data_intermed>16'd100);    
    // vga_G =  inDisplayArea && (data_intermed>16'd200); 
    // vga_B =  inDisplayArea && (data_intermed>16'd500); 

end

// send the color out the pipe 
assign rpin = vga_R;
assign gpin = vga_G;    
assign bpin = vga_B;


/***********************************************/
/***********************************************/
//flip the direction / state machine
/*
reg [7:0] cur_state = STATE_PAUSE;

//define the possible states 
parameter STATE_RESET     = 8'h01,  
          STATE_PAUSE     = 8'h02, 
          STATE_LOADRAM   = 8'h03,
          STATE_SHOWRAM   = 8'h04;

//display activity on mojo leds to indicate state and data
always @(*)begin
    if(cur_state==STATE_RESET)begin
        led_intermed <= 8'hff;
        cur_state = STATE_LOADRAM; 
        dir_pin <= 1'b0;
    end
    if(cur_state==STATE_PAUSE)begin
        led_intermed <= 8'haa;
        //cur_state = STATE_RESET;
    end    
    if(cur_state==STATE_LOADRAM)begin
        led_intermed <= 8'hf0;
        dir_pin <= 1'b1;
    end 
    if(cur_state==STATE_SHOWRAM)begin
        led_intermed <= 8'h0f;
        dir_pin <= 1'b1;
    end         
end


*/  



/********************************/


endmodule