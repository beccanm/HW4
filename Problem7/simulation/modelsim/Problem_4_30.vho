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

-- DATE "11/14/2014 06:31:46"

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
-- P[0]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[2]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[4]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[5]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[7]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \FA5|Sum~2_combout\ : std_logic;
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
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \HA1|Sum~combout\ : std_logic;
SIGNAL \HA1|Cout~combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \HA3|Sum~3_combout\ : std_logic;
SIGNAL \HA3|Sum~2_combout\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \HA3|Cout~0_combout\ : std_logic;
SIGNAL \HA3|Cout~combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \FA2|Sum~0_combout\ : std_logic;
SIGNAL \FA1|Cout~0_combout\ : std_logic;
SIGNAL \FA3|Sum~combout\ : std_logic;
SIGNAL \HA4|Sum~combout\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \FA3|Cout~0_combout\ : std_logic;
SIGNAL \HA4|Cout~0_combout\ : std_logic;
SIGNAL \HA4|Cout~1_combout\ : std_logic;
SIGNAL \FA6|Sum~combout\ : std_logic;
SIGNAL \FA2|Cout~0_combout\ : std_logic;
SIGNAL \FA4|Cout~0_combout\ : std_logic;
SIGNAL \FA4|Sum~0_combout\ : std_logic;
SIGNAL \FA6|Cout~0_combout\ : std_logic;
SIGNAL \FA7|Sum~combout\ : std_logic;
SIGNAL \FA5|Cout~0_combout\ : std_logic;
SIGNAL \FA7|Cout~0_combout\ : std_logic;
SIGNAL \FA8|Sum~0_combout\ : std_logic;
SIGNAL \FA8|Cout~0_combout\ : std_logic;
SIGNAL XY3 : std_logic_vector(3 DOWNTO 0);
SIGNAL XY2 : std_logic_vector(3 DOWNTO 0);
SIGNAL XY1 : std_logic_vector(3 DOWNTO 0);
SIGNAL P_REG : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reg_Xin|d_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reg_Product_Out|d_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reg_Yin|d_out\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_X <= X;
ww_Y <= Y;
P <= ww_P;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: LCCOMB_X41_Y1_N6
\XY1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY1(1) = (\Reg_Yin|d_out\(1) & \Reg_Xin|d_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_Yin|d_out\(1),
	datad => \Reg_Xin|d_out\(1),
	combout => XY1(1));

-- Location: LCCOMB_X41_Y1_N22
\XY2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY2(2) = (\Reg_Xin|d_out\(2) & \Reg_Yin|d_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_Xin|d_out\(2),
	datad => \Reg_Yin|d_out\(2),
	combout => XY2(2));

-- Location: LCCOMB_X40_Y1_N0
\XY2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY2(3) = (\Reg_Yin|d_out\(2) & \Reg_Xin|d_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_Yin|d_out\(2),
	datac => \Reg_Xin|d_out\(3),
	combout => XY2(3));

