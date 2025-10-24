library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Compteur is 
    port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        count : out INTEGER range 0 to 9 
    );
end Compteur;

architecture comportement of Compteur is
    signal tmp : INTEGER range 0 to 9 := 0;
begin
    process(clk, reset)
    begin
        if reset = '1' then
            tmp <= 0;
        elsif rising_edge(clk) then
            if tmp = 9 then
                tmp <= 0;
            else
                tmp <= tmp + 1;
            end if;
        end if;
    end process;

    count <= tmp;
end comportement;
