////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Top_synthesis.v
// /___/   /\     Timestamp: Sun Nov 10 10:22:12 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Top.ngc Top_synthesis.v 
// Device	: xc6slx9-3-tqg144
// Input file	: Top.ngc
// Output file	: E:\cc\netgen\synthesis\Top_synthesis.v
// # of Modules	: 1
// Design Name	: Top
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Top (
  i_CLK, i_DIPData, i_Eth_INT, i_SW1, i_SW2, i_SW3, i_SW4, i_RXD1, i_RXD2, i_MMC_DO, i_SYS_RESET, o_PSCLK, o_LEDData, o_LEDLatch, o_DIPLatch, 
o_SEGData, o_SEGLatch, o_LCDData, o_LCDLatch, o_Eth_RST, o_Eth_CS, o_Eth_RD, o_Eth_WR, o_USB_SLOE, io_USB_IFCLK, o_USB_SLRD, o_USB_SLWR, o_VGA_blue0, 
o_VGA_blue1, o_VGA_green0, o_VGA_green1, o_VGA_red0, o_VGA_red1, o_VGA_vsync, o_VGA_hsync, o_TXD1, o_TXD2, o_MMC_SCK, o_MMC_DI, o_MMC_CS, io_Data, 
io_MuxEthUSB
);
  input i_CLK;
  input i_DIPData;
  input i_Eth_INT;
  input i_SW1;
  input i_SW2;
  input i_SW3;
  input i_SW4;
  input i_RXD1;
  input i_RXD2;
  input i_MMC_DO;
  input i_SYS_RESET;
  output o_PSCLK;
  output o_LEDData;
  output o_LEDLatch;
  output o_DIPLatch;
  output o_SEGData;
  output o_SEGLatch;
  output o_LCDData;
  output o_LCDLatch;
  output o_Eth_RST;
  output o_Eth_CS;
  output o_Eth_RD;
  output o_Eth_WR;
  output o_USB_SLOE;
  inout io_USB_IFCLK;
  output o_USB_SLRD;
  output o_USB_SLWR;
  output o_VGA_blue0;
  output o_VGA_blue1;
  output o_VGA_green0;
  output o_VGA_green1;
  output o_VGA_red0;
  output o_VGA_red1;
  output o_VGA_vsync;
  output o_VGA_hsync;
  output o_TXD1;
  output o_TXD2;
  output o_MMC_SCK;
  output o_MMC_DI;
  output o_MMC_CS;
  inout [7 : 0] io_Data;
  inout [9 : 0] io_MuxEthUSB;
  wire clk5;
  wire o_PSCLK_OBUF_2;
  wire \led_inst/data_out_3 ;
  wire \led_inst/latch_4 ;
  wire N1;
  wire N1_inv;
  wire \clk/clkfbout_buf ;
  wire \clk/clkout3 ;
  wire \clk/clkout2 ;
  wire \clk/clkout1 ;
  wire \clk/clkout0 ;
  wire \clk/clkfbout ;
  wire \clk/clkin1 ;
  wire \led_inst/counter[31]_GND_53_o_equal_2_o_inv ;
  wire \led_inst/counter[31]_GND_53_o_equal_2_o ;
  wire \led_inst/counter[31]_GND_53_o_equal_2_o<31> ;
  wire \led_inst/counter[31]_GND_53_o_equal_2_o<31>1_138 ;
  wire \led_inst/counter[31]_GND_53_o_equal_2_o<31>2_139 ;
  wire \led_inst/counter[31]_GND_53_o_equal_2_o<31>3_140 ;
  wire \led_inst/counter[31]_GND_53_o_equal_2_o<31>4_141 ;
  wire \led_inst/counter[31]_GND_53_o_equal_2_o<31>5_142 ;
  wire \led_inst/Mcount_counter_cy<30>_rt_146 ;
  wire \led_inst/Mcount_counter_cy<29>_rt_147 ;
  wire \led_inst/Mcount_counter_cy<28>_rt_148 ;
  wire \led_inst/Mcount_counter_cy<27>_rt_149 ;
  wire \led_inst/Mcount_counter_cy<26>_rt_150 ;
  wire \led_inst/Mcount_counter_cy<25>_rt_151 ;
  wire \led_inst/Mcount_counter_cy<24>_rt_152 ;
  wire \led_inst/Mcount_counter_cy<23>_rt_153 ;
  wire \led_inst/Mcount_counter_cy<22>_rt_154 ;
  wire \led_inst/Mcount_counter_cy<21>_rt_155 ;
  wire \led_inst/Mcount_counter_cy<20>_rt_156 ;
  wire \led_inst/Mcount_counter_cy<19>_rt_157 ;
  wire \led_inst/Mcount_counter_cy<18>_rt_158 ;
  wire \led_inst/Mcount_counter_cy<17>_rt_159 ;
  wire \led_inst/Mcount_counter_cy<16>_rt_160 ;
  wire \led_inst/Mcount_counter_cy<15>_rt_161 ;
  wire \led_inst/Mcount_counter_cy<14>_rt_162 ;
  wire \led_inst/Mcount_counter_cy<13>_rt_163 ;
  wire \led_inst/Mcount_counter_cy<12>_rt_164 ;
  wire \led_inst/Mcount_counter_cy<11>_rt_165 ;
  wire \led_inst/Mcount_counter_cy<10>_rt_166 ;
  wire \led_inst/Mcount_counter_cy<9>_rt_167 ;
  wire \led_inst/Mcount_counter_cy<8>_rt_168 ;
  wire \led_inst/Mcount_counter_cy<7>_rt_169 ;
  wire \led_inst/Mcount_counter_cy<6>_rt_170 ;
  wire \led_inst/Mcount_counter_cy<5>_rt_171 ;
  wire \led_inst/Mcount_counter_cy<4>_rt_172 ;
  wire \led_inst/Mcount_counter_cy<3>_rt_173 ;
  wire \led_inst/Mcount_counter_cy<2>_rt_174 ;
  wire \led_inst/Mcount_counter_cy<1>_rt_175 ;
  wire \led_inst/Mcount_counter_xor<31>_rt_176 ;
  wire \led_inst/data_out_rstpot_177 ;
  wire \led_inst/counter_31_rstpot_178 ;
  wire \led_inst/counter_30_rstpot_179 ;
  wire \led_inst/counter_29_rstpot_180 ;
  wire \led_inst/counter_28_rstpot_181 ;
  wire \led_inst/counter_27_rstpot_182 ;
  wire \led_inst/counter_26_rstpot_183 ;
  wire \led_inst/counter_25_rstpot_184 ;
  wire \led_inst/counter_24_rstpot_185 ;
  wire \led_inst/counter_23_rstpot_186 ;
  wire \led_inst/counter_22_rstpot_187 ;
  wire \led_inst/counter_21_rstpot_188 ;
  wire \led_inst/counter_20_rstpot_189 ;
  wire \led_inst/counter_19_rstpot_190 ;
  wire \led_inst/counter_18_rstpot_191 ;
  wire \led_inst/counter_17_rstpot_192 ;
  wire \led_inst/counter_16_rstpot_193 ;
  wire \led_inst/counter_15_rstpot_194 ;
  wire \led_inst/counter_14_rstpot_195 ;
  wire \led_inst/counter_13_rstpot_196 ;
  wire \led_inst/counter_12_rstpot_197 ;
  wire \led_inst/counter_11_rstpot_198 ;
  wire \led_inst/counter_10_rstpot_199 ;
  wire \led_inst/counter_9_rstpot_200 ;
  wire \led_inst/counter_8_rstpot_201 ;
  wire \led_inst/counter_7_rstpot_202 ;
  wire \led_inst/counter_6_rstpot_203 ;
  wire \led_inst/counter_5_rstpot_204 ;
  wire \led_inst/counter_4_rstpot_205 ;
  wire \led_inst/counter_3_rstpot_206 ;
  wire \led_inst/counter_2_rstpot_207 ;
  wire \led_inst/counter_1_rstpot_208 ;
  wire \led_inst/counter_0_rstpot_209 ;
  wire \led_inst/latch_rstpot ;
  wire \led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ;
  wire \NLW_clk/clkout4_buf_O_UNCONNECTED ;
  wire \NLW_clk/clkout3_buf_O_UNCONNECTED ;
  wire \NLW_clk/clkout2_buf_O_UNCONNECTED ;
  wire \NLW_clk/pll_base_inst_CLKOUT4_UNCONNECTED ;
  wire \NLW_clk/pll_base_inst_CLKOUT5_UNCONNECTED ;
  wire \NLW_clk/pll_base_inst_LOCKED_UNCONNECTED ;
  wire [30 : 0] \led_inst/Mcount_counter_cy ;
  wire [0 : 0] \led_inst/Mcount_counter_lut ;
  wire [31 : 0] \led_inst/Result ;
  wire [31 : 0] \led_inst/counter ;
  VCC   XST_VCC (
    .P(N1_inv)
  );
  GND   XST_GND (
    .G(N1)
  );
  BUFG   \clk/clkout4_buf  (
    .O(\NLW_clk/clkout4_buf_O_UNCONNECTED ),
    .I(\clk/clkout3 )
  );
  BUFG   \clk/clkout3_buf  (
    .O(\NLW_clk/clkout3_buf_O_UNCONNECTED ),
    .I(\clk/clkout2 )
  );
  BUFG   \clk/clkout2_buf  (
    .O(\NLW_clk/clkout2_buf_O_UNCONNECTED ),
    .I(\clk/clkout1 )
  );
  BUFG   \clk/clkout1_buf  (
    .O(clk5),
    .I(\clk/clkout0 )
  );
  BUFG   \clk/clkf_buf  (
    .O(\clk/clkfbout_buf ),
    .I(\clk/clkfbout )
  );
  IBUFG #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IOSTANDARD ( "DEFAULT" ))
  \clk/clkin1_buf  (
    .I(i_CLK),
    .O(\clk/clkin1 )
  );
  XORCY   \led_inst/Mcount_counter_xor<31>  (
    .CI(\led_inst/Mcount_counter_cy [30]),
    .LI(\led_inst/Mcount_counter_xor<31>_rt_176 ),
    .O(\led_inst/Result [31])
  );
  XORCY   \led_inst/Mcount_counter_xor<30>  (
    .CI(\led_inst/Mcount_counter_cy [29]),
    .LI(\led_inst/Mcount_counter_cy<30>_rt_146 ),
    .O(\led_inst/Result [30])
  );
  MUXCY   \led_inst/Mcount_counter_cy<30>  (
    .CI(\led_inst/Mcount_counter_cy [29]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<30>_rt_146 ),
    .O(\led_inst/Mcount_counter_cy [30])
  );
  XORCY   \led_inst/Mcount_counter_xor<29>  (
    .CI(\led_inst/Mcount_counter_cy [28]),
    .LI(\led_inst/Mcount_counter_cy<29>_rt_147 ),
    .O(\led_inst/Result [29])
  );
  MUXCY   \led_inst/Mcount_counter_cy<29>  (
    .CI(\led_inst/Mcount_counter_cy [28]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<29>_rt_147 ),
    .O(\led_inst/Mcount_counter_cy [29])
  );
  XORCY   \led_inst/Mcount_counter_xor<28>  (
    .CI(\led_inst/Mcount_counter_cy [27]),
    .LI(\led_inst/Mcount_counter_cy<28>_rt_148 ),
    .O(\led_inst/Result [28])
  );
  MUXCY   \led_inst/Mcount_counter_cy<28>  (
    .CI(\led_inst/Mcount_counter_cy [27]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<28>_rt_148 ),
    .O(\led_inst/Mcount_counter_cy [28])
  );
  XORCY   \led_inst/Mcount_counter_xor<27>  (
    .CI(\led_inst/Mcount_counter_cy [26]),
    .LI(\led_inst/Mcount_counter_cy<27>_rt_149 ),
    .O(\led_inst/Result [27])
  );
  MUXCY   \led_inst/Mcount_counter_cy<27>  (
    .CI(\led_inst/Mcount_counter_cy [26]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<27>_rt_149 ),
    .O(\led_inst/Mcount_counter_cy [27])
  );
  XORCY   \led_inst/Mcount_counter_xor<26>  (
    .CI(\led_inst/Mcount_counter_cy [25]),
    .LI(\led_inst/Mcount_counter_cy<26>_rt_150 ),
    .O(\led_inst/Result [26])
  );
  MUXCY   \led_inst/Mcount_counter_cy<26>  (
    .CI(\led_inst/Mcount_counter_cy [25]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<26>_rt_150 ),
    .O(\led_inst/Mcount_counter_cy [26])
  );
  XORCY   \led_inst/Mcount_counter_xor<25>  (
    .CI(\led_inst/Mcount_counter_cy [24]),
    .LI(\led_inst/Mcount_counter_cy<25>_rt_151 ),
    .O(\led_inst/Result [25])
  );
  MUXCY   \led_inst/Mcount_counter_cy<25>  (
    .CI(\led_inst/Mcount_counter_cy [24]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<25>_rt_151 ),
    .O(\led_inst/Mcount_counter_cy [25])
  );
  XORCY   \led_inst/Mcount_counter_xor<24>  (
    .CI(\led_inst/Mcount_counter_cy [23]),
    .LI(\led_inst/Mcount_counter_cy<24>_rt_152 ),
    .O(\led_inst/Result [24])
  );
  MUXCY   \led_inst/Mcount_counter_cy<24>  (
    .CI(\led_inst/Mcount_counter_cy [23]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<24>_rt_152 ),
    .O(\led_inst/Mcount_counter_cy [24])
  );
  XORCY   \led_inst/Mcount_counter_xor<23>  (
    .CI(\led_inst/Mcount_counter_cy [22]),
    .LI(\led_inst/Mcount_counter_cy<23>_rt_153 ),
    .O(\led_inst/Result [23])
  );
  MUXCY   \led_inst/Mcount_counter_cy<23>  (
    .CI(\led_inst/Mcount_counter_cy [22]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<23>_rt_153 ),
    .O(\led_inst/Mcount_counter_cy [23])
  );
  XORCY   \led_inst/Mcount_counter_xor<22>  (
    .CI(\led_inst/Mcount_counter_cy [21]),
    .LI(\led_inst/Mcount_counter_cy<22>_rt_154 ),
    .O(\led_inst/Result [22])
  );
  MUXCY   \led_inst/Mcount_counter_cy<22>  (
    .CI(\led_inst/Mcount_counter_cy [21]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<22>_rt_154 ),
    .O(\led_inst/Mcount_counter_cy [22])
  );
  XORCY   \led_inst/Mcount_counter_xor<21>  (
    .CI(\led_inst/Mcount_counter_cy [20]),
    .LI(\led_inst/Mcount_counter_cy<21>_rt_155 ),
    .O(\led_inst/Result [21])
  );
  MUXCY   \led_inst/Mcount_counter_cy<21>  (
    .CI(\led_inst/Mcount_counter_cy [20]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<21>_rt_155 ),
    .O(\led_inst/Mcount_counter_cy [21])
  );
  XORCY   \led_inst/Mcount_counter_xor<20>  (
    .CI(\led_inst/Mcount_counter_cy [19]),
    .LI(\led_inst/Mcount_counter_cy<20>_rt_156 ),
    .O(\led_inst/Result [20])
  );
  MUXCY   \led_inst/Mcount_counter_cy<20>  (
    .CI(\led_inst/Mcount_counter_cy [19]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<20>_rt_156 ),
    .O(\led_inst/Mcount_counter_cy [20])
  );
  XORCY   \led_inst/Mcount_counter_xor<19>  (
    .CI(\led_inst/Mcount_counter_cy [18]),
    .LI(\led_inst/Mcount_counter_cy<19>_rt_157 ),
    .O(\led_inst/Result [19])
  );
  MUXCY   \led_inst/Mcount_counter_cy<19>  (
    .CI(\led_inst/Mcount_counter_cy [18]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<19>_rt_157 ),
    .O(\led_inst/Mcount_counter_cy [19])
  );
  XORCY   \led_inst/Mcount_counter_xor<18>  (
    .CI(\led_inst/Mcount_counter_cy [17]),
    .LI(\led_inst/Mcount_counter_cy<18>_rt_158 ),
    .O(\led_inst/Result [18])
  );
  MUXCY   \led_inst/Mcount_counter_cy<18>  (
    .CI(\led_inst/Mcount_counter_cy [17]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<18>_rt_158 ),
    .O(\led_inst/Mcount_counter_cy [18])
  );
  XORCY   \led_inst/Mcount_counter_xor<17>  (
    .CI(\led_inst/Mcount_counter_cy [16]),
    .LI(\led_inst/Mcount_counter_cy<17>_rt_159 ),
    .O(\led_inst/Result [17])
  );
  MUXCY   \led_inst/Mcount_counter_cy<17>  (
    .CI(\led_inst/Mcount_counter_cy [16]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<17>_rt_159 ),
    .O(\led_inst/Mcount_counter_cy [17])
  );
  XORCY   \led_inst/Mcount_counter_xor<16>  (
    .CI(\led_inst/Mcount_counter_cy [15]),
    .LI(\led_inst/Mcount_counter_cy<16>_rt_160 ),
    .O(\led_inst/Result [16])
  );
  MUXCY   \led_inst/Mcount_counter_cy<16>  (
    .CI(\led_inst/Mcount_counter_cy [15]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<16>_rt_160 ),
    .O(\led_inst/Mcount_counter_cy [16])
  );
  XORCY   \led_inst/Mcount_counter_xor<15>  (
    .CI(\led_inst/Mcount_counter_cy [14]),
    .LI(\led_inst/Mcount_counter_cy<15>_rt_161 ),
    .O(\led_inst/Result [15])
  );
  MUXCY   \led_inst/Mcount_counter_cy<15>  (
    .CI(\led_inst/Mcount_counter_cy [14]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<15>_rt_161 ),
    .O(\led_inst/Mcount_counter_cy [15])
  );
  XORCY   \led_inst/Mcount_counter_xor<14>  (
    .CI(\led_inst/Mcount_counter_cy [13]),
    .LI(\led_inst/Mcount_counter_cy<14>_rt_162 ),
    .O(\led_inst/Result [14])
  );
  MUXCY   \led_inst/Mcount_counter_cy<14>  (
    .CI(\led_inst/Mcount_counter_cy [13]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<14>_rt_162 ),
    .O(\led_inst/Mcount_counter_cy [14])
  );
  XORCY   \led_inst/Mcount_counter_xor<13>  (
    .CI(\led_inst/Mcount_counter_cy [12]),
    .LI(\led_inst/Mcount_counter_cy<13>_rt_163 ),
    .O(\led_inst/Result [13])
  );
  MUXCY   \led_inst/Mcount_counter_cy<13>  (
    .CI(\led_inst/Mcount_counter_cy [12]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<13>_rt_163 ),
    .O(\led_inst/Mcount_counter_cy [13])
  );
  XORCY   \led_inst/Mcount_counter_xor<12>  (
    .CI(\led_inst/Mcount_counter_cy [11]),
    .LI(\led_inst/Mcount_counter_cy<12>_rt_164 ),
    .O(\led_inst/Result [12])
  );
  MUXCY   \led_inst/Mcount_counter_cy<12>  (
    .CI(\led_inst/Mcount_counter_cy [11]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<12>_rt_164 ),
    .O(\led_inst/Mcount_counter_cy [12])
  );
  XORCY   \led_inst/Mcount_counter_xor<11>  (
    .CI(\led_inst/Mcount_counter_cy [10]),
    .LI(\led_inst/Mcount_counter_cy<11>_rt_165 ),
    .O(\led_inst/Result [11])
  );
  MUXCY   \led_inst/Mcount_counter_cy<11>  (
    .CI(\led_inst/Mcount_counter_cy [10]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<11>_rt_165 ),
    .O(\led_inst/Mcount_counter_cy [11])
  );
  XORCY   \led_inst/Mcount_counter_xor<10>  (
    .CI(\led_inst/Mcount_counter_cy [9]),
    .LI(\led_inst/Mcount_counter_cy<10>_rt_166 ),
    .O(\led_inst/Result [10])
  );
  MUXCY   \led_inst/Mcount_counter_cy<10>  (
    .CI(\led_inst/Mcount_counter_cy [9]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<10>_rt_166 ),
    .O(\led_inst/Mcount_counter_cy [10])
  );
  XORCY   \led_inst/Mcount_counter_xor<9>  (
    .CI(\led_inst/Mcount_counter_cy [8]),
    .LI(\led_inst/Mcount_counter_cy<9>_rt_167 ),
    .O(\led_inst/Result [9])
  );
  MUXCY   \led_inst/Mcount_counter_cy<9>  (
    .CI(\led_inst/Mcount_counter_cy [8]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<9>_rt_167 ),
    .O(\led_inst/Mcount_counter_cy [9])
  );
  XORCY   \led_inst/Mcount_counter_xor<8>  (
    .CI(\led_inst/Mcount_counter_cy [7]),
    .LI(\led_inst/Mcount_counter_cy<8>_rt_168 ),
    .O(\led_inst/Result [8])
  );
  MUXCY   \led_inst/Mcount_counter_cy<8>  (
    .CI(\led_inst/Mcount_counter_cy [7]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<8>_rt_168 ),
    .O(\led_inst/Mcount_counter_cy [8])
  );
  XORCY   \led_inst/Mcount_counter_xor<7>  (
    .CI(\led_inst/Mcount_counter_cy [6]),
    .LI(\led_inst/Mcount_counter_cy<7>_rt_169 ),
    .O(\led_inst/Result [7])
  );
  MUXCY   \led_inst/Mcount_counter_cy<7>  (
    .CI(\led_inst/Mcount_counter_cy [6]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<7>_rt_169 ),
    .O(\led_inst/Mcount_counter_cy [7])
  );
  XORCY   \led_inst/Mcount_counter_xor<6>  (
    .CI(\led_inst/Mcount_counter_cy [5]),
    .LI(\led_inst/Mcount_counter_cy<6>_rt_170 ),
    .O(\led_inst/Result [6])
  );
  MUXCY   \led_inst/Mcount_counter_cy<6>  (
    .CI(\led_inst/Mcount_counter_cy [5]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<6>_rt_170 ),
    .O(\led_inst/Mcount_counter_cy [6])
  );
  XORCY   \led_inst/Mcount_counter_xor<5>  (
    .CI(\led_inst/Mcount_counter_cy [4]),
    .LI(\led_inst/Mcount_counter_cy<5>_rt_171 ),
    .O(\led_inst/Result [5])
  );
  MUXCY   \led_inst/Mcount_counter_cy<5>  (
    .CI(\led_inst/Mcount_counter_cy [4]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<5>_rt_171 ),
    .O(\led_inst/Mcount_counter_cy [5])
  );
  XORCY   \led_inst/Mcount_counter_xor<4>  (
    .CI(\led_inst/Mcount_counter_cy [3]),
    .LI(\led_inst/Mcount_counter_cy<4>_rt_172 ),
    .O(\led_inst/Result [4])
  );
  MUXCY   \led_inst/Mcount_counter_cy<4>  (
    .CI(\led_inst/Mcount_counter_cy [3]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<4>_rt_172 ),
    .O(\led_inst/Mcount_counter_cy [4])
  );
  XORCY   \led_inst/Mcount_counter_xor<3>  (
    .CI(\led_inst/Mcount_counter_cy [2]),
    .LI(\led_inst/Mcount_counter_cy<3>_rt_173 ),
    .O(\led_inst/Result [3])
  );
  MUXCY   \led_inst/Mcount_counter_cy<3>  (
    .CI(\led_inst/Mcount_counter_cy [2]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<3>_rt_173 ),
    .O(\led_inst/Mcount_counter_cy [3])
  );
  XORCY   \led_inst/Mcount_counter_xor<2>  (
    .CI(\led_inst/Mcount_counter_cy [1]),
    .LI(\led_inst/Mcount_counter_cy<2>_rt_174 ),
    .O(\led_inst/Result [2])
  );
  MUXCY   \led_inst/Mcount_counter_cy<2>  (
    .CI(\led_inst/Mcount_counter_cy [1]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<2>_rt_174 ),
    .O(\led_inst/Mcount_counter_cy [2])
  );
  XORCY   \led_inst/Mcount_counter_xor<1>  (
    .CI(\led_inst/Mcount_counter_cy [0]),
    .LI(\led_inst/Mcount_counter_cy<1>_rt_175 ),
    .O(\led_inst/Result [1])
  );
  MUXCY   \led_inst/Mcount_counter_cy<1>  (
    .CI(\led_inst/Mcount_counter_cy [0]),
    .DI(N1),
    .S(\led_inst/Mcount_counter_cy<1>_rt_175 ),
    .O(\led_inst/Mcount_counter_cy [1])
  );
  XORCY   \led_inst/Mcount_counter_xor<0>  (
    .CI(N1),
    .LI(\led_inst/Mcount_counter_lut [0]),
    .O(\led_inst/Result [0])
  );
  MUXCY   \led_inst/Mcount_counter_cy<0>  (
    .CI(N1),
    .DI(N1_inv),
    .S(\led_inst/Mcount_counter_lut [0]),
    .O(\led_inst/Mcount_counter_cy [0])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000004 ))
  \led_inst/counter[31]_GND_53_o_equal_2_o<31>1  (
    .I0(\led_inst/counter [5]),
    .I1(\led_inst/counter [4]),
    .I2(\led_inst/counter [3]),
    .I3(\led_inst/counter [2]),
    .I4(\led_inst/counter [1]),
    .I5(\led_inst/counter [0]),
    .O(\led_inst/counter[31]_GND_53_o_equal_2_o<31> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \led_inst/counter[31]_GND_53_o_equal_2_o<31>2  (
    .I0(\led_inst/counter [7]),
    .I1(\led_inst/counter [6]),
    .I2(\led_inst/counter [8]),
    .I3(\led_inst/counter [9]),
    .I4(\led_inst/counter [10]),
    .I5(\led_inst/counter [11]),
    .O(\led_inst/counter[31]_GND_53_o_equal_2_o<31>1_138 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \led_inst/counter[31]_GND_53_o_equal_2_o<31>3  (
    .I0(\led_inst/counter [13]),
    .I1(\led_inst/counter [12]),
    .I2(\led_inst/counter [14]),
    .I3(\led_inst/counter [15]),
    .I4(\led_inst/counter [16]),
    .I5(\led_inst/counter [17]),
    .O(\led_inst/counter[31]_GND_53_o_equal_2_o<31>2_139 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \led_inst/counter[31]_GND_53_o_equal_2_o<31>4  (
    .I0(\led_inst/counter [19]),
    .I1(\led_inst/counter [18]),
    .I2(\led_inst/counter [20]),
    .I3(\led_inst/counter [21]),
    .I4(\led_inst/counter [22]),
    .I5(\led_inst/counter [23]),
    .O(\led_inst/counter[31]_GND_53_o_equal_2_o<31>3_140 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \led_inst/counter[31]_GND_53_o_equal_2_o<31>5  (
    .I0(\led_inst/counter [25]),
    .I1(\led_inst/counter [24]),
    .I2(\led_inst/counter [26]),
    .I3(\led_inst/counter [27]),
    .I4(\led_inst/counter [28]),
    .I5(\led_inst/counter [29]),
    .O(\led_inst/counter[31]_GND_53_o_equal_2_o<31>4_141 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \led_inst/counter[31]_GND_53_o_equal_2_o<31>6  (
    .I0(\led_inst/counter [31]),
    .I1(\led_inst/counter [30]),
    .O(\led_inst/counter[31]_GND_53_o_equal_2_o<31>5_142 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \led_inst/counter[31]_GND_53_o_equal_2_o<31>7  (
    .I0(\led_inst/counter[31]_GND_53_o_equal_2_o<31>5_142 ),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>4_141 ),
    .I2(\led_inst/counter[31]_GND_53_o_equal_2_o<31>3_140 ),
    .I3(\led_inst/counter[31]_GND_53_o_equal_2_o<31>2_139 ),
    .I4(\led_inst/counter[31]_GND_53_o_equal_2_o<31>1_138 ),
    .I5(\led_inst/counter[31]_GND_53_o_equal_2_o<31> ),
    .O(\led_inst/counter[31]_GND_53_o_equal_2_o )
  );
  OBUF   o_PSCLK_OBUF (
    .I(o_PSCLK_OBUF_2),
    .O(o_PSCLK)
  );
  OBUF   o_LEDData_OBUF (
    .I(\led_inst/data_out_3 ),
    .O(o_LEDData)
  );
  OBUF   o_LEDLatch_OBUF (
    .I(\led_inst/latch_4 ),
    .O(o_LEDLatch)
  );
  OBUFT   o_DIPLatch_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_DIPLatch)
  );
  OBUFT   o_SEGData_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_SEGData)
  );
  OBUFT   o_SEGLatch_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_SEGLatch)
  );
  OBUFT   o_LCDData_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_LCDData)
  );
  OBUFT   o_LCDLatch_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_LCDLatch)
  );
  OBUFT   o_Eth_RST_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_Eth_RST)
  );
  OBUFT   o_Eth_CS_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_Eth_CS)
  );
  OBUFT   o_Eth_RD_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_Eth_RD)
  );
  OBUFT   o_Eth_WR_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_Eth_WR)
  );
  OBUFT   o_USB_SLOE_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_USB_SLOE)
  );
  OBUFT   o_USB_SLRD_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_USB_SLRD)
  );
  OBUFT   o_USB_SLWR_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_USB_SLWR)
  );
  OBUFT   o_VGA_blue0_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_blue0)
  );
  OBUFT   o_VGA_blue1_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_blue1)
  );
  OBUFT   o_VGA_green0_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_green0)
  );
  OBUFT   o_VGA_green1_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_green1)
  );
  OBUFT   o_VGA_red0_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_red0)
  );
  OBUFT   o_VGA_red1_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_red1)
  );
  OBUFT   o_VGA_vsync_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_vsync)
  );
  OBUFT   o_VGA_hsync_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_hsync)
  );
  OBUFT   o_TXD1_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_TXD1)
  );
  OBUFT   o_TXD2_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_TXD2)
  );
  OBUFT   o_MMC_SCK_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_MMC_SCK)
  );
  OBUFT   o_MMC_DI_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_MMC_DI)
  );
  OBUFT   o_MMC_CS_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_MMC_CS)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<30>_rt  (
    .I0(\led_inst/counter [30]),
    .O(\led_inst/Mcount_counter_cy<30>_rt_146 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<29>_rt  (
    .I0(\led_inst/counter [29]),
    .O(\led_inst/Mcount_counter_cy<29>_rt_147 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<28>_rt  (
    .I0(\led_inst/counter [28]),
    .O(\led_inst/Mcount_counter_cy<28>_rt_148 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<27>_rt  (
    .I0(\led_inst/counter [27]),
    .O(\led_inst/Mcount_counter_cy<27>_rt_149 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<26>_rt  (
    .I0(\led_inst/counter [26]),
    .O(\led_inst/Mcount_counter_cy<26>_rt_150 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<25>_rt  (
    .I0(\led_inst/counter [25]),
    .O(\led_inst/Mcount_counter_cy<25>_rt_151 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<24>_rt  (
    .I0(\led_inst/counter [24]),
    .O(\led_inst/Mcount_counter_cy<24>_rt_152 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<23>_rt  (
    .I0(\led_inst/counter [23]),
    .O(\led_inst/Mcount_counter_cy<23>_rt_153 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<22>_rt  (
    .I0(\led_inst/counter [22]),
    .O(\led_inst/Mcount_counter_cy<22>_rt_154 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<21>_rt  (
    .I0(\led_inst/counter [21]),
    .O(\led_inst/Mcount_counter_cy<21>_rt_155 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<20>_rt  (
    .I0(\led_inst/counter [20]),
    .O(\led_inst/Mcount_counter_cy<20>_rt_156 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<19>_rt  (
    .I0(\led_inst/counter [19]),
    .O(\led_inst/Mcount_counter_cy<19>_rt_157 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<18>_rt  (
    .I0(\led_inst/counter [18]),
    .O(\led_inst/Mcount_counter_cy<18>_rt_158 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<17>_rt  (
    .I0(\led_inst/counter [17]),
    .O(\led_inst/Mcount_counter_cy<17>_rt_159 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<16>_rt  (
    .I0(\led_inst/counter [16]),
    .O(\led_inst/Mcount_counter_cy<16>_rt_160 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<15>_rt  (
    .I0(\led_inst/counter [15]),
    .O(\led_inst/Mcount_counter_cy<15>_rt_161 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<14>_rt  (
    .I0(\led_inst/counter [14]),
    .O(\led_inst/Mcount_counter_cy<14>_rt_162 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<13>_rt  (
    .I0(\led_inst/counter [13]),
    .O(\led_inst/Mcount_counter_cy<13>_rt_163 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<12>_rt  (
    .I0(\led_inst/counter [12]),
    .O(\led_inst/Mcount_counter_cy<12>_rt_164 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<11>_rt  (
    .I0(\led_inst/counter [11]),
    .O(\led_inst/Mcount_counter_cy<11>_rt_165 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<10>_rt  (
    .I0(\led_inst/counter [10]),
    .O(\led_inst/Mcount_counter_cy<10>_rt_166 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<9>_rt  (
    .I0(\led_inst/counter [9]),
    .O(\led_inst/Mcount_counter_cy<9>_rt_167 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<8>_rt  (
    .I0(\led_inst/counter [8]),
    .O(\led_inst/Mcount_counter_cy<8>_rt_168 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<7>_rt  (
    .I0(\led_inst/counter [7]),
    .O(\led_inst/Mcount_counter_cy<7>_rt_169 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<6>_rt  (
    .I0(\led_inst/counter [6]),
    .O(\led_inst/Mcount_counter_cy<6>_rt_170 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<5>_rt  (
    .I0(\led_inst/counter [5]),
    .O(\led_inst/Mcount_counter_cy<5>_rt_171 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<4>_rt  (
    .I0(\led_inst/counter [4]),
    .O(\led_inst/Mcount_counter_cy<4>_rt_172 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<3>_rt  (
    .I0(\led_inst/counter [3]),
    .O(\led_inst/Mcount_counter_cy<3>_rt_173 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<2>_rt  (
    .I0(\led_inst/counter [2]),
    .O(\led_inst/Mcount_counter_cy<2>_rt_174 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_cy<1>_rt  (
    .I0(\led_inst/counter [1]),
    .O(\led_inst/Mcount_counter_cy<1>_rt_175 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_inst/Mcount_counter_xor<31>_rt  (
    .I0(\led_inst/counter [31]),
    .O(\led_inst/Mcount_counter_xor<31>_rt_176 )
  );
  FD   \led_inst/data_out  (
    .C(clk5),
    .D(\led_inst/data_out_rstpot_177 ),
    .Q(\led_inst/data_out_3 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \led_inst/counter[31]_GND_53_o_equal_2_o_inv1  (
    .I0(\led_inst/counter[31]_GND_53_o_equal_2_o<31>5_142 ),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>4_141 ),
    .I2(\led_inst/counter[31]_GND_53_o_equal_2_o<31>3_140 ),
    .I3(\led_inst/counter[31]_GND_53_o_equal_2_o<31>2_139 ),
    .I4(\led_inst/counter[31]_GND_53_o_equal_2_o<31>1_138 ),
    .I5(\led_inst/counter[31]_GND_53_o_equal_2_o<31> ),
    .O(\led_inst/counter[31]_GND_53_o_equal_2_o_inv )
  );
  LUT5 #(
    .INIT ( 32'hCF00AAAA ))
  \led_inst/data_out_rstpot  (
    .I0(\led_inst/data_out_3 ),
    .I1(\led_inst/counter [0]),
    .I2(\led_inst/counter [2]),
    .I3(\led_inst/counter [1]),
    .I4(\led_inst/counter[31]_GND_53_o_equal_2_o_inv ),
    .O(\led_inst/data_out_rstpot_177 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_31_rstpot  (
    .I0(\led_inst/Result [31]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_31_rstpot_178 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_31  (
    .C(clk5),
    .D(\led_inst/counter_31_rstpot_178 ),
    .Q(\led_inst/counter [31])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_30_rstpot  (
    .I0(\led_inst/Result [30]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_30_rstpot_179 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_30  (
    .C(clk5),
    .D(\led_inst/counter_30_rstpot_179 ),
    .Q(\led_inst/counter [30])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_29_rstpot  (
    .I0(\led_inst/Result [29]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_29_rstpot_180 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_29  (
    .C(clk5),
    .D(\led_inst/counter_29_rstpot_180 ),
    .Q(\led_inst/counter [29])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_28_rstpot  (
    .I0(\led_inst/Result [28]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_28_rstpot_181 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_28  (
    .C(clk5),
    .D(\led_inst/counter_28_rstpot_181 ),
    .Q(\led_inst/counter [28])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_27_rstpot  (
    .I0(\led_inst/Result [27]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_27_rstpot_182 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_27  (
    .C(clk5),
    .D(\led_inst/counter_27_rstpot_182 ),
    .Q(\led_inst/counter [27])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_26_rstpot  (
    .I0(\led_inst/Result [26]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_26_rstpot_183 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_26  (
    .C(clk5),
    .D(\led_inst/counter_26_rstpot_183 ),
    .Q(\led_inst/counter [26])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_25_rstpot  (
    .I0(\led_inst/Result [25]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_25_rstpot_184 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_25  (
    .C(clk5),
    .D(\led_inst/counter_25_rstpot_184 ),
    .Q(\led_inst/counter [25])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_24_rstpot  (
    .I0(\led_inst/Result [24]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_24_rstpot_185 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_24  (
    .C(clk5),
    .D(\led_inst/counter_24_rstpot_185 ),
    .Q(\led_inst/counter [24])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_23_rstpot  (
    .I0(\led_inst/Result [23]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_23_rstpot_186 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_23  (
    .C(clk5),
    .D(\led_inst/counter_23_rstpot_186 ),
    .Q(\led_inst/counter [23])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_22_rstpot  (
    .I0(\led_inst/Result [22]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_22_rstpot_187 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_22  (
    .C(clk5),
    .D(\led_inst/counter_22_rstpot_187 ),
    .Q(\led_inst/counter [22])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_21_rstpot  (
    .I0(\led_inst/Result [21]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_21_rstpot_188 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_21  (
    .C(clk5),
    .D(\led_inst/counter_21_rstpot_188 ),
    .Q(\led_inst/counter [21])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_20_rstpot  (
    .I0(\led_inst/Result [20]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_20_rstpot_189 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_20  (
    .C(clk5),
    .D(\led_inst/counter_20_rstpot_189 ),
    .Q(\led_inst/counter [20])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_19_rstpot  (
    .I0(\led_inst/Result [19]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_19_rstpot_190 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_19  (
    .C(clk5),
    .D(\led_inst/counter_19_rstpot_190 ),
    .Q(\led_inst/counter [19])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_18_rstpot  (
    .I0(\led_inst/Result [18]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_18_rstpot_191 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_18  (
    .C(clk5),
    .D(\led_inst/counter_18_rstpot_191 ),
    .Q(\led_inst/counter [18])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_17_rstpot  (
    .I0(\led_inst/Result [17]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_17_rstpot_192 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_17  (
    .C(clk5),
    .D(\led_inst/counter_17_rstpot_192 ),
    .Q(\led_inst/counter [17])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_16_rstpot  (
    .I0(\led_inst/Result [16]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_16_rstpot_193 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_16  (
    .C(clk5),
    .D(\led_inst/counter_16_rstpot_193 ),
    .Q(\led_inst/counter [16])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_15_rstpot  (
    .I0(\led_inst/Result [15]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o ),
    .O(\led_inst/counter_15_rstpot_194 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_15  (
    .C(clk5),
    .D(\led_inst/counter_15_rstpot_194 ),
    .Q(\led_inst/counter [15])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_14_rstpot  (
    .I0(\led_inst/Result [14]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ),
    .O(\led_inst/counter_14_rstpot_195 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_14  (
    .C(clk5),
    .D(\led_inst/counter_14_rstpot_195 ),
    .Q(\led_inst/counter [14])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_13_rstpot  (
    .I0(\led_inst/Result [13]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ),
    .O(\led_inst/counter_13_rstpot_196 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_13  (
    .C(clk5),
    .D(\led_inst/counter_13_rstpot_196 ),
    .Q(\led_inst/counter [13])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_12_rstpot  (
    .I0(\led_inst/Result [12]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ),
    .O(\led_inst/counter_12_rstpot_197 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_12  (
    .C(clk5),
    .D(\led_inst/counter_12_rstpot_197 ),
    .Q(\led_inst/counter [12])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_11_rstpot  (
    .I0(\led_inst/Result [11]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ),
    .O(\led_inst/counter_11_rstpot_198 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_11  (
    .C(clk5),
    .D(\led_inst/counter_11_rstpot_198 ),
    .Q(\led_inst/counter [11])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_10_rstpot  (
    .I0(\led_inst/Result [10]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ),
    .O(\led_inst/counter_10_rstpot_199 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_10  (
    .C(clk5),
    .D(\led_inst/counter_10_rstpot_199 ),
    .Q(\led_inst/counter [10])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_9_rstpot  (
    .I0(\led_inst/Result [9]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ),
    .O(\led_inst/counter_9_rstpot_200 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_9  (
    .C(clk5),
    .D(\led_inst/counter_9_rstpot_200 ),
    .Q(\led_inst/counter [9])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_8_rstpot  (
    .I0(\led_inst/Result [8]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ),
    .O(\led_inst/counter_8_rstpot_201 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_8  (
    .C(clk5),
    .D(\led_inst/counter_8_rstpot_201 ),
    .Q(\led_inst/counter [8])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_7_rstpot  (
    .I0(\led_inst/Result [7]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ),
    .O(\led_inst/counter_7_rstpot_202 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_7  (
    .C(clk5),
    .D(\led_inst/counter_7_rstpot_202 ),
    .Q(\led_inst/counter [7])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_6_rstpot  (
    .I0(\led_inst/Result [6]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ),
    .O(\led_inst/counter_6_rstpot_203 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_6  (
    .C(clk5),
    .D(\led_inst/counter_6_rstpot_203 ),
    .Q(\led_inst/counter [6])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_5_rstpot  (
    .I0(\led_inst/Result [5]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ),
    .O(\led_inst/counter_5_rstpot_204 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_5  (
    .C(clk5),
    .D(\led_inst/counter_5_rstpot_204 ),
    .Q(\led_inst/counter [5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_4_rstpot  (
    .I0(\led_inst/Result [4]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ),
    .O(\led_inst/counter_4_rstpot_205 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_4  (
    .C(clk5),
    .D(\led_inst/counter_4_rstpot_205 ),
    .Q(\led_inst/counter [4])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_3_rstpot  (
    .I0(\led_inst/Result [3]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ),
    .O(\led_inst/counter_3_rstpot_206 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_3  (
    .C(clk5),
    .D(\led_inst/counter_3_rstpot_206 ),
    .Q(\led_inst/counter [3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_2_rstpot  (
    .I0(\led_inst/Result [2]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ),
    .O(\led_inst/counter_2_rstpot_207 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_2  (
    .C(clk5),
    .D(\led_inst/counter_2_rstpot_207 ),
    .Q(\led_inst/counter [2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_1_rstpot  (
    .I0(\led_inst/Result [1]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ),
    .O(\led_inst/counter_1_rstpot_208 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_1  (
    .C(clk5),
    .D(\led_inst/counter_1_rstpot_208 ),
    .Q(\led_inst/counter [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \led_inst/counter_0_rstpot  (
    .I0(\led_inst/Result [0]),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 ),
    .O(\led_inst/counter_0_rstpot_209 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \led_inst/counter_0  (
    .C(clk5),
    .D(\led_inst/counter_0_rstpot_209 ),
    .Q(\led_inst/counter [0])
  );
  FD   \led_inst/latch  (
    .C(clk5),
    .D(\led_inst/latch_rstpot ),
    .Q(\led_inst/latch_4 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \led_inst/latch_rstpot1  (
    .I0(\led_inst/counter[31]_GND_53_o_equal_2_o<31> ),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>1_138 ),
    .I2(\led_inst/counter[31]_GND_53_o_equal_2_o<31>2_139 ),
    .I3(\led_inst/counter[31]_GND_53_o_equal_2_o<31>3_140 ),
    .I4(\led_inst/counter[31]_GND_53_o_equal_2_o<31>4_141 ),
    .I5(\led_inst/counter[31]_GND_53_o_equal_2_o<31>5_142 ),
    .O(\led_inst/latch_rstpot )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \led_inst/counter[31]_GND_53_o_equal_2_o<31>7_1  (
    .I0(\led_inst/counter[31]_GND_53_o_equal_2_o<31>5_142 ),
    .I1(\led_inst/counter[31]_GND_53_o_equal_2_o<31>4_141 ),
    .I2(\led_inst/counter[31]_GND_53_o_equal_2_o<31>3_140 ),
    .I3(\led_inst/counter[31]_GND_53_o_equal_2_o<31>2_139 ),
    .I4(\led_inst/counter[31]_GND_53_o_equal_2_o<31>1_138 ),
    .I5(\led_inst/counter[31]_GND_53_o_equal_2_o<31> ),
    .O(\led_inst/counter[31]_GND_53_o_equal_2_o<31>7_211 )
  );
  INV   \led_inst/Mcount_counter_lut<0>_INV_0  (
    .I(\led_inst/counter [0]),
    .O(\led_inst/Mcount_counter_lut [0])
  );
  INV   o_PSCLK1_INV_0 (
    .I(clk5),
    .O(o_PSCLK_OBUF_2)
  );
  PLL_BASE #(
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLK_FEEDBACK ( "CLKFBOUT" ),
    .COMPENSATION ( "SYSTEM_SYNCHRONOUS" ),
    .RESET_ON_LOSS_OF_LOCK ( "FALSE" ),
    .CLKFBOUT_MULT ( 8 ),
    .CLKOUT0_DIVIDE ( 80 ),
    .CLKOUT1_DIVIDE ( 20 ),
    .CLKOUT2_DIVIDE ( 8 ),
    .CLKOUT3_DIVIDE ( 4 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .DIVCLK_DIVIDE ( 1 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKIN_PERIOD ( 20.000000 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT0_PHASE ( 0.000000 ),
    .CLKOUT1_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_PHASE ( 0.000000 ),
    .CLKOUT2_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT2_PHASE ( 0.000000 ),
    .CLKOUT3_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT3_PHASE ( 0.000000 ),
    .CLKOUT4_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT4_PHASE ( 0.000000 ),
    .CLKOUT5_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT5_PHASE ( 0.000000 ),
    .REF_JITTER ( 0.010000 ))
  \clk/pll_base_inst  (
    .CLKIN(\clk/clkin1 ),
    .CLKOUT3(\clk/clkout3 ),
    .CLKFBIN(\clk/clkfbout_buf ),
    .CLKOUT1(\clk/clkout1 ),
    .CLKOUT0(\clk/clkout0 ),
    .CLKFBOUT(\clk/clkfbout ),
    .CLKOUT2(\clk/clkout2 ),
    .RST(N1),
    .CLKOUT4(\NLW_clk/pll_base_inst_CLKOUT4_UNCONNECTED ),
    .CLKOUT5(\NLW_clk/pll_base_inst_CLKOUT5_UNCONNECTED ),
    .LOCKED(\NLW_clk/pll_base_inst_LOCKED_UNCONNECTED )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

