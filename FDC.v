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
// CREATED		"Sun Jan 03 17:55:18 2021"

module FDC(
	D,
	CLK,
	CLR,
	Q
);

parameter INIT = 1'b0;
input wire	D;
input wire	CLK;
input wire	CLR;
output wire	Q;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_20;

assign	Q = SYNTHESIZED_WIRE_3;



assign	SYNTHESIZED_WIRE_17 =  ~CLK;

assign	SYNTHESIZED_WIRE_10 = D & SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_0 =  ~CLR;

assign	SYNTHESIZED_WIRE_12 = ~(SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3);

assign	SYNTHESIZED_WIRE_4 =  ~D;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_19 = ~(SYNTHESIZED_WIRE_18 | CLR | SYNTHESIZED_WIRE_7);

assign	SYNTHESIZED_WIRE_20 =  ~SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_18 = ~(SYNTHESIZED_WIRE_19 | SYNTHESIZED_WIRE_10);

assign	SYNTHESIZED_WIRE_3 = ~(SYNTHESIZED_WIRE_11 | CLR | SYNTHESIZED_WIRE_12);

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_18 & SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_19 & SYNTHESIZED_WIRE_20;


endmodule
