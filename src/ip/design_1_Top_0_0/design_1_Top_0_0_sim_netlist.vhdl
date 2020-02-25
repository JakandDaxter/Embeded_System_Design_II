-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Feb 22 09:04:00 2020
-- Host        : ECTET-1360-13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/axt3290/Downloads/blinkAXI-Aliana/src/ip/design_1_Top_0_0/design_1_Top_0_0_sim_netlist.vhdl
-- Design      : design_1_Top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Top_0_0_Top is
  port (
    PWM : out STD_LOGIC;
    en : in STD_LOGIC;
    CLOCK : in STD_LOGIC;
    reset : in STD_LOGIC;
    PERIOD : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DUTY : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Top_0_0_Top : entity is "Top";
end design_1_Top_0_0_Top;

architecture STRUCTURE of design_1_Top_0_0_Top is
  signal \counter_sig[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_sig[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_sig[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter_sig[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter_sig[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter_sig[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter_sig[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter_sig[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter_sig[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter_sig[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter_sig[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter_sig[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter_sig[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter_sig[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter_sig[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter_sig[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter_sig[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter_sig[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter_sig[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter_sig[24]_i_4_n_0\ : STD_LOGIC;
  signal \counter_sig[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_sig[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter_sig[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter_sig[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter_sig[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_sig[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter_sig[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter_sig[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_sig_reg : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \counter_sig_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_sig_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_sig_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_sig_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_sig_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_sig_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_sig_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_sig_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_sig_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_sig_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_sig_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_sig_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_sig_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_sig_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_sig_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_sig_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_sig_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_sig_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_sig_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_sig_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_sig_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_sig_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_sig_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_sig_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_sig_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_sig_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_sig_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_sig_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_sig_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_sig_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_sig_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_sig_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_sig_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_sig_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_sig_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_sig_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_sig_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_sig_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_sig_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_sig_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_sig_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_sig_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_sig_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_sig_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_sig_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_sig_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_sig_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_sig_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_sig_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_sig_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_sig_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_sig_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_sig_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal output_sig1 : STD_LOGIC;
  signal \output_sig1__8_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__0_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__0_n_1\ : STD_LOGIC;
  signal \output_sig1__8_carry__0_n_2\ : STD_LOGIC;
  signal \output_sig1__8_carry__0_n_3\ : STD_LOGIC;
  signal \output_sig1__8_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__1_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__1_n_1\ : STD_LOGIC;
  signal \output_sig1__8_carry__1_n_2\ : STD_LOGIC;
  signal \output_sig1__8_carry__1_n_3\ : STD_LOGIC;
  signal \output_sig1__8_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry__2_n_3\ : STD_LOGIC;
  signal \output_sig1__8_carry_i_1_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry_i_2_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry_i_3_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry_i_4_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry_i_5_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry_i_6_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry_i_7_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry_i_8_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry_n_0\ : STD_LOGIC;
  signal \output_sig1__8_carry_n_1\ : STD_LOGIC;
  signal \output_sig1__8_carry_n_2\ : STD_LOGIC;
  signal \output_sig1__8_carry_n_3\ : STD_LOGIC;
  signal \output_sig1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \output_sig1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \output_sig1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \output_sig1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \output_sig1_carry__0_n_0\ : STD_LOGIC;
  signal \output_sig1_carry__0_n_1\ : STD_LOGIC;
  signal \output_sig1_carry__0_n_2\ : STD_LOGIC;
  signal \output_sig1_carry__0_n_3\ : STD_LOGIC;
  signal \output_sig1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \output_sig1_carry__1_n_3\ : STD_LOGIC;
  signal output_sig1_carry_i_1_n_0 : STD_LOGIC;
  signal output_sig1_carry_i_2_n_0 : STD_LOGIC;
  signal output_sig1_carry_i_3_n_0 : STD_LOGIC;
  signal output_sig1_carry_i_4_n_0 : STD_LOGIC;
  signal output_sig1_carry_n_0 : STD_LOGIC;
  signal output_sig1_carry_n_1 : STD_LOGIC;
  signal output_sig1_carry_n_2 : STD_LOGIC;
  signal output_sig1_carry_n_3 : STD_LOGIC;
  signal output_sig_i_1_n_0 : STD_LOGIC;
  signal \NLW_counter_sig_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_sig_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_output_sig1__8_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_output_sig1__8_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_output_sig1__8_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_output_sig1__8_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_output_sig1__8_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_output_sig1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_output_sig1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_output_sig1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_output_sig1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\counter_sig[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(0),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[0]_i_2_n_0\
    );
\counter_sig[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(3),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[0]_i_3_n_0\
    );
\counter_sig[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(2),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[0]_i_4_n_0\
    );
\counter_sig[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(1),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[0]_i_5_n_0\
    );
\counter_sig[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_sig_reg(0),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[0]_i_6_n_0\
    );
\counter_sig[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(15),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[12]_i_2_n_0\
    );
\counter_sig[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(14),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[12]_i_3_n_0\
    );
\counter_sig[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(13),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[12]_i_4_n_0\
    );
\counter_sig[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(12),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[12]_i_5_n_0\
    );
\counter_sig[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(19),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[16]_i_2_n_0\
    );
\counter_sig[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(18),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[16]_i_3_n_0\
    );
\counter_sig[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(17),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[16]_i_4_n_0\
    );
\counter_sig[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(16),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[16]_i_5_n_0\
    );
\counter_sig[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(23),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[20]_i_2_n_0\
    );
\counter_sig[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(22),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[20]_i_3_n_0\
    );
\counter_sig[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(21),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[20]_i_4_n_0\
    );
\counter_sig[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(20),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[20]_i_5_n_0\
    );
\counter_sig[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(26),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[24]_i_2_n_0\
    );
\counter_sig[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(25),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[24]_i_3_n_0\
    );
\counter_sig[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(24),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[24]_i_4_n_0\
    );
\counter_sig[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(7),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[4]_i_2_n_0\
    );
\counter_sig[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(6),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[4]_i_3_n_0\
    );
\counter_sig[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(5),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[4]_i_4_n_0\
    );
\counter_sig[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(4),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[4]_i_5_n_0\
    );
\counter_sig[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(11),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[8]_i_2_n_0\
    );
\counter_sig[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(10),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[8]_i_3_n_0\
    );
\counter_sig[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(9),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[8]_i_4_n_0\
    );
\counter_sig[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_sig_reg(8),
      I1 => \output_sig1_carry__1_n_3\,
      O => \counter_sig[8]_i_5_n_0\
    );
\counter_sig_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[0]_i_1_n_7\,
      Q => counter_sig_reg(0)
    );
\counter_sig_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_sig_reg[0]_i_1_n_0\,
      CO(2) => \counter_sig_reg[0]_i_1_n_1\,
      CO(1) => \counter_sig_reg[0]_i_1_n_2\,
      CO(0) => \counter_sig_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter_sig[0]_i_2_n_0\,
      O(3) => \counter_sig_reg[0]_i_1_n_4\,
      O(2) => \counter_sig_reg[0]_i_1_n_5\,
      O(1) => \counter_sig_reg[0]_i_1_n_6\,
      O(0) => \counter_sig_reg[0]_i_1_n_7\,
      S(3) => \counter_sig[0]_i_3_n_0\,
      S(2) => \counter_sig[0]_i_4_n_0\,
      S(1) => \counter_sig[0]_i_5_n_0\,
      S(0) => \counter_sig[0]_i_6_n_0\
    );
\counter_sig_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[8]_i_1_n_5\,
      Q => counter_sig_reg(10)
    );
\counter_sig_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[8]_i_1_n_4\,
      Q => counter_sig_reg(11)
    );
\counter_sig_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[12]_i_1_n_7\,
      Q => counter_sig_reg(12)
    );
\counter_sig_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_sig_reg[8]_i_1_n_0\,
      CO(3) => \counter_sig_reg[12]_i_1_n_0\,
      CO(2) => \counter_sig_reg[12]_i_1_n_1\,
      CO(1) => \counter_sig_reg[12]_i_1_n_2\,
      CO(0) => \counter_sig_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_sig_reg[12]_i_1_n_4\,
      O(2) => \counter_sig_reg[12]_i_1_n_5\,
      O(1) => \counter_sig_reg[12]_i_1_n_6\,
      O(0) => \counter_sig_reg[12]_i_1_n_7\,
      S(3) => \counter_sig[12]_i_2_n_0\,
      S(2) => \counter_sig[12]_i_3_n_0\,
      S(1) => \counter_sig[12]_i_4_n_0\,
      S(0) => \counter_sig[12]_i_5_n_0\
    );
\counter_sig_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[12]_i_1_n_6\,
      Q => counter_sig_reg(13)
    );
\counter_sig_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[12]_i_1_n_5\,
      Q => counter_sig_reg(14)
    );
\counter_sig_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[12]_i_1_n_4\,
      Q => counter_sig_reg(15)
    );
\counter_sig_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[16]_i_1_n_7\,
      Q => counter_sig_reg(16)
    );
\counter_sig_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_sig_reg[12]_i_1_n_0\,
      CO(3) => \counter_sig_reg[16]_i_1_n_0\,
      CO(2) => \counter_sig_reg[16]_i_1_n_1\,
      CO(1) => \counter_sig_reg[16]_i_1_n_2\,
      CO(0) => \counter_sig_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_sig_reg[16]_i_1_n_4\,
      O(2) => \counter_sig_reg[16]_i_1_n_5\,
      O(1) => \counter_sig_reg[16]_i_1_n_6\,
      O(0) => \counter_sig_reg[16]_i_1_n_7\,
      S(3) => \counter_sig[16]_i_2_n_0\,
      S(2) => \counter_sig[16]_i_3_n_0\,
      S(1) => \counter_sig[16]_i_4_n_0\,
      S(0) => \counter_sig[16]_i_5_n_0\
    );
\counter_sig_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[16]_i_1_n_6\,
      Q => counter_sig_reg(17)
    );
\counter_sig_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[16]_i_1_n_5\,
      Q => counter_sig_reg(18)
    );
\counter_sig_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[16]_i_1_n_4\,
      Q => counter_sig_reg(19)
    );
\counter_sig_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[0]_i_1_n_6\,
      Q => counter_sig_reg(1)
    );
\counter_sig_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[20]_i_1_n_7\,
      Q => counter_sig_reg(20)
    );
\counter_sig_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_sig_reg[16]_i_1_n_0\,
      CO(3) => \counter_sig_reg[20]_i_1_n_0\,
      CO(2) => \counter_sig_reg[20]_i_1_n_1\,
      CO(1) => \counter_sig_reg[20]_i_1_n_2\,
      CO(0) => \counter_sig_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_sig_reg[20]_i_1_n_4\,
      O(2) => \counter_sig_reg[20]_i_1_n_5\,
      O(1) => \counter_sig_reg[20]_i_1_n_6\,
      O(0) => \counter_sig_reg[20]_i_1_n_7\,
      S(3) => \counter_sig[20]_i_2_n_0\,
      S(2) => \counter_sig[20]_i_3_n_0\,
      S(1) => \counter_sig[20]_i_4_n_0\,
      S(0) => \counter_sig[20]_i_5_n_0\
    );
\counter_sig_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[20]_i_1_n_6\,
      Q => counter_sig_reg(21)
    );
\counter_sig_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[20]_i_1_n_5\,
      Q => counter_sig_reg(22)
    );
\counter_sig_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[20]_i_1_n_4\,
      Q => counter_sig_reg(23)
    );
\counter_sig_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[24]_i_1_n_7\,
      Q => counter_sig_reg(24)
    );
\counter_sig_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_sig_reg[20]_i_1_n_0\,
      CO(3 downto 2) => \NLW_counter_sig_reg[24]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_sig_reg[24]_i_1_n_2\,
      CO(0) => \counter_sig_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_sig_reg[24]_i_1_O_UNCONNECTED\(3),
      O(2) => \counter_sig_reg[24]_i_1_n_5\,
      O(1) => \counter_sig_reg[24]_i_1_n_6\,
      O(0) => \counter_sig_reg[24]_i_1_n_7\,
      S(3) => '0',
      S(2) => \counter_sig[24]_i_2_n_0\,
      S(1) => \counter_sig[24]_i_3_n_0\,
      S(0) => \counter_sig[24]_i_4_n_0\
    );
\counter_sig_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[24]_i_1_n_6\,
      Q => counter_sig_reg(25)
    );
\counter_sig_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[24]_i_1_n_5\,
      Q => counter_sig_reg(26)
    );
\counter_sig_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[0]_i_1_n_5\,
      Q => counter_sig_reg(2)
    );
\counter_sig_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[0]_i_1_n_4\,
      Q => counter_sig_reg(3)
    );
\counter_sig_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[4]_i_1_n_7\,
      Q => counter_sig_reg(4)
    );
\counter_sig_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_sig_reg[0]_i_1_n_0\,
      CO(3) => \counter_sig_reg[4]_i_1_n_0\,
      CO(2) => \counter_sig_reg[4]_i_1_n_1\,
      CO(1) => \counter_sig_reg[4]_i_1_n_2\,
      CO(0) => \counter_sig_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_sig_reg[4]_i_1_n_4\,
      O(2) => \counter_sig_reg[4]_i_1_n_5\,
      O(1) => \counter_sig_reg[4]_i_1_n_6\,
      O(0) => \counter_sig_reg[4]_i_1_n_7\,
      S(3) => \counter_sig[4]_i_2_n_0\,
      S(2) => \counter_sig[4]_i_3_n_0\,
      S(1) => \counter_sig[4]_i_4_n_0\,
      S(0) => \counter_sig[4]_i_5_n_0\
    );
