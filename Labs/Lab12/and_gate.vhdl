library IEEE;
use IEEE.std_logic_1164.all;

entity and_gate is

	port(
		signal A, B : in std_logic;
		signal Y : out std_logic
		);
	
end entity and_gate;

architecture struct of and_gate is

begin
	
	Y <= A and B after 4 ns;

end architecture struct;