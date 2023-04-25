-- Oliver Vinneras
-- Creates a 4 input AND gate

library IEEE;
use IEEE.std_logic_1164.all;

-- entity declaration
entity and_gate is
	-- declares input and output signals
	port(
		signal A, B : in std_logic;
		signal Y : out std_logic
		);
	
end entity and_gate;

-- architecture for the gate
architecture struct of and_gate is

begin
	-- output with delay
	Y <= A and B after 4 ns;

end architecture struct;