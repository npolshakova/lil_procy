// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
// CREATED		"Mon Apr 01 18:47:36 2019"

module lil_procy_ver(
	CLOCK_50
);


input wire	CLOCK_50;

wire	[31:0] SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_1;
wire	[31:0] SYNTHESIZED_WIRE_2;
wire	[31:0] SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_4;
wire	[31:0] SYNTHESIZED_WIRE_40;
wire	[3:0] SYNTHESIZED_WIRE_7;
wire	[31:0] SYNTHESIZED_WIRE_8;
wire	[31:0] SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	[7:0] SYNTHESIZED_WIRE_11;
wire	[31:0] SYNTHESIZED_WIRE_13;
wire	[31:0] SYNTHESIZED_WIRE_41;
wire	[31:0] SYNTHESIZED_WIRE_42;
wire	[1:0] SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_21;
wire	[31:0] SYNTHESIZED_WIRE_43;
wire	[31:0] SYNTHESIZED_WIRE_25;
wire	[31:0] SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	[4:0] SYNTHESIZED_WIRE_28;
wire	[4:0] SYNTHESIZED_WIRE_29;
wire	[4:0] SYNTHESIZED_WIRE_30;
wire	[31:0] SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	[2:0] SYNTHESIZED_WIRE_36;





instruction_mem	b2v_inst(
	.pc(SYNTHESIZED_WIRE_38),
	.inst(SYNTHESIZED_WIRE_44));


b_mux	b2v_inst10(
	.sel(SYNTHESIZED_WIRE_1),
	.data0x(SYNTHESIZED_WIRE_2),
	.data1x(SYNTHESIZED_WIRE_39),
	.result(SYNTHESIZED_WIRE_9));


a_sel	b2v_inst11(
	.sel(SYNTHESIZED_WIRE_4),
	.data0x(SYNTHESIZED_WIRE_40),
	.data1x(SYNTHESIZED_WIRE_38),
	.result(SYNTHESIZED_WIRE_8));


alu	b2v_inst13(
	.alu_select(SYNTHESIZED_WIRE_7),
	.data_a(SYNTHESIZED_WIRE_8),
	.data_b(SYNTHESIZED_WIRE_9),
	.alu_result(SYNTHESIZED_WIRE_41));


dmem	b2v_inst14(
	.wren(SYNTHESIZED_WIRE_10),
	.clock(CLOCK_50),
	.address(SYNTHESIZED_WIRE_11),
	.data(SYNTHESIZED_WIRE_39),
	.q(SYNTHESIZED_WIRE_13));


wb_mux	b2v_inst15(
	.data0x(SYNTHESIZED_WIRE_13),
	.data1x(SYNTHESIZED_WIRE_41),
	.data2x(SYNTHESIZED_WIRE_42),
	.sel(SYNTHESIZED_WIRE_16),
	.result(SYNTHESIZED_WIRE_43));


add_four	b2v_inst17(
	.four(SYNTHESIZED_WIRE_25));


branch_comp	b2v_inst18(
	.branch_unsigned(SYNTHESIZED_WIRE_17),
	.data_a(SYNTHESIZED_WIRE_40),
	.data_b(SYNTHESIZED_WIRE_39),
	.branch_eq(SYNTHESIZED_WIRE_33),
	.branch_lt(SYNTHESIZED_WIRE_34));


get_addr	b2v_inst19(
	.alu_result(SYNTHESIZED_WIRE_41),
	.addr(SYNTHESIZED_WIRE_11));


pcsrc_mux	b2v_inst2(
	.sel(SYNTHESIZED_WIRE_21),
	.data0x(SYNTHESIZED_WIRE_43),
	.data1x(SYNTHESIZED_WIRE_42),
	.result(SYNTHESIZED_WIRE_26));


inc_pc	b2v_inst4(
	.data0x(SYNTHESIZED_WIRE_38),
	.data1x(SYNTHESIZED_WIRE_25),
	.result(SYNTHESIZED_WIRE_42));


pc	b2v_inst5(
	.CLOCK_50(CLOCK_50),
	.update_pc(SYNTHESIZED_WIRE_26),
	.pc(SYNTHESIZED_WIRE_38));


registers	b2v_inst6(
	.CLOCK_50(CLOCK_50),
	.reg_write(SYNTHESIZED_WIRE_27),
	.addr_a(SYNTHESIZED_WIRE_28),
	.addr_b(SYNTHESIZED_WIRE_29),
	.dst(SYNTHESIZED_WIRE_30),
	.wb(SYNTHESIZED_WIRE_43),
	.data_a(SYNTHESIZED_WIRE_40),
	.data_b(SYNTHESIZED_WIRE_39));


id	b2v_inst7(
	.inst(SYNTHESIZED_WIRE_44),
	.addr_a(SYNTHESIZED_WIRE_28),
	.addr_b(SYNTHESIZED_WIRE_29),
	.dst(SYNTHESIZED_WIRE_30));


control	b2v_inst8(
	.branch_eq(SYNTHESIZED_WIRE_33),
	.branch_lt(SYNTHESIZED_WIRE_34),
	.inst(SYNTHESIZED_WIRE_44),
	.pc_src(SYNTHESIZED_WIRE_21),
	.branch_unsigned(SYNTHESIZED_WIRE_17),
	.reg_write(SYNTHESIZED_WIRE_27),
	.b_sel(SYNTHESIZED_WIRE_1),
	.a_sel(SYNTHESIZED_WIRE_4),
	.mem_write(SYNTHESIZED_WIRE_10),
	.alu_sel(SYNTHESIZED_WIRE_7),
	.imm_sel(SYNTHESIZED_WIRE_36),
	.wb_sel(SYNTHESIZED_WIRE_16));


imm_gen	b2v_inst9(
	.imm_sel(SYNTHESIZED_WIRE_36),
	.inst(SYNTHESIZED_WIRE_44),
	.imm(SYNTHESIZED_WIRE_2));


endmodule
