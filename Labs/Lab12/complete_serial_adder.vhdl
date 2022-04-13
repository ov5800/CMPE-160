library ieee;
use ieee.std_logic_1164.all;

entity complete_serial_adder is
	port (
		signal start : in std_logic;
		signal clk : in std_logic;
		signal clear_sm : in std_logic;
		signal inA, inB : in std_logic_vector( 3 downto 0 );

		signal ready : out std_logic;
		signal cout : out std_logic;
		signal sum : out std_logic_vector( 3 downto 0 )
	);
end entity complete_serial_adder;

architecture struct of complete_serial_adder is

	component control_unit is
		port (
			signal start : in std_logic;
			signal clk : in std_logic;
			signal clear_sm : in std_logic;
			signal control_output : out std_logic_vector( 3 downto 0 )
		);
	end component control_unit;

begin
	
end architecture struct;