\counter_sig_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[4]_i_1_n_6\,
      Q => counter_sig_reg(5)
    );
\counter_sig_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[4]_i_1_n_5\,
      Q => counter_sig_reg(6)
    );
\counter_sig_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[4]_i_1_n_4\,
      Q => counter_sig_reg(7)
    );
\counter_sig_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[8]_i_1_n_7\,
      Q => counter_sig_reg(8)
    );
\counter_sig_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_sig_reg[4]_i_1_n_0\,
      CO(3) => \counter_sig_reg[8]_i_1_n_0\,
      CO(2) => \counter_sig_reg[8]_i_1_n_1\,
      CO(1) => \counter_sig_reg[8]_i_1_n_2\,
      CO(0) => \counter_sig_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_sig_reg[8]_i_1_n_4\,
      O(2) => \counter_sig_reg[8]_i_1_n_5\,
      O(1) => \counter_sig_reg[8]_i_1_n_6\,
      O(0) => \counter_sig_reg[8]_i_1_n_7\,
      S(3) => \counter_sig[8]_i_2_n_0\,
      S(2) => \counter_sig[8]_i_3_n_0\,
      S(1) => \counter_sig[8]_i_4_n_0\,
      S(0) => \counter_sig[8]_i_5_n_0\
    );
\counter_sig_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => \counter_sig_reg[8]_i_1_n_6\,
      Q => counter_sig_reg(9)
    );
