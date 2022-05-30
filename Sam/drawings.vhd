-- Replace common signals with generics and pass in (can do later).
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
use work.pixel_functions.all;

-- Background main entity.
entity background_m is
  port (colour_info : out rgb_array);
end entity background_m;

-- Background main architecture.
architecture behaviour of background_m is
  
-- Colour assignment.
constant sky_blue : rgb := (112, 197, 206);
begin
  colour_info <= rgbint_to_rgb4(sky_blue);
  
end architecture behaviour;

------------------------------------------------------------
-- Background detailing.
------------------------------------------------------------

-- Default libraries.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Custom libraries.
library work;
use work.rgb_functions.all;
use work.pixel_functions.all;

-- Background details entity.
entity background_d is
  port (vert_sync : in std_logic;
        pixel_row, pixel_column : in std_logic_vector(9 downto 0);
        colour_info : out rgb_array);
end entity background_d;

-- Background details architecture.
architecture behaviour of background_d is
  
-- Colour assignments.
constant cloud_white : rgb := (234, 252, 219);
constant grey : rgb := (226, 240, 210);
constant blue : rgb := (157, 216, 219);
constant light_blue : rgb := (186, 230, 198); 
constant dark_green : rgb := (115, 200, 136);
constant green : rgb := (130, 227, 140);
constant light_green : rgb := (219, 241, 202);

-- Background details image signals.
signal background_on : std_logic;
signal background_colours : rgb_array;
signal background_width : std_logic_vector(10 downto 0);
signal background_height : std_logic_vector(9 downto 0);
signal b_size : integer range 0 to 7;
signal g_size : integer range 0 to 7;

signal background_x_pos : std_logic_vector(10 downto 0);
signal background_y_pos : std_logic_vector(9 downto 0);
signal background_x_motion : std_logic_vector(10 downto 0);

signal pixel_col_int : screen_width;
signal pixel_row_int : screen_height;

-- testing ROM use
-- signal address_c1, address_c2, address_r1, address_r2   : integer;
-- signal data_c1, data_c2, data_r1, data_r2               : integer;

-- component ROM is
--     port (  address : in integer;
--             data    : out integer;
--          );
-- end component ROM;

-- rom_c1 : ROM port map (address => address_c1, data => data_c1);
-- rom_c2 : ROM port map (address => address_c2, data => data_c2);
-- rom_r1 : ROM port map (address => address_r1, data => data_r1);
-- rom_r2 : ROM port map (address => address_r2, data => data_r2);

begin 
  
-- Width and height for the background details.
b_size <= 3;
g_size <= 2; -- From ground sizing.
background_width <= std_logic_vector(to_unsigned(640 - 1, 11));
background_height <= std_logic_vector(to_unsigned(b_size*46 - 1, 10));

-- Row and column integer values for the background details.
pixel_col_int <= (to_integer(unsigned(pixel_column)) mod (b_size*69) - to_integer(unsigned(background_x_pos)) mod (b_size*69)) mod (b_size*69);
pixel_row_int <= (to_integer(unsigned(pixel_row)) mod (b_size*46) - to_integer(unsigned(background_y_pos)) mod (b_size*46)) mod (b_size*46);

-- y position for the background details.
background_x_motion <= std_logic_vector(to_signed(-1, 11));
background_y_pos <= std_logic_vector(to_unsigned(480 - b_size*46 - g_size*20, 10));
			---------------
-- Enable background details drawing only within allowed regions.
background_on <= '1' when ((unsigned(pixel_row) <= unsigned(background_y_pos) + unsigned(background_height))
          and (unsigned(pixel_row) >= unsigned(background_y_pos))) 
          
          -- Banned regions within rectangular area.
          -- Row one
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 53, 0, 1, b_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 60, 68, 0, 1, b_size)
          -- Row two
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 51, 1, 2, b_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 62, 68, 1, 2, b_size)
          -- Row three
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 32, 2, 3, b_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 39, 49, 2, 3, b_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 64, 68, 2, 3, b_size)
          -- Row four
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 30, 3, 4, b_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 42, 48, 3, 4, b_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 65, 68, 3, 4, b_size)
          -- Row five
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 0, 4, 5, b_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 7, 28, 4, 5, b_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 44, 47, 4, 5, b_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 65, 68, 4, 5, b_size)
          -- Row six
          and not pixel_region(pixel_col_int, pixel_row_int, 9, 19, 5, 6, b_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 26, 27, 5, 6, b_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 46, 46, 5, 6, b_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 66, 67, 5, 6, b_size)
          -- Row seven
          and not pixel_region(pixel_col_int, pixel_row_int, 11, 17, 6, 7, b_size)
          -- Row eight
          and not pixel_region(pixel_col_int, pixel_row_int, 12, 15, 7, 8, b_size)
          -- Row nine
          and not pixel_region(pixel_col_int, pixel_row_int, 13, 14, 8, 9, b_size)
          else '0';
            
            --------------------------
