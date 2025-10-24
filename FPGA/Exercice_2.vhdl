library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity halfadd is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        C : out STD_LOGIC;
        S : out STD_LOGIC
    );
end halfadd;

architecture comportement of halfadd is
begin
    S <= A XOR B;
    C <= A AND B;
end comportement;
