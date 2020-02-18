-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Feb 18 18:05:51 2020
-- Host        : ECTET-1360-13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blink_tunable_0_0_sim_netlist.vhdl
-- Design      : design_1_blink_tunable_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blink_tunable is
  port (
    output : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    max_count : in STD_LOGIC_VECTOR ( 26 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blink_tunable;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blink_tunable is
  signal \count_sig1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count_sig1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count_sig1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \count_sig1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \count_sig1_carry__0_n_0\ : STD_LOGIC;
  signal \count_sig1_carry__0_n_1\ : STD_LOGIC;
  signal \count_sig1_carry__0_n_2\ : STD_LOGIC;
  signal \count_sig1_carry__0_n_3\ : STD_LOGIC;
  signal \count_sig1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal count_sig1_carry_i_1_n_0 : STD_LOGIC;
  signal count_sig1_carry_i_2_n_0 : STD_LOGIC;
  signal count_sig1_carry_i_3_n_0 : STD_LOGIC;
  signal count_sig1_carry_i_4_n_0 : STD_LOGIC;
  signal count_sig1_carry_n_0 : STD_LOGIC;
  signal count_sig1_carry_n_1 : STD_LOGIC;
  signal count_sig1_carry_n_2 : STD_LOGIC;
  signal count_sig1_carry_n_3 : STD_LOGIC;
  signal \count_sig[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_sig[0]_i_6_n_0\ : STD_LOGIC;
  signal \count_sig[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[12]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[12]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[12]_i_5_n_0\ : STD_LOGIC;
  signal \count_sig[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[16]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[16]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[16]_i_5_n_0\ : STD_LOGIC;
  signal \count_sig[20]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[20]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[20]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[20]_i_5_n_0\ : STD_LOGIC;
  signal \count_sig[24]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[24]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[24]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[4]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[4]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[4]_i_5_n_0\ : STD_LOGIC;
  signal \count_sig[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[8]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[8]_i_4_n_0\ : STD_LOGIC;
  signal \count_sig[8]_i_5_n_0\ : STD_LOGIC;
  signal count_sig_reg : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \count_sig_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal load : STD_LOGIC;
  signal \^output\ : STD_LOGIC;
  signal output_sig_i_1_n_0 : STD_LOGIC;
  signal NLW_count_sig1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_sig1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_sig1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_sig1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_sig_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_sig_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  output <= \^output\;
count_sig1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count_sig1_carry_n_0,
      CO(2) => count_sig1_carry_n_1,
      CO(1) => count_sig1_carry_n_2,
      CO(0) => count_sig1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_count_sig1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => count_sig1_carry_i_1_n_0,
      S(2) => count_sig1_carry_i_2_n_0,
      S(1) => count_sig1_carry_i_3_n_0,
      S(0) => count_sig1_carry_i_4_n_0
    );
\count_sig1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count_sig1_carry_n_0,
      CO(3) => \count_sig1_carry__0_n_0\,
      CO(2) => \count_sig1_carry__0_n_1\,
      CO(1) => \count_sig1_carry__0_n_2\,
      CO(0) => \count_sig1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_count_sig1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count_sig1_carry__0_i_1_n_0\,
      S(2) => \count_sig1_carry__0_i_2_n_0\,
      S(1) => \count_sig1_carry__0_i_3_n_0\,
      S(0) => \count_sig1_carry__0_i_4_n_0\
    );
\count_sig1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(21),
      I1 => max_count(21),
      I2 => max_count(23),
      I3 => count_sig_reg(23),
      I4 => max_count(22),
      I5 => count_sig_reg(22),
      O => \count_sig1_carry__0_i_1_n_0\
    );
\count_sig1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(18),
      I1 => max_count(18),
      I2 => max_count(20),
      I3 => count_sig_reg(20),
      I4 => max_count(19),
      I5 => count_sig_reg(19),
      O => \count_sig1_carry__0_i_2_n_0\
    );
\count_sig1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(15),
      I1 => max_count(15),
      I2 => max_count(17),
      I3 => count_sig_reg(17),
      I4 => max_count(16),
      I5 => count_sig_reg(16),
      O => \count_sig1_carry__0_i_3_n_0\
    );
\count_sig1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(12),
      I1 => max_count(12),
      I2 => max_count(14),
      I3 => count_sig_reg(14),
      I4 => max_count(13),
      I5 => count_sig_reg(13),
      O => \count_sig1_carry__0_i_4_n_0\
    );
