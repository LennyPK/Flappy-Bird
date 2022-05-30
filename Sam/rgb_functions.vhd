library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package rgb_functions is
  
-- Custom type to store the converted rgb values in std_logic_vector format.
type rgb_array is array(0 to 2) of std_logic_vector(3 downto 0);

subtype rgb_value is natural range 0 to 255;
type rgb is array(0 to 2) of rgb_value;
  
function rgbint_to_rgb4(colour_in : rgb)
return rgb_array;
                                                  
end package rgb_functions;

package body rgb_functions is
  
-- Function to convert integer rgb values to 4 bit standard logic vectors.
function rgbint_to_rgb4(colour_in : rgb) 
  return rgb_array is
  
  -- Variables to store calculated values.
  variable colour_out : rgb_array;
	variable	tmp_red	:	integer;
	variable tmp_redslv : std_logic_vector(7 downto 0);
	variable tmp_blue	:	integer;
	variable tmp_blueslv : std_logic_vector(7 downto 0);
	variable tmp_green	:	integer;
	variable tmp_greenslv : std_logic_vector(7 downto 0);
begin
  
  -- Red channel.
  if colour_in(0) >= 15 then
    tmp_red := colour_in(0) - 15;
  else tmp_red := 0;
  end if;
    
  tmp_redslv := std_logic_vector(shift_right(to_unsigned(tmp_red, 8), 4));
  colour_out(0) := tmp_redslv(3 downto 0);
  
  -- Green channel.
  if colour_in(1) >= 15 then
    tmp_green := colour_in(1) - 15;
  else tmp_green := 0;
  end if;
    
  tmp_greenslv := std_logic_vector(shift_right(to_unsigned(tmp_green, 8), 4));
  colour_out(1) := tmp_greenslv(3 downto 0);
  
  -- Blue channel.
  if colour_in(2) >= 15 then
    tmp_blue := colour_in(2) - 15;
  else tmp_blue := 0;
  end if;
    
  tmp_blueslv := std_logic_vector(shift_right(to_unsigned(tmp_blue, 8), 4));
  colour_out(2) := tmp_blueslv(3 downto 0);
  
  return colour_out;
  
end function;

end package body rgb_functions;