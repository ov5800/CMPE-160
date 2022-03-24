library ieee;
use ieee.std_logic_1164.all;

entity or33 is
	port(	A, B, C	: in std_logic;
		Y 	: out std_logic);
end or33;

architecture df of or33 is
begin
	Y <= A or B or C after 3 ns;
end;