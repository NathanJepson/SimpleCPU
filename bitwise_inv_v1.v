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
// CREATED		"Thu Dec 31 23:38:16 2020"

module bitwise_inv_v1(
	EN,
	A,
	Z
);


input wire	EN;
input wire	[7:0] A;
output wire	[7:0] Z;

wire	[7:0] Z_ALTERA_SYNTHESIZED;




assign	Z_ALTERA_SYNTHESIZED[0] = A[0] ^ EN;

assign	Z_ALTERA_SYNTHESIZED[1] = A[1] ^ EN;

assign	Z_ALTERA_SYNTHESIZED[2] = A[2] ^ EN;

assign	Z_ALTERA_SYNTHESIZED[3] = A[3] ^ EN;

assign	Z_ALTERA_SYNTHESIZED[4] = A[4] ^ EN;

assign	Z_ALTERA_SYNTHESIZED[5] = A[5] ^ EN;

assign	Z_ALTERA_SYNTHESIZED[6] = A[6] ^ EN;

assign	Z_ALTERA_SYNTHESIZED[7] = A[7] ^ EN;

assign	Z = Z_ALTERA_SYNTHESIZED;

endmodule
