library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity matrix_test is port(  

	-- clocks
	clock0 : in std_logic;
	clock1 : in std_logic;
	
	-- Inputs
	buttons : in std_logic_vector(0 to 3); -- up, right, down, left
	reset_button : in std_logic; --bouton reset

	-- outputs
	led_col_green : out std_logic_vector(4 downto 0);
   led_col_red : out std_logic_vector(4 downto 0);
   led_row : out std_logic_vector(6 downto 0);
	led_current_player : out std_logic_vector(1 downto 0); -- 0 player_red
	seven_segments: out std_logic_vector(1 downto 0)
	
);
end entity matrix_test;

architecture Behavioral of matrix_test is
	
	
	-- def nouv types
	type states is (PLAYER_TURN, BLINK_LED, CHECK_TRESORS, INCREASE_PLAYER, END_GAME, MOVE_UP,MOVE_RIGHT, MOVE_LEFT, MOVE_DOWN);
	type pos_array_4_row is array (0 to 3) of integer range -1 to 6;  -- pour les rows
	type pos_array_4_col is array (0 to 3) of integer range -1 to 4;   -- pour les col red/green
	type pos_array_4_bool is array (0 to 3) of boolean;
	type player_array_2 is array (0 to 1) of integer range 0 to 2;
	type player_array_2_row is array (0 to 1) of integer range 0 to 6;
	type player_array_2_col is array (0 to 1) of integer range 0 to 4;
	type array_counter is array (0 to 1) of integer range 0 to 2;
	
	-- declaration signaux
	signal state: states := PLAYER_TURN;
	signal tresors_pos_row : pos_array_4_row := (3, 6, 4 , 3);  -- rouge1, vert1, rouge2, vert2
	signal tresors_pos_col : pos_array_4_col := (1, 1, 2, 2); --idem
	signal counters : array_counter := (0,0);
	
	
	signal pos_row_players : player_array_2_row := (6, 0);
   signal pos_col_players : player_array_2_col := (0, 4);
	
	signal fast_counter : integer range 0 to 6; -- pour display la matrice
	signal new_user_command : boolean := true;
	signal color_blink_players : player_array_2 := (1, 2);
	signal case_color : integer range 0 to 1; -- 0 pour red et 1 pour green
	signal current_player: integer range 0 to 1 := 0;
	signal count : integer range 0 to 4 := 0;
	signal number_blink : integer range 0 to 3;
	
	     
