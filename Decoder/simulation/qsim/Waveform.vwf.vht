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
-- Generated on "11/23/2018 00:25:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          HammingDecoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY HammingDecoder_vhd_vec_tst IS
END HammingDecoder_vhd_vec_tst;
ARCHITECTURE HammingDecoder_arch OF HammingDecoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL error : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL m : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL sels : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL x : STD_LOGIC_VECTOR(14 DOWNTO 0);
COMPONENT HammingDecoder
	PORT (
	error : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	m : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
	sels : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
	x : IN STD_LOGIC_VECTOR(14 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : HammingDecoder
	PORT MAP (
-- list connections between master ports and signals
	error => error,
	m => m,
	sels => sels,
	x => x
	);
-- x[14]
t_prcs_x_14: PROCESS
BEGIN
	x(14) <= '1';
WAIT;
END PROCESS t_prcs_x_14;
-- x[13]
t_prcs_x_13: PROCESS
BEGIN
	x(13) <= '0';
WAIT;
END PROCESS t_prcs_x_13;
-- x[12]
t_prcs_x_12: PROCESS
BEGIN
	x(12) <= '1';
WAIT;
END PROCESS t_prcs_x_12;
-- x[11]
t_prcs_x_11: PROCESS
BEGIN
	x(11) <= '1';
WAIT;
END PROCESS t_prcs_x_11;
-- x[10]
t_prcs_x_10: PROCESS
BEGIN
	x(10) <= '1';
WAIT;
END PROCESS t_prcs_x_10;
-- x[9]
t_prcs_x_9: PROCESS
BEGIN
	x(9) <= '0';
WAIT;
END PROCESS t_prcs_x_9;
-- x[8]
t_prcs_x_8: PROCESS
BEGIN
	x(8) <= '1';
WAIT;
END PROCESS t_prcs_x_8;
-- x[7]
t_prcs_x_7: PROCESS
BEGIN
	x(7) <= '1';
WAIT;
END PROCESS t_prcs_x_7;
-- x[6]
t_prcs_x_6: PROCESS
BEGIN
	x(6) <= '1';
WAIT;
END PROCESS t_prcs_x_6;
-- x[5]
t_prcs_x_5: PROCESS
BEGIN
	x(5) <= '1';
WAIT;
END PROCESS t_prcs_x_5;
-- x[4]
t_prcs_x_4: PROCESS
BEGIN
	x(4) <= '0';
WAIT;
END PROCESS t_prcs_x_4;
-- x[3]
t_prcs_x_3: PROCESS
BEGIN
	x(3) <= '0';
WAIT;
END PROCESS t_prcs_x_3;
-- x[2]
t_prcs_x_2: PROCESS
BEGIN
	x(2) <= '1';
WAIT;
END PROCESS t_prcs_x_2;
-- x[1]
t_prcs_x_1: PROCESS
BEGIN
	x(1) <= '0';
WAIT;
END PROCESS t_prcs_x_1;
-- x[0]
t_prcs_x_0: PROCESS
BEGIN
	x(0) <= '1';
WAIT;
END PROCESS t_prcs_x_0;
END HammingDecoder_arch;
