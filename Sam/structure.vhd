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
  
  component background_d is
    port (vert_sync : in std_logic;
          pixel_row, pixel_column : in std_logic_vector(9 downto 0);
          colour_info : out rgb_array);
  end component background_d;
  
  component background_d2 is
    port (vert_sync : in std_logic;
          pixel_row, pixel_column : in std_logic_vector(9 downto 0);
          colour_info : out rgb_array);
  end component background_d2;

  component ground is
    port (vert_sync : in std_logic;
          pixel_row, pixel_column : in std_logic_vector(9 downto 0);
          colour_info : out rgb_array);
  end component ground;
  
  component pipe is
    port (vert_sync : in std_logic;
          pipe_no : in integer;
          pixel_row, pixel_column : in std_logic_vector(9 downto 0);
          colour_info : out rgb_array);
  end component pipe;
  
  component flappy_bird
    port (vert_sync : in std_logic;
          pixel_row, pixel_column : in std_logic_vector(9 downto 0);
          colour_info : out rgb_array);
  end component flappy_bird;
  
signal b_array : rgb_array; 
signal bd_array : rgb_array;
signal bd2_array : rgb_array; 
signal g_array : rgb_array;
signal p_array : rgb_array;
signal fb_array : rgb_array;
signal tmp_red, tmp_green, tmp_blue : std_logic_vector(3 downto 0);

begin
  B: background_m
    port map (colour_info => b_array);
      
  BD: background_d
    port map (vert_sync => vert_sync, pixel_row => pixel_row, pixel_column => pixel_column, colour_info => bd_array);
      
  BD2: background_d2
    port map (vert_sync => vert_sync, pixel_row => pixel_row, pixel_column => pixel_column, colour_info => bd_array);
  
  G: ground
    port map (vert_sync => vert_sync, pixel_row => pixel_row, pixel_column => pixel_column, colour_info => g_array);
      
  P: pipe
    port map (vert_sync => vert_sync, pipe_no => 1, pixel_row => pixel_row, pixel_column => pixel_column, colour_info => p_array);
      
  FB: flappy_bird
    port map (vert_sync => vert_sync, pixel_row => pixel_row, pixel_column => pixel_column, colour_info => fb_array);
            
  -- Assign pixels by the order in which they should appear (higher is "closer" to the user).
  tmp_red <= fb_array(0) when fb_array(0) /= "0000" else
             p_array(0) when p_array(0) /= "0000" else
             g_array(0) when g_array(0) /= "0000" else
             bd_array(0) when bd_array(0) /= "0000" else
             bd2_array(0) when bd2_array(0) /= "0000" else
             b_array(0);
  tmp_green <= fb_array(1) when fb_array(1) /= "0000" else
               p_array(1) when p_array(1) /= "0000" else
               g_array(1) when g_array(1) /= "0000" else
               bd_array(1) when bd_array(1) /= "0000" else
               bd2_array(1) when bd2_array(1) /= "0000" else
               b_array(1);
  tmp_blue <= fb_array(2) when fb_array(2) /= "0000" else
              p_array(2) when p_array(2) /= "0000" else
              g_array(2) when g_array(2) /= "0000" else
              bd_array(2) when bd_array(2) /= "0000" else
              bd2_array(2) when bd2_array(2) /= "0000" else
              b_array(2);

  red <= tmp_red;
  green <= tmp_green;
  blue <= tmp_blue;
      
end architecture structure;