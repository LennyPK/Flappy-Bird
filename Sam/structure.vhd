library IEEE;
use std_logic_1164.all;
use numeric_std.all;

entity colour_signals is
  port (clk, vert_sync : in std_logic;
        pixel_row, pixel_column : in std_logic_vector(9 downto 0);
        red, green, blue : out std_logic_vector(3 downto 0));
end entity colour_signals;

architecture structure of colour_signals is 
  component ground is
    port (clk, vert_sync : in std_logic;
          pixel_row, pixel_column : in std_logic_vector(9 downto 0);
          red, green, blue : out std_logic_vector(3 downto 0));
  end component ground;
  
  component flappy_bird
    port (clk, vert_sync : in std_logic;
          pixel_row, pixel_column : in std_logic_vector(9 downto 0);
          red, green, blue : out std_logic_vector(3 downto 0));
  end component flappy_bird;

begin
  
  GROUND: ground
    port map (clk => clk, vert_sync => vert_sync, pixel_row => pixel_row, pixel_column => pixel_column, red => red, green => green, blue => blue);
      
  FB: flappy_bird
    port map (clk => clk, vert_sync => vert_sync, pixel_row => pixel_row, pixel_column => pixel_column, red => red, green => green, blue => blue);
      
end architecture structure;