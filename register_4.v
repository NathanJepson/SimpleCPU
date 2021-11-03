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
// CREATED		"Tue Jan 05 19:08:36 2021"

module register_4(
	D0,
	D1,
	D2,
	D3,
	CLK,
	CE,
	CLR,
	Q0,
	Q1,
	Q2,
	Q3
);


input wire	D0;
input wire	D1;
input wire	D2;
input wire	D3;
input wire	CLK;
input wire	CE;
input wire	CLR;
output reg	Q0;
output reg	Q1;
output reg	Q2;
output reg	Q3;

wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_8 = 1;




always@(posedge CLK or negedge SYNTHESIZED_WIRE_9 or negedge SYNTHESIZED_WIRE_8)
begin
if (!SYNTHESIZED_WIRE_9)
	begin
	Q0 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_8)
	begin
	Q0 <= 1;
	end
else
if (CE)
	begin
	Q0 <= D0;
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_9 or negedge SYNTHESIZED_WIRE_8)
begin
if (!SYNTHESIZED_WIRE_9)
	begin
	Q1 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_8)
	begin
	Q1 <= 1;
	end
else
if (CE)
	begin
	Q1 <= D1;
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_9 or negedge SYNTHESIZED_WIRE_8)
begin
if (!SYNTHESIZED_WIRE_9)
	begin
	Q2 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_8)
	begin
	Q2 <= 1;
	end
else
if (CE)
	begin
	Q2 <= D2;
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_9 or negedge SYNTHESIZED_WIRE_8)
begin
if (!SYNTHESIZED_WIRE_9)
	begin
	Q3 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_8)
	begin
	Q3 <= 1;
	end
else
if (CE)
	begin
	Q3 <= D3;
	end
end


assign	SYNTHESIZED_WIRE_9 =  ~CLR;


endmodule
