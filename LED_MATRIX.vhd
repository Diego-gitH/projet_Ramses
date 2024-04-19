library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LED_MATRIX is
    port (
        clk : in std_logic;
        led_col : out std_logic_vector(4 downto 0);  -- Signals for LED rows
        led_row : out std_logic_vector(6 downto 0)   -- Signals for LED columns
    );
end entity LED_MATRIX;

architecture Behavioral of LED_MATRIX is
    signal row_state : std_logic := '0';  -- Variable d'état pour alterner entre les 2 configurations de lignes
                                            
begin
    -- Process to control LED matrix
    LED_PROCESS: process(clk)
    begin
        if rising_edge(clk) then
            -- Allumer les led en diagonale (ligne 1, colonne 2 et ligne 2, colonne 1)
            if row_state = '0' then
                led_row <= "0000001";  -- led_row est un tableau ou chaque bit correspond à une ligne avec le 1er bit = row7
                led_col <= "00010";  -- Column 2 is enabled
            else
                led_row <= "0000010";
                led_col <= "00001";
            end if;
            
            -- On alterne l'état de la ligne pour la prochaine itération
            row_state <= not row_state;
        end if;
    end process LED_PROCESS;

end architecture Behavioral;
