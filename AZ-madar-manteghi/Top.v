`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 		VRU	
// Engineer: 	
// 
// Create Date:    11:39:22 10/10/2017 
// Design Name: 
// Module Name:    Top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Top(
    input i_CLK,
    output o_PSCLK,
    output o_LEDData,
    output o_LEDLatch,
    output o_DIPLatch,
    input i_DIPData,
    output o_SEGData,
    output o_SEGLatch,
    output o_LCDData,
    output o_LCDLatch,
    output o_Eth_RST,
    input i_Eth_INT,
    output o_Eth_CS,
    output o_Eth_RD,
    output o_Eth_WR,
    output o_USB_SLOE,
    inout io_USB_IFCLK,
    output o_USB_SLRD,
    output o_USB_SLWR,
    inout [7:0] io_Data,
    inout [9:0] io_MuxEthUSB,
    output o_VGA_blue0,
    output o_VGA_blue1,
    output o_VGA_green0,
    output o_VGA_green1,
    output o_VGA_red0,
    output o_VGA_red1,
    output o_VGA_vsync,
    output o_VGA_hsync,
    input i_SW1,
    input i_SW2,
    input i_SW3,
    input i_SW4,
    output o_TXD1,
    input i_RXD1,
    output o_TXD2,
    input i_RXD2,
    output o_MMC_SCK,
    input i_MMC_DO,
    output o_MMC_DI,
    output o_MMC_CS,
    input i_SYS_RESET
    );


//////////////////////////////////////

//assign o_PSCLK = 1'bz;
//assign o_LEDData = 1'bz;
//assign o_LEDLatch = 1'bz;


//assign o_DIPLatch = 1'bz;
assign o_SEGData = 1'bz;
assign o_SEGLatch = 1'bz;
assign o_LCDData = 1'bz;
assign o_LCDLatch = 1'bz;

assign o_MMC_SCK	= 1'bz;

assign o_MMC_DI = 1'bz;
assign o_MMC_CS = 1'bz;

assign o_VGA_blue0 = 1'bz;
assign o_VGA_blue1 = 1'bz;
assign o_VGA_green0 = 1'bz;
assign o_VGA_green1 = 1'bz;
assign o_VGA_red0 = 1'bz;
assign o_VGA_red1 = 1'bz;
assign o_VGA_vsync = 1'bz;
assign o_VGA_hsync = 1'bz;

assign o_Eth_RST = 1'bz;

assign o_Eth_CS = 1'bz;
assign o_Eth_RD = 1'bz;
assign o_Eth_WR = 1'bz;
assign o_USB_SLOE = 1'bz;
assign io_USB_IFCLK = 1'bz;
assign o_USB_SLRD = 1'bz;
assign o_USB_SLWR = 1'bz;
assign io_Data = 8'bz;
assign io_MuxEthUSB = 10'bz;

assign o_TXD1 = 1'bz;
assign o_TXD2 = 1'bz;



//assign o_SEGData = 1'bz;
//assign o_SEGLatch = 1'bz;

assign o_LCDData = 1'bz;
assign o_LCDLatch = 1'bz;

//////////////////////////////////////
wire o_leddata,o_ledlatch;
wire [0:15]dipled;
wire clk5,clk20,clk50,clk100;
wire [4:0]PB_wire,push_in;
wire[15:0]out;
reg [15:0] outdip;
wire [0:7] im_address;

wire [3:0] op1;
wire [3:0] op2;
wire [15:0] alutodecoder1;


wire [15:0] regop1;
wire [15:0] regop2;
wire [7:0] alu1;
//outdip[15:0]=16'b0000000000000001;
//wire o_segdata,o_seglatch;



assign o_DIPLatch = o_DIPLatch;
assign o_PSCLK =~clk5 ;
assign o_LEDData = o_leddata;
assign o_LEDLatch = o_ledlatch;
 assign o_SEGData = o_segdata;
assign o_SEGLatch = o_seglatch;
//assign outdip[15:0]=out[15:0];
clock clk(
.CLK_IN(i_CLK),
.CLK_OUT5(clk5),
.CLK_OUT20(clk20),
.CLK_OUT50(clk50),
.CLK_OUT100(clk100));

IM im(
.addra(im_address),
.clka(clk5),
.dina(0),
.wea(0),
.douta(alutodecoder1)

);



wire [0:7] pcin;

set_pc set(
.clk(clk5),
.pc_in(im_address),
.pc_out(im_address),
.PB(PB_wire)
);

LED led_inst(
.data_in(dipled),
.clk(clk5),
.data_out(o_leddata),
.latch(o_ledlatch));

dip_switch dip (
.clk(clk5),
.data_in(i_DIPData),
.latch(o_DIPLatch),
.data_out(out),
.PB(PB_wire)
);
/*
push_button(
.PB(PB_wire),
.dip_input(out),
.out(dipled),
.clk(clk5)

);*/




decoder decoder (
.IM_in (alutodecoder1),
.ALU_out(alu1),
.clk(clk5),
.op1(op1),
.op2(op2)
);




reg_bank reg_bank(
.op1_out(regop1),
.op2_out(regop2),
.op1(op1),
.op2(op2),
.clk(clk5)
);

execute execute (
.ALU_in(alu1),
.op1_in(regop1),
.op2_in(regop2),
.clk(clk5),
.LED_out(dipled)
);

sevensegment sevensegment(
.data_in(im_address),
.clk(clk5),
.data_out(o_segdata),
.latch(o_seglatch)
);
/////////////////////////////////////

endmodule
