`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:45 12/29/2019 
// Design Name: 
// Module Name:    sevensegment 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sevensegment(
input [15:0] data_in,
input clk,
output reg latch,
output reg [15:0] data_out
    );
	 /////////////////////***********************////////////////////

	 reg [15:0] shift;
	 reg [1:0] seg;
	 reg [3:0] select;
	 reg [7:0] segselect;
	 reg [7:0] segled;
	 reg [15:0] sum;
	 
	 integer delay=0;
	 integer counter=0;
	reg [1:0] count= 2'b00;

	 
	 
	 always @(posedge clk)
	 begin
	  seg [1:0] = 2'b00;
	  
//if(delay > 5000)
//begin
	 	 
	 shift [15:0] = data_in [15:0];
	 
	 
	 seg [1:0] = seg [1:0]+count [1:0];
	 count [1:0] = count [1:0] + 2'b01;
	 
	 
	 case (delay)
	 0: select [3:0] = shift [3:0];
	 5000: select [3:0] = shift [3:0];
	 10000: select [3:0] = shift [3:0];
	 15000: select [3:0] = shift [3:0];
	 endcase
	 
	 case(delay)
	 0:segselect[7:0]= 8'b00001000;
	 5000:segselect[7:0]= 8'b00001000;
	 10000:segselect[7:0]= 8'b00100000;
	 15000:segselect[7:0]= 8'b01000000;
    endcase
	 
	 if(delay > 20000)
	 begin
	 delay = 0;
	 end
	 
	 case(select [3:0])
    4'b0000: segled [7:0] = 8'b11101110; // "0"  
    4'b0001: segled [7:0] = 8'b10000010; // "1" 
    4'b0010: segled [7:0] = 8'b00111110; // "2" 
    4'b0011: segled [7:0] = 8'b10110110; // "3" 
    4'b0100: segled [7:0] = 8'b11011000; // "4" 
	 4'b0101: segled [7:0] = 8'b11110100; // "5" 
    4'b0110: segled [7:0] = 8'b11110110; // "6" 
    4'b1000: segled [7:0] = 8'b11111110; // "8"  
    4'b1001: segled [7:0] = 8'b11111100; // "9" 
    4'b1010: segled [7:0] = 8'b11111011; // "a" 
    4'b1011: segled [7:0] = 8'b11010111; // "b" 
    4'b0111: segled [7:0] = 8'b01101000; // "7" 
    4'b1100: segled [7:0] = 8'b10100111; // "c" 
    4'b1101: segled [7:0] = 8'b01011111; // "d" 
    4'b1110: segled [7:0] = 8'b10110111; // "e"  
    4'b1111: segled [7:0] = 8'b10110011; // "f"
    endcase

	 sum [15:8] = segled [7:0];
	 sum [7:0]= segselect[7:0];


	 latch=1;
	 if(counter==15)
	 begin
	 data_out=sum[counter];
	 counter=0;
	 latch=0;
	 end
	 
	 else
	 begin
	 data_out=sum[counter];
	 counter=counter+1;
	 end


	 if(count[1:0]==2'b11)
	 begin
	 count=0;
	 end
	 
	 
//  end
//else
//begin
delay=delay+1;
//end

end
	 endmodule
