-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"
-- CREATED		"Wed Feb 09 22:50:38 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Ex6_single IS 
	PORT
	(
		Cin :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		Cout :  OUT  STD_LOGIC;
		Sum :  OUT  STD_LOGIC
	);
END Ex6_single;

ARCHITECTURE bdf_type OF Ex6_single IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_0 <= A XOR B;


Sum <= SYNTHESIZED_WIRE_0 XOR Cin;


SYNTHESIZED_WIRE_2 <= Cin AND B;


SYNTHESIZED_WIRE_1 <= B AND A;


SYNTHESIZED_WIRE_4 <= A AND Cin;


SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


Cout <= SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4;


END bdf_type;