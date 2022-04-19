library ieee;
use ieee.std_logic_1164.all;

entity myxwenable is
	port( g1, s0 : in std_logic;
			i : in std_logic_vector( 1 downto 0 );
			g1out, y, i1out : out std_logic);
end;

architecture struct of myxwenable is

	signal I1and, I0and, notS0 : std_logic;

begin
	i1out <= i1and;
	and0 : entity work.my_and
	port map ( a => i(0), b => g1, c => notS0, f => I0and );

	and1 : entity work.my_and
	port map ( a => i(1), b => g1, c => s0, f => i1and );

	not0 : entity work.my_or
	port map ( a => s0, f => nots0 );

	g1out <= g1;

	or0 : entity work.my_or
	port map( a => I0and, b => i1and, f => y );
	
end architecture struct;