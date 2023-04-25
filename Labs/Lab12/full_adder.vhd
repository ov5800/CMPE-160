-- Oliver Vinneras
-- Creates a full adder

library ieee;
use ieee.std_logic_1164.all;

-- full adder entity
entity full_adder is
	port(
	signal A : in std_logic;
	signal B : in std_logic;
	signal Cin : in std_logic;
	
	signal Sum : out std_logic;
	signal Cout : out std_logic 
	);
end full_adder;
	
-- dataflow architecture for the full adder
architecture df of full_adder is

begin
	-- outputs with delay
	Sum <= A xor B xor Cin after 8 ns;
	Cout <= (A and B) or (A and Cin) or (B and Cin) after 8 ns;

end architecture df;