background_colours <= -- Row one
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 54, 59, 0, 1, b_size) else
                      -- Row two
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 52, 61, 1, 2, b_size) else
                      -- Row three
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 33, 38, 2, 3, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 50, 63, 2, 3, b_size) else
                      -- Row four
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 31, 41, 3, 4, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 49, 64, 3, 4, b_size) else
                      -- Row five
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 1, 6, 4, 5, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 29, 43, 4, 5, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 48, 64, 4, 5, b_size) else
                      -- Row six
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 0, 8, 5, 6, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 20, 25, 5, 6, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 28, 45, 5, 6, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 47, 65, 5, 6, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 68, 68, 5, 6, b_size) else
                      -- Row seven
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 0, 10, 6, 7, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 18, 68, 6, 7, b_size) else
                      -- Row eight
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 0, 11, 7, 8, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 16, 68, 7, 8, b_size) else
                      -- Row nine
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 0, 12, 8, 9, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 15, 68, 8, 9, b_size) else
                      -- Rows ten to fifteen
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 0, 68, 9, 15, b_size) else
                      -- Row sixteen
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 0, 18, 15, 16, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 19, 21, 15, 16, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 22, 26, 15, 16, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 27, 53, 15, 16, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 54, 56, 15, 16, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 57, 61, 15, 16, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 62, 68, 15, 16, b_size) else
                      -- Row seventeen
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 0, 18, 16, 17, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 19, 19, 16, 17, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 20, 21, 16, 17, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 22, 22, 16, 17, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 23, 25, 16, 17, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 26, 16, 17, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 27, 53, 16, 17, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 54, 54, 16, 17, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 55, 56, 16, 17, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 57, 57, 16, 17, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 58, 60, 16, 17, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 61, 61, 16, 17, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 62, 68, 16, 17, b_size) else
                      -- Row eighteen
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 0, 6, 17, 18, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 7, 11, 17, 18, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 12, 17, 17, 18, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 18, 22, 17, 18, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 23, 23, 17, 18, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 24, 24, 17, 18, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 25, 25, 17, 18, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 26, 17, 18, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 27, 41, 17, 18, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 42, 46, 17, 18, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 47, 52, 17, 18, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 53, 57, 17, 18, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 58, 58, 17, 18, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 59, 59, 17, 18, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 60, 60, 17, 18, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 61, 61, 17, 18, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 62, 68, 17, 18, b_size) else
                      -- Row nineteen
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 0, 4, 18, 19, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 5, 11, 18, 19, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 12, 17, 18, 19, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 18, 18, 18, 19, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 19, 25, 18, 19, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 26, 18, 19, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 27, 39, 18, 19, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 40, 46, 18, 19, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 47, 52, 18, 19, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 53, 53, 18, 19, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 54, 60, 18, 19, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 61, 61, 18, 19, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 62, 68, 18, 19, b_size) else
                      -- Row twenty
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 0, 3, 19, 20, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 4, 9, 19, 20, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 10, 16, 19, 20, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 17, 17, 19, 20, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 18, 18, 19, 20, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 19, 19, 19, 20, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 20, 20, 19, 20, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 21, 21, 19, 20, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 22, 22, 19, 20, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 23, 23, 19, 20, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 24, 24, 19, 20, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 25, 25, 19, 20, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 29, 19, 20, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 30, 38, 19, 20, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 39, 44, 19, 20, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 45, 51, 19, 20, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 52, 52, 19, 20, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 53, 53, 19, 20, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 54, 54, 19, 20, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 55, 55, 19, 20, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 56, 56, 19, 20, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 57, 57, 19, 20, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 58, 58, 19, 20, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 59, 59, 19, 20, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 60, 60, 19, 20, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 61, 64, 19, 20, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 65, 68, 19, 20, b_size) else
                      -- Row twenty-one
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 0, 2, 20, 21, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 3, 9, 20, 21, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 10, 10, 20, 21, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 11, 14, 20, 21, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 15, 15, 20, 21, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 16, 16, 20, 21, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 17, 17, 20, 21, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 18, 18, 20, 21, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 19, 19, 20, 21, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 20, 20, 20, 21, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 21, 21, 20, 21, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 22, 22, 20, 21, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 23, 23, 20, 21, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 24, 24, 20, 21, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 25, 25, 20, 21, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 26, 20, 21, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 27, 27, 20, 21, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 28, 28, 20, 21, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 29, 29, 20, 21, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 30, 37, 20, 21, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 38, 44, 20, 21, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 45, 45, 20, 21, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 46, 49, 20, 21, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 50, 50, 20, 21, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 51, 51, 20, 21, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 52, 52, 20, 21, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 53, 53, 20, 21, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 54, 54, 20, 21, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 55, 55, 20, 21, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 56, 56, 20, 21, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 57, 57, 20, 21, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 58, 58, 20, 21, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 59, 59, 20, 21, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 60, 60, 20, 21, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 61, 61, 20, 21, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 62, 62, 20, 21, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 63, 63, 20, 21, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 64, 64, 20, 21, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 65, 68, 20, 21, b_size) else
                      -- Row twenty-two
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 0, 2, 21, 22, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 3, 9, 21, 22, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 10, 10, 21, 22, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 11, 11, 21, 22, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 12, 12, 21, 22, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 13, 14, 21, 22, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 15, 15, 21, 22, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 16, 16, 21, 22, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 17, 17, 21, 22, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 18, 18, 21, 22, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 19, 25, 21, 22, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 33, 21, 22, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 34, 37, 21, 22, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 38, 44, 21, 22, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 45, 45, 21, 22, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 46, 46, 21, 22, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 47, 47, 21, 22, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 48, 49, 21, 22, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 50, 50, 21, 22, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 51, 51, 21, 22, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 52, 52, 21, 22, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 53, 53, 21, 22, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 54, 60, 21, 22, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 61, 68, 21, 22, b_size) else
                      -- Row twenty-three
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 0, 1, 22, 23, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 2, 2, 22, 23, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 3, 6, 22, 23, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 7, 16, 22, 23, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 17, 17, 22, 23, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 18, 18, 22, 23, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 19, 19, 22, 23, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 20, 20, 22, 23, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 21, 21, 22, 23, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 22, 22, 22, 23, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 23, 23, 22, 23, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 24, 24, 22, 23, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 25, 25, 22, 23, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 26, 22, 23, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 27, 27, 22, 23, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 28, 32, 22, 23, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 33, 33, 22, 23, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 34, 36, 22, 23, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 37, 37, 22, 23, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 38, 41, 22, 23, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 42, 51, 22, 23, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 52, 52, 22, 23, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 53, 53, 22, 23, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 54, 54, 22, 23, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 55, 55, 22, 23, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 56, 56, 22, 23, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 57, 57, 22, 23, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 58, 58, 22, 23, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 59, 59, 22, 23, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 60, 60, 22, 23, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 61, 61, 22, 23, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 62, 62, 22, 23, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 63, 67, 22, 23, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 68, 68, 22, 23, b_size) else
                      -- Row twenty-four
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 0, 1, 23, 24, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 2, 2, 23, 24, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 3, 6, 23, 24, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 7, 7, 23, 24, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 8, 13, 23, 24, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 14, 15, 23, 24, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 16, 16, 23, 24, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 17, 17, 23, 24, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 18, 18, 23, 24, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 19, 19, 23, 24, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 20, 20, 23, 24, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 21, 21, 23, 24, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 22, 22, 23, 24, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 23, 23, 23, 24, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 24, 24, 23, 24, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 25, 25, 23, 24, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 26, 23, 24, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 27, 27, 23, 24, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 28, 32, 23, 24, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 33, 33, 23, 24, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 34, 36, 23, 24, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 37, 37, 23, 24, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 38, 41, 23, 24, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 42, 42, 23, 24, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 43, 48, 23, 24, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 49, 50, 23, 24, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 51, 51, 23, 24, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 52, 52, 23, 24, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 53, 53, 23, 24, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 54, 54, 23, 24, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 55, 55, 23, 24, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 56, 56, 23, 24, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 57, 57, 23, 24, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 58, 58, 23, 24, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 59, 59, 23, 24, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 60, 60, 23, 24, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 61, 61, 23, 24, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 62, 62, 23, 24, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 63, 67, 23, 24, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 68, 68, 23, 24, b_size) else
                      -- Row twenty-five
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 0, 1, 24, 25, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 2, 2, 24, 25, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 3, 6, 24, 25, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 7, 7, 24, 25, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 8, 8, 24, 25, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 24, 25, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 10, 10, 24, 25, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 11, 11, 24, 25, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 12, 12, 24, 25, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 13, 13, 24, 25, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 14, 15, 24, 25, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 16, 16, 24, 25, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 17, 17, 24, 25, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 18, 18, 24, 25, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 19, 25, 24, 25, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 26, 24, 25, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 27, 27, 24, 25, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 28, 28, 24, 25, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 29, 29, 24, 25, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 30, 30, 24, 25, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 31, 31, 24, 25, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 32, 32, 24, 25, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 33, 33, 24, 25, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 34, 36, 24, 25, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 37, 37, 24, 25, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 38, 41, 24, 25, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 42, 42, 24, 25, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 43, 43, 24, 25, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 44, 44, 24, 25, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 45, 45, 24, 25, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 46, 46, 24, 25, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 47, 47, 24, 25, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 48, 48, 24, 25, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 49, 50, 24, 25, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 51, 51, 24, 25, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 52, 52, 24, 25, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 53, 53, 24, 25, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 54, 60, 24, 25, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 61, 61, 24, 25, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 62, 62, 24, 25, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 63, 63, 24, 25, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 64, 64, 24, 25, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 65, 65, 24, 25, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 66, 66, 24, 25, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 67, 67, 24, 25, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 68, 68, 24, 25, b_size) else
                      -- Row twenty-six
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 0, 1, 25, 26, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 2, 2, 25, 26, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 3, 6, 25, 26, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 7, 7, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 8, 8, 25, 26, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 10, 10, 25, 26, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 11, 11, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 12, 12, 25, 26, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 13, 13, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 14, 15, 25, 26, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 16, 16, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 17, 17, 25, 26, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 18, 18, 25, 26, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 19, 25, 25, 26, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 26, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 27, 27, 25, 26, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 28, 28, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 29, 29, 25, 26, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 30, 30, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 31, 31, 25, 26, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 32, 32, 25, 26, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 33, 33, 25, 26, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 34, 36, 25, 26, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 37, 37, 25, 26, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 38, 41, 25, 26, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 42, 42, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 43, 43, 25, 26, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 44, 44, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 45, 45, 25, 26, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 46, 46, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 47, 47, 25, 26, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 48, 48, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 49, 50, 25, 26, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 51, 51, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 52, 52, 25, 26, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 53, 53, 25, 26, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 54, 60, 25, 26, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 61, 61, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 62, 62, 25, 26, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 63, 63, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 64, 64, 25, 26, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 65, 65, 25, 26, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 66, 66, 25, 26, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 67, 67, 25, 26, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 68, 68, 25, 26, b_size) else
                      -- Row twenty-seven
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 0, 1, 26, 27, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 2, 2, 26, 27, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 3, 6, 26, 27, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 7, 7, 26, 27, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 8, 12, 26, 27, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 13, 18, 26, 27, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 19, 19, 26, 27, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 20, 20, 26, 27, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 21, 21, 26, 27, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 22, 22, 26, 27, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 23, 23, 26, 27, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 24, 24, 26, 27, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 25, 25, 26, 27, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 26, 26, 27, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 27, 27, 26, 27, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 28, 32, 26, 27, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 33, 33, 26, 27, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 34, 36, 26, 27, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 37, 37, 26, 27, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 38, 41, 26, 27, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 42, 42, 26, 27, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 43, 47, 26, 27, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 48, 53, 26, 27, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 54, 54, 26, 27, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 55, 55, 26, 27, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 56, 56, 26, 27, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 57, 57, 26, 27, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 58, 58, 26, 27, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 59, 59, 26, 27, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 60, 60, 26, 27, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 61, 61, 26, 27, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 62, 62, 26, 27, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 63, 67, 26, 27, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 68, 68, 26, 27, b_size) else
                      -- Row twenty-eight
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 0, 1, 27, 28, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 2, 2, 27, 28, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 3, 6, 27, 28, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 7, 7, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 8, 8, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 10, 10, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 11, 11, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 12, 12, 27, 28, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 13, 13, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 14, 16, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 17, 17, 27, 28, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 18, 18, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 19, 19, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 20, 20, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 21, 21, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 22, 22, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 23, 23, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 24, 24, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 25, 25, 27, 28, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 26, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 27, 27, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 28, 28, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 29, 29, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 30, 30, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 31, 31, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 32, 32, 27, 28, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 33, 33, 27, 28, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 34, 36, 27, 28, b_size) else
                      rgbint_to_rgb4(cloud_white) when pixel_region(pixel_col_int, pixel_row_int, 37, 37, 27, 28, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 38, 41, 27, 28, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 42, 42, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 43, 43, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 44, 44, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 45, 45, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 46, 46, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 47, 47, 27, 28, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 48, 48, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 49, 51, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 52, 52, 27, 28, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 53, 53, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 54, 54, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 55, 55, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 56, 56, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 57, 57, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 58, 58, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 59, 59, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 60, 60, 27, 28, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 61, 61, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 62, 62, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 63, 63, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 64, 64, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 65, 65, 27, 28, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 66, 66, 27, 28, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 67, 67, 27, 28, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 68, 68, 27, 28, b_size) else
                      -- Row twenty-nine
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 0, 6, 28, 29, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 7, 7, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 8, 8, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 10, 10, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 11, 11, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 12, 12, 28, 29, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 13, 13, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 14, 14, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 15, 15, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 16, 16, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 17, 17, 28, 29, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 18, 18, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 19, 25, 28, 29, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 26, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 27, 27, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 28, 28, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 29, 29, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 30, 30, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 31, 31, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 32, 32, 28, 29, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 33, 33, 28, 29, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 34, 41, 28, 29, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 42, 42, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 43, 43, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 44, 44, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 45, 45, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 46, 46, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 47, 47, 28, 29, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 48, 48, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 49, 49, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 50, 50, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 51, 51, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 52, 52, 28, 29, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 53, 53, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 54, 60, 28, 29, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 61, 61, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 62, 62, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 63, 63, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 64, 64, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 65, 65, 28, 29, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 66, 66, 28, 29, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 67, 67, 28, 29, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 68, 68, 28, 29, b_size) else
                      -- Row thirty
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 0, 6, 29, 30, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 7, 7, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 8, 12, 29, 30, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 13, 13, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 14, 14, 29, 30, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 15, 15, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 16, 16, 29, 30, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 17, 17, 29, 30, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 18, 18, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 19, 19, 29, 30, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 20, 20, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 21, 21, 29, 30, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 22, 22, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 23, 23, 29, 30, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 24, 24, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 25, 25, 29, 30, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 26, 29, 30, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 27, 27, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 28, 32, 29, 30, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 33, 33, 29, 30, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 34, 41, 29, 30, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 42, 42, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 43, 47, 29, 30, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 48, 48, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 49, 49, 29, 30, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 50, 50, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 51, 51, 29, 30, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 52, 52, 29, 30, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 53, 53, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 54, 54, 29, 30, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 55, 55, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 56, 56, 29, 30, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 57, 57, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 58, 58, 29, 30, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 59, 59, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 60, 60, 29, 30, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 61, 61, 29, 30, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 62, 62, 29, 30, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 63, 67, 29, 30, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 68, 68, 29, 30, b_size) else
                      -- Row thirty-one
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 0, 6, 30, 31, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 7, 10, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 11, 11, 30, 31, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 12, 12, 30, 31, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 13, 13, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 14, 14, 30, 31, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 15, 18, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 19, 19, 30, 31, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 20, 20, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 21, 21, 30, 31, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 22, 22, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 23, 23, 30, 31, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 24, 24, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 25, 25, 30, 31, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 26, 30, 31, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 27, 27, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 28, 28, 30, 31, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 29, 29, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 30, 30, 30, 31, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 31, 31, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 32, 32, 30, 31, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 33, 33, 30, 31, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 34, 35, 30, 31, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 36, 39, 30, 31, b_size) else
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 40, 41, 30, 31, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 42, 42, 30, 31, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 43, 43, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 44, 44, 30, 31, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 45, 45, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 46, 46, 30, 31, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 47, 47, 30, 31, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 48, 48, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 49, 50, 30, 31, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 51, 54, 30, 31, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 55, 55, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 56, 56, 30, 31, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 57, 57, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 58, 58, 30, 31, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 59, 59, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 60, 60, 30, 31, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 61, 64, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 65, 65, 30, 31, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 66, 66, 30, 31, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 67, 67, 30, 31, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 68, 68, 30, 31, b_size) else
                      -- Row thirty-two
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 0, 4, 31, 32, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 5, 6, 31, 32, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 7, 10, 31, 32, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 11, 14, 31, 32, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 15, 18, 31, 32, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 19, 20, 31, 32, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 21, 25, 31, 32, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 26, 26, 31, 32, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 27, 27, 31, 32, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 28, 28, 31, 32, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 29, 29, 31, 32, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 30, 30, 31, 32, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 31, 31, 31, 32, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 32, 32, 31, 32, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 33, 33, 31, 32, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 34, 35, 31, 32, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 36, 39, 31, 32, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 40, 41, 31, 32, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 42, 42, 31, 32, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 43, 43, 31, 32, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 44, 44, 31, 32, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 45, 45, 31, 32, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 46, 46, 31, 32, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 47, 47, 31, 32, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 48, 48, 31, 32, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 49, 50, 31, 32, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 51, 54, 31, 32, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 55, 56, 31, 32, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 57, 58, 31, 32, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 59, 60, 31, 32, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 61, 64, 31, 32, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 65, 66, 31, 32, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 67, 67, 31, 32, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 68, 68, 31, 32, b_size) else
                      -- Row thirty-three
                      rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 0, 1, 32, 33, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 2, 5, 32, 33, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 6, 12, 32, 33, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 13, 14, 32, 33, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 15, 20, 32, 33, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 21, 22, 32, 33, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 23, 23, 32, 33, b_size) else
                      rgbint_to_rgb4(blue) when pixel_region(pixel_col_int, pixel_row_int, 24, 24, 32, 33, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 25, 26, 32, 33, b_size) else
                      rgbint_to_rgb4(light_blue) when pixel_region(pixel_col_int, pixel_row_int, 27, 27, 32, 33, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 28, 31, 32, 33, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 32, 33, 32, 33, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 34, 41, 32, 33, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 42, 43, 32, 33, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 44, 45, 32, 33, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 46, 49, 32, 33, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 50, 56, 32, 33, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 57, 58, 32, 33, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 59, 66, 32, 33, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 67, 68, 32, 33, b_size) else
                      -- Row thirty-four
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 0, 1, 33, 34, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 2, 5, 33, 34, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 6, 7, 33, 34, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 8, 14, 33, 34, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 15, 15, 33, 34, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 16, 19, 33, 34, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 20, 24, 33, 34, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 25, 26, 33, 34, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 27, 29, 33, 34, b_size) else
                      rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 30, 30, 33, 34, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 31, 31, 33, 34, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 32, 43, 33, 34, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 44, 45, 33, 34, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 46, 49, 33, 34, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 50, 51, 33, 34, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 52, 58, 33, 34, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 59, 59, 33, 34, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 60, 62, 33, 34, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 63, 66, 33, 34, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 67, 68, 33, 34, b_size) else
                      -- Row thirty-five
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 0, 7, 34, 35, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 8, 9, 34, 35, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 10, 14, 34, 35, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 15, 15, 34, 35, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 16, 17, 34, 35, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 18, 19, 34, 35, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 20, 29, 34, 35, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 30, 31, 34, 35, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 32, 41, 34, 35, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 42, 43, 34, 35, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 44, 51, 34, 35, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 52, 53, 34, 35, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 54, 58, 34, 35, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 59, 59, 34, 35, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 60, 60, 34, 35, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 61, 62, 34, 35, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 63, 66, 34, 35, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 67, 68, 34, 35, b_size) else
                      -- Row thirty-six
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 0, 9, 35, 36, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 10, 10, 35, 36, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 11, 14, 35, 36, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 15, 18, 35, 36, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 19, 31, 35, 36, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 32, 33, 35, 36, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 34, 35, 35, 36, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 36, 39, 35, 36, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 40, 40, 35, 36, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 41, 41, 35, 36, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 42, 53, 35, 36, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 54, 54, 35, 36, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 55, 57, 35, 36, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 58, 61, 35, 36, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 62, 65, 35, 36, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 66, 66, 35, 36, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 67, 68, 35, 36, b_size) else
                      -- Row thirty-seven
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 0, 9, 36, 37, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 10, 10, 36, 37, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 11, 12, 36, 37, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 13, 14, 36, 37, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 15, 18, 36, 37, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 19, 20, 36, 37, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 21, 33, 36, 37, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 34, 35, 36, 37, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 36, 39, 36, 37, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 40, 41, 36, 37, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 42, 53, 36, 37, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 54, 54, 36, 37, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 55, 55, 36, 37, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 56, 57, 36, 37, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 58, 61, 36, 37, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 62, 63, 36, 37, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 64, 65, 36, 37, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 66, 66, 36, 37, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 67, 68, 36, 37, b_size) else
                      -- Row thirty-eight
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 0, 10, 37, 38, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 11, 12, 37, 38, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 13, 20, 37, 38, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 21, 22, 37, 38, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 23, 31, 37, 38, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 32, 33, 37, 38, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 34, 41, 37, 38, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 42, 43, 37, 38, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 44, 53, 37, 38, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 54, 55, 37, 38, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 56, 63, 37, 38, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 64, 65, 37, 38, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 66, 68, 37, 38, b_size) else
                      -- Row thirty-nine
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 0, 10, 38, 39, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 11, 11, 38, 39, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 12, 22, 38, 39, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 23, 23, 38, 39, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 24, 30, 38, 39, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 31, 31, 38, 39, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 32, 43, 38, 39, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 44, 44, 38, 39, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 45, 52, 38, 39, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 53, 53, 38, 39, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 54, 64, 38, 39, b_size) else
                      rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 65, 65, 38, 39, b_size) else
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 66, 68, 38, 39, b_size) else
                      -- Rows forty to forty-six
                      rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 0, 68, 39, 46, b_size) else
                      rgbint_to_rgb4(cloud_white);

