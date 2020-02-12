library ieee;
use ieee.std_logic_1164.all;

entity tb_Top is
end tb_Top;

architecture top_beh of tb_Top is
 
 ------Components-----
  
    component Top is
        port (

          ---- PWM Output ----
 
          PWM : out std_logic;

          ----- CLOCK -----
	 
          CLOCK : in std_logic;
      
          ----- ENABLE -----
	 
          en : in std_logic;
      
          ----- RESET -----
	 
          reset : in std_logic;


          ----- PERIOD -----
          PERIOD : in std_logic_vector(26 downto 0); 
      
	  
          ----- DUTY -----
          DUTY : in std_logic_vector(26 downto 0) 
	    
      	 );
    end component;
    
---------------------------------  

-----Signals-----
constant timers         :time := 20 ns;

signal clk              :std_logic :='0';
signal resetp           :std_logic :='1'; 

signal enable           :std_logic :='0';
signal tbperiod         :std_logic_vector(26 downto 0) := --"011110100001001000000000000"; --50Mhz
"000000000000000001111101000"; --1khs
signal tbduty           :std_logic_vector(26 downto 0); --:= --"001111010000100100000000000"; --50% DUTY

signal pwm_sig          : std_logic;

-- End of signals

begin

-- Unit under test
uut: Top
  port map (
            CLOCK       => clk,
            reset       => resetp,
            en          => enable,
            PERIOD      => tbperiod,
            DUTY        => tbduty,
            PWM         => pwm_sig
            );

-- Clock process
process
begin
  clk <= not clk;
  wait for timers/2;
end process;

-- Main test process
main: process
begin
  report "****************** TB Start ****************" severity note;
  resetp <= '0';
  wait for 1 ms;
  enable <= '1';
------------------------------------------------------------  
  report "Variable duty cycle at 50Mhz test" severity note;
  report "50% DC" severity note;
  wait for 5 ms;
------------------------------------------------------------  
  -- report "10% DC" severity note;
  -- tbduty <= "000011000011010100000000000";
  -- wait for 5 ms;
  --
  -- report "15% DC" severity note;
  -- tbduty <= "000100100100111110000000000";
  -- wait for 5 ms;
  
  report "25% DC" severity note;
  tbduty <= "000000000000000000111110100";
  wait for 5 ms;
  
  -- report "35% DC" severity note;
  -- tbduty <= "001010101011100110000000000";
  -- wait for 5 ms;
  --
  -- report "45% DC" severity note;
  -- tbduty <= "001101101110111010000000000";
  -- wait for 5 ms;
  --
  -- report "65% DC" severity note;
  -- tbduty <= "010011110101100000000000000";
  -- wait for 5 ms;
  --
  -- report "75% DC" severity note;
  -- tbduty <= "010110111000110100000000000";
  -- wait for 5 ms;
  --
  -- report "95% DC" severity note;
  -- tbduty <= "011100111111011100000000000";
  -- wait for 5 ms;
  --
---------------------------------------------  
  -- report "DUTY > period" severity note;
  -- tbduty <= "001111010000100100000000000";
  -- wait for 5 ms;
  -- resetp <= '1';
  ---------------------------------------------  
  
  -- wait for 1 ms;
  -- report "50 Mhz  Test of different frewuency" severity note;
  -- resetp <= '0';
  -- tbduty <= "001111010000100100000000000";
  --
  -- report "10 Mhz period" severity note;
  -- tbperiod <= "000110000110101000000000000";
  -- wait for 5 ms;
  --
  -- report "25 Mhz period" severity note;
  -- tbperiod <= "001111010000100100000000000";
  -- wait for 5 ms;
  --
  -- report "100 Mhz period" severity note;
  -- tbperiod <= "111101000010010000000000000";
  -- wait for 5 ms;
  --
  -- report "200 Mhz period" severity note;
  -- tbperiod <= "111101000010010000000000000";
  -- wait for 5 ms;

  report "****************** TB Finish ****************" severity note;
  wait;
end process; 
    
end top_beh;