-- Location: LCCOMB_X40_Y1_N22
\FA5|Sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA5|Sum~2_combout\ = (\Reg_Xin|d_out\(3) & (\Reg_Yin|d_out\(2) $ (((\Reg_Yin|d_out\(1) & \FA2|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Yin|d_out\(1),
	datab => \Reg_Yin|d_out\(2),
	datac => \Reg_Xin|d_out\(3),
	datad => \FA2|Cout~0_combout\,
	combout => \FA5|Sum~2_combout\);

-- Location: IOOBUF_X35_Y0_N16
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X31_Y0_N2
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

-- Location: IOOBUF_X33_Y0_N9
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

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X35_Y0_N23
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

-- Location: IOOBUF_X33_Y0_N2
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

-- Location: IOIBUF_X40_Y0_N22
\Y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: FF_X41_Y1_N5
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

-- Location: IOIBUF_X42_Y0_N15
\X[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: FF_X41_Y1_N23
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

-- Location: LCCOMB_X39_Y1_N0
\P_REG[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- P_REG(0) = (\Reg_Yin|d_out\(0) & \Reg_Xin|d_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reg_Yin|d_out\(0),
	datad => \Reg_Xin|d_out\(0),
	combout => P_REG(0));

-- Location: FF_X39_Y1_N1
\Reg_Product_Out|d_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => P_REG(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Product_Out|d_out\(0));

-- Location: IOIBUF_X45_Y0_N15
\Y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: FF_X41_Y1_N1
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

-- Location: IOIBUF_X42_Y0_N22
\X[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: FF_X41_Y1_N11
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

-- Location: LCCOMB_X40_Y1_N28
\HA1|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA1|Sum~combout\ = (\Reg_Yin|d_out\(0) & (\Reg_Xin|d_out\(1) $ (((\Reg_Yin|d_out\(1) & \Reg_Xin|d_out\(0)))))) # (!\Reg_Yin|d_out\(0) & (\Reg_Yin|d_out\(1) & ((\Reg_Xin|d_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Yin|d_out\(0),
	datab => \Reg_Yin|d_out\(1),
	datac => \Reg_Xin|d_out\(1),
	datad => \Reg_Xin|d_out\(0),
	combout => \HA1|Sum~combout\);

-- Location: FF_X40_Y1_N29
\Reg_Product_Out|d_out[1]\ : dffeas
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
	q => \Reg_Product_Out|d_out\(1));

-- Location: LCCOMB_X41_Y1_N28
\HA1|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA1|Cout~combout\ = (\Reg_Xin|d_out\(0) & (\Reg_Yin|d_out\(1) & (\Reg_Yin|d_out\(0) & \Reg_Xin|d_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Xin|d_out\(0),
	datab => \Reg_Yin|d_out\(1),
	datac => \Reg_Yin|d_out\(0),
	datad => \Reg_Xin|d_out\(1),
	combout => \HA1|Cout~combout\);

-- Location: IOIBUF_X40_Y0_N15
\X[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: FF_X41_Y1_N19
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

-- Location: LCCOMB_X40_Y1_N8
\HA3|Sum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA3|Sum~3_combout\ = (\Reg_Yin|d_out\(0) & (\Reg_Xin|d_out\(2) $ (((\Reg_Yin|d_out\(1) & \Reg_Xin|d_out\(1)))))) # (!\Reg_Yin|d_out\(0) & (((\Reg_Yin|d_out\(1) & \Reg_Xin|d_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Yin|d_out\(0),
	datab => \Reg_Xin|d_out\(2),
	datac => \Reg_Yin|d_out\(1),
	datad => \Reg_Xin|d_out\(1),
	combout => \HA3|Sum~3_combout\);

-- Location: LCCOMB_X40_Y1_N18
\HA3|Sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA3|Sum~2_combout\ = \HA1|Cout~combout\ $ (\HA3|Sum~3_combout\ $ (((\Reg_Yin|d_out\(2) & \Reg_Xin|d_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Yin|d_out\(2),
	datab => \HA1|Cout~combout\,
	datac => \HA3|Sum~3_combout\,
	datad => \Reg_Xin|d_out\(0),
	combout => \HA3|Sum~2_combout\);

-- Location: FF_X40_Y1_N19
\Reg_Product_Out|d_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \HA3|Sum~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Product_Out|d_out\(2));

-- Location: IOIBUF_X45_Y0_N22
\Y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: FF_X41_Y1_N27
\Reg_Yin|d_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Y[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Yin|d_out\(3));

-- Location: LCCOMB_X41_Y1_N12
\HA3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA3|Cout~0_combout\ = (\Reg_Yin|d_out\(0) & (((\Reg_Xin|d_out\(2))))) # (!\Reg_Yin|d_out\(0) & (\Reg_Yin|d_out\(1) & ((\Reg_Xin|d_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Yin|d_out\(1),
	datab => \Reg_Xin|d_out\(2),
	datac => \Reg_Yin|d_out\(0),
	datad => \Reg_Xin|d_out\(1),
	combout => \HA3|Cout~0_combout\);

-- Location: LCCOMB_X41_Y1_N2
\HA3|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA3|Cout~combout\ = (\Reg_Yin|d_out\(2) & (\Reg_Xin|d_out\(0) & \HA3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Yin|d_out\(2),
	datac => \Reg_Xin|d_out\(0),
	datad => \HA3|Cout~0_combout\,
	combout => \HA3|Cout~combout\);

-- Location: IOIBUF_X47_Y0_N1
\X[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: FF_X41_Y1_N31
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

-- Location: LCCOMB_X41_Y1_N30
\FA2|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA2|Sum~0_combout\ = (\Reg_Yin|d_out\(1) & (\Reg_Xin|d_out\(2) $ (((\Reg_Yin|d_out\(0) & \Reg_Xin|d_out\(3)))))) # (!\Reg_Yin|d_out\(1) & (\Reg_Yin|d_out\(0) & (\Reg_Xin|d_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Yin|d_out\(1),
	datab => \Reg_Yin|d_out\(0),
	datac => \Reg_Xin|d_out\(3),
	datad => \Reg_Xin|d_out\(2),
	combout => \FA2|Sum~0_combout\);

-- Location: LCCOMB_X41_Y1_N8
\FA1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA1|Cout~0_combout\ = (XY1(1) & ((\HA1|Cout~combout\) # ((\Reg_Xin|d_out\(2) & \Reg_Yin|d_out\(0))))) # (!XY1(1) & (\Reg_Xin|d_out\(2) & (\Reg_Yin|d_out\(0) & \HA1|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => XY1(1),
	datab => \Reg_Xin|d_out\(2),
	datac => \Reg_Yin|d_out\(0),
	datad => \HA1|Cout~combout\,
	combout => \FA1|Cout~0_combout\);

-- Location: LCCOMB_X41_Y1_N24
\FA3|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA3|Sum~combout\ = XY2(1) $ (\HA3|Cout~combout\ $ (\FA2|Sum~0_combout\ $ (\FA1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => XY2(1),
	datab => \HA3|Cout~combout\,
	datac => \FA2|Sum~0_combout\,
	datad => \FA1|Cout~0_combout\,
	combout => \FA3|Sum~combout\);

-- Location: LCCOMB_X41_Y1_N20
\HA4|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA4|Sum~combout\ = \FA3|Sum~combout\ $ (((\Reg_Yin|d_out\(3) & \Reg_Xin|d_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reg_Yin|d_out\(3),
	datac => \FA3|Sum~combout\,
	datad => \Reg_Xin|d_out\(0),
	combout => \HA4|Sum~combout\);

-- Location: FF_X41_Y1_N21
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

-- Location: LCCOMB_X41_Y1_N4
\XY3[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY3(1) = (\Reg_Xin|d_out\(1) & \Reg_Yin|d_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Xin|d_out\(1),
	datad => \Reg_Yin|d_out\(3),
	combout => XY3(1));

-- Location: IOIBUF_X47_Y0_N8
\Y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: FF_X41_Y1_N7
\Reg_Yin|d_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Y[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Yin|d_out\(2));

-- Location: LCCOMB_X41_Y1_N0
\XY2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY2(1) = (\Reg_Xin|d_out\(1) & \Reg_Yin|d_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Xin|d_out\(1),
	datad => \Reg_Yin|d_out\(2),
	combout => XY2(1));

-- Location: LCCOMB_X41_Y1_N14
\FA3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA3|Cout~0_combout\ = (XY2(1) & ((\HA3|Cout~combout\) # (\FA2|Sum~0_combout\ $ (\FA1|Cout~0_combout\)))) # (!XY2(1) & (\HA3|Cout~combout\ & (\FA2|Sum~0_combout\ $ (\FA1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA2|Sum~0_combout\,
	datab => XY2(1),
	datac => \HA3|Cout~combout\,
	datad => \FA1|Cout~0_combout\,
	combout => \FA3|Cout~0_combout\);

-- Location: LCCOMB_X41_Y1_N16
\HA4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA4|Cout~0_combout\ = \FA2|Sum~0_combout\ $ (\FA1|Cout~0_combout\ $ (\HA3|Cout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA2|Sum~0_combout\,
	datac => \FA1|Cout~0_combout\,
	datad => \HA3|Cout~combout\,
	combout => \HA4|Cout~0_combout\);

-- Location: LCCOMB_X41_Y1_N26
\HA4|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HA4|Cout~1_combout\ = (\Reg_Xin|d_out\(0) & (\Reg_Yin|d_out\(3) & (XY2(1) $ (\HA4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Xin|d_out\(0),
	datab => XY2(1),
	datac => \Reg_Yin|d_out\(3),
	datad => \HA4|Cout~0_combout\,
	combout => \HA4|Cout~1_combout\);

-- Location: LCCOMB_X40_Y1_N24
\FA6|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA6|Sum~combout\ = \FA4|Sum~0_combout\ $ (XY3(1) $ (\FA3|Cout~0_combout\ $ (\HA4|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA4|Sum~0_combout\,
	datab => XY3(1),
	datac => \FA3|Cout~0_combout\,
	datad => \HA4|Cout~1_combout\,
	combout => \FA6|Sum~combout\);

-- Location: FF_X40_Y1_N25
\Reg_Product_Out|d_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FA6|Sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Product_Out|d_out\(4));

-- Location: LCCOMB_X40_Y1_N20
\XY3[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY3(2) = (\Reg_Yin|d_out\(3) & \Reg_Xin|d_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reg_Yin|d_out\(3),
	datad => \Reg_Xin|d_out\(2),
	combout => XY3(2));

-- Location: LCCOMB_X41_Y1_N10
\XY1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY1(3) = (\Reg_Yin|d_out\(1) & \Reg_Xin|d_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Yin|d_out\(1),
	datad => \Reg_Xin|d_out\(3),
	combout => XY1(3));

-- Location: LCCOMB_X41_Y1_N18
\XY1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- XY1(2) = (\Reg_Xin|d_out\(2) & \Reg_Yin|d_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reg_Xin|d_out\(2),
	datad => \Reg_Yin|d_out\(1),
	combout => XY1(2));

-- Location: LCCOMB_X40_Y1_N16
\FA2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA2|Cout~0_combout\ = (XY1(2) & ((\FA1|Cout~0_combout\) # ((\Reg_Yin|d_out\(0) & \Reg_Xin|d_out\(3))))) # (!XY1(2) & (\Reg_Yin|d_out\(0) & (\FA1|Cout~0_combout\ & \Reg_Xin|d_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Yin|d_out\(0),
	datab => XY1(2),
	datac => \FA1|Cout~0_combout\,
	datad => \Reg_Xin|d_out\(3),
	combout => \FA2|Cout~0_combout\);

-- Location: LCCOMB_X40_Y1_N4
\FA4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA4|Cout~0_combout\ = (XY2(2) & ((\FA3|Cout~0_combout\) # (XY1(3) $ (\FA2|Cout~0_combout\)))) # (!XY2(2) & (\FA3|Cout~0_combout\ & (XY1(3) $ (\FA2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => XY2(2),
	datab => XY1(3),
	datac => \FA3|Cout~0_combout\,
	datad => \FA2|Cout~0_combout\,
	combout => \FA4|Cout~0_combout\);

-- Location: LCCOMB_X40_Y1_N30
\FA4|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA4|Sum~0_combout\ = XY1(3) $ (\FA2|Cout~0_combout\ $ (((\Reg_Xin|d_out\(2) & \Reg_Yin|d_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Xin|d_out\(2),
	datab => \Reg_Yin|d_out\(2),
	datac => XY1(3),
	datad => \FA2|Cout~0_combout\,
	combout => \FA4|Sum~0_combout\);

-- Location: LCCOMB_X40_Y1_N10
\FA6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA6|Cout~0_combout\ = (XY3(1) & ((\HA4|Cout~1_combout\) # (\FA3|Cout~0_combout\ $ (\FA4|Sum~0_combout\)))) # (!XY3(1) & (\HA4|Cout~1_combout\ & (\FA3|Cout~0_combout\ $ (\FA4|Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => XY3(1),
	datab => \FA3|Cout~0_combout\,
	datac => \FA4|Sum~0_combout\,
	datad => \HA4|Cout~1_combout\,
	combout => \FA6|Cout~0_combout\);

-- Location: LCCOMB_X40_Y1_N14
\FA7|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA7|Sum~combout\ = \FA5|Sum~2_combout\ $ (XY3(2) $ (\FA4|Cout~0_combout\ $ (\FA6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA5|Sum~2_combout\,
	datab => XY3(2),
	datac => \FA4|Cout~0_combout\,
	datad => \FA6|Cout~0_combout\,
	combout => \FA7|Sum~combout\);

-- Location: FF_X40_Y1_N15
\Reg_Product_Out|d_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FA7|Sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Product_Out|d_out\(5));

-- Location: LCCOMB_X40_Y1_N26
\FA5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA5|Cout~0_combout\ = (XY2(3) & ((\FA4|Cout~0_combout\) # ((XY1(3) & \FA2|Cout~0_combout\)))) # (!XY2(3) & (XY1(3) & (\FA4|Cout~0_combout\ & \FA2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => XY2(3),
	datab => XY1(3),
	datac => \FA4|Cout~0_combout\,
	datad => \FA2|Cout~0_combout\,
	combout => \FA5|Cout~0_combout\);

-- Location: LCCOMB_X40_Y1_N2
\FA7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA7|Cout~0_combout\ = (XY3(2) & ((\FA6|Cout~0_combout\) # (\FA5|Sum~2_combout\ $ (\FA4|Cout~0_combout\)))) # (!XY3(2) & (\FA6|Cout~0_combout\ & (\FA5|Sum~2_combout\ $ (\FA4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FA5|Sum~2_combout\,
	datab => XY3(2),
	datac => \FA4|Cout~0_combout\,
	datad => \FA6|Cout~0_combout\,
	combout => \FA7|Cout~0_combout\);

-- Location: LCCOMB_X40_Y1_N12
\FA8|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA8|Sum~0_combout\ = \FA5|Cout~0_combout\ $ (\FA7|Cout~0_combout\ $ (((\Reg_Yin|d_out\(3) & \Reg_Xin|d_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Yin|d_out\(3),
	datab => \Reg_Xin|d_out\(3),
	datac => \FA5|Cout~0_combout\,
	datad => \FA7|Cout~0_combout\,
	combout => \FA8|Sum~0_combout\);

-- Location: FF_X40_Y1_N13
\Reg_Product_Out|d_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FA8|Sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_Product_Out|d_out\(6));

-- Location: LCCOMB_X40_Y1_N6
\FA8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA8|Cout~0_combout\ = (\FA5|Cout~0_combout\ & ((\FA7|Cout~0_combout\) # ((\Reg_Yin|d_out\(3) & \Reg_Xin|d_out\(3))))) # (!\FA5|Cout~0_combout\ & (\Reg_Yin|d_out\(3) & (\Reg_Xin|d_out\(3) & \FA7|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_Yin|d_out\(3),
	datab => \Reg_Xin|d_out\(3),
	datac => \FA5|Cout~0_combout\,
	datad => \FA7|Cout~0_combout\,
	combout => \FA8|Cout~0_combout\);

-- Location: FF_X40_Y1_N7
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


