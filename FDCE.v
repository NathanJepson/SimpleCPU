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
// CREATED		"Sun Jan 03 15:00:27 2021"

module FDCE(
	D,
	CLK,
	CLR,
	CE,
	Q
);

parameter INIT = 1'b0;
input wire	D;
input wire	CLK;
input wire	CLR;
input wire	CE;
output wire	Q;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_21;

assign	Q = SYNTHESIZED_WIRE_4;



assign	SYNTHESIZED_WIRE_18 =  ~SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_11 = D & SYNTHESIZED_WIRE_1 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_1 =  ~CLR;

assign	SYNTHESIZED_WIRE_13 = ~(SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4);

assign	SYNTHESIZED_WIRE_0 = CE & CLK;

assign	SYNTHESIZED_WIRE_5 =  ~D;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_5 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_20 = ~(SYNTHESIZED_WIRE_19 | CLR | SYNTHESIZED_WIRE_8);

assign	SYNTHESIZED_WIRE_21 =  ~SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_19 = ~(SYNTHESIZED_WIRE_20 | SYNTHESIZED_WIRE_11);

assign	SYNTHESIZED_WIRE_4 = ~(SYNTHESIZED_WIRE_12 | CLR | SYNTHESIZED_WIRE_13);

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_19 & SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_21;


endmodule