-- Set output colour channel values for the current pixel.
colour_info(0) <= background_colours(0) when background_on = '1' else
                  "0000";
colour_info(1) <= background_colours(1) when background_on = '1' else
                  "0000";
colour_info(2) <= background_colours(2) when background_on = '1' else
                  "0000";
                   
-- Move the background                     
move_background: process (vert_sync)
  variable vsync_count : natural range 0 to 4 := 0;
begin
  -- Move the background details once per 5 vsync.
  if (rising_edge(vert_sync)) then
    if vsync_count = 19 then
      vsync_count := 0;
    else
      vsync_count := vsync_count + 1;
    
    -- Calculate the position of the background details ready for the next frame.
    background_x_pos <= std_logic_vector(unsigned(background_x_pos) + unsigned(background_x_motion));
    end if;
  end if;

end process move_background;

end architecture behaviour;
                  
------------------------------------------------------------
-- Ground object.
------------------------------------------------------------

-- Default libraries.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Custom libraries.
library work;
use work.rgb_functions.all;
use work.pixel_functions.all;

-- Ground object entity.
entity ground is
  port (vert_sync : in std_logic;
        pipe_x_motion : in integer;
        pixel_row, pixel_column : in std_logic_vector(9 downto 0);
        colour_info : out rgb_array);
