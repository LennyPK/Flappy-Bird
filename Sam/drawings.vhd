------------------------------------------------------------
-- Background main colour.
------------------------------------------------------------
-- Default libraries.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Custom libraries.
library work;
use work.rgb_functions.all;

-- Background main entity.
entity background_m is
  port (colour_info : out rgb_array);
end entity background_m;

-- Background main architecture.
architecture behaviour of background_m is
begin
  colour_info <= rgbint_to_rgb4(112, 197, 206);
end architecture behaviour;

------------------------------------------------------------
-- Background pattern.
------------------------------------------------------------

------------------------------------------------------------
-- Ground object.
------------------------------------------------------------
-- TO REDUCE MEMORY USAGE: all of the signals that are common for components can be defined as custom types in rgb_functions later on.
-- Default libraries.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Custom libraries.
library work;
use work.rgb_functions.all;

-- Ground object entity.
entity ground is
  port (pixel_row, pixel_column : in std_logic_vector(9 downto 0);
        colour_info : out rgb_array);
end entity ground;

-- Ground architecture.
architecture behaviour of ground is
  
-- Ground image signals.
signal ground_on : std_logic;
signal ground_colours : rgb_array;
signal ground_width : std_logic_vector(10 downto 0);
signal ground_height : std_logic_vector(9 downto 0);
signal g_size : integer range 0 to 7;

signal ground_y_pos : std_logic_vector(9 downto 0);

signal pixel_col_int : screen_width;
signal pixel_row_int : screen_height;

begin
  
-- Width and height for the ground.
g_size <= 1;
ground_width <= std_logic_vector(to_unsigned(639, 11));
ground_height <= std_logic_vector(to_unsigned(g_size*20 - 1, 10));

-- Row and column integer values for the ground.
pixel_col_int <= (to_integer(unsigned(pixel_column))) mod (g_size*7);
pixel_row_int <= (to_integer(unsigned(pixel_row))) mod (g_size*20);

-- y position for the ground.
ground_y_pos <= std_logic_vector(to_unsigned(460, 10));
			
-- Enable ground drawing only within allowed regions.
ground_on <= '1' when ((unsigned(pixel_row) <= unsigned(ground_y_pos) + unsigned(ground_height))
          and (unsigned(pixel_row) >= unsigned(ground_y_pos))) 
          else '0';
          
ground_colours <= -- Row one
                  rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 0, 6, 0, 1, g_size) else
                  -- Row two
                  rgbint_to_rgb4(228, 253, 139) when pixel_region(pixel_col_int, pixel_row_int, 0, 6, 1, 2, g_size) else
                  -- Row three
                  rgbint_to_rgb4(156, 230, 89) when pixel_region(pixel_col_int, pixel_row_int, 0, 1, 2, 3, g_size) else
                  rgbint_to_rgb4(115, 191, 46) when pixel_region(pixel_col_int, pixel_row_int, 2, 5, 2, 3, g_size) else
                  rgbint_to_rgb4(156, 230, 89) when pixel_region(pixel_col_int, pixel_row_int, 6, 6, 2, 3, g_size) else
                  -- Row four
                  rgbint_to_rgb4(156, 230, 89) when pixel_region(pixel_col_int, pixel_row_int, 0, 0, 3, 4, g_size) else
                  rgbint_to_rgb4(115, 191, 46) when pixel_region(pixel_col_int, pixel_row_int, 1, 4, 3, 4, g_size) else
                  rgbint_to_rgb4(156, 230, 89) when pixel_region(pixel_col_int, pixel_row_int, 5, 6, 3, 4, g_size) else
                  -- Row five
                  rgbint_to_rgb4(115, 191, 46) when pixel_region(pixel_col_int, pixel_row_int, 0, 3, 4, 5, g_size) else
                  rgbint_to_rgb4(156, 230, 89) when pixel_region(pixel_col_int, pixel_row_int, 4, 6, 4, 5, g_size) else
                  -- Row six
                  rgbint_to_rgb4(85, 128, 34) when pixel_region(pixel_col_int, pixel_row_int, 0, 6, 5, 6, g_size) else
                  -- Row seven
                  rgbint_to_rgb4(215, 168, 76) when pixel_region(pixel_col_int, pixel_row_int, 0, 6, 6, 7, g_size) else
                  -- Rows eight to twenty
                  rgbint_to_rgb4(222, 216, 149) when pixel_region(pixel_col_int, pixel_row_int, 0, 6, 7, 20, g_size);

