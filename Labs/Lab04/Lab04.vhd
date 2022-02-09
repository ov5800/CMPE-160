-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Wed Feb 02 19:03:40 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Lab04 IS 
	PORT
	(
		C :  IN  STD_LOGIC;
		N0 :  IN  STD_LOGIC;
		N1 :  IN  STD_LOGIC;
		W :  OUT  STD_LOGIC;
		X :  OUT  STD_LOGIC;
		Y :  OUT  STD_LOGIC;
		Z :  OUT  STD_LOGIC
	);
END Lab04;

ARCHITECTURE bdf_type OF Lab04 IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 
Z <= N0;



SYNTHESIZED_WIRE_2 <= NOT(SYNTHESIZED_WIRE_0 AND SYNTHESIZED_WIRE_1 AND N1);


SYNTHESIZED_WIRE_0 <= NOT(C);



SYNTHESIZED_WIRE_1 <= NOT(N0);



SYNTHESIZED_WIRE_6 <= NOT(SYNTHESIZED_WIRE_2);



W <= SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4;


X <= SYNTHESIZED_WIRE_5 OR SYNTHESIZED_WIRE_6;


SYNTHESIZED_WIRE_4 <= C AND N1;


SYNTHESIZED_WIRE_3 <= N0 AND N1;


SYNTHESIZED_WIRE_5 <= C AND N0;


Y <= N1 AND C;


END bdf_type;