library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity port_ou is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        C : out STD_LOGIC
    );
end port_ou;

architecture comportement of port_ou is
begin 
    C <= A or  B;
end comportement;