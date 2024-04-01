library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Player_Movement is
    Port (
        btn_up, btn_down, btn_left, btn_right : in std_logic; -- Entradas de los botones
        player_x, player_y : out integer range 0 to 7 -- Salidas para la posición del jugador (suponiendo una matriz de 8x8)
    );
end entity Player_Movement;

architecture Behavioral of Player_Movement is
    signal x_pos, y_pos : integer range 0 to 7 := 0; -- Posición inicial del jugador

begin
    -- Proceso para manejar el movimiento del jugador
    process(btn_up, btn_down, btn_left, btn_right)
    begin
        -- Mover el jugador hacia arriba si el botón correspondiente está presionado y no está en el borde superior
        if btn_up = '1' and y_pos > 0 then
            y_pos <= y_pos - 1;
        end if;
        
        -- Mover el jugador hacia abajo si el botón correspondiente está presionado y no está en el borde inferior
        if btn_down = '1' and y_pos < 7 then
            y_pos <= y_pos + 1;
        end if;
        
        -- Mover el jugador hacia la izquierda si el botón correspondiente está presionado y no está en el borde izquierdo
        if btn_left = '1' and x_pos > 0 then
            x_pos <= x_pos - 1;
        end if;
        
        -- Mover el jugador hacia la derecha si el botón correspondiente está presionado y no está en el borde derecho
        if btn_right = '1' and x_pos < 7 then
            x_pos <= x_pos + 1;
        end if;
    end process;

    -- Asignar la posición del jugador a las salidas
    player_x <= x_pos;
    player_y <= y_pos;

end architecture Behavioral;