end entity ground;

-- Ground architecture.
architecture behaviour of ground is
  
-- Colour assignments.
constant eggplant : rgb := (83, 56, 70);
constant yellow_green : rgb := (228, 253, 139);
constant light_green : rgb := (156, 230, 89);
constant green : rgb := (115, 190, 46);
constant dark_green : rgb := (85, 128, 34);
constant orange : rgb := (215, 168, 76);
constant sand : rgb := (222, 216, 149);
  
-- Ground image signals.
signal ground_on : std_logic;
signal ground_colours : rgb_array;
signal ground_width : std_logic_vector(10 downto 0);
signal ground_height : std_logic_vector(9 downto 0);
signal g_size : integer range 0 to 7;

signal ground_x_pos : std_logic_vector(10 downto 0);
signal ground_y_pos : std_logic_vector(9 downto 0);
signal ground_x_motion : std_logic_vector(10 downto 0);

signal pixel_col_int : screen_width;
signal pixel_row_int : screen_height;

begin
  
-- Width and height for the ground.
g_size <= 2;
ground_width <= std_logic_vector(to_unsigned(640 - 1, 11));
ground_height <= std_logic_vector(to_unsigned(g_size*20 - 1, 10));

-- Row and column integer values for the ground.
pixel_col_int <= (to_integer(unsigned(pixel_column)) mod (g_size*7) - to_integer(unsigned(ground_x_pos)) mod (g_size*7)) mod (g_size*7);
pixel_row_int <= (to_integer(unsigned(pixel_row)) mod (g_size*20) - to_integer(unsigned(ground_y_pos)) mod (g_size*20)) mod (g_size*20);

-- y position for the ground and setting x motion.
ground_y_pos <= std_logic_vector(to_unsigned(480 - g_size*20, 10));
ground_x_motion <= std_logic_vector(to_signed(pipe_x_motion, 11));
			
-- Enable ground drawing only within allowed regions.
ground_on <= '1' when ((unsigned(pixel_row) <= unsigned(ground_y_pos) + unsigned(ground_height))
                 and (unsigned(pixel_row) >= unsigned(ground_y_pos))) 
                 else '0';
          
ground_colours <= -- Row one
                  rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 0, 6, 0, 1, g_size) else
                  -- Row two
                  rgbint_to_rgb4(yellow_green) when pixel_region(pixel_col_int, pixel_row_int, 0, 6, 1, 2, g_size) else
                  -- Row three
                  rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 0, 1, 2, 3, g_size) else
                  rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 2, 5, 2, 3, g_size) else
                  rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 6, 6, 2, 3, g_size) else
                  -- Row four
                  rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 0, 0, 3, 4, g_size) else
                  rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 1, 4, 3, 4, g_size) else
                  rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 5, 6, 3, 4, g_size) else
                  -- Row five
                  rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 0, 3, 4, 5, g_size) else
                  rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 4, 6, 4, 5, g_size) else
                  -- Row six
                  rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 0, 6, 5, 6, g_size) else
                  -- Row seven
                  rgbint_to_rgb4(orange) when pixel_region(pixel_col_int, pixel_row_int, 0, 6, 6, 7, g_size) else
                  -- Rows eight to twenty
                  rgbint_to_rgb4(sand) when pixel_region(pixel_col_int, pixel_row_int, 0, 6, 7, 20, g_size) else
                  rgbint_to_rgb4(eggplant);

