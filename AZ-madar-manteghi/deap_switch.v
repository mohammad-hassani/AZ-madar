`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:47:35 11/18/2019 
// Design Name: 
// Module Name:    deap_switch 
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
module dip_switch(

input  data_in,
input clk,
output reg [15:0] data_out,
output reg [4:0] PB,
output reg latch

    );
integer counter=0;
reg [0:20] shift;

//reg [15:0]a = 16'b0000000000000001;

always @(posedge clk)
begin
latch=1;
if(counter==20)
begin
shift[20]=data_in;
data_out[7:0]=shift[0:7];
data_out[15:8]=shift[8:15];
PB[4:0]=shift[16:20];
/*if(shift[16]==1)
begin
data_out[15:8]=data_out[15:8]+a[15:0];
end*/
counter=0;
latch=0;
end
else
begin
shift[counter]=data_in;
//shift[0:14]=shift[1:15];
counter=counter+1;
end
end
   


endmodule
