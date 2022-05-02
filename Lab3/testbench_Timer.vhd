-- Testbench for the counter. 

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity test_Timer is 
end entity test_Timer;

architecture my_test of test_Timer is 
	signal t_Clock, t_Start : std_logic; 
	signal t_Data_in : std_logic_vector(9 downto 0);
  signal t_Time_out : std_logic;
  -- Comment out the next 2 lines for running on board.
  signal t_OSeg0, t_OSeg1, t_OSeg2 : std_logic_vector(7 downto 0);
  signal t_Tens_seconds : std_logic_vector(3 downto 0);

	component Timer is
		port (Clock, Start : in std_logic;
		      Data_in : in std_logic_vector(9 downto 0);
		      Time_out : out std_logic;
		      -- Comment out the next 2 lines for running on board.
		      OSeg0, OSeg1, OSeg2 : out std_logic_vector(7 downto 0);
		      OTens_seconds : out std_logic_vector(3 downto 0));
	end component Timer;
begin
  DUT: Timer 
    port map (Clock => t_Clock, Start => t_Start, Data_in => t_Data_in, Time_out => t_Time_out, OSeg0 => t_OSeg0, OSeg1 => t_OSeg1, OSeg2 => t_OSeg2, OTens_seconds => t_Tens_seconds); 
	-- Initialization process (code that executes only once). 
	init: process
	begin 
	  t_Start <= '1', '0' after 2000 ms, '1' after 3000 ms;
	  t_Data_in <= "1001001001";
		wait;
		
	end process init;
   
	-- clock generation 
	clk_gen: process 
	begin 
		wait for 500 ms; 
		t_Clock <= '1'; 
		wait for 500 ms; 
		t_Clock <= '0';
	end process clk_gen;
end architecture my_test;