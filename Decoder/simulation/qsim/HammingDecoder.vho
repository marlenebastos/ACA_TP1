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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/23/2018 00:37:57"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	HammingDecoder IS
    PORT (
	x : IN std_logic_vector(14 DOWNTO 0);
	m : OUT std_logic_vector(10 DOWNTO 0);
	error : OUT std_logic_vector(3 DOWNTO 0);
	sels : OUT std_logic_vector(10 DOWNTO 0)
	);
END HammingDecoder;

ARCHITECTURE structure OF HammingDecoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_m : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_error : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sels : std_logic_vector(10 DOWNTO 0);
SIGNAL \m[0]~output_o\ : std_logic;
SIGNAL \m[1]~output_o\ : std_logic;
SIGNAL \m[2]~output_o\ : std_logic;
SIGNAL \m[3]~output_o\ : std_logic;
SIGNAL \m[4]~output_o\ : std_logic;
SIGNAL \m[5]~output_o\ : std_logic;
SIGNAL \m[6]~output_o\ : std_logic;
SIGNAL \m[7]~output_o\ : std_logic;
SIGNAL \m[8]~output_o\ : std_logic;
SIGNAL \m[9]~output_o\ : std_logic;
SIGNAL \m[10]~output_o\ : std_logic;
SIGNAL \error[0]~output_o\ : std_logic;
SIGNAL \error[1]~output_o\ : std_logic;
SIGNAL \error[2]~output_o\ : std_logic;
SIGNAL \error[3]~output_o\ : std_logic;
SIGNAL \sels[0]~output_o\ : std_logic;
SIGNAL \sels[1]~output_o\ : std_logic;
SIGNAL \sels[2]~output_o\ : std_logic;
SIGNAL \sels[3]~output_o\ : std_logic;
SIGNAL \sels[4]~output_o\ : std_logic;
SIGNAL \sels[5]~output_o\ : std_logic;
SIGNAL \sels[6]~output_o\ : std_logic;
SIGNAL \sels[7]~output_o\ : std_logic;
SIGNAL \sels[8]~output_o\ : std_logic;
SIGNAL \sels[9]~output_o\ : std_logic;
SIGNAL \sels[10]~output_o\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \x[9]~input_o\ : std_logic;
SIGNAL \x[10]~input_o\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \Decode|p3|o~0_combout\ : std_logic;
SIGNAL \x[14]~input_o\ : std_logic;
SIGNAL \Decode|x1_x11Bit|o~combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[13]~input_o\ : std_logic;
SIGNAL \Decode|p3|o~combout\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \x[8]~input_o\ : std_logic;
SIGNAL \x[12]~input_o\ : std_logic;
SIGNAL \Decode|p4|o~0_combout\ : std_logic;
SIGNAL \Decode|p4|o~combout\ : std_logic;
SIGNAL \x[11]~input_o\ : std_logic;
SIGNAL \Decode|x1_x2_x3_x4Bit|o~0_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \Decode|p1|o~0_combout\ : std_logic;
SIGNAL \Decode|p1|o~1_combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \Decode|p2|o~0_combout\ : std_logic;
SIGNAL \Decode|p2|o~1_combout\ : std_logic;
SIGNAL \Verifier|sel0And|andFinal|o~0_combout\ : std_logic;
SIGNAL \Verifier|mux0out|o~0_combout\ : std_logic;
SIGNAL \Verifier|sel1And|andFinal|o~0_combout\ : std_logic;
SIGNAL \Verifier|mux1out|o~0_combout\ : std_logic;
SIGNAL \Verifier|sel2And|andFinal|o~0_combout\ : std_logic;
SIGNAL \Verifier|mux2out|o~0_combout\ : std_logic;
SIGNAL \Verifier|sel3And|andFinal|o~0_combout\ : std_logic;
SIGNAL \Verifier|mux3out|o~0_combout\ : std_logic;
SIGNAL \Verifier|sel4And|andFinal|o~0_combout\ : std_logic;
SIGNAL \Verifier|mux4out|o~0_combout\ : std_logic;
SIGNAL \Verifier|sel5And|andFinal|o~0_combout\ : std_logic;
SIGNAL \Verifier|mux5out|o~0_combout\ : std_logic;
SIGNAL \Verifier|sel6And|andFinal|o~0_combout\ : std_logic;
SIGNAL \Verifier|mux6out|o~0_combout\ : std_logic;
SIGNAL \Verifier|sel7And|andFinal|o~combout\ : std_logic;
SIGNAL \Verifier|mux7out|o~0_combout\ : std_logic;
SIGNAL \Verifier|sel8And|andFinal|o~0_combout\ : std_logic;
SIGNAL \Verifier|mux8out|o~0_combout\ : std_logic;
SIGNAL \Verifier|sel9And|andFinal|o~0_combout\ : std_logic;
SIGNAL \Verifier|mux9out|o~0_combout\ : std_logic;
SIGNAL \Verifier|sel10And|andFinal|o~0_combout\ : std_logic;
SIGNAL \Verifier|mux10out|o~0_combout\ : std_logic;

