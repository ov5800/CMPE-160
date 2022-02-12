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
-- CREATED		"Fri Feb 11 19:04:38 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY altera;
USE altera.maxplus2.all; 

LIBRARY work;

ENTITY 74283_0 IS 
PORT 
( 
	CIN	:	IN	 STD_LOGIC;
	A1	:	IN	 STD_LOGIC;
	A2	:	IN	 STD_LOGIC;
	B2	:	IN	 STD_LOGIC;
	A3	:	IN	 STD_LOGIC;
	A4	:	IN	 STD_LOGIC;
	B4	:	IN	 STD_LOGIC;
	B1	:	IN	 STD_LOGIC;
	B3	:	IN	 STD_LOGIC;
	SUM4	:	OUT	 STD_LOGIC;
	COUT	:	OUT	 STD_LOGIC;
	SUM1	:	OUT	 STD_LOGIC;
	SUM2	:	OUT	 STD_LOGIC;
	SUM3	:	OUT	 STD_LOGIC
); 
END 74283_0;

ARCHITECTURE bdf_type OF 74283_0 IS 
BEGIN 

-- instantiate macrofunction 

b2v_inst : 74283
PORT MAP(CIN => CIN,
		 A1 => A1,
		 A2 => A2,
		 B2 => B2,
		 A3 => A3,
		 A4 => A4,
		 B4 => B4,
		 B1 => B1,
		 B3 => B3,
		 SUM4 => SUM4,
		 COUT => COUT,
		 SUM1 => SUM1,
		 SUM2 => SUM2,
		 SUM3 => SUM3);

END bdf_type; 