-- Set output colour channel values for the current pixel.
colour_info(0) <= ground_colours(0) when ground_on = '1' else
                  "0000";
colour_info(1) <= ground_colours(1) when ground_on = '1' else
                  "0000";
colour_info(2) <= ground_colours(2) when ground_on = '1' else
                  "0000";

end architecture behaviour;

------------------------------------------------------------
-- Pipe one object.
------------------------------------------------------------

-- Default libraries.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Custom libraries.
library work;
use work.rgb_functions.all;

-- Pipe object entity.
entity pipe_one is
  port (--clk, vert_sync : in std_logic;
        pixel_row, pixel_column : in std_logic_vector(9 downto 0);
        colour_info : out rgb_array);
end entity pipe_one;

-- Pipe architecture.
architecture behaviour of pipe_one is 

-- Pipe image signals.
signal pipe_on : std_logic_vector(3 downto 0);
signal pipe_colours : rgb_array;
signal pipe_width : std_logic_vector(10 downto 0);
signal pipe_height : std_logic_vector(9 downto 0);
signal p_size : integer range 0 to 7;

signal pipe_x_pos : std_logic_vector(10 downto 0);
signal pipe_y_pos : std_logic_vector(9 downto 0);
signal pipe_x_motion : std_logic_vector(10 downto 0);

signal pixel_col_int : screen_width;
signal pixel_row_int : screen_height;
-- RANGE is 7 * dim for each

begin
  
-- Width and height for the rectangle of pipe one.
p_size <= 2;
pipe_width <= std_logic_vector(to_unsigned(p_size*17 - 1, 11));
pipe_height <= std_logic_vector(to_unsigned(p_size*17 - 1, 10));

-- Rules for drawing the pipe are as follows:
-- The central region needs to have a random height, and consists of the ends of both pipes.
-- The ends of both pipes needs to remain at a constant distance from each other provided the difficulty does not change.
-- The remaining regions are filled until the edges of the screen.

  
  --pixel information goes here.
  
end architecture behaviour;

------------------------------------------------------------
-- Flappy bird object.
------------------------------------------------------------

-- Default libraries.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Custom libraries.
library work;
use work.rgb_functions.all;

-- Flappy bird object entity.
entity flappy_bird is
  port (vert_sync : in std_logic;
        pixel_row, pixel_column : in std_logic_vector(9 downto 0);
        colour_info : out rgb_array);
end entity flappy_bird;

-- Flappy bird architecture.
architecture behaviour of flappy_bird is

-- Flappy bird image signals.
signal flappy_bird_on : std_logic;
signal flappy_bird_colours : rgb_array;
signal flappy_bird_width : std_logic_vector(10 downto 0);
signal flappy_bird_height : std_logic_vector(9 downto 0);
signal fb_size : integer range 0 to 7;

signal flappy_x_pos : std_logic_vector(10 downto 0);
signal flappy_y_pos : std_logic_vector(9 downto 0);
signal flappy_y_motion : std_logic_vector(9 downto 0);

signal pixel_col_int : screen_width;
signal pixel_row_int : screen_height;

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
			
