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
-- CREATED		"Wed Mar 02 20:56:21 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Ex8Tri IS 
	PORT
	(
		SIN :  IN  STD_LOGIC;
		SL :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		QA :  OUT  STD_LOGIC;
		QB :  OUT  STD_LOGIC;
		QC :  OUT  STD_LOGIC;
		QD :  OUT  STD_LOGIC
	);
END Ex8Tri;

ARCHITECTURE bdf_type OF Ex8Tri IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	DFF_inst15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	DFF_inst16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	DFF_inst17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;


BEGIN 
QA <= DFF_inst15;
QB <= DFF_inst16;
QC <= DFF_inst17;
SYNTHESIZED_WIRE_17 <= '1';



PROCESS(SIN,SYNTHESIZED_WIRE_0)
BEGIN
if (SYNTHESIZED_WIRE_0 = '1') THEN
	SYNTHESIZED_WIRE_16 <= SIN;
ELSE
	SYNTHESIZED_WIRE_16 <= 'Z';
END IF;
END PROCESS;


PROCESS(A,SL)
BEGIN
if (SL = '1') THEN
	SYNTHESIZED_WIRE_16 <= A;
ELSE
	SYNTHESIZED_WIRE_16 <= 'Z';
END IF;
END PROCESS;


SYNTHESIZED_WIRE_13 <= NOT(SL);



SYNTHESIZED_WIRE_14 <= NOT(SL);



SYNTHESIZED_WIRE_15 <= NOT(SL);



PROCESS(CLK,RST,SYNTHESIZED_WIRE_17)
BEGIN
IF (RST = '0') THEN
	DFF_inst15 <= '0';
ELSIF (SYNTHESIZED_WIRE_17 = '0') THEN
	DFF_inst15 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst15 <= SYNTHESIZED_WIRE_16;
END IF;
END PROCESS;


PROCESS(CLK,RST,SYNTHESIZED_WIRE_17)
BEGIN
IF (RST = '0') THEN
	DFF_inst16 <= '0';
ELSIF (SYNTHESIZED_WIRE_17 = '0') THEN
	DFF_inst16 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst16 <= SYNTHESIZED_WIRE_18;
END IF;
END PROCESS;


PROCESS(CLK,RST,SYNTHESIZED_WIRE_17)
BEGIN
IF (RST = '0') THEN
	DFF_inst17 <= '0';
ELSIF (SYNTHESIZED_WIRE_17 = '0') THEN
	DFF_inst17 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst17 <= SYNTHESIZED_WIRE_19;
END IF;
END PROCESS;


PROCESS(CLK,RST,SYNTHESIZED_WIRE_17)
BEGIN
IF (RST = '0') THEN
	QD <= '0';
ELSIF (SYNTHESIZED_WIRE_17 = '0') THEN
	QD <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	QD <= SYNTHESIZED_WIRE_20;
END IF;
END PROCESS;



PROCESS(B,SL)
BEGIN
if (SL = '1') THEN
	SYNTHESIZED_WIRE_18 <= B;
ELSE
	SYNTHESIZED_WIRE_18 <= 'Z';
END IF;
END PROCESS;


SYNTHESIZED_WIRE_0 <= NOT(SL);



PROCESS(DFF_inst15,SYNTHESIZED_WIRE_13)
BEGIN
if (SYNTHESIZED_WIRE_13 = '1') THEN
	SYNTHESIZED_WIRE_18 <= DFF_inst15;
ELSE
	SYNTHESIZED_WIRE_18 <= 'Z';
END IF;
END PROCESS;


PROCESS(C,SL)
BEGIN
if (SL = '1') THEN
	SYNTHESIZED_WIRE_19 <= C;
ELSE
	SYNTHESIZED_WIRE_19 <= 'Z';
END IF;
END PROCESS;


PROCESS(DFF_inst16,SYNTHESIZED_WIRE_14)
BEGIN
if (SYNTHESIZED_WIRE_14 = '1') THEN
	SYNTHESIZED_WIRE_19 <= DFF_inst16;
ELSE
	SYNTHESIZED_WIRE_19 <= 'Z';
END IF;
END PROCESS;


PROCESS(D,SL)
BEGIN
if (SL = '1') THEN
	SYNTHESIZED_WIRE_20 <= D;
ELSE
	SYNTHESIZED_WIRE_20 <= 'Z';
END IF;
END PROCESS;


PROCESS(DFF_inst17,SYNTHESIZED_WIRE_15)
BEGIN
if (SYNTHESIZED_WIRE_15 = '1') THEN
	SYNTHESIZED_WIRE_20 <= DFF_inst17;
ELSE
	SYNTHESIZED_WIRE_20 <= 'Z';
END IF;
END PROCESS;


END bdf_type;