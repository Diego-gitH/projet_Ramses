library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pianoTiles is
    port(
      clk0 : in std_logic;
		clk1 : in std_logic;
      buttons : in std_logic_vector(0 to 4);
		first_7segment : out std_logic_vector(3 downto 0) ; 
 		second_7segment : out std_logic_vector(3 downto 0) ;
      rows_matrix     : out std_logic_vector(0 to 6); 
		cols_matrix     : out std_logic_vector(0 to 4) 
    );
end entity pianoTiles;

architecture Behavioral of pianoTiles is

    constant ROWS : integer := 7;
    constant COLS : integer := 5;

    type led_matrix_t is array (0 to ROWS-1) of std_logic_vector(0 to COLS-1);
	 type states is (START, COMPARE, CORRECT) ; 
	 
	 
    signal random : integer range 0 to 4 ;
	 
	 signal counter1 : unsigned(3 downto 0) := "0000";
	 signal counter10 : unsigned(3 downto 0) := "0000";
	 
	 signal fast_counter : integer range 0 to ROWS-1 := 0;
    
   signal led_matrix_value : led_matrix_t ; 
	signal state : states := START ;  
	signal buttons_values : std_logic_vector(0 to COLS-1) ; 
	

begin
	
    main: process(clk1)
	 begin
	  if rising_edge(clk1) then
	  
		case state is 
			when START =>
			 
				led_matrix_value <=	(
										('0','1','1','1','1'),
										('1','0','1','1','1'),
										('1','1','0','1','1'),
										('1','1','1','0','1'),
										('1','1','1','1','0'),
										('1','1','1','0','1'),
										('1','1','0','1','1')
										);
				
				counter1 <= "0000" ; 
				counter10 <= "0000" ; 
				state <= COMPARE ;
	
			when COMPARE =>
			
              -- Check if the button press is correct
              if(buttons = led_matrix_value(ROWS-1)) then
						state <= CORRECT ;
              else
                  state <= START ; 
				  end if;  
						  
         when CORRECT =>    
				
				led_matrix_value(0) <= (others => '1') ; 
				led_matrix_value(0)(random) <= '0' ; 
				led_matrix_value(1 to 6) <= led_matrix_value(0 to 5);
				
				 --compteur 
				counter1 <= counter1 + 1;
				if (counter1 = "1001") then
					counter1 <= "0000" ; 
					counter10 <= counter10 + 1 ; 
				elsif (counter10 = "1001") then
					counter10 <= "0000" ; 
				end if ;
	
            state <= COMPARE ; 
			
			end case ; 	
	 end if ; 		 
	end process main;		
				
	random_generator : process(clk0) 
	 begin 
		if( rising_edge(clk0)) then
		 if buttons_values = "11111" then --si l'utilisateur n'a pas appuyé ça incrémente, sinon ça retient sa valeur.
			if( random = 4 ) then 
				random <= 0;
			else
				random <= random + 1;
			end if;
		  end if ;
     end if;
	 end process random_generator;
	
	
	
  refresh : process(clk0)
  begin
   if rising_edge(clk0) then 
	   -- actualisation matrice
		rows_matrix <= (others => '0') ; 
		rows_matrix(fast_counter) <= '1' ; 
		
		cols_matrix <= led_matrix_value(fast_counter) ;
		
		--actualisation boutons
		buttons_values <= buttons ; 
		
		--actualisation decodeur
		      first_7segment <= std_logic_vector(counter1) ;
				second_7segment <= std_logic_vector(counter10) ;
		
		if (fast_counter = 6) then 
			fast_counter <= 0 ; 
		else 
			fast_counter <= fast_counter + 1  ;
	
		end if;
	end if ; 	
  end process refresh ; 
  
end architecture Behavioral;