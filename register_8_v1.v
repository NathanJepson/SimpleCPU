// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Thu Dec 31 23:12:58 2020"

module register_8_v1(
	CLK,
	CE,
	CLR,
	D,
	Q
);


input wire	CLK;
input wire	CE;
input wire	CLR;
input wire	[7:0] D;
output wire	[7:0] Q;

wire	[7:0] Q_ALTERA_SYNTHESIZED;





register_4	b2v_inst(
	.D0(D[0]),
	.D1(D[1]),
	.D2(D[2]),
	.D3(D[3]),
	.CLK(CLK),
	.CE(CE),
	.CLR(CLR),
	.Q0(Q_ALTERA_SYNTHESIZED[0]),
	.Q1(Q_ALTERA_SYNTHESIZED[1]),
	.Q2(Q_ALTERA_SYNTHESIZED[2]),
	.Q3(Q_ALTERA_SYNTHESIZED[3]));


register_4	b2v_inst1(
	.D0(D[4]),
	.D1(D[5]),
	.D2(D[6]),
	.D3(D[7]),
	.CLK(CLK),
	.CE(CE),
	.CLR(CLR),
	.Q0(Q_ALTERA_SYNTHESIZED[4]),
	.Q1(Q_ALTERA_SYNTHESIZED[5]),
	.Q2(Q_ALTERA_SYNTHESIZED[6]),
	.Q3(Q_ALTERA_SYNTHESIZED[7]));

assign	Q = Q_ALTERA_SYNTHESIZED;

endmodule
