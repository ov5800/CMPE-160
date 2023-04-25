-- Oliver Vinneras
-- Creates a DM74LS194A chip

library IEEE;
use IEEE.std_logic_1164.all;

-- chip entity
entity DM74LS194A is
	port (
		signal clear : in std_logic;
		signal s1, s0 : in std_logic;
		signal clk : in std_logic;
		signal sL, sR : in std_logic;
		signal a, b, c, d : in std_logic;

		signal qa : out std_logic;
		signal qb : out std_logic;
		signal qc : out std_logic;
		signal qd : out std_logic
		);
end entity DM74LS194A;

-- structural architecture for the chip
architecture struct of DM74LS194A is

	-- internal signals
	signal mode : std_logic_vector( 1 downto 0 );
	signal QAI, QBI, QCI, QDI : std_logic := '0';

begin
	mode <= s1 & s0;

	-- active low clear
	process ( clk, clear ) is begin
		if clear = '0' then
			QAI <= '0';
			QBI <= '0'; 
			QCI <= '0';
			QDI <= '0';
		elsif rising_edge(clk) then
			case mode is
				when "11" => 
					QAI <= a; 
					QBI <= b; 
					QCI <= c;
					QDI <= d;
				when "01" => 
					QAI <= sR;
					QBI <= QAI;
					QCI <= QBI;
					QDI <= QCI;
				when "10" => 
					QAI <= QBI;
					QBI <= QCI;
					QCI <= QDI;
					QDI <= sL;
				when others =>
					QAI <= QAI;
					QBI <= QBI;
					QCI <= QCI;
					QDI <= QDI;
			end case;
		end if;
	end process;
	-- outputs with delay
	qa <= QAI after 22 ns;
	qb <= QBI after 22 ns;
	qc <= QCI after 22 ns;
	qd <= QDI after 22 ns;
	
end architecture struct;