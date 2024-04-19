library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LED_MATRIX is
    port (
        clk : in std_logic;
        led_col : out std_logic_vector(4 downto 0);  -- Signals for LED rows
        led_row : out std_logic_vector(6 downto 0);   -- Signals for LED columns
		  button_up : in std_logic
    );
end entity LED_MATRIX;

architecture Behavioral of LED_MATRIX is
    shared variable i : integer := 6;  -- Variable de estado para alternar entre las dos configuraciones de fila

begin
    -- Process to control LED matrix
    LED_PROCESS: process(clk)
    begin
        if rising_edge(clk) then
            -- Encender los LEDs en diagonal (fila 1, columna 3 y fila 2, columna 4)
                led_row <= "1000000";  -- Start with the rightmost LED (led_row[0])
                led_col <= "01111";  -- Columns 3 and 4 are enabled
					 if button_up = '1' then
						led_row(i) <= '0';
						led_row(i-1) <= '1';
						i := i-1;
					end if;
        end if;
    end process LED_PROCESS;

end architecture Behavioral;