BEGIN

ww_x <= x;
m <= ww_m;
error <= ww_error;
sels <= ww_sels;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\m[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|mux0out|o~0_combout\,
	devoe => ww_devoe,
	o => \m[0]~output_o\);

\m[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|mux1out|o~0_combout\,
	devoe => ww_devoe,
	o => \m[1]~output_o\);

\m[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|mux2out|o~0_combout\,
	devoe => ww_devoe,
	o => \m[2]~output_o\);

\m[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|mux3out|o~0_combout\,
	devoe => ww_devoe,
	o => \m[3]~output_o\);

\m[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|mux4out|o~0_combout\,
	devoe => ww_devoe,
	o => \m[4]~output_o\);

\m[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|mux5out|o~0_combout\,
	devoe => ww_devoe,
	o => \m[5]~output_o\);

\m[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|mux6out|o~0_combout\,
	devoe => ww_devoe,
	o => \m[6]~output_o\);

\m[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|mux7out|o~0_combout\,
	devoe => ww_devoe,
	o => \m[7]~output_o\);

\m[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|mux8out|o~0_combout\,
	devoe => ww_devoe,
	o => \m[8]~output_o\);

\m[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|mux9out|o~0_combout\,
	devoe => ww_devoe,
	o => \m[9]~output_o\);

\m[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|mux10out|o~0_combout\,
	devoe => ww_devoe,
	o => \m[10]~output_o\);

\error[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decode|p4|o~combout\,
	devoe => ww_devoe,
	o => \error[0]~output_o\);

\error[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decode|p3|o~combout\,
	devoe => ww_devoe,
	o => \error[1]~output_o\);

\error[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decode|p2|o~1_combout\,
	devoe => ww_devoe,
	o => \error[2]~output_o\);

\error[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decode|p1|o~1_combout\,
	devoe => ww_devoe,
	o => \error[3]~output_o\);

\sels[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|sel0And|andFinal|o~0_combout\,
	devoe => ww_devoe,
	o => \sels[0]~output_o\);

\sels[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|sel1And|andFinal|o~0_combout\,
	devoe => ww_devoe,
	o => \sels[1]~output_o\);

\sels[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|sel2And|andFinal|o~0_combout\,
	devoe => ww_devoe,
	o => \sels[2]~output_o\);

\sels[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|sel3And|andFinal|o~0_combout\,
	devoe => ww_devoe,
	o => \sels[3]~output_o\);

\sels[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|sel4And|andFinal|o~0_combout\,
	devoe => ww_devoe,
	o => \sels[4]~output_o\);

\sels[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|sel5And|andFinal|o~0_combout\,
	devoe => ww_devoe,
	o => \sels[5]~output_o\);

\sels[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|sel6And|andFinal|o~0_combout\,
	devoe => ww_devoe,
	o => \sels[6]~output_o\);

\sels[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|sel7And|andFinal|o~combout\,
	devoe => ww_devoe,
	o => \sels[7]~output_o\);

\sels[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|sel8And|andFinal|o~0_combout\,
	devoe => ww_devoe,
	o => \sels[8]~output_o\);

\sels[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|sel9And|andFinal|o~0_combout\,
	devoe => ww_devoe,
	o => \sels[9]~output_o\);

\sels[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Verifier|sel10And|andFinal|o~0_combout\,
	devoe => ww_devoe,
	o => \sels[10]~output_o\);

