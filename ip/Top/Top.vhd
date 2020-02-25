-------------------------------------------------------------------------------
-- Aliana Tejeda
-- Top
--(  )_(  )
--(= '.' =)('')
--('')_('')
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Top is

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
      PERIOD : in std_logic_vector(25 downto 0); 
      
	  
      ----- DUTY -----
      DUTY : in std_logic_vector(25 downto 0) 
	    
  	 );
          
end Top;  

architecture beh of Top  is 
--------------------------------------
--Signals
--------------------------------------
Signal  counter_sig           		:integer range 0 to 67108864 := 0; --64000000
Signal  output_sig           		  :std_logic; 

BEGIN --We begin the ARCHITECTUREE

process (CLOCK, reset)
begin
  if (reset = '1') then
    counter_sig <= 0;
    output_sig  <= '0';
    
  elsif (rising_edge(CLOCK)) then
      if(en = '1')then
    --counter_sig <= counter_sig + 1;
        if (counter_sig >= unsigned(DUTY)) then
            output_sig <= '0';
        else
            output_sig <= '1';
        end if;
    
        if (counter_sig = unsigned(PERIOD)) then
      -- PWM output is '1' for 2 clocks on every period if duty cycle = 0%. Must set PWM output to '0' to prevent this.
          output_sig <= '1';
          counter_sig <= 0;
        else
            counter_sig <= counter_sig + 1;
            --output_sig <= '0';
		end if;
	   end if;
  end if;
end process;    

        
PWM <= output_sig; 
        
end beh;