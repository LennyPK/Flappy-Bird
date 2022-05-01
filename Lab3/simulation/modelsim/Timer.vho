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

-- DATE "05/01/2022 15:16:21"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Timer IS
    PORT (
	Clock : IN std_logic;
	Switch : IN std_logic_vector(9 DOWNTO 0);
	LED_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END Timer;

-- Design Ports Information
-- Clock	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Timer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LED_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \tmp[1]~2_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Switch[8]~input_o\ : std_logic;
SIGNAL \Switch[4]~input_o\ : std_logic;
SIGNAL \LED_out[0]~output_o\ : std_logic;
SIGNAL \LED_out[1]~output_o\ : std_logic;
SIGNAL \LED_out[2]~output_o\ : std_logic;
SIGNAL \LED_out[3]~output_o\ : std_logic;
SIGNAL \LED_out[4]~output_o\ : std_logic;
SIGNAL \LED_out[5]~output_o\ : std_logic;
SIGNAL \LED_out[6]~output_o\ : std_logic;
SIGNAL \LED_out[7]~output_o\ : std_logic;
SIGNAL \Switch[3]~input_o\ : std_logic;
SIGNAL \Switch[2]~input_o\ : std_logic;
SIGNAL \Switch[1]~input_o\ : std_logic;
SIGNAL \Switch[9]~input_o\ : std_logic;
SIGNAL \Switch[0]~input_o\ : std_logic;
SIGNAL \Switch[7]~input_o\ : std_logic;
SIGNAL \Switch[6]~input_o\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Switch[5]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \tmp[1]~3_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \tmp[7]~0_combout\ : std_logic;
SIGNAL \comb~18_combout\ : std_logic;
SIGNAL \comb~19_combout\ : std_logic;
SIGNAL \tmp[7]~1_combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \comb~12_combout\ : std_logic;
SIGNAL \comb~13_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \comb~14_combout\ : std_logic;
SIGNAL \comb~15_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \comb~16_combout\ : std_logic;
SIGNAL \comb~17_combout\ : std_logic;
SIGNAL \tmp[7]~4_combout\ : std_logic;
SIGNAL \comb~20_combout\ : std_logic;
SIGNAL \comb~21_combout\ : std_logic;
SIGNAL tmp : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_Clock <= Clock;
ww_Switch <= Switch;
LED_out <= ww_LED_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X11_Y28_N6
\tmp[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[1]~2_combout\ = (!\Equal1~1_combout\ & (!\Equal3~0_combout\ & !\Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \tmp[1]~2_combout\);

-- Location: LCCOMB_X11_Y28_N22
\Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!\Switch[8]~input_o\ & (!\Switch[7]~input_o\ & (\Equal6~0_combout\ & \Switch[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[8]~input_o\,
	datab => \Switch[7]~input_o\,
	datac => \Equal6~0_combout\,
	datad => \Switch[6]~input_o\,
	combout => \Equal6~1_combout\);

-- Location: IOIBUF_X0_Y26_N1
\Switch[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch(8),
	o => \Switch[8]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\Switch[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch(4),
	o => \Switch[4]~input_o\);

-- Location: IOOBUF_X32_Y29_N23
\LED_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LED_out[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\LED_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(1),
	devoe => ww_devoe,
	o => \LED_out[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\LED_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(2),
	devoe => ww_devoe,
	o => \LED_out[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\LED_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(3),
	devoe => ww_devoe,
	o => \LED_out[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\LED_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(4),
	devoe => ww_devoe,
	o => \LED_out[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\LED_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(5),
	devoe => ww_devoe,
	o => \LED_out[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\LED_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(6),
	devoe => ww_devoe,
	o => \LED_out[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\LED_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tmp(7),
	devoe => ww_devoe,
	o => \LED_out[7]~output_o\);

-- Location: IOIBUF_X0_Y23_N8
\Switch[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch(3),
	o => \Switch[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\Switch[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch(2),
	o => \Switch[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\Switch[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch(1),
	o => \Switch[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\Switch[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch(9),
	o => \Switch[9]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\Switch[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch(0),
	o => \Switch[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\Switch[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch(7),
	o => \Switch[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\Switch[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch(6),
	o => \Switch[6]~input_o\);

-- Location: LCCOMB_X11_Y28_N24
\Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (!\Switch[8]~input_o\ & (!\Switch[0]~input_o\ & (!\Switch[7]~input_o\ & !\Switch[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[8]~input_o\,
	datab => \Switch[0]~input_o\,
	datac => \Switch[7]~input_o\,
	datad => \Switch[6]~input_o\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X10_Y28_N0
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\Switch[5]~input_o\ & (!\Switch[1]~input_o\ & (!\Switch[9]~input_o\ & \Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[5]~input_o\,
	datab => \Switch[1]~input_o\,
	datac => \Switch[9]~input_o\,
	datad => \Equal9~0_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X10_Y28_N24
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\Switch[4]~input_o\ & (!\Switch[3]~input_o\ & (!\Switch[2]~input_o\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[4]~input_o\,
	datab => \Switch[3]~input_o\,
	datac => \Switch[2]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X10_Y28_N12
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\Switch[4]~input_o\ & (!\Switch[3]~input_o\ & (!\Switch[2]~input_o\ & \Switch[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[4]~input_o\,
	datab => \Switch[3]~input_o\,
	datac => \Switch[2]~input_o\,
	datad => \Switch[1]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X10_Y28_N14
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\Switch[5]~input_o\ & (\Equal9~0_combout\ & (!\Switch[9]~input_o\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[5]~input_o\,
	datab => \Equal9~0_combout\,
	datac => \Switch[9]~input_o\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X10_Y28_N20
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\Switch[4]~input_o\ & (!\Switch[3]~input_o\ & (!\Switch[2]~input_o\ & !\Switch[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[4]~input_o\,
	datab => \Switch[3]~input_o\,
	datac => \Switch[2]~input_o\,
	datad => \Switch[1]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X11_Y28_N14
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\Switch[5]~input_o\ & (!\Switch[0]~input_o\ & (!\Switch[9]~input_o\ & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[5]~input_o\,
	datab => \Switch[0]~input_o\,
	datac => \Switch[9]~input_o\,
	datad => \Equal5~0_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X11_Y28_N12
\Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\Switch[8]~input_o\ & (\Switch[7]~input_o\ & (\Equal6~0_combout\ & !\Switch[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[8]~input_o\,
	datab => \Switch[7]~input_o\,
	datac => \Equal6~0_combout\,
	datad => \Switch[6]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X12_Y28_N2
\comb~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = (!\Equal4~0_combout\ & (!\Equal1~1_combout\ & !\Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal7~0_combout\,
	combout => \comb~10_combout\);

-- Location: LCCOMB_X11_Y28_N26
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Switch[8]~input_o\) # (((\Switch[7]~input_o\) # (\Switch[6]~input_o\)) # (!\Switch[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[8]~input_o\,
	datab => \Switch[0]~input_o\,
	datac => \Switch[7]~input_o\,
	datad => \Switch[6]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X0_Y22_N15
\Switch[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch(5),
	o => \Switch[5]~input_o\);

-- Location: LCCOMB_X11_Y28_N20
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Switch[9]~input_o\) # (((\Equal0~0_combout\) # (\Switch[5]~input_o\)) # (!\Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[9]~input_o\,
	datab => \Equal5~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \Switch[5]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X11_Y28_N8
\tmp[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[1]~3_combout\ = ((\tmp[1]~2_combout\ & (\Equal7~0_combout\)) # (!\tmp[1]~2_combout\ & ((\Equal1~1_combout\)))) # (!\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal7~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \tmp[1]~3_combout\);

-- Location: LCCOMB_X10_Y28_N6
\Equal9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (!\Switch[5]~input_o\ & (\Equal5~0_combout\ & (\Switch[9]~input_o\ & \Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[5]~input_o\,
	datab => \Equal5~0_combout\,
	datac => \Switch[9]~input_o\,
	datad => \Equal9~0_combout\,
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X10_Y28_N26
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\Switch[4]~input_o\ & (\Switch[3]~input_o\ & (!\Switch[2]~input_o\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[4]~input_o\,
	datab => \Switch[3]~input_o\,
	datac => \Switch[2]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X12_Y28_N24
\tmp[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[7]~0_combout\ = (\Equal5~1_combout\) # ((\Equal9~1_combout\) # (\Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Equal9~1_combout\,
	datac => \Equal3~0_combout\,
	combout => \tmp[7]~0_combout\);

-- Location: LCCOMB_X12_Y28_N22
\comb~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~18_combout\ = (!\tmp[1]~3_combout\ & (((\tmp[7]~0_combout\) # (!\comb~10_combout\)) # (!\comb~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~9_combout\,
	datab => \comb~10_combout\,
	datac => \tmp[1]~3_combout\,
	datad => \tmp[7]~0_combout\,
	combout => \comb~18_combout\);

-- Location: LCCOMB_X12_Y28_N8
\comb~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~19_combout\ = (\tmp[1]~3_combout\ & (((\tmp[7]~0_combout\) # (!\comb~10_combout\)) # (!\comb~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~9_combout\,
	datab => \comb~10_combout\,
	datac => \tmp[1]~3_combout\,
	datad => \tmp[7]~0_combout\,
	combout => \comb~19_combout\);

-- Location: LCCOMB_X12_Y28_N14
\tmp[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- tmp(1) = (!\comb~18_combout\ & ((\comb~19_combout\) # (tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~18_combout\,
	datab => \comb~19_combout\,
	datac => tmp(1),
	combout => tmp(1));

-- Location: LCCOMB_X12_Y28_N28
\tmp[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[7]~1_combout\ = ((\tmp[7]~0_combout\) # (!\comb~10_combout\)) # (!\comb~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~9_combout\,
	datab => \comb~10_combout\,
	datad => \tmp[7]~0_combout\,
	combout => \tmp[7]~1_combout\);

-- Location: LCCOMB_X11_Y28_N10
\comb~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = (\tmp[7]~1_combout\ & (((\tmp[1]~2_combout\ & !\Equal7~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal7~0_combout\,
	datad => \tmp[7]~1_combout\,
	combout => \comb~11_combout\);

-- Location: LCCOMB_X11_Y28_N4
\comb~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~12_combout\ = (\Equal0~1_combout\ & (\tmp[7]~1_combout\ & ((\Equal7~0_combout\) # (!\tmp[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal7~0_combout\,
	datad => \tmp[7]~1_combout\,
	combout => \comb~12_combout\);

-- Location: LCCOMB_X11_Y28_N28
\tmp[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- tmp(2) = (!\comb~11_combout\ & ((\comb~12_combout\) # (tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~11_combout\,
	datac => \comb~12_combout\,
	datad => tmp(2),
	combout => tmp(2));

-- Location: LCCOMB_X12_Y28_N6
\comb~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~13_combout\ = (\comb~9_combout\ & ((\tmp[7]~0_combout\) # (!\comb~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~9_combout\,
	datab => \comb~10_combout\,
	datad => \tmp[7]~0_combout\,
	combout => \comb~13_combout\);

-- Location: LCCOMB_X11_Y28_N0
\comb~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (\Switch[7]~input_o\) # ((\Switch[8]~input_o\ $ (!\Switch[6]~input_o\)) # (!\Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[8]~input_o\,
	datab => \Switch[7]~input_o\,
	datac => \Equal6~0_combout\,
	datad => \Switch[6]~input_o\,
	combout => \comb~8_combout\);

-- Location: LCCOMB_X10_Y28_N18
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\Switch[4]~input_o\ & (!\Switch[3]~input_o\ & (\Switch[2]~input_o\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[4]~input_o\,
	datab => \Switch[3]~input_o\,
	datac => \Switch[2]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X11_Y28_N2
\comb~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = (\comb~8_combout\ & (!\Equal2~1_combout\ & \Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~8_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal0~1_combout\,
	combout => \comb~9_combout\);

-- Location: LCCOMB_X12_Y28_N16
\tmp[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- tmp(3) = (\comb~9_combout\ & ((\comb~13_combout\) # (tmp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~13_combout\,
	datac => \comb~9_combout\,
	datad => tmp(3),
	combout => tmp(3));

-- Location: LCCOMB_X12_Y28_N0
\comb~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~14_combout\ = (\comb~10_combout\ & ((\tmp[7]~0_combout\) # (!\comb~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~9_combout\,
	datab => \comb~10_combout\,
	datad => \tmp[7]~0_combout\,
	combout => \comb~14_combout\);

-- Location: LCCOMB_X12_Y28_N18
\tmp[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- tmp(4) = (!\comb~14_combout\ & ((tmp(4)) # (!\comb~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~10_combout\,
	datac => \comb~14_combout\,
	datad => tmp(4),
	combout => tmp(4));

-- Location: LCCOMB_X12_Y28_N26
\comb~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~15_combout\ = (!\Equal2~1_combout\ & (((\tmp[7]~0_combout\) # (!\comb~10_combout\)) # (!\comb~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~9_combout\,
	datab => \comb~10_combout\,
	datac => \Equal2~1_combout\,
	datad => \tmp[7]~0_combout\,
	combout => \comb~15_combout\);

-- Location: LCCOMB_X12_Y28_N20
\tmp[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- tmp(5) = (!\comb~15_combout\ & ((\Equal2~1_combout\) # (tmp(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~1_combout\,
	datac => \comb~15_combout\,
	datad => tmp(5),
	combout => tmp(5));

-- Location: LCCOMB_X10_Y28_N8
\Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\Switch[5]~input_o\ & (\Equal5~0_combout\ & (!\Switch[9]~input_o\ & \Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch[5]~input_o\,
	datab => \Equal5~0_combout\,
	datac => \Switch[9]~input_o\,
	datad => \Equal9~0_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X11_Y28_N16
\comb~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~16_combout\ = (!\Equal6~1_combout\ & (!\Equal5~1_combout\ & \tmp[7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~1_combout\,
	datac => \Equal5~1_combout\,
	datad => \tmp[7]~1_combout\,
	combout => \comb~16_combout\);

-- Location: LCCOMB_X11_Y28_N18
\comb~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~17_combout\ = (\tmp[7]~1_combout\ & ((\Equal6~1_combout\) # (\Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~1_combout\,
	datac => \Equal5~1_combout\,
	datad => \tmp[7]~1_combout\,
	combout => \comb~17_combout\);

-- Location: LCCOMB_X11_Y28_N30
\tmp[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- tmp(6) = (!\comb~16_combout\ & ((tmp(6)) # (\comb~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~16_combout\,
	datac => tmp(6),
	datad => \comb~17_combout\,
	combout => tmp(6));

-- Location: LCCOMB_X12_Y28_N4
\tmp[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[7]~4_combout\ = (\Equal0~1_combout\ & ((\tmp[1]~2_combout\ & (\Equal4~0_combout\)) # (!\tmp[1]~2_combout\ & ((\Equal1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp[1]~2_combout\,
	datab => \Equal4~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal0~1_combout\,
	combout => \tmp[7]~4_combout\);

-- Location: LCCOMB_X12_Y28_N10
\comb~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~20_combout\ = (!\tmp[7]~4_combout\ & (((\tmp[7]~0_combout\) # (!\comb~10_combout\)) # (!\comb~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~9_combout\,
	datab => \comb~10_combout\,
	datac => \tmp[7]~4_combout\,
	datad => \tmp[7]~0_combout\,
	combout => \comb~20_combout\);

-- Location: LCCOMB_X12_Y28_N12
\comb~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~21_combout\ = (\tmp[7]~4_combout\ & (((\tmp[7]~0_combout\) # (!\comb~10_combout\)) # (!\comb~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~9_combout\,
	datab => \comb~10_combout\,
	datac => \tmp[7]~4_combout\,
	datad => \tmp[7]~0_combout\,
	combout => \comb~21_combout\);

-- Location: LCCOMB_X12_Y28_N30
\tmp[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- tmp(7) = (!\comb~20_combout\ & ((tmp(7)) # (\comb~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~20_combout\,
	datac => tmp(7),
	datad => \comb~21_combout\,
	combout => tmp(7));

-- Location: IOIBUF_X41_Y15_N1
\Clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

ww_LED_out(0) <= \LED_out[0]~output_o\;

ww_LED_out(1) <= \LED_out[1]~output_o\;

ww_LED_out(2) <= \LED_out[2]~output_o\;

ww_LED_out(3) <= \LED_out[3]~output_o\;

ww_LED_out(4) <= \LED_out[4]~output_o\;

ww_LED_out(5) <= \LED_out[5]~output_o\;

ww_LED_out(6) <= \LED_out[6]~output_o\;

ww_LED_out(7) <= \LED_out[7]~output_o\;
END structure;