-- Set output colour channel values for the current pixel.
colour_info(0) <= ground_colours(0) when ground_on = '1' else
                  "0000";
colour_info(1) <= ground_colours(1) when ground_on = '1' else
                  "0000";
colour_info(2) <= ground_colours(2) when ground_on = '1' else
                  "0000";
        
-- Ground movement.          
move_ground: process (vert_sync)
begin
  -- Update the ground position once per vsync.
  if (rising_edge(vert_sync)) then
    
    -- Calculate the position of the ground ready for the next frame.
    ground_x_pos <= std_logic_vector(unsigned(ground_x_pos) + unsigned(ground_x_motion));

  end if;
end process move_ground;

end architecture behaviour;

------------------------------------------------------------
-- Pipe object.
------------------------------------------------------------

-- Default libraries.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Custom libraries.
library work;
use work.rgb_functions.all;
use work.pixel_functions.all;

-- Pipe object entity.
entity pipe is
  port (vert_sync           : in std_logic;
        pipe_no             : in integer;
        pr, pc              : in std_logic_vector(9 downto 0);
        state               : in std_logic_vector(1 downto 0);
        powerup_en          : out std_logic;
  		px_motion           : out integer;
        colour_info         : out rgb_array;

        pipe_x_out_pos : out signed(10 downto 0);
        pipe_height_out : out integer;
        scale_out : out integer range 0 to 7;
        pipe_gap_width_out : out integer range 0 to 454);
end entity pipe;

-- Pipe architecture.
architecture behaviour of pipe is 

-- Colour assignments.
constant eggplant : rgb := (83, 56, 70);
constant yellow_green : rgb := (228, 253, 139);
constant light_green : rgb := (156, 230, 89);
constant green : rgb := (115, 190, 46);
constant dark_green : rgb := (85, 128, 34);

-- Pipe image signals.
signal pipe_on : std_logic;
signal pipe_colours : rgb_array;
signal pipe_width : unsigned(10 downto 0);
signal pipe_height : unsigned(9 downto 0);
signal p_size : integer range 0 to 7;
signal g_size : integer range 0 to 7;

signal pipe_x_pos : unsigned(10 downto 0);
signal pipe_y_pos : std_logic_vector(9 downto 0);
signal pipe_x_motion : signed(10 downto 0);

signal pixel_column, pixel_row : std_logic_vector(9 downto 0);

signal pixel_col_int : screen_width;
signal pixel_row_int : screen_height;
signal rand : std_logic_vector(6 downto 0) := "0000001";

-- Distance between the lower top part of the pipe and the upper bottom part of the pipe.
signal k : integer range 0 to 454;

signal hard_mode : integer;
signal r : integer := 240;
-- RANGE is 7 * dim for each

begin
  
-- Width and height for the rectangle of pipe one.
p_size <= 2;
scale_out <= p_size;
g_size <= 2;
--r <= 90 / p_size;
pipe_width <= to_unsigned(p_size*26 - 1, 11);
pipe_height <= to_unsigned(480 - g_size*20 - 1, 10);

-- '0' is easy mode and '1' is hard mode.
---------------STATES---------------
-- "00" main menu
-- "01" normal
-- "10" training
-- "11" death
------------------------------------

hard_mode <= 0 when state = "10" else
             1 when state = "01" else
             0;
             
k <= 70 - 15 * hard_mode;
pipe_gap_width_out <= k;

pixel_column <= pc;--std_logic_vector(unsigned(pc) + to_signed(286 * (pipe_no - 1), 10));
pixel_row <= pr;

-- Row and column integer values for the pipe.
pixel_col_int <= (to_integer(unsigned(pixel_column)) mod (p_size*26) - to_integer(pipe_x_pos) mod (p_size*26)) mod (p_size*26);
pixel_row_int <= (to_integer(unsigned(pixel_row)));

pipe_y_pos <= std_logic_vector(to_unsigned(0, 10));
-- pipe_x_motion <= std_logic_vector(to_signed(-1, 11));
-- Rules for drawing the pipe are as follows:
-- The central region needs to have a random height, and consists of the ends of both pipes.
-- The ends of both pipes needs to remain at a constant distance from each other provided the difficulty does not change.
-- The remaining regions are filled until the edges of the screen.
  
  --pixel information goes here.
  
  pipe_on <= '1' when ((unsigned(pixel_column) <= pipe_x_pos + pipe_width)
  and (unsigned(pixel_column) >= pipe_x_pos)
          and (unsigned(pixel_row) <= unsigned(pipe_y_pos) + pipe_height)
          and (unsigned(pixel_row) >= unsigned(pipe_y_pos))
          
          -- Banned regions within rectangular area.
          -- Leftmost column
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 0, 0, r, p_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 0, r + k + 26, 480 - g_size*20, p_size)
          -- Rightmost column
          and not pixel_region(pixel_col_int, pixel_row_int, 25, 25, 0, r, p_size)
          and not pixel_region(pixel_col_int, pixel_row_int, 25, 25, r + k + 26, 480 - g_size*20, p_size)
          -- Central area
          and not pixel_region(pixel_col_int, pixel_row_int, 0, 25, r + 13, r + k + 13, p_size))  
          else '0';
  
