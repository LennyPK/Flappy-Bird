LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Timer IS
	PORT (Clock		: IN STD_LOGIC;
		  Data_In			: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		  LED_out			: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY Timer;

ARCHITECTURE arc OF Timer IS
	SIGNAL 	C_Direction, tens_Enable	: STD_LOGIC;
	SIGNAL	C_Reset, Start						: STD_LOGIC;
--	SIGNAL	C_Q_Tens					: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL	C_Q_Ones					: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL 	tmp							: STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	COMPONENT BCD_Counter IS
		PORT (	Clk, Direction, Init, Enable : IN STD_LOGIC;
				Q_Out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT BCD_Counter;
	
BEGIN
	DUO: BCD_Counter PORT MAP (Clk => Clock, Direction => C_Direction, Init => C_Reset, Enable => Start, Q_Out => C_Q_Ones);
	
	Start <= '1';
	C_Reset <= '0';
	C_Direction <= '0';
	tmp <= 	"10000000" WHEN C_Q_Ones = "0001" ELSE 	--1
			"01000000" WHEN C_Q_Ones = "0010" ELSE 	--2
			"00100000" WHEN C_Q_Ones = "0011" ELSE 	--3
			"00010000" WHEN C_Q_Ones = "0100" ELSE	--4
			"00001000" WHEN C_Q_Ones = "0101" ELSE 	--5 
			"00000100" WHEN C_Q_Ones = "0110" ELSE 	--6
			"00000010" WHEN C_Q_Ones = "0111" ELSE 	--7
			"00000001" WHEN C_Q_Ones = "1000" ELSE	--8
			"10000001" WHEN C_Q_Ones = "1001" ELSE 	--9
			"10000010" WHEN C_Q_Ones = "0000" ELSE 	--0
			"11111111";

	LED_out <= tmp WHEN (Data_In(0) = '0') ELSE "11111111";
END ARCHITECTURE arc;