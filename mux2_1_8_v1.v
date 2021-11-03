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
// CREATED		"Thu Dec 31 23:17:10 2020"

module mux2_1_8_v1(
	SEL,
	A,
	B,
	Z
);


input wire	SEL;
input wire	[7:0] A;
input wire	[7:0] B;
output wire	[7:0] Z;

wire	[7:0] Z_ALTERA_SYNTHESIZED;





mux2_1_1	b2v_inst(
	.A(A[0]),
	.B(B[0]),
	.SEL(SEL),
	.Z(Z_ALTERA_SYNTHESIZED[0]));


mux2_1_1	b2v_inst1(
	.A(A[1]),
	.B(B[1]),
	.SEL(SEL),
	.Z(Z_ALTERA_SYNTHESIZED[1]));


mux2_1_1	b2v_inst2(
	.A(A[2]),
	.B(B[2]),
	.SEL(SEL),
	.Z(Z_ALTERA_SYNTHESIZED[2]));


mux2_1_1	b2v_inst3(
	.A(A[3]),
	.B(B[3]),
	.SEL(SEL),
	.Z(Z_ALTERA_SYNTHESIZED[3]));


mux2_1_1	b2v_inst4(
	.A(A[4]),
	.B(B[4]),
	.SEL(SEL),
	.Z(Z_ALTERA_SYNTHESIZED[4]));


mux2_1_1	b2v_inst5(
	.A(A[5]),
	.B(B[5]),
	.SEL(SEL),
	.Z(Z_ALTERA_SYNTHESIZED[5]));


mux2_1_1	b2v_inst6(
	.A(A[6]),
	.B(B[6]),
	.SEL(SEL),
	.Z(Z_ALTERA_SYNTHESIZED[6]));


mux2_1_1	b2v_inst7(
	.A(A[7]),
	.B(B[7]),
	.SEL(SEL),
	.Z(Z_ALTERA_SYNTHESIZED[7]));

assign	Z = Z_ALTERA_SYNTHESIZED;

endmodule