\output_sig1__8_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \output_sig1__8_carry_n_0\,
      CO(2) => \output_sig1__8_carry_n_1\,
      CO(1) => \output_sig1__8_carry_n_2\,
      CO(0) => \output_sig1__8_carry_n_3\,
      CYINIT => '1',
      DI(3) => \output_sig1__8_carry_i_1_n_0\,
      DI(2) => \output_sig1__8_carry_i_2_n_0\,
      DI(1) => \output_sig1__8_carry_i_3_n_0\,
      DI(0) => \output_sig1__8_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_output_sig1__8_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \output_sig1__8_carry_i_5_n_0\,
      S(2) => \output_sig1__8_carry_i_6_n_0\,
      S(1) => \output_sig1__8_carry_i_7_n_0\,
      S(0) => \output_sig1__8_carry_i_8_n_0\
    );
\output_sig1__8_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \output_sig1__8_carry_n_0\,
      CO(3) => \output_sig1__8_carry__0_n_0\,
      CO(2) => \output_sig1__8_carry__0_n_1\,
      CO(1) => \output_sig1__8_carry__0_n_2\,
      CO(0) => \output_sig1__8_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \output_sig1__8_carry__0_i_1_n_0\,
      DI(2) => \output_sig1__8_carry__0_i_2_n_0\,
      DI(1) => \output_sig1__8_carry__0_i_3_n_0\,
      DI(0) => \output_sig1__8_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_output_sig1__8_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \output_sig1__8_carry__0_i_5_n_0\,
      S(2) => \output_sig1__8_carry__0_i_6_n_0\,
      S(1) => \output_sig1__8_carry__0_i_7_n_0\,
      S(0) => \output_sig1__8_carry__0_i_8_n_0\
    );
