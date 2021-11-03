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
// CREATED		"Mon Jan 04 16:30:15 2021"

module top_level_v1(
	NCLR,
	CLK,
	CE_VCC,
	ADDR_OUT,
	CPU_DO_OUT,
	Instructions
);


input wire	NCLR;
input wire	CLK;
input wire	CE_VCC;
output wire	[7:0] ADDR_OUT;
output wire	[15:0] CPU_DO_OUT;
output wire	[15:0] Instructions;

wire	[7:0] ADDR;
wire	ALU_S0;
wire	ALU_S1;
wire	ALU_S2;
wire	ALU_S3;
wire	ALU_S4;
wire	Carry;
wire	CLR;
wire	[15:0] CPU_DI;
wire	[15:0] CPU_DO;
wire	[7:0] D;
wire	EN_DA;
wire	EN_IN;
wire	EN_PC;
wire	[7:0] IR;
wire	MUXA;
wire	MUXB;
wire	MUXC;
wire	OTHER_CLK;
wire	RAM_WE;
wire	Zero;
wire	[7:0] SYNTHESIZED_WIRE_0;
wire	[7:0] SYNTHESIZED_WIRE_11;
wire	[7:0] SYNTHESIZED_WIRE_12;
wire	[7:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_5;
wire	[7:0] SYNTHESIZED_WIRE_6;
wire	[15:0] SYNTHESIZED_WIRE_7;
wire	[7:0] SYNTHESIZED_WIRE_9;
wire	[7:0] SYNTHESIZED_WIRE_10;





register_8_v1	b2v_ACC(
	.CLK(CLK),
	.CE(EN_DA),
	.CLR(CLR),
	.D(SYNTHESIZED_WIRE_0),
	.Q(D));


mux2_1_8_v1	b2v_ADDR_MUX(
	.SEL(MUXC),
	.A(SYNTHESIZED_WIRE_11),
	.B(SYNTHESIZED_WIRE_12),
	.Z(ADDR));


lpm_constant_0	b2v_CONSTANT(
	.result(SYNTHESIZED_WIRE_6));


mux2_1_8_v1	b2v_DATA_MUX(
	.SEL(MUXB),
	.A(SYNTHESIZED_WIRE_3),
	.B(SYNTHESIZED_WIRE_12),
	.Z(SYNTHESIZED_WIRE_10));


FD	b2v_inst(
	.D(SYNTHESIZED_WIRE_5),
	.CLK(CLK),
	.Q(CLR));


join16_v1	b2v_inst11(
	.High(SYNTHESIZED_WIRE_6),
	.Low(D),
	.Z(CPU_DO));


decoder	b2v_inst14(
	.Carry(Carry),
	.Zero(Zero),
	.CLK(CLK),
	.CE(CE_VCC),
	.CLR(CLR),
	.IR(IR),
	.MUXA(MUXA),
	.MUXB(MUXB),
	.MUXC(MUXC),
	.EN_DA(EN_DA),
	.EN_PC(EN_PC),
	.EN_IN(EN_IN),
	.RAM(RAM_WE),
	.ALU_S0(ALU_S0),
	.ALU_S1(ALU_S1),
	.ALU_S2(ALU_S2),
	.ALU_S3(ALU_S3),
	.ALU_S4(ALU_S4));


nor8_v1	b2v_inst15(
	.A(D),
	.Z(Zero));

assign	SYNTHESIZED_WIRE_5 =  ~NCLR;


RAM_TEST_1	b2v_inst21(
	.we(RAM_WE),
	.clk(OTHER_CLK),
	.addr(ADDR),
	.din(CPU_DO),
	.dout(CPU_DI));

assign	OTHER_CLK =  ~CLK;


split16_v1	b2v_inst4(
	.A(SYNTHESIZED_WIRE_7),
	.High(IR),
	.Low(SYNTHESIZED_WIRE_12));


split16_v1	b2v_inst5(
	.A(CPU_DI),
	
	.Low(SYNTHESIZED_WIRE_3));


mux2_1_8_v1	b2v_inst6(
	.SEL(MUXA),
	.A(D),
	.B(SYNTHESIZED_WIRE_11),
	.Z(SYNTHESIZED_WIRE_9));


ALU_v2	b2v_inst8(
	.S4(ALU_S4),
	.S3(ALU_S3),
	.S2(ALU_S2),
	.S1(ALU_S1),
	.S0(ALU_S0),
	.A(SYNTHESIZED_WIRE_9),
	.B(SYNTHESIZED_WIRE_10),
	.Cout(Carry),
	.Z(SYNTHESIZED_WIRE_0));


register_16_v1	b2v_IR_Register(
	.CLK(CLK),
	.CE(EN_IN),
	.CLR(CLR),
	.D(CPU_DI),
	.Q(SYNTHESIZED_WIRE_7));


register_8_v1	b2v_PC(
	.CLK(CLK),
	.CE(EN_PC),
	.CLR(CLR),
	.D(D),
	.Q(SYNTHESIZED_WIRE_11));

assign	ADDR_OUT = ADDR;
assign	CPU_DO_OUT = CPU_DO;
assign	Instructions = CPU_DI;

endmodule

module lpm_constant_0(result);
/* synthesis black_box */

output [7:0] result;

endmodule
