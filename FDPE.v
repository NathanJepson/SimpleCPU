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
// CREATED		"Sun Jan 03 17:54:34 2021"

module FDPE(
	D,
	PRE,
	CE,
	CLK,
	Q
);

parameter INIT = 1'b1;
input wire	D;
input wire	PRE;
input wire	CE;
input wire	CLK;
output wire	Q;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;





FDCE	b2v_inst(
	.D(SYNTHESIZED_WIRE_0),
	.CE(CE),
	.CLK(CLK),
	.CLR(PRE),
	.Q(SYNTHESIZED_WIRE_1));

assign	SYNTHESIZED_WIRE_0 =  ~D;

assign	Q =  ~SYNTHESIZED_WIRE_1;


endmodule
