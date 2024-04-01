library ieee;
use ieee.std_logic_1164.all;

entity game_simon is port(
	clock0 : in std_logic;
	clock1 : in std_logic;
	leds : out std_logic_vector(0 to 3) := "0000";
	play : out std_logic := '0';
	buttons : in std_logic_vector(0 to 3);
	reset : in std_logic
);
end entity game_simon;

architecture game_simon_architecture of game_simon is

	constant max_length_sequence : integer := 15;

	type sequence_type is array(0 to max_length_sequence - 1) of integer range 0 to 3;
	signal sequence : sequence_type;

	type states is (add_random, display, sequence_verification, done, game_over);
	signal state : states := add_random;

	signal length_sequence : integer range 0 to max_length_sequence := 0;
	signal counter_seq : integer range 0 to max_length_sequence-1 := 0;
	signal counter_display : integer range 0 to 31 := 0;

	signal random : integer range 0 to 3;

	signal new_user_command : boolean := true;

begin
	random_generator : process(clock0)
	begin
		if( rising_edge(clock0) ) then
			if( random = 3 ) then
				random <= 0;
			else
				random <= random + 1;
			end if;
		end if;
	end process random_generator;

	state_machine : process(clock1)
	variable user_selection : integer range 0 to 3;
	begin
		if( rising_edge(clock1) ) then
			case state is
				when add_random =>
					state <= display;
					sequence(length_sequence) <= random; --The random number is added to the end of the sequence
					length_sequence <= length_sequence + 1; --The size of the sequence is incremented
					play <= '0';

				when display =>
					leds <= "0000"; --All the LEDs are off if counter_display < 8
					if( counter_display > 7 ) then
						leds(sequence(counter_seq)) <= '1'; --The LED of the sequence at index counter_seq is on

						if( counter_display = 31 ) then --End of display of one LED of the sequence
							counter_display <= 0;
							if( counter_seq = length_sequence - 1) then --End of the sequence
								counter_seq <= 0;
								state <= sequence_verification;
							else --Need to display to following element of the sequence
								counter_seq <= counter_seq + 1;
							end if;
						else
							counter_display <= counter_display + 1;
						end if;
					else
						counter_display <= counter_display + 1;
					end if;

				when sequence_verification =>
					play <= '1';
					leds <= buttons; --Display of the LEDs when the player presses a button
					if( buttons = "0000" ) then --No button pressed by the player
						new_user_command <= true;
					elsif( new_user_command ) then --New signal send by the player
						new_user_command <= false;
						if( buttons(0) = '1' ) then user_selection := 0;
						elsif( buttons(1) = '1' ) then user_selection := 1;
						elsif( buttons(2) = '1' ) then user_selection := 2;
						elsif( buttons(3) = '1' ) then user_selection := 3;
						end if;  --Button signals interpretation

						if( user_selection = sequence(counter_seq) ) then --Verification of the chosen color
							if( counter_seq = length_sequence - 1 ) then --All the sequence is verified
								counter_seq <= 0;
								if( length_sequence = max_length_sequence ) then --We reached the maximum sequence length: game won
									state <= done;
								else --We add an element to the sequence
									state <= add_random;
								end if;
							else --The whole sequence isn't verified, we check the next color
								counter_seq <= counter_seq + 1;
							end if;
						else --The player is wrong
							counter_seq <= 0;
							state <= game_over;
						end if;
					end if;


				when game_over =>
					leds <= "1010"; --Arbitrary animation of the game over
					if( reset = '1' ) then
						state <= add_random;
						length_sequence <= 0;
						counter_seq <= 0;
					end if;

				when done =>
					leds <= "1111"; --Arbitrary animation of the game is won
					if( reset = '1' ) then
						state <= add_random;
						length_sequence <= 0;
						counter_seq <= 0;
					end if;

			end case;
		end if;
	end process state_machine;
end architecture game_simon_architecture;
