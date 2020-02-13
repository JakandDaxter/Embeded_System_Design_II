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
          PERIOD : in std_logic_vector(25 downto 0); 
      
	  
          ----- DUTY -----
          DUTY : in std_logic_vector(25 downto 0) 
	    
      	 );
    end component;
    
---------------------------------  

-----Signals-----
constant timers         :time := 20 ns;

signal clk              :std_logic :='0';
signal resetp           :std_logic :='1'; 

signal enable           :std_logic :='0';
signal tbperiod         :std_logic_vector(25 downto 0) := "00000000010000000000000000"; --50khs

signal tbduty50           :std_logic_vector(25 downto 0) := "00000000001000000000000000"; --50% DUTY
signal tbduty25           :std_logic_vector(25 downto 0) := "00000000000100000000000000"; --25% DUTY
signal tbduty75           :std_logic_vector(25 downto 0) := "00000000001100000000000000"; --75% DUTY
signal tbduty10           :std_logic_vector(25 downto 0) := "00000000000001100110011001"; --10% DUTY


signal pwm_sig10          : std_logic;
signal pwm_sig25          : std_logic;
signal pwm_sig50          : std_logic;
signal pwm_sig75          : std_logic;

-- End of signals

begin

-- Unit under test
uut10: Top
  port map (
            CLOCK       => clk,
            reset       => resetp,
            en          => enable,
            PERIOD      => tbperiod,
            DUTY        => tbduty10,
            PWM         => pwm_sig10
            );
			
-- Unit under test
uut25: Top
  port map (
            CLOCK       => clk,
            reset       => resetp,
            en          => enable,
            PERIOD      => tbperiod,
            DUTY        => tbduty25,
            PWM         => pwm_sig25
            );
			
-- Unit under test
uut50: Top
  port map (
            CLOCK       => clk,
            reset       => resetp,
            en          => enable,
            PERIOD      => tbperiod,
            DUTY        => tbduty50,
            PWM         => pwm_sig50
            );
			
-- Unit under test
uut75: Top
  port map (
            CLOCK       => clk,
            reset       => resetp,
            en          => enable,
            PERIOD      => tbperiod,
            DUTY        => tbduty75,
            PWM         => pwm_sig75
            );

-- Clock process
process
begin
  clk <= not clk;
  wait for timers/2;
end process;
-----------
	PROCESS
		BEGIN
				
		WAIT FOR 2*timers;
		enable <= '1';
		
	END PROCESS;


-- Main test process
process
begin
  report "****************** TB Start ****************" severity note;
  resetp <= '0';
  
  report "****************** TB Finish ****************" severity note;
  wait;
end process; 
    
end top_beh;