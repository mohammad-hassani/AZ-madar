`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:49:36 12/31/2019 
// Design Name: 
// Module Name:    execute 
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
module execute(
input [7:0]ALU_in,
input [15:0] op1_in,
input [15:0] op2_in,
input clk,
output reg [15:0]LED_out
    );
	 reg [7:0] ALU_temp;
	 reg [15:0] op1_temp;
	 reg [15:0] op2_temp;
	 reg [15:0] out;
	 
	 always @ (posedge clk)
	 begin
	 out [15:0] = 16'b1010101010101010;
	 ALU_temp [7:0]= ALU_in [7:0];
	 op1_temp [15:0]= op1_in [15:0];
	 op2_temp [15:0]= op2_in [15:0];


	 
	 case(ALU_temp [7:0])
	 8'b00000001: out [15:0] = op1_temp[15:0] + op2_temp[15:0];
	 8'b00000011: out [15:0]= op1_temp[15:0] - op2_temp[15:0];
	 8'b00001111: out [15:0]= op1_temp[15:0] + 1;
	 8'b00010000: out [15:0]= op1_temp[15:0] - 1;
	 endcase
	 
	 LED_out[15:0]=out [15:0]; 
	 
	 end


endmodule
