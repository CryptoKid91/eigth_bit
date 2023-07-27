////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: MANIAC_synthesis.v
// /___/   /\     Timestamp: Thu Jan 12 22:28:51 2023
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim MANIAC.ngc MANIAC_synthesis.v 
// Device	: xc6slx25-3-ftg256
// Input file	: MANIAC.ngc
// Output file	: /mnt/c/Users/marco.TIAMAT/Xilinx/eater/eight_bit/netgen/synthesis/MANIAC_synthesis.v
// # of Modules	: 1
// Design Name	: MANIAC
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
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

module MANIAC (
  clk_32, LEDS
);
  input clk_32;
  output [7 : 0] LEDS;
  wire LEDS_1_OBUF_2;
  wire \kello/clktmp ;
  wire \kello/clk180 ;
  wire \kello/clkfbout_buf ;
  wire \kello/locked ;
  wire \kello/clkout2 ;
  wire \kello/clkout1 ;
  wire \kello/clkout0 ;
  wire \kello/clkfbout ;
  wire \kello/clkin1 ;
  wire \a/enable_inv ;
  wire \NLW_kello/ODDR2_inst_Q_UNCONNECTED ;
  wire \NLW_kello/clkout3_buf_O_UNCONNECTED ;
  wire \NLW_kello/pll_base_inst_CLKOUT3_UNCONNECTED ;
  wire \NLW_kello/pll_base_inst_CLKOUT4_UNCONNECTED ;
  wire \NLW_kello/pll_base_inst_CLKOUT5_UNCONNECTED ;
  GND   XST_GND (
    .G(LEDS_1_OBUF_2)
  );
  VCC   XST_VCC (
    .P(\a/enable_inv )
  );
  ODDR2 #(
    .DDR_ALIGNMENT ( "NONE" ),
    .SRTYPE ( "SYNC" ),
    .INIT ( 1'b0 ))
  \kello/ODDR2_inst  (
    .D0(\a/enable_inv ),
    .D1(LEDS_1_OBUF_2),
    .C0(\kello/clktmp ),
    .C1(\kello/clk180 ),
    .CE(\kello/locked ),
    .R(LEDS_1_OBUF_2),
    .S(LEDS_1_OBUF_2),
    .Q(\NLW_kello/ODDR2_inst_Q_UNCONNECTED )
  );
  BUFG   \kello/clkout3_buf  (
    .O(\NLW_kello/clkout3_buf_O_UNCONNECTED ),
    .I(\kello/clkout2 )
  );
  BUFG   \kello/clkout2_buf  (
    .O(\kello/clktmp ),
    .I(\kello/clkout1 )
  );
  BUFG   \kello/clkout1_buf  (
    .O(\kello/clk180 ),
    .I(\kello/clkout0 )
  );
  BUFG   \kello/clkf_buf  (
    .O(\kello/clkfbout_buf ),
    .I(\kello/clkfbout )
  );
  IBUFG #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IOSTANDARD ( "DEFAULT" ))
  \kello/clkin1_buf  (
    .I(clk_32),
    .O(\kello/clkin1 )
  );
  OBUF   LEDS_7_OBUF (
    .I(LEDS_1_OBUF_2),
    .O(LEDS[7])
  );
  OBUF   LEDS_6_OBUF (
    .I(LEDS_1_OBUF_2),
    .O(LEDS[6])
  );
  OBUF   LEDS_5_OBUF (
    .I(LEDS_1_OBUF_2),
    .O(LEDS[5])
  );
  OBUF   LEDS_4_OBUF (
    .I(LEDS_1_OBUF_2),
    .O(LEDS[4])
  );
  OBUF   LEDS_3_OBUF (
    .I(LEDS_1_OBUF_2),
    .O(LEDS[3])
  );
  OBUF   LEDS_2_OBUF (
    .I(LEDS_1_OBUF_2),
    .O(LEDS[2])
  );
  OBUF   LEDS_1_OBUF (
    .I(LEDS_1_OBUF_2),
    .O(LEDS[1])
  );
  OBUFT   LEDS_0_OBUFT (
    .I(LEDS_1_OBUF_2),
    .T(\a/enable_inv ),
    .O(LEDS[0])
  );
  PLL_BASE #(
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLK_FEEDBACK ( "CLKFBOUT" ),
    .COMPENSATION ( "SYSTEM_SYNCHRONOUS" ),
    .RESET_ON_LOSS_OF_LOCK ( "FALSE" ),
    .CLKFBOUT_MULT ( 13 ),
    .CLKOUT0_DIVIDE ( 128 ),
    .CLKOUT1_DIVIDE ( 128 ),
    .CLKOUT2_DIVIDE ( 128 ),
    .CLKOUT3_DIVIDE ( 1 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .DIVCLK_DIVIDE ( 1 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKIN_PERIOD ( 31.250000 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT0_PHASE ( 180.000000 ),
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
  \kello/pll_base_inst  (
    .CLKIN(\kello/clkin1 ),
    .CLKFBIN(\kello/clkfbout_buf ),
    .CLKOUT1(\kello/clkout1 ),
    .CLKOUT0(\kello/clkout0 ),
    .CLKFBOUT(\kello/clkfbout ),
    .CLKOUT2(\kello/clkout2 ),
    .RST(LEDS_1_OBUF_2),
    .LOCKED(\kello/locked ),
    .CLKOUT3(\NLW_kello/pll_base_inst_CLKOUT3_UNCONNECTED ),
    .CLKOUT4(\NLW_kello/pll_base_inst_CLKOUT4_UNCONNECTED ),
    .CLKOUT5(\NLW_kello/pll_base_inst_CLKOUT5_UNCONNECTED )
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