pipe_colours <= -- Upper top part of pipe.
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 1, 1, 0, r, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 2, 2, 0, r, p_size) else
                rgbint_to_rgb4(yellow_green) when pixel_region(pixel_col_int, pixel_row_int, 3, 3, 0, r, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 4, 6, 0, r, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 7, 7, 0, r, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 8, 8, 0, r, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 9, 19, 0, r, p_size) else
                rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 20, 20, 0, r, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 21, 21, 0, r, p_size) else
                rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 22, 23, 0, r, p_size) else
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 24, 24, 0, r, p_size) else
                -- Lower top part of pipe.
                -- Row one
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 0, 25, r, r + 1, p_size) else
                -- Row two
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 0, 0, r + 1, r + 2, p_size) else
                rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 1, 24, r + 1, r + 2, p_size) else
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 25, 25, r + 1, r + 2, p_size) else
                -- Rows three to eleven
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 0, 0, r + 2, r + 11, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 1, 1, r + 2, r + 11, p_size) else
                rgbint_to_rgb4(yellow_green) when pixel_region(pixel_col_int, pixel_row_int, 2, 2, r + 2, r + 11, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 3, 4, r + 2, r + 11, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 5, 5, r + 2, r + 11, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 6, 6, r + 2, r + 11, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 7, 20, r + 2, r + 11, p_size) else
                rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 21, 21, r + 2, r + 11, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 22, 22, r + 2, r + 11, p_size) else
                rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 23, 24, r + 2, r + 11, p_size) else
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 25, 25, r + 2, r + 11, p_size) else
                -- Row twelve
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 0, 0, r + 11, r + 12, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 1, 1, r + 11, r + 12, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 2, 2, r + 11, r + 12, p_size) else
                rgbint_to_rgb4(yellow_green) when pixel_region(pixel_col_int, pixel_row_int, 3, 14, r + 11, r + 12, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 15, 15, r + 11, r + 12, p_size) else
                rgbint_to_rgb4(yellow_green) when pixel_region(pixel_col_int, pixel_row_int, 16, 16, r + 11, r + 12, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 17, 22, r + 11, r + 12, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 23, 23, r + 11, r + 12, p_size) else
                rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 24, 24, r + 11, r + 12, p_size) else
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 25, 25, r + 11, r + 12, p_size) else
                -- Row thirteen 
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 0, 25, r + 12, r + 13, p_size) else
                
                -- Upper bottom part of pipe.
                -- Row one
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 0, 25, r + k + 13, r + k + 14, p_size) else
                -- Row two
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 0, 0, r + k + 14, r + k + 15, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 1, 1, r + k + 14, r + k + 15, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 2, 2, r + k + 14, r + k + 15, p_size) else
                rgbint_to_rgb4(yellow_green) when pixel_region(pixel_col_int, pixel_row_int, 3, 14, r + k + 14, r + k + 15, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 15, 15, r + k + 14, r + k + 15, p_size) else
                rgbint_to_rgb4(yellow_green) when pixel_region(pixel_col_int, pixel_row_int, 16, 16, r + k + 14, r + k + 15, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 17, 22, r + k + 14, r + k + 15, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 23, 23, r + k + 14, r + k + 15, p_size) else
                rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 24, 24, r + k + 14, r + k + 15, p_size) else
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 25, 25, r + k + 14, r + k + 15, p_size) else
                -- Rows three to eleven
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 0, 0, r + k + 15, r + k + 24, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 1, 1, r + k + 15, r + k + 24, p_size) else
                rgbint_to_rgb4(yellow_green) when pixel_region(pixel_col_int, pixel_row_int, 2, 2, r + k + 15, r + k + 24, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 3, 4, r + k + 15, r + k + 24, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 5, 5, r + k + 15, r + k + 24, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 6, 6, r + k + 15, r + k + 24, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 7, 20, r + k + 15, r + k + 24, p_size) else
                rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 21, 21, r + k + 15, r + k + 24, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 22, 22, r + k + 15, r + k + 24, p_size) else
                rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 23, 24, r + k + 15, r + k + 24, p_size) else
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 25, 25, r + k + 15, r + k + 24, p_size) else
                -- Row twelve
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 0, 0, r + k + 24, r + k + 25, p_size) else
                rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 1, 24, r + k + 24, r + k + 25, p_size) else
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 25, 25, r + k + 24, r + k + 25, p_size) else
                -- Row thirteen
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 0, 25, r + k + 25, r + k + 26, p_size) else
                -- Lower bottom part of pipe.
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 1, 1, r + k + 26, 480 / p_size, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 2, 2, r + k + 26, 480 / p_size, p_size) else
                rgbint_to_rgb4(yellow_green) when pixel_region(pixel_col_int, pixel_row_int, 3, 3, r + k + 26, 480 / p_size, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 4, 6, r + k + 26, 480 / p_size, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 7, 7, r + k + 26, 480 / p_size, p_size) else
                rgbint_to_rgb4(light_green) when pixel_region(pixel_col_int, pixel_row_int, 8, 8, r + k + 26, 480 / p_size, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 9, 19, r + k + 26, 480 / p_size, p_size) else
                rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 20, 20, r + k + 26, 480 / p_size, p_size) else
                rgbint_to_rgb4(green) when pixel_region(pixel_col_int, pixel_row_int, 21, 21, r + k + 26, 480 / p_size, p_size) else
                rgbint_to_rgb4(dark_green) when pixel_region(pixel_col_int, pixel_row_int, 22, 23, r + k + 26, 480 / p_size, p_size) else
                rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 24, 24, r + k + 26, 480 / p_size, p_size) else
                rgbint_to_rgb4(eggplant);

-- Set output colour channel values for the current pixel.
colour_info(0) <= pipe_colours(0) when pipe_on = '1' else
                  "0000";
colour_info(1) <= pipe_colours(1) when pipe_on = '1' else
                  "0000";
colour_info(2) <= pipe_colours(2) when pipe_on = '1' else
                  "0000";

-- Pipe movement.
move_pipe: process (vert_sync)
  variable tmp : std_logic := '0';
  variable count : integer := 0;
  
  impure function random return integer is
    variable output : integer;
  begin
    output := to_integer(unsigned(rand));
    -- output := output mod max;
    return output + 20;
  end function random;
begin

  -- Update the pipe position once per vsync.
  if (rising_edge(vert_sync)) then
  		      
    -- Move along the LFSR but use a different operation depending on the pipe number.
    if pipe_no = 1 then
      tmp := rand(4) XOR rand(3) XOR rand(2) XOR rand(0);
    elsif pipe_no = 2 then
      tmp := rand(5) XOR rand(3) XOR rand(1) XOR rand(0);
    elsif pipe_no = 3 then
      tmp := rand(4) XOR rand(2) XOR rand(1) XOR rand(0);
    else
      tmp := '0';
    end if;
    
    -- Enable powerups, but only sometimes (they should be kind of rare).
    if to_integer(unsigned(rand)) mod 11 = 0 then
      powerup_en <= '1';
    else
      powerup_en <= '0'; 
    end if;     
      
    rand <= tmp & rand(6 downto 1);
    
    if hard_mode = 0 then
      count := 0;
    elsif hard_mode = 1 and count <= 18000 then
      count := count + 1;
    else 
      count := count;
    end if;
	 
		-- Reset the pipe position once it goes off of the screen.
		if (std_logic_vector(signed(pipe_x_pos) + signed(pipe_width)) <= std_logic_vector(to_signed(0, 11))) then
			r <= random;
      pipe_height_out <= r;
			pipe_x_motion <= to_signed(639, 11);
		else
			pipe_x_motion <= to_signed(-1 - hard_mode * (count / 1800), 11);
     
		end if;
     -- Calculate the position of the pipe ready for the next frame.
      pipe_x_pos <= unsigned(signed(pipe_x_pos) + pipe_x_motion);
      pipe_x_out_pos <= signed(pipe_x_pos);
  end if;

end process move_pipe;

px_motion <= to_integer(pipe_x_motion);

end architecture behaviour;

------------------------------------------------------------
-- Powerup object.
------------------------------------------------------------

-- Default libraries.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Custom libraries.
library work;
use work.rgb_functions.all;
use work.pixel_functions.all;

entity powerup is
  port (powerup_en : in std_logic_vector(2 downto 0);
        pixel_row, pixel_column : in std_logic_vector(9 downto 0);
        colour_info : out rgb_array);
end entity powerup;

architecture behaviour of powerup is
  
-- Colour assignments.
constant eggplant : rgb := (83, 56, 70);
constant silver : rgb := (192, 192, 192);

-- Powerup image signals.
signal powerup_on : std_logic;
signal powerup_colours : rgb_array;
signal powerup_width : std_logic_vector(10 downto 0);
signal powerup_height : std_logic_vector(9 downto 0);

signal powerup_x_pos : std_logic_vector(10 downto 0);
signal powerup_y_pos : std_logic_vector(9 downto 0) := "0011110000";
signal powerup_x_motion : std_logic_vector(10 downto 0);

signal pixel_col_int : screen_width;
signal pixel_row_int : screen_height;

begin
  
-- Row and column integer values for the flappy bird.
pixel_col_int <= (to_integer(unsigned(pixel_column)) mod (7) - to_integer(unsigned(powerup_x_pos)) mod (7)) mod (7);
pixel_row_int <= (to_integer(unsigned(pixel_row)) mod (7) - to_integer(unsigned(powerup_y_pos)) mod (7)) mod (7);

powerup_on <= '1' when ((signed(pixel_column) <= signed(powerup_x_pos) + signed(powerup_width))
              and (signed(pixel_column) >= signed(powerup_x_pos))
              and (unsigned(pixel_row) <= unsigned(powerup_y_pos) + unsigned(powerup_height))
              and (unsigned(pixel_row) >= unsigned(powerup_y_pos))
          
              -- Banned regions within rectangular area.
              -- Row one
              and not pixel_region(pixel_col_int, pixel_row_int, 0, 1, 0, 1, 1)
              and not pixel_region(pixel_col_int, pixel_row_int, 5, 6, 0, 1, 1)
              -- Row two
              and not pixel_region(pixel_col_int, pixel_row_int, 0, 0, 0, 1, 1)
              and not pixel_region(pixel_col_int, pixel_row_int, 6, 6, 0, 1, 1)
              -- Row six
              and not pixel_region(pixel_col_int, pixel_row_int, 0, 0, 0, 1, 1)
              and not pixel_region(pixel_col_int, pixel_row_int, 6, 6, 0, 1, 1)
              -- Row seven
              and not pixel_region(pixel_col_int, pixel_row_int, 0, 1, 0, 1, 1)
              and not pixel_region(pixel_col_int, pixel_row_int, 5, 6, 0, 1, 1))
              else '0';

