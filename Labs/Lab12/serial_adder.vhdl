library ieee;
use ieee.std_logic_1164.all;



entity serial_adder is
	port (
		signal in_a : in std_logic_vector( 3 downto 0 );
		signal control : in std_logic_vector( 1 downto 0 );
		signal clk : in std_logic;
		signal clear_dp : std_logic;
		signal in_b : in std_logic_vector( 3 downto 0 );

		signal sum : out std_logic_vector( 3 downto 0 );
		signal carry : out std_logic
	);
	
end entity serial_adder;

architecture struct of serial_adder is

	component DM74LS194A is
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
	end component DM74LS194A;

	component dflipflop is
		port (
			signal D : in std_logic;
			signal clk : in std_logic;
			signal clear : in std_logic;
			signal enable : in std_logic;
			signal Q : out std_logic
		);
	end component;

	component full_adder is
		port(
			signal A : in std_logic;
			signal B : in std_logic;
			signal Cin : in std_logic;
			
			signal Sum : out std_logic;
			signal Cout : out std_logic 
		);
	end component;

	component and_gate is
		port (
			signal A : in std_logic;
			signal B : in std_logic;
			signal Y : out std_logic
		);
	end component and_gate;

	component inverter is
		port (
			signal A : in std_logic;
			signal Y : out std_logic
		);
	end component inverter;	

	signal sSignal1, sSignal3, sSignal4, sSignal5, sSignal6, sSIgnal7 : std_logic := '0';
	signal sSignal2 : std_logic_vector( 3 downto 0 ) := "0000";

begin
	regA : DM74LS194A port map (
		a => in_a(3),
		b => in_a(2),
		c => in_a(1),
		d => in_a(0),
		sL => '0',
		sR => sSignal1,
		s1 => control(1),
		s0 => control(0),
		clk => clk,
		clear => clear_dp,
		qa => sSignal2(3),
		qb => sSignal2(2),
		qc => sSignal2(1),
		qd => sSignal2(0)
	);
	sum <= sSignal2;

	regB : DM74LS194A port map (
		a => in_b(3),
		b => in_b(2),
		c => in_b(1),
		d => in_b(0),
		sL => '0',
		sR => '0',
		s1 => control(1),
		s0 => control(0),
		clk => clk,
		clear => clear_dp,
		qd => sSignal3
	);

	full_adder1 : full_adder port map (
		A => sSignal2(0),
		B => sSignal3,
		Cin => sSignal4,
		Sum => sSignal1,
		Cout => sSignal5
	);

	inverter1 : inverter port map (
		A => control(0),
		Y => sSignal6
	);

	and_gate1 : and_gate port map (
		A => control(1),
		B => sSignal6,
		Y => sSignal7
	);

	dff : dflipflop port map (
		D => sSignal5,
		clk => clk,
		clear => clear_dp,
		enable => ssignal7,
		Q => sSignal4
	);
	
end architecture struct;