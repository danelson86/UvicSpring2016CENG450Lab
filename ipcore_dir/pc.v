////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: pc.v
// /___/   /\     Timestamp: Mon Feb 29 23:15:29 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "C:/Users/David/Documents/UVic/Spring 2016/CENG 450/Project/UvicSpring2016CENG450Lab-master/UvicSpring2016CENG450Lab-master/ipcore_dir/tmp/_cg/pc.ngc" "C:/Users/David/Documents/UVic/Spring 2016/CENG 450/Project/UvicSpring2016CENG450Lab-master/UvicSpring2016CENG450Lab-master/ipcore_dir/tmp/_cg/pc.v" 
// Device	: 3s1200efg320-5
// Input file	: C:/Users/David/Documents/UVic/Spring 2016/CENG 450/Project/UvicSpring2016CENG450Lab-master/UvicSpring2016CENG450Lab-master/ipcore_dir/tmp/_cg/pc.ngc
// Output file	: C:/Users/David/Documents/UVic/Spring 2016/CENG 450/Project/UvicSpring2016CENG450Lab-master/UvicSpring2016CENG450Lab-master/ipcore_dir/tmp/_cg/pc.v
// # of Modules	: 1
// Design Name	: pc
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

module pc (
  clk, sclr, q
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input sclr;
  output [15 : 0] q;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000042 ;
  wire \blk00000001/sig00000041 ;
  wire \blk00000001/sig00000040 ;
  wire \blk00000001/sig0000003f ;
  wire \blk00000001/sig0000003e ;
  wire \blk00000001/sig0000003d ;
  wire \blk00000001/sig0000003c ;
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \blk00000001/sig00000038 ;
  wire \blk00000001/sig00000037 ;
  wire \blk00000001/sig00000036 ;
  wire \blk00000001/sig00000035 ;
  wire \blk00000001/sig00000034 ;
  wire \blk00000001/sig00000033 ;
  wire \blk00000001/sig00000032 ;
  wire \blk00000001/sig00000031 ;
  wire \blk00000001/sig00000030 ;
  wire \blk00000001/sig0000002f ;
  wire \blk00000001/sig0000002e ;
  wire \blk00000001/sig0000002d ;
  wire \blk00000001/sig0000002c ;
  wire \blk00000001/sig0000002b ;
  wire \blk00000001/sig0000002a ;
  wire \blk00000001/sig00000029 ;
  wire \blk00000001/sig00000028 ;
  wire \blk00000001/sig00000027 ;
  wire \blk00000001/sig00000026 ;
  wire \blk00000001/sig00000025 ;
  wire \blk00000001/sig00000014 ;
  wire \blk00000001/sig00000013 ;
  wire \blk00000001/sig00000012 ;
  wire \blk00000001/sig00000011 ;
  wire \blk00000001/sig00000010 ;
  wire \blk00000001/sig0000000f ;
  wire \blk00000001/sig0000000e ;
  wire \blk00000001/sig0000000d ;
  wire \blk00000001/sig0000000c ;
  wire \blk00000001/sig0000000b ;
  wire \blk00000001/sig0000000a ;
  wire \blk00000001/sig00000009 ;
  wire \blk00000001/sig00000008 ;
  wire \blk00000001/sig00000007 ;
  wire \blk00000001/sig00000006 ;
  wire \blk00000001/sig00000005 ;
  wire \blk00000001/sig00000004 ;
  wire \blk00000001/sig00000002 ;
  wire [15 : 0] NlwRenamedSig_OI_q;
  assign
    q[15] = NlwRenamedSig_OI_q[15],
    q[14] = NlwRenamedSig_OI_q[14],
    q[13] = NlwRenamedSig_OI_q[13],
    q[12] = NlwRenamedSig_OI_q[12],
    q[11] = NlwRenamedSig_OI_q[11],
    q[10] = NlwRenamedSig_OI_q[10],
    q[9] = NlwRenamedSig_OI_q[9],
    q[8] = NlwRenamedSig_OI_q[8],
    q[7] = NlwRenamedSig_OI_q[7],
    q[6] = NlwRenamedSig_OI_q[6],
    q[5] = NlwRenamedSig_OI_q[5],
    q[4] = NlwRenamedSig_OI_q[4],
    q[3] = NlwRenamedSig_OI_q[3],
    q[2] = NlwRenamedSig_OI_q[2],
    q[1] = NlwRenamedSig_OI_q[1],
    q[0] = NlwRenamedSig_OI_q[0];
  INV   \blk00000001/blk00000041  (
    .I(NlwRenamedSig_OI_q[0]),
    .O(\blk00000001/sig00000014 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000040  (
    .I0(NlwRenamedSig_OI_q[14]),
    .O(\blk00000001/sig00000029 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000003f  (
    .I0(NlwRenamedSig_OI_q[13]),
    .O(\blk00000001/sig00000028 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000003e  (
    .I0(NlwRenamedSig_OI_q[12]),
    .O(\blk00000001/sig00000027 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000003d  (
    .I0(NlwRenamedSig_OI_q[11]),
    .O(\blk00000001/sig00000026 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000003c  (
    .I0(NlwRenamedSig_OI_q[10]),
    .O(\blk00000001/sig00000025 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000003b  (
    .I0(NlwRenamedSig_OI_q[9]),
    .O(\blk00000001/sig00000032 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000003a  (
    .I0(NlwRenamedSig_OI_q[8]),
    .O(\blk00000001/sig00000031 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000039  (
    .I0(NlwRenamedSig_OI_q[7]),
    .O(\blk00000001/sig00000030 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000038  (
    .I0(NlwRenamedSig_OI_q[6]),
    .O(\blk00000001/sig0000002f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000037  (
    .I0(NlwRenamedSig_OI_q[5]),
    .O(\blk00000001/sig0000002e )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000036  (
    .I0(NlwRenamedSig_OI_q[4]),
    .O(\blk00000001/sig0000002d )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000035  (
    .I0(NlwRenamedSig_OI_q[3]),
    .O(\blk00000001/sig0000002c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000034  (
    .I0(NlwRenamedSig_OI_q[2]),
    .O(\blk00000001/sig0000002b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000033  (
    .I0(NlwRenamedSig_OI_q[1]),
    .O(\blk00000001/sig0000002a )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000032  (
    .C(clk),
    .D(\blk00000001/sig00000039 ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[15])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000031  (
    .C(clk),
    .D(\blk00000001/sig00000038 ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[14])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000030  (
    .C(clk),
    .D(\blk00000001/sig00000037 ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[13])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002f  (
    .C(clk),
    .D(\blk00000001/sig00000036 ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[12])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e  (
    .C(clk),
    .D(\blk00000001/sig00000035 ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[11])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002d  (
    .C(clk),
    .D(\blk00000001/sig00000034 ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[10])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002c  (
    .C(clk),
    .D(\blk00000001/sig00000042 ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[9])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002b  (
    .C(clk),
    .D(\blk00000001/sig00000041 ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002a  (
    .C(clk),
    .D(\blk00000001/sig00000040 ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000029  (
    .C(clk),
    .D(\blk00000001/sig0000003f ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000028  (
    .C(clk),
    .D(\blk00000001/sig0000003e ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000027  (
    .C(clk),
    .D(\blk00000001/sig0000003d ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000026  (
    .C(clk),
    .D(\blk00000001/sig0000003c ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000025  (
    .C(clk),
    .D(\blk00000001/sig0000003b ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000024  (
    .C(clk),
    .D(\blk00000001/sig0000003a ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000023  (
    .C(clk),
    .D(\blk00000001/sig00000033 ),
    .R(sclr),
    .Q(NlwRenamedSig_OI_q[0])
  );
  XORCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig00000009 ),
    .LI(\blk00000001/sig00000029 ),
    .O(\blk00000001/sig00000038 )
  );
  MUXCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig00000009 ),
    .DI(\blk00000001/sig00000002 ),
    .S(\blk00000001/sig00000029 ),
    .O(\blk00000001/sig0000000a )
  );
  XORCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig00000008 ),
    .LI(\blk00000001/sig00000028 ),
    .O(\blk00000001/sig00000037 )
  );
  MUXCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig00000008 ),
    .DI(\blk00000001/sig00000002 ),
    .S(\blk00000001/sig00000028 ),
    .O(\blk00000001/sig00000009 )
  );
  XORCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig00000007 ),
    .LI(\blk00000001/sig00000027 ),
    .O(\blk00000001/sig00000036 )
  );
  MUXCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig00000007 ),
    .DI(\blk00000001/sig00000002 ),
    .S(\blk00000001/sig00000027 ),
    .O(\blk00000001/sig00000008 )
  );
  XORCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig00000006 ),
    .LI(\blk00000001/sig00000026 ),
    .O(\blk00000001/sig00000035 )
  );
  MUXCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig00000006 ),
    .DI(\blk00000001/sig00000002 ),
    .S(\blk00000001/sig00000026 ),
    .O(\blk00000001/sig00000007 )
  );
  XORCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig00000013 ),
    .LI(\blk00000001/sig00000025 ),
    .O(\blk00000001/sig00000034 )
  );
  MUXCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig00000013 ),
    .DI(\blk00000001/sig00000002 ),
    .S(\blk00000001/sig00000025 ),
    .O(\blk00000001/sig00000006 )
  );
  XORCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig00000012 ),
    .LI(\blk00000001/sig00000032 ),
    .O(\blk00000001/sig00000042 )
  );
  MUXCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig00000012 ),
    .DI(\blk00000001/sig00000002 ),
    .S(\blk00000001/sig00000032 ),
    .O(\blk00000001/sig00000013 )
  );
  XORCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig00000011 ),
    .LI(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig00000041 )
  );
  MUXCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig00000011 ),
    .DI(\blk00000001/sig00000002 ),
    .S(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig00000012 )
  );
  XORCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig00000010 ),
    .LI(\blk00000001/sig00000030 ),
    .O(\blk00000001/sig00000040 )
  );
  MUXCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000010 ),
    .DI(\blk00000001/sig00000002 ),
    .S(\blk00000001/sig00000030 ),
    .O(\blk00000001/sig00000011 )
  );
  XORCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig0000000f ),
    .LI(\blk00000001/sig0000002f ),
    .O(\blk00000001/sig0000003f )
  );
  MUXCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig0000000f ),
    .DI(\blk00000001/sig00000002 ),
    .S(\blk00000001/sig0000002f ),
    .O(\blk00000001/sig00000010 )
  );
  XORCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig0000000e ),
    .LI(\blk00000001/sig0000002e ),
    .O(\blk00000001/sig0000003e )
  );
  MUXCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig0000000e ),
    .DI(\blk00000001/sig00000002 ),
    .S(\blk00000001/sig0000002e ),
    .O(\blk00000001/sig0000000f )
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig0000000d ),
    .LI(\blk00000001/sig0000002d ),
    .O(\blk00000001/sig0000003d )
  );
  MUXCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig0000000d ),
    .DI(\blk00000001/sig00000002 ),
    .S(\blk00000001/sig0000002d ),
    .O(\blk00000001/sig0000000e )
  );
  XORCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig0000000c ),
    .LI(\blk00000001/sig0000002c ),
    .O(\blk00000001/sig0000003c )
  );
  MUXCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig0000000c ),
    .DI(\blk00000001/sig00000002 ),
    .S(\blk00000001/sig0000002c ),
    .O(\blk00000001/sig0000000d )
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig0000000b ),
    .LI(\blk00000001/sig0000002b ),
    .O(\blk00000001/sig0000003b )
  );
  MUXCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig0000000b ),
    .DI(\blk00000001/sig00000002 ),
    .S(\blk00000001/sig0000002b ),
    .O(\blk00000001/sig0000000c )
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000005 ),
    .LI(\blk00000001/sig0000002a ),
    .O(\blk00000001/sig0000003a )
  );
  MUXCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig00000005 ),
    .DI(\blk00000001/sig00000002 ),
    .S(\blk00000001/sig0000002a ),
    .O(\blk00000001/sig0000000b )
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig0000000a ),
    .LI(NlwRenamedSig_OI_q[15]),
    .O(\blk00000001/sig00000039 )
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig00000002 ),
    .LI(\blk00000001/sig00000014 ),
    .O(\blk00000001/sig00000033 )
  );
  MUXCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig00000002 ),
    .DI(\blk00000001/sig00000004 ),
    .S(\blk00000001/sig00000014 ),
    .O(\blk00000001/sig00000005 )
  );
  VCC   \blk00000001/blk00000003  (
    .P(\blk00000001/sig00000004 )
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000002 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

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

// synthesis translate_on
