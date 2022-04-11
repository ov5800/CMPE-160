library ieee;
use ieee.std_logic_1164.all;

entity control_unit is
	port (
		signal start : in std_logic;
		signal clk : in std_logic;
		signal clear_sm : in std_logic;

		signal control_output : out std_logic_vector
	);
	
end entity control_unit;

architecture behave of control_unit is

	type state is (IDLE, RESET, LOAD, S1, S2, S3, S4, HOLD);

	signal current_state : state;
	signal next_state : state;
begin

	process ( clk, clear ) is begin
		if clear_sm = '0' then
			-- clear
		elsif rising_edge(clk) then
			if start = '0' then
				current_state <= IDLE;
				next_state <= RESET;
			end if;
		end if;
	end process;



end architecture behave;