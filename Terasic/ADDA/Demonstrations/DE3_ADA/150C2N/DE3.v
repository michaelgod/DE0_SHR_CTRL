// --------------------------------------------------------------------
// Copyright (c) 2010 by Terasic Technologies Inc. 
// --------------------------------------------------------------------
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     Terasic Technologies Inc
//                     356 Fu-Shin E. Rd Sec. 1. JhuBei City,
//                     HsinChu County, Taiwan
//                     302
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// --------------------------------------------------------------------
//
// Major Functions:	DE3 ADDA
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date   :| Changes Made:
//   V1.0 :| Allen Wang        :| 05/07/2010  :| Initial Revision
//   V1.1 :| Allen Wang        :| 24/08/2010  :| Updata to Quartus 10.0
// --------------------------------------------------------------------
// ====================================================================
//  This code is generated by Terasic System Builder
// ====================================================================
module DE3(

		////////// CLOCK //////////
		OSC_BA,
		OSC_BB,
		OSC_BC,
		OSC_BD,
		OSC1_50,
		OSC2_50,
		CLK_OUT,
		EXT_CLK,

		////////// LED //////////
		LEDR,
		LEDG,
		LEDB,

		////////// SEG7 //////////
		HEX0,
		HEX0_DP,
		HEX1,
		HEX1_DP,

		////////// GPIO0 (J13, GPIO 0) //////////
		GPIO0_CLKINn0,
		GPIO0_CLKINp0,
		GPIO0_CLKOUTn0,
		GPIO0_CLKOUTp0,
		GPIO0_D,

		////////// GPIO1 (J14, GPIO 1) //////////
		GPIO1_CLKINn1,
		GPIO1_CLKINp1,
		GPIO1_CLKOUTn1,
		GPIO1_CLKOUTp1,
		GPIO1_D,

		////////// HSTCD (J7, HSTC-D TOP/J8, JSTC-D BOTTOM), connect to ADA(ADA Board) //////////
		HSTCD_AD_OTRA,
		HSTCD_PLL_OUT_ADC,
		HSTCD_AD_OTRB,
		HSTCD_AD_DB,
		HSTCD_AD_DA,
		HSTCD_ADC_OEB_B,
		HSTCD_ADC_OEB_A,
		HSTCD_SMA_DAC4,
		HSTCD_PLL_OUT_DAC,
		HSTCD_OSC_SMA_ADC4,
		HSTCD_DA_MODE,
		HSTCD_DA_WRTA,
		HSTCD_DA_WRTB,
		HSTCD_DA_DA,
		HSTCD_DA_DB,
		HSTCD_SDA,
		HSTCD_SCL,

		////////// REGULATOR //////////
		JVC_CLK,
		JVC_CS,
		JVC_DATAOUT,
		JVC_DATAIN

	);

//=======================================================
//  PARAMETER declarations
//=======================================================

//=======================================================
//  PORT declarations
//=======================================================
////////// CLOCK //////////
input                     		OSC_BA;
input                     		OSC_BB;
input                     		OSC_BC;
input                     		OSC_BD;
input                     		OSC1_50;
input                     		OSC2_50;
output                    		CLK_OUT;
input                     		EXT_CLK;

////////// LED //////////
output    	[7:0]           	LEDR;
output    	[7:0]           	LEDG;
output    	[7:0]           	LEDB;

////////// SEG7 //////////
output    	[6:0]           	HEX0;
output                    		HEX0_DP;
output    	[6:0]           	HEX1;
output                    		HEX1_DP;

////////// GPIO0 (J13, GPIO 0) //////////
inout                     		GPIO0_CLKINn0;
inout     	[31:0]          	GPIO0_D;
inout                     		GPIO0_CLKINp0;
inout                     		GPIO0_CLKOUTn0;
inout                     		GPIO0_CLKOUTp0;

////////// GPIO1 (J14, GPIO 1) //////////
inout                     		GPIO1_CLKINn1;
inout     	[31:0]          	GPIO1_D;
inout                     		GPIO1_CLKINp1;
inout                     		GPIO1_CLKOUTn1;
inout                     		GPIO1_CLKOUTp1;

