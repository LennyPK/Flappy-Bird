-- One digit up/down BCD counter.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity BCD_Counter_Min is 
  port (Clk, Direction, Init, Enable : in std_logic;
        Q_Out : out std_logic_vector(3 downto 0));
end entity BCD_Counter_Min;

architecture behaviour of BCD_Counter_Min is
  signal Q_Out1 : std_logic_vector(3 downto 0);
begin
  
  process(Clk)
  begin
    
    if Clk'event and Clk = '1' then
    -- If initialising, set output based on direction.
    if Init = '1' then
      if Direction = '1' then
        Q_Out1 <= "0101";
      else
        Q_Out1 <= "0000";
      end if;
    end if;
    
    -- If enabled, count up or down based on direction.
    if Enable = '1' then
      if Direction = '0' then
        if Q_Out1 = "0101" then
          Q_Out1 <= "0000";
        else
          Q_Out1 <= std_logic_vector(unsigned(Q_Out1) + "0001");
        end if;
      elsif Direction = '1' then
        if Q_Out1 = "0000" then
          Q_Out1 <= "0101";
        else
          Q_Out1 <= std_logic_vector(unsigned(Q_Out1) - "0001");
        end if;
      else
        Q_Out1 <= "XXXX";
      end if;
    end if;
  end if;
    
  end process;
  Q_Out <= Q_Out1;
end architecture behaviour;
      
  
