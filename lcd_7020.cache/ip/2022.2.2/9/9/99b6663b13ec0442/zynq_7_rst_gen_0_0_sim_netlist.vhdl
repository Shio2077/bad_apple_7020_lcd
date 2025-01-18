-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
-- Date        : Fri Nov 15 16:19:17 2024
-- Host        : DESKTOP-3024MKH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zynq_7_rst_gen_0_0_sim_netlist.vhdl
-- Design      : zynq_7_rst_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rst_gen is
  port (
    rst_n : out STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rst_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rst_gen is
  signal data0 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal \^rst_n\ : STD_LOGIC;
  signal rst_n_i_1_n_0 : STD_LOGIC;
  signal rst_n_i_2_n_0 : STD_LOGIC;
  signal rst_n_i_3_n_0 : STD_LOGIC;
  signal time_count : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \time_count0_carry__0_n_0\ : STD_LOGIC;
  signal \time_count0_carry__0_n_1\ : STD_LOGIC;
  signal \time_count0_carry__0_n_2\ : STD_LOGIC;
  signal \time_count0_carry__0_n_3\ : STD_LOGIC;
  signal \time_count0_carry__1_n_0\ : STD_LOGIC;
  signal \time_count0_carry__1_n_1\ : STD_LOGIC;
  signal \time_count0_carry__1_n_2\ : STD_LOGIC;
  signal \time_count0_carry__1_n_3\ : STD_LOGIC;
  signal \time_count0_carry__2_n_0\ : STD_LOGIC;
  signal \time_count0_carry__2_n_1\ : STD_LOGIC;
  signal \time_count0_carry__2_n_2\ : STD_LOGIC;
  signal \time_count0_carry__2_n_3\ : STD_LOGIC;
  signal \time_count0_carry__3_n_0\ : STD_LOGIC;
  signal \time_count0_carry__3_n_1\ : STD_LOGIC;
  signal \time_count0_carry__3_n_2\ : STD_LOGIC;
  signal \time_count0_carry__3_n_3\ : STD_LOGIC;
  signal \time_count0_carry__4_n_2\ : STD_LOGIC;
  signal \time_count0_carry__4_n_3\ : STD_LOGIC;
  signal time_count0_carry_n_0 : STD_LOGIC;
  signal time_count0_carry_n_1 : STD_LOGIC;
  signal time_count0_carry_n_2 : STD_LOGIC;
  signal time_count0_carry_n_3 : STD_LOGIC;
  signal \time_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \time_count[14]_i_1_n_0\ : STD_LOGIC;
  signal \time_count[16]_i_1_n_0\ : STD_LOGIC;
  signal \time_count[17]_i_1_n_0\ : STD_LOGIC;
  signal \time_count[18]_i_1_n_0\ : STD_LOGIC;
  signal \time_count[19]_i_1_n_0\ : STD_LOGIC;
  signal \time_count[19]_i_2_n_0\ : STD_LOGIC;
  signal \time_count[23]_i_10_n_0\ : STD_LOGIC;
  signal \time_count[23]_i_11_n_0\ : STD_LOGIC;
  signal \time_count[23]_i_12_n_0\ : STD_LOGIC;
  signal \time_count[23]_i_13_n_0\ : STD_LOGIC;
  signal \time_count[23]_i_1_n_0\ : STD_LOGIC;
  signal \time_count[23]_i_3_n_0\ : STD_LOGIC;
  signal \time_count[23]_i_4_n_0\ : STD_LOGIC;
  signal \time_count[23]_i_5_n_0\ : STD_LOGIC;
  signal \time_count[23]_i_6_n_0\ : STD_LOGIC;
  signal \time_count[23]_i_7_n_0\ : STD_LOGIC;
  signal \time_count[23]_i_8_n_0\ : STD_LOGIC;
  signal \time_count[23]_i_9_n_0\ : STD_LOGIC;
  signal \time_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \time_count[9]_i_1_n_0\ : STD_LOGIC;
  signal time_count_0 : STD_LOGIC;
  signal \NLW_time_count0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_count0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of time_count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \time_count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \time_count0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \time_count0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \time_count0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \time_count0_carry__4\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \time_count[19]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \time_count[23]_i_4\ : label is "soft_lutpair0";
begin
  rst_n <= \^rst_n\;
rst_n_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => time_count(22),
      I1 => rst_n_i_2_n_0,
      I2 => rst_n_i_3_n_0,
      I3 => \^rst_n\,
      O => rst_n_i_1_n_0
    );
rst_n_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000008"
    )
        port map (
      I0 => time_count(17),
      I1 => time_count(16),
      I2 => \time_count[23]_i_8_n_0\,
      I3 => time_count(22),
      I4 => time_count(11),
      I5 => time_count(8),
      O => rst_n_i_2_n_0
    );
rst_n_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \time_count[23]_i_7_n_0\,
      I1 => time_count(3),
      I2 => time_count(2),
      I3 => time_count(5),
      I4 => time_count(4),
      I5 => \time_count[23]_i_5_n_0\,
      O => rst_n_i_3_n_0
    );
