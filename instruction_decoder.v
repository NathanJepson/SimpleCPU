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
// CREATED		"Mon Jan 04 16:49:24 2021"

module instruction_decoder(
	A,
	JUMPZ,
	JUMPNZ,
	JUMPC,
	JUMPNC,
	INPT,
	OUTPT,
	LOAD,
	ADD,
	JUMP,
	SUB,
	BITAND
);


input wire	[7:0] A;
output wire	JUMPZ;
output wire	JUMPNZ;
output wire	JUMPC;
output wire	JUMPNC;
output wire	INPT;
output wire	OUTPT;
output wire	LOAD;
output wire	ADD;
output wire	JUMP;
output wire	SUB;
output wire	BITAND;

wire	JUMP_CONDITION;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;




assign	SYNTHESIZED_WIRE_0 =  ~A[6];

assign	SYNTHESIZED_WIRE_1 =  ~A[4];

assign	SYNTHESIZED_WIRE_12 =  ~A[4];

assign	SYNTHESIZED_WIRE_21 =  ~A[2];

assign	SYNTHESIZED_WIRE_22 =  ~A[3];

assign	SYNTHESIZED_WIRE_6 =  ~A[4];

assign	SYNTHESIZED_WIRE_8 =  ~A[5];

assign	SYNTHESIZED_WIRE_7 =  ~A[7];

assign	SYNTHESIZED_WIRE_11 =  ~A[5];

assign	SYNTHESIZED_WIRE_13 =  ~A[6];

assign	SYNTHESIZED_WIRE_10 =  ~A[6];

assign	SYNTHESIZED_WIRE_2 =  ~A[4];

assign	INPT = A[7] & SYNTHESIZED_WIRE_0 & A[5] & SYNTHESIZED_WIRE_1;

assign	OUTPT = A[7] & A[6] & A[5] & SYNTHESIZED_WIRE_2;

assign	LOAD = SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5 & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_9 =  ~A[4];

assign	ADD = SYNTHESIZED_WIRE_7 & A[6] & SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_9;

assign	JUMP = A[7] & SYNTHESIZED_WIRE_10 & SYNTHESIZED_WIRE_11 & SYNTHESIZED_WIRE_12;

assign	JUMP_CONDITION = A[7] & SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_14 & A[4];

assign	SUB = SYNTHESIZED_WIRE_15 & A[6] & A[5] & SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_3 =  ~A[7];

assign	SYNTHESIZED_WIRE_18 =  ~A[6];

assign	SYNTHESIZED_WIRE_17 =  ~A[7];

assign	SYNTHESIZED_WIRE_19 =  ~A[5];

assign	BITAND = SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_18 & SYNTHESIZED_WIRE_19 & A[4];

assign	SYNTHESIZED_WIRE_23 =  ~A[2];

assign	SYNTHESIZED_WIRE_4 =  ~A[6];

assign	JUMPZ = JUMP_CONDITION & SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_21;

assign	JUMPNZ = JUMP_CONDITION & SYNTHESIZED_WIRE_22 & A[2];

assign	JUMPC = JUMP_CONDITION & A[3] & SYNTHESIZED_WIRE_23;

assign	JUMPNC = JUMP_CONDITION & A[3] & A[2];

assign	SYNTHESIZED_WIRE_16 =  ~A[4];

assign	SYNTHESIZED_WIRE_5 =  ~A[5];

assign	SYNTHESIZED_WIRE_14 =  ~A[5];

assign	SYNTHESIZED_WIRE_15 =  ~A[7];

assign	SYNTHESIZED_WIRE_20 =  ~A[3];


endmodule
