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

-- DATE "11/20/2018 15:47:28"

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

ENTITY 	HammingCode IS
    PORT (
	m : IN std_logic_vector(10 DOWNTO 0);
	x : OUT std_logic_vector(14 DOWNTO 0)
	);
END HammingCode;

ARCHITECTURE structure OF HammingCode IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_m : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_x : std_logic_vector(14 DOWNTO 0);
SIGNAL \x[0]~output_o\ : std_logic;
SIGNAL \x[1]~output_o\ : std_logic;
SIGNAL \x[2]~output_o\ : std_logic;
SIGNAL \x[3]~output_o\ : std_logic;
SIGNAL \x[4]~output_o\ : std_logic;
SIGNAL \x[5]~output_o\ : std_logic;
SIGNAL \x[6]~output_o\ : std_logic;
SIGNAL \x[7]~output_o\ : std_logic;
SIGNAL \x[8]~output_o\ : std_logic;
SIGNAL \x[9]~output_o\ : std_logic;
SIGNAL \x[10]~output_o\ : std_logic;
SIGNAL \x[11]~output_o\ : std_logic;
SIGNAL \x[12]~output_o\ : std_logic;
SIGNAL \x[13]~output_o\ : std_logic;
SIGNAL \x[14]~output_o\ : std_logic;
SIGNAL \m[0]~input_o\ : std_logic;
SIGNAL \m[10]~input_o\ : std_logic;
SIGNAL \m[1]~input_o\ : std_logic;
SIGNAL \m[3]~input_o\ : std_logic;
SIGNAL \p4|o~0_combout\ : std_logic;
SIGNAL \m[4]~input_o\ : std_logic;
SIGNAL \m[6]~input_o\ : std_logic;
SIGNAL \m[8]~input_o\ : std_logic;
SIGNAL \p4|o~combout\ : std_logic;
SIGNAL \m[5]~input_o\ : std_logic;
SIGNAL \m[2]~input_o\ : std_logic;
SIGNAL \p3|o~0_combout\ : std_logic;
SIGNAL \m[9]~input_o\ : std_logic;
SIGNAL \p3|o~combout\ : std_logic;
SIGNAL \m[7]~input_o\ : std_logic;
SIGNAL \redBitT|o~0_combout\ : std_logic;
SIGNAL \p2|o~combout\ : std_logic;
SIGNAL \p1|o~combout\ : std_logic;

BEGIN

ww_m <= m;
x <= ww_x;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\x[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p4|o~combout\,
	devoe => ww_devoe,
	o => \x[0]~output_o\);

\x[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p3|o~combout\,
	devoe => ww_devoe,
	o => \x[1]~output_o\);

\x[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p2|o~combout\,
	devoe => ww_devoe,
	o => \x[2]~output_o\);

\x[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \p1|o~combout\,
	devoe => ww_devoe,
	o => \x[3]~output_o\);

\x[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[0]~input_o\,
	devoe => ww_devoe,
	o => \x[4]~output_o\);

\x[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[1]~input_o\,
	devoe => ww_devoe,
	o => \x[5]~output_o\);

\x[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[2]~input_o\,
	devoe => ww_devoe,
	o => \x[6]~output_o\);

\x[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[3]~input_o\,
	devoe => ww_devoe,
	o => \x[7]~output_o\);

\x[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[4]~input_o\,
	devoe => ww_devoe,
	o => \x[8]~output_o\);

\x[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[5]~input_o\,
	devoe => ww_devoe,
	o => \x[9]~output_o\);

\x[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[6]~input_o\,
	devoe => ww_devoe,
	o => \x[10]~output_o\);

\x[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[7]~input_o\,
	devoe => ww_devoe,
	o => \x[11]~output_o\);

\x[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[8]~input_o\,
	devoe => ww_devoe,
	o => \x[12]~output_o\);

\x[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[9]~input_o\,
	devoe => ww_devoe,
	o => \x[13]~output_o\);

\x[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[10]~input_o\,
	devoe => ww_devoe,
	o => \x[14]~output_o\);

