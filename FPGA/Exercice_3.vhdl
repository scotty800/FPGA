IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registre4bits is
    port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        D : in STD_LOGIC_Vector(3 downto 0);
        Q : out STD_LOGIC_Vector(3 downto 0)
    );
end Registre4bits;

architecture Behavioral of Registre4bits is
    signal tmp : STD_LOGIC_Vector(3 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            tmp <= (others => '0')
        elsif rising_edge(clk) then
            tmp <= D
        end if;
    end process;

    Q <= tmp;
    end Behavioral;

