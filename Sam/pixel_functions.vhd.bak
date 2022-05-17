library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package pixel_functions is
  
-- Custom types for the screen dimensions.
subtype screen_width is natural range 0 to 639;
subtype screen_height is natural range 0 to 479;

-- This function takes the inputs pixel location, size, and the bounds for left, right, top and bottom.
function pixel_region(pixel_col_int : screen_width; pixel_row_int : screen_height; 
                      l_bound, r_bound : screen_width;
                      t_bound, b_bound : screen_height; 
                      size : integer)
return boolean;
  
end package pixel_functions;


package body pixel_functions is
  
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
  
end package body pixel_functions;