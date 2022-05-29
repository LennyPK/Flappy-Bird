library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.rgb_functions.all;

entity colour_signals is
  port (clk, vert_sync : in std_logic;
        left_mouse, right_mouse : in std_logic;
        mode, pushbutton : in std_logic;
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

  component ground is
    port (vert_sync : in std_logic;
          pipe_x_motion : in integer;
          pixel_row, pixel_column : in std_logic_vector(9 downto 0);
          colour_info : out rgb_array);
  end component ground;
  
  component pipe is
    port (vert_sync : in std_logic;
          pipe_no : in integer;
          pr, pc : in std_logic_vector(9 downto 0);
          state : in std_logic_vector(1 downto 0);
          powerup_en : out std_logic;
			    px_motion : out integer;
          colour_info : out rgb_array);
  end component pipe;
  
  component powerup is
    port (powerup_en : in std_logic_vector(2 downto 0);
          pixel_row, pixel_column : in std_logic_vector(9 downto 0);
          colour_info : out rgb_array);
  end component powerup;
  
  component flappy_bird
  port (left_mouse, right_mouse, vert_sync : in std_logic;
        pixel_row, pixel_column : in std_logic_vector(9 downto 0);
        state_out : out std_logic_vector(1 downto 0);
        colour_info : out rgb_array);
  end component flappy_bird;
  
  component main_menu is
    port (
        clk, mode_select, exit_screen       : in std_logic;
        pixel_x, pixel_y                    : in std_logic_vector(9 downto 0);
        state                               : in std_logic_vector(1 downto 0);
        state_out                           : out std_logic_vector(1 downto 0);
        colour_info                         : out rgb_array
    );
  end component main_menu;

  component death_screen is
    port (
        clk, restart                        : in std_logic;
        pixel_x, pixel_y                    : in std_logic_vector(9 downto 0);
        state                               : in std_logic_vector(1 downto 0);
        state_out                           : out std_logic_vector(1 downto 0);
        -- death_init                          : out std_logic;
        colour_info                         : out rgb_array
    );
  end component death_screen;
  
signal b_array : rgb_array; 
signal bd_array : rgb_array; 
signal g_array : rgb_array;
signal p1_array : rgb_array;
signal p2_array : rgb_array;
signal p3_array : rgb_array;
signal pu_array : rgb_array;
signal fb_array : rgb_array;
signal mm_array : rgb_array;
signal ds_array : rgb_array;
-- signal state : std_logic_vector(5 downto 0);
signal state_bird : std_logic_vector(1 downto 0);
signal state_pipe : std_logic_vector(1 downto 0);
signal state_menu : std_logic_vector(1 downto 0);
signal state_death : std_logic_vector(1 downto 0);

signal tmp_red, tmp_green, tmp_blue : std_logic_vector(3 downto 0);

signal px_motion : integer;
signal powerup_en : std_logic_vector(2 downto 0);

begin
  B: background_m
    port map (colour_info => b_array);
      
  BD: background_d
    port map (vert_sync => vert_sync, pixel_row => pixel_row, pixel_column => pixel_column, colour_info => bd_array);
  
  G: ground
    port map (vert_sync => vert_sync, pipe_x_motion => px_motion, pixel_row => pixel_row, pixel_column => pixel_column, colour_info => g_array);
      
  P3: pipe
    port map (vert_sync => vert_sync, pipe_no => 3, pr => pixel_row, pc => pixel_column, state => state_menu, powerup_en => powerup_en(2), px_motion => px_motion, colour_info => p3_array);
      
  P2: pipe
    port map (vert_sync => vert_sync, pipe_no => 2, pr => pixel_row, pc => pixel_column, state => state_menu,  powerup_en => powerup_en(1), colour_info => p2_array);
      
  P1: pipe
    port map (vert_sync => vert_sync, pipe_no => 1, pr => pixel_row, pc => pixel_column, state => state_menu,  powerup_en => powerup_en(0), colour_info => p1_array);
      
  PU: powerup
    port map (powerup_en => powerup_en, pixel_row => pixel_row, pixel_column => pixel_column, colour_info => pu_array);
      
  FB: flappy_bird
    port map (left_mouse => left_mouse, right_mouse => right_mouse, vert_sync => vert_sync, pixel_row => pixel_row, pixel_column => pixel_column, state_out => state_bird, colour_info => fb_array);
       
  MM: main_menu
    port map (clk => clk, mode_select => mode, exit_screen => pushbutton, pixel_x => pixel_column, pixel_y => pixel_row, state => present_state, state_out => state(3 downto 2), colour_info => mm_array);

  DS: death_screen
    port map (clk => clk, restart => left_mouse, pixel_x => pixel_column, pixel_y => pixel_row, state => state_bird, state_out => state(5 downto 4), colour_info => ds_array);

    present_state(0) <= state(0) and state(2) and state(4);
    present_state(1) <= state(1) and state(3) and state(5);

  -- Assign pixels by the order in which they should appear (higher is "closer" to the user).
  tmp_red <= fb_array(0) when fb_array(0) /= "0000" and (present_state = "01" or present_state = "10") else
             pu_array(0) when pu_array(0) /= "0000" and (present_state = "01" or present_state = "10") else
             p1_array(0) when p1_array(0) /= "0000" and (present_state = "01" or present_state = "10") else
             p2_array(0) when p2_array(0) /= "0000" and (present_state = "01" or present_state = "10") else
             p3_array(0) when p3_array(0) /= "0000" and (present_state = "01" or present_state = "10") else
             g_array(0) when g_array(0) /= "0000" and (present_state = "01" or present_state = "10") else
             bd_array(0) when bd_array(0) /= "0000" and (present_state = "01" or present_state = "10") else
             mm_array(0) when mm_array(0) /= "0000" and present_state = "00" else
             ds_array(0) when ds_array(0) /= "0000" and present_state = "11" else
             b_array(0);
  tmp_green <= fb_array(1) when fb_array(1) /= "0000" and (present_state = "01" or present_state = "10") else
               pu_array(1) when pu_array(1) /= "0000" and (present_state = "01" or present_state = "10") else
               p1_array(1) when p1_array(1) /= "0000" and (present_state = "01" or present_state = "10") else
               p2_array(1) when p2_array(1) /= "0000" and (present_state = "01" or present_state = "10") else
               p3_array(1) when p3_array(1) /= "0000" and (present_state = "01" or present_state = "10") else
               g_array(1) when g_array(1) /= "0000" and (present_state = "01" or present_state = "10") else
               bd_array(1) when bd_array(1) /= "0000" and (present_state = "01" or present_state = "10") else
               mm_array(1) when mm_array(1) /= "0000" and present_state = "00" else
               ds_array(1) when ds_array(1) /= "0000" and present_state = "11" else
               b_array(1);
  tmp_blue <= fb_array(2) when fb_array(2) /= "0000" and (present_state = "01" or present_state = "10") else
              pu_array(2) when pu_array(2) /= "0000" and (present_state = "01" or present_state = "10") else
              p1_array(2) when p1_array(2) /= "0000" and (present_state = "01" or present_state = "10") else
              p2_array(2) when p2_array(2) /= "0000" and (present_state = "01" or present_state = "10") else
              p3_array(2) when p3_array(2) /= "0000" and (present_state = "01" or present_state = "10") else
              g_array(2) when g_array(2) /= "0000" and (present_state = "01" or present_state = "10") else
              bd_array(2) when bd_array(2) /= "0000" and (present_state = "01" or present_state = "10") else
              mm_array(2) when mm_array(2) /= "0000" and present_state = "00" else
              ds_array(2) when ds_array(2) /= "0000" and present_state = "11" else
              b_array(2);

  red <= tmp_red;
  green <= tmp_green;
  blue <= tmp_blue;
      
end architecture structure;