powerup_colours <= -- Row one
                   rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 2, 4, 0, 1, 1) else
                   -- Row two
                   rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 1, 1, 1, 2, 1) else
                   rgbint_to_rgb4(silver) when pixel_region(pixel_col_int, pixel_row_int, 2, 4, 1, 2, 1) else
                   rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 5, 5, 1, 2, 1) else
                   -- Rows three to five
                   rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 0, 0, 2, 5, 1) else
                   rgbint_to_rgb4(silver) when pixel_region(pixel_col_int, pixel_row_int, 1, 5, 2, 5, 1) else
                   rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 6, 6, 2, 5, 1) else
                   -- Row six
                   rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 1, 1, 5, 6, 1) else
                   rgbint_to_rgb4(silver) when pixel_region(pixel_col_int, pixel_row_int, 2, 4, 5, 6, 1) else
                   rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 5, 5, 5, 6, 1) else
                   -- Row seven
                   rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 2, 4, 6, 7, 1) else
                   rgbint_to_rgb4(eggplant);

-- Set output colour channel values for the current pixel.
colour_info(0) <= powerup_colours(0) when powerup_on = '1' and (powerup_en(0) = '1' or powerup_en(1) = '1' or powerup_en(2) = '1') else
                  "0000";
colour_info(1) <= powerup_colours(1) when powerup_on = '1' and (powerup_en(0) = '1' or powerup_en(1) = '1' or powerup_en(2) = '1') else
                  "0000";
colour_info(2) <= powerup_colours(2) when powerup_on = '1' and (powerup_en(0) = '1' or powerup_en(1) = '1' or powerup_en(2) = '1') else
                  "0000";
  
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
use work.pixel_functions.all;

-- Flappy bird object entity.
entity flappy_bird is
  port (left_mouse, right_mouse, vert_sync : in std_logic;
        pixel_row, pixel_column : in std_logic_vector(9 downto 0);
        colour_info : out rgb_array;
        bird_height_out : out std_logic_vector(9 downto 0);
        bird_y_position : out std_logic_vector(9 downto 0));
end entity flappy_bird;

-- Flappy bird architecture.
architecture behaviour of flappy_bird is
  
-- Colour assignments.
constant eggplant : rgb := (83, 56, 70);
constant yellow : rgb := (247, 255, 46);
constant dark_yellow : rgb := (249, 241, 36);
constant saffron : rgb := (249, 194, 44);
constant red : rgb := (253, 104, 75);
constant white : rgb := (253, 255, 250);
constant coconut : rgb := (250, 252, 233);
constant grey : rgb := (245, 241, 240);

-- Flappy bird image signals.
signal flappy_bird_on : std_logic;
signal flappy_bird_colours : rgb_array;
signal flappy_bird_width : std_logic_vector(10 downto 0);
signal flappy_bird_height : std_logic_vector(9 downto 0);
signal fb_size : integer range 0 to 7;

signal flappy_x_pos : std_logic_vector(10 downto 0);
signal flappy_y_pos : std_logic_vector(9 downto 0) := "0011110000";
signal flappy_y_motion : std_logic_vector(9 downto 0);
signal left_flag, right_flag, holding : std_logic;
signal frame_counter : integer range 0 to 255 := 0;

signal pixel_col_int : screen_width;
signal pixel_row_int : screen_height;

begin           

-- Width and height for the rectangle of the flappy bird.
fb_size <= 2;
flappy_bird_width <= std_logic_vector(to_unsigned(fb_size*17 - 1, 11));
flappy_bird_height <= std_logic_vector(to_unsigned(fb_size*12 - 1, 10));
bird_height_out <= flappy_bird_height;

-- Row and column integer values for the flappy bird.
pixel_col_int <= (to_integer(unsigned(pixel_column)) mod (fb_size*17) - to_integer(unsigned(flappy_x_pos)) mod (fb_size*17)) mod (fb_size*17);
pixel_row_int <= (to_integer(unsigned(pixel_row)) mod (fb_size*12) - to_integer(unsigned(flappy_y_pos)) mod (fb_size*12)) mod (fb_size*12);

-- x position for flappy bird.
flappy_x_pos <= std_logic_vector(to_unsigned(313, 11));
			
-- Enable flappy bird drawing only within allowed regions.
flappy_bird_on <= '1' when ((signed(pixel_column) <= signed(flappy_x_pos) + signed(flappy_bird_width))
                      and (signed(pixel_column) >= signed(flappy_x_pos))
                      and (unsigned(pixel_row) <= unsigned(flappy_y_pos) + unsigned(flappy_bird_height))
                      and (unsigned(pixel_row) >= unsigned(flappy_y_pos))
          
                      -- Banned regions within rectangular area.
                      -- Row one
                      and not pixel_region(pixel_col_int, pixel_row_int, 0, 5, 0, 1, fb_size)
                      and not pixel_region(pixel_col_int, pixel_row_int, 12, 16, 0, 1, fb_size)
                      -- Row two
                      and not pixel_region(pixel_col_int, pixel_row_int, 0, 3, 1, 2, fb_size)
                      and not pixel_region(pixel_col_int, pixel_row_int, 13, 16, 1, 2, fb_size)
                      -- Row three
                      and not pixel_region(pixel_col_int, pixel_row_int, 0, 2, 2, 3, fb_size)
                      and not pixel_region(pixel_col_int, pixel_row_int, 14, 16, 2, 3, fb_size)
                      -- Row four
                      and not pixel_region(pixel_col_int, pixel_row_int, 0, 0, 3, 4, fb_size)
                      and not pixel_region(pixel_col_int, pixel_row_int, 15, 16, 3, 4, fb_size)
                      -- Row five
                      and not pixel_region(pixel_col_int, pixel_row_int, 15, 16, 4, 5, fb_size)
                      -- Row six
                      and not pixel_region(pixel_col_int, pixel_row_int, 15, 16, 5, 6, fb_size)
                      -- Row seven
                      and not pixel_region(pixel_col_int, pixel_row_int, 16, 16, 6, 7, fb_size)
                      -- Row eight
                      and not pixel_region(pixel_col_int, pixel_row_int, 0, 0, 7, 8, fb_size)
                      -- Row nine
                      and not pixel_region(pixel_col_int, pixel_row_int, 0, 1, 8, 9, fb_size)
                      and not pixel_region(pixel_col_int, pixel_row_int, 16, 16, 8, 9, fb_size)
                      -- Row ten
                      and not pixel_region(pixel_col_int, pixel_row_int, 0, 1, 9, 10, fb_size)
                      and not pixel_region(pixel_col_int, pixel_row_int, 16, 16, 9, 10, fb_size)
                      -- Row eleven
                      and not pixel_region(pixel_col_int, pixel_row_int, 0, 2, 10, 11, fb_size)
                      and not pixel_region(pixel_col_int, pixel_row_int, 15, 16, 10, 11, fb_size)
                      -- Row twelve
                      and not pixel_region(pixel_col_int, pixel_row_int, 0, 4, 11, 12, fb_size)
                      and not pixel_region(pixel_col_int, pixel_row_int, 10, 16, 11, 12, fb_size)) 
                      else '0';
      
