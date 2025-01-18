-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
-- Date        : Fri Nov 15 16:19:17 2024
-- Host        : DESKTOP-3024MKH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_7_pl_anti_jitter_0_0_sim_netlist.vhdl
-- Design      : zynq_7_pl_anti_jitter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pl_anti_jitter is
  port (
    key_o : out STD_LOGIC;
    key_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pl_anti_jitter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pl_anti_jitter is
  signal cnt : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal cnt0 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal \cnt0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \cnt0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \cnt[23]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[23]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[23]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[23]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[23]_i_7_n_0\ : STD_LOGIC;
  signal \cnt[23]_i_8_n_0\ : STD_LOGIC;
  signal flg_cnt_full : STD_LOGIC;
  signal flg_cnt_full_i_1_n_0 : STD_LOGIC;
  signal key_d_i_1_n_0 : STD_LOGIC;
  signal key_d_i_2_n_0 : STD_LOGIC;
  signal \^key_o\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal st_curr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal st_next : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \st_next__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \NLW_cnt0_inferred__0/i__carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt0_inferred__0/i__carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_inferred__0/i__carry__4\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[14]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[15]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[16]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[17]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[18]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[19]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[20]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[21]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[22]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[23]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[23]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \st_curr[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \st_curr_reg[0]\ : label is "IDLE:0001,KEY_JT:0010,KEY_DN:0100";
  attribute FSM_ENCODED_STATES of \st_curr_reg[1]\ : label is "IDLE:0001,KEY_JT:0010,KEY_DN:0100";
  attribute FSM_ENCODED_STATES of \st_curr_reg[2]\ : label is "IDLE:0001,KEY_JT:0010,KEY_DN:0100";
begin
  key_o <= \^key_o\;
\cnt0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt0_inferred__0/i__carry_n_0\,
      CO(2) => \cnt0_inferred__0/i__carry_n_1\,
      CO(1) => \cnt0_inferred__0/i__carry_n_2\,
      CO(0) => \cnt0_inferred__0/i__carry_n_3\,
      CYINIT => cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(4 downto 1),
      S(3 downto 0) => cnt(4 downto 1)
    );
\cnt0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_inferred__0/i__carry_n_0\,
      CO(3) => \cnt0_inferred__0/i__carry__0_n_0\,
      CO(2) => \cnt0_inferred__0/i__carry__0_n_1\,
      CO(1) => \cnt0_inferred__0/i__carry__0_n_2\,
      CO(0) => \cnt0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(8 downto 5),
      S(3 downto 0) => cnt(8 downto 5)
    );
\cnt0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_inferred__0/i__carry__0_n_0\,
      CO(3) => \cnt0_inferred__0/i__carry__1_n_0\,
      CO(2) => \cnt0_inferred__0/i__carry__1_n_1\,
      CO(1) => \cnt0_inferred__0/i__carry__1_n_2\,
      CO(0) => \cnt0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(12 downto 9),
      S(3 downto 0) => cnt(12 downto 9)
    );
\cnt0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_inferred__0/i__carry__1_n_0\,
      CO(3) => \cnt0_inferred__0/i__carry__2_n_0\,
      CO(2) => \cnt0_inferred__0/i__carry__2_n_1\,
      CO(1) => \cnt0_inferred__0/i__carry__2_n_2\,
      CO(0) => \cnt0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(16 downto 13),
      S(3 downto 0) => cnt(16 downto 13)
    );
\cnt0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_inferred__0/i__carry__2_n_0\,
      CO(3) => \cnt0_inferred__0/i__carry__3_n_0\,
      CO(2) => \cnt0_inferred__0/i__carry__3_n_1\,
      CO(1) => \cnt0_inferred__0/i__carry__3_n_2\,
      CO(0) => \cnt0_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(20 downto 17),
      S(3 downto 0) => cnt(20 downto 17)
    );
\cnt0_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_inferred__0/i__carry__3_n_0\,
      CO(3 downto 2) => \NLW_cnt0_inferred__0/i__carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt0_inferred__0/i__carry__4_n_2\,
      CO(0) => \cnt0_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt0_inferred__0/i__carry__4_O_UNCONNECTED\(3),
      O(2 downto 0) => cnt0(23 downto 21),
      S(3) => '0',
      S(2 downto 0) => cnt(23 downto 21)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt(0),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(0)
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(10),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(10)
    );
\cnt[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(11),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(11)
    );
\cnt[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(12),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(12)
    );
\cnt[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(13),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(13)
    );
\cnt[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(14),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(14)
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(15),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(15)
    );
\cnt[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(16),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(16)
    );
\cnt[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(17),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(17)
    );
\cnt[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(18),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(18)
    );
\cnt[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(19),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(19)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(1),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(1)
    );
\cnt[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(20),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(20)
    );
\cnt[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(21),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(21)
    );
\cnt[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(22),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(22)
    );
\cnt[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFCF7"
    )
        port map (
      I0 => flg_cnt_full,
      I1 => st_curr(1),
      I2 => key_in,
      I3 => st_curr(2),
      I4 => st_curr(0),
      O => \cnt[23]_i_1_n_0\
    );
\cnt[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(23),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(23)
    );