\count_sig1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig1_carry__0_n_0\,
      CO(3 downto 1) => \NLW_count_sig1_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => load,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_count_sig1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \count_sig1_carry__1_i_1_n_0\
    );
\count_sig1_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(24),
      I1 => max_count(24),
      I2 => max_count(26),
      I3 => count_sig_reg(26),
      I4 => max_count(25),
      I5 => count_sig_reg(25),
      O => \count_sig1_carry__1_i_1_n_0\
    );
count_sig1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(9),
      I1 => max_count(9),
      I2 => max_count(11),
      I3 => count_sig_reg(11),
      I4 => max_count(10),
      I5 => count_sig_reg(10),
      O => count_sig1_carry_i_1_n_0
    );
count_sig1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(6),
      I1 => max_count(6),
      I2 => max_count(8),
      I3 => count_sig_reg(8),
      I4 => max_count(7),
      I5 => count_sig_reg(7),
      O => count_sig1_carry_i_2_n_0
    );
count_sig1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(3),
      I1 => max_count(3),
      I2 => max_count(5),
      I3 => count_sig_reg(5),
      I4 => max_count(4),
      I5 => count_sig_reg(4),
      O => count_sig1_carry_i_3_n_0
    );
count_sig1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_sig_reg(0),
      I1 => max_count(0),
      I2 => max_count(2),
      I3 => count_sig_reg(2),
      I4 => max_count(1),
      I5 => count_sig_reg(1),
      O => count_sig1_carry_i_4_n_0
    );
\count_sig[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(0),
      I1 => load,
      O => \count_sig[0]_i_2_n_0\
    );
\count_sig[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(3),
      I1 => load,
      O => \count_sig[0]_i_3_n_0\
    );
\count_sig[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(2),
      I1 => load,
      O => \count_sig[0]_i_4_n_0\
    );
\count_sig[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(1),
      I1 => load,
      O => \count_sig[0]_i_5_n_0\
    );
\count_sig[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_sig_reg(0),
      I1 => load,
      O => \count_sig[0]_i_6_n_0\
    );
\count_sig[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(15),
      I1 => load,
      O => \count_sig[12]_i_2_n_0\
    );
\count_sig[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(14),
      I1 => load,
      O => \count_sig[12]_i_3_n_0\
    );
\count_sig[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(13),
      I1 => load,
      O => \count_sig[12]_i_4_n_0\
    );
\count_sig[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(12),
      I1 => load,
      O => \count_sig[12]_i_5_n_0\
    );
\count_sig[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(19),
      I1 => load,
      O => \count_sig[16]_i_2_n_0\
    );
\count_sig[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(18),
      I1 => load,
      O => \count_sig[16]_i_3_n_0\
    );
\count_sig[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(17),
      I1 => load,
      O => \count_sig[16]_i_4_n_0\
    );
\count_sig[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(16),
      I1 => load,
      O => \count_sig[16]_i_5_n_0\
    );
\count_sig[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(23),
      I1 => load,
      O => \count_sig[20]_i_2_n_0\
    );
\count_sig[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(22),
      I1 => load,
      O => \count_sig[20]_i_3_n_0\
    );
\count_sig[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(21),
      I1 => load,
      O => \count_sig[20]_i_4_n_0\
    );
\count_sig[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(20),
      I1 => load,
      O => \count_sig[20]_i_5_n_0\
    );
\count_sig[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(26),
      I1 => load,
      O => \count_sig[24]_i_2_n_0\
    );
\count_sig[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(25),
      I1 => load,
      O => \count_sig[24]_i_3_n_0\
    );
\count_sig[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(24),
      I1 => load,
      O => \count_sig[24]_i_4_n_0\
    );
\count_sig[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(7),
      I1 => load,
      O => \count_sig[4]_i_2_n_0\
    );
\count_sig[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(6),
      I1 => load,
      O => \count_sig[4]_i_3_n_0\
    );
\count_sig[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(5),
      I1 => load,
      O => \count_sig[4]_i_4_n_0\
    );
\count_sig[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(4),
      I1 => load,
      O => \count_sig[4]_i_5_n_0\
    );
\count_sig[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(11),
      I1 => load,
      O => \count_sig[8]_i_2_n_0\
    );
\count_sig[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(10),
      I1 => load,
      O => \count_sig[8]_i_3_n_0\
    );
\count_sig[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(9),
      I1 => load,
      O => \count_sig[8]_i_4_n_0\
    );
