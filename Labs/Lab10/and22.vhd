library ieee;
use ieee.std_logic_1164.all;

entity and22 is
	port(	A, B	: in std_logic;
		Y 	: out std_logic);
end and22;

architecture df of and22 is
begin
	Y <= A and B after 2 ns;
end;