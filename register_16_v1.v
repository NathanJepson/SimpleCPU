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
// CREATED		"Thu Dec 31 23:12:43 2020"

module register_16_v1(
	CLK,
	CE,
	CLR,
	D,
	Q
);


input wire	CLK;
input wire	CE;
input wire	CLR;
input wire	[15:0] D;
output wire	[15:0] Q;

wire	[15:0] Qtmp;





register_8_v1	b2v_inst(
	.CLK(CLK),
	.CE(CE),
	.CLR(CLR),
	.D(D[7:0]),
	.Q(Qtmp[7:0]));


register_8_v1	b2v_inst1(
	.CLK(CLK),
	.CE(CE),
	.CLR(CLR),
	.D(D[15:8]),
	.Q(Qtmp[15:8]));

assign	Q = Qtmp;

endmodule
