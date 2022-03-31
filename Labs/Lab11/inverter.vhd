-- Creates an inverter
library ieee;
use ieee.std_logic_1164.all;

entity inverter is

	Port(
		signal A : in std_logic;
		signal Y : out std_logic);
			
end;

architecture not1 of inverter is

	begin

		Y <= NOT A after 4 ns;

end;