\count_sig[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_sig_reg(8),
      I1 => load,
      O => \count_sig[8]_i_5_n_0\
    );
\count_sig_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[0]_i_1_n_7\,
      Q => count_sig_reg(0)
    );
\count_sig_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_sig_reg[0]_i_1_n_0\,
      CO(2) => \count_sig_reg[0]_i_1_n_1\,
      CO(1) => \count_sig_reg[0]_i_1_n_2\,
      CO(0) => \count_sig_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count_sig[0]_i_2_n_0\,
      O(3) => \count_sig_reg[0]_i_1_n_4\,
      O(2) => \count_sig_reg[0]_i_1_n_5\,
      O(1) => \count_sig_reg[0]_i_1_n_6\,
      O(0) => \count_sig_reg[0]_i_1_n_7\,
      S(3) => \count_sig[0]_i_3_n_0\,
      S(2) => \count_sig[0]_i_4_n_0\,
      S(1) => \count_sig[0]_i_5_n_0\,
      S(0) => \count_sig[0]_i_6_n_0\
    );
\count_sig_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[8]_i_1_n_5\,
      Q => count_sig_reg(10)
    );
\count_sig_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[8]_i_1_n_4\,
      Q => count_sig_reg(11)
    );
\count_sig_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[12]_i_1_n_7\,
      Q => count_sig_reg(12)
    );
\count_sig_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[8]_i_1_n_0\,
      CO(3) => \count_sig_reg[12]_i_1_n_0\,
      CO(2) => \count_sig_reg[12]_i_1_n_1\,
      CO(1) => \count_sig_reg[12]_i_1_n_2\,
      CO(0) => \count_sig_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[12]_i_1_n_4\,
      O(2) => \count_sig_reg[12]_i_1_n_5\,
      O(1) => \count_sig_reg[12]_i_1_n_6\,
      O(0) => \count_sig_reg[12]_i_1_n_7\,
      S(3) => \count_sig[12]_i_2_n_0\,
      S(2) => \count_sig[12]_i_3_n_0\,
      S(1) => \count_sig[12]_i_4_n_0\,
      S(0) => \count_sig[12]_i_5_n_0\
    );
\count_sig_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[12]_i_1_n_6\,
      Q => count_sig_reg(13)
    );
\count_sig_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[12]_i_1_n_5\,
      Q => count_sig_reg(14)
    );
\count_sig_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[12]_i_1_n_4\,
      Q => count_sig_reg(15)
    );
\count_sig_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[16]_i_1_n_7\,
      Q => count_sig_reg(16)
    );
\count_sig_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[12]_i_1_n_0\,
      CO(3) => \count_sig_reg[16]_i_1_n_0\,
      CO(2) => \count_sig_reg[16]_i_1_n_1\,
      CO(1) => \count_sig_reg[16]_i_1_n_2\,
      CO(0) => \count_sig_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[16]_i_1_n_4\,
      O(2) => \count_sig_reg[16]_i_1_n_5\,
      O(1) => \count_sig_reg[16]_i_1_n_6\,
      O(0) => \count_sig_reg[16]_i_1_n_7\,
      S(3) => \count_sig[16]_i_2_n_0\,
      S(2) => \count_sig[16]_i_3_n_0\,
      S(1) => \count_sig[16]_i_4_n_0\,
      S(0) => \count_sig[16]_i_5_n_0\
    );
\count_sig_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[16]_i_1_n_6\,
      Q => count_sig_reg(17)
    );
\count_sig_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[16]_i_1_n_5\,
      Q => count_sig_reg(18)
    );
\count_sig_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[16]_i_1_n_4\,
      Q => count_sig_reg(19)
    );
\count_sig_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[0]_i_1_n_6\,
      Q => count_sig_reg(1)
    );
\count_sig_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[20]_i_1_n_7\,
      Q => count_sig_reg(20)
    );
\count_sig_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[16]_i_1_n_0\,
      CO(3) => \count_sig_reg[20]_i_1_n_0\,
      CO(2) => \count_sig_reg[20]_i_1_n_1\,
      CO(1) => \count_sig_reg[20]_i_1_n_2\,
      CO(0) => \count_sig_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[20]_i_1_n_4\,
      O(2) => \count_sig_reg[20]_i_1_n_5\,
      O(1) => \count_sig_reg[20]_i_1_n_6\,
      O(0) => \count_sig_reg[20]_i_1_n_7\,
      S(3) => \count_sig[20]_i_2_n_0\,
      S(2) => \count_sig[20]_i_3_n_0\,
      S(1) => \count_sig[20]_i_4_n_0\,
      S(0) => \count_sig[20]_i_5_n_0\
    );
