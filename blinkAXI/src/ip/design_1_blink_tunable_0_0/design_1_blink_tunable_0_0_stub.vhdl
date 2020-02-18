-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Feb 18 18:05:53 2020
-- Host        : ECTET-1360-13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               s:/post/blinkAXI/src/ip/design_1_blink_tunable_0_0/design_1_blink_tunable_0_0_stub.vhdl
-- Design      : design_1_blink_tunable_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_blink_tunable_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    max_count : in STD_LOGIC_VECTOR ( 26 downto 0 );
    output : out STD_LOGIC
  );

end design_1_blink_tunable_0_0;

architecture stub of design_1_blink_tunable_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,max_count[26:0],output";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blink_tunable,Vivado 2019.1";
begin
end;
