-- Seven Seg Display Code
entity BCD2SevenSeg is 
    port (  Din : in bit_vector(3 downto 0); 
            Dout : out bit_vector(7 downto 0));
end entity;

architecture arc1 of BCD2SevenSeg is 
    signal tmp : bit_vector(7 downto 0);
begin 
    tmp <=  "10011111" when Din = "0001" else -- 1
            "00100101" when Din = "0010" else -- 2
            "00001101" when Din = "0011" else -- 3
            "10011001" when Din = "0100" else -- 4
            "01001001" when Din = "0101" else -- 5 
            "01000001" when Din = "0110" else -- 6
            "00011111" when Din = "0111" else -- 7
            "00000001" when Din = "1000" else -- 8
            "00001001" when Din = "1001" else -- 9
            "00000011" when Din = "0000" else -- 0
            "11111111";

Dout <= tmp;

end architecture arc1;