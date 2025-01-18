// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Fri Nov 15 16:19:17 2024
// Host        : DESKTOP-3024MKH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_7_rst_gen_0_0_sim_netlist.v
// Design      : zynq_7_rst_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rst_gen
   (rst_n,
    clk);
  output rst_n;
  input clk;

  wire clk;
  wire [23:1]data0;
  wire rst_n;
  wire rst_n_i_1_n_0;
  wire rst_n_i_2_n_0;
  wire rst_n_i_3_n_0;
  wire [23:0]time_count;
  wire time_count0_carry__0_n_0;
  wire time_count0_carry__0_n_1;
  wire time_count0_carry__0_n_2;
  wire time_count0_carry__0_n_3;
  wire time_count0_carry__1_n_0;
  wire time_count0_carry__1_n_1;
  wire time_count0_carry__1_n_2;
  wire time_count0_carry__1_n_3;
  wire time_count0_carry__2_n_0;
  wire time_count0_carry__2_n_1;
  wire time_count0_carry__2_n_2;
  wire time_count0_carry__2_n_3;
  wire time_count0_carry__3_n_0;
  wire time_count0_carry__3_n_1;
  wire time_count0_carry__3_n_2;
  wire time_count0_carry__3_n_3;
  wire time_count0_carry__4_n_2;
  wire time_count0_carry__4_n_3;
  wire time_count0_carry_n_0;
  wire time_count0_carry_n_1;
  wire time_count0_carry_n_2;
  wire time_count0_carry_n_3;
  wire \time_count[0]_i_1_n_0 ;
  wire \time_count[14]_i_1_n_0 ;
  wire \time_count[16]_i_1_n_0 ;
  wire \time_count[17]_i_1_n_0 ;
  wire \time_count[18]_i_1_n_0 ;
  wire \time_count[19]_i_1_n_0 ;
  wire \time_count[19]_i_2_n_0 ;
  wire \time_count[23]_i_10_n_0 ;
  wire \time_count[23]_i_11_n_0 ;
  wire \time_count[23]_i_12_n_0 ;
  wire \time_count[23]_i_13_n_0 ;
  wire \time_count[23]_i_1_n_0 ;
  wire \time_count[23]_i_3_n_0 ;
  wire \time_count[23]_i_4_n_0 ;
  wire \time_count[23]_i_5_n_0 ;
  wire \time_count[23]_i_6_n_0 ;
  wire \time_count[23]_i_7_n_0 ;
  wire \time_count[23]_i_8_n_0 ;
  wire \time_count[23]_i_9_n_0 ;
  wire \time_count[6]_i_1_n_0 ;
  wire \time_count[9]_i_1_n_0 ;
  wire time_count_0;
  wire [3:2]NLW_time_count0_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_time_count0_carry__4_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFB08)) 
    rst_n_i_1
       (.I0(time_count[22]),
        .I1(rst_n_i_2_n_0),
        .I2(rst_n_i_3_n_0),
        .I3(rst_n),
        .O(rst_n_i_1_n_0));
  LUT6 #(
    .INIT(64'h0100000000000008)) 
    rst_n_i_2
       (.I0(time_count[17]),
        .I1(time_count[16]),
        .I2(\time_count[23]_i_8_n_0 ),
        .I3(time_count[22]),
        .I4(time_count[11]),
        .I5(time_count[8]),
        .O(rst_n_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    rst_n_i_3
       (.I0(\time_count[23]_i_7_n_0 ),
        .I1(time_count[3]),
        .I2(time_count[2]),
        .I3(time_count[5]),
        .I4(time_count[4]),
        .I5(\time_count[23]_i_5_n_0 ),
        .O(rst_n_i_3_n_0));
  FDRE rst_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(rst_n_i_1_n_0),
        .Q(rst_n),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 time_count0_carry
       (.CI(1'b0),
        .CO({time_count0_carry_n_0,time_count0_carry_n_1,time_count0_carry_n_2,time_count0_carry_n_3}),
        .CYINIT(time_count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(time_count[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 time_count0_carry__0
       (.CI(time_count0_carry_n_0),
        .CO({time_count0_carry__0_n_0,time_count0_carry__0_n_1,time_count0_carry__0_n_2,time_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(time_count[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 time_count0_carry__1
       (.CI(time_count0_carry__0_n_0),
        .CO({time_count0_carry__1_n_0,time_count0_carry__1_n_1,time_count0_carry__1_n_2,time_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(time_count[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 time_count0_carry__2
       (.CI(time_count0_carry__1_n_0),
        .CO({time_count0_carry__2_n_0,time_count0_carry__2_n_1,time_count0_carry__2_n_2,time_count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(time_count[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 time_count0_carry__3
       (.CI(time_count0_carry__2_n_0),
        .CO({time_count0_carry__3_n_0,time_count0_carry__3_n_1,time_count0_carry__3_n_2,time_count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(time_count[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 time_count0_carry__4
       (.CI(time_count0_carry__3_n_0),
        .CO({NLW_time_count0_carry__4_CO_UNCONNECTED[3:2],time_count0_carry__4_n_2,time_count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_time_count0_carry__4_O_UNCONNECTED[3],data0[23:21]}),
        .S({1'b0,time_count[23:21]}));
  LUT5 #(
    .INIT(32'h30FFBA00)) 
    \time_count[0]_i_1 
       (.I0(\time_count[23]_i_3_n_0 ),
        .I1(rst_n_i_3_n_0),
        .I2(\time_count[19]_i_2_n_0 ),
        .I3(time_count_0),
        .I4(time_count[0]),
        .O(\time_count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF101010)) 
    \time_count[14]_i_1 
       (.I0(rst_n_i_3_n_0),
        .I1(\time_count[23]_i_8_n_0 ),
        .I2(\time_count[19]_i_2_n_0 ),
        .I3(\time_count[23]_i_3_n_0 ),
        .I4(data0[14]),
        .O(\time_count[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF101010)) 
    \time_count[16]_i_1 
       (.I0(rst_n_i_3_n_0),
        .I1(\time_count[23]_i_8_n_0 ),
        .I2(\time_count[19]_i_2_n_0 ),
        .I3(\time_count[23]_i_3_n_0 ),
        .I4(data0[16]),
        .O(\time_count[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF101010)) 
    \time_count[17]_i_1 
       (.I0(rst_n_i_3_n_0),
        .I1(\time_count[23]_i_8_n_0 ),
        .I2(\time_count[19]_i_2_n_0 ),
        .I3(\time_count[23]_i_3_n_0 ),
        .I4(data0[17]),
        .O(\time_count[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF101010)) 
    \time_count[18]_i_1 
       (.I0(rst_n_i_3_n_0),
        .I1(\time_count[23]_i_8_n_0 ),
        .I2(\time_count[19]_i_2_n_0 ),
        .I3(\time_count[23]_i_3_n_0 ),
        .I4(data0[18]),
        .O(\time_count[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF101010)) 
    \time_count[19]_i_1 
       (.I0(rst_n_i_3_n_0),
        .I1(\time_count[23]_i_8_n_0 ),
        .I2(\time_count[19]_i_2_n_0 ),
        .I3(\time_count[23]_i_3_n_0 ),
        .I4(data0[19]),
        .O(\time_count[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00042000)) 
    \time_count[19]_i_2 
       (.I0(time_count[8]),
        .I1(time_count[17]),
        .I2(time_count[22]),
        .I3(time_count[11]),
        .I4(time_count[16]),
        .O(\time_count[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \time_count[23]_i_1 
       (.I0(time_count_0),
        .I1(\time_count[23]_i_3_n_0 ),
        .O(\time_count[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    \time_count[23]_i_10 
       (.I0(time_count[3]),
        .I1(time_count[4]),
        .I2(time_count[0]),
        .I3(time_count[1]),
        .I4(time_count[2]),
        .O(\time_count[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7DFFFFFFFFFFFFBE)) 
    \time_count[23]_i_11 
       (.I0(time_count[20]),
        .I1(time_count[21]),
        .I2(time_count[22]),
        .I3(time_count[12]),
        .I4(time_count[13]),
        .I5(time_count[15]),
        .O(\time_count[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFFFFFFFF7FFE)) 
    \time_count[23]_i_12 
       (.I0(time_count[11]),
        .I1(time_count[12]),
        .I2(time_count[8]),
        .I3(time_count[10]),
        .I4(time_count[20]),
        .I5(time_count[21]),
        .O(\time_count[23]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \time_count[23]_i_13 
       (.I0(time_count[16]),
        .I1(time_count[17]),
        .O(\time_count[23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \time_count[23]_i_2 
       (.I0(\time_count[23]_i_4_n_0 ),
        .I1(time_count[8]),
        .I2(\time_count[23]_i_5_n_0 ),
        .I3(\time_count[23]_i_6_n_0 ),
        .I4(\time_count[23]_i_7_n_0 ),
        .I5(\time_count[23]_i_8_n_0 ),
        .O(time_count_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \time_count[23]_i_3 
       (.I0(\time_count[23]_i_9_n_0 ),
        .I1(\time_count[23]_i_10_n_0 ),
        .I2(\time_count[23]_i_11_n_0 ),
        .I3(\time_count[23]_i_12_n_0 ),
        .I4(\time_count[23]_i_8_n_0 ),
        .I5(\time_count[23]_i_13_n_0 ),
        .O(\time_count[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \time_count[23]_i_4 
       (.I0(time_count[11]),
        .I1(time_count[16]),
        .I2(time_count[22]),
        .I3(time_count[17]),
        .O(\time_count[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \time_count[23]_i_5 
       (.I0(time_count[21]),
        .I1(time_count[23]),
        .I2(time_count[15]),
        .I3(time_count[20]),
        .I4(time_count[1]),
        .I5(time_count[0]),
        .O(\time_count[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \time_count[23]_i_6 
       (.I0(time_count[3]),
        .I1(time_count[2]),
        .I2(time_count[5]),
        .I3(time_count[4]),
        .O(\time_count[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \time_count[23]_i_7 
       (.I0(time_count[10]),
        .I1(time_count[7]),
        .I2(time_count[13]),
        .I3(time_count[12]),
        .O(\time_count[23]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \time_count[23]_i_8 
       (.I0(time_count[6]),
        .I1(time_count[18]),
        .I2(time_count[19]),
        .I3(time_count[14]),
        .I4(time_count[9]),
        .O(\time_count[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6FFFFFFFFFFFFFF6)) 
    \time_count[23]_i_9 
       (.I0(time_count[22]),
        .I1(time_count[23]),
        .I2(time_count[8]),
        .I3(time_count[4]),
        .I4(time_count[5]),
        .I5(time_count[7]),
        .O(\time_count[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFF101010)) 
    \time_count[6]_i_1 
       (.I0(rst_n_i_3_n_0),
        .I1(\time_count[23]_i_8_n_0 ),
        .I2(\time_count[19]_i_2_n_0 ),
        .I3(\time_count[23]_i_3_n_0 ),
        .I4(data0[6]),
        .O(\time_count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF101010)) 
    \time_count[9]_i_1 
       (.I0(rst_n_i_3_n_0),
        .I1(\time_count[23]_i_8_n_0 ),
        .I2(\time_count[19]_i_2_n_0 ),
        .I3(\time_count[23]_i_3_n_0 ),
        .I4(data0[9]),
        .O(\time_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\time_count[0]_i_1_n_0 ),
        .Q(time_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[10] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[10]),
        .Q(time_count[10]),
        .R(\time_count[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[11] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[11]),
        .Q(time_count[11]),
        .R(\time_count[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[12] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[12]),
        .Q(time_count[12]),
        .R(\time_count[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[13] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[13]),
        .Q(time_count[13]),
        .R(\time_count[23]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \time_count_reg[14] 
       (.C(clk),
        .CE(time_count_0),
        .D(\time_count[14]_i_1_n_0 ),
        .Q(time_count[14]),
        .S(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[15] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[15]),
        .Q(time_count[15]),
        .R(\time_count[23]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \time_count_reg[16] 
       (.C(clk),
        .CE(time_count_0),
        .D(\time_count[16]_i_1_n_0 ),
        .Q(time_count[16]),
        .S(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \time_count_reg[17] 
       (.C(clk),
        .CE(time_count_0),
        .D(\time_count[17]_i_1_n_0 ),
        .Q(time_count[17]),
        .S(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \time_count_reg[18] 
       (.C(clk),
        .CE(time_count_0),
        .D(\time_count[18]_i_1_n_0 ),
        .Q(time_count[18]),
        .S(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \time_count_reg[19] 
       (.C(clk),
        .CE(time_count_0),
        .D(\time_count[19]_i_1_n_0 ),
        .Q(time_count[19]),
        .S(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[1] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[1]),
        .Q(time_count[1]),
        .R(\time_count[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[20] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[20]),
        .Q(time_count[20]),
        .R(\time_count[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[21] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[21]),
        .Q(time_count[21]),
        .R(\time_count[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[22] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[22]),
        .Q(time_count[22]),
        .R(\time_count[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[23] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[23]),
        .Q(time_count[23]),
        .R(\time_count[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[2] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[2]),
        .Q(time_count[2]),
        .R(\time_count[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[3] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[3]),
        .Q(time_count[3]),
        .R(\time_count[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[4] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[4]),
        .Q(time_count[4]),
        .R(\time_count[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[5] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[5]),
        .Q(time_count[5]),
        .R(\time_count[23]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \time_count_reg[6] 
       (.C(clk),
        .CE(time_count_0),
        .D(\time_count[6]_i_1_n_0 ),
        .Q(time_count[6]),
        .S(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[7] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[7]),
        .Q(time_count[7]),
        .R(\time_count[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_count_reg[8] 
       (.C(clk),
        .CE(time_count_0),
        .D(data0[8]),
        .Q(time_count[8]),
        .R(\time_count[23]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \time_count_reg[9] 
       (.C(clk),
        .CE(time_count_0),
        .D(\time_count[9]_i_1_n_0 ),
        .Q(time_count[9]),
        .S(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "zynq_7_rst_gen_0_0,rst_gen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "rst_gen,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_7_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output rst_n;

  wire clk;
  wire rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rst_gen inst
       (.clk(clk),
        .rst_n(rst_n));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
