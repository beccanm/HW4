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

-- DATE "11/14/2014 06:42:16"

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

ENTITY 	Problem_4_30 IS
    PORT (
	CLOCK_50 : IN std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	P : OUT std_logic_vector(7 DOWNTO 0)
	);
END Problem_4_30;

-- Design Ports Information
-- P[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[6]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[7]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Problem_4_30 IS
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
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_P : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DFF1_FA4_S22_1|Q~q\ : std_logic;
SIGNAL \DFF1_C23_1|Q~q\ : std_logic;
SIGNAL \DFF1_HA2_0|Q~q\ : std_logic;
SIGNAL \FA4|Sum~0_combout\ : std_logic;
SIGNAL \DFF1_X3Y2_0|Q~q\ : std_logic;
SIGNAL \FA5|Cout~0_combout\ : std_logic;
SIGNAL \HA2|Sum~combout\ : std_logic;
SIGNAL \P[0]~output_o\ : std_logic;
SIGNAL \P[1]~output_o\ : std_logic;
SIGNAL \P[2]~output_o\ : std_logic;
SIGNAL \P[3]~output_o\ : std_logic;
SIGNAL \P[4]~output_o\ : std_logic;
SIGNAL \P[5]~output_o\ : std_logic;
SIGNAL \P[6]~output_o\ : std_logic;
SIGNAL \P[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \DFF1_P0_0|Q~q\ : std_logic;
SIGNAL \DFF1_P0_1|Q~feeder_combout\ : std_logic;
SIGNAL \DFF1_P0_1|Q~q\ : std_logic;
SIGNAL \Reg_Product_Out|d_out[0]~feeder_combout\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \HA1|Sum~combout\ : std_logic;
SIGNAL \DFF1_HA1_S10_0|Q~q\ : std_logic;
SIGNAL \DFF1_HA1_S10_1|Q~feeder_combout\ : std_logic;
SIGNAL \DFF1_HA1_S10_1|Q~q\ : std_logic;
SIGNAL \Reg_Product_Out|d_out[1]~feeder_combout\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \Reg_Yin|d_out[2]~feeder_combout\ : std_logic;
SIGNAL \DFF1_X0Y2_0|Q~q\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \HA1|Cout~combout\ : std_logic;
SIGNAL \FA1|Sum~combout\ : std_logic;
SIGNAL \DFF1_FA1_S11_0|Q~q\ : std_logic;
SIGNAL \HA3|Sum~combout\ : std_logic;
SIGNAL \DFF1_HA3_S20_1|Q~q\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \Reg_Yin|d_out[3]~feeder_combout\ : std_logic;
SIGNAL \DFF1_X0Y3_0|Q~q\ : std_logic;
SIGNAL \DFF1_X0Y3_1|Q~q\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \FA1|Cout~0_combout\ : std_logic;
SIGNAL \FA2|Sum~combout\ : std_logic;
SIGNAL \DFF1_FA2_S12_0|Q~q\ : std_logic;
SIGNAL \FA3|Sum~0_combout\ : std_logic;
SIGNAL \DFF1_FA3_S21_1|Q~q\ : std_logic;
SIGNAL \HA4|Sum~combout\ : std_logic;
SIGNAL \DFF1_X1Y3_0|Q~q\ : std_logic;
SIGNAL \DFF1_X1Y3_1|Q~feeder_combout\ : std_logic;
SIGNAL \DFF1_X1Y3_1|Q~q\ : std_logic;
SIGNAL \FA6|Sum~0_combout\ : std_logic;
SIGNAL \FA2|Cout~0_combout\ : std_logic;
SIGNAL \HA2|Cout~combout\ : std_logic;
SIGNAL \DFF1_C13_0|Q~q\ : std_logic;
SIGNAL \DFF1_X2Y2_0|Q~q\ : std_logic;
SIGNAL \DFF1_X1Y2_0|Q~q\ : std_logic;
SIGNAL \FA3|Cout~0_combout\ : std_logic;
SIGNAL \FA4|Cout~0_combout\ : std_logic;
SIGNAL \FA5|Sum~combout\ : std_logic;
SIGNAL \DFF1_FA5_S23_1|Q~q\ : std_logic;
SIGNAL \DFF1_X2Y3_0|Q~q\ : std_logic;
SIGNAL \DFF1_X2Y3_1|Q~feeder_combout\ : std_logic;
SIGNAL \DFF1_X2Y3_1|Q~q\ : std_logic;
SIGNAL \FA6|Cout~0_combout\ : std_logic;
SIGNAL \FA7|Sum~0_combout\ : std_logic;
SIGNAL \DFF1_X3Y3_0|Q~q\ : std_logic;
SIGNAL \DFF1_X3Y3_1|Q~feeder_combout\ : std_logic;
SIGNAL \DFF1_X3Y3_1|Q~q\ : std_logic;
SIGNAL \FA7|Cout~0_combout\ : std_logic;
SIGNAL \FA8|Sum~combout\ : std_logic;
SIGNAL \FA8|Cout~0_combout\ : std_logic;
SIGNAL \Reg_Yin|d_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reg_Xin|d_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reg_Product_Out|d_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL XY2 : std_logic_vector(3 DOWNTO 0);
SIGNAL XY3 : std_logic_vector(3 DOWNTO 0);
SIGNAL XY0 : std_logic_vector(3 DOWNTO 0);
SIGNAL XY1 : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_X <= X;
ww_Y <= Y;
P <= ww_P;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: FF_X1_Y42_N31
\DFF1_FA4_S22_1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FA4|Sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_FA4_S22_1|Q~q\);

-- Location: FF_X2_Y42_N31
\DFF1_C23_1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FA5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_C23_1|Q~q\);

