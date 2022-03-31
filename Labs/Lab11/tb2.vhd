library ieee;
use ieee.std_logic_1164.all;

entity tb2 is
end tb2;

architecture behavior of tb2 is

	component DM74LS153
		port ( 
				A, B, G1, G2 : in std_logic;
				C1, C2 : in std_logic_vector( 3 downto 0 );
				Y1, Y2 : out std_logic
				);
	end component;
		
		
	for UUT1 : DM74LS153 use entity work.DM74LS153(df);
	for UUT2 : DM74LS153 use entity work.DM74LS153(behv);
	for UUT3 : DM74LS153 use entity work.DM74LS153(struct);

	
	signal sG, sA, sB : std_logic := '0';
	signal sC1, sC2 : std_logic_vector( 3 downto 0 ) := "0000";
	signal sY1, sY2, sY3, sY4, sY5, sY6 : std_logic := '0';
	
begin
	
	UUT1 : DM74LS153 port map( A => sA, B => sB, G1 => sG, G2 => sG, C1 => sC1, C2 => sC2, Y1 => sY1, Y2 => sY2 );
	UUT2 : DM74LS153 port map( A => sA, B => sB, G1 => sG, G2 => sG, C1 => sC1, C2 => sC2, Y1 => sY3, Y2 => sY4 );
	UUT3 : DM74LS153 port map( A => sA, B => sB, G1 => sG, G2 => sG, C1 => sC1, C2 => sC2, Y1 => sY5, Y2 => sY6 );
	
	process
	begin
		sG <= '0';
		sB <= '0';
		sA <= '0';
		sC1 <= "1010";
		sC2 <= "1010";
		wait for 100 ns;
		sB <= '0';
		sA <= '1';
		wait for 100 ns;
		sB <= '1';
		sA <= '0';
		wait for 100 ns;
		sB <= '1';
		sA <= '1';
		wait for 100 ns;
		
		
		sB <= '0';
		sA <= '0';
		sC1 <= "0101";
		sC2 <= "0101";
		wait for 100 ns;
		sB <= '0';
		sA <= '1';
		wait for 100 ns;
		sB <= '1';
		sA <= '0';
		wait for 100 ns;
		sB <= '1';
		sA <= '1';
		wait for 100 ns;		
		
	end process;
	
	
	
end architecture behavior;