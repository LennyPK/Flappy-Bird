library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package rgb_functions is
  
-- Custom type to store the converted rgb values in std_logic_vector format.
type rgb_array is array(0 to 2) of std_logic_vector(3 downto 0);

-- Custom types for the screen dimensions.
subtype screen_width is natural range 0 to 639;
subtype screen_height is natural range 0 to 479;

subtype rgb_value is integer range 0 to 255;
  
function rgbint_to_rgb4(red_in : rgb_value; green_in : rgb_value; blue_in : rgb_value)
return rgb_array;

-- This function takes the inputs pixel location, size, and the bounds for left, right, top and bottom.
function pixel_region(pixel_col_int : screen_width; pixel_row_int : screen_height; 
                      l_bound, r_bound : screen_width;
                      t_bound, b_bound : screen_height; 
                      size : integer)
return boolean;
                                                  
end package rgb_functions;

package body rgb_functions is
  
-- Function to convert integer rgb values to 4 bit standard logic vectors.
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
  colour_out(0) := std_logic_vector(to_unsigned(tmp_red, 4));
  
  -- Green channel.
  if green_in >= 15 then
    tmp_green := green_in - 15;
  else tmp_green := 0;
  end if;
    
  tmp_green := tmp_green / 16;
  colour_out(1) := std_logic_vector(to_unsigned(tmp_green, 4));
  
  -- Blue channel.
  if blue_in >= 15 then
    tmp_blue := blue_in - 15;
  else tmp_blue := 0;
  end if;
    
  tmp_blue := tmp_blue / 16;
  colour_out(2) := std_logic_vector(to_unsigned(tmp_blue, 4));
  
  return colour_out;
  
end function;

-- Function to set square pixel regions based on a scaling factor.
function pixel_region(pixel_col_int : screen_width; pixel_row_int : screen_height; 
                      l_bound, r_bound : screen_width;
                      t_bound, b_bound : screen_height; 
                      size : integer)
  return boolean is
  
  variable draw : boolean := false;
begin

  if ((pixel_col_int >= size*l_bound and pixel_col_int <= size-1+size*r_bound) and (pixel_row_int >= size*t_bound and pixel_row_int <= -1+size*b_bound)) then
    draw := true;
  end if;
  
  return draw;
  
end function pixel_region;

end package body rgb_functions;