-- Setting the specific pixel information for every pixel in the flappy bird.
flappy_bird_colours <= -- Row one
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 6, 11, 0, 1, fb_size) else
                       -- Row two
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 4, 5, 1, 2, fb_size) else
                       rgbint_to_rgb4(yellow) when pixel_region(pixel_col_int, pixel_row_int, 6, 8, 1, 2, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 1, 2, fb_size) else
                       rgbint_to_rgb4(white) when pixel_region(pixel_col_int, pixel_row_int, 10, 11, 1, 2, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 12, 12, 1, 2, fb_size) else
                       -- Row three
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 3, 3, 2, 3, fb_size) else
                       rgbint_to_rgb4(yellow) when pixel_region(pixel_col_int, pixel_row_int, 4, 5, 2, 3, fb_size) else
                       rgbint_to_rgb4(dark_yellow) when pixel_region(pixel_col_int, pixel_row_int, 6, 7, 2, 3, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 8, 8, 2, 3, fb_size) else
                       rgbint_to_rgb4(white) when pixel_region(pixel_col_int, pixel_row_int, 9, 12, 2, 3, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 13, 13, 2, 3, fb_size) else
                       -- Row four
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 1, 4, 3, 4, fb_size) else
                       rgbint_to_rgb4(dark_yellow) when pixel_region(pixel_col_int, pixel_row_int, 5, 7, 3, 4, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 8, 8, 3, 4, fb_size) else
                       rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 3, 4, fb_size) else
                       rgbint_to_rgb4(white) when pixel_region(pixel_col_int, pixel_row_int, 10, 11, 3, 4, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 12, 12, 3, 4, fb_size) else
                       rgbint_to_rgb4(white) when pixel_region(pixel_col_int, pixel_row_int, 13, 13, 3, 4, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 14, 14, 3, 4, fb_size) else
                       -- Row five
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 0, 0, 4, 5, fb_size) else
                       rgbint_to_rgb4(coconut) when pixel_region(pixel_col_int, pixel_row_int, 1, 4, 4, 5, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 5, 5, 4, 5, fb_size) else
                       rgbint_to_rgb4(dark_yellow) when pixel_region(pixel_col_int, pixel_row_int, 6, 7, 4, 5, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 8, 8, 4, 5, fb_size) else
                       rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 4, 5, fb_size) else
                       rgbint_to_rgb4(white) when pixel_region(pixel_col_int, pixel_row_int, 10, 11, 4, 5, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 12, 12, 4, 5, fb_size) else
                       rgbint_to_rgb4(white) when pixel_region(pixel_col_int, pixel_row_int, 13, 13, 4, 5, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 14, 14, 4, 5, fb_size) else
                       -- Row six
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 0, 0, 5, 6, fb_size) else
                       rgbint_to_rgb4(coconut) when pixel_region(pixel_col_int, pixel_row_int, 1, 5, 5, 6, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 6, 6, 5, 6, fb_size) else
                       rgbint_to_rgb4(dark_yellow) when pixel_region(pixel_col_int, pixel_row_int, 7, 8, 5, 6, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 5, 6, fb_size) else
                       rgbint_to_rgb4(grey) when pixel_region(pixel_col_int, pixel_row_int, 10, 10, 5, 6, fb_size) else
                       rgbint_to_rgb4(white) when pixel_region(pixel_col_int, pixel_row_int, 11, 13, 5, 6, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 14, 14, 5, 6, fb_size) else
                       -- Row seven
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 0, 0, 6, 7, fb_size) else
                       rgbint_to_rgb4(yellow) when pixel_region(pixel_col_int, pixel_row_int, 1, 1, 6, 7, fb_size) else
                       rgbint_to_rgb4(coconut) when pixel_region(pixel_col_int, pixel_row_int, 2, 4, 6, 7, fb_size) else
                       rgbint_to_rgb4(yellow) when pixel_region(pixel_col_int, pixel_row_int, 5, 5, 6, 7, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 6, 6, 6, 7, fb_size) else
                       rgbint_to_rgb4(dark_yellow) when pixel_region(pixel_col_int, pixel_row_int, 7, 9, 6, 7, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 10, 15, 6, 7, fb_size) else
                       -- Row eight
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 1, 1, 7, 8, fb_size) else
                       rgbint_to_rgb4(yellow) when pixel_region(pixel_col_int, pixel_row_int, 2, 4, 7, 8, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 5, 5, 7, 8, fb_size) else
                       rgbint_to_rgb4(saffron) when pixel_region(pixel_col_int, pixel_row_int, 6, 8, 7, 8, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 7, 8, fb_size) else
                       rgbint_to_rgb4(red) when pixel_region(pixel_col_int, pixel_row_int, 10, 15, 7, 8, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 16, 16, 7, 8, fb_size) else
                       -- Row nine
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 2, 4, 8, 9, fb_size) else
                       rgbint_to_rgb4(saffron) when pixel_region(pixel_col_int, pixel_row_int, 5, 7, 8, 9, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 8, 8, 8, 9, fb_size) else
                       rgbint_to_rgb4(red) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 8, 9, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 10, 15, 8, 9, fb_size) else
                       -- Row ten
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 2, 2, 9, 10, fb_size) else
                       rgbint_to_rgb4(saffron) when pixel_region(pixel_col_int, pixel_row_int, 3, 8, 9, 10, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 9, 9, 9, 10, fb_size) else
                       rgbint_to_rgb4(red) when pixel_region(pixel_col_int, pixel_row_int, 10, 14, 9, 10, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 15, 15, 9, 10, fb_size) else
                       -- Row eleven
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 3, 4, 10, 11, fb_size) else
                       rgbint_to_rgb4(saffron) when pixel_region(pixel_col_int, pixel_row_int, 5, 9, 10, 11, fb_size) else
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 10, 14, 10, 11, fb_size) else
                       -- Row twelve
                       rgbint_to_rgb4(eggplant) when pixel_region(pixel_col_int, pixel_row_int, 5, 9, 11, 12, fb_size) else
                       rgbint_to_rgb4(eggplant);
                      			
-- Set output colour channel values for the current pixel.
colour_info(0) <= flappy_bird_colours(0) when flappy_bird_on = '1' else
                  "0000";
colour_info(1) <= flappy_bird_colours(1) when flappy_bird_on = '1' else
                  "0000";
colour_info(2) <= flappy_bird_colours(2) when flappy_bird_on = '1' else
                  "0000";

left_flag <= '1' when left_mouse = '1' else '0';
right_flag <= '1' when right_mouse = '1' else '0';

--Flappy bird movement.
-- bird_velocity is positive means up and nagative means down
--frame_rate = 0.001
move_bird : process (vert_sync)
	variable acceleFlag : integer := 0;
    variable bird_velocity : integer := 0;
    variable frame_rate_time : integer := 1;
	 variable start : integer := 0;
begin
    -- Update the flappy bird position once per vsync.
    if (rising_edge(vert_sync)) then

        -- reset holding flag if let go
        if (left_flag = '0') then
            holding <= '0';
        end if;

        -- if clicking and not holding
        if (left_flag = '1' and holding = '0') then
            -- set holding flag
            holding <= '1';
				start := 1;
            -- set the bird on an upwards velocity
            bird_velocity := 7;

        else
            -- decelerate the bird
            -- velociy = velocity minus acceleration times framerate
				
				if (acceleFlag = 1 and start = 1) then
					bird_velocity := bird_velocity - (1 * frame_rate_time);
					acceleFlag := 0;
				else
					acceleFlag := 1;
				end if;
        end if;

        -- enact the velocity on the birds position
        flappy_y_pos <= std_logic_vector(unsigned(flappy_y_pos) - bird_velocity * frame_rate_time);

        -- if the bird is above or below the screen, bring it in bounds, and halt all velocity
        if (flappy_y_pos >= std_logic_vector(to_unsigned(439, 10) - unsigned(flappy_bird_height))) then
          bird_velocity := 1;
          flappy_y_pos <= std_logic_vector(unsigned(flappy_y_pos) - bird_velocity * frame_rate_time);
          --flappy_y_pos <= std_logic_vector(to_unsigned(479, 10));
        elsif (flappy_y_pos <= std_logic_vector(to_unsigned(0, 10))) then
          bird_velocity := -bird_velocity;
          flappy_y_pos <= std_logic_vector(unsigned(flappy_y_pos) - bird_velocity * frame_rate_time);
          --flappy_y_pos <= std_logic_vector(to_unsigned(0, 10));
        -- else 
        --     bird_velocity := 0;
        --     flappy_y_pos <= std_logic_vector(unsigned(flappy_y_pos) - bird_velocity * frame_rate_time);
        end if;

        bird_y_position <= flappy_y_pos;

    end if;
end process move_bird;

end architecture behaviour;