\count_sig_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[20]_i_1_n_6\,
      Q => count_sig_reg(21)
    );
\count_sig_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[20]_i_1_n_5\,
      Q => count_sig_reg(22)
    );
\count_sig_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[20]_i_1_n_4\,
      Q => count_sig_reg(23)
    );
\count_sig_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[24]_i_1_n_7\,
      Q => count_sig_reg(24)
    );
\count_sig_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[20]_i_1_n_0\,
      CO(3 downto 2) => \NLW_count_sig_reg[24]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_sig_reg[24]_i_1_n_2\,
      CO(0) => \count_sig_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_sig_reg[24]_i_1_O_UNCONNECTED\(3),
      O(2) => \count_sig_reg[24]_i_1_n_5\,
      O(1) => \count_sig_reg[24]_i_1_n_6\,
      O(0) => \count_sig_reg[24]_i_1_n_7\,
      S(3) => '0',
      S(2) => \count_sig[24]_i_2_n_0\,
      S(1) => \count_sig[24]_i_3_n_0\,
      S(0) => \count_sig[24]_i_4_n_0\
    );
\count_sig_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[24]_i_1_n_6\,
      Q => count_sig_reg(25)
    );
\count_sig_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[24]_i_1_n_5\,
      Q => count_sig_reg(26)
    );
\count_sig_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[0]_i_1_n_5\,
      Q => count_sig_reg(2)
    );
\count_sig_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[0]_i_1_n_4\,
      Q => count_sig_reg(3)
    );
\count_sig_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[4]_i_1_n_7\,
      Q => count_sig_reg(4)
    );
\count_sig_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[0]_i_1_n_0\,
      CO(3) => \count_sig_reg[4]_i_1_n_0\,
      CO(2) => \count_sig_reg[4]_i_1_n_1\,
      CO(1) => \count_sig_reg[4]_i_1_n_2\,
      CO(0) => \count_sig_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[4]_i_1_n_4\,
      O(2) => \count_sig_reg[4]_i_1_n_5\,
      O(1) => \count_sig_reg[4]_i_1_n_6\,
      O(0) => \count_sig_reg[4]_i_1_n_7\,
      S(3) => \count_sig[4]_i_2_n_0\,
      S(2) => \count_sig[4]_i_3_n_0\,
      S(1) => \count_sig[4]_i_4_n_0\,
      S(0) => \count_sig[4]_i_5_n_0\
    );
\count_sig_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[4]_i_1_n_6\,
      Q => count_sig_reg(5)
    );
\count_sig_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[4]_i_1_n_5\,
      Q => count_sig_reg(6)
    );
\count_sig_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[4]_i_1_n_4\,
      Q => count_sig_reg(7)
    );
\count_sig_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[8]_i_1_n_7\,
      Q => count_sig_reg(8)
    );
\count_sig_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[4]_i_1_n_0\,
      CO(3) => \count_sig_reg[8]_i_1_n_0\,
      CO(2) => \count_sig_reg[8]_i_1_n_1\,
      CO(1) => \count_sig_reg[8]_i_1_n_2\,
      CO(0) => \count_sig_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[8]_i_1_n_4\,
      O(2) => \count_sig_reg[8]_i_1_n_5\,
      O(1) => \count_sig_reg[8]_i_1_n_6\,
      O(0) => \count_sig_reg[8]_i_1_n_7\,
      S(3) => \count_sig[8]_i_2_n_0\,
      S(2) => \count_sig[8]_i_3_n_0\,
      S(1) => \count_sig[8]_i_4_n_0\,
      S(0) => \count_sig[8]_i_5_n_0\
    );
\count_sig_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \count_sig_reg[8]_i_1_n_6\,
      Q => count_sig_reg(9)
    );
output_sig_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => load,
      I1 => \^output\,
      O => output_sig_i_1_n_0
    );
output_sig_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => output_sig_i_1_n_0,
      Q => \^output\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    max_count : in STD_LOGIC_VECTOR ( 26 downto 0 );
    output : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_blink_tunable_0_0,blink_tunable,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "blink_tunable,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blink_tunable
     port map (
      clk => clk,
      max_count(26 downto 0) => max_count(26 downto 0),
      output => output,
      reset => reset
    );
end STRUCTURE;
