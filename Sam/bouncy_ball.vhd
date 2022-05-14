library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;

ENTITY bouncy_ball IS
	PORT
		( pb1, pb2, clk, vert_sync	: IN std_logic;
      pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
		  red, green, blue 			: OUT std_logic_vector(3 DOWNTO 0));		
END bouncy_ball;

architecture behaviour of bouncy_ball is
  
SIGNAL ball_on					: std_logic_vector(3 DOWNTO 0);
SIGNAL size 					: std_logic_vector(9 DOWNTO 0);  
SIGNAL ball_y_pos				: std_logic_vector(9 DOWNTO 0);
SiGNAL ball_x_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL ball_y_motion			: std_logic_vector(9 DOWNTO 0);
begin

size <= CONV_STD_LOGIC_VECTOR(8,10);

-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball
ball_x_pos <= CONV_STD_LOGIC_VECTOR(303,11);
ball_on <= "1111" when ( ('0' & pixel_column <= '0' & ball_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & pixel_row <= ball_y_pos + size))  else	-- y_pos - size <= pixel_row <= y_pos + size
			"0000";
			
-- Changing the background and ball colour by pushbuttons
--Red <=  (ball_on AND "1001") OR (not ball_on AND "1001");
--Green <= (ball_on AND "0000") OR (not ball_on AND "0100");
--Blue <=  (ball_on AND "0000") OR (not ball_on AND "0000");

Move_Ball: process (vert_sync)  	
begin
	-- Move ball once every vertical sync
	if (rising_edge(vert_sync)) then			
		-- Bounce off top or bottom of the screen
		if ( ('0' & ball_y_pos >= CONV_STD_LOGIC_VECTOR(479,10) - size) ) then
			ball_y_motion <= - CONV_STD_LOGIC_VECTOR(2,10);
		elsif (ball_y_pos <= size) then 
			ball_y_motion <= CONV_STD_LOGIC_VECTOR(2,10);
		end if;
		-- Compute next ball Y position
		ball_y_pos <= ball_y_pos + ball_y_motion;
	end if;
end process Move_Ball;

end architecture behaviour;

------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;

-- Flappy bird object.
entity flappy_bird is
  port (clk, vert_sync : in std_logic;
        pixel_row, pixel_column : in std_logic_vector(9 downto 0);
        red, green, blue : out std_logic_vector(3 downto 0));
end entity flappy_bird;

-- Flappy bird architecture.
architecture behaviour of flappy_bird is

-- Flappy bird image signals.
type rgb_array is array(0 to 2) of std_logic_vector(3 downto 0);
signal flappy_bird_on : std_logic_vector(3 downto 0);
signal flappy_bird_colours : rgb_array;
signal flappy_bird_width, flappy_bird_height : std_logic_vector(9 downto 0);
signal fb_size : integer range 0 to 7;

signal flappy_x_pos : std_logic_vector(10 downto 0);
signal flappy_y_pos : std_logic_vector(9 downto 0);
signal flappy_y_motion : std_logic_vector(9 downto 0);

signal pixel_col_int : integer range 0 to 16;
signal pixel_row_int : integer range 0 to 11;

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
  colour_out(0) := conv_std_logic_vector(tmp_red, 4);
  
  -- Green channel.
  if green_in >= 15 then
    tmp_green := green_in - 15;
  else tmp_green := 0;
  end if;
    
  tmp_green := tmp_green / 16;
  colour_out(1) := conv_std_logic_vector(tmp_green, 4);
  
  -- Blue channel.
  if blue_in >= 15 then
    tmp_blue := blue_in - 15;
  else tmp_blue := 0;
  end if;
    
  tmp_blue := tmp_blue / 16;
  colour_out(2) := conv_std_logic_vector(tmp_blue, 4);
  
  return colour_out;
end function;

begin           

-- Width and height for the rectangle of the flappy bird.
fb_size <= 2;
flappy_bird_width <= conv_std_logic_vector(fb_size*17, 10);
flappy_bird_height <= conv_std_logic_vector(fb_size*12, 10);

-- Row and column integer values for the flappy bird.
pixel_col_int <= conv_integer('0' + pixel_column);
pixel_row_int <= conv_integer('0' + pixel_row);

-- x and y position for flappy bird.
flappy_x_pos <= conv_std_logic_vector(303, 11);
			
