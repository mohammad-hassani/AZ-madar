`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//decoder 4 bit to 8bit
module decoder(
input clk,
input [3:0] data_in,
output reg [7:0] LED_out 
  );
  reg [3:0] a;
  always @(posedge clk)
begin
   a [3:0] = data_in [3:0] ;
 case(a [3:0])
 4'b0000: LED_out [7:0] = 8'b11101110; // "0"  
 4'b0001: LED_out [7:0] = 8'b10000010; // "1" 
 4'b0010: LED_out [7:0] = 8'b00111110; // "2" 
 4'b0011: LED_out [7:0] = 8'b10110110; // "3" 
 4'b0100: LED_out [7:0] = 8'b11011000; // "4" 
 4'b0101: LED_out [7:0] = 8'b11110100; // "5" 
 4'b0110: LED_out [7:0] = 8'b11110110; // "6" 
 4'b0111: LED_out [7:0] = 8'b01101000; // "7" 
 4'b1000: LED_out [7:0] = 8'b11111110; // "8"  
 4'b1001: LED_out [7:0] = 8'b11111100; // "9" 
 4'b1010: LED_out [7:0] = 8'b11111011; // "a" 
 4'b1011: LED_out [7:0] = 8'b11010111; // "b" 
 4'b1100: LED_out [7:0] = 8'b01011001; // "c" 
 4'b1101: LED_out [7:0] = 8'b01011111; // "d" 
 4'b1110: LED_out [7:0] = 8'b10110111; // "e"  
 4'b1111: LED_out [7:0] = 8'b10110011; // "f"

endcase
end
endmodule
//////////////////////////////////////////////////////////////////////////////////
module segment(
input [15:0] data_in,
input clk,
output  data_out,
output reg latch
);

integer counter1=0;
reg [0:15] shift;

	 reg [7:0]segselect;
	 reg [3:0]seg;
	 reg [7:0]select;
integer state=0;
integer counter=0;

 always @(posedge clk)
 //if(counter==3)
begin
//send data in to decoder

case(state)
0:seg [3:0] = data_in [3:0];
1:seg [3:0] = data_in [7:4];
2:seg [3:0] = data_in [11:8];
3:seg [3:0] = data_in [15:12];
 endcase

decoder decoder(
.data_in(seg[3:0]),
.LED_out(select[7:0]),
.clk(clk5)
);

//seg select for select witch 7 segment is selected

case(state)
0:segselect[7:0]= 8'b00000100;
1:segselect[7:0]= 8'b00001000;
2:segselect[7:0]= 8'b00100000;
3:segselect[7:0]= 8'b00000010;
 endcase
 state = state+1 ;

///////////////////////////////////////////////
//send 16 bit to data out 


latch=1;
if(counter1==15)
begin
shift[0:7]=select[7:0];
shift[8:15]=segselect[7:0];
data_out=shift[15];
counter1=0;
latch=0;
end
else
begin
data_out=shift[counter1];
//data_out=shift[counter1];
counter1=counter1+1;
end
//////////////////////////////////////////////
//else
//begin
//counter = counter+1;
//end
end




endmodule
