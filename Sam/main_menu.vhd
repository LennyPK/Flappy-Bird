library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity main_menu is
    port (
        clk, mode_select, select_confirm    : in std_logic;
        pixel_x, pixel_y                    : in std_logic_vector(9 downto 0);
        state                               : in std_logic_vector(1 downto 0);
        menu_init                           : out std_logic;
        red, green, blue                    : out std_logic_vector(3 downto 0)
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
    signal title, line1, line2  : std_logic;
    signal select1, select2     : std_logic;
    signal flash_colour         : std_logic_vector(11 downto 0);

    signal char_out             : std_logic;
    signal colour_out           : std_logic_vector(11 downto 0);


begin
    char : char_rom 
        port map (character_address => char_addr, font_row => font_row, font_col => font_col, clock => clk, rom_mux_output => char_out);

    select1     <=  '1' when mode_select = '1' else '0';
    select2     <=  '1' when mode_select = '0' else '0';
    
    select_gamemode : process
    begin
        if (clk = '1') then
            flash_colour <= "111111111111";
        else
            flash_colour <= "111111110110";
        end if;
        wait until (rising_edge(clk));
        -----------------title line------------------
        if 
        --     pixel_x >= std_logic_vector(to_unsigned(144,10)) and pixel_x < std_logic_vector(to_unsigned(176,10))
        --         and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
        --     char_addr <= "000110"; --F
        --     title <= char_out;
        -- -- elsif 
        --     pixel_x >= std_logic_vector(to_unsigned(176,10)) and pixel_x < std_logic_vector(to_unsigned(208,10))
        --         and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
        --     char_addr <= "001100"; --L
        --     title <= char_out;
        -- elsif
        --     pixel_x >= std_logic_vector(to_unsigned(208,10)) and pixel_x < std_logic_vector(to_unsigned(240,10))
        --         and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
        --     char_addr <= "000001"; --A
        --     title <= char_out;
        -- elsif
        --     pixel_x >= std_logic_vector(to_unsigned(240,10)) and pixel_x < std_logic_vector(to_unsigned(272,10))
        --         and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
        --     char_addr <= "010000"; --P
        --     title <= char_out;
        -- elsif
        --     pixel_x >= std_logic_vector(to_unsigned(272,10)) and pixel_x < std_logic_vector(to_unsigned(304,10))
        --         and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
        --     char_addr <= "010000"; --P
        --     title <= char_out;
        -- elsif
        --     pixel_x >= std_logic_vector(to_unsigned(304,10)) and pixel_x < std_logic_vector(to_unsigned(336,10))
        --         and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
        --     char_addr <= "011001"; --Y
        --     title <= char_out;
        -- elsif
        --     pixel_x >= std_logic_vector(to_unsigned(336,10)) and pixel_x < std_logic_vector(to_unsigned(368,10))
        --         and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
        --     char_addr <= "100000"; --_
        --     title <= char_out;
        -- elsif
        --     pixel_x >= std_logic_vector(to_unsigned(368,10)) and pixel_x < std_logic_vector(to_unsigned(400,10))
        --         and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
        --     char_addr <= "000010"; --B
        --     title <= char_out;
        -- elsif
        --     pixel_x >= std_logic_vector(to_unsigned(400,10)) and pixel_x < std_logic_vector(to_unsigned(432,10))
        --         and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
        --     char_addr <= "001001"; --I
        --     title <= char_out;
        -- elsif
        --     pixel_x >= std_logic_vector(to_unsigned(432,10)) and pixel_x < std_logic_vector(to_unsigned(464,10))
        --         and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
        --     char_addr <= "010010"; --R
        --     title <= char_out;
        -- elsif
            pixel_x >= std_logic_vector(to_unsigned(464,10)) and pixel_x < std_logic_vector(to_unsigned(496,10))
                and pixel_y >= std_logic_vector(to_unsigned(64,10)) and pixel_y < std_logic_vector(to_unsigned(96,10)) then
            char_addr <= "000100"; --D
            title <= char_out;
        -----------------first line------------------
        elsif 
            pixel_x >= std_logic_vector(to_unsigned(224,10)) and pixel_x < std_logic_vector(to_unsigned(256,10))
                and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
            char_addr <= "001110" ; --N
            line1 <= char_out;
        elsif 
            pixel_x >= std_logic_vector(to_unsigned(256,10)) and pixel_x < std_logic_vector(to_unsigned(288,10))
                and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
            char_addr <= "001111" ; --O
            line1 <= char_out;
        elsif 
            pixel_x >= std_logic_vector(to_unsigned(288,10)) and pixel_x < std_logic_vector(to_unsigned(320,10))
                and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
            char_addr <= "010010" ; --R
            line1 <= char_out;
        elsif 
            pixel_x >= std_logic_vector(to_unsigned(320,10)) and pixel_x < std_logic_vector(to_unsigned(352,10))
                and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
            char_addr <= "001101" ; --M
            line1 <= char_out;
        elsif 
            pixel_x >= std_logic_vector(to_unsigned(352,10)) and pixel_x < std_logic_vector(to_unsigned(384,10))
                and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
            char_addr <= "000001" ; --A
            line1 <= char_out;
        elsif 
            pixel_x >= std_logic_vector(to_unsigned(384,10)) and pixel_x < std_logic_vector(to_unsigned(416,10))
                and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
            char_addr <= "001100" ; --L
            line1 <= char_out;
        -----------------second line------------------
        elsif 
            pixel_x >= std_logic_vector(to_unsigned(192,10)) and pixel_x < std_logic_vector(to_unsigned(224,10))
                and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
            char_addr <= "010100" ; --T
            line2 <= char_out;
        elsif 
            pixel_x >= std_logic_vector(to_unsigned(224,10)) and pixel_x < std_logic_vector(to_unsigned(256,10))
                and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
            char_addr <= "010010" ; --R
            line2 <= char_out;
        elsif 
            pixel_x >= std_logic_vector(to_unsigned(256,10)) and pixel_x < std_logic_vector(to_unsigned(288,10))
                and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
            char_addr <= "000001" ; --A
            line2 <= char_out;
        elsif 
            pixel_x >= std_logic_vector(to_unsigned(288,10)) and pixel_x < std_logic_vector(to_unsigned(320,10))
                and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
            char_addr <= "001001" ; --I
            line2 <= char_out;
        elsif 
            pixel_x >= std_logic_vector(to_unsigned(320,10)) and pixel_x < std_logic_vector(to_unsigned(352,10))
                and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
            char_addr <= "001110" ; --N
            line2 <= char_out;
        elsif 
            pixel_x >= std_logic_vector(to_unsigned(352,10)) and pixel_x < std_logic_vector(to_unsigned(384,10))
                and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
            char_addr <= "001001" ; --I
            line2 <= char_out;
        elsif 
            pixel_x >= std_logic_vector(to_unsigned(384,10)) and pixel_x < std_logic_vector(to_unsigned(416,10))
                and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
            char_addr <= "001110" ; --N
            line2 <= char_out;
        elsif 
            pixel_x >= std_logic_vector(to_unsigned(416,10)) and pixel_x < std_logic_vector(to_unsigned(448,10))
                and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
            char_addr <= "000111" ; --G
            line2 <= char_out;
        else 
            line2 <= '0';
        end if;
    end process select_gamemode;

    font_row    <= pixel_y(4 downto 2);
    font_col    <= pixel_x(4 downto 2);
    
    exit_menu : process (select_confirm)
    begin
        if (mode_select = '1' and select_confirm = '0') then
            menu_init <= '1';
        elsif (mode_select = '0' and select_confirm = '0') then
            menu_init <= '0';
        else
            menu_init <= '0';
        end if;
    end process exit_menu;
    
    colour_out <=   "111111110010" when title = '1' else
                    "111111111111" when line1 = '1' and select1 = '0' else
                    flash_colour when line1 = '1' and select1 = '1' else
                    "111111111111" when line2 = '1' and select2 = '0' else
                    flash_colour when line2 = '1' and select2 = '1' else
                    "000000000000";
    
    red     <= colour_out(11 downto 8);
    green   <= colour_out(7 downto 4);
    blue    <= colour_out(3 downto 0);
    
end architecture arc;
