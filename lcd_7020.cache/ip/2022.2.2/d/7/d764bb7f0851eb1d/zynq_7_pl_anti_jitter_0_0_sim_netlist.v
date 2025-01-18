// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Fri Nov 15 16:19:17 2024
// Host        : DESKTOP-3024MKH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_7_pl_anti_jitter_0_0_sim_netlist.v
// Design      : zynq_7_pl_anti_jitter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pl_anti_jitter
   (key_o,
    key_in,
    clk,
    rst_n);
  output key_o;
  input key_in;
  input clk;
  input rst_n;

  wire clk;
  wire [23:0]cnt;
  wire [23:1]cnt0;
  wire \cnt0_inferred__0/i__carry__0_n_0 ;
  wire \cnt0_inferred__0/i__carry__0_n_1 ;
  wire \cnt0_inferred__0/i__carry__0_n_2 ;
  wire \cnt0_inferred__0/i__carry__0_n_3 ;
  wire \cnt0_inferred__0/i__carry__1_n_0 ;
  wire \cnt0_inferred__0/i__carry__1_n_1 ;
  wire \cnt0_inferred__0/i__carry__1_n_2 ;
  wire \cnt0_inferred__0/i__carry__1_n_3 ;
  wire \cnt0_inferred__0/i__carry__2_n_0 ;
  wire \cnt0_inferred__0/i__carry__2_n_1 ;
  wire \cnt0_inferred__0/i__carry__2_n_2 ;
  wire \cnt0_inferred__0/i__carry__2_n_3 ;
  wire \cnt0_inferred__0/i__carry__3_n_0 ;
  wire \cnt0_inferred__0/i__carry__3_n_1 ;
  wire \cnt0_inferred__0/i__carry__3_n_2 ;
  wire \cnt0_inferred__0/i__carry__3_n_3 ;
  wire \cnt0_inferred__0/i__carry__4_n_2 ;
  wire \cnt0_inferred__0/i__carry__4_n_3 ;
  wire \cnt0_inferred__0/i__carry_n_0 ;
  wire \cnt0_inferred__0/i__carry_n_1 ;
  wire \cnt0_inferred__0/i__carry_n_2 ;
  wire \cnt0_inferred__0/i__carry_n_3 ;
  wire \cnt[23]_i_1_n_0 ;
  wire \cnt[23]_i_4_n_0 ;
  wire \cnt[23]_i_5_n_0 ;
  wire \cnt[23]_i_6_n_0 ;
  wire \cnt[23]_i_7_n_0 ;
  wire \cnt[23]_i_8_n_0 ;
  wire flg_cnt_full;
  wire flg_cnt_full_i_1_n_0;
  wire key_d_i_1_n_0;
  wire key_d_i_2_n_0;
  wire key_in;
  wire key_o;
  wire p_0_in;
  wire [23:0]p_1_in;
  wire rst_n;
  wire [2:0]st_curr;
  wire [2:0]st_next;
  wire [1:1]st_next__0;
  wire [3:2]\NLW_cnt0_inferred__0/i__carry__4_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt0_inferred__0/i__carry__4_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\cnt0_inferred__0/i__carry_n_0 ,\cnt0_inferred__0/i__carry_n_1 ,\cnt0_inferred__0/i__carry_n_2 ,\cnt0_inferred__0/i__carry_n_3 }),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[4:1]),
        .S(cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt0_inferred__0/i__carry__0 
       (.CI(\cnt0_inferred__0/i__carry_n_0 ),
        .CO({\cnt0_inferred__0/i__carry__0_n_0 ,\cnt0_inferred__0/i__carry__0_n_1 ,\cnt0_inferred__0/i__carry__0_n_2 ,\cnt0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[8:5]),
        .S(cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt0_inferred__0/i__carry__1 
       (.CI(\cnt0_inferred__0/i__carry__0_n_0 ),
        .CO({\cnt0_inferred__0/i__carry__1_n_0 ,\cnt0_inferred__0/i__carry__1_n_1 ,\cnt0_inferred__0/i__carry__1_n_2 ,\cnt0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[12:9]),
        .S(cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt0_inferred__0/i__carry__2 
       (.CI(\cnt0_inferred__0/i__carry__1_n_0 ),
        .CO({\cnt0_inferred__0/i__carry__2_n_0 ,\cnt0_inferred__0/i__carry__2_n_1 ,\cnt0_inferred__0/i__carry__2_n_2 ,\cnt0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[16:13]),
        .S(cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt0_inferred__0/i__carry__3 
       (.CI(\cnt0_inferred__0/i__carry__2_n_0 ),
        .CO({\cnt0_inferred__0/i__carry__3_n_0 ,\cnt0_inferred__0/i__carry__3_n_1 ,\cnt0_inferred__0/i__carry__3_n_2 ,\cnt0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[20:17]),
        .S(cnt[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cnt0_inferred__0/i__carry__4 
       (.CI(\cnt0_inferred__0/i__carry__3_n_0 ),
        .CO({\NLW_cnt0_inferred__0/i__carry__4_CO_UNCONNECTED [3:2],\cnt0_inferred__0/i__carry__4_n_2 ,\cnt0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt0_inferred__0/i__carry__4_O_UNCONNECTED [3],cnt0[23:21]}),
        .S({1'b0,cnt[23:21]}));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \cnt[0]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt[0]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[10]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[10]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[11]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[11]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[12]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[12]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[13]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[13]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[14]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[14]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[15]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[15]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[16]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[16]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[17]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[17]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[18]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[18]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[19]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[19]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[1]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[1]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[20]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[20]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[21]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[21]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[22]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[22]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[22]));
  LUT5 #(
    .INIT(32'hFFFFFCF7)) 
    \cnt[23]_i_1 
       (.I0(flg_cnt_full),
        .I1(st_curr[1]),
        .I2(key_in),
        .I3(st_curr[2]),
        .I4(st_curr[0]),
        .O(\cnt[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[23]_i_2 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[23]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \cnt[23]_i_3 
       (.I0(\cnt[23]_i_5_n_0 ),
        .I1(\cnt[23]_i_6_n_0 ),
        .I2(\cnt[23]_i_7_n_0 ),
        .I3(\cnt[23]_i_8_n_0 ),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFCCFBB)) 
    \cnt[23]_i_4 
       (.I0(flg_cnt_full),
        .I1(st_curr[1]),
        .I2(key_in),
        .I3(st_curr[2]),
        .I4(st_curr[0]),
        .O(\cnt[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt[23]_i_5 
       (.I0(cnt[5]),
        .I1(cnt[7]),
        .I2(cnt[8]),
        .I3(cnt[10]),
        .I4(cnt[13]),
        .I5(cnt[17]),
        .O(\cnt[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cnt[23]_i_6 
       (.I0(cnt[3]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[0]),
        .I4(cnt[18]),
        .I5(cnt[21]),
        .O(\cnt[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cnt[23]_i_7 
       (.I0(cnt[9]),
        .I1(cnt[4]),
        .I2(cnt[6]),
        .I3(cnt[14]),
        .I4(cnt[11]),
        .I5(cnt[12]),
        .O(\cnt[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cnt[23]_i_8 
       (.I0(cnt[22]),
        .I1(cnt[20]),
        .I2(cnt[23]),
        .I3(cnt[15]),
        .I4(cnt[16]),
        .I5(cnt[19]),
        .O(\cnt[23]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[2]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[2]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[3]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[3]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[4]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[4]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[5]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[5]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[6]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[6]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[7]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[7]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[8]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[8]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[9]_i_1 
       (.I0(st_next__0),
        .I1(p_0_in),
        .I2(cnt0[9]),
        .I3(\cnt[23]_i_4_n_0 ),
        .O(p_1_in[9]));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[0]),
        .Q(cnt[0]));
  FDCE \cnt_reg[10] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[10]),
        .Q(cnt[10]));
  FDCE \cnt_reg[11] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[11]),
        .Q(cnt[11]));
  FDCE \cnt_reg[12] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[12]),
        .Q(cnt[12]));
  FDCE \cnt_reg[13] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[13]),
        .Q(cnt[13]));
  FDCE \cnt_reg[14] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[14]),
        .Q(cnt[14]));
  FDCE \cnt_reg[15] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[15]),
        .Q(cnt[15]));
  FDCE \cnt_reg[16] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[16]),
        .Q(cnt[16]));
  FDCE \cnt_reg[17] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[17]),
        .Q(cnt[17]));
  FDCE \cnt_reg[18] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[18]),
        .Q(cnt[18]));
  FDCE \cnt_reg[19] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[19]),
        .Q(cnt[19]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[1]),
        .Q(cnt[1]));
  FDCE \cnt_reg[20] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[20]),
        .Q(cnt[20]));
  FDCE \cnt_reg[21] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[21]),
        .Q(cnt[21]));
  FDCE \cnt_reg[22] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[22]),
        .Q(cnt[22]));
  FDCE \cnt_reg[23] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[23]),
        .Q(cnt[23]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[2]),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[3]),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[4]),
        .Q(cnt[4]));
  FDCE \cnt_reg[5] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[5]),
        .Q(cnt[5]));
  FDCE \cnt_reg[6] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[6]),
        .Q(cnt[6]));
  FDCE \cnt_reg[7] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[7]),
        .Q(cnt[7]));
  FDCE \cnt_reg[8] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[8]),
        .Q(cnt[8]));
  FDCE \cnt_reg[9] 
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(p_1_in[9]),
        .Q(cnt[9]));
  LUT6 #(
    .INIT(64'h000000000500101A)) 
    flg_cnt_full_i_1
       (.I0(st_curr[0]),
        .I1(flg_cnt_full),
        .I2(st_curr[1]),
        .I3(key_in),
        .I4(st_curr[2]),
        .I5(p_0_in),
        .O(flg_cnt_full_i_1_n_0));
  FDCE flg_cnt_full_reg
       (.C(clk),
        .CE(\cnt[23]_i_1_n_0 ),
        .CLR(key_d_i_2_n_0),
        .D(flg_cnt_full_i_1_n_0),
        .Q(flg_cnt_full));
  LUT6 #(
    .INIT(64'hFFFFEDFDFEFEE5A5)) 
    key_d_i_1
       (.I0(st_curr[2]),
        .I1(key_in),
        .I2(st_curr[1]),
        .I3(flg_cnt_full),
        .I4(st_curr[0]),
        .I5(key_o),
        .O(key_d_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    key_d_i_2
       (.I0(rst_n),
        .O(key_d_i_2_n_0));
  FDPE key_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(key_d_i_1_n_0),
        .PRE(key_d_i_2_n_0),
        .Q(key_o));
  LUT5 #(
    .INIT(32'hFEB9EEB9)) 
    \st_curr[0]_i_1 
       (.I0(st_curr[0]),
        .I1(st_curr[2]),
        .I2(key_in),
        .I3(st_curr[1]),
        .I4(flg_cnt_full),
        .O(st_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0500101A)) 
    \st_curr[1]_i_1 
       (.I0(st_curr[0]),
        .I1(flg_cnt_full),
        .I2(st_curr[1]),
        .I3(key_in),
        .I4(st_curr[2]),
        .O(st_next__0));
  LUT5 #(
    .INIT(32'h01040004)) 
    \st_curr[2]_i_1 
       (.I0(st_curr[0]),
        .I1(st_curr[2]),
        .I2(key_in),
        .I3(st_curr[1]),
        .I4(flg_cnt_full),
        .O(st_next[2]));
  (* FSM_ENCODED_STATES = "IDLE:0001,KEY_JT:0010,KEY_DN:0100" *) 
  FDPE \st_curr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(st_next[0]),
        .PRE(key_d_i_2_n_0),
        .Q(st_curr[0]));
  (* FSM_ENCODED_STATES = "IDLE:0001,KEY_JT:0010,KEY_DN:0100" *) 
  FDCE \st_curr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(key_d_i_2_n_0),
        .D(st_next__0),
        .Q(st_curr[1]));
  (* FSM_ENCODED_STATES = "IDLE:0001,KEY_JT:0010,KEY_DN:0100" *) 
  FDCE \st_curr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(key_d_i_2_n_0),
        .D(st_next[2]),
        .Q(st_curr[2]));
endmodule

(* CHECK_LICENSE_TYPE = "zynq_7_pl_anti_jitter_0_0,pl_anti_jitter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pl_anti_jitter,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    key_in,
    key_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_7_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input key_in;
  output key_o;

  wire clk;
  wire key_in;
  wire key_o;
  wire rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pl_anti_jitter inst
       (.clk(clk),
        .key_in(key_in),
        .key_o(key_o),
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
