-- Testbench for the counter. 

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity test_Timer is 
end entity test_Timer;

architecture my_test of test_Timer is 
	signal t_clk            : std_logic; 
	signal t_Switch         : std_logic_vector(9 downto 0);
    signal LED              : std_logic_vector(7 downto 0);

	component Timer is
		PORT (  Clock		        : IN STD_LOGIC;
		        Switch			    : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		        LED_out			    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	end component Timer;
begin
	DUT: Timer port map (Clock => t_clk, Switch => t_Switch, LED_out => LED); 
	-- Initialization process (code that executes onlyonce). 
	init: process
	begin 
		t_Switch <= "0000000000", "1111111111" after 1 ns, "0000000000" after 2 ns;
		t_Switch <= "1000000000", "0000000000" after 10 ns;
        t_Switch <= "0100000000" after 50 ns, "0000000000" after 100 ns;
        t_Switch <= "0010000000" after 150 ns, "0000000000" after 200 ns;
        t_Switch <= "0001000000" after 250 ns, "0000000000" after 300 ns;
        t_Switch <= "0000100000" after 350 ns, "0000000000" after 400 ns;
        t_Switch <= "0000010000" after 450 ns, "0000000000" after 500 ns;
        t_Switch <= "0000001000" after 550 ns, "0000000000" after 600 ns;
        t_Switch <= "0000000100" after 650 ns, "0000000000" after 700 ns;
        t_Switch <= "0000000010" after 750 ns, "0000000000" after 800 ns;
        t_Switch <= "0000000001" after 850 ns, "0000000000" after 900 ns;
		wait;
		
	end process init;
   
	-- clock generation 
	clk_gen: process 
	begin 
		wait for 5 ns; 
		t_clk <= '1'; 
		wait for 5 ns; 
		t_clk <= '0';
	end process clk_gen;
end architecture my_test;