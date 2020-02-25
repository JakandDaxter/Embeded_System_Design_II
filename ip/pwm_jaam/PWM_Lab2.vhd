-------------------------------------------------------------------------------
-- Jodi-Ann Morgan
-- Lab2 PWM Module
-------------------------------------------------------------------------------
library ieee;
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all; 

ENTITY PWM_Lab2 IS 
PORT ( 
		clk               : in std_logic;
		reset             : in std_logic;
		enable            : in std_logic;
		period            : in std_logic_vector(25 downto 0);
		duty_cycle        : in std_logic_vector(25 downto 0);
		out_wave		  : out std_logic
		); 
END PWM_Lab2; 

ARCHITECTURE beh OF PWM_Lab2 IS

constant clk_freq	: integer := 67108864; --2^26 MHz
 
signal count_sig   		: integer range 0 to clk_freq := 0; --50MHz is the period
signal output_sig   	: std_logic; -- pwm pulse

begin
--Keep track of the period
    Peiodcounter: process (clk,reset) begin
    if (reset = '1') then 
      count_sig <= 0;
      output_sig <= '0';
    elsif (clk'event and clk = '1') then
		if (enable = '1') then
--*****COMPARE COUNTER TO PERIOD******************************************************
		  -- Check if counter is at max count in which is the period
		  if (count_sig = period) then
			count_sig <= 0; --restart counter
			output_sig <= '1'; -- output is high
		  else
			count_sig <= count_sig + 1; --keep counting
			output_sig <= '0';
		  end if; 
--*****COMPARE COUNTER TO DUTY CYCLE******************************************************
		  -- Check if COUNTER is greater than or equal to the duty cycle
		  if (count_sig >= unsigned(duty_cycle)) then
			output_sig <= '0'; -- output is low 
		  else 
			output_sig <= '1'; --output is high as long as the duty cycle is high
		  end if;
			
		end if;
    end if;
  end process;
  
  out_wave <= output_sig;

END beh; 


