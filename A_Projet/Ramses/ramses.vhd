library ieee;
use ieee.std_logic_1164.all;
<<<<<<< Updated upstream
use ieee.numeric_std.all;

entity ramses is port(
	-- clocks
	clock0 : in std_logic;
	clock1 : in std_logic; -- Un clock c'est pour verifier les inputs chaque fois et l'autre c'est pour la partie sequentiel
	
	-- Inputs
	buttons : in std_logic_vector(0 to 3) := "0000"; -- Ici il y avais 3 zeros, on doit avoir 4 car on doit compter le bit 0.
	-- bit0: UP, bit1 right, bit2: down, bit3: left
	reset : in std.logic; --Juste un bouton reset

	-- Position outputs
	first_7segment : out std_logic_vector(3 downto 0); -- Ici c'est le display du points pour chaque joueur
	second_7segment : out std_logic_vector(3 downto 0);
	rows_matrix : out std_logic_vector(0 to 6); -- These are the signals to turn on the matrix leds right?
	cols_matrix : out std_logic_vector(0 to 4);
	player1_wins : out std_logic;
	player2_wins : out std_logic
);
end entity ramses;

architecture Behavioral of ramses is
	constant ROWS : integer := 7;
	constant COLS : integer := 5;
	type pos_color_4 is array (0 to 3) of
		 std_logic_vector(0 to 2);
	type states is (INIT, PLAYER1, INCREASE_PLAYER1);
	signal state: states := INIT;
	signal tresors_pos : pos_color_4;
	signal pos_row_1 : integer range 0 to 6 := 0;
	signal pos_row_2 : integer range 0 to 6 := 0;
	signal pos_col_1 : integer range 0 to 4 := 0;
	signal pos_col_2 : integer range 0 to 4 := 0;
	signal counter1 : integer range 0 to 2 := 0;
	signal counter2 : integer range 0 to 2 := 0;
	
begin
	main: process(clock1)
		begin
			if(rising_edge(clock1)) then
				case state is
					when INIT => 

					tresors_pos <= (("010","001","000", "0"), -- valeur au pif à remplacer par des valeurs aléatoires par la suite
									("010","011","000", "0"), 
									("101","100","001", "0"), 
									("011","100","001", "0"));
					
					state <= PLAYER1;


					when PLAYER1 =>
						if() -- si plusieurs bouton sont pressés
							state <= PLAYER1

						if(buttons(0) = 1) then    -- if UP 
							if(pos_row_1 >= 6)
								state <= PLAYER1

							else
								if() then -- couleur assignée led (pos_row_1, pos_col_1 ) != 1 (!= couleur du joueur 1)
									-- éteindre led position player 1
								pos_row_1 <= pos_row_1 + 1
								state <= MOVEMENT

						if(buttons(1) = 1) then
							if(pos_col_1 >= 4)
								state <= PLAYER

							else
								if() then -- couleur assignée led (pos_row_1, pos_col_1 ) != 1 (!= couleur du joueur 1)
								for i in 0 to 3
									-- éteindre led position player 1
								pos_col_1 <= pos_col_1 + 1
								state <= MOVEMENT

						-- ce sera la meme chose pour down 	and right -> comment faire un fonction qui prend des aruments?
						 
					
					when MOVEMENT =>
						-- led (pos_row_1, pos_col_1 ) clignote 2fois de sa couleur assignée
						-- led pos player_1 s'allume selon couleur player 1 constament 

						if() then -- couleur assignée led = 1 (= couleur du joueur 1)
							state <= INCREASE_PLAYER1
						else
							state <= PLAYER1 -- à implémenter par la suite avec player2
							

					when INCREASE_PLAYER1 =>
						counter_1 <= counter_1 + 1
						
							if(tresor_pos(0))
								treso_pos(0, 3) := "1"
							
						
						end loop
						if(counter1 = 2) then
							state <= END_GAME
					
					when END_GAME =>
							-- faire clignoter toutes les led de la couleur du gagnant (jusqu'à ce que l'on reset) ou reset automatiquement apres 10 sec ?
										

	
	reset: process(clock1)
		begin
			if(reset = 1) then
				state <= INIT
				// les compteurs et les pos sont bien remis à 0 ???
	
	
end architecture Behavioral;

function <function_name> (
        <parameter1_name> : <parameter1_type> := <default_value>;
        <parameter2_name> : <parameter2_type> := <default_value>;
                                    ... ) return <return_type> is
    <constant_or_variable_declaration>
begin
    <code_performed_by_the_function>
    return <value>
end function;

=======
entity ramses is
    port (
        led   : out std_logic;   -- LED de salida
		  led1   : out std_logic
    );
end entity ramses;

architecture Behavioral of ramses is
begin
    -- Asigna un valor constante de '1' (encendido) a la LED
    led <= '1';
	 led1 <= '1';
end architecture Behavioral;
>>>>>>> Stashed changes
