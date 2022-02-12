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

LIBRARY work;

ENTITY Ex6_Full IS 
	PORT
	(
		CIN :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		A3 :  IN  STD_LOGIC;
		B3 :  IN  STD_LOGIC;
		A4 :  IN  STD_LOGIC;
		B4 :  IN  STD_LOGIC;
		SUM1 :  OUT  STD_LOGIC;
		SUM2 :  OUT  STD_LOGIC;
		SUM3 :  OUT  STD_LOGIC;
		SUM4 :  OUT  STD_LOGIC;
		COUT :  OUT  STD_LOGIC
	);
END Ex6_Full;

ARCHITECTURE bdf_type OF Ex6_Full IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT \74283_0\
	PORT(CIN : IN STD_LOGIC;
		 A1 : IN STD_LOGIC;
		 A2 : IN STD_LOGIC;
		 B2 : IN STD_LOGIC;
		 A3 : IN STD_LOGIC;
		 A4 : IN STD_LOGIC;
		 B4 : IN STD_LOGIC;
		 B1 : IN STD_LOGIC;
		 B3 : IN STD_LOGIC;
		 SUM4 : OUT STD_LOGIC;
		 COUT : OUT STD_LOGIC;
		 SUM1 : OUT STD_LOGIC;
		 SUM2 : OUT STD_LOGIC;
		 SUM3 : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \74283_0\: COMPONENT IS true;
ATTRIBUTE noopt OF \74283_0\: COMPONENT IS true;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



b2v_inst : 74283_0
PORT MAP(CIN => CIN,
		 A1 => A1,
		 A2 => A2,
		 B2 => SYNTHESIZED_WIRE_0,
		 A3 => A3,
		 A4 => A4,
		 B4 => SYNTHESIZED_WIRE_1,
		 B1 => SYNTHESIZED_WIRE_2,
		 B3 => SYNTHESIZED_WIRE_3,
		 SUM4 => SUM4,
		 COUT => COUT,
		 SUM1 => SUM1,
		 SUM2 => SUM2,
		 SUM3 => SUM3);


SYNTHESIZED_WIRE_0 <= CIN XOR B2;


SYNTHESIZED_WIRE_2 <= CIN XOR B1;


SYNTHESIZED_WIRE_3 <= CIN XOR B3;


SYNTHESIZED_WIRE_1 <= CIN XOR B4;


END bdf_type;