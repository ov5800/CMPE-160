library ieee;
use ieee.std_logic_1164.all;

entity tb_myxwenable is
	
end entity tb_myxwenable;

architecture struct of tb_myxwenable is

begin

tb_proc : process is
	variable expected_out : std_logic;
begin
	for i in 0 to 15 loop
	( g1, s0, i(1), i(0) ) <= std_logic_vector( to_unsigned( i, 4 ));
	wait for 100 ns;
	if g1 = '1' then
		if s0 = '1' then
			expected_out := i(0);
		else
			expected_out := i(1);
		end if;
	else
		expected_out := '0';
	end if;
	assert ( expected_out = y )
		report "error" & std_logic'image(y) severity error;
	end loop;
	end process;
end architecture struct;