rst_n_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rst_n_i_1_n_0,
      Q => \^rst_n\,
      R => '0'
    );
time_count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => time_count0_carry_n_0,
      CO(2) => time_count0_carry_n_1,
      CO(1) => time_count0_carry_n_2,
      CO(0) => time_count0_carry_n_3,
      CYINIT => time_count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => time_count(4 downto 1)
    );
\time_count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => time_count0_carry_n_0,
      CO(3) => \time_count0_carry__0_n_0\,
      CO(2) => \time_count0_carry__0_n_1\,
      CO(1) => \time_count0_carry__0_n_2\,
      CO(0) => \time_count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => time_count(8 downto 5)
    );
\time_count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_count0_carry__0_n_0\,
      CO(3) => \time_count0_carry__1_n_0\,
      CO(2) => \time_count0_carry__1_n_1\,
      CO(1) => \time_count0_carry__1_n_2\,
      CO(0) => \time_count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => time_count(12 downto 9)
    );
\time_count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_count0_carry__1_n_0\,
      CO(3) => \time_count0_carry__2_n_0\,
      CO(2) => \time_count0_carry__2_n_1\,
      CO(1) => \time_count0_carry__2_n_2\,
      CO(0) => \time_count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => time_count(16 downto 13)
    );
\time_count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_count0_carry__2_n_0\,
      CO(3) => \time_count0_carry__3_n_0\,
      CO(2) => \time_count0_carry__3_n_1\,
      CO(1) => \time_count0_carry__3_n_2\,
      CO(0) => \time_count0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => time_count(20 downto 17)
    );
\time_count0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_count0_carry__3_n_0\,
      CO(3 downto 2) => \NLW_time_count0_carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \time_count0_carry__4_n_2\,
      CO(0) => \time_count0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_time_count0_carry__4_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(23 downto 21),
      S(3) => '0',
      S(2 downto 0) => time_count(23 downto 21)
    );
\time_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30FFBA00"
    )
        port map (
      I0 => \time_count[23]_i_3_n_0\,
      I1 => rst_n_i_3_n_0,
      I2 => \time_count[19]_i_2_n_0\,
      I3 => time_count_0,
      I4 => time_count(0),
      O => \time_count[0]_i_1_n_0\
    );
\time_count[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF101010"
    )
        port map (
      I0 => rst_n_i_3_n_0,
      I1 => \time_count[23]_i_8_n_0\,
      I2 => \time_count[19]_i_2_n_0\,
      I3 => \time_count[23]_i_3_n_0\,
      I4 => data0(14),
      O => \time_count[14]_i_1_n_0\
    );
\time_count[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF101010"
    )
        port map (
      I0 => rst_n_i_3_n_0,
      I1 => \time_count[23]_i_8_n_0\,
      I2 => \time_count[19]_i_2_n_0\,
      I3 => \time_count[23]_i_3_n_0\,
      I4 => data0(16),
      O => \time_count[16]_i_1_n_0\
    );
\time_count[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF101010"
    )
        port map (
      I0 => rst_n_i_3_n_0,
      I1 => \time_count[23]_i_8_n_0\,
      I2 => \time_count[19]_i_2_n_0\,
      I3 => \time_count[23]_i_3_n_0\,
      I4 => data0(17),
      O => \time_count[17]_i_1_n_0\
    );
\time_count[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF101010"
    )
        port map (
      I0 => rst_n_i_3_n_0,
      I1 => \time_count[23]_i_8_n_0\,
      I2 => \time_count[19]_i_2_n_0\,
      I3 => \time_count[23]_i_3_n_0\,
      I4 => data0(18),
      O => \time_count[18]_i_1_n_0\
    );
\time_count[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF101010"
    )
        port map (
      I0 => rst_n_i_3_n_0,
      I1 => \time_count[23]_i_8_n_0\,
      I2 => \time_count[19]_i_2_n_0\,
      I3 => \time_count[23]_i_3_n_0\,
      I4 => data0(19),
      O => \time_count[19]_i_1_n_0\
    );
\time_count[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00042000"
    )
        port map (
      I0 => time_count(8),
      I1 => time_count(17),
      I2 => time_count(22),
      I3 => time_count(11),
      I4 => time_count(16),
      O => \time_count[19]_i_2_n_0\
    );
\time_count[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_count_0,
      I1 => \time_count[23]_i_3_n_0\,
      O => \time_count[23]_i_1_n_0\
    );
\time_count[23]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => time_count(3),
      I1 => time_count(4),
      I2 => time_count(0),
      I3 => time_count(1),
      I4 => time_count(2),
      O => \time_count[23]_i_10_n_0\
    );
\time_count[23]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DFFFFFFFFFFFFBE"
    )
        port map (
      I0 => time_count(20),
      I1 => time_count(21),
      I2 => time_count(22),
      I3 => time_count(12),
      I4 => time_count(13),
      I5 => time_count(15),
      O => \time_count[23]_i_11_n_0\
    );
