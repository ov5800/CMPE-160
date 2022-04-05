library ieee;
use ieee.std_logic_1164.all;

entity Q1 is
	port ( signal A, C, D, E, F : in std_logic;
		signal L : out std_logic);
end;


architecture df1 of Q1 is
	signal B, H, K, G, I, J : std_logic;

begin
	B <= not A;
	H <= B and C and D;
	G <= not F;
	I <= E or G;
	J <= not I;
	K <= H xor J;
	L <= not K;
end architecture df1;

architecture df2 of Q1 is
begin
	L <= ( ( (not A) and C and D) xor ( not (E or (not F)) ) );
end architecture df2;