\output_sig1__8_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_sig_reg(14),
      I1 => DUTY(14),
      I2 => DUTY(15),
      I3 => counter_sig_reg(15),
      O => \output_sig1__8_carry__0_i_1_n_0\
    );
\output_sig1__8_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_sig_reg(12),
      I1 => DUTY(12),
      I2 => DUTY(13),
      I3 => counter_sig_reg(13),
      O => \output_sig1__8_carry__0_i_2_n_0\
    );
\output_sig1__8_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_sig_reg(10),
      I1 => DUTY(10),
      I2 => DUTY(11),
      I3 => counter_sig_reg(11),
      O => \output_sig1__8_carry__0_i_3_n_0\
    );
\output_sig1__8_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_sig_reg(8),
      I1 => DUTY(8),
      I2 => DUTY(9),
      I3 => counter_sig_reg(9),
      O => \output_sig1__8_carry__0_i_4_n_0\
    );
\output_sig1__8_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_sig_reg(14),
      I1 => DUTY(14),
      I2 => counter_sig_reg(15),
      I3 => DUTY(15),
      O => \output_sig1__8_carry__0_i_5_n_0\
    );
\output_sig1__8_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_sig_reg(12),
      I1 => DUTY(12),
      I2 => counter_sig_reg(13),
      I3 => DUTY(13),
      O => \output_sig1__8_carry__0_i_6_n_0\
    );
