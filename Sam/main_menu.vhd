library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.rgb_functions.all;

entity main_menu is
    port (
        clk, mode_select, exit_screen       : in std_logic;
        pixel_x, pixel_y                    : in std_logic_vector(9 downto 0);
        state                               : in std_logic_vector(1 downto 0);
        state_out                           : out std_logic_vector(1 downto 0);
        colour_info                         : out rgb_array
    );
end entity main_menu;

architecture arc of main_menu is
    component char_rom is
        port (
            character_address	:	in std_logic_vector (5 downto 0);
            font_row, font_col	:	in std_logic_vector (2 downto 0);
            clock				: 	in std_logic ;
            rom_mux_output		:	out std_logic
        );
    end component char_rom;

    signal char_addr            : std_logic_vector(5 downto 0);
    signal font_row, font_col   : std_logic_vector(2 downto 0);
    signal title                : std_logic;
    signal line1, line2, line3  : std_logic;
    signal flash_colour         : std_logic_vector(11 downto 0);

    signal char_out             : std_logic;
    signal colour_out           : std_logic_vector(11 downto 0);
    signal yellow               : std_logic_vector(11 downto 0) := "111011100001";
    signal white                : std_logic_vector(11 downto 0) := "111111111111";
    signal black                : std_logic_vector(11 downto 0) := "000000000000";
    signal counter              : integer range -1 to 255 := 0;