-- Enable flappy bird drawing only within allowed regions.
flappy_bird_on <= "1111" when (('0' & pixel_column <= '0' & flappy_x_pos + flappy_bird_width)
          and ('0' & pixel_column >= flappy_x_pos)
          and ('0' & pixel_row <= flappy_y_pos + flappy_bird_height)
          and ('0' & pixel_row >= flappy_y_pos)) else
      "1111";

-- Setting the specific pixel information for every pixel in the flappy bird.
flappy_bird_colours <= -- Row one
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*5 and (pixel_row_int >= fb_size*0 and pixel_row_int <= -1+fb_size*1)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*6 and pixel_col_int <= fb_size-1+fb_size*11 and (pixel_row_int >= fb_size*0 and pixel_row_int <= -1+fb_size*1)) else
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*12 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*0 and pixel_row_int <= -1+fb_size*1)) else
                       -- Row two
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*3 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*4 and pixel_col_int <= fb_size-1+fb_size*5 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2)) else
                       rgbint_to_rgb4(248, 255, 46) when (pixel_col_int >= fb_size*6 and pixel_col_int <= fb_size-1+fb_size*8 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*9 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2)) else
                       rgbint_to_rgb4(253, 255, 250) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*11 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*12 and pixel_col_int <= fb_size-1+fb_size*12 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2)) else
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*13 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*1 and pixel_row_int <= -1+fb_size*2)) else
                       -- Row three
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*2 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*3 and pixel_col_int <= fb_size-1+fb_size*3 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       rgbint_to_rgb4(248, 255, 46) when (pixel_col_int >= fb_size*4 and pixel_col_int <= fb_size-1+fb_size*5 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       rgbint_to_rgb4(249, 241, 36) when (pixel_col_int >= fb_size*6 and pixel_col_int <= fb_size-1+fb_size*7 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*8 and pixel_col_int <= fb_size-1+fb_size*8 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       rgbint_to_rgb4(253, 255, 250) when (pixel_col_int >= fb_size*9 and pixel_col_int <= fb_size-1+fb_size*12 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*13 and pixel_col_int <= fb_size-1+fb_size*13 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*14 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*2 and pixel_row_int <= -1+fb_size*3)) else
                       -- Row four
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*0 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*1 and pixel_col_int <= fb_size-1+fb_size*4 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(249, 241, 36) when (pixel_col_int >= fb_size*5 and pixel_col_int <= fb_size-1+fb_size*7 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*8 and pixel_col_int <= fb_size-1+fb_size*8 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(250, 252, 233) when (pixel_col_int >= fb_size*9 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(253, 255, 250) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*11 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*12 and pixel_col_int <= fb_size-1+fb_size*12 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(253, 255, 250) when (pixel_col_int >= fb_size*13 and pixel_col_int <= fb_size-1+fb_size*13 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*14 and pixel_col_int <= fb_size-1+fb_size*14 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*15 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*3 and pixel_row_int <= -1+fb_size*4)) else
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
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*15 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*4 and pixel_row_int <= -1+fb_size*5)) else
                       -- Row six
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*0 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       rgbint_to_rgb4(250, 252, 233) when (pixel_col_int >= fb_size*1 and pixel_col_int <= fb_size-1+fb_size*5 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*6 and pixel_col_int <= fb_size-1+fb_size*6 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       rgbint_to_rgb4(249, 241, 36) when (pixel_col_int >= fb_size*7 and pixel_col_int <= fb_size-1+fb_size*8 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*9 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       rgbint_to_rgb4(250, 252, 233) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*10 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       rgbint_to_rgb4(253, 255, 250) when (pixel_col_int >= fb_size*11 and pixel_col_int <= fb_size-1+fb_size*13 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*14 and pixel_col_int <= fb_size-1+fb_size*14 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*15 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*5 and pixel_row_int <= -1+fb_size*6)) else
                       -- Row seven
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*0 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       rgbint_to_rgb4(248, 255, 46) when (pixel_col_int >= fb_size*1 and pixel_col_int <= fb_size-1+fb_size*1 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       rgbint_to_rgb4(250, 252, 233) when (pixel_col_int >= fb_size*2 and pixel_col_int <= fb_size-1+fb_size*4 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       rgbint_to_rgb4(248, 255, 46) when (pixel_col_int >= fb_size*5 and pixel_col_int <= fb_size-1+fb_size*5 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*6 and pixel_col_int <= fb_size-1+fb_size*6 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       rgbint_to_rgb4(249, 241, 36) when (pixel_col_int >= fb_size*7 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*15 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*16 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*6 and pixel_row_int <= -1+fb_size*7)) else
                       -- Row eight
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*0 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*1 and pixel_col_int <= fb_size-1+fb_size*1 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       rgbint_to_rgb4(248, 255, 46) when (pixel_col_int >= fb_size*2 and pixel_col_int <= fb_size-1+fb_size*4 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*5 and pixel_col_int <= fb_size-1+fb_size*5 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       rgbint_to_rgb4(249, 194, 44) when (pixel_col_int >= fb_size*6 and pixel_col_int <= fb_size-1+fb_size*8 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*9 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       rgbint_to_rgb4(253, 104, 75) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*15 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*16 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*7 and pixel_row_int <= -1+fb_size*8)) else
                       -- Row nine
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*1 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*2 and pixel_col_int <= fb_size-1+fb_size*4 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9)) else
                       rgbint_to_rgb4(249, 194, 44) when (pixel_col_int >= fb_size*5 and pixel_col_int <= fb_size-1+fb_size*7 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*8 and pixel_col_int <= fb_size-1+fb_size*8 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9)) else
                       rgbint_to_rgb4(253, 104, 75) when (pixel_col_int >= fb_size*9 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*15 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9)) else
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*16 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*8 and pixel_row_int <= -1+fb_size*9)) else
                       -- Row ten
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*1 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*2 and pixel_col_int <= fb_size-1+fb_size*2 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10)) else
                       rgbint_to_rgb4(249, 194, 44) when (pixel_col_int >= fb_size*3 and pixel_col_int <= fb_size-1+fb_size*8 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*9 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10)) else
                       rgbint_to_rgb4(253, 104, 75) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*14 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*15 and pixel_col_int <= fb_size-1+fb_size*15 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10)) else
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*16 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*9 and pixel_row_int <= -1+fb_size*10)) else
                       -- Row eleven
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*2 and (pixel_row_int >= fb_size*10 and pixel_row_int <= -1+fb_size*11)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*3 and pixel_col_int <= fb_size-1+fb_size*4 and (pixel_row_int >= fb_size*10 and pixel_row_int <= -1+fb_size*11)) else
                       rgbint_to_rgb4(249, 194, 44) when (pixel_col_int >= fb_size*5 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*10 and pixel_row_int <= -1+fb_size*11)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*14 and (pixel_row_int >= fb_size*10 and pixel_row_int <= -1+fb_size*11)) else
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*15 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*10 and pixel_row_int <= -1+fb_size*11)) else
                       -- Row twelve
                       rgbint_to_rgb4(0, 0, 0) when (pixel_col_int >= fb_size*0 and pixel_col_int <= fb_size-1+fb_size*4 and (pixel_row_int >= fb_size*11 and pixel_row_int <= -1+fb_size*12)) else
                       rgbint_to_rgb4(83, 56, 70) when (pixel_col_int >= fb_size*5 and pixel_col_int <= fb_size-1+fb_size*9 and (pixel_row_int >= fb_size*11 and pixel_row_int <= -1+fb_size*12)) else
                       rgbint_to_rgb4(47, 143, 127) when (pixel_col_int >= fb_size*10 and pixel_col_int <= fb_size-1+fb_size*16 and (pixel_row_int >= fb_size*11 and pixel_row_int <= -1+fb_size*12));
                      			
-- Set output colour channel values for the current pixel.
Red <= (flappy_bird_on and flappy_bird_colours(0)) or (not flappy_bird_on and "0010");
Green <= (flappy_bird_on and flappy_bird_colours(1)) or (not flappy_bird_on and "1000");
Blue <= (flappy_bird_on and flappy_bird_colours(2)) or (not flappy_bird_on and "0111");

move_bird: process (vert_sync)
begin
  -- Move the flappy bird once every vsync.
  if (rising_edge(vert_sync)) then
    -- Bounce off the edge of the screen.
    if ('0' & flappy_y_pos >= conv_std_logic_vector(479, 10) - fb_size) then
      flappy_y_motion <= -conv_std_logic_vector(2, 10);
    elsif (flappy_y_pos <= fb_size) then
      flappy_y_motion <= conv_std_logic_vector(2, 10);
    end if;
    -- Compute the position of the flappy bird for the next frame.
    flappy_y_pos <= flappy_y_pos + flappy_y_motion;
  end if;
end process move_bird;

end architecture behaviour;