\output_sig1__8_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_sig_reg(10),
      I1 => DUTY(10),
      I2 => counter_sig_reg(11),
      I3 => DUTY(11),
      O => \output_sig1__8_carry__0_i_7_n_0\
    );
\output_sig1__8_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_sig_reg(8),
      I1 => DUTY(8),
      I2 => counter_sig_reg(9),
      I3 => DUTY(9),
      O => \output_sig1__8_carry__0_i_8_n_0\
    );
\output_sig1__8_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \output_sig1__8_carry__0_n_0\,
      CO(3) => \output_sig1__8_carry__1_n_0\,
      CO(2) => \output_sig1__8_carry__1_n_1\,
      CO(1) => \output_sig1__8_carry__1_n_2\,
      CO(0) => \output_sig1__8_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \output_sig1__8_carry__1_i_1_n_0\,
      DI(2) => \output_sig1__8_carry__1_i_2_n_0\,
      DI(1) => \output_sig1__8_carry__1_i_3_n_0\,
      DI(0) => \output_sig1__8_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_output_sig1__8_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \output_sig1__8_carry__1_i_5_n_0\,
      S(2) => \output_sig1__8_carry__1_i_6_n_0\,
      S(1) => \output_sig1__8_carry__1_i_7_n_0\,
      S(0) => \output_sig1__8_carry__1_i_8_n_0\
    );
\output_sig1__8_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_sig_reg(22),
      I1 => DUTY(22),
      I2 => DUTY(23),
      I3 => counter_sig_reg(23),
      O => \output_sig1__8_carry__1_i_1_n_0\
    );
\output_sig1__8_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_sig_reg(20),
      I1 => DUTY(20),
      I2 => DUTY(21),
      I3 => counter_sig_reg(21),
      O => \output_sig1__8_carry__1_i_2_n_0\
    );
\output_sig1__8_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_sig_reg(18),
      I1 => DUTY(18),
      I2 => DUTY(19),
      I3 => counter_sig_reg(19),
      O => \output_sig1__8_carry__1_i_3_n_0\
    );
\output_sig1__8_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_sig_reg(16),
      I1 => DUTY(16),
      I2 => DUTY(17),
      I3 => counter_sig_reg(17),
      O => \output_sig1__8_carry__1_i_4_n_0\
    );
\output_sig1__8_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_sig_reg(22),
      I1 => DUTY(22),
      I2 => counter_sig_reg(23),
      I3 => DUTY(23),
      O => \output_sig1__8_carry__1_i_5_n_0\
    );
\output_sig1__8_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_sig_reg(20),
      I1 => DUTY(20),
      I2 => counter_sig_reg(21),
      I3 => DUTY(21),
      O => \output_sig1__8_carry__1_i_6_n_0\
    );
