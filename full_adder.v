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
// CREATED		"Thu Dec 31 23:19:54 2020"

module full_adder(
	A,
	B,
	Cin,
	Cout,
	Sum
);


input wire	A;
input wire	B;
input wire	Cin;
output wire	Cout;
output wire	Sum;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





half_adder	b2v_inst(
	.A(A),
	.B(B),
	.Cout(SYNTHESIZED_WIRE_2),
	.Sum(SYNTHESIZED_WIRE_0));


half_adder	b2v_inst1(
	.A(SYNTHESIZED_WIRE_0),
	.B(Cin),
	.Cout(SYNTHESIZED_WIRE_1),
	.Sum(Sum));

assign	Cout = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;


endmodule
