library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LED_MATRIX is
    port (
        clk : in std_logic;
        led_col_green : out std_logic_vector(4 downto 0);  -- Signals for LED rows
        led_col_red : out std_logic_vector(4 downto 0);
        led_row : out std_logic_vector(6 downto 0);   -- Signals for LED columns
		  button_left : in std_logic;
		  button_right : in std_logic;
		  button_down : in std_logic;
        button_up : in std_logic
    );
end entity LED_MATRIX;

architecture Behavioral of LED_MATRIX is
    signal led_row_signal : std_logic_vector(6 downto 0) := "1000000";
    signal led_col_red_signal : std_logic_vector(4 downto 0) := "01111";
    signal led_col_green_signal : std_logic_vector(4 downto 0) := "01111";
	 signal prev_button_state : std_logic := '1';
    --signal prev_button_up_state : std_logic := '1';  -- Estado previo del botón
	 --signal prev_button_down_state : std_logic := '1';
	 --signal prev_button_right_state : std_logic := '1';
	 --signal prev_button_left_state : std_logic := '1';

begin
    -- Process to control LED matrix
    LED_PROCESS: process(clk)
	 --constant rows : integer := 6;
	 --constant cols : integer := 4;
	 variable i : integer := 6;
	 variable j : integer := 4;
    begin
        if rising_edge(clk) then
            -- Actualizar señales de LED
            led_row <= led_row_signal;
            led_col_red <= led_col_red_signal;
            led_col_green <= led_col_green_signal;
            
            -- Detectar flanco descendente del botón
            if button_up = '0' and prev_button_state = '1' then
                -- Realizar la detección
                led_row_signal(i) <= '0';
                led_row_signal(i-1) <= '1';
                i := i-1;
            --end if;
				
				elsif button_down = '0' and prev_button_state = '1' then
                -- Realizar la detección
                led_row_signal(i) <= '0';
                led_row_signal(i+1) <= '1';
                i := i+1;
					 
				--end if;
				
				elsif button_left = '0' and prev_button_state = '1' then
					led_col_red_signal(j) <= '0';
					led_col_red_signal(j-1) <= '1';
					j := j-1;
				--end if;
				
				elsif button_right = '0' and prev_button_state = '1' then
					led_col_red_signal(j) <= '0';
					led_col_red_signal(j+1) <= '1';
					j := j+1;
				end if;
				
            
            -- Actualizar el estado previo del botón
            prev_button_state <= button_up or button_left or button_down or button_right;
				--prev_button_state <= button_down;
				--prev_button_state <= button_right;
				--prev_button_state <= button_left;
				
  -- I HAVE ALREADY DONE THE MOVEMENT, WE HAVE TO ADD THE TREASURE
        end if;
    end process LED_PROCESS;

end architecture Behavioral;
