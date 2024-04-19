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
    signal row_state : std_logic := '0';  -- Variable de estado para alternar entre las dos configuraciones de fila

begin
    -- Process to control LED matrix
    LED_PROCESS: process(clk)
    begin
        if rising_edge(clk) then
            -- Encender los LEDs en diagonal (fila 1, columna 3 y fila 2, columna 4)
            if row_state = '0' then
                led_row <= "0000001";  -- Start with the rightmost LED (led_row[0])
                led_col <= "00010";  -- Columns 3 and 4 are enabled
            else
                led_row <= "0000010";
                led_col <= "00001";
            end if;
            
            -- Alternar el estado de la fila para la próxima iteración
            row_state <= not row_state;
        end if;
    end process LED_PROCESS;

end architecture Behavioral;
