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
// CREATED		"Tue Jan 05 19:17:46 2021"

module sequence_generator(
	CLK,
	CE,
	CLR,
	D,
	E,
	I,
	F
);


input wire	CLK;
input wire	CE;
input wire	CLR;
output wire	D;
output wire	E;
output wire	I;
output wire	F;

reg	DFFE_inst5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_1;
reg	DFFE_inst1;
wire	SYNTHESIZED_WIRE_3;
reg	DFFE_inst3;
reg	DFFE_inst4;

assign	D = DFFE_inst3;
assign	E = DFFE_inst4;
assign	I = DFFE_inst5;
assign	F = SYNTHESIZED_WIRE_3;



assign	SYNTHESIZED_WIRE_1 =  ~DFFE_inst5;


always@(posedge CLK or negedge SYNTHESIZED_WIRE_6)
begin
if (!SYNTHESIZED_WIRE_6)
	begin
	DFFE_inst1 <= 0;
	end
else
if (CE)
	begin
	DFFE_inst1 <= SYNTHESIZED_WIRE_1;
	end
end

assign	SYNTHESIZED_WIRE_3 =  ~DFFE_inst1;

assign	SYNTHESIZED_WIRE_6 =  ~CLR;


always@(posedge CLK or negedge SYNTHESIZED_WIRE_6)
begin
if (!SYNTHESIZED_WIRE_6)
	begin
	DFFE_inst3 <= 0;
	end
else
if (CE)
	begin
	DFFE_inst3 <= SYNTHESIZED_WIRE_3;
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_6)
begin
if (!SYNTHESIZED_WIRE_6)
	begin
	DFFE_inst4 <= 0;
	end
else
if (CE)
	begin
	DFFE_inst4 <= DFFE_inst3;
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_6)
begin
if (!SYNTHESIZED_WIRE_6)
	begin
	DFFE_inst5 <= 0;
	end
else
if (CE)
	begin
	DFFE_inst5 <= DFFE_inst4;
	end
end


endmodule
