library IEEE;
use IEEE.std_logic_1164.all;

entity inverter is

	port(
		signal A : in std_logic;
		signal Y : out std_logic
		);
	
end entity inverter;

architecture struct of inverter is

begin

	Y <= not A after 2 ns;
	
end architecture struct;