`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:08:15 12/09/2019 
// Design Name: 
// Module Name:    push_button 
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
module push_button(

input [4:0]PB,
input [0:15]dip_input,
output reg [0:15] out,
input clk
    );
integer delay=0;	 
	 reg [15:0] shift;
	integer flag=0;
		integer counter=0;
always @(posedge clk)
begin


shift[15:0]=dip_input[0:15];

shift[7:0]=dip_input[0:7];
shift[15:8]=dip_input[8:15];

if(PB [3]==1'b0)
begin
delay=delay+1;
flag=1;

end
if (PB [3]==1'b1 && flag==1 && delay>=500000)
begin 
counter=counter +1;
delay=0;
//shift[0:15]=shift[0:15]+counter;
//out[0:15]=dip_input[0:15]+counter;

out[0:15] =shift[15:0]+counter;

flag=0;

end

else
begin 

out[0:15] =shift[15:0]+counter;

end

end

endmodule
