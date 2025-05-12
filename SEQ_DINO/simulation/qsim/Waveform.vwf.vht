-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/14/2023 18:31:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SEQ_DINO
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SEQ_DINO_vhd_vec_tst IS
END SEQ_DINO_vhd_vec_tst;
ARCHITECTURE SEQ_DINO_arch OF SEQ_DINO_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL cont1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL flag1 : STD_LOGIC;
SIGNAL limDO : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL limUP : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL push : STD_LOGIC;
SIGNAL VSYNC : STD_LOGIC;
COMPONENT SEQ_DINO
	PORT (
	cont1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	flag1 : OUT STD_LOGIC;
	limDO : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	limUP : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	push : IN STD_LOGIC;
	VSYNC : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SEQ_DINO
	PORT MAP (
-- list connections between master ports and signals
	cont1 => cont1,
	flag1 => flag1,
	limDO => limDO,
	limUP => limUP,
	push => push,
	VSYNC => VSYNC
	);

-- push
t_prcs_push: PROCESS
BEGIN
	push <= '1';
	WAIT FOR 30000 ps;
	push <= '0';
	WAIT FOR 10000 ps;
	push <= '1';
WAIT;
END PROCESS t_prcs_push;

-- VSYNC
t_prcs_VSYNC: PROCESS
BEGIN
LOOP
	VSYNC <= '0';
	WAIT FOR 5000 ps;
	VSYNC <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_VSYNC;
END SEQ_DINO_arch;
