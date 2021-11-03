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
// CREATED		"Thu Dec 31 23:34:37 2020"

module replicate(
	A,
	Z
);


input wire	A;
output wire	[7:0] Z;

wire	[7:0] Z_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;




assign	SYNTHESIZED_WIRE_0 =  ~A;

assign	Z_ALTERA_SYNTHESIZED[0] =  ~SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_1 =  ~A;

assign	Z_ALTERA_SYNTHESIZED[5] =  ~SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_2 =  ~A;

assign	SYNTHESIZED_WIRE_3 =  ~A;

assign	Z_ALTERA_SYNTHESIZED[6] =  ~SYNTHESIZED_WIRE_2;

assign	Z_ALTERA_SYNTHESIZED[7] =  ~SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_4 =  ~A;

assign	Z_ALTERA_SYNTHESIZED[2] =  ~SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_5 =  ~A;

assign	Z_ALTERA_SYNTHESIZED[3] =  ~SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_6 =  ~A;

assign	Z_ALTERA_SYNTHESIZED[4] =  ~SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_7 =  ~A;

assign	Z_ALTERA_SYNTHESIZED[1] =  ~SYNTHESIZED_WIRE_7;

assign	Z = Z_ALTERA_SYNTHESIZED;

endmodule
