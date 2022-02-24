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
-- CREATED		"Wed Feb 23 19:21:59 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Ex7_FlipFlop IS 
	PORT
	(
		D :  IN  STD_LOGIC;
		Clk :  IN  STD_LOGIC;
		Q2 :  OUT  STD_LOGIC;
		Qn3 :  OUT  STD_LOGIC
	);
END Ex7_FlipFlop;

ARCHITECTURE bdf_type OF Ex7_FlipFlop IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;


BEGIN 
Q2 <= SYNTHESIZED_WIRE_5;
Qn3 <= SYNTHESIZED_WIRE_6;



SYNTHESIZED_WIRE_17 <= NOT(SYNTHESIZED_WIRE_0 AND SYNTHESIZED_WIRE_1);


SYNTHESIZED_WIRE_0 <= NOT(SYNTHESIZED_WIRE_2 AND SYNTHESIZED_WIRE_17);


SYNTHESIZED_WIRE_16 <= NOT(Clk);



SYNTHESIZED_WIRE_6 <= NOT(SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_5);


SYNTHESIZED_WIRE_5 <= NOT(SYNTHESIZED_WIRE_6 AND SYNTHESIZED_WIRE_7);


SYNTHESIZED_WIRE_1 <= NOT(SYNTHESIZED_WIRE_18 AND D);


SYNTHESIZED_WIRE_2 <= NOT(SYNTHESIZED_WIRE_9 AND SYNTHESIZED_WIRE_18);


SYNTHESIZED_WIRE_18 <= NOT(Clk);



SYNTHESIZED_WIRE_9 <= NOT(D);



SYNTHESIZED_WIRE_7 <= NOT(SYNTHESIZED_WIRE_19 AND SYNTHESIZED_WIRE_17);


SYNTHESIZED_WIRE_4 <= NOT(SYNTHESIZED_WIRE_13 AND SYNTHESIZED_WIRE_19);


SYNTHESIZED_WIRE_13 <= NOT(SYNTHESIZED_WIRE_17);



SYNTHESIZED_WIRE_19 <= NOT(SYNTHESIZED_WIRE_16);



END bdf_type;