////////// HSTCD (J7, HSTC-D TOP/J8, JSTC-D BOTTOM), connect to ADA(ADA Board) //////////
output    	[1:0]           	HSTCD_PLL_OUT_ADC;
input                     		HSTCD_AD_OTRA;
input                     		HSTCD_AD_OTRB;
input     	[13:0]          	HSTCD_AD_DB;
input     	[13:0]          	HSTCD_AD_DA;
output                    		HSTCD_ADC_OEB_B;
output                    		HSTCD_ADC_OEB_A;
output    	[1:0]           	HSTCD_PLL_OUT_DAC;
input                     		HSTCD_SMA_DAC4;
input                     		HSTCD_OSC_SMA_ADC4;
output                    		HSTCD_DA_MODE;
output                    		HSTCD_DA_WRTA;
output                    		HSTCD_DA_WRTB;
output    	[13:0]          	HSTCD_DA_DA;
output    	[13:0]          	HSTCD_DA_DB;
inout                     		HSTCD_SDA;
output                    		HSTCD_SCL;

////////// REGULATOR //////////
output                    		JVC_CLK;
output                    		JVC_CS;
output                    		JVC_DATAOUT;
input                     		JVC_DATAIN;


//=======================================================
//  REG/WIRE declarations
//=======================================================

//=======================================================
//  IO Group Voltage Configuration (Do not modify it)
//=======================================================
IOV_A3V3_B3V3_C3V3_D3V3 IOV_Instance(
	.iCLK(OSC2_50),
	.iRST_n(1'b1),
	.iENABLE(1'b0),
	.oREADY(),
	.oERR(),
	.oERRCODE(),
	.oJVC_CLK(JVC_CLK),
	.oJVC_CS(JVC_CS),
	.oJVC_DATAOUT(JVC_DATAOUT),
	.iJVC_DATAIN(JVC_DATAIN)
);

//=======================================================
//  Structural coding
//=======================================================

assign  HSTCD_DA_DA = comb; //B
assign  HSTCD_DA_DB = comb; //A

/////////////////////////////////////

assign  HSTCD_DA_WRTB = CLK_125; //Input write signal for PORT B
assign  HSTCD_DA_WRTA = CLK_125; //Input write signal for PORT A

assign  HSTCD_DA_MODE = 1; //Mode Select. 1 = dual port, 0 = interleaved.

assign  HSTCD_PLL_OUT_DAC[0] = CLK_125; //PLL Clock to DAC_B
assign  HSTCD_PLL_OUT_DAC[1] = CLK_125; //PLL Clock to DAC_A

assign  HSTCD_PLL_OUT_ADC[0] = CLK_65; //PLL Clock to ADC_B
assign  HSTCD_PLL_OUT_ADC[1] = CLK_65; //PLL Clock to ADC_A

//assign  HSMC_TX_N[11] = 1; 

assign  HSTCD_ADC_OEB_B = 0; //ADC_OEB
assign  HSTCD_ADC_OEB_A = 0; //ADC_OEA

/////////////////////////////////////

//output  [13:0]a2dba;
//output  [13:0]a2dbb;

wire    [31:0]phasinc1;
wire    [31:0]phasinc2;

wire    g = 0;
wire    v = 1;

assign  phasinc1 = {g,g,g,g,v,v,g,g,v,v,g,g,v,v,g,g,v,v,g,g,v,v,g,g,v,v,g,g,v,v,g,v};
assign  phasinc2 = {g,v,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,g};


wire  [13:0]sin10_out;
wire  [13:0]sin_out;

wire  [13:0]comb;


nco80_st	sin1   (
					  .clk      (CLK_125),
					  .reset_n  (v),
					  .clken    (v),
					  .phi_inc_i(phasinc1),
					  .fsin_o   (sin_out),
					  .out_valid(ovalid)
					 );


nco80_st	sin2 (
					.clk      (CLK_125),
					.reset_n  (v),
					.clken    (v),
					.phi_inc_i(phasinc2),
					.fsin_o	 (sin10_out),
					.out_valid(ovalid)
				  );


pll  pll_100  (
					.inclk0(OSC1_50),
					.pllena(v),
					.areset(g),
					.c0    (CLK_125),
					.c1    (CLK_65)
				  );


lpm_add lpm   (
					.clock(CLK_125),
					.dataa({g,~sin_out[12],sin_out[11:0]}),
					.datab({g,~sin10_out[12],sin10_out[11:0]}),
					.result(comb)
					);

endmodule