\output_sig1__8_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_sig_reg(18),
      I1 => DUTY(18),
      I2 => counter_sig_reg(19),
      I3 => DUTY(19),
      O => \output_sig1__8_carry__1_i_7_n_0\
    );
\output_sig1__8_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_sig_reg(16),
      I1 => DUTY(16),
      I2 => counter_sig_reg(17),
      I3 => DUTY(17),
      O => \output_sig1__8_carry__1_i_8_n_0\
    );
\output_sig1__8_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \output_sig1__8_carry__1_n_0\,
      CO(3 downto 2) => \NLW_output_sig1__8_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => output_sig1,
      CO(0) => \output_sig1__8_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => counter_sig_reg(26),
      DI(0) => \output_sig1__8_carry__2_i_1_n_0\,
      O(3 downto 0) => \NLW_output_sig1__8_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \output_sig1__8_carry__2_i_2_n_0\,
      S(0) => \output_sig1__8_carry__2_i_3_n_0\
    );
\output_sig1__8_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_sig_reg(24),
      I1 => DUTY(24),
      I2 => DUTY(25),
      I3 => counter_sig_reg(25),
      O => \output_sig1__8_carry__2_i_1_n_0\
    );
\output_sig1__8_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_sig_reg(26),
      O => \output_sig1__8_carry__2_i_2_n_0\
    );
\output_sig1__8_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_sig_reg(24),
      I1 => DUTY(24),
      I2 => counter_sig_reg(25),
      I3 => DUTY(25),
      O => \output_sig1__8_carry__2_i_3_n_0\
    );
\output_sig1__8_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_sig_reg(6),
      I1 => DUTY(6),
      I2 => DUTY(7),
      I3 => counter_sig_reg(7),
      O => \output_sig1__8_carry_i_1_n_0\
    );
\output_sig1__8_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_sig_reg(4),
      I1 => DUTY(4),
      I2 => DUTY(5),
      I3 => counter_sig_reg(5),
      O => \output_sig1__8_carry_i_2_n_0\
    );
\output_sig1__8_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_sig_reg(2),
      I1 => DUTY(2),
      I2 => DUTY(3),
      I3 => counter_sig_reg(3),
      O => \output_sig1__8_carry_i_3_n_0\
    );
\output_sig1__8_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => counter_sig_reg(0),
      I1 => DUTY(0),
      I2 => DUTY(1),
      I3 => counter_sig_reg(1),
      O => \output_sig1__8_carry_i_4_n_0\
    );
\output_sig1__8_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_sig_reg(6),
      I1 => DUTY(6),
      I2 => counter_sig_reg(7),
      I3 => DUTY(7),
      O => \output_sig1__8_carry_i_5_n_0\
    );
\output_sig1__8_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_sig_reg(4),
      I1 => DUTY(4),
      I2 => counter_sig_reg(5),
      I3 => DUTY(5),
      O => \output_sig1__8_carry_i_6_n_0\
    );
\output_sig1__8_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_sig_reg(2),
      I1 => DUTY(2),
      I2 => counter_sig_reg(3),
      I3 => DUTY(3),
      O => \output_sig1__8_carry_i_7_n_0\
    );
\output_sig1__8_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_sig_reg(0),
      I1 => DUTY(0),
      I2 => counter_sig_reg(1),
      I3 => DUTY(1),
      O => \output_sig1__8_carry_i_8_n_0\
    );
output_sig1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => output_sig1_carry_n_0,
      CO(2) => output_sig1_carry_n_1,
      CO(1) => output_sig1_carry_n_2,
      CO(0) => output_sig1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_output_sig1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => output_sig1_carry_i_1_n_0,
      S(2) => output_sig1_carry_i_2_n_0,
      S(1) => output_sig1_carry_i_3_n_0,
      S(0) => output_sig1_carry_i_4_n_0
    );
\output_sig1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => output_sig1_carry_n_0,
      CO(3) => \output_sig1_carry__0_n_0\,
      CO(2) => \output_sig1_carry__0_n_1\,
      CO(1) => \output_sig1_carry__0_n_2\,
      CO(0) => \output_sig1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_output_sig1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \output_sig1_carry__0_i_1_n_0\,
      S(2) => \output_sig1_carry__0_i_2_n_0\,
      S(1) => \output_sig1_carry__0_i_3_n_0\,
      S(0) => \output_sig1_carry__0_i_4_n_0\
    );
