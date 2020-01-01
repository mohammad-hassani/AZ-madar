`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:39:42 12/17/2019 
// Design Name: 
// Module Name:    set_pc 
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
module set_pc(
input [0:4]PB,
input clk,
input  [0:7] pc_in,
output reg [0:7] pc_out
    );
integer delay=0;
reg [0:7] shift;	
always @(posedge clk)
begin
shift[0:7]=pc_in[0:7];
	if(PB [3]==1'b0 || PB [4]==1'b0)
	begin
	delay=delay+1;
	end
	//.................//
	if(PB [3]==1'b1 && delay>=500000)
	begin
		shift [0:7]=shift[0:7]+1;
		pc_out[0:7]= shift[0:7];
		delay=0;
	end
		
	if(PB [4]==1'b1 && delay>=500000)
	begin
	pc_out [0:7]=8'b00000000;
	delay=0;
	end
 
end

endmodule
