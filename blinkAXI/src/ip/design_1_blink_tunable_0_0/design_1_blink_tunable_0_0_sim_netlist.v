// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Feb 18 18:05:53 2020
// Host        : ECTET-1360-13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               s:/post/blinkAXI/src/ip/design_1_blink_tunable_0_0/design_1_blink_tunable_0_0_sim_netlist.v
// Design      : design_1_blink_tunable_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blink_tunable_0_0,blink_tunable,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "blink_tunable,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_blink_tunable_0_0
   (clk,
    reset,
    max_count,
    \output );
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [26:0]max_count;
  output \output ;

  wire clk;
  wire [26:0]max_count;
  wire \output ;
  wire reset;

  design_1_blink_tunable_0_0_blink_tunable U0
       (.clk(clk),
        .max_count(max_count),
        .\output (\output ),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "blink_tunable" *) 
module design_1_blink_tunable_0_0_blink_tunable
   (\output ,
    clk,
    reset,
    max_count);
  output \output ;
  input clk;
  input reset;
  input [26:0]max_count;

  wire clk;
  wire count_sig1_carry__0_i_1_n_0;
  wire count_sig1_carry__0_i_2_n_0;
  wire count_sig1_carry__0_i_3_n_0;
  wire count_sig1_carry__0_i_4_n_0;
  wire count_sig1_carry__0_n_0;
  wire count_sig1_carry__0_n_1;
  wire count_sig1_carry__0_n_2;
  wire count_sig1_carry__0_n_3;
  wire count_sig1_carry__1_i_1_n_0;
  wire count_sig1_carry_i_1_n_0;
  wire count_sig1_carry_i_2_n_0;
  wire count_sig1_carry_i_3_n_0;
  wire count_sig1_carry_i_4_n_0;
  wire count_sig1_carry_n_0;
  wire count_sig1_carry_n_1;
  wire count_sig1_carry_n_2;
  wire count_sig1_carry_n_3;
  wire \count_sig[0]_i_2_n_0 ;
  wire \count_sig[0]_i_3_n_0 ;
  wire \count_sig[0]_i_4_n_0 ;
  wire \count_sig[0]_i_5_n_0 ;
  wire \count_sig[0]_i_6_n_0 ;
  wire \count_sig[12]_i_2_n_0 ;
  wire \count_sig[12]_i_3_n_0 ;
  wire \count_sig[12]_i_4_n_0 ;
  wire \count_sig[12]_i_5_n_0 ;
  wire \count_sig[16]_i_2_n_0 ;
  wire \count_sig[16]_i_3_n_0 ;
  wire \count_sig[16]_i_4_n_0 ;
  wire \count_sig[16]_i_5_n_0 ;
  wire \count_sig[20]_i_2_n_0 ;
  wire \count_sig[20]_i_3_n_0 ;
  wire \count_sig[20]_i_4_n_0 ;
  wire \count_sig[20]_i_5_n_0 ;
  wire \count_sig[24]_i_2_n_0 ;
  wire \count_sig[24]_i_3_n_0 ;
  wire \count_sig[24]_i_4_n_0 ;
  wire \count_sig[4]_i_2_n_0 ;
  wire \count_sig[4]_i_3_n_0 ;
  wire \count_sig[4]_i_4_n_0 ;
  wire \count_sig[4]_i_5_n_0 ;
  wire \count_sig[8]_i_2_n_0 ;
  wire \count_sig[8]_i_3_n_0 ;
  wire \count_sig[8]_i_4_n_0 ;
  wire \count_sig[8]_i_5_n_0 ;
  wire [26:0]count_sig_reg;
  wire \count_sig_reg[0]_i_1_n_0 ;
  wire \count_sig_reg[0]_i_1_n_1 ;
  wire \count_sig_reg[0]_i_1_n_2 ;
  wire \count_sig_reg[0]_i_1_n_3 ;
  wire \count_sig_reg[0]_i_1_n_4 ;
  wire \count_sig_reg[0]_i_1_n_5 ;
  wire \count_sig_reg[0]_i_1_n_6 ;
  wire \count_sig_reg[0]_i_1_n_7 ;
  wire \count_sig_reg[12]_i_1_n_0 ;
  wire \count_sig_reg[12]_i_1_n_1 ;
  wire \count_sig_reg[12]_i_1_n_2 ;
  wire \count_sig_reg[12]_i_1_n_3 ;
  wire \count_sig_reg[12]_i_1_n_4 ;
  wire \count_sig_reg[12]_i_1_n_5 ;
  wire \count_sig_reg[12]_i_1_n_6 ;
  wire \count_sig_reg[12]_i_1_n_7 ;
  wire \count_sig_reg[16]_i_1_n_0 ;
  wire \count_sig_reg[16]_i_1_n_1 ;
  wire \count_sig_reg[16]_i_1_n_2 ;
  wire \count_sig_reg[16]_i_1_n_3 ;
  wire \count_sig_reg[16]_i_1_n_4 ;
  wire \count_sig_reg[16]_i_1_n_5 ;
  wire \count_sig_reg[16]_i_1_n_6 ;
  wire \count_sig_reg[16]_i_1_n_7 ;
  wire \count_sig_reg[20]_i_1_n_0 ;
  wire \count_sig_reg[20]_i_1_n_1 ;
  wire \count_sig_reg[20]_i_1_n_2 ;
  wire \count_sig_reg[20]_i_1_n_3 ;
  wire \count_sig_reg[20]_i_1_n_4 ;
  wire \count_sig_reg[20]_i_1_n_5 ;
  wire \count_sig_reg[20]_i_1_n_6 ;
  wire \count_sig_reg[20]_i_1_n_7 ;
  wire \count_sig_reg[24]_i_1_n_2 ;
  wire \count_sig_reg[24]_i_1_n_3 ;
  wire \count_sig_reg[24]_i_1_n_5 ;
  wire \count_sig_reg[24]_i_1_n_6 ;
  wire \count_sig_reg[24]_i_1_n_7 ;
  wire \count_sig_reg[4]_i_1_n_0 ;
  wire \count_sig_reg[4]_i_1_n_1 ;
  wire \count_sig_reg[4]_i_1_n_2 ;
  wire \count_sig_reg[4]_i_1_n_3 ;
  wire \count_sig_reg[4]_i_1_n_4 ;
  wire \count_sig_reg[4]_i_1_n_5 ;
  wire \count_sig_reg[4]_i_1_n_6 ;
  wire \count_sig_reg[4]_i_1_n_7 ;
  wire \count_sig_reg[8]_i_1_n_0 ;
  wire \count_sig_reg[8]_i_1_n_1 ;
  wire \count_sig_reg[8]_i_1_n_2 ;
  wire \count_sig_reg[8]_i_1_n_3 ;
  wire \count_sig_reg[8]_i_1_n_4 ;
  wire \count_sig_reg[8]_i_1_n_5 ;
  wire \count_sig_reg[8]_i_1_n_6 ;
  wire \count_sig_reg[8]_i_1_n_7 ;
  wire load;
  wire [26:0]max_count;
  wire \output ;
  wire output_sig_i_1_n_0;
  wire reset;
  wire [3:0]NLW_count_sig1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count_sig1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_count_sig1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count_sig1_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_count_sig_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_sig_reg[24]_i_1_O_UNCONNECTED ;

  CARRY4 count_sig1_carry
       (.CI(1'b0),
        .CO({count_sig1_carry_n_0,count_sig1_carry_n_1,count_sig1_carry_n_2,count_sig1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count_sig1_carry_O_UNCONNECTED[3:0]),
        .S({count_sig1_carry_i_1_n_0,count_sig1_carry_i_2_n_0,count_sig1_carry_i_3_n_0,count_sig1_carry_i_4_n_0}));
  CARRY4 count_sig1_carry__0
       (.CI(count_sig1_carry_n_0),
        .CO({count_sig1_carry__0_n_0,count_sig1_carry__0_n_1,count_sig1_carry__0_n_2,count_sig1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count_sig1_carry__0_O_UNCONNECTED[3:0]),
        .S({count_sig1_carry__0_i_1_n_0,count_sig1_carry__0_i_2_n_0,count_sig1_carry__0_i_3_n_0,count_sig1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count_sig1_carry__0_i_1
       (.I0(count_sig_reg[21]),
        .I1(max_count[21]),
        .I2(max_count[23]),
        .I3(count_sig_reg[23]),
        .I4(max_count[22]),
        .I5(count_sig_reg[22]),
        .O(count_sig1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count_sig1_carry__0_i_2
       (.I0(count_sig_reg[18]),
        .I1(max_count[18]),
        .I2(max_count[20]),
        .I3(count_sig_reg[20]),
        .I4(max_count[19]),
        .I5(count_sig_reg[19]),
        .O(count_sig1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count_sig1_carry__0_i_3
       (.I0(count_sig_reg[15]),
        .I1(max_count[15]),
        .I2(max_count[17]),
        .I3(count_sig_reg[17]),
        .I4(max_count[16]),
        .I5(count_sig_reg[16]),
        .O(count_sig1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count_sig1_carry__0_i_4
       (.I0(count_sig_reg[12]),
        .I1(max_count[12]),
        .I2(max_count[14]),
        .I3(count_sig_reg[14]),
        .I4(max_count[13]),
        .I5(count_sig_reg[13]),
        .O(count_sig1_carry__0_i_4_n_0));
  CARRY4 count_sig1_carry__1
       (.CI(count_sig1_carry__0_n_0),
        .CO({NLW_count_sig1_carry__1_CO_UNCONNECTED[3:1],load}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count_sig1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,count_sig1_carry__1_i_1_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count_sig1_carry__1_i_1
       (.I0(count_sig_reg[24]),
        .I1(max_count[24]),
        .I2(max_count[26]),
        .I3(count_sig_reg[26]),
        .I4(max_count[25]),
        .I5(count_sig_reg[25]),
        .O(count_sig1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count_sig1_carry_i_1
       (.I0(count_sig_reg[9]),
        .I1(max_count[9]),
        .I2(max_count[11]),
        .I3(count_sig_reg[11]),
        .I4(max_count[10]),
        .I5(count_sig_reg[10]),
        .O(count_sig1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count_sig1_carry_i_2
       (.I0(count_sig_reg[6]),
        .I1(max_count[6]),
        .I2(max_count[8]),
        .I3(count_sig_reg[8]),
        .I4(max_count[7]),
        .I5(count_sig_reg[7]),
        .O(count_sig1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count_sig1_carry_i_3
       (.I0(count_sig_reg[3]),
        .I1(max_count[3]),
        .I2(max_count[5]),
        .I3(count_sig_reg[5]),
        .I4(max_count[4]),
        .I5(count_sig_reg[4]),
        .O(count_sig1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count_sig1_carry_i_4
       (.I0(count_sig_reg[0]),
        .I1(max_count[0]),
        .I2(max_count[2]),
        .I3(count_sig_reg[2]),
        .I4(max_count[1]),
        .I5(count_sig_reg[1]),
        .O(count_sig1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[0]_i_2 
       (.I0(count_sig_reg[0]),
        .I1(load),
        .O(\count_sig[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[0]_i_3 
       (.I0(count_sig_reg[3]),
        .I1(load),
        .O(\count_sig[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[0]_i_4 
       (.I0(count_sig_reg[2]),
        .I1(load),
        .O(\count_sig[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[0]_i_5 
       (.I0(count_sig_reg[1]),
        .I1(load),
        .O(\count_sig[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count_sig[0]_i_6 
       (.I0(count_sig_reg[0]),
        .I1(load),
        .O(\count_sig[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[12]_i_2 
       (.I0(count_sig_reg[15]),
        .I1(load),
        .O(\count_sig[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[12]_i_3 
       (.I0(count_sig_reg[14]),
        .I1(load),
        .O(\count_sig[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[12]_i_4 
       (.I0(count_sig_reg[13]),
        .I1(load),
        .O(\count_sig[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[12]_i_5 
       (.I0(count_sig_reg[12]),
        .I1(load),
        .O(\count_sig[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[16]_i_2 
       (.I0(count_sig_reg[19]),
        .I1(load),
        .O(\count_sig[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[16]_i_3 
       (.I0(count_sig_reg[18]),
        .I1(load),
        .O(\count_sig[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[16]_i_4 
       (.I0(count_sig_reg[17]),
        .I1(load),
        .O(\count_sig[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[16]_i_5 
       (.I0(count_sig_reg[16]),
        .I1(load),
        .O(\count_sig[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[20]_i_2 
       (.I0(count_sig_reg[23]),
        .I1(load),
        .O(\count_sig[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[20]_i_3 
       (.I0(count_sig_reg[22]),
        .I1(load),
        .O(\count_sig[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[20]_i_4 
       (.I0(count_sig_reg[21]),
        .I1(load),
        .O(\count_sig[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[20]_i_5 
       (.I0(count_sig_reg[20]),
        .I1(load),
        .O(\count_sig[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[24]_i_2 
       (.I0(count_sig_reg[26]),
        .I1(load),
        .O(\count_sig[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[24]_i_3 
       (.I0(count_sig_reg[25]),
        .I1(load),
        .O(\count_sig[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[24]_i_4 
       (.I0(count_sig_reg[24]),
        .I1(load),
        .O(\count_sig[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[4]_i_2 
       (.I0(count_sig_reg[7]),
        .I1(load),
        .O(\count_sig[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[4]_i_3 
       (.I0(count_sig_reg[6]),
        .I1(load),
        .O(\count_sig[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[4]_i_4 
       (.I0(count_sig_reg[5]),
        .I1(load),
        .O(\count_sig[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[4]_i_5 
       (.I0(count_sig_reg[4]),
        .I1(load),
        .O(\count_sig[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[8]_i_2 
       (.I0(count_sig_reg[11]),
        .I1(load),
        .O(\count_sig[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[8]_i_3 
       (.I0(count_sig_reg[10]),
        .I1(load),
        .O(\count_sig[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[8]_i_4 
       (.I0(count_sig_reg[9]),
        .I1(load),
        .O(\count_sig[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_sig[8]_i_5 
       (.I0(count_sig_reg[8]),
        .I1(load),
        .O(\count_sig[8]_i_5_n_0 ));
  FDCE \count_sig_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[0]_i_1_n_7 ),
        .Q(count_sig_reg[0]));
  CARRY4 \count_sig_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_sig_reg[0]_i_1_n_0 ,\count_sig_reg[0]_i_1_n_1 ,\count_sig_reg[0]_i_1_n_2 ,\count_sig_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count_sig[0]_i_2_n_0 }),
        .O({\count_sig_reg[0]_i_1_n_4 ,\count_sig_reg[0]_i_1_n_5 ,\count_sig_reg[0]_i_1_n_6 ,\count_sig_reg[0]_i_1_n_7 }),
        .S({\count_sig[0]_i_3_n_0 ,\count_sig[0]_i_4_n_0 ,\count_sig[0]_i_5_n_0 ,\count_sig[0]_i_6_n_0 }));
  FDCE \count_sig_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[8]_i_1_n_5 ),
        .Q(count_sig_reg[10]));
  FDCE \count_sig_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[8]_i_1_n_4 ),
        .Q(count_sig_reg[11]));
  FDCE \count_sig_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[12]_i_1_n_7 ),
        .Q(count_sig_reg[12]));
  CARRY4 \count_sig_reg[12]_i_1 
       (.CI(\count_sig_reg[8]_i_1_n_0 ),
        .CO({\count_sig_reg[12]_i_1_n_0 ,\count_sig_reg[12]_i_1_n_1 ,\count_sig_reg[12]_i_1_n_2 ,\count_sig_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[12]_i_1_n_4 ,\count_sig_reg[12]_i_1_n_5 ,\count_sig_reg[12]_i_1_n_6 ,\count_sig_reg[12]_i_1_n_7 }),
        .S({\count_sig[12]_i_2_n_0 ,\count_sig[12]_i_3_n_0 ,\count_sig[12]_i_4_n_0 ,\count_sig[12]_i_5_n_0 }));
  FDCE \count_sig_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[12]_i_1_n_6 ),
        .Q(count_sig_reg[13]));
  FDCE \count_sig_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[12]_i_1_n_5 ),
        .Q(count_sig_reg[14]));
  FDCE \count_sig_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[12]_i_1_n_4 ),
        .Q(count_sig_reg[15]));
  FDCE \count_sig_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[16]_i_1_n_7 ),
        .Q(count_sig_reg[16]));
  CARRY4 \count_sig_reg[16]_i_1 
       (.CI(\count_sig_reg[12]_i_1_n_0 ),
        .CO({\count_sig_reg[16]_i_1_n_0 ,\count_sig_reg[16]_i_1_n_1 ,\count_sig_reg[16]_i_1_n_2 ,\count_sig_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[16]_i_1_n_4 ,\count_sig_reg[16]_i_1_n_5 ,\count_sig_reg[16]_i_1_n_6 ,\count_sig_reg[16]_i_1_n_7 }),
        .S({\count_sig[16]_i_2_n_0 ,\count_sig[16]_i_3_n_0 ,\count_sig[16]_i_4_n_0 ,\count_sig[16]_i_5_n_0 }));
  FDCE \count_sig_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[16]_i_1_n_6 ),
        .Q(count_sig_reg[17]));
  FDCE \count_sig_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[16]_i_1_n_5 ),
        .Q(count_sig_reg[18]));
  FDCE \count_sig_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[16]_i_1_n_4 ),
        .Q(count_sig_reg[19]));
  FDCE \count_sig_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[0]_i_1_n_6 ),
        .Q(count_sig_reg[1]));
  FDCE \count_sig_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[20]_i_1_n_7 ),
        .Q(count_sig_reg[20]));
  CARRY4 \count_sig_reg[20]_i_1 
       (.CI(\count_sig_reg[16]_i_1_n_0 ),
        .CO({\count_sig_reg[20]_i_1_n_0 ,\count_sig_reg[20]_i_1_n_1 ,\count_sig_reg[20]_i_1_n_2 ,\count_sig_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[20]_i_1_n_4 ,\count_sig_reg[20]_i_1_n_5 ,\count_sig_reg[20]_i_1_n_6 ,\count_sig_reg[20]_i_1_n_7 }),
        .S({\count_sig[20]_i_2_n_0 ,\count_sig[20]_i_3_n_0 ,\count_sig[20]_i_4_n_0 ,\count_sig[20]_i_5_n_0 }));
  FDCE \count_sig_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[20]_i_1_n_6 ),
        .Q(count_sig_reg[21]));
  FDCE \count_sig_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[20]_i_1_n_5 ),
        .Q(count_sig_reg[22]));
  FDCE \count_sig_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[20]_i_1_n_4 ),
        .Q(count_sig_reg[23]));
  FDCE \count_sig_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[24]_i_1_n_7 ),
        .Q(count_sig_reg[24]));
  CARRY4 \count_sig_reg[24]_i_1 
       (.CI(\count_sig_reg[20]_i_1_n_0 ),
        .CO({\NLW_count_sig_reg[24]_i_1_CO_UNCONNECTED [3:2],\count_sig_reg[24]_i_1_n_2 ,\count_sig_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_sig_reg[24]_i_1_O_UNCONNECTED [3],\count_sig_reg[24]_i_1_n_5 ,\count_sig_reg[24]_i_1_n_6 ,\count_sig_reg[24]_i_1_n_7 }),
        .S({1'b0,\count_sig[24]_i_2_n_0 ,\count_sig[24]_i_3_n_0 ,\count_sig[24]_i_4_n_0 }));
  FDCE \count_sig_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[24]_i_1_n_6 ),
        .Q(count_sig_reg[25]));
  FDCE \count_sig_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[24]_i_1_n_5 ),
        .Q(count_sig_reg[26]));
  FDCE \count_sig_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[0]_i_1_n_5 ),
        .Q(count_sig_reg[2]));
  FDCE \count_sig_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[0]_i_1_n_4 ),
        .Q(count_sig_reg[3]));
  FDCE \count_sig_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[4]_i_1_n_7 ),
        .Q(count_sig_reg[4]));
  CARRY4 \count_sig_reg[4]_i_1 
       (.CI(\count_sig_reg[0]_i_1_n_0 ),
        .CO({\count_sig_reg[4]_i_1_n_0 ,\count_sig_reg[4]_i_1_n_1 ,\count_sig_reg[4]_i_1_n_2 ,\count_sig_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[4]_i_1_n_4 ,\count_sig_reg[4]_i_1_n_5 ,\count_sig_reg[4]_i_1_n_6 ,\count_sig_reg[4]_i_1_n_7 }),
        .S({\count_sig[4]_i_2_n_0 ,\count_sig[4]_i_3_n_0 ,\count_sig[4]_i_4_n_0 ,\count_sig[4]_i_5_n_0 }));
  FDCE \count_sig_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[4]_i_1_n_6 ),
        .Q(count_sig_reg[5]));
  FDCE \count_sig_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[4]_i_1_n_5 ),
        .Q(count_sig_reg[6]));
  FDCE \count_sig_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[4]_i_1_n_4 ),
        .Q(count_sig_reg[7]));
  FDCE \count_sig_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[8]_i_1_n_7 ),
        .Q(count_sig_reg[8]));
  CARRY4 \count_sig_reg[8]_i_1 
       (.CI(\count_sig_reg[4]_i_1_n_0 ),
        .CO({\count_sig_reg[8]_i_1_n_0 ,\count_sig_reg[8]_i_1_n_1 ,\count_sig_reg[8]_i_1_n_2 ,\count_sig_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[8]_i_1_n_4 ,\count_sig_reg[8]_i_1_n_5 ,\count_sig_reg[8]_i_1_n_6 ,\count_sig_reg[8]_i_1_n_7 }),
        .S({\count_sig[8]_i_2_n_0 ,\count_sig[8]_i_3_n_0 ,\count_sig[8]_i_4_n_0 ,\count_sig[8]_i_5_n_0 }));
  FDCE \count_sig_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_sig_reg[8]_i_1_n_6 ),
        .Q(count_sig_reg[9]));
  LUT2 #(
    .INIT(4'h6)) 
    output_sig_i_1
       (.I0(load),
        .I1(\output ),
        .O(output_sig_i_1_n_0));
  FDCE output_sig_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(output_sig_i_1_n_0),
        .Q(\output ));
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