\m[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(0),
	o => \m[0]~input_o\);

\m[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(10),
	o => \m[10]~input_o\);

\m[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(1),
	o => \m[1]~input_o\);

\m[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(3),
	o => \m[3]~input_o\);

\p4|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p4|o~0_combout\ = \m[0]~input_o\ $ (\m[10]~input_o\ $ (\m[1]~input_o\ $ (\m[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \m[10]~input_o\,
	datac => \m[1]~input_o\,
	datad => \m[3]~input_o\,
	combout => \p4|o~0_combout\);

\m[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(4),
	o => \m[4]~input_o\);

\m[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(6),
	o => \m[6]~input_o\);

\m[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(8),
	o => \m[8]~input_o\);

\p4|o\ : cycloneive_lcell_comb
-- Equation(s):
-- \p4|o~combout\ = \p4|o~0_combout\ $ (\m[4]~input_o\ $ (\m[6]~input_o\ $ (\m[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p4|o~0_combout\,
	datab => \m[4]~input_o\,
	datac => \m[6]~input_o\,
	datad => \m[8]~input_o\,
	combout => \p4|o~combout\);

\m[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(5),
	o => \m[5]~input_o\);

\m[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(2),
	o => \m[2]~input_o\);

\p3|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3|o~0_combout\ = \m[3]~input_o\ $ (\m[6]~input_o\ $ (\m[5]~input_o\ $ (\m[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[3]~input_o\,
	datab => \m[6]~input_o\,
	datac => \m[5]~input_o\,
	datad => \m[2]~input_o\,
	combout => \p3|o~0_combout\);

\m[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(9),
	o => \m[9]~input_o\);

\p3|o\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3|o~combout\ = \m[0]~input_o\ $ (\m[10]~input_o\ $ (\p3|o~0_combout\ $ (\m[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \m[10]~input_o\,
	datac => \p3|o~0_combout\,
	datad => \m[9]~input_o\,
	combout => \p3|o~combout\);

\m[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(7),
	o => \m[7]~input_o\);

\redBitT|o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \redBitT|o~0_combout\ = \m[10]~input_o\ $ (\m[8]~input_o\ $ (\m[9]~input_o\ $ (\m[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[10]~input_o\,
	datab => \m[8]~input_o\,
	datac => \m[9]~input_o\,
	datad => \m[7]~input_o\,
	combout => \redBitT|o~0_combout\);

\p2|o\ : cycloneive_lcell_comb
-- Equation(s):
-- \p2|o~combout\ = \m[1]~input_o\ $ (\m[3]~input_o\ $ (\m[2]~input_o\ $ (\redBitT|o~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datab => \m[3]~input_o\,
	datac => \m[2]~input_o\,
	datad => \redBitT|o~0_combout\,
	combout => \p2|o~combout\);

\p1|o\ : cycloneive_lcell_comb
-- Equation(s):
-- \p1|o~combout\ = \m[4]~input_o\ $ (\m[6]~input_o\ $ (\m[5]~input_o\ $ (\redBitT|o~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[4]~input_o\,
	datab => \m[6]~input_o\,
	datac => \m[5]~input_o\,
	datad => \redBitT|o~0_combout\,
	combout => \p1|o~combout\);

ww_x(0) <= \x[0]~output_o\;

ww_x(1) <= \x[1]~output_o\;

ww_x(2) <= \x[2]~output_o\;

ww_x(3) <= \x[3]~output_o\;

ww_x(4) <= \x[4]~output_o\;

ww_x(5) <= \x[5]~output_o\;

ww_x(6) <= \x[6]~output_o\;

ww_x(7) <= \x[7]~output_o\;

ww_x(8) <= \x[8]~output_o\;

ww_x(9) <= \x[9]~output_o\;

ww_x(10) <= \x[10]~output_o\;

ww_x(11) <= \x[11]~output_o\;

ww_x(12) <= \x[12]~output_o\;

ww_x(13) <= \x[13]~output_o\;

ww_x(14) <= \x[14]~output_o\;
END structure;