\output_sig1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_sig_reg(21),
      I1 => PERIOD(21),
      I2 => PERIOD(23),
      I3 => counter_sig_reg(23),
      I4 => PERIOD(22),
      I5 => counter_sig_reg(22),
      O => \output_sig1_carry__0_i_1_n_0\
    );
\output_sig1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_sig_reg(18),
      I1 => PERIOD(18),
      I2 => PERIOD(20),
      I3 => counter_sig_reg(20),
      I4 => PERIOD(19),
      I5 => counter_sig_reg(19),
      O => \output_sig1_carry__0_i_2_n_0\
    );
\output_sig1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_sig_reg(15),
      I1 => PERIOD(15),
      I2 => PERIOD(17),
      I3 => counter_sig_reg(17),
      I4 => PERIOD(16),
      I5 => counter_sig_reg(16),
      O => \output_sig1_carry__0_i_3_n_0\
    );
\output_sig1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_sig_reg(12),
      I1 => PERIOD(12),
      I2 => PERIOD(14),
      I3 => counter_sig_reg(14),
      I4 => PERIOD(13),
      I5 => counter_sig_reg(13),
      O => \output_sig1_carry__0_i_4_n_0\
    );
\output_sig1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \output_sig1_carry__0_n_0\,
      CO(3 downto 1) => \NLW_output_sig1_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \output_sig1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_output_sig1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \output_sig1_carry__1_i_1_n_0\
    );
\output_sig1_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000009"
    )
        port map (
      I0 => counter_sig_reg(24),
      I1 => PERIOD(24),
      I2 => counter_sig_reg(26),
      I3 => PERIOD(25),
      I4 => counter_sig_reg(25),
      O => \output_sig1_carry__1_i_1_n_0\
    );
output_sig1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_sig_reg(9),
      I1 => PERIOD(9),
      I2 => PERIOD(11),
      I3 => counter_sig_reg(11),
      I4 => PERIOD(10),
      I5 => counter_sig_reg(10),
      O => output_sig1_carry_i_1_n_0
    );
output_sig1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_sig_reg(6),
      I1 => PERIOD(6),
      I2 => PERIOD(8),
      I3 => counter_sig_reg(8),
      I4 => PERIOD(7),
      I5 => counter_sig_reg(7),
      O => output_sig1_carry_i_2_n_0
    );
output_sig1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_sig_reg(3),
      I1 => PERIOD(3),
      I2 => PERIOD(5),
      I3 => counter_sig_reg(5),
      I4 => PERIOD(4),
      I5 => counter_sig_reg(4),
      O => output_sig1_carry_i_3_n_0
    );
output_sig1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_sig_reg(0),
      I1 => PERIOD(0),
      I2 => PERIOD(2),
      I3 => counter_sig_reg(2),
      I4 => PERIOD(1),
      I5 => counter_sig_reg(1),
      O => output_sig1_carry_i_4_n_0
    );
output_sig_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \output_sig1_carry__1_n_3\,
      I1 => output_sig1,
      O => output_sig_i_1_n_0
    );
output_sig_reg: unisim.vcomponents.FDCE
     port map (
      C => CLOCK,
      CE => en,
      CLR => reset,
      D => output_sig_i_1_n_0,
      Q => PWM
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Top_0_0 is
  port (
    PWM : out STD_LOGIC;
    CLOCK : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    PERIOD : in STD_LOGIC_VECTOR ( 25 downto 0 );
    DUTY : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Top_0_0 : entity is "design_1_Top_0_0,Top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Top_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Top_0_0 : entity is "Top,Vivado 2019.1";
end design_1_Top_0_0;

architecture STRUCTURE of design_1_Top_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of CLOCK : signal is "xilinx.com:signal:clock:1.0 CLOCK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLOCK : signal is "XIL_INTERFACENAME CLOCK, ASSOCIATED_RESET reset, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_Top_0_0_Top
     port map (
      CLOCK => CLOCK,
      DUTY(25 downto 0) => DUTY(25 downto 0),
      PERIOD(25 downto 0) => PERIOD(25 downto 0),
      PWM => PWM,
      en => en,
      reset => reset
    );
end STRUCTURE;