begin
    char : char_rom 
        port map (character_address => char_addr, font_row => font_row, font_col => font_col, clock => clk, rom_mux_output => char_out);

    select_gamemode : process
    begin
        wait until (rising_edge(clk));

        counter <= counter + 1;
        if (counter > 250) then
            counter <= -1;
        end if;

        ---------------STATES---------------
        -- "00" main menu
        -- "01" normal
        -- "10" training
        -- "11" death
        ------------------------------------
        case state is
            when "00" =>
                -----------------title line------------------
                if
                    pixel_x >= std_logic_vector(to_unsigned(128,10)) and pixel_x < std_logic_vector(to_unsigned(160,10))
                        and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
                    char_addr <= "100000"; --(blank)
                    title <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(160,10)) and pixel_x < std_logic_vector(to_unsigned(192,10))
                        and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
                    char_addr <= "000110"; --F
                    title <= char_out;
                elsif 
                    pixel_x >= std_logic_vector(to_unsigned(192,10)) and pixel_x < std_logic_vector(to_unsigned(224,10))
                        and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
                    char_addr <= "001100"; --L
                    title <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(224,10)) and pixel_x < std_logic_vector(to_unsigned(256,10))
                        and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
                    char_addr <= "000001"; --A
                    title <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(256,10)) and pixel_x < std_logic_vector(to_unsigned(288,10))
                        and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
                    char_addr <= "010000"; --P
                    title <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(288,10)) and pixel_x < std_logic_vector(to_unsigned(320,10))
                        and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
                    char_addr <= "010000"; --P
                    title <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(320,10)) and pixel_x < std_logic_vector(to_unsigned(352,10))
                        and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
                    char_addr <= "011001"; --Y
                    title <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(352,10)) and pixel_x < std_logic_vector(to_unsigned(384,10))
                        and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
                    char_addr <= "100000"; --(blank)
                    title <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(384,10)) and pixel_x < std_logic_vector(to_unsigned(416,10))
                        and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
                    char_addr <= "000010"; --B
                    title <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(416,10)) and pixel_x < std_logic_vector(to_unsigned(448,10))
                        and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
                    char_addr <= "001001"; --I
                    title <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(448,10)) and pixel_x < std_logic_vector(to_unsigned(480,10))
                        and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
                    char_addr <= "010010"; --R
                    title <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(480,10)) and pixel_x < std_logic_vector(to_unsigned(512,10))
                        and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
                    char_addr <= "000100"; --D
                    title <= char_out;
                -----------------first line------------------
                elsif 
                    pixel_x >= std_logic_vector(to_unsigned(224,10)) and pixel_x < std_logic_vector(to_unsigned(256,10))
                        and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
                    char_addr <= "001110"; --N
                    line1 <= char_out;
                elsif 
                    pixel_x >= std_logic_vector(to_unsigned(256,10)) and pixel_x < std_logic_vector(to_unsigned(288,10))
                        and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
                    char_addr <= "001111"; --O
                    line1 <= char_out;
                elsif 
                    pixel_x >= std_logic_vector(to_unsigned(288,10)) and pixel_x < std_logic_vector(to_unsigned(320,10))
                        and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
                    char_addr <= "010010"; --R
                    line1 <= char_out;
                elsif 
                    pixel_x >= std_logic_vector(to_unsigned(320,10)) and pixel_x < std_logic_vector(to_unsigned(352,10))
                        and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
                    char_addr <= "001101"; --M
                    line1 <= char_out;
                elsif 
                    pixel_x >= std_logic_vector(to_unsigned(352,10)) and pixel_x < std_logic_vector(to_unsigned(384,10))
                        and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
                    char_addr <= "000001"; --A
                    line1 <= char_out;
                elsif 
                    pixel_x >= std_logic_vector(to_unsigned(384,10)) and pixel_x < std_logic_vector(to_unsigned(416,10))
                        and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
                    char_addr <= "001100"; --L
                    line1 <= char_out;
                -----------------second line------------------
                elsif 
                    pixel_x >= std_logic_vector(to_unsigned(192,10)) and pixel_x < std_logic_vector(to_unsigned(224,10))
                        and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
                    char_addr <= "010100"; --T
                    line2 <= char_out;
                elsif 
                    pixel_x >= std_logic_vector(to_unsigned(224,10)) and pixel_x < std_logic_vector(to_unsigned(256,10))
                        and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
                    char_addr <= "010010"; --R
                    line2 <= char_out;
                elsif 
                    pixel_x >= std_logic_vector(to_unsigned(256,10)) and pixel_x < std_logic_vector(to_unsigned(288,10))
                        and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
                    char_addr <= "000001"; --A
                    line2 <= char_out;
                elsif 
                    pixel_x >= std_logic_vector(to_unsigned(288,10)) and pixel_x < std_logic_vector(to_unsigned(320,10))
                        and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
                    char_addr <= "001001"; --I
                    line2 <= char_out;
                elsif 
                    pixel_x >= std_logic_vector(to_unsigned(320,10)) and pixel_x < std_logic_vector(to_unsigned(352,10))
                        and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
                    char_addr <= "001110"; --N
                    line2 <= char_out;
                elsif 
                    pixel_x >= std_logic_vector(to_unsigned(352,10)) and pixel_x < std_logic_vector(to_unsigned(384,10))
                        and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
                    char_addr <= "001001"; --I
                    line2 <= char_out;
                elsif 
                    pixel_x >= std_logic_vector(to_unsigned(384,10)) and pixel_x < std_logic_vector(to_unsigned(416,10))
                        and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
                    char_addr <= "001110"; --N
                    line2 <= char_out;
                elsif 
                    pixel_x >= std_logic_vector(to_unsigned(416,10)) and pixel_x < std_logic_vector(to_unsigned(448,10))
                        and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
                    char_addr <= "000111"; --G
                    line2 <= char_out;
                -----------------third line------------------
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(32,10)) and pixel_x < std_logic_vector(to_unsigned(64,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "010000"; --P
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(64,10)) and pixel_x < std_logic_vector(to_unsigned(96,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "010010"; --R
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(96,10)) and pixel_x < std_logic_vector(to_unsigned(128,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "000101"; --E
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(128,10)) and pixel_x < std_logic_vector(to_unsigned(160,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "010011"; --S
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(160,10)) and pixel_x < std_logic_vector(to_unsigned(192,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "010011"; --S
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(192,10)) and pixel_x < std_logic_vector(to_unsigned(224,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "100000"; --(blank)
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(224,10)) and pixel_x < std_logic_vector(to_unsigned(256,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "010000"; --P
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(256,10)) and pixel_x < std_logic_vector(to_unsigned(288,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "000010"; --B
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(288,10)) and pixel_x < std_logic_vector(to_unsigned(320,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "110010"; --2
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(320,10)) and pixel_x < std_logic_vector(to_unsigned(352,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "100000"; --(blank)
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(352,10)) and pixel_x < std_logic_vector(to_unsigned(384,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "010100"; --T
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(384,10)) and pixel_x < std_logic_vector(to_unsigned(416,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "001111"; --O
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(416,10)) and pixel_x < std_logic_vector(to_unsigned(448,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "100000"; --(blank)
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(448,10)) and pixel_x < std_logic_vector(to_unsigned(480,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "010011"; --S
                    line3 <= char_out;  
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(480,10)) and pixel_x < std_logic_vector(to_unsigned(512,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "010100"; --T
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(512,10)) and pixel_x < std_logic_vector(to_unsigned(544,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "000001"; --A
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(544,10)) and pixel_x < std_logic_vector(to_unsigned(576,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "010010"; --R
                    line3 <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(576,10)) and pixel_x < std_logic_vector(to_unsigned(608,10))
                        and pixel_y >= std_logic_vector(to_unsigned(448,10)) and pixel_y < std_logic_vector(to_unsigned(480,10)) then
                    char_addr <= "010100"; --T
                    line3 <= char_out;
                else 
                    line3 <= '0';
                end if;
            when others =>
                title <= '0';
                line1 <= '0';
                line2 <= '0';
                line3 <= '0';
        end case;
    end process select_gamemode;

    font_row    <= pixel_y(4 downto 2);
    font_col    <= pixel_x(4 downto 2);

    ---------------STATES---------------
    -- "00" main menu
    -- "01" normal
    -- "10" training
    -- "11" death
    ------------------------------------
    --------------------------mode select out-------------------------
    mode_out : process
    begin
        wait until falling_edge(exit_screen);
        if (mode_select = '1') then
            state_out <= "01";
        elsif (mode_select = '0') then
            state_out <= "10";
        else
            state_out <= "00";
        end if;
    end process mode_out;

    colour_out <=   yellow when title = '1' else

                    white when line1 = '1' and mode_select = '0' else
                    -- NORMAL selected
                    yellow when line1 = '1' and mode_select = '1' and counter > 0 and counter < 60 else
                    white when line1 = '1' and mode_select = '1' and counter > 60 and counter < 120 else

                    white when line2 = '1' and mode_select = '1' else
                    -- TRAINING selected
                    yellow when line2 = '1' and mode_select = '0' and counter > 0 and counter < 60 else
                    white when line2 = '1' and mode_select = '0' and counter > 60 and counter < 120 else

                    white when line3 = '1' else

                    black;
    
    colour_info(0)      <= colour_out(11 downto 8);
    colour_info(1)      <= colour_out(7 downto 4);
    colour_info(2)      <= colour_out(3 downto 0);
    
end architecture arc;
