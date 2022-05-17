library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.rgb_functions.all;

entity colour_signals is
  port (vert_sync : in std_logic;
        pixel_row, pixel_column : in std_logic_vector(9 downto 0);
        red, green, blue : out std_logic_vector(3 downto 0));
end entity colour_signals;

architecture structure of colour_signals is 
  component background_m is
    port (colour_info : out rgb_array);
  end component background_m; 

  component ground is
    port (vert_sync : in std_logic;
          pixel_row, pixel_column : in std_logic_vector(9 downto 0);
          colour_info : out rgb_array);
  end component ground;
  
  component flappy_bird
    port (vert_sync : in std_logic;
          pixel_row, pixel_column : in std_logic_vector(9 downto 0);
          colour_info : out rgb_array);
  end component flappy_bird;
  
signal b_array : rgb_array;  
signal g_array : rgb_array;
signal fb_array : rgb_array;
signal tmp_red, tmp_green, tmp_blue : std_logic_vector(3 downto 0);

begin
  B: background_m
    port map (colour_info => b_array);
  
  G: ground
    port map (vert_sync => vert_sync, pixel_row => pixel_row, pixel_column => pixel_column, colour_info => g_array);
      
  FB: flappy_bird
    port map (vert_sync => vert_sync, pixel_row => pixel_row, pixel_column => pixel_column, colour_info => fb_array);
            
  -- Assign pixels by the order in which they should appear (higher is "closer" to the user).
  tmp_red <= fb_array(0) when fb_array(0) /= "0000" else
             g_array(0) when g_array(0) /= "0000" else
             b_array(0);
  tmp_green <= fb_array(1) when fb_array(1) /= "0000" else
               g_array(1) when g_array(1) /= "0000" else
               b_array(1);
  tmp_blue <= fb_array(2) when fb_array(2) /= "0000" else
              g_array(2) when g_array(2) /= "0000" else
              b_array(2);

  red <= tmp_red;
  green <= tmp_green;
  blue <= tmp_blue;
      
end architecture structure;