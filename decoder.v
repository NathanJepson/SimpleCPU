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
// CREATED		"Mon Jan 04 16:49:16 2021"

module decoder(
	Carry,
	Zero,
	CLK,
	CE,
	CLR,
	IR,
	MUXA,
	MUXB,
	MUXC,
	EN_DA,
	EN_PC,
	EN_IN,
	RAM,
	ALU_S0,
	ALU_S1,
	ALU_S2,
	ALU_S3,
	ALU_S4
);


input wire	Carry;
input wire	Zero;
input wire	CLK;
input wire	CE;
input wire	CLR;
input wire	[7:0] IR;
output wire	MUXA;
output wire	MUXB;
output wire	MUXC;
output wire	EN_DA;
output wire	EN_PC;
output wire	EN_IN;
output wire	RAM;
output wire	ALU_S0;
output wire	ALU_S1;
output wire	ALU_S2;
output wire	ALU_S3;
output wire	ALU_S4;

wire	ADD;
wire	BITAND;
wire	CARRY_REG;
wire	DECODE;
wire	EN_ST;
wire	EXECUTE;
wire	FETCH;
wire	INCREMENT;
wire	INPT;
wire	JUMP;
wire	JUMP_NOT_TAKEN;
wire	JUMPC;
wire	JUMPNC;
wire	JUMPNZ;
wire	JUMPZ;
wire	LOAD;
wire	OUTPT;
wire	SUB;
wire	ZERO_REG;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_34;





sequence_generator	b2v_inst(
	.CLR(CLR),
	.CLK(CLK),
	.CE(CE),
	.F(FETCH),
	.D(DECODE),
	.E(EXECUTE),
	.I(INCREMENT));


FDC	b2v_inst1(
	.D(SYNTHESIZED_WIRE_0),
	.CLK(CLK),
	.CLR(CLR),
	.Q(JUMP_NOT_TAKEN));

assign	LOAD = SYNTHESIZED_WIRE_1 & SYNTHESIZED_WIRE_36;

assign	JUMPNC = SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_36;

assign	ADD = SYNTHESIZED_WIRE_5 & SYNTHESIZED_WIRE_36;

assign	JUMP = SYNTHESIZED_WIRE_7 & SYNTHESIZED_WIRE_36;

assign	SUB = SYNTHESIZED_WIRE_9 & SYNTHESIZED_WIRE_36;

assign	BITAND = SYNTHESIZED_WIRE_11 & SYNTHESIZED_WIRE_36;

assign	SYNTHESIZED_WIRE_36 = EXECUTE | DECODE;

assign	MUXB = LOAD | SUB | BITAND | ADD;

assign	MUXC = OUTPT | INPT;


register_2bit	b2v_inst2(
	.DI0(Carry),
	.DI1(Zero),
	.CLK(CLK),
	.CE(EN_ST),
	.CLR(CLR),
	.DO0(CARRY_REG),
	.DO1(ZERO_REG));

assign	EN_DA = EXECUTE & SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_13 = LOAD | ADD | LOAD | SUB | BITAND | INPT;

assign	SYNTHESIZED_WIRE_15 = INCREMENT & JUMP_NOT_TAKEN;

assign	EN_PC = SYNTHESIZED_WIRE_14 | SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_14 = EXECUTE & SYNTHESIZED_WIRE_37;

assign	SYNTHESIZED_WIRE_37 = SYNTHESIZED_WIRE_17 | SYNTHESIZED_WIRE_18 | SYNTHESIZED_WIRE_19 | SYNTHESIZED_WIRE_20 | JUMP | JUMP;

assign	SYNTHESIZED_WIRE_17 = JUMPZ & ZERO_REG;

assign	SYNTHESIZED_WIRE_19 = JUMPNZ & SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_18 = JUMPC & CARRY_REG;

assign	SYNTHESIZED_WIRE_20 = JUMPNC & SYNTHESIZED_WIRE_22;


instruction_decoder	b2v_inst3(
	.A(IR),
	.JUMPZ(SYNTHESIZED_WIRE_26),
	.INPT(SYNTHESIZED_WIRE_28),
	.JUMPNZ(SYNTHESIZED_WIRE_30),
	.OUTPT(SYNTHESIZED_WIRE_32),
	.JUMPC(SYNTHESIZED_WIRE_34),
	.LOAD(SYNTHESIZED_WIRE_1),
	.JUMPNC(SYNTHESIZED_WIRE_3),
	.ADD(SYNTHESIZED_WIRE_5),
	.JUMP(SYNTHESIZED_WIRE_7),
	.SUB(SYNTHESIZED_WIRE_9),
	.BITAND(SYNTHESIZED_WIRE_11));

assign	SYNTHESIZED_WIRE_0 =  ~SYNTHESIZED_WIRE_37;

assign	SYNTHESIZED_WIRE_21 =  ~ZERO_REG;

assign	SYNTHESIZED_WIRE_22 =  ~CARRY_REG;

assign	RAM = EXECUTE & OUTPT;

assign	ALU_S0 = BITAND | LOAD | SYNTHESIZED_WIRE_38 | INPT;

assign	SYNTHESIZED_WIRE_38 = JUMP | JUMPNC | JUMP | JUMPC | JUMPNZ | JUMPZ;

assign	ALU_S1 = SYNTHESIZED_WIRE_38 | OUTPT | LOAD | INPT;

assign	ALU_S2 = SUB | INCREMENT;

assign	EN_ST = SUB | BITAND | ADD;

assign	JUMPZ = SYNTHESIZED_WIRE_26 & SYNTHESIZED_WIRE_36;

assign	INPT = SYNTHESIZED_WIRE_28 & SYNTHESIZED_WIRE_36;

assign	JUMPNZ = SYNTHESIZED_WIRE_30 & SYNTHESIZED_WIRE_36;

assign	OUTPT = SYNTHESIZED_WIRE_32 & SYNTHESIZED_WIRE_36;

assign	JUMPC = SYNTHESIZED_WIRE_34 & SYNTHESIZED_WIRE_36;

assign	MUXA = INCREMENT;
assign	EN_IN = FETCH;
assign	ALU_S3 = SUB;
assign	ALU_S4 = INCREMENT;

endmodule
