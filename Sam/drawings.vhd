------------------------------------------------------------

-- Default libraries.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Custom libraries.
--library work;
--use work.rgb_functions.all;

-- Pipe object.
entity pipe_one is
  port (clk, vert_sync : in std_logic;
        pixel_row, pixel_column : in std_logic_vector(9 downto 0);
        red, green, blue : out std_logic_vector(3 downto 0));
end entity pipe_one;

-- Pip architecture.
architecture behaviour of pipe_one is 

-- Pipe image signals.
  -- Custom type to store the converted rgb values in std_logic_vector format.
  type rgb_array is array(0 to 2) of std_logic_vector(3 downto 0);
signal pipe_on : std_logic_vector(3 downto 0);
signal pipe_colours : rgb_array;
signal pipe_width : std_Logic_vector(10 downto 0);
signal pipe_height : std_logic_vector(9 downto 0);
signal p_size : integer range 0 to 7;

signal pipe_x_pos : std_logic_vector(10 downto 0);
signal pipe_y_pos : std_logic_vector(9 downto 0);
signal pipe_x_motion : std_logic_vector(9 downto 0);

signal pixel_col_int : integer range 0 to 50;
signal pixel_row_int : integer range 0 to 50;
-- RANGE is 7 * dim for each

begin
  
-- Width and height for the rectangle of pipe one.


-- Rules for drawing the pipe are as follows:
-- The central region needs to have a random height, and consists of the ends of both pipes.
-- The ends of both pipes needs to remain at a constant distance from each other provided the difficulty does not change.
-- The remaining regions are filled until the edges of the screen.

  
  --pixel information goes here.
  
end architecture behaviour;

------------------------------------------------------------

-- Default libraries.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Custom libraries.
--library work;
--use work.rgb_functions.all;

-- Flappy bird object.
entity flappy_bird is
  port (clk, vert_sync : in std_logic;
        pixel_row, pixel_column : in std_logic_vector(9 downto 0);
        red, green, blue : out std_logic_vector(3 downto 0));
end entity flappy_bird;

-- Flappy bird architecture.
architecture behaviour of flappy_bird is

-- Flappy bird image signals.
  -- Custom type to store the converted rgb values in std_logic_vector format.
  type rgb_array is array(0 to 2) of std_logic_vector(3 downto 0);
signal flappy_bird_on : std_logic_vector(3 downto 0);
signal flappy_bird_colours : rgb_array;
signal flappy_bird_width : std_logic_vector(10 downto 0);
signal flappy_bird_height : std_logic_vector(9 downto 0);
signal fb_size : integer range 0 to 7;

signal flappy_x_pos : std_logic_vector(10 downto 0);
signal flappy_y_pos : std_logic_vector(9 downto 0);
signal flappy_y_motion : std_logic_vector(9 downto 0);

signal pixel_col_int : integer range 0 to 118;
signal pixel_row_int : integer range 0 to 83;

function rgbint_to_rgb4(red_in : integer; green_in : integer; blue_in : integer) 
  return rgb_array is
  
  -- Variables to store calculated values.
  variable colour_out : rgb_array;
	variable	tmp_red	:	integer;
	variable tmp_blue	:	integer;
	variable tmp_green	:	integer;
begin
  
  -- Red channel.
  if red_in >= 15 then
    tmp_red := red_in - 15;
  else tmp_red := 0;
  end if;
    
  tmp_red := tmp_red / 16;
  colour_out(0) := "0000";--std_logic_vector(to_unsigned(tmp_red, 4));
  
  -- Green channel.
  if green_in >= 15 then
    tmp_green := green_in - 15;
  else tmp_green := 0;
  end if;
    
  tmp_green := tmp_green / 16;
  colour_out(1) := "0000";--std_logic_vector(to_unsigned(tmp_green, 4));
  
  -- Blue channel.
  if blue_in >= 15 then
    tmp_blue := blue_in - 15;
  else tmp_blue := 0;
  end if;
    
  tmp_blue := tmp_blue / 16;
  colour_out(2) := "0000";--std_logic_vector(to_unsigned(tmp_blue, 4));
  
  return colour_out;

