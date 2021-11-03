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
// CREATED		"Thu Dec 31 23:28:40 2020"

module ALU_v2(
	S1,
	S0,
	S4,
	S3,
	S2,
	A,
	B,
	Cout,
	Z
);


input wire	S1;
input wire	S0;
input wire	S4;
input wire	S3;
input wire	S2;
input wire	[7:0] A;
input wire	[7:0] B;
output wire	Cout;
output wire	[7:0] Z;

wire	[7:0] SYNTHESIZED_WIRE_0;
wire	[7:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	[7:0] SYNTHESIZED_WIRE_3;
wire	[7:0] SYNTHESIZED_WIRE_4;
wire	[7:0] SYNTHESIZED_WIRE_5;




assign	SYNTHESIZED_WIRE_2 =  ~S4;


mux4_1_8_v1	b2v_inst1(
	.SEL0(S0),
	.SEL1(S1),
	.A(SYNTHESIZED_WIRE_0),
	.B(SYNTHESIZED_WIRE_1),
	.C(A),
	.D(B),
	.Z(Z));


replicate	b2v_inst2(
	.A(SYNTHESIZED_WIRE_2),
	.Z(SYNTHESIZED_WIRE_3));


bitwise_inv_v1	b2v_inst3(
	.EN(S3),
	.A(B),
	.Z(SYNTHESIZED_WIRE_4));


bitwise_and_v1	b2v_inst4(
	.A(SYNTHESIZED_WIRE_3),
	.B(SYNTHESIZED_WIRE_4),
	.Z(SYNTHESIZED_WIRE_5));


ripple_adder_v1	b2v_inst5(
	.Cin(S2),
	.A(A),
	.B(SYNTHESIZED_WIRE_5),
	.Cout(Cout),
	.Sum(SYNTHESIZED_WIRE_0));


bitwise_and_v1	b2v_inst6(
	.A(A),
	.B(B),
	.Z(SYNTHESIZED_WIRE_1));


endmodule