\cnt[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \cnt[23]_i_5_n_0\,
      I1 => \cnt[23]_i_6_n_0\,
      I2 => \cnt[23]_i_7_n_0\,
      I3 => \cnt[23]_i_8_n_0\,
      O => p_0_in
    );
\cnt[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFCCFBB"
    )
        port map (
      I0 => flg_cnt_full,
      I1 => st_curr(1),
      I2 => key_in,
      I3 => st_curr(2),
      I4 => st_curr(0),
      O => \cnt[23]_i_4_n_0\
    );
\cnt[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cnt(5),
      I1 => cnt(7),
      I2 => cnt(8),
      I3 => cnt(10),
      I4 => cnt(13),
      I5 => cnt(17),
      O => \cnt[23]_i_5_n_0\
    );
\cnt[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => cnt(3),
      I1 => cnt(1),
      I2 => cnt(2),
      I3 => cnt(0),
      I4 => cnt(18),
      I5 => cnt(21),
      O => \cnt[23]_i_6_n_0\
    );
\cnt[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cnt(9),
      I1 => cnt(4),
      I2 => cnt(6),
      I3 => cnt(14),
      I4 => cnt(11),
      I5 => cnt(12),
      O => \cnt[23]_i_7_n_0\
    );
\cnt[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => cnt(22),
      I1 => cnt(20),
      I2 => cnt(23),
      I3 => cnt(15),
      I4 => cnt(16),
      I5 => cnt(19),
      O => \cnt[23]_i_8_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(2),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(3),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(4),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(5),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(6),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(7),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(8),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \st_next__0\(1),
      I1 => p_0_in,
      I2 => cnt0(9),
      I3 => \cnt[23]_i_4_n_0\,
      O => p_1_in(9)
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(0),
      Q => cnt(0)
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(10),
      Q => cnt(10)
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(11),
      Q => cnt(11)
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(12),
      Q => cnt(12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(13),
      Q => cnt(13)
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(14),
      Q => cnt(14)
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(15),
      Q => cnt(15)
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(16),
      Q => cnt(16)
    );
\cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(17),
      Q => cnt(17)
    );
\cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(18),
      Q => cnt(18)
    );
\cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(19),
      Q => cnt(19)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(1),
      Q => cnt(1)
    );
\cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(20),
      Q => cnt(20)
    );
\cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(21),
      Q => cnt(21)
    );
\cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(22),
      Q => cnt(22)
    );
\cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(23),
      Q => cnt(23)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(2),
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(3),
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(4),
      Q => cnt(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(5),
      Q => cnt(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(6),
      Q => cnt(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(7),
      Q => cnt(7)
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(8),
      Q => cnt(8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => p_1_in(9),
      Q => cnt(9)
    );
flg_cnt_full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000500101A"
    )
        port map (
      I0 => st_curr(0),
      I1 => flg_cnt_full,
      I2 => st_curr(1),
      I3 => key_in,
      I4 => st_curr(2),
      I5 => p_0_in,
      O => flg_cnt_full_i_1_n_0
    );
flg_cnt_full_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \cnt[23]_i_1_n_0\,
      CLR => key_d_i_2_n_0,
      D => flg_cnt_full_i_1_n_0,
      Q => flg_cnt_full
    );
key_d_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEDFDFEFEE5A5"
    )
        port map (
      I0 => st_curr(2),
      I1 => key_in,
      I2 => st_curr(1),
      I3 => flg_cnt_full,
      I4 => st_curr(0),
      I5 => \^key_o\,
      O => key_d_i_1_n_0
    );
key_d_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => key_d_i_2_n_0
    );
key_d_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => key_d_i_1_n_0,
      PRE => key_d_i_2_n_0,
      Q => \^key_o\
    );
\st_curr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEB9EEB9"
    )
        port map (
      I0 => st_curr(0),
      I1 => st_curr(2),
      I2 => key_in,
      I3 => st_curr(1),
      I4 => flg_cnt_full,
      O => st_next(0)
    );
\st_curr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0500101A"
    )
        port map (
      I0 => st_curr(0),
      I1 => flg_cnt_full,
      I2 => st_curr(1),
      I3 => key_in,
      I4 => st_curr(2),
      O => \st_next__0\(1)
    );
\st_curr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01040004"
    )
        port map (
      I0 => st_curr(0),
      I1 => st_curr(2),
      I2 => key_in,
      I3 => st_curr(1),
      I4 => flg_cnt_full,
      O => st_next(2)
    );
\st_curr_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => st_next(0),
      PRE => key_d_i_2_n_0,
      Q => st_curr(0)
    );
\st_curr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => key_d_i_2_n_0,
      D => \st_next__0\(1),
      Q => st_curr(1)
    );
\st_curr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => key_d_i_2_n_0,
      D => st_next(2),
      Q => st_curr(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    key_in : in STD_LOGIC;
    key_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zynq_7_pl_anti_jitter_0_0,pl_anti_jitter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pl_anti_jitter,Vivado 2022.2.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_7_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pl_anti_jitter
     port map (
      clk => clk,
      key_in => key_in,
      key_o => key_o,
      rst_n => rst_n
    );
end STRUCTURE;
