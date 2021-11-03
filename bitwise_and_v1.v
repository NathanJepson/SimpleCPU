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
// CREATED		"Thu Dec 31 23:33:01 2020"

module bitwise_and_v1(
	A,
	B,
	Z
);


input wire	[7:0] A;
input wire	[7:0] B;
output wire	[7:0] Z;

wire	[7:0] Z_ALTERA_SYNTHESIZED;




assign	Z_ALTERA_SYNTHESIZED[0] = A[0] & B[0];

assign	Z_ALTERA_SYNTHESIZED[1] = A[1] & B[1];

assign	Z_ALTERA_SYNTHESIZED[2] = A[2] & B[2];

assign	Z_ALTERA_SYNTHESIZED[3] = A[3] & B[3];

assign	Z_ALTERA_SYNTHESIZED[4] = A[4] & B[4];

assign	Z_ALTERA_SYNTHESIZED[5] = A[5] & B[5];

assign	Z_ALTERA_SYNTHESIZED[6] = A[6] & B[6];

assign	Z_ALTERA_SYNTHESIZED[7] = A[7] & B[7];

assign	Z = Z_ALTERA_SYNTHESIZED;

endmodule