\time_count[23]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFEFFFFFFFF7FFE"
    )
        port map (
      I0 => time_count(11),
      I1 => time_count(12),
      I2 => time_count(8),
      I3 => time_count(10),
      I4 => time_count(20),
      I5 => time_count(21),
      O => \time_count[23]_i_12_n_0\
    );
\time_count[23]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => time_count(16),
      I1 => time_count(17),
      O => \time_count[23]_i_13_n_0\
    );
\time_count[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \time_count[23]_i_4_n_0\,
      I1 => time_count(8),
      I2 => \time_count[23]_i_5_n_0\,
      I3 => \time_count[23]_i_6_n_0\,
      I4 => \time_count[23]_i_7_n_0\,
      I5 => \time_count[23]_i_8_n_0\,
      O => time_count_0
    );
\time_count[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \time_count[23]_i_9_n_0\,
      I1 => \time_count[23]_i_10_n_0\,
      I2 => \time_count[23]_i_11_n_0\,
      I3 => \time_count[23]_i_12_n_0\,
      I4 => \time_count[23]_i_8_n_0\,
      I5 => \time_count[23]_i_13_n_0\,
      O => \time_count[23]_i_3_n_0\
    );
\time_count[23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => time_count(11),
      I1 => time_count(16),
      I2 => time_count(22),
      I3 => time_count(17),
      O => \time_count[23]_i_4_n_0\
    );
\time_count[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => time_count(21),
      I1 => time_count(23),
      I2 => time_count(15),
      I3 => time_count(20),
      I4 => time_count(1),
      I5 => time_count(0),
      O => \time_count[23]_i_5_n_0\
    );
\time_count[23]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => time_count(3),
      I1 => time_count(2),
      I2 => time_count(5),
      I3 => time_count(4),
      O => \time_count[23]_i_6_n_0\
    );
\time_count[23]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => time_count(10),
      I1 => time_count(7),
      I2 => time_count(13),
      I3 => time_count(12),
      O => \time_count[23]_i_7_n_0\
    );
\time_count[23]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => time_count(6),
      I1 => time_count(18),
      I2 => time_count(19),
      I3 => time_count(14),
      I4 => time_count(9),
      O => \time_count[23]_i_8_n_0\
    );
\time_count[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FFFFFFFFFFFFFF6"
    )
        port map (
      I0 => time_count(22),
      I1 => time_count(23),
      I2 => time_count(8),
      I3 => time_count(4),
      I4 => time_count(5),
      I5 => time_count(7),
      O => \time_count[23]_i_9_n_0\
    );
\time_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF101010"
    )
        port map (
      I0 => rst_n_i_3_n_0,
      I1 => \time_count[23]_i_8_n_0\,
      I2 => \time_count[19]_i_2_n_0\,
      I3 => \time_count[23]_i_3_n_0\,
      I4 => data0(6),
      O => \time_count[6]_i_1_n_0\
    );
\time_count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF101010"
    )
        port map (
      I0 => rst_n_i_3_n_0,
      I1 => \time_count[23]_i_8_n_0\,
      I2 => \time_count[19]_i_2_n_0\,
      I3 => \time_count[23]_i_3_n_0\,
      I4 => data0(9),
      O => \time_count[9]_i_1_n_0\
    );
\time_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \time_count[0]_i_1_n_0\,
      Q => time_count(0),
      R => '0'
    );
\time_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(10),
      Q => time_count(10),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(11),
      Q => time_count(11),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(12),
      Q => time_count(12),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(13),
      Q => time_count(13),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => \time_count[14]_i_1_n_0\,
      Q => time_count(14),
      S => '0'
    );
\time_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(15),
      Q => time_count(15),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => \time_count[16]_i_1_n_0\,
      Q => time_count(16),
      S => '0'
    );
\time_count_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => \time_count[17]_i_1_n_0\,
      Q => time_count(17),
      S => '0'
    );
\time_count_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => \time_count[18]_i_1_n_0\,
      Q => time_count(18),
      S => '0'
    );
\time_count_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => \time_count[19]_i_1_n_0\,
      Q => time_count(19),
      S => '0'
    );
\time_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(1),
      Q => time_count(1),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(20),
      Q => time_count(20),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(21),
      Q => time_count(21),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(22),
      Q => time_count(22),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(23),
      Q => time_count(23),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(2),
      Q => time_count(2),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(3),
      Q => time_count(3),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(4),
      Q => time_count(4),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(5),
      Q => time_count(5),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => \time_count[6]_i_1_n_0\,
      Q => time_count(6),
      S => '0'
    );
\time_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(7),
      Q => time_count(7),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => data0(8),
      Q => time_count(8),
      R => \time_count[23]_i_1_n_0\
    );
\time_count_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => time_count_0,
      D => \time_count[9]_i_1_n_0\,
      Q => time_count(9),
      S => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zynq_7_rst_gen_0_0,rst_gen,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "rst_gen,Vivado 2022.2.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_7_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rst_gen
     port map (
      clk => clk,
      rst_n => rst_n
    );
end STRUCTURE;
