LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Timer IS
	PORT (Clock		        : IN STD_LOGIC;
		  Switch			: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
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
	DUO: BCD_Counter PORT MAP (Clk => Clock, Direction => C_Direction, Init => C_Reset, Enable => Switch(0), Q_Out => C_Q_Ones);
	
	C_Reset <= '0';
	C_Direction <= '0';
    -- PROCESS (Clock)
    -- BEGIN
    --     IF RISING_EDGE(Clock) THEN
    --         IF (Switch(0) = '1') THEN
    --             CASE C_Q_Ones IS
    --                 WHEN "0001" => tmp <= "10011111"; --1
    --                 WHEN "0010" => tmp <= "00100101"; --2
    --                 WHEN "0011" => tmp <= "00001101"; --3
    --                 WHEN "0100" => tmp <= "10011001"; --4
    --                 WHEN "0101" => tmp <= "01001001"; --5
    --                 WHEN "0110" => tmp <= "01000001"; --6
    --                 WHEN "0111" => tmp <= "00011111"; --7
    --                 WHEN "1000" => tmp <= "00000001"; --8
    --                 WHEN "1001" => tmp <= "00001001"; --9
    --                 WHEN "0000" => tmp <= "00000011"; --0
    --                 WHEN OTHERS => tmp <= "11111111";
    --             END CASE;
    --         ELSIF (Switch(0) = '0') THEN
    --             tmp <= "11111111";
    --         END IF;
    --     END IF;
    --     LED_out <= tmp;
    -- END PROCESS;
    PROCESS (Switch)
    BEGIN
        IF (Switch = "0000000001") THEN
            tmp <= "00000011";
        ELSIF (Switch = "0000000010") THEN
            tmp <= "10011111";
        ELSIF (Switch = "0000000100") THEN
            tmp <= "00100101";
        ELSIF (Switch = "0000001000") THEN
            tmp <= "00001101";
        ELSIF (Switch = "0000010000") THEN
            tmp <= "10011001";
        ELSIF (Switch = "0000100000") THEN
            tmp <= "01001001";
        ELSIF (Switch = "0001000000") THEN
            tmp <= "01000001";
        ELSIF (Switch = "0010000000") THEN
            tmp <= "00011111";
        ELSIF (Switch = "0100000000") THEN
            tmp <= "00000001";
        ELSIF (Switch = "1000000000") THEN
            tmp <= "00001001";
        -- ELSE
        --     tmp <= "11111111";
        END IF;
        LED_out <= tmp;
    END PROCESS;
END ARCHITECTURE arc;