library IEEE;
use IEEE.std_logic_1164.all;

entity DM74LS194A is
	port (
		signal clear : in std_logic;
		signal s1, s0 : in std_logic;
		signal clk : in std_logic;
		signal sL, sR : in std_logic;
		signal a, b, c, d : in std_logic;

		qa : out std_logic;
		qb : out std_logic;
		qc : out std_logic;
		qd : out std_logic
		);
end entity DM74LS194A;


architecture behave of DM74LS194A is

	signal mode : std_logic_vector( 1 downto 0 );
	signal QAI, QBI, QCI, QDI : std_logic;

begin
	mode <= s1 & s0;

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

	qa <= QAI after 22 ns;
	qb <= QBI after 22 ns;
	qc <= QCI after 22 ns;
	qd <= QDI after 22 ns;
	
end architecture behave;