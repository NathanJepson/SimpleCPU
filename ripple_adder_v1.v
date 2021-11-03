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
// CREATED		"Thu Dec 31 23:33:30 2020"

module ripple_adder_v1(
	Cin,
	A,
	B,
	Cout,
	Sum
);


input wire	Cin;
input wire	[7:0] A;
input wire	[7:0] B;
output wire	Cout;
output wire	[7:0] Sum;

wire	[7:0] Sum_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;





full_adder	b2v_inst(
	.A(A[0]),
	.B(B[0]),
	.Cin(Cin),
	.Cout(SYNTHESIZED_WIRE_0),
	.Sum(Sum_ALTERA_SYNTHESIZED[0]));


full_adder	b2v_inst1(
	.A(A[1]),
	.B(B[1]),
	.Cin(SYNTHESIZED_WIRE_0),
	.Cout(SYNTHESIZED_WIRE_1),
	.Sum(Sum_ALTERA_SYNTHESIZED[1]));


full_adder	b2v_inst2(
	.A(A[2]),
	.B(B[2]),
	.Cin(SYNTHESIZED_WIRE_1),
	.Cout(SYNTHESIZED_WIRE_2),
	.Sum(Sum_ALTERA_SYNTHESIZED[2]));


full_adder	b2v_inst3(
	.A(A[3]),
	.B(B[3]),
	.Cin(SYNTHESIZED_WIRE_2),
	.Cout(SYNTHESIZED_WIRE_3),
	.Sum(Sum_ALTERA_SYNTHESIZED[3]));


full_adder	b2v_inst4(
	.A(A[4]),
	.B(B[4]),
	.Cin(SYNTHESIZED_WIRE_3),
	.Cout(SYNTHESIZED_WIRE_4),
	.Sum(Sum_ALTERA_SYNTHESIZED[4]));


full_adder	b2v_inst5(
	.A(A[5]),
	.B(B[5]),
	.Cin(SYNTHESIZED_WIRE_4),
	.Cout(SYNTHESIZED_WIRE_5),
	.Sum(Sum_ALTERA_SYNTHESIZED[5]));


full_adder	b2v_inst6(
	.A(A[6]),
	.B(B[6]),
	.Cin(SYNTHESIZED_WIRE_5),
	.Cout(SYNTHESIZED_WIRE_6),
	.Sum(Sum_ALTERA_SYNTHESIZED[6]));


full_adder	b2v_inst7(
	.A(A[7]),
	.B(B[7]),
	.Cin(SYNTHESIZED_WIRE_6),
	.Cout(Cout),
	.Sum(Sum_ALTERA_SYNTHESIZED[7]));

assign	Sum = Sum_ALTERA_SYNTHESIZED;

endmodule
