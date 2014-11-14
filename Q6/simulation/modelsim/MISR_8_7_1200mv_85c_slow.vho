-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/14/2014 06:08:36"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MISR_8 IS
    PORT (
	CLOCK_50 : IN std_logic;
	Z : IN std_logic_vector(1 TO 8);
	Q : OUT std_logic_vector(1 TO 8)
	);
END MISR_8;

-- Design Ports Information
-- Q[8]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[8]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[7]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[5]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[4]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MISR_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_Z : std_logic_vector(1 TO 8);
SIGNAL ww_Q : std_logic_vector(1 TO 8);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Z[8]~input_o\ : std_logic;
SIGNAL \Z[4]~input_o\ : std_logic;
SIGNAL \Z[2]~input_o\ : std_logic;
SIGNAL \Z[1]~input_o\ : std_logic;
SIGNAL \Q[8]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Z[7]~input_o\ : std_logic;
SIGNAL \Z[6]~input_o\ : std_logic;
SIGNAL \Z[5]~input_o\ : std_logic;
SIGNAL \Z[3]~input_o\ : std_logic;
SIGNAL \R1|Q~0_combout\ : std_logic;
SIGNAL \R1|Q~q\ : std_logic;
SIGNAL \OUTD2~combout\ : std_logic;
SIGNAL \R2|Q~q\ : std_logic;
SIGNAL \OUTD3~combout\ : std_logic;
SIGNAL \R3|Q~q\ : std_logic;
SIGNAL \OUTD4~combout\ : std_logic;
SIGNAL \R4|Q~q\ : std_logic;
SIGNAL \OUTD5~combout\ : std_logic;
SIGNAL \R5|Q~q\ : std_logic;
SIGNAL \OUTD6~combout\ : std_logic;
SIGNAL \R6|Q~q\ : std_logic;
SIGNAL \OUTD7~combout\ : std_logic;
SIGNAL \R7|Q~q\ : std_logic;
SIGNAL \OUTD8~combout\ : std_logic;
SIGNAL \R8|Q~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_Z <= Z;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\Z[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z(8),
	o => \Z[8]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\Z[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z(4),
	o => \Z[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\Z[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z(2),
	o => \Z[2]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\Z[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z(1),
	o => \Z[1]~input_o\);

-- Location: IOOBUF_X0_Y49_N9
\Q[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R8|Q~q\,
	devoe => ww_devoe,
	o => \Q[8]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\Q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R7|Q~q\,
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\Q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R6|Q~q\,
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\Q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R5|Q~q\,
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\Q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R4|Q~q\,
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3|Q~q\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2|Q~q\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q~q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G2
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y54_N8
\Z[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z(7),
	o => \Z[7]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\Z[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z(6),
	o => \Z[6]~input_o\);

-- Location: IOIBUF_X0_Y50_N15
\Z[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z(5),
	o => \Z[5]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\Z[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z(3),
	o => \Z[3]~input_o\);

-- Location: LCCOMB_X1_Y52_N6
\R1|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R1|Q~0_combout\ = \Z[1]~input_o\ $ (\R1|Q~q\ $ (\R8|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z[1]~input_o\,
	datac => \R1|Q~q\,
	datad => \R8|Q~q\,
	combout => \R1|Q~0_combout\);

-- Location: FF_X1_Y52_N7
\R1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \R1|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q~q\);

-- Location: LCCOMB_X1_Y52_N12
OUTD2 : cycloneive_lcell_comb
-- Equation(s):
-- \OUTD2~combout\ = \Z[2]~input_o\ $ (\R1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z[2]~input_o\,
	datad => \R1|Q~q\,
	combout => \OUTD2~combout\);

-- Location: FF_X1_Y52_N13
\R2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OUTD2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q~q\);

-- Location: LCCOMB_X1_Y52_N2
OUTD3 : cycloneive_lcell_comb
-- Equation(s):
-- \OUTD3~combout\ = \Z[3]~input_o\ $ (\R2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Z[3]~input_o\,
	datad => \R2|Q~q\,
	combout => \OUTD3~combout\);

-- Location: FF_X1_Y52_N3
\R3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OUTD3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3|Q~q\);

-- Location: LCCOMB_X1_Y52_N0
OUTD4 : cycloneive_lcell_comb
-- Equation(s):
-- \OUTD4~combout\ = \Z[4]~input_o\ $ (\R3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z[4]~input_o\,
	datad => \R3|Q~q\,
	combout => \OUTD4~combout\);

-- Location: FF_X1_Y52_N1
\R4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OUTD4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R4|Q~q\);

-- Location: LCCOMB_X1_Y52_N10
OUTD5 : cycloneive_lcell_comb
-- Equation(s):
-- \OUTD5~combout\ = \Z[5]~input_o\ $ (\R4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Z[5]~input_o\,
	datad => \R4|Q~q\,
	combout => \OUTD5~combout\);

-- Location: FF_X1_Y52_N11
\R5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OUTD5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|Q~q\);

-- Location: LCCOMB_X1_Y52_N20
OUTD6 : cycloneive_lcell_comb
-- Equation(s):
-- \OUTD6~combout\ = \Z[6]~input_o\ $ (\R5|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Z[6]~input_o\,
	datad => \R5|Q~q\,
	combout => \OUTD6~combout\);

-- Location: FF_X1_Y52_N21
\R6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OUTD6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R6|Q~q\);

-- Location: LCCOMB_X1_Y52_N18
OUTD7 : cycloneive_lcell_comb
-- Equation(s):
-- \OUTD7~combout\ = \Z[7]~input_o\ $ (\R6|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Z[7]~input_o\,
	datad => \R6|Q~q\,
	combout => \OUTD7~combout\);

-- Location: FF_X1_Y52_N19
\R7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OUTD7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|Q~q\);

-- Location: LCCOMB_X1_Y52_N28
OUTD8 : cycloneive_lcell_comb
-- Equation(s):
-- \OUTD8~combout\ = \Z[8]~input_o\ $ (\R7|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z[8]~input_o\,
	datad => \R7|Q~q\,
	combout => \OUTD8~combout\);

-- Location: FF_X1_Y52_N29
\R8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OUTD8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R8|Q~q\);

ww_Q(8) <= \Q[8]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;
END structure;


