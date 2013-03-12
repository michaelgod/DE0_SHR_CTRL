// megafunction wizard: %LPM_ADD_SUB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_add_sub 

// ============================================================
// File Name: lpm_add.v
// Megafunction Name(s):
// 			lpm_add_sub
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 9.1 Build 350 03/24/2010 SP 2 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2010 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module lpm_add (
	clock,
	dataa,
	datab,
	result);

	input	  clock;
	input	[13:0]  dataa;
	input	[13:0]  datab;
	output	[13:0]  result;

	wire [13:0] sub_wire0;
	wire [13:0] result = sub_wire0[13:0];

	lpm_add_sub	lpm_add_sub_component (
				.dataa (dataa),
				.datab (datab),
				.clock (clock),
				.result (sub_wire0)
				// synopsys translate_off
				,
				.aclr (),
				.add_sub (),
				.cin (),
				.clken (),
				.cout (),
				.overflow ()
				// synopsys translate_on
				);
	defparam
		lpm_add_sub_component.lpm_direction = "ADD",
		lpm_add_sub_component.lpm_hint = "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=NO",
		lpm_add_sub_component.lpm_pipeline = 1,
		lpm_add_sub_component.lpm_representation = "SIGNED",
		lpm_add_sub_component.lpm_type = "LPM_ADD_SUB",
		lpm_add_sub_component.lpm_width = 14;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: CarryIn NUMERIC "0"
// Retrieval info: PRIVATE: CarryOut NUMERIC "0"
// Retrieval info: PRIVATE: ConstantA NUMERIC "0"
// Retrieval info: PRIVATE: ConstantB NUMERIC "0"
// Retrieval info: PRIVATE: Function NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "1"
// Retrieval info: PRIVATE: Latency NUMERIC "1"
// Retrieval info: PRIVATE: Overflow NUMERIC "0"
// Retrieval info: PRIVATE: RadixA NUMERIC "10"
// Retrieval info: PRIVATE: RadixB NUMERIC "10"
// Retrieval info: PRIVATE: Representation NUMERIC "0"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: ValidCtA NUMERIC "0"
// Retrieval info: PRIVATE: ValidCtB NUMERIC "0"
// Retrieval info: PRIVATE: WhichConstant NUMERIC "0"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "0"
// Retrieval info: PRIVATE: nBit NUMERIC "14"
// Retrieval info: CONSTANT: LPM_DIRECTION STRING "ADD"
// Retrieval info: CONSTANT: LPM_HINT STRING "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=NO"
// Retrieval info: CONSTANT: LPM_PIPELINE NUMERIC "1"
// Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "SIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_ADD_SUB"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "14"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
// Retrieval info: USED_PORT: dataa 0 0 14 0 INPUT NODEFVAL dataa[13..0]
// Retrieval info: USED_PORT: datab 0 0 14 0 INPUT NODEFVAL datab[13..0]
// Retrieval info: USED_PORT: result 0 0 14 0 OUTPUT NODEFVAL result[13..0]
// Retrieval info: CONNECT: result 0 0 14 0 @result 0 0 14 0
// Retrieval info: CONNECT: @dataa 0 0 14 0 dataa 0 0 14 0
// Retrieval info: CONNECT: @datab 0 0 14 0 datab 0 0 14 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_add.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_add.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_add.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_add.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_add_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_add_bb.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_add_waveforms.html TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_add_wave*.jpg FALSE
// Retrieval info: LIB_FILE: lpm
