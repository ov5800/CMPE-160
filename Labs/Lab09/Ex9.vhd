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
-- CREATED		"Wed Mar 16 19:59:04 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Ex9 IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		Z :  OUT  STD_LOGIC
	);
END Ex9;

ARCHITECTURE bdf_type OF Ex9 IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_14 <= '1';



PROCESS(CLK,RST,SYNTHESIZED_WIRE_14)
BEGIN
IF (RST = '0') THEN
	SYNTHESIZED_WIRE_18 <= '0';
ELSIF (SYNTHESIZED_WIRE_14 = '0') THEN
	SYNTHESIZED_WIRE_18 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	SYNTHESIZED_WIRE_18 <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


PROCESS(CLK,RST,SYNTHESIZED_WIRE_14)
BEGIN
IF (RST = '0') THEN
	SYNTHESIZED_WIRE_15 <= '0';
ELSIF (SYNTHESIZED_WIRE_14 = '0') THEN
	SYNTHESIZED_WIRE_15 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	SYNTHESIZED_WIRE_15 <= SYNTHESIZED_WIRE_2;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_17 <= NOT(B);



SYNTHESIZED_WIRE_0 <= SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_10 <= NOT(A);



SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_15 AND SYNTHESIZED_WIRE_16 AND A AND SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_8 <= A AND B;


SYNTHESIZED_WIRE_13 <= NOT(SYNTHESIZED_WIRE_15);



SYNTHESIZED_WIRE_16 <= NOT(SYNTHESIZED_WIRE_18);



SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_8 OR SYNTHESIZED_WIRE_9;


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_18 AND SYNTHESIZED_WIRE_10 AND SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_9 <= SYNTHESIZED_WIRE_16 AND A AND SYNTHESIZED_WIRE_15;



Z <= SYNTHESIZED_WIRE_18 AND SYNTHESIZED_WIRE_13;


END bdf_type;