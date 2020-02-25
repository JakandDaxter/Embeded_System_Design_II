// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Feb 22 09:04:00 2020
// Host        : ECTET-1360-13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/axt3290/Downloads/blinkAXI-Aliana/src/ip/design_1_Top_0_0/design_1_Top_0_0_sim_netlist.v
// Design      : design_1_Top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Top_0_0,Top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "Top,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_Top_0_0
   (PWM,
    CLOCK,
    en,
    reset,
    PERIOD,
    DUTY);
  output PWM;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLOCK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLOCK, ASSOCIATED_RESET reset, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLOCK;
  input en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [25:0]PERIOD;
  input [25:0]DUTY;

  wire CLOCK;
  wire [25:0]DUTY;
  wire [25:0]PERIOD;
  wire PWM;
  wire en;
  wire reset;

  design_1_Top_0_0_Top U0
       (.CLOCK(CLOCK),
        .DUTY(DUTY),
        .PERIOD(PERIOD),
        .PWM(PWM),
        .en(en),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "Top" *) 
module design_1_Top_0_0_Top
   (PWM,
    en,
    CLOCK,
    reset,
    PERIOD,
    DUTY);
  output PWM;
  input en;
  input CLOCK;
  input reset;
  input [25:0]PERIOD;
  input [25:0]DUTY;

  wire CLOCK;
  wire [25:0]DUTY;
  wire [25:0]PERIOD;
  wire PWM;
  wire \counter_sig[0]_i_2_n_0 ;
  wire \counter_sig[0]_i_3_n_0 ;
  wire \counter_sig[0]_i_4_n_0 ;
  wire \counter_sig[0]_i_5_n_0 ;
  wire \counter_sig[0]_i_6_n_0 ;
  wire \counter_sig[12]_i_2_n_0 ;
  wire \counter_sig[12]_i_3_n_0 ;
  wire \counter_sig[12]_i_4_n_0 ;
  wire \counter_sig[12]_i_5_n_0 ;
  wire \counter_sig[16]_i_2_n_0 ;
  wire \counter_sig[16]_i_3_n_0 ;
  wire \counter_sig[16]_i_4_n_0 ;
  wire \counter_sig[16]_i_5_n_0 ;
  wire \counter_sig[20]_i_2_n_0 ;
  wire \counter_sig[20]_i_3_n_0 ;
  wire \counter_sig[20]_i_4_n_0 ;
  wire \counter_sig[20]_i_5_n_0 ;
  wire \counter_sig[24]_i_2_n_0 ;
  wire \counter_sig[24]_i_3_n_0 ;
  wire \counter_sig[24]_i_4_n_0 ;
  wire \counter_sig[4]_i_2_n_0 ;
  wire \counter_sig[4]_i_3_n_0 ;
  wire \counter_sig[4]_i_4_n_0 ;
  wire \counter_sig[4]_i_5_n_0 ;
  wire \counter_sig[8]_i_2_n_0 ;
  wire \counter_sig[8]_i_3_n_0 ;
  wire \counter_sig[8]_i_4_n_0 ;
  wire \counter_sig[8]_i_5_n_0 ;
  wire [26:0]counter_sig_reg;
  wire \counter_sig_reg[0]_i_1_n_0 ;
  wire \counter_sig_reg[0]_i_1_n_1 ;
  wire \counter_sig_reg[0]_i_1_n_2 ;
  wire \counter_sig_reg[0]_i_1_n_3 ;
  wire \counter_sig_reg[0]_i_1_n_4 ;
  wire \counter_sig_reg[0]_i_1_n_5 ;
  wire \counter_sig_reg[0]_i_1_n_6 ;
  wire \counter_sig_reg[0]_i_1_n_7 ;
  wire \counter_sig_reg[12]_i_1_n_0 ;
  wire \counter_sig_reg[12]_i_1_n_1 ;
  wire \counter_sig_reg[12]_i_1_n_2 ;
  wire \counter_sig_reg[12]_i_1_n_3 ;
  wire \counter_sig_reg[12]_i_1_n_4 ;
  wire \counter_sig_reg[12]_i_1_n_5 ;
  wire \counter_sig_reg[12]_i_1_n_6 ;
  wire \counter_sig_reg[12]_i_1_n_7 ;
  wire \counter_sig_reg[16]_i_1_n_0 ;
  wire \counter_sig_reg[16]_i_1_n_1 ;
  wire \counter_sig_reg[16]_i_1_n_2 ;
  wire \counter_sig_reg[16]_i_1_n_3 ;
  wire \counter_sig_reg[16]_i_1_n_4 ;
  wire \counter_sig_reg[16]_i_1_n_5 ;
  wire \counter_sig_reg[16]_i_1_n_6 ;
  wire \counter_sig_reg[16]_i_1_n_7 ;
  wire \counter_sig_reg[20]_i_1_n_0 ;
  wire \counter_sig_reg[20]_i_1_n_1 ;
  wire \counter_sig_reg[20]_i_1_n_2 ;
  wire \counter_sig_reg[20]_i_1_n_3 ;
  wire \counter_sig_reg[20]_i_1_n_4 ;
  wire \counter_sig_reg[20]_i_1_n_5 ;
  wire \counter_sig_reg[20]_i_1_n_6 ;
  wire \counter_sig_reg[20]_i_1_n_7 ;
  wire \counter_sig_reg[24]_i_1_n_2 ;
  wire \counter_sig_reg[24]_i_1_n_3 ;
  wire \counter_sig_reg[24]_i_1_n_5 ;
  wire \counter_sig_reg[24]_i_1_n_6 ;
  wire \counter_sig_reg[24]_i_1_n_7 ;
  wire \counter_sig_reg[4]_i_1_n_0 ;
  wire \counter_sig_reg[4]_i_1_n_1 ;
  wire \counter_sig_reg[4]_i_1_n_2 ;
  wire \counter_sig_reg[4]_i_1_n_3 ;
  wire \counter_sig_reg[4]_i_1_n_4 ;
  wire \counter_sig_reg[4]_i_1_n_5 ;
  wire \counter_sig_reg[4]_i_1_n_6 ;
  wire \counter_sig_reg[4]_i_1_n_7 ;
  wire \counter_sig_reg[8]_i_1_n_0 ;
  wire \counter_sig_reg[8]_i_1_n_1 ;
  wire \counter_sig_reg[8]_i_1_n_2 ;
  wire \counter_sig_reg[8]_i_1_n_3 ;
  wire \counter_sig_reg[8]_i_1_n_4 ;
  wire \counter_sig_reg[8]_i_1_n_5 ;
  wire \counter_sig_reg[8]_i_1_n_6 ;
  wire \counter_sig_reg[8]_i_1_n_7 ;
  wire en;
  wire output_sig1;
  wire output_sig1__8_carry__0_i_1_n_0;
  wire output_sig1__8_carry__0_i_2_n_0;
  wire output_sig1__8_carry__0_i_3_n_0;
  wire output_sig1__8_carry__0_i_4_n_0;
  wire output_sig1__8_carry__0_i_5_n_0;
  wire output_sig1__8_carry__0_i_6_n_0;
  wire output_sig1__8_carry__0_i_7_n_0;
  wire output_sig1__8_carry__0_i_8_n_0;
  wire output_sig1__8_carry__0_n_0;
  wire output_sig1__8_carry__0_n_1;
  wire output_sig1__8_carry__0_n_2;
  wire output_sig1__8_carry__0_n_3;
  wire output_sig1__8_carry__1_i_1_n_0;
  wire output_sig1__8_carry__1_i_2_n_0;
  wire output_sig1__8_carry__1_i_3_n_0;
  wire output_sig1__8_carry__1_i_4_n_0;
  wire output_sig1__8_carry__1_i_5_n_0;
  wire output_sig1__8_carry__1_i_6_n_0;
  wire output_sig1__8_carry__1_i_7_n_0;
  wire output_sig1__8_carry__1_i_8_n_0;
  wire output_sig1__8_carry__1_n_0;
  wire output_sig1__8_carry__1_n_1;
  wire output_sig1__8_carry__1_n_2;
  wire output_sig1__8_carry__1_n_3;
  wire output_sig1__8_carry__2_i_1_n_0;
  wire output_sig1__8_carry__2_i_2_n_0;
  wire output_sig1__8_carry__2_i_3_n_0;
  wire output_sig1__8_carry__2_n_3;
  wire output_sig1__8_carry_i_1_n_0;
  wire output_sig1__8_carry_i_2_n_0;
  wire output_sig1__8_carry_i_3_n_0;
  wire output_sig1__8_carry_i_4_n_0;
  wire output_sig1__8_carry_i_5_n_0;
  wire output_sig1__8_carry_i_6_n_0;
  wire output_sig1__8_carry_i_7_n_0;
  wire output_sig1__8_carry_i_8_n_0;
  wire output_sig1__8_carry_n_0;
  wire output_sig1__8_carry_n_1;
  wire output_sig1__8_carry_n_2;
  wire output_sig1__8_carry_n_3;
  wire output_sig1_carry__0_i_1_n_0;
  wire output_sig1_carry__0_i_2_n_0;
  wire output_sig1_carry__0_i_3_n_0;
  wire output_sig1_carry__0_i_4_n_0;
  wire output_sig1_carry__0_n_0;
  wire output_sig1_carry__0_n_1;
  wire output_sig1_carry__0_n_2;
  wire output_sig1_carry__0_n_3;
  wire output_sig1_carry__1_i_1_n_0;
  wire output_sig1_carry__1_n_3;
  wire output_sig1_carry_i_1_n_0;
  wire output_sig1_carry_i_2_n_0;
  wire output_sig1_carry_i_3_n_0;
  wire output_sig1_carry_i_4_n_0;
  wire output_sig1_carry_n_0;
  wire output_sig1_carry_n_1;
  wire output_sig1_carry_n_2;
  wire output_sig1_carry_n_3;
  wire output_sig_i_1_n_0;
  wire reset;
  wire [3:2]\NLW_counter_sig_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_sig_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_output_sig1__8_carry_O_UNCONNECTED;
  wire [3:0]NLW_output_sig1__8_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_output_sig1__8_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_output_sig1__8_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_output_sig1__8_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_output_sig1_carry_O_UNCONNECTED;
  wire [3:0]NLW_output_sig1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_output_sig1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_output_sig1_carry__1_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[0]_i_2 
       (.I0(counter_sig_reg[0]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[0]_i_3 
       (.I0(counter_sig_reg[3]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[0]_i_4 
       (.I0(counter_sig_reg[2]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[0]_i_5 
       (.I0(counter_sig_reg[1]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_sig[0]_i_6 
       (.I0(counter_sig_reg[0]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[12]_i_2 
       (.I0(counter_sig_reg[15]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[12]_i_3 
       (.I0(counter_sig_reg[14]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[12]_i_4 
       (.I0(counter_sig_reg[13]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[12]_i_5 
       (.I0(counter_sig_reg[12]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[16]_i_2 
       (.I0(counter_sig_reg[19]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[16]_i_3 
       (.I0(counter_sig_reg[18]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[16]_i_4 
       (.I0(counter_sig_reg[17]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[16]_i_5 
       (.I0(counter_sig_reg[16]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[20]_i_2 
       (.I0(counter_sig_reg[23]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[20]_i_3 
       (.I0(counter_sig_reg[22]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[20]_i_4 
       (.I0(counter_sig_reg[21]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[20]_i_5 
       (.I0(counter_sig_reg[20]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[24]_i_2 
       (.I0(counter_sig_reg[26]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[24]_i_3 
       (.I0(counter_sig_reg[25]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[24]_i_4 
       (.I0(counter_sig_reg[24]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[4]_i_2 
       (.I0(counter_sig_reg[7]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[4]_i_3 
       (.I0(counter_sig_reg[6]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[4]_i_4 
       (.I0(counter_sig_reg[5]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[4]_i_5 
       (.I0(counter_sig_reg[4]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[8]_i_2 
       (.I0(counter_sig_reg[11]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[8]_i_3 
       (.I0(counter_sig_reg[10]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[8]_i_4 
       (.I0(counter_sig_reg[9]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_sig[8]_i_5 
       (.I0(counter_sig_reg[8]),
        .I1(output_sig1_carry__1_n_3),
        .O(\counter_sig[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[0] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[0]_i_1_n_7 ),
        .Q(counter_sig_reg[0]));
  CARRY4 \counter_sig_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_sig_reg[0]_i_1_n_0 ,\counter_sig_reg[0]_i_1_n_1 ,\counter_sig_reg[0]_i_1_n_2 ,\counter_sig_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter_sig[0]_i_2_n_0 }),
        .O({\counter_sig_reg[0]_i_1_n_4 ,\counter_sig_reg[0]_i_1_n_5 ,\counter_sig_reg[0]_i_1_n_6 ,\counter_sig_reg[0]_i_1_n_7 }),
        .S({\counter_sig[0]_i_3_n_0 ,\counter_sig[0]_i_4_n_0 ,\counter_sig[0]_i_5_n_0 ,\counter_sig[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[10] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[8]_i_1_n_5 ),
        .Q(counter_sig_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[11] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[8]_i_1_n_4 ),
        .Q(counter_sig_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[12] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[12]_i_1_n_7 ),
        .Q(counter_sig_reg[12]));
  CARRY4 \counter_sig_reg[12]_i_1 
       (.CI(\counter_sig_reg[8]_i_1_n_0 ),
        .CO({\counter_sig_reg[12]_i_1_n_0 ,\counter_sig_reg[12]_i_1_n_1 ,\counter_sig_reg[12]_i_1_n_2 ,\counter_sig_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_sig_reg[12]_i_1_n_4 ,\counter_sig_reg[12]_i_1_n_5 ,\counter_sig_reg[12]_i_1_n_6 ,\counter_sig_reg[12]_i_1_n_7 }),
        .S({\counter_sig[12]_i_2_n_0 ,\counter_sig[12]_i_3_n_0 ,\counter_sig[12]_i_4_n_0 ,\counter_sig[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[13] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[12]_i_1_n_6 ),
        .Q(counter_sig_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[14] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[12]_i_1_n_5 ),
        .Q(counter_sig_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[15] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[12]_i_1_n_4 ),
        .Q(counter_sig_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[16] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[16]_i_1_n_7 ),
        .Q(counter_sig_reg[16]));
  CARRY4 \counter_sig_reg[16]_i_1 
       (.CI(\counter_sig_reg[12]_i_1_n_0 ),
        .CO({\counter_sig_reg[16]_i_1_n_0 ,\counter_sig_reg[16]_i_1_n_1 ,\counter_sig_reg[16]_i_1_n_2 ,\counter_sig_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_sig_reg[16]_i_1_n_4 ,\counter_sig_reg[16]_i_1_n_5 ,\counter_sig_reg[16]_i_1_n_6 ,\counter_sig_reg[16]_i_1_n_7 }),
        .S({\counter_sig[16]_i_2_n_0 ,\counter_sig[16]_i_3_n_0 ,\counter_sig[16]_i_4_n_0 ,\counter_sig[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[17] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[16]_i_1_n_6 ),
        .Q(counter_sig_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[18] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[16]_i_1_n_5 ),
        .Q(counter_sig_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[19] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[16]_i_1_n_4 ),
        .Q(counter_sig_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[1] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[0]_i_1_n_6 ),
        .Q(counter_sig_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[20] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[20]_i_1_n_7 ),
        .Q(counter_sig_reg[20]));
  CARRY4 \counter_sig_reg[20]_i_1 
       (.CI(\counter_sig_reg[16]_i_1_n_0 ),
        .CO({\counter_sig_reg[20]_i_1_n_0 ,\counter_sig_reg[20]_i_1_n_1 ,\counter_sig_reg[20]_i_1_n_2 ,\counter_sig_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_sig_reg[20]_i_1_n_4 ,\counter_sig_reg[20]_i_1_n_5 ,\counter_sig_reg[20]_i_1_n_6 ,\counter_sig_reg[20]_i_1_n_7 }),
        .S({\counter_sig[20]_i_2_n_0 ,\counter_sig[20]_i_3_n_0 ,\counter_sig[20]_i_4_n_0 ,\counter_sig[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[21] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[20]_i_1_n_6 ),
        .Q(counter_sig_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[22] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[20]_i_1_n_5 ),
        .Q(counter_sig_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[23] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[20]_i_1_n_4 ),
        .Q(counter_sig_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[24] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[24]_i_1_n_7 ),
        .Q(counter_sig_reg[24]));
  CARRY4 \counter_sig_reg[24]_i_1 
       (.CI(\counter_sig_reg[20]_i_1_n_0 ),
        .CO({\NLW_counter_sig_reg[24]_i_1_CO_UNCONNECTED [3:2],\counter_sig_reg[24]_i_1_n_2 ,\counter_sig_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_sig_reg[24]_i_1_O_UNCONNECTED [3],\counter_sig_reg[24]_i_1_n_5 ,\counter_sig_reg[24]_i_1_n_6 ,\counter_sig_reg[24]_i_1_n_7 }),
        .S({1'b0,\counter_sig[24]_i_2_n_0 ,\counter_sig[24]_i_3_n_0 ,\counter_sig[24]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[25] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[24]_i_1_n_6 ),
        .Q(counter_sig_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[26] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[24]_i_1_n_5 ),
        .Q(counter_sig_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[2] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[0]_i_1_n_5 ),
        .Q(counter_sig_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[3] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[0]_i_1_n_4 ),
        .Q(counter_sig_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[4] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[4]_i_1_n_7 ),
        .Q(counter_sig_reg[4]));
  CARRY4 \counter_sig_reg[4]_i_1 
       (.CI(\counter_sig_reg[0]_i_1_n_0 ),
        .CO({\counter_sig_reg[4]_i_1_n_0 ,\counter_sig_reg[4]_i_1_n_1 ,\counter_sig_reg[4]_i_1_n_2 ,\counter_sig_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_sig_reg[4]_i_1_n_4 ,\counter_sig_reg[4]_i_1_n_5 ,\counter_sig_reg[4]_i_1_n_6 ,\counter_sig_reg[4]_i_1_n_7 }),
        .S({\counter_sig[4]_i_2_n_0 ,\counter_sig[4]_i_3_n_0 ,\counter_sig[4]_i_4_n_0 ,\counter_sig[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[5] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[4]_i_1_n_6 ),
        .Q(counter_sig_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[6] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[4]_i_1_n_5 ),
        .Q(counter_sig_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[7] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[4]_i_1_n_4 ),
        .Q(counter_sig_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[8] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[8]_i_1_n_7 ),
        .Q(counter_sig_reg[8]));
  CARRY4 \counter_sig_reg[8]_i_1 
       (.CI(\counter_sig_reg[4]_i_1_n_0 ),
        .CO({\counter_sig_reg[8]_i_1_n_0 ,\counter_sig_reg[8]_i_1_n_1 ,\counter_sig_reg[8]_i_1_n_2 ,\counter_sig_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_sig_reg[8]_i_1_n_4 ,\counter_sig_reg[8]_i_1_n_5 ,\counter_sig_reg[8]_i_1_n_6 ,\counter_sig_reg[8]_i_1_n_7 }),
        .S({\counter_sig[8]_i_2_n_0 ,\counter_sig[8]_i_3_n_0 ,\counter_sig[8]_i_4_n_0 ,\counter_sig[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sig_reg[9] 
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(\counter_sig_reg[8]_i_1_n_6 ),
        .Q(counter_sig_reg[9]));
  CARRY4 output_sig1__8_carry
       (.CI(1'b0),
        .CO({output_sig1__8_carry_n_0,output_sig1__8_carry_n_1,output_sig1__8_carry_n_2,output_sig1__8_carry_n_3}),
        .CYINIT(1'b1),
        .DI({output_sig1__8_carry_i_1_n_0,output_sig1__8_carry_i_2_n_0,output_sig1__8_carry_i_3_n_0,output_sig1__8_carry_i_4_n_0}),
        .O(NLW_output_sig1__8_carry_O_UNCONNECTED[3:0]),
        .S({output_sig1__8_carry_i_5_n_0,output_sig1__8_carry_i_6_n_0,output_sig1__8_carry_i_7_n_0,output_sig1__8_carry_i_8_n_0}));
  CARRY4 output_sig1__8_carry__0
       (.CI(output_sig1__8_carry_n_0),
        .CO({output_sig1__8_carry__0_n_0,output_sig1__8_carry__0_n_1,output_sig1__8_carry__0_n_2,output_sig1__8_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({output_sig1__8_carry__0_i_1_n_0,output_sig1__8_carry__0_i_2_n_0,output_sig1__8_carry__0_i_3_n_0,output_sig1__8_carry__0_i_4_n_0}),
        .O(NLW_output_sig1__8_carry__0_O_UNCONNECTED[3:0]),
        .S({output_sig1__8_carry__0_i_5_n_0,output_sig1__8_carry__0_i_6_n_0,output_sig1__8_carry__0_i_7_n_0,output_sig1__8_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    output_sig1__8_carry__0_i_1
       (.I0(counter_sig_reg[14]),
        .I1(DUTY[14]),
        .I2(DUTY[15]),
        .I3(counter_sig_reg[15]),
        .O(output_sig1__8_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    output_sig1__8_carry__0_i_2
       (.I0(counter_sig_reg[12]),
        .I1(DUTY[12]),
        .I2(DUTY[13]),
        .I3(counter_sig_reg[13]),
        .O(output_sig1__8_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    output_sig1__8_carry__0_i_3
       (.I0(counter_sig_reg[10]),
        .I1(DUTY[10]),
        .I2(DUTY[11]),
        .I3(counter_sig_reg[11]),
        .O(output_sig1__8_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    output_sig1__8_carry__0_i_4
       (.I0(counter_sig_reg[8]),
        .I1(DUTY[8]),
        .I2(DUTY[9]),
        .I3(counter_sig_reg[9]),
        .O(output_sig1__8_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output_sig1__8_carry__0_i_5
       (.I0(counter_sig_reg[14]),
        .I1(DUTY[14]),
        .I2(counter_sig_reg[15]),
        .I3(DUTY[15]),
        .O(output_sig1__8_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output_sig1__8_carry__0_i_6
       (.I0(counter_sig_reg[12]),
        .I1(DUTY[12]),
        .I2(counter_sig_reg[13]),
        .I3(DUTY[13]),
        .O(output_sig1__8_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output_sig1__8_carry__0_i_7
       (.I0(counter_sig_reg[10]),
        .I1(DUTY[10]),
        .I2(counter_sig_reg[11]),
        .I3(DUTY[11]),
        .O(output_sig1__8_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output_sig1__8_carry__0_i_8
       (.I0(counter_sig_reg[8]),
        .I1(DUTY[8]),
        .I2(counter_sig_reg[9]),
        .I3(DUTY[9]),
        .O(output_sig1__8_carry__0_i_8_n_0));
  CARRY4 output_sig1__8_carry__1
       (.CI(output_sig1__8_carry__0_n_0),
        .CO({output_sig1__8_carry__1_n_0,output_sig1__8_carry__1_n_1,output_sig1__8_carry__1_n_2,output_sig1__8_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({output_sig1__8_carry__1_i_1_n_0,output_sig1__8_carry__1_i_2_n_0,output_sig1__8_carry__1_i_3_n_0,output_sig1__8_carry__1_i_4_n_0}),
        .O(NLW_output_sig1__8_carry__1_O_UNCONNECTED[3:0]),
        .S({output_sig1__8_carry__1_i_5_n_0,output_sig1__8_carry__1_i_6_n_0,output_sig1__8_carry__1_i_7_n_0,output_sig1__8_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    output_sig1__8_carry__1_i_1
       (.I0(counter_sig_reg[22]),
        .I1(DUTY[22]),
        .I2(DUTY[23]),
        .I3(counter_sig_reg[23]),
        .O(output_sig1__8_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    output_sig1__8_carry__1_i_2
       (.I0(counter_sig_reg[20]),
        .I1(DUTY[20]),
        .I2(DUTY[21]),
        .I3(counter_sig_reg[21]),
        .O(output_sig1__8_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    output_sig1__8_carry__1_i_3
       (.I0(counter_sig_reg[18]),
        .I1(DUTY[18]),
        .I2(DUTY[19]),
        .I3(counter_sig_reg[19]),
        .O(output_sig1__8_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    output_sig1__8_carry__1_i_4
       (.I0(counter_sig_reg[16]),
        .I1(DUTY[16]),
        .I2(DUTY[17]),
        .I3(counter_sig_reg[17]),
        .O(output_sig1__8_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output_sig1__8_carry__1_i_5
       (.I0(counter_sig_reg[22]),
        .I1(DUTY[22]),
        .I2(counter_sig_reg[23]),
        .I3(DUTY[23]),
        .O(output_sig1__8_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output_sig1__8_carry__1_i_6
       (.I0(counter_sig_reg[20]),
        .I1(DUTY[20]),
        .I2(counter_sig_reg[21]),
        .I3(DUTY[21]),
        .O(output_sig1__8_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output_sig1__8_carry__1_i_7
       (.I0(counter_sig_reg[18]),
        .I1(DUTY[18]),
        .I2(counter_sig_reg[19]),
        .I3(DUTY[19]),
        .O(output_sig1__8_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output_sig1__8_carry__1_i_8
       (.I0(counter_sig_reg[16]),
        .I1(DUTY[16]),
        .I2(counter_sig_reg[17]),
        .I3(DUTY[17]),
        .O(output_sig1__8_carry__1_i_8_n_0));
  CARRY4 output_sig1__8_carry__2
       (.CI(output_sig1__8_carry__1_n_0),
        .CO({NLW_output_sig1__8_carry__2_CO_UNCONNECTED[3:2],output_sig1,output_sig1__8_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter_sig_reg[26],output_sig1__8_carry__2_i_1_n_0}),
        .O(NLW_output_sig1__8_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,output_sig1__8_carry__2_i_2_n_0,output_sig1__8_carry__2_i_3_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    output_sig1__8_carry__2_i_1
       (.I0(counter_sig_reg[24]),
        .I1(DUTY[24]),
        .I2(DUTY[25]),
        .I3(counter_sig_reg[25]),
        .O(output_sig1__8_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    output_sig1__8_carry__2_i_2
       (.I0(counter_sig_reg[26]),
        .O(output_sig1__8_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output_sig1__8_carry__2_i_3
       (.I0(counter_sig_reg[24]),
        .I1(DUTY[24]),
        .I2(counter_sig_reg[25]),
        .I3(DUTY[25]),
        .O(output_sig1__8_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    output_sig1__8_carry_i_1
       (.I0(counter_sig_reg[6]),
        .I1(DUTY[6]),
        .I2(DUTY[7]),
        .I3(counter_sig_reg[7]),
        .O(output_sig1__8_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    output_sig1__8_carry_i_2
       (.I0(counter_sig_reg[4]),
        .I1(DUTY[4]),
        .I2(DUTY[5]),
        .I3(counter_sig_reg[5]),
        .O(output_sig1__8_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    output_sig1__8_carry_i_3
       (.I0(counter_sig_reg[2]),
        .I1(DUTY[2]),
        .I2(DUTY[3]),
        .I3(counter_sig_reg[3]),
        .O(output_sig1__8_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    output_sig1__8_carry_i_4
       (.I0(counter_sig_reg[0]),
        .I1(DUTY[0]),
        .I2(DUTY[1]),
        .I3(counter_sig_reg[1]),
        .O(output_sig1__8_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output_sig1__8_carry_i_5
       (.I0(counter_sig_reg[6]),
        .I1(DUTY[6]),
        .I2(counter_sig_reg[7]),
        .I3(DUTY[7]),
        .O(output_sig1__8_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output_sig1__8_carry_i_6
       (.I0(counter_sig_reg[4]),
        .I1(DUTY[4]),
        .I2(counter_sig_reg[5]),
        .I3(DUTY[5]),
        .O(output_sig1__8_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output_sig1__8_carry_i_7
       (.I0(counter_sig_reg[2]),
        .I1(DUTY[2]),
        .I2(counter_sig_reg[3]),
        .I3(DUTY[3]),
        .O(output_sig1__8_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    output_sig1__8_carry_i_8
       (.I0(counter_sig_reg[0]),
        .I1(DUTY[0]),
        .I2(counter_sig_reg[1]),
        .I3(DUTY[1]),
        .O(output_sig1__8_carry_i_8_n_0));
  CARRY4 output_sig1_carry
       (.CI(1'b0),
        .CO({output_sig1_carry_n_0,output_sig1_carry_n_1,output_sig1_carry_n_2,output_sig1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_output_sig1_carry_O_UNCONNECTED[3:0]),
        .S({output_sig1_carry_i_1_n_0,output_sig1_carry_i_2_n_0,output_sig1_carry_i_3_n_0,output_sig1_carry_i_4_n_0}));
  CARRY4 output_sig1_carry__0
       (.CI(output_sig1_carry_n_0),
        .CO({output_sig1_carry__0_n_0,output_sig1_carry__0_n_1,output_sig1_carry__0_n_2,output_sig1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_output_sig1_carry__0_O_UNCONNECTED[3:0]),
        .S({output_sig1_carry__0_i_1_n_0,output_sig1_carry__0_i_2_n_0,output_sig1_carry__0_i_3_n_0,output_sig1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    output_sig1_carry__0_i_1
       (.I0(counter_sig_reg[21]),
        .I1(PERIOD[21]),
        .I2(PERIOD[23]),
        .I3(counter_sig_reg[23]),
        .I4(PERIOD[22]),
        .I5(counter_sig_reg[22]),
        .O(output_sig1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    output_sig1_carry__0_i_2
       (.I0(counter_sig_reg[18]),
        .I1(PERIOD[18]),
        .I2(PERIOD[20]),
        .I3(counter_sig_reg[20]),
        .I4(PERIOD[19]),
        .I5(counter_sig_reg[19]),
        .O(output_sig1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    output_sig1_carry__0_i_3
       (.I0(counter_sig_reg[15]),
        .I1(PERIOD[15]),
        .I2(PERIOD[17]),
        .I3(counter_sig_reg[17]),
        .I4(PERIOD[16]),
        .I5(counter_sig_reg[16]),
        .O(output_sig1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    output_sig1_carry__0_i_4
       (.I0(counter_sig_reg[12]),
        .I1(PERIOD[12]),
        .I2(PERIOD[14]),
        .I3(counter_sig_reg[14]),
        .I4(PERIOD[13]),
        .I5(counter_sig_reg[13]),
        .O(output_sig1_carry__0_i_4_n_0));
  CARRY4 output_sig1_carry__1
       (.CI(output_sig1_carry__0_n_0),
        .CO({NLW_output_sig1_carry__1_CO_UNCONNECTED[3:1],output_sig1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_output_sig1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,output_sig1_carry__1_i_1_n_0}));
  LUT5 #(
    .INIT(32'h09000009)) 
    output_sig1_carry__1_i_1
       (.I0(counter_sig_reg[24]),
        .I1(PERIOD[24]),
        .I2(counter_sig_reg[26]),
        .I3(PERIOD[25]),
        .I4(counter_sig_reg[25]),
        .O(output_sig1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    output_sig1_carry_i_1
       (.I0(counter_sig_reg[9]),
        .I1(PERIOD[9]),
        .I2(PERIOD[11]),
        .I3(counter_sig_reg[11]),
        .I4(PERIOD[10]),
        .I5(counter_sig_reg[10]),
        .O(output_sig1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    output_sig1_carry_i_2
       (.I0(counter_sig_reg[6]),
        .I1(PERIOD[6]),
        .I2(PERIOD[8]),
        .I3(counter_sig_reg[8]),
        .I4(PERIOD[7]),
        .I5(counter_sig_reg[7]),
        .O(output_sig1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    output_sig1_carry_i_3
       (.I0(counter_sig_reg[3]),
        .I1(PERIOD[3]),
        .I2(PERIOD[5]),
        .I3(counter_sig_reg[5]),
        .I4(PERIOD[4]),
        .I5(counter_sig_reg[4]),
        .O(output_sig1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    output_sig1_carry_i_4
       (.I0(counter_sig_reg[0]),
        .I1(PERIOD[0]),
        .I2(PERIOD[2]),
        .I3(counter_sig_reg[2]),
        .I4(PERIOD[1]),
        .I5(counter_sig_reg[1]),
        .O(output_sig1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    output_sig_i_1
       (.I0(output_sig1_carry__1_n_3),
        .I1(output_sig1),
        .O(output_sig_i_1_n_0));
  FDCE output_sig_reg
       (.C(CLOCK),
        .CE(en),
        .CLR(reset),
        .D(output_sig_i_1_n_0),
        .Q(PWM));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
