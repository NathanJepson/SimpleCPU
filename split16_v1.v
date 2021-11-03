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
// CREATED		"Thu Dec 31 23:25:30 2020"

module split16_v1(
	A,
	High,
	Low
);


input wire	[15:0] A;
output wire	[7:0] High;
output wire	[7:0] Low;

wire	[7:0] High_ALTERA_SYNTHESIZED;
wire	[7:0] Low_ALTERA_SYNTHESIZED;
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




assign	SYNTHESIZED_WIRE_0 =  ~A[15];

assign	High_ALTERA_SYNTHESIZED[7] =  ~SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_1 =  ~A[10];

assign	High_ALTERA_SYNTHESIZED[2] =  ~SYNTHESIZED_WIRE_1;

assign	High_ALTERA_SYNTHESIZED[1] =  ~SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_2 =  ~A[9];

assign	SYNTHESIZED_WIRE_3 =  ~A[8];

assign	High_ALTERA_SYNTHESIZED[0] =  ~SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_4 =  ~A[7];

assign	Low_ALTERA_SYNTHESIZED[7] =  ~SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_5 =  ~A[6];

assign	Low_ALTERA_SYNTHESIZED[6] =  ~SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_11 =  ~A[14];

assign	SYNTHESIZED_WIRE_6 =  ~A[5];

assign	Low_ALTERA_SYNTHESIZED[5] =  ~SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_7 =  ~A[4];

assign	Low_ALTERA_SYNTHESIZED[4] =  ~SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_8 =  ~A[3];

assign	Low_ALTERA_SYNTHESIZED[3] =  ~SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_9 =  ~A[2];

assign	Low_ALTERA_SYNTHESIZED[2] =  ~SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_10 =  ~A[1];

assign	Low_ALTERA_SYNTHESIZED[1] =  ~SYNTHESIZED_WIRE_10;

assign	High_ALTERA_SYNTHESIZED[6] =  ~SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_12 =  ~A[0];

assign	Low_ALTERA_SYNTHESIZED[0] =  ~SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_13 =  ~A[13];

assign	High_ALTERA_SYNTHESIZED[5] =  ~SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_14 =  ~A[12];

assign	High_ALTERA_SYNTHESIZED[4] =  ~SYNTHESIZED_WIRE_14;

assign	SYNTHESIZED_WIRE_15 =  ~A[11];

assign	High_ALTERA_SYNTHESIZED[3] =  ~SYNTHESIZED_WIRE_15;

assign	High = High_ALTERA_SYNTHESIZED;
assign	Low = Low_ALTERA_SYNTHESIZED;

endmodule