\x[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

\x[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(9),
	o => \x[9]~input_o\);

\x[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(10),
	o => \x[10]~input_o\);

\x[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

\x[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

\Decode|p3|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decode|p3|o~0_combout\ = \x[9]~input_o\ $ (\x[10]~input_o\ $ (\x[6]~input_o\ $ (\x[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[9]~input_o\,
	datab => \x[10]~input_o\,
	datac => \x[6]~input_o\,
	datad => \x[7]~input_o\,
	combout => \Decode|p3|o~0_combout\);

\x[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(14),
	o => \x[14]~input_o\);

\Decode|x1_x11Bit|o\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decode|x1_x11Bit|o~combout\ = \x[4]~input_o\ $ (\x[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[4]~input_o\,
	datad => \x[14]~input_o\,
	combout => \Decode|x1_x11Bit|o~combout\);

\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

\x[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(13),
	o => \x[13]~input_o\);

\Decode|p3|o\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decode|p3|o~combout\ = \Decode|p3|o~0_combout\ $ (\Decode|x1_x11Bit|o~combout\ $ (\x[1]~input_o\ $ (\x[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decode|p3|o~0_combout\,
	datab => \Decode|x1_x11Bit|o~combout\,
	datac => \x[1]~input_o\,
	datad => \x[13]~input_o\,
	combout => \Decode|p3|o~combout\);

\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

\x[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

\x[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(8),
	o => \x[8]~input_o\);

\x[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(12),
	o => \x[12]~input_o\);

\Decode|p4|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decode|p4|o~0_combout\ = \x[10]~input_o\ $ (\x[7]~input_o\ $ (\x[8]~input_o\ $ (\x[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[10]~input_o\,
	datab => \x[7]~input_o\,
	datac => \x[8]~input_o\,
	datad => \x[12]~input_o\,
	combout => \Decode|p4|o~0_combout\);

\Decode|p4|o\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decode|p4|o~combout\ = \Decode|x1_x11Bit|o~combout\ $ (\x[0]~input_o\ $ (\x[5]~input_o\ $ (\Decode|p4|o~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decode|x1_x11Bit|o~combout\,
	datab => \x[0]~input_o\,
	datac => \x[5]~input_o\,
	datad => \Decode|p4|o~0_combout\,
	combout => \Decode|p4|o~combout\);

\x[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(11),
	o => \x[11]~input_o\);

\Decode|x1_x2_x3_x4Bit|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decode|x1_x2_x3_x4Bit|o~0_combout\ = \x[14]~input_o\ $ (\x[13]~input_o\ $ (\x[12]~input_o\ $ (\x[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[14]~input_o\,
	datab => \x[13]~input_o\,
	datac => \x[12]~input_o\,
	datad => \x[11]~input_o\,
	combout => \Decode|x1_x2_x3_x4Bit|o~0_combout\);

\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

\Decode|p1|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decode|p1|o~0_combout\ = \x[9]~input_o\ $ (\x[10]~input_o\ $ (\x[8]~input_o\ $ (\x[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[9]~input_o\,
	datab => \x[10]~input_o\,
	datac => \x[8]~input_o\,
	datad => \x[3]~input_o\,
	combout => \Decode|p1|o~0_combout\);

\Decode|p1|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decode|p1|o~1_combout\ = \Decode|x1_x2_x3_x4Bit|o~0_combout\ $ (\Decode|p1|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decode|x1_x2_x3_x4Bit|o~0_combout\,
	datad => \Decode|p1|o~0_combout\,
	combout => \Decode|p1|o~1_combout\);

\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

\Decode|p2|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decode|p2|o~0_combout\ = \x[6]~input_o\ $ (\x[7]~input_o\ $ (\x[5]~input_o\ $ (\x[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[6]~input_o\,
	datab => \x[7]~input_o\,
	datac => \x[5]~input_o\,
	datad => \x[2]~input_o\,
	combout => \Decode|p2|o~0_combout\);

\Decode|p2|o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decode|p2|o~1_combout\ = \Decode|x1_x2_x3_x4Bit|o~0_combout\ $ (\Decode|p2|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decode|x1_x2_x3_x4Bit|o~0_combout\,
	datad => \Decode|p2|o~0_combout\,
	combout => \Decode|p2|o~1_combout\);

\Verifier|sel0And|andFinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|sel0And|andFinal|o~0_combout\ = (\Decode|p3|o~combout\ & (\Decode|p4|o~combout\ & (!\Decode|p1|o~1_combout\ & !\Decode|p2|o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decode|p3|o~combout\,
	datab => \Decode|p4|o~combout\,
	datac => \Decode|p1|o~1_combout\,
	datad => \Decode|p2|o~1_combout\,
	combout => \Verifier|sel0And|andFinal|o~0_combout\);

\Verifier|mux0out|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|mux0out|o~0_combout\ = \x[4]~input_o\ $ (\Verifier|sel0And|andFinal|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[4]~input_o\,
	datad => \Verifier|sel0And|andFinal|o~0_combout\,
	combout => \Verifier|mux0out|o~0_combout\);

\Verifier|sel1And|andFinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|sel1And|andFinal|o~0_combout\ = (\Decode|p4|o~combout\ & (\Decode|p2|o~1_combout\ & (!\Decode|p3|o~combout\ & !\Decode|p1|o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decode|p4|o~combout\,
	datab => \Decode|p2|o~1_combout\,
	datac => \Decode|p3|o~combout\,
	datad => \Decode|p1|o~1_combout\,
	combout => \Verifier|sel1And|andFinal|o~0_combout\);

\Verifier|mux1out|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|mux1out|o~0_combout\ = \x[5]~input_o\ $ (\Verifier|sel1And|andFinal|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[5]~input_o\,
	datad => \Verifier|sel1And|andFinal|o~0_combout\,
	combout => \Verifier|mux1out|o~0_combout\);

\Verifier|sel2And|andFinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|sel2And|andFinal|o~0_combout\ = (\Decode|p3|o~combout\ & (\Decode|p2|o~1_combout\ & (!\Decode|p4|o~combout\ & !\Decode|p1|o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decode|p3|o~combout\,
	datab => \Decode|p2|o~1_combout\,
	datac => \Decode|p4|o~combout\,
	datad => \Decode|p1|o~1_combout\,
	combout => \Verifier|sel2And|andFinal|o~0_combout\);

\Verifier|mux2out|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|mux2out|o~0_combout\ = \x[6]~input_o\ $ (\Verifier|sel2And|andFinal|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[6]~input_o\,
	datad => \Verifier|sel2And|andFinal|o~0_combout\,
	combout => \Verifier|mux2out|o~0_combout\);

\Verifier|sel3And|andFinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|sel3And|andFinal|o~0_combout\ = (\Decode|p3|o~combout\ & (\Decode|p4|o~combout\ & (\Decode|p2|o~1_combout\ & !\Decode|p1|o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decode|p3|o~combout\,
	datab => \Decode|p4|o~combout\,
	datac => \Decode|p2|o~1_combout\,
	datad => \Decode|p1|o~1_combout\,
	combout => \Verifier|sel3And|andFinal|o~0_combout\);

\Verifier|mux3out|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|mux3out|o~0_combout\ = \x[7]~input_o\ $ (\Verifier|sel3And|andFinal|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[7]~input_o\,
	datad => \Verifier|sel3And|andFinal|o~0_combout\,
	combout => \Verifier|mux3out|o~0_combout\);

\Verifier|sel4And|andFinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|sel4And|andFinal|o~0_combout\ = (\Decode|p4|o~combout\ & (\Decode|p1|o~1_combout\ & (!\Decode|p3|o~combout\ & !\Decode|p2|o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decode|p4|o~combout\,
	datab => \Decode|p1|o~1_combout\,
	datac => \Decode|p3|o~combout\,
	datad => \Decode|p2|o~1_combout\,
	combout => \Verifier|sel4And|andFinal|o~0_combout\);

\Verifier|mux4out|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|mux4out|o~0_combout\ = \x[8]~input_o\ $ (\Verifier|sel4And|andFinal|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[8]~input_o\,
	datad => \Verifier|sel4And|andFinal|o~0_combout\,
	combout => \Verifier|mux4out|o~0_combout\);

\Verifier|sel5And|andFinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|sel5And|andFinal|o~0_combout\ = (\Decode|p3|o~combout\ & (\Decode|p1|o~1_combout\ & (!\Decode|p4|o~combout\ & !\Decode|p2|o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decode|p3|o~combout\,
	datab => \Decode|p1|o~1_combout\,
	datac => \Decode|p4|o~combout\,
	datad => \Decode|p2|o~1_combout\,
	combout => \Verifier|sel5And|andFinal|o~0_combout\);

\Verifier|mux5out|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|mux5out|o~0_combout\ = \x[9]~input_o\ $ (\Verifier|sel5And|andFinal|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[9]~input_o\,
	datad => \Verifier|sel5And|andFinal|o~0_combout\,
	combout => \Verifier|mux5out|o~0_combout\);

\Verifier|sel6And|andFinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|sel6And|andFinal|o~0_combout\ = (\Decode|p3|o~combout\ & (\Decode|p4|o~combout\ & (\Decode|p1|o~1_combout\ & !\Decode|p2|o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decode|p3|o~combout\,
	datab => \Decode|p4|o~combout\,
	datac => \Decode|p1|o~1_combout\,
	datad => \Decode|p2|o~1_combout\,
	combout => \Verifier|sel6And|andFinal|o~0_combout\);

\Verifier|mux6out|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|mux6out|o~0_combout\ = \x[10]~input_o\ $ (\Verifier|sel6And|andFinal|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[10]~input_o\,
	datad => \Verifier|sel6And|andFinal|o~0_combout\,
	combout => \Verifier|mux6out|o~0_combout\);

\Verifier|sel7And|andFinal|o\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|sel7And|andFinal|o~combout\ = (\Decode|p1|o~1_combout\ & (\Decode|p2|o~1_combout\ & (!\Decode|p3|o~combout\ & !\Decode|p4|o~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decode|p1|o~1_combout\,
	datab => \Decode|p2|o~1_combout\,
	datac => \Decode|p3|o~combout\,
	datad => \Decode|p4|o~combout\,
	combout => \Verifier|sel7And|andFinal|o~combout\);

\Verifier|mux7out|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|mux7out|o~0_combout\ = \x[11]~input_o\ $ (\Verifier|sel7And|andFinal|o~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[11]~input_o\,
	datad => \Verifier|sel7And|andFinal|o~combout\,
	combout => \Verifier|mux7out|o~0_combout\);

\Verifier|sel8And|andFinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|sel8And|andFinal|o~0_combout\ = (\Decode|p4|o~combout\ & (\Decode|p1|o~1_combout\ & (\Decode|p2|o~1_combout\ & !\Decode|p3|o~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decode|p4|o~combout\,
	datab => \Decode|p1|o~1_combout\,
	datac => \Decode|p2|o~1_combout\,
	datad => \Decode|p3|o~combout\,
	combout => \Verifier|sel8And|andFinal|o~0_combout\);

\Verifier|mux8out|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|mux8out|o~0_combout\ = \x[12]~input_o\ $ (\Verifier|sel8And|andFinal|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[12]~input_o\,
	datad => \Verifier|sel8And|andFinal|o~0_combout\,
	combout => \Verifier|mux8out|o~0_combout\);

\Verifier|sel9And|andFinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|sel9And|andFinal|o~0_combout\ = (\Decode|p3|o~combout\ & (\Decode|p1|o~1_combout\ & (\Decode|p2|o~1_combout\ & !\Decode|p4|o~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decode|p3|o~combout\,
	datab => \Decode|p1|o~1_combout\,
	datac => \Decode|p2|o~1_combout\,
	datad => \Decode|p4|o~combout\,
	combout => \Verifier|sel9And|andFinal|o~0_combout\);

\Verifier|mux9out|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|mux9out|o~0_combout\ = \x[13]~input_o\ $ (\Verifier|sel9And|andFinal|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[13]~input_o\,
	datad => \Verifier|sel9And|andFinal|o~0_combout\,
	combout => \Verifier|mux9out|o~0_combout\);

\Verifier|sel10And|andFinal|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|sel10And|andFinal|o~0_combout\ = (\Decode|p3|o~combout\ & (\Decode|p4|o~combout\ & (\Decode|p1|o~1_combout\ & \Decode|p2|o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decode|p3|o~combout\,
	datab => \Decode|p4|o~combout\,
	datac => \Decode|p1|o~1_combout\,
	datad => \Decode|p2|o~1_combout\,
	combout => \Verifier|sel10And|andFinal|o~0_combout\);

\Verifier|mux10out|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Verifier|mux10out|o~0_combout\ = \x[14]~input_o\ $ (\Verifier|sel10And|andFinal|o~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[14]~input_o\,
	datad => \Verifier|sel10And|andFinal|o~0_combout\,
	combout => \Verifier|mux10out|o~0_combout\);

ww_m(0) <= \m[0]~output_o\;

ww_m(1) <= \m[1]~output_o\;

ww_m(2) <= \m[2]~output_o\;

ww_m(3) <= \m[3]~output_o\;

ww_m(4) <= \m[4]~output_o\;

ww_m(5) <= \m[5]~output_o\;

ww_m(6) <= \m[6]~output_o\;

ww_m(7) <= \m[7]~output_o\;

ww_m(8) <= \m[8]~output_o\;

ww_m(9) <= \m[9]~output_o\;

ww_m(10) <= \m[10]~output_o\;

ww_error(0) <= \error[0]~output_o\;

ww_error(1) <= \error[1]~output_o\;

ww_error(2) <= \error[2]~output_o\;

ww_error(3) <= \error[3]~output_o\;

ww_sels(0) <= \sels[0]~output_o\;

ww_sels(1) <= \sels[1]~output_o\;

ww_sels(2) <= \sels[2]~output_o\;

ww_sels(3) <= \sels[3]~output_o\;

ww_sels(4) <= \sels[4]~output_o\;

ww_sels(5) <= \sels[5]~output_o\;

ww_sels(6) <= \sels[6]~output_o\;

ww_sels(7) <= \sels[7]~output_o\;

ww_sels(8) <= \sels[8]~output_o\;

ww_sels(9) <= \sels[9]~output_o\;

ww_sels(10) <= \sels[10]~output_o\;
END structure;


