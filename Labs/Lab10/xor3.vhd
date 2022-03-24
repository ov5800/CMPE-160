library ieee;
use ieee.std_logic_1164.all;

entity xor3 is
	port(	A, B, C	: in std_logic;
		Y 	: out std_logic);
end xor3;

architecture df of xor3 is
begin
	Y <= A xor B xor C after 4 ns;
end;
