Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM_LED is
    port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        LED : out STD_LOGIC
    );
end FSM_LED;

architecture Behavioral of FSM_LED is
    type etat_type is (S0, S1, S2);
    signal etat, etat_suivant : etat_type;

    signal led_clignote : STD_LOGIC := '0';
begin

    process(clk, reset)
    begin
        if reset = '1' then
            etat <= S0;
            led_clignote <= '0';
        elsif rising_edge(clk) then
            etat <= etat_suivant;
            if etat = S2 then
                led_clignote <= not led_clignote;
            end if;
        end if;
    end process;

    process(etat)
    begin
        case etat is
            when S0 =>
                etat_suivant <= S1;
            when S1 =>
                etat_suivant <= S2;
            when S2 =>
                etat_suivant <= S0;
        end case;
    end process;

    LED <= '1' when etat = S0 else
           '0' when etat = S1 else
           led_clignote;

end Behavioral;