begin           

-- Width and height for the rectangle of the flappy bird.
fb_size <= 2;
flappy_bird_width <= std_logic_vector(to_unsigned(fb_size*17 - 1, 11));
flappy_bird_height <= std_logic_vector(to_unsigned(fb_size*12 - 1, 10));

-- Row and column integer values for the flappy bird.
pixel_col_int <= (to_integer(unsigned(pixel_column)) mod (fb_size*17) - to_integer(unsigned(flappy_x_pos)) mod (fb_size*17)) mod (fb_size*17);
pixel_row_int <= (to_integer(unsigned(pixel_row)) mod (fb_size*12) - to_integer(unsigned(flappy_y_pos)) mod (fb_size*12)) mod (fb_size*12);

-- x and y position for flappy bird.
flappy_x_pos <= std_logic_vector(to_unsigned(313, 11));
--flappy_y_pos <= conv_std_logic_vector(215, 10);
			
-- Enable flappy bird drawing only within allowed regions.
flappy_bird_on <= "1111" when ((unsigned(pixel_column) <= unsigned(flappy_x_pos) + unsigned(flappy_bird_width))
          and (unsigned(pixel_column) >= unsigned(flappy_x_pos))
          and (unsigned(pixel_row) <= unsigned(flappy_y_pos) + unsigned(flappy_bird_height))
          and (unsigned(pixel_row) >= unsigned(flappy_y_pos))
          
          -- Banned regions within rectangular area.
          and not (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*5 and (pixel_row_int >= fb_size*0 and pixel_row_int <= -1+fb_size*1))
          and not (pixel_col_int >= fb_size*12 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*0 and pixel_row_int <= -1+fb_size*1))
          and not (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*3 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2))
          and not (pixel_col_int >= fb_size*13 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2))
          and not (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*2 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3))
          and not (pixel_col_int >= fb_size*14 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3))
          and not (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*0 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4))
          and not (pixel_col_int >= fb_size*15 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4))
          and not (pixel_col_int >= fb_size*15 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*4 and pixel_row_int <= -1+fb_size*5))
          and not (pixel_col_int >= fb_size*15 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6))
          and not (pixel_col_int >= fb_size*16 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7))
          and not (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*0 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8))
          and not (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*1 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9))
          and not (pixel_col_int >= fb_size*16 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9))
          and not (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*1 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10))
          and not (pixel_col_int >= fb_size*16 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10))
          and not (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*2 and (pixel_row_int >= fb_size*10 and pixel_row_int <= -1+fb_size*11))
          and not (pixel_col_int >= fb_size*15 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*10 and pixel_row_int <= -1+fb_size*11))
          and not (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*4 and (pixel_row_int >= fb_size*11 and pixel_row_int <= -1+fb_size*12))
          and not (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*11 and pixel_row_int <= -1+fb_size*12))) else
      "0000";
      
