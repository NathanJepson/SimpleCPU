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
// CREATED		"Thu Dec 31 23:17:19 2020"

module mux4_1_8_v1(
	SEL0,
	SEL1,
	A,
	B,
	C,
	D,
	Z
);


input wire	SEL0;
input wire	SEL1;
input wire	[7:0] A;
input wire	[7:0] B;
input wire	[7:0] C;
input wire	[7:0] D;
output wire	[7:0] Z;

wire	[7:0] SYNTHESIZED_WIRE_0;
wire	[7:0] SYNTHESIZED_WIRE_1;





mux2_1_8_v1	b2v_inst(
	.SEL(SEL0),
	.A(A),
	.B(B),
	.Z(SYNTHESIZED_WIRE_0));


mux2_1_8_v1	b2v_inst1(
	.SEL(SEL0),
	.A(C),
	.B(D),
	.Z(SYNTHESIZED_WIRE_1));


mux2_1_8_v1	b2v_inst2(
	.SEL(SEL1),
	.A(SYNTHESIZED_WIRE_0),
	.B(SYNTHESIZED_WIRE_1),
	.Z(Z));


endmodule
