library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ramses is port(
	clock0 : in std_logic;
	clock1 : in std_logic;
	buttons : in std_logic_vector(0 to 3) := "000";
	first_7segment : out std_logic_vector(3 downto 0);
	second_7segment : out std_logic_vector(3 downto 0);
	rows_matrix : out std_logic_vector(0 to 6);
	cols_matrix : out std_logic_vector(0 to 4);
	reset : in std.logic;
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
	signal counter1 : integer range 0 to 2 := 0;
	signal counter2 : integer range 0 to 2 := 0;
	
begin
	main: process(clock1)
		begin
			if(rising_edge(clock1)) then
				case state is
					when INIT => 
					tresors_pos <= ((2,1,0),
									(2,3,0), 
									(5,4,1), 
									(3,4,1));
					state <= PLAYER1;

					when PLAYER1 =>
					if(UP = 0)

	
	reset: process(clock1)
		begin
			if(reset = 1) then
				state <= INIT
	
	
end architecture Behavioral;