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
// CREATED		"Thu Dec 31 23:26:05 2020"

module join16_v1(
	High,
	Low,
	Z
);


input wire	[7:0] High;
input wire	[7:0] Low;
output wire	[15:0] Z;

wire	[15:0] Z_ALTERA_SYNTHESIZED;
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




assign	SYNTHESIZED_WIRE_0 =  ~High[7];

assign	Z_ALTERA_SYNTHESIZED[15] =  ~SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_1 =  ~High[2];

assign	Z_ALTERA_SYNTHESIZED[10] =  ~SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_2 =  ~High[1];

assign	Z_ALTERA_SYNTHESIZED[9] =  ~SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_3 =  ~High[0];

assign	Z_ALTERA_SYNTHESIZED[8] =  ~SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_4 =  ~Low[7];

assign	Z_ALTERA_SYNTHESIZED[7] =  ~SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_5 =  ~Low[6];

assign	Z_ALTERA_SYNTHESIZED[6] =  ~SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_11 =  ~High[6];

assign	SYNTHESIZED_WIRE_6 =  ~Low[5];

assign	Z_ALTERA_SYNTHESIZED[5] =  ~SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_7 =  ~Low[4];

assign	Z_ALTERA_SYNTHESIZED[4] =  ~SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_8 =  ~Low[3];

assign	Z_ALTERA_SYNTHESIZED[3] =  ~SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_9 =  ~Low[2];

assign	Z_ALTERA_SYNTHESIZED[2] =  ~SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_10 =  ~Low[1];

assign	Z_ALTERA_SYNTHESIZED[1] =  ~SYNTHESIZED_WIRE_10;

assign	Z_ALTERA_SYNTHESIZED[14] =  ~SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_12 =  ~Low[0];

assign	Z_ALTERA_SYNTHESIZED[0] =  ~SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_13 =  ~High[5];

assign	Z_ALTERA_SYNTHESIZED[13] =  ~SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_14 =  ~High[4];

assign	Z_ALTERA_SYNTHESIZED[12] =  ~SYNTHESIZED_WIRE_14;

assign	SYNTHESIZED_WIRE_15 =  ~High[3];

assign	Z_ALTERA_SYNTHESIZED[11] =  ~SYNTHESIZED_WIRE_15;

assign	Z = Z_ALTERA_SYNTHESIZED;

endmodule
