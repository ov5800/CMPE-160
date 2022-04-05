library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port(
	A	: in std_logic;
	B	: in std_logic;
	Cin 	: in std_logic;
	
	Sum	: out std_logic;
	Cout	: out std_logic );
end full_adder;
	
architecture df of full_adder is

begin

	Sum <= A xor B xor Cin after 8 ns;
	Cout <= (A and B) or (A and Cin) or (B and Cin) after 8 ns;

end architecture df;