-- Setting the specific pixel information for every pixel in the flappy bird.
flappy_bird_colours <= -- Row one
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*5 and (pixel_row_int >= fb_size*0 and pixel_row_int <= -1+fb_size*1)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*6 and pixel_col_int <= fb_size-1+fb_size*11 and (pixel_row_int >= fb_size*0 and pixel_row_int <= -1+fb_size*1)) else
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*12 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*0 and pixel_row_int <= -1+fb_size*1)) else
                       -- Row two
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*3 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*4 and pixel_col_int <= fb_size-1+fb_size*5 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2)) else
                       rgbint_to_rgb4(248, 255, 46) when (pixel_col_int >= fb_size*6 and pixel_col_int <= fb_size-1+fb_size*8 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*9 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2)) else
                       rgbint_to_rgb4(253, 255, 250) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*11 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*12 and pixel_col_int <= fb_size-1+fb_size*12 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2)) else
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*13 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2)) else
                       -- Row three
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*2 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*3 and pixel_col_int <= fb_size-1+fb_size*3 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       rgbint_to_rgb4(248, 255, 46) when (pixel_col_int >= fb_size*4 and pixel_col_int <= fb_size-1+fb_size*5 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       rgbint_to_rgb4(249, 241, 36) when (pixel_col_int >= fb_size*6 and pixel_col_int <= fb_size-1+fb_size*7 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*8 and pixel_col_int <= fb_size-1+fb_size*8 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       rgbint_to_rgb4(253, 255, 250) when (pixel_col_int >= fb_size*9 and pixel_col_int <= fb_size-1+fb_size*12 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*13 and pixel_col_int <= fb_size-1+fb_size*13 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*14 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       -- Row four
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*0 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*1 and pixel_col_int <= fb_size-1+fb_size*4 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(249, 241, 36) when (pixel_col_int >= fb_size*5 and pixel_col_int <= fb_size-1+fb_size*7 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*8 and pixel_col_int <= fb_size-1+fb_size*8 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(250, 252, 233) when (pixel_col_int >= fb_size*9 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(253, 255, 250) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*11 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*12 and pixel_col_int <= fb_size-1+fb_size*12 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(253, 255, 250) when (pixel_col_int >= fb_size*13 and pixel_col_int <= fb_size-1+fb_size*13 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*14 and pixel_col_int <= fb_size-1+fb_size*14 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*15 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       -- Row five
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*0 and (pixel_row_int >= fb_size*4 and pixel_row_int <= -1+fb_size*5)) else
                       rgbint_to_rgb4(250, 252, 233) when (pixel_col_int >= fb_size*1 and pixel_col_int <= fb_size-1+fb_size*4 and (pixel_row_int >= fb_size*4 and pixel_row_int <= -1+fb_size*5)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*5 and pixel_col_int <= fb_size-1+fb_size*5 and (pixel_row_int >= fb_size*4 and pixel_row_int <= -1+fb_size*5)) else
                       rgbint_to_rgb4(249, 241, 36) when (pixel_col_int >= fb_size*6 and pixel_col_int <= fb_size-1+fb_size*7 and (pixel_row_int >= fb_size*4 and pixel_row_int <= -1+fb_size*5)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*8 and pixel_col_int <= fb_size-1+fb_size*8 and (pixel_row_int >= fb_size*4 and pixel_row_int <= -1+fb_size*5)) else
                       rgbint_to_rgb4(250, 252, 233) when (pixel_col_int >= fb_size*9 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*4 and pixel_row_int <= -1+fb_size*5)) else
                       rgbint_to_rgb4(253, 255, 250) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*11 and (pixel_row_int >= fb_size*4 and pixel_row_int <= -1+fb_size*5)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*12 and pixel_col_int <= fb_size-1+fb_size*12 and (pixel_row_int >= fb_size*4 and pixel_row_int <= -1+fb_size*5)) else
                       rgbint_to_rgb4(253, 255, 250) when (pixel_col_int >= fb_size*13 and pixel_col_int <= fb_size-1+fb_size*13 and (pixel_row_int >= fb_size*4 and pixel_row_int <= -1+fb_size*5)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*14 and pixel_col_int <= fb_size-1+fb_size*14 and (pixel_row_int >= fb_size*4 and pixel_row_int <= -1+fb_size*5)) else
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*15 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*4 and pixel_row_int <= -1+fb_size*5)) else
                       -- Row six
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*0 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       rgbint_to_rgb4(250, 252, 233) when (pixel_col_int >= fb_size*1 and pixel_col_int <= fb_size-1+fb_size*5 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*6 and pixel_col_int <= fb_size-1+fb_size*6 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       rgbint_to_rgb4(249, 241, 36) when (pixel_col_int >= fb_size*7 and pixel_col_int <= fb_size-1+fb_size*8 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*9 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       rgbint_to_rgb4(250, 252, 233) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*10 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       rgbint_to_rgb4(253, 255, 250) when (pixel_col_int >= fb_size*11 and pixel_col_int <= fb_size-1+fb_size*13 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*14 and pixel_col_int <= fb_size-1+fb_size*14 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*15 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       -- Row seven
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*0 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       rgbint_to_rgb4(248, 255, 46) when (pixel_col_int >= fb_size*1 and pixel_col_int <= fb_size-1+fb_size*1 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       rgbint_to_rgb4(250, 252, 233) when (pixel_col_int >= fb_size*2 and pixel_col_int <= fb_size-1+fb_size*4 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       rgbint_to_rgb4(248, 255, 46) when (pixel_col_int >= fb_size*5 and pixel_col_int <= fb_size-1+fb_size*5 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*6 and pixel_col_int <= fb_size-1+fb_size*6 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       rgbint_to_rgb4(249, 241, 36) when (pixel_col_int >= fb_size*7 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*15 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*16 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       -- Row eight
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*0 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*1 and pixel_col_int <= fb_size-1+fb_size*1 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       rgbint_to_rgb4(248, 255, 46) when (pixel_col_int >= fb_size*2 and pixel_col_int <= fb_size-1+fb_size*4 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*5 and pixel_col_int <= fb_size-1+fb_size*5 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       rgbint_to_rgb4(249, 194, 44) when (pixel_col_int >= fb_size*6 and pixel_col_int <= fb_size-1+fb_size*8 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*9 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       rgbint_to_rgb4(253, 104, 75) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*15 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*16 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       -- Row nine
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*1 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*2 and pixel_col_int <= fb_size-1+fb_size*4 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9)) else
                       rgbint_to_rgb4(249, 194, 44) when (pixel_col_int >= fb_size*5 and pixel_col_int <= fb_size-1+fb_size*7 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*8 and pixel_col_int <= fb_size-1+fb_size*8 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9)) else
                       rgbint_to_rgb4(253, 104, 75) when (pixel_col_int >= fb_size*9 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*15 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9)) else
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*16 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9)) else
                       -- Row ten
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*1 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*2 and pixel_col_int <= fb_size-1+fb_size*2 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10)) else
                       rgbint_to_rgb4(249, 194, 44) when (pixel_col_int >= fb_size*3 and pixel_col_int <= fb_size-1+fb_size*8 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*9 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10)) else
                       rgbint_to_rgb4(253, 104, 75) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*14 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*15 and pixel_col_int <= fb_size-1+fb_size*15 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10)) else
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*16 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10)) else
                       -- Row eleven
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*2 and (pixel_row_int >= fb_size*10 and pixel_row_int <= -1+fb_size*11)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*3 and pixel_col_int <= fb_size-1+fb_size*4 and (pixel_row_int >= fb_size*10 and pixel_row_int <= -1+fb_size*11)) else
                       rgbint_to_rgb4(249, 194, 44) when (pixel_col_int >= fb_size*5 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*10 and pixel_row_int <= -1+fb_size*11)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*14 and (pixel_row_int >= fb_size*10 and pixel_row_int <= -1+fb_size*11)) else
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*15 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*10 and pixel_row_int <= -1+fb_size*11)) else
                       -- Row twelve
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*4 and (pixel_row_int >= fb_size*11 and pixel_row_int <= -1+fb_size*12)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*5 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*11 and pixel_row_int <= -1+fb_size*12)) else
                       --rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*11 and pixel_row_int <= -1+fb_size*12));
                      			
-- Set output colour channel values for the current pixel.
Red <= (flappy_bird_on and "1010");-- or (not flappy_bird_on and "0000");
Green <= (flappy_bird_on and flappy_bird_colours(1));-- or (not flappy_bird_on and "0000");
Blue <= (flappy_bird_on and flappy_bird_colours(2));-- or (not flappy_bird_on and "0000");
-- "0010" "1000" "0111"

move_bird: process (vert_sync)
begin
  -- Move the flappy bird once every vsync.
  if (rising_edge(vert_sync)) then
    -- Bounce off the edge of the screen.
    if (flappy_y_pos >= std_logic_vector(to_unsigned(479, 10) - unsigned(flappy_bird_height))) then
      flappy_y_motion <= std_logic_vector(to_signed(-2, 10));
    elsif (flappy_y_pos <= flappy_bird_height) then
      flappy_y_motion <= std_logic_vector(to_unsigned(2, 10));
    end if;
    -- Compute the position of the flappy bird for the next frame.
    flappy_y_pos <= std_logic_vector(unsigned(flappy_y_pos) + unsigned(flappy_y_motion));
  end if;
end process move_bird;

end architecture behaviour;