-- Location: FF_X2_Y42_N9
\DFF1_HA2_0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \HA2|Sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_HA2_0|Q~q\);

-- Location: LCCOMB_X1_Y42_N30
\FA4|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA4|Sum~0_combout\ = \DFF1_HA2_0|Q~q\ $ (\FA3|Cout~0_combout\ $ (\DFF1_X2Y2_0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DFF1_HA2_0|Q~q\,
	datac => \FA3|Cout~0_combout\,
	datad => \DFF1_X2Y2_0|Q~q\,
	combout => \FA4|Sum~0_combout\);

-- Location: FF_X3_Y42_N15
\DFF1_X3Y2_0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => XY2(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_X3Y2_0|Q~q\);

-- Location: LCCOMB_X2_Y42_N30
\FA5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA5|Cout~0_combout\ = (\DFF1_X3Y2_0|Q~q\ & ((\DFF1_C13_0|Q~q\) # (\FA4|Cout~0_combout\))) # (!\DFF1_X3Y2_0|Q~q\ & (\DFF1_C13_0|Q~q\ & \FA4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF1_X3Y2_0|Q~q\,
	datac => \DFF1_C13_0|Q~q\,
	datad => \FA4|Cout~0_combout\,
	combout => \FA5|Cout~0_combout\);

-- Location: LCCOMB_X2_Y42_N8
\HA2|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA2|Sum~combout\ = \FA2|Cout~0_combout\ $ (((\Reg_Xin|d_out\(3) & \Reg_Yin|d_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Xin|d_out\(3),
	datac => \Reg_Yin|d_out\(1),
	datad => \FA2|Cout~0_combout\,
	combout => \HA2|Sum~combout\);

-- Location: LCCOMB_X3_Y42_N14
\XY2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY2(3) = (\Reg_Xin|d_out\(3) & \Reg_Yin|d_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_Xin|d_out\(3),
	datad => \Reg_Yin|d_out\(2),
	combout => XY2(3));

-- Location: IOOBUF_X0_Y47_N23
\P[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Product_Out|d_out\(0),
	devoe => ww_devoe,
	o => \P[0]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\P[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Product_Out|d_out\(1),
	devoe => ww_devoe,
	o => \P[1]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\P[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Product_Out|d_out\(2),
	devoe => ww_devoe,
	o => \P[2]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\P[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Product_Out|d_out\(3),
	devoe => ww_devoe,
	o => \P[3]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\P[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Product_Out|d_out\(4),
	devoe => ww_devoe,
	o => \P[4]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\P[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Product_Out|d_out\(5),
	devoe => ww_devoe,
	o => \P[5]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\P[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Product_Out|d_out\(6),
	devoe => ww_devoe,
	o => \P[6]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\P[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_Product_Out|d_out\(7),
	devoe => ww_devoe,
	o => \P[7]~output_o\);

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

-- Location: IOIBUF_X0_Y47_N1
\Y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: FF_X2_Y42_N29
\Reg_Yin|d_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Y[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Yin|d_out\(0));

-- Location: IOIBUF_X0_Y44_N8
\X[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: FF_X2_Y42_N11
\Reg_Xin|d_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \X[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Xin|d_out\(0));

-- Location: LCCOMB_X3_Y42_N18
\XY0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY0(0) = (\Reg_Yin|d_out\(0) & \Reg_Xin|d_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_Yin|d_out\(0),
	datad => \Reg_Xin|d_out\(0),
	combout => XY0(0));

-- Location: FF_X3_Y42_N19
\DFF1_P0_0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => XY0(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_P0_0|Q~q\);

-- Location: LCCOMB_X3_Y42_N16
\DFF1_P0_1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFF1_P0_1|Q~feeder_combout\ = \DFF1_P0_0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFF1_P0_0|Q~q\,
	combout => \DFF1_P0_1|Q~feeder_combout\);

-- Location: FF_X3_Y42_N17
\DFF1_P0_1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DFF1_P0_1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_P0_1|Q~q\);

-- Location: LCCOMB_X3_Y42_N0
\Reg_Product_Out|d_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Product_Out|d_out[0]~feeder_combout\ = \DFF1_P0_1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFF1_P0_1|Q~q\,
	combout => \Reg_Product_Out|d_out[0]~feeder_combout\);

-- Location: FF_X3_Y42_N1
\Reg_Product_Out|d_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Reg_Product_Out|d_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Product_Out|d_out\(0));

-- Location: IOIBUF_X0_Y35_N8
\Y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: FF_X2_Y42_N7
\Reg_Yin|d_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Y[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Yin|d_out\(1));

-- Location: IOIBUF_X0_Y47_N15
\X[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: FF_X2_Y42_N17
\Reg_Xin|d_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \X[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Xin|d_out\(1));

-- Location: LCCOMB_X3_Y42_N24
\HA1|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA1|Sum~combout\ = (\Reg_Xin|d_out\(0) & (\Reg_Yin|d_out\(1) $ (((\Reg_Yin|d_out\(0) & \Reg_Xin|d_out\(1)))))) # (!\Reg_Xin|d_out\(0) & (((\Reg_Yin|d_out\(0) & \Reg_Xin|d_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Xin|d_out\(0),
	datab => \Reg_Yin|d_out\(1),
	datac => \Reg_Yin|d_out\(0),
	datad => \Reg_Xin|d_out\(1),
	combout => \HA1|Sum~combout\);

-- Location: FF_X3_Y42_N25
\DFF1_HA1_S10_0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \HA1|Sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_HA1_S10_0|Q~q\);

-- Location: LCCOMB_X3_Y42_N10
\DFF1_HA1_S10_1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFF1_HA1_S10_1|Q~feeder_combout\ = \DFF1_HA1_S10_0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFF1_HA1_S10_0|Q~q\,
	combout => \DFF1_HA1_S10_1|Q~feeder_combout\);

-- Location: FF_X3_Y42_N11
\DFF1_HA1_S10_1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DFF1_HA1_S10_1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_HA1_S10_1|Q~q\);

-- Location: LCCOMB_X3_Y42_N22
\Reg_Product_Out|d_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Product_Out|d_out[1]~feeder_combout\ = \DFF1_HA1_S10_1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFF1_HA1_S10_1|Q~q\,
	combout => \Reg_Product_Out|d_out[1]~feeder_combout\);

-- Location: FF_X3_Y42_N23
\Reg_Product_Out|d_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Reg_Product_Out|d_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Product_Out|d_out\(1));

-- Location: IOIBUF_X0_Y43_N15
\Y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: LCCOMB_X3_Y42_N6
\Reg_Yin|d_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Yin|d_out[2]~feeder_combout\ = \Y[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Y[2]~input_o\,
	combout => \Reg_Yin|d_out[2]~feeder_combout\);

-- Location: FF_X3_Y42_N7
\Reg_Yin|d_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Reg_Yin|d_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Yin|d_out\(2));

-- Location: LCCOMB_X2_Y42_N22
\XY2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY2(0) = (\Reg_Xin|d_out\(0) & \Reg_Yin|d_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Xin|d_out\(0),
	datac => \Reg_Yin|d_out\(2),
	combout => XY2(0));

-- Location: FF_X2_Y42_N23
\DFF1_X0Y2_0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => XY2(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_X0Y2_0|Q~q\);

-- Location: LCCOMB_X2_Y42_N20
\XY1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY1(1) = (\Reg_Xin|d_out\(1) & \Reg_Yin|d_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_Xin|d_out\(1),
	datad => \Reg_Yin|d_out\(1),
	combout => XY1(1));

-- Location: IOIBUF_X0_Y44_N22
\X[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: FF_X2_Y42_N21
\Reg_Xin|d_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \X[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Xin|d_out\(2));

-- Location: LCCOMB_X2_Y42_N10
\HA1|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA1|Cout~combout\ = (\Reg_Yin|d_out\(1) & (\Reg_Yin|d_out\(0) & (\Reg_Xin|d_out\(0) & \Reg_Xin|d_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Yin|d_out\(1),
	datab => \Reg_Yin|d_out\(0),
	datac => \Reg_Xin|d_out\(0),
	datad => \Reg_Xin|d_out\(1),
	combout => \HA1|Cout~combout\);

-- Location: LCCOMB_X2_Y42_N4
\FA1|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA1|Sum~combout\ = XY1(1) $ (\HA1|Cout~combout\ $ (((\Reg_Yin|d_out\(0) & \Reg_Xin|d_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Yin|d_out\(0),
	datab => XY1(1),
	datac => \Reg_Xin|d_out\(2),
	datad => \HA1|Cout~combout\,
	combout => \FA1|Sum~combout\);

-- Location: FF_X2_Y42_N5
\DFF1_FA1_S11_0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FA1|Sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_FA1_S11_0|Q~q\);

-- Location: LCCOMB_X1_Y42_N8
\HA3|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA3|Sum~combout\ = \DFF1_X0Y2_0|Q~q\ $ (\DFF1_FA1_S11_0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DFF1_X0Y2_0|Q~q\,
	datad => \DFF1_FA1_S11_0|Q~q\,
	combout => \HA3|Sum~combout\);

-- Location: FF_X1_Y42_N9
\DFF1_HA3_S20_1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \HA3|Sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_HA3_S20_1|Q~q\);

-- Location: FF_X1_Y42_N1
\Reg_Product_Out|d_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DFF1_HA3_S20_1|Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Product_Out|d_out\(2));

-- Location: IOIBUF_X0_Y42_N1
\Y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: LCCOMB_X1_Y42_N22
\Reg_Yin|d_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_Yin|d_out[3]~feeder_combout\ = \Y[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Y[3]~input_o\,
	combout => \Reg_Yin|d_out[3]~feeder_combout\);

-- Location: FF_X1_Y42_N23
\Reg_Yin|d_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Reg_Yin|d_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Yin|d_out\(3));

-- Location: LCCOMB_X1_Y42_N26
\XY3[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY3(0) = (\Reg_Xin|d_out\(0) & \Reg_Yin|d_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Xin|d_out\(0),
	datad => \Reg_Yin|d_out\(3),
	combout => XY3(0));

-- Location: FF_X1_Y42_N27
\DFF1_X0Y3_0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => XY3(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_X0Y3_0|Q~q\);

-- Location: FF_X1_Y42_N21
\DFF1_X0Y3_1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DFF1_X0Y3_0|Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_X0Y3_1|Q~q\);

-- Location: IOIBUF_X0_Y35_N1
\X[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: FF_X2_Y42_N19
\Reg_Xin|d_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \X[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Xin|d_out\(3));

-- Location: LCCOMB_X2_Y42_N28
\FA1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA1|Cout~0_combout\ = (XY1(1) & ((\HA1|Cout~combout\) # ((\Reg_Xin|d_out\(2) & \Reg_Yin|d_out\(0))))) # (!XY1(1) & (\Reg_Xin|d_out\(2) & (\Reg_Yin|d_out\(0) & \HA1|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Xin|d_out\(2),
	datab => XY1(1),
	datac => \Reg_Yin|d_out\(0),
	datad => \HA1|Cout~combout\,
	combout => \FA1|Cout~0_combout\);

-- Location: LCCOMB_X2_Y42_N12
\FA2|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA2|Sum~combout\ = XY1(2) $ (\FA1|Cout~0_combout\ $ (((\Reg_Yin|d_out\(0) & \Reg_Xin|d_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => XY1(2),
	datab => \Reg_Yin|d_out\(0),
	datac => \Reg_Xin|d_out\(3),
	datad => \FA1|Cout~0_combout\,
	combout => \FA2|Sum~combout\);

-- Location: FF_X2_Y42_N13
\DFF1_FA2_S12_0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FA2|Sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_FA2_S12_0|Q~q\);

-- Location: LCCOMB_X1_Y42_N2
\FA3|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA3|Sum~0_combout\ = \DFF1_X1Y2_0|Q~q\ $ (\DFF1_FA2_S12_0|Q~q\ $ (((\DFF1_X0Y2_0|Q~q\ & \DFF1_FA1_S11_0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF1_X1Y2_0|Q~q\,
	datab => \DFF1_X0Y2_0|Q~q\,
	datac => \DFF1_FA2_S12_0|Q~q\,
	datad => \DFF1_FA1_S11_0|Q~q\,
	combout => \FA3|Sum~0_combout\);

-- Location: FF_X1_Y42_N3
\DFF1_FA3_S21_1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FA3|Sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_FA3_S21_1|Q~q\);

-- Location: LCCOMB_X1_Y42_N4
\HA4|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA4|Sum~combout\ = \DFF1_X0Y3_1|Q~q\ $ (\DFF1_FA3_S21_1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DFF1_X0Y3_1|Q~q\,
	datad => \DFF1_FA3_S21_1|Q~q\,
	combout => \HA4|Sum~combout\);

-- Location: FF_X1_Y42_N5
\Reg_Product_Out|d_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \HA4|Sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Product_Out|d_out\(3));

-- Location: LCCOMB_X1_Y42_N12
\XY3[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY3(1) = (\Reg_Xin|d_out\(1) & \Reg_Yin|d_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reg_Xin|d_out\(1),
	datad => \Reg_Yin|d_out\(3),
	combout => XY3(1));

-- Location: FF_X1_Y42_N13
\DFF1_X1Y3_0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => XY3(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_X1Y3_0|Q~q\);

-- Location: LCCOMB_X1_Y42_N24
\DFF1_X1Y3_1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFF1_X1Y3_1|Q~feeder_combout\ = \DFF1_X1Y3_0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFF1_X1Y3_0|Q~q\,
	combout => \DFF1_X1Y3_1|Q~feeder_combout\);

-- Location: FF_X1_Y42_N25
\DFF1_X1Y3_1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DFF1_X1Y3_1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_X1Y3_1|Q~q\);

-- Location: LCCOMB_X1_Y42_N14
\FA6|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA6|Sum~0_combout\ = \DFF1_FA4_S22_1|Q~q\ $ (\DFF1_X1Y3_1|Q~q\ $ (((\DFF1_FA3_S21_1|Q~q\ & \DFF1_X0Y3_1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF1_FA4_S22_1|Q~q\,
	datab => \DFF1_FA3_S21_1|Q~q\,
	datac => \DFF1_X0Y3_1|Q~q\,
	datad => \DFF1_X1Y3_1|Q~q\,
	combout => \FA6|Sum~0_combout\);

-- Location: FF_X1_Y42_N15
\Reg_Product_Out|d_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FA6|Sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Product_Out|d_out\(4));

-- Location: LCCOMB_X2_Y42_N6
\XY1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY1(2) = (\Reg_Yin|d_out\(1) & \Reg_Xin|d_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reg_Yin|d_out\(1),
	datad => \Reg_Xin|d_out\(2),
	combout => XY1(2));

-- Location: LCCOMB_X2_Y42_N18
\FA2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA2|Cout~0_combout\ = (XY1(2) & ((\FA1|Cout~0_combout\) # ((\Reg_Yin|d_out\(0) & \Reg_Xin|d_out\(3))))) # (!XY1(2) & (\Reg_Yin|d_out\(0) & (\Reg_Xin|d_out\(3) & \FA1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Yin|d_out\(0),
	datab => XY1(2),
	datac => \Reg_Xin|d_out\(3),
	datad => \FA1|Cout~0_combout\,
	combout => \FA2|Cout~0_combout\);

-- Location: LCCOMB_X2_Y42_N26
\HA2|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA2|Cout~combout\ = (\Reg_Xin|d_out\(3) & (\Reg_Yin|d_out\(1) & \FA2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Xin|d_out\(3),
	datac => \Reg_Yin|d_out\(1),
	datad => \FA2|Cout~0_combout\,
	combout => \HA2|Cout~combout\);

-- Location: FF_X2_Y42_N27
\DFF1_C13_0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \HA2|Cout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_C13_0|Q~q\);

-- Location: LCCOMB_X2_Y42_N14
\XY2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY2(2) = (\Reg_Yin|d_out\(2) & \Reg_Xin|d_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_Yin|d_out\(2),
	datac => \Reg_Xin|d_out\(2),
	combout => XY2(2));

-- Location: FF_X2_Y42_N15
\DFF1_X2Y2_0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => XY2(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_X2Y2_0|Q~q\);

-- Location: LCCOMB_X2_Y42_N2
\XY2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY2(1) = (\Reg_Xin|d_out\(1) & \Reg_Yin|d_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Xin|d_out\(1),
	datac => \Reg_Yin|d_out\(2),
	combout => XY2(1));

-- Location: FF_X2_Y42_N3
\DFF1_X1Y2_0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => XY2(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_X1Y2_0|Q~q\);

-- Location: LCCOMB_X2_Y42_N0
\FA3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA3|Cout~0_combout\ = (\DFF1_FA2_S12_0|Q~q\ & ((\DFF1_X1Y2_0|Q~q\) # ((\DFF1_FA1_S11_0|Q~q\ & \DFF1_X0Y2_0|Q~q\)))) # (!\DFF1_FA2_S12_0|Q~q\ & (\DFF1_FA1_S11_0|Q~q\ & (\DFF1_X0Y2_0|Q~q\ & \DFF1_X1Y2_0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF1_FA2_S12_0|Q~q\,
	datab => \DFF1_FA1_S11_0|Q~q\,
	datac => \DFF1_X0Y2_0|Q~q\,
	datad => \DFF1_X1Y2_0|Q~q\,
	combout => \FA3|Cout~0_combout\);

-- Location: LCCOMB_X2_Y42_N16
\FA4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA4|Cout~0_combout\ = (\DFF1_HA2_0|Q~q\ & ((\DFF1_X2Y2_0|Q~q\) # (\FA3|Cout~0_combout\))) # (!\DFF1_HA2_0|Q~q\ & (\DFF1_X2Y2_0|Q~q\ & \FA3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF1_HA2_0|Q~q\,
	datab => \DFF1_X2Y2_0|Q~q\,
	datad => \FA3|Cout~0_combout\,
	combout => \FA4|Cout~0_combout\);

-- Location: LCCOMB_X2_Y42_N24
\FA5|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA5|Sum~combout\ = \DFF1_X3Y2_0|Q~q\ $ (\DFF1_C13_0|Q~q\ $ (\FA4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF1_X3Y2_0|Q~q\,
	datac => \DFF1_C13_0|Q~q\,
	datad => \FA4|Cout~0_combout\,
	combout => \FA5|Sum~combout\);

-- Location: FF_X2_Y42_N25
\DFF1_FA5_S23_1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FA5|Sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_FA5_S23_1|Q~q\);

-- Location: LCCOMB_X1_Y42_N28
\XY3[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY3(2) = (\Reg_Yin|d_out\(3) & \Reg_Xin|d_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_Yin|d_out\(3),
	datac => \Reg_Xin|d_out\(2),
	combout => XY3(2));

-- Location: FF_X1_Y42_N29
\DFF1_X2Y3_0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => XY3(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_X2Y3_0|Q~q\);

-- Location: LCCOMB_X1_Y42_N16
\DFF1_X2Y3_1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFF1_X2Y3_1|Q~feeder_combout\ = \DFF1_X2Y3_0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFF1_X2Y3_0|Q~q\,
	combout => \DFF1_X2Y3_1|Q~feeder_combout\);

-- Location: FF_X1_Y42_N17
\DFF1_X2Y3_1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DFF1_X2Y3_1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_X2Y3_1|Q~q\);

-- Location: LCCOMB_X1_Y42_N20
\FA6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA6|Cout~0_combout\ = (\DFF1_FA4_S22_1|Q~q\ & ((\DFF1_X1Y3_1|Q~q\) # ((\DFF1_X0Y3_1|Q~q\ & \DFF1_FA3_S21_1|Q~q\)))) # (!\DFF1_FA4_S22_1|Q~q\ & (\DFF1_X1Y3_1|Q~q\ & (\DFF1_X0Y3_1|Q~q\ & \DFF1_FA3_S21_1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF1_FA4_S22_1|Q~q\,
	datab => \DFF1_X1Y3_1|Q~q\,
	datac => \DFF1_X0Y3_1|Q~q\,
	datad => \DFF1_FA3_S21_1|Q~q\,
	combout => \FA6|Cout~0_combout\);

-- Location: LCCOMB_X1_Y42_N6
\FA7|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA7|Sum~0_combout\ = \DFF1_FA5_S23_1|Q~q\ $ (\DFF1_X2Y3_1|Q~q\ $ (\FA6|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DFF1_FA5_S23_1|Q~q\,
	datac => \DFF1_X2Y3_1|Q~q\,
	datad => \FA6|Cout~0_combout\,
	combout => \FA7|Sum~0_combout\);

-- Location: FF_X1_Y42_N7
\Reg_Product_Out|d_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FA7|Sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Product_Out|d_out\(5));

-- Location: LCCOMB_X3_Y42_N12
\XY3[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY3(3) = (\Reg_Yin|d_out\(3) & \Reg_Xin|d_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reg_Yin|d_out\(3),
	datad => \Reg_Xin|d_out\(3),
	combout => XY3(3));

-- Location: FF_X3_Y42_N13
\DFF1_X3Y3_0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => XY3(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_X3Y3_0|Q~q\);

-- Location: LCCOMB_X3_Y42_N20
\DFF1_X3Y3_1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DFF1_X3Y3_1|Q~feeder_combout\ = \DFF1_X3Y3_0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFF1_X3Y3_0|Q~q\,
	combout => \DFF1_X3Y3_1|Q~feeder_combout\);

-- Location: FF_X3_Y42_N21
\DFF1_X3Y3_1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DFF1_X3Y3_1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF1_X3Y3_1|Q~q\);

-- Location: LCCOMB_X1_Y42_N0
\FA7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA7|Cout~0_combout\ = (\DFF1_X2Y3_1|Q~q\ & ((\DFF1_FA5_S23_1|Q~q\) # (\FA6|Cout~0_combout\))) # (!\DFF1_X2Y3_1|Q~q\ & (\DFF1_FA5_S23_1|Q~q\ & \FA6|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF1_X2Y3_1|Q~q\,
	datab => \DFF1_FA5_S23_1|Q~q\,
	datad => \FA6|Cout~0_combout\,
	combout => \FA7|Cout~0_combout\);

-- Location: LCCOMB_X1_Y42_N18
\FA8|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA8|Sum~combout\ = \DFF1_C23_1|Q~q\ $ (\DFF1_X3Y3_1|Q~q\ $ (\FA7|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF1_C23_1|Q~q\,
	datac => \DFF1_X3Y3_1|Q~q\,
	datad => \FA7|Cout~0_combout\,
	combout => \FA8|Sum~combout\);

-- Location: FF_X1_Y42_N19
\Reg_Product_Out|d_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FA8|Sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Product_Out|d_out\(6));

-- Location: LCCOMB_X1_Y42_N10
\FA8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA8|Cout~0_combout\ = (\DFF1_C23_1|Q~q\ & ((\DFF1_X3Y3_1|Q~q\) # (\FA7|Cout~0_combout\))) # (!\DFF1_C23_1|Q~q\ & (\DFF1_X3Y3_1|Q~q\ & \FA7|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DFF1_C23_1|Q~q\,
	datac => \DFF1_X3Y3_1|Q~q\,
	datad => \FA7|Cout~0_combout\,
	combout => \FA8|Cout~0_combout\);

-- Location: FF_X1_Y42_N11
\Reg_Product_Out|d_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FA8|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Product_Out|d_out\(7));

ww_P(0) <= \P[0]~output_o\;

ww_P(1) <= \P[1]~output_o\;

ww_P(2) <= \P[2]~output_o\;

ww_P(3) <= \P[3]~output_o\;

ww_P(4) <= \P[4]~output_o\;

ww_P(5) <= \P[5]~output_o\;

ww_P(6) <= \P[6]~output_o\;

ww_P(7) <= \P[7]~output_o\;
END structure;


