`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:00:55 11/10/2019 
// Design Name: 
// Module Name:    LED 
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
module LED(
input [15:0] data_in,
input clk,
output reg data_out,
output reg latch
    );
integer counter=0;
reg [0:15] shift;
always @(posedge clk)
begin
latch=1;
if(counter==15)
begin
shift[0:7]=data_in[7:0];
shift[8:15]=data_in[15:8];
data_out=shift[0:15];
counter=0;
latch=0;
end
else
begin
data_out=shift[counter];
//shift[0:14]=shift[1:15];
counter=counter+1;
end
end

endmodule
