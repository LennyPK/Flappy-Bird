library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.rgb_functions.all;

entity colour_signals is
  port (clk, vert_sync : in std_logic;
        pixel_row, pixel_column : in std_logic_vector(9 downto 0);
        red, green, blue : out std_logic_vector(3 downto 0));
end entity colour_signals;

architecture structure of colour_signals is 
  component ground is
    port (clk, vert_sync : in std_logic;
          pixel_row, pixel_column : in std_logic_vector(9 downto 0);
          colour_info : out rgb_array);
  end component ground;
  
  component flappy_bird
    port (clk, vert_sync : in std_logic;
          pixel_row, pixel_column : in std_logic_vector(9 downto 0);
          colour_info : out rgb_array);
  end component flappy_bird;
  
  signal g_arrray : rgb_array;
  signal fb_array : rgb_array;
  signal tmp_red, tmp_green, tmp_blue : std_logic_vector(3 downto 0);

begin
  
  G: ground
    port map (clk => clk, vert_sync => vert_sync, pixel_row => pixel_row, pixel_column => pixel_column, colour_info => g_array);
      
  FB: flappy_bird
    port map (clk => clk, vert_sync => vert_sync, pixel_row => pixel_row, pixel_column => pixel_column, colour_info => fb_array);
      
  if g_array(0) /= "----" then
    tmp_red <= g_array(0);
    tmp_green <= g_array(1);
    tmp_blue <= g_array(2);
    
  if fb_array(0) /= "----" then
    tmp_red <= fb_array(0);
    tmp_green <= fb_array(1);
    tmp_blue <= fb_array(2);
    
  red <= tmp_red;
  green <= tmp_green;
  bblue <= tmp_blue;
      
end architecture structure;