begin

	DISPLAY: process(clock0)
	
	
	begin
		if rising_edge(clock0) then 
		
			if(counters(0) = 1) then
				seven_segments(0) <= '1';
			else
				seven_segments(0) <= '0';
			end if;
			
			if(counters(1) = 1) then
				seven_segments(1) <= '1';
			else
				seven_segments(1) <= '0';
			end if;
		
			led_current_player(current_player) <= '0'; -- A TESTER
			--led_current_player(1-current_player) <= '1'; -- A FAIRE EN HARDWARE AVEC UN NOT
			
			
			-- balayage lignes                                                                
			led_row <= (others => '0') ;
			led_col_red <= (others => '1') ;
			led_col_green <= (others => '1') ;
		
			if(fast_counter = pos_row_players(current_player)) then
				led_row(fast_counter) <= '1' ;
				
				if(color_blink_players(current_player) = 1) then
					led_col_red(pos_col_players(current_player)) <= '0' ;
				
				elsif(color_blink_players(current_player) = 2) then
					led_col_green(pos_col_players(current_player)) <= '0' ;
				end if;
			end if;
		
			-- affiche autre player immobile
			if(fast_counter = pos_row_players(1 - current_player)) then
				led_row(fast_counter) <= '1' ;
				if(current_player = 0) then
					led_col_green(pos_col_players(1 - current_player)) <= '0';
				elsif(current_player = 1) then
					led_col_red(pos_col_players(1 - current_player)) <= '0';
				end if;
			end if;
		
	    	
			-- affichage des tresors découverts en 2 tours sinon trop long
			--first_it <= true;
			--tresors_display : for k in 0 to 1 loop
				--if(fast_counter = tresors_pos_row(k+add) and tresors_discover(k+add) and (tresors_pos_col(k+add) /= pos_col_players(current_player) or tresors_pos_row(k+add) /= pos_row_players(current_player)) and (tresors_pos_col(k+add) /= pos_col_players(1-current_player) or tresors_pos_row(k+add) /= pos_row_players(1-current_player))) then
					--if(first_it) then
						--led_row(fast_counter) <= '1' ;
						--first_it <= false;
					--end if;
					--led_col_green(tresors_pos_col(k+add)) <= '0';
					--led_col_red(tresors_pos_col(k+add)) <= '0' ;
				--end if;	
			--end loop tresors_display;
		
			--if(add = 0) then
				--add <= 2;
			--else
				--add <= 0;
			--end if;
			
			-- initialisation pour la suite du balayage
			if (fast_counter = 6) then 
				fast_counter <= 0 ; 
			else 
				fast_counter <= fast_counter + 1  ;
	
			end if;
		end if; 	
   end process DISPLAY;
 
 
	MAIN: process(clock1)
	
	
	begin
		if(rising_edge(clock1)) then
				
			case state is

				when PLAYER_TURN =>
 				
					 if( buttons = "1111" ) then --No button pressed by the player
						 new_user_command <= true;
					
					 elsif( new_user_command ) then --New signal send by the player
						 new_user_command <= false;
						
						 if(reset_button = '0') then -- if(reset_button = '0')
							state <= END_GAME;
						 elsif (buttons(0) = '0') then --up
							state <= MOVE_UP;
						 elsif (buttons(1) = '0') then --right
							state <= MOVE_RIGHT;
						 elsif (buttons(2) = '0') then --down
							state <= MOVE_DOWN;
						 else --left
							state <= MOVE_LEFT;
							 
						 end if;
					  else
						state <= PLAYER_TURN;
					  end if;
					
				when MOVE_UP =>
					if(pos_row_players(current_player) = 0) then
								pos_row_players(current_player) <= 6;		
					else
						pos_row_players(current_player) <= pos_row_players(current_player) - 1;
					end if;
					state <= CHECK_TRESORS;
				
				when MOVE_RIGHT =>
					if(pos_col_players(current_player) = 4) then
								pos_col_players(current_player) <= 0;		
					else
						pos_col_players(current_player) <= pos_col_players(current_player) + 1;
					end if;
					state <= CHECK_TRESORS;
				
					
				when MOVE_DOWN =>
					if(pos_row_players(current_player) = 6) then
								pos_row_players(current_player) <= 0;		
					else
						pos_row_players(current_player) <= pos_row_players(current_player) + 1;
					end if;
					state <= CHECK_TRESORS;
				
				
				when MOVE_LEFT =>
					if(pos_col_players(current_player) = 0) then
								pos_col_players(current_player) <= 4;		
					else
						pos_col_players(current_player) <= pos_col_players(current_player) - 1;
					end if;
					state <= CHECK_TRESORS;
					
					
				when CHECK_TRESORS =>
					case_color <= 1-current_player;
					if(tresors_pos_row(current_player) = pos_row_players(current_player) and tresors_pos_col(current_player) = pos_col_players(current_player) ) then
						case_color <= current_player;
						tresors_pos_row(current_player) <= -1;
						tresors_pos_col(current_player) <= -1;
						state <= INCREASE_PLAYER;
						
						
					elsif(tresors_pos_row(current_player+2) = pos_row_players(current_player) and tresors_pos_col(current_player+2) = pos_col_players(current_player)) then
							case_color <= current_player;
							tresors_pos_row(current_player+2) <= -1;
							tresors_pos_col(current_player+2) <= -1;
							state <= INCREASE_PLAYER;
					
					elsif(tresors_pos_row(case_color) = pos_row_players(current_player) and tresors_pos_col(case_color) = pos_col_players(current_player))then
							 state <= BLINK_LED;
					elsif(tresors_pos_row(case_color+2) = pos_row_players(current_player) and tresors_pos_col(case_color+2) = pos_col_players(current_player)) then
							 state <= BLINK_LED;
					else
							current_player <= 1 - current_player; 
							state <= PLAYER_TURN;
					end if;
					
					
				when BLINK_LED =>
					
					if (count < 3 and number_blink < 3) then
						if(case_color = 0) then
							color_blink_players(current_player) <= 1;
						else
							color_blink_players(current_player) <= 2;
						end if;
						count <= count + 1;
						state <= BLINK_LED;
						
						
					elsif (count < 5 and number_blink < 3) then
						color_blink_players(current_player) <= 0;
						count <= count + 1;
						state <= BLINK_LED;
						
					elsif(number_blink < 3) then
						count <= 0;
						number_blink <= number_blink + 1;
						state <= BLINK_LED;
					else
						color_blink_players(current_player) <= current_player+1;
						number_blink <=  0;
						count <= 0;
						current_player <= 1 - current_player;
						state <= PLAYER_TURN;
						
					end if;
					
			
			when INCREASE_PLAYER =>
				
				if(counters(current_player) = 1) then
				  state <= END_GAME;
				else
					counters(current_player) <= counters(current_player) + 1;
					state <= BLINK_LED;
				end if;
			
			When END_GAME =>
				-- allumer quelques leds pour montrer la fin du jeu
				
				tresors_pos_row <= (3, 6, 4 , 3);  -- rouge1, vert1, rouge2, vert2
				tresors_pos_col <= (1, 1, 2, 2); --idem
	
				new_user_command <= true;
				color_blink_players <= (1, 2);
	
				current_player <= 0;
				pos_row_players <= (6, 0);
				pos_col_players <= (0, 4);
				counters <= (0,0);
				state <= PLAYER_TURN;

			end case; 
		end if;
	end process MAIN;
	
end architecture Behavioral;