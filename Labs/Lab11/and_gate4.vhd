-- Creates a 4 input AND
library ieee;
use ieee.std_logic_1164.all;

entity and_gate4 is

	Port(
		signal A, B, C, D : in std_logic;
		signal Y : out std_logic);
		
end;

architecture and4 of and_gate4 is

	begin

		Y <= A AND B AND C AND D after 7 ns;

end;