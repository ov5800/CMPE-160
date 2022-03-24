library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port(
	A	: in std_logic;
	B	: in std_logic;
	Cin 	: in std_logic;
	
	Sum	: out std_logic;
	Cout	: out std_logic );
end full_adder;
	
architecture df of full_adder is

	signal s_1, s_2, s_3 : std_logic:= '0';
begin

	Sum <= A xor B xor Cin;

	s_1 <= A and B;
  	s_2 <= A and Cin;
  	s_3 <= B and Cin;

	Cout <= s_1 or s_2 or s_3;

end;
	
	
architecture struct of full_adder is

	component xor3 is
		port ( A, B, C : in std_logic;
				Y		: out std_logic);
	end component;

	component and22 is
			port ( A, B : in std_logic;
					Y		: out std_logic);
		end component;

	component or33 is
			port ( A, B, C : in std_logic;
					Y		: out std_logic);
		end component;

	signal s_1, s_2, s_3 : std_logic:= '0';
	
begin
	xor3_instance1 : xor3 port map (A => A, B => B, C => Cin, Y => Sum);
  
  	and22_instance1 : and22 port map (A => A, B => B, Y => s_1); 
  	and22_instance2 : and22 port map (A => A, B => Cin, Y => s_2);  
  	and22_instance3 : and22 port map (A => B, B => Cin, Y => s_3);     
  
  	or33_instance1 : or33 port map (A => s_1, B => s_2, C => s_3, Y => Cout);
	
	
end;


architecture half_adder of full_adder is
	
	component hadder is
		port ( A, B : in std_logic;
				Sum, Cout		: out std_logic);
	end component;
	
	component or_gate is
		port ( A, B : in std_logic;
				Y		: out std_logic);
	end component;
	
	signal s1, s2, s3 : std_logic:= '0';
				
begin
		hadder_instance1 : hadder port map ( A => A, B => B, Sum => s1, Cout => s2 );
		hadder_instance2 : hadder port map ( A => s1, B => Cin, Sum => Sum, Cout => s3 );
		or_gate_instance1 : or_gate port map ( A => s3, B => s2, Y => Cout );
		
end;	
				
				
				
				
				
				
				
				
				