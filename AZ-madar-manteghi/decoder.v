`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:24:18 12/30/2019 
// Design Name: 
// Module Name:    decoder 
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
module decoder(
input [15:0] IM_in,
input clk,
output reg[7:0] ALU_out,
output reg[3:0] op1,
output reg[3:0] op2
    );
	 reg [15:0] temp;

	

always @ (posedge clk)
begin
temp[15:0] = IM_in[15:0];
ALU_out [7:0] = temp [7:0];
op1 [3:0] = temp [11:8];
op2 [3:0] = temp [15:12];
end	 


endmodule
