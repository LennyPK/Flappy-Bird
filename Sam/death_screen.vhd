library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.rgb_functions.all;

entity death_screen is
    port (
        clk, restart                        : in std_logic;
        pixel_x, pixel_y                    : in std_logic_vector(9 downto 0);
        state                               : in std_logic_vector(1 downto 0);
        state_out                           : out std_logic_vector(1 downto 0);
        -- death_init                          : out std_logic;
        colour_info                         : out rgb_array
    );
end entity death_screen;

architecture arc of death_screen is
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
    signal death_msg            : std_logic;

    signal char_out             : std_logic;
    signal colour_out           : std_logic_vector(11 downto 0);
    signal yellow               : std_logic_vector(11 downto 0) := "111011100001";
    signal white                : std_logic_vector(11 downto 0) := "111111111111";
    signal black                : std_logic_vector(11 downto 0) := "000000000000";
    signal red                  : std_logic_vector(11 downto 0) := "111100000000";

begin
    char : char_rom 
        port map (character_address => char_addr, font_row => font_row, font_col => font_col, clock => clk, rom_mux_output => char_out);

    player_death : process
    begin
        wait until (rising_edge(clk));
        ---------------STATES---------------
        -- "00" main menu
        -- "01" normal
        -- "10" training
        -- "11" death
        ------------------------------------
        case state is
            when "11" =>
                -----------death message-----------
                if
                    pixel_x >= std_logic_vector(to_unsigned(192,10)) and pixel_x < std_logic_vector(to_unsigned(224,10))
                        and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then
                    char_addr <= "000111"; --G
                    death_msg <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(224,10)) and pixel_x < std_logic_vector(to_unsigned(256,10))
                        and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then
                    char_addr <= "000001"; --A
                    death_msg <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(256,10)) and pixel_x < std_logic_vector(to_unsigned(288,10))
                        and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then
                    char_addr <= "001101"; --M
                    death_msg <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(288,10)) and pixel_x < std_logic_vector(to_unsigned(320,10))
                        and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then
                    char_addr <= "000101"; --E
                    death_msg <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(320,10)) and pixel_x < std_logic_vector(to_unsigned(352,10))
                        and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then
                    char_addr <= "001111"; --O
                    death_msg <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(352,10)) and pixel_x < std_logic_vector(to_unsigned(384,10))
                        and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then
                    char_addr <= "010110"; --V
                    death_msg <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(384,10)) and pixel_x < std_logic_vector(to_unsigned(416,10))
                        and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then
                    char_addr <= "000101"; --E
                    death_msg <= char_out;
                elsif
                    pixel_x >= std_logic_vector(to_unsigned(416,10)) and pixel_x < std_logic_vector(to_unsigned(448,10))
                        and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then
                    char_addr <= "010010"; --R
                    death_msg <= char_out;
                else
                    death_msg <= '0';
                end if;
            when others =>
                death_msg <= '0';
        end case;
    end process player_death;

    font_row    <= pixel_y(4 downto 2);
    font_col    <= pixel_x(4 downto 2);

    ---------------STATES---------------
    -- "00" main menu
    -- "01" normal
    -- "10" training
    -- "11" death
    ------------------------------------
    --------------------------mode select out-------------------------
    mode_out : process (restart)
    begin
        if (restart = '1') then
            state_out <= "00";
        else
            state_out <= "11";
        end if;
    end process mode_out;

    colour_out <=   white when death_msg = '1' else
                    red;

    colour_info(0)      <= colour_out(11 downto 8);
    colour_info(1)      <= colour_out(7 downto 4);
    colour_info(2)      <= colour_out(3 downto 0);

end architecture;