-- Enable flappy bird drawing only within allowed regions.
flappy_bird_on <= '1' when ((unsigned(pixel_column) <= unsigned(flappy_x_pos) + unsigned(flappy_bird_width))
          and (unsigned(pixel_column) >= unsigned(flappy_x_pos))
          and (unsigned(pixel_row) <= unsigned(flappy_y_pos) + unsigned(flappy_bird_height))
          and (unsigned(pixel_row) >= unsigned(flappy_y_pos))
          
          -- Banned regions within rectangular area.
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 5, 0, 1, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 12, 16, 0, 1, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 3, 1, 2, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 13, 16, 1, 2, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 2, 2, 3, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 14, 16, 2, 3, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 0, 3, 4, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 15, 16, 3, 4, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 15, 16, 4, 5, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 15, 16, 5, 6, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 16, 16, 6, 7, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 0, 7, 8, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 1, 8, 9, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 16, 16, 8, 9, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 1, 9, 10, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 16, 16, 9, 10, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 2, 10, 11, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 15, 16, 10, 11, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 4, 11, 12, fb_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 10, 16, 11, 12, fb_size)) 
          else '0';
      
-- Setting the specific pixel information for every pixel in the flappy bird.
flappy_bird_colours <= -- Row one
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 6, 11, 0, 1, fb_size) else
                       -- Row two
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 4, 5, 1, 2, fb_size) else
                       rgbint_to_rgb4(248, 255, 46) when pixel_region(pixel_col_int, pixel_row_int, 6, 8, 1, 2, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 1, 2, fb_size) else
                       rgbint_to_rgb4(253, 255, 250) when pixel_region(pixel_col_int, pixel_row_int, 10, 11, 1, 2, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 12, 12, 1, 2, fb_size) else
                       -- Row three
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 3, 3, 2, 3, fb_size) else
                       rgbint_to_rgb4(248, 255, 46) when pixel_region(pixel_col_int, pixel_row_int, 4, 5, 2, 3, fb_size) else
                       rgbint_to_rgb4(249, 241, 36) when pixel_region(pixel_col_int, pixel_row_int, 6, 7, 2, 3, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 8, 8, 2, 3, fb_size) else
                       rgbint_to_rgb4(253, 255, 250) when pixel_region(pixel_col_int, pixel_row_int, 9, 12, 2, 3, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 13, 13, 2, 3, fb_size) else
                       -- Row four
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 1, 4, 3, 4, fb_size) else
                       rgbint_to_rgb4(249, 241, 36) when pixel_region(pixel_col_int, pixel_row_int, 5, 7, 3, 4, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 8, 8, 3, 4, fb_size) else
                       rgbint_to_rgb4(250, 252, 233) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 3, 4, fb_size) else
                       rgbint_to_rgb4(253, 255, 250) when pixel_region(pixel_col_int, pixel_row_int, 10, 11, 3, 4, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 12, 12, 3, 4, fb_size) else
                       rgbint_to_rgb4(253, 255, 250) when pixel_region(pixel_col_int, pixel_row_int, 13, 13, 3, 4, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 14, 14, 3, 4, fb_size) else
                       -- Row five
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 0, 0, 4, 5, fb_size) else
                       rgbint_to_rgb4(250, 252, 233) when pixel_region(pixel_col_int, pixel_row_int, 1, 4, 4, 5, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 5, 5, 4, 5, fb_size) else
                       rgbint_to_rgb4(249, 241, 36) when pixel_region(pixel_col_int, pixel_row_int, 6, 7, 4, 5, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 8, 8, 4, 5, fb_size) else
                       rgbint_to_rgb4(250, 252, 233) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 4, 5, fb_size) else
                       rgbint_to_rgb4(253, 255, 250) when pixel_region(pixel_col_int, pixel_row_int, 10, 11, 4, 5, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 12, 12, 4, 5, fb_size) else
                       rgbint_to_rgb4(253, 255, 250) when pixel_region(pixel_col_int, pixel_row_int, 13, 13, 4, 5, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 14, 14, 4, 5, fb_size) else
                       -- Row six
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 0, 0, 5, 6, fb_size) else
                       rgbint_to_rgb4(250, 252, 233) when pixel_region(pixel_col_int, pixel_row_int, 1, 5, 5, 6, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 6, 6, 5, 6, fb_size) else
                       rgbint_to_rgb4(249, 241, 36) when pixel_region(pixel_col_int, pixel_row_int, 7, 8, 5, 6, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 5, 6, fb_size) else
                       rgbint_to_rgb4(250, 252, 233) when pixel_region(pixel_col_int, pixel_row_int, 10, 10, 5, 6, fb_size) else
                       rgbint_to_rgb4(253, 255, 250) when pixel_region(pixel_col_int, pixel_row_int, 11, 13, 5, 6, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 14, 14, 5, 6, fb_size) else
                       -- Row seven
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 0, 0, 6, 7, fb_size) else
                       rgbint_to_rgb4(248, 255, 46) when pixel_region(pixel_col_int, pixel_row_int, 1, 1, 6, 7, fb_size) else
                       rgbint_to_rgb4(250, 252, 233) when pixel_region(pixel_col_int, pixel_row_int, 2, 4, 6, 7, fb_size) else
                       rgbint_to_rgb4(248, 255, 46) when pixel_region(pixel_col_int, pixel_row_int, 5, 5, 6, 7, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 6, 6, 6, 7, fb_size) else
                       rgbint_to_rgb4(249, 241, 36) when pixel_region(pixel_col_int, pixel_row_int, 7, 9, 6, 7, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 10, 15, 6, 7, fb_size) else
                       -- Row eight
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 1, 1, 7, 8, fb_size) else
                       rgbint_to_rgb4(248, 255, 46) when pixel_region(pixel_col_int, pixel_row_int, 2, 4, 7, 8, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 5, 5, 7, 8, fb_size) else
                       rgbint_to_rgb4(249, 194, 44) when pixel_region(pixel_col_int, pixel_row_int, 6, 8, 7, 8, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 7, 8, fb_size) else
                       rgbint_to_rgb4(253, 104, 75) when pixel_region(pixel_col_int, pixel_row_int, 10, 15, 7, 8, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 16, 16, 7, 8, fb_size) else
                       -- Row nine
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 2, 4, 8, 9, fb_size) else
                       rgbint_to_rgb4(249, 194, 44) when pixel_region(pixel_col_int, pixel_row_int, 5, 7, 8, 9, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 8, 8, 8, 9, fb_size) else
                       rgbint_to_rgb4(253, 104, 75) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 8, 9, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 10, 15, 8, 9, fb_size) else
                       -- Row ten
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 2, 2, 9, 10, fb_size) else
                       rgbint_to_rgb4(249, 194, 44) when pixel_region(pixel_col_int, pixel_row_int, 3, 8, 9, 10, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 9, 10, fb_size) else
                       rgbint_to_rgb4(253, 104, 75) when pixel_region(pixel_col_int, pixel_row_int, 10, 14, 9, 10, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 15, 15, 9, 10, fb_size) else
                       -- Row eleven
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 3, 4, 10, 11, fb_size) else
                       rgbint_to_rgb4(249, 194, 44) when pixel_region(pixel_col_int, pixel_row_int, 5, 9, 10, 11, fb_size) else
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 10, 14, 10, 11, fb_size) else
                       -- Row twelve
                       rgbint_to_rgb4(83, 56, 70) when pixel_region(pixel_col_int, pixel_row_int, 5, 9, 11, 12, fb_size);
                      			
-- Set output colour channel values for the current pixel.
colour_info(0) <= flappy_bird_colours(0) when flappy_bird_on = '1' else
                  "0000";
colour_info(1) <= flappy_bird_colours(1) when flappy_bird_on = '1' else
                  "0000";
colour_info(2) <= flappy_bird_colours(2) when flappy_bird_on = '1' else
                  "0000";

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



