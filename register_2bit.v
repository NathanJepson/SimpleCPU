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
// CREATED		"Tue Jan 05 19:08:20 2021"

module register_2bit(
	DI0,
	DI1,
	CLK,
	CE,
	CLR,
	DO0,
	DO1
);


input wire	DI0;
input wire	DI1;
input wire	CLK;
input wire	CE;
input wire	CLR;
output reg	DO0;
output reg	DO1;

wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_4 = 1;




always@(posedge CLK or negedge SYNTHESIZED_WIRE_5 or negedge SYNTHESIZED_WIRE_4)
begin
if (!SYNTHESIZED_WIRE_5)
	begin
	DO0 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_4)
	begin
	DO0 <= 1;
	end
else
if (CE)
	begin
	DO0 <= DI0;
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_5 or negedge SYNTHESIZED_WIRE_4)
begin
if (!SYNTHESIZED_WIRE_5)
	begin
	DO1 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_4)
	begin
	DO1 <= 1;
	end
else
if (CE)
	begin
	DO1 <= DI1;
	end
end

assign	SYNTHESIZED_WIRE_5 =  ~CLR;



endmodule
