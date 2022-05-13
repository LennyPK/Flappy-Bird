LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY bouncy_ball IS
	PORT
		( pb1, pb2, clk, vert_sync	: IN std_logic;
      pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
		  red, green, blue 			: OUT std_logic_vector(3 DOWNTO 0));		
END bouncy_ball;

architecture behavior of bouncy_ball is

SIGNAL ball_on					: std_logic_vector(3 DOWNTO 0);
SIGNAL size 					: std_logic_vector(9 DOWNTO 0);  
SIGNAL ball_y_pos				: std_logic_vector(9 DOWNTO 0);
SiGNAL ball_x_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL ball_y_motion			: std_logic_vector(9 DOWNTO 0);

-- Flappy bird image signals
type rgb_array is array(0 to 2) of std_logic_vector(3 downto 0)
signal flappy_bird : std_logic_vector(3 downto 0);
signal flappy_bird_colours : rgb_array;
signal flappy_bird_width, flappy_bird_height : std_logic_vector(9 downto 0);
signal pixel_col_int : integer range(0 to 16);
signal pixel_row_int : integer range(0 to 11);

BEGIN           

size <= CONV_STD_LOGIC_VECTOR(8,10);

-- Width and height for the rectangle of the flappy bird
flappy_bird_width <= conv_std_logic_vector(17, 10);
flappy_bird_height <= conv_std_logic_vector(12, 10);

-- Row and column integer values for the flappy bird
pixel_col_int <= conv_integer('0' + pixel_column);
pixel_row_int <= conv_integer('0' + pixel_row);

-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball
ball_x_pos <= CONV_STD_LOGIC_VECTOR(0,11);

ball_on <= "1111" when ( ('0' & pixel_column <= '0' & ball_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & pixel_row <= ball_y_pos + size))  else	-- y_pos - size <= pixel_row <= y_pos + size
			"0000";
			
flappy_bird <= "1111" when (('0' & pixel_column <= '0' & ball_x_pos + flappy_bird_width)
          and ('0' & pixel_column >= ball_x_pos)
          and ('0' & pixel_row <= ball_y_pos + flappy_bird_height)
          and ('0' & pixel_row >= ball_y_pos)) else
      "0000";

			
flappy_bird_colours <= rgb16_to_rgb4() when (pixel_col_int >= 0 and pixel_col_int <= 5 and pixel_row_int = 0) else
                       rgb16_to_rgb4() when (pixel_col_int >= 6 and pixel_col_int <= 11 and pixel_row = 0) else
                       rgb16_to_rgb4() when (pixel_col_int >= 0 and pixel_col_int <= 5 and pixel_row_int = 0) else
                       rgb16_to_rgb4() when (pixel_col_int >= 0 and pixel_col_int <= 5 and pixel_row_int = 0) else
                       rgb16_to_rgb4() when (pixel_col_int >= 0 and pixel_col_int <= 5 and pixel_row_int = 0) else
                       rgb16_to_rgb4() when (pixel_col_int >= 0 and pixel_col_int <= 5 and pixel_row_int = 0) else
                       rgb16_to_rgb4() when (pixel_col_int >= 0 and pixel_col_int <= 5 and pixel_row_int = 0) else
			
function rgb16_to_rgb4(red_in : integer, green_in : integer, blue_in : integer) 
  return rgb_array is
  variable colour_out : rgb_array;
begin
  if red_in >= 15 then
    red_in = red_in - 15;
  else red_in = 0;
  end if;
    
  red_in = red_in / 16;
  red_in = conv_std_logic_vector(red_in, 4);
  colour_out(0) <= red_in;
  
  if blue_in >= 15 then
    blue_in = blue_in - 15;
  else blue_in = 0;
  end if;
    
  blue_in = blue_in / 16;
  blue_in = conv_std_logic_vector(blue_in, 4);
  colour_out(1) <= blue_in;
  
  if green_in >= 15 then
    green_in = green_in - 15;
  else green_in = 0;
  end if;
    
  green_in = green_in / 16;
  green_in = conv_std_logic_vector(green_in, 4);
  colour_out(0) <= red_in;
  
  
  
  
  return colour_out;
end function;


-- Colours for pixel data on video signal
-- Changing the background and ball colour by pushbuttons
--Red <=  (ball_on AND "1001") OR (not ball_on AND "1001");
--Green <= (ball_on AND "0000") OR (not ball_on AND "0100");
--Blue <=  (ball_on AND "0000") OR (not ball_on AND "0000");
Red <= (flappy_bird) or (not_flappy_bird and "0010");
Green <= (flappy_bird) or (not_flappy_bird and "1000");
Blue <= (flappy_bird) or (not_flappy_bird and "0111");


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

END behavior;



