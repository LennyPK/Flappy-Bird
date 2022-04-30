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

-- DATE "05/01/2022 02:44:28"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Timer IS
    PORT (
	Clock : IN std_logic;
	Data_In : IN std_logic_vector(9 DOWNTO 0);
	LED_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END Timer;

-- Design Ports Information
-- Data_In[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Data_In : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LED_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Data_In[1]~input_o\ : std_logic;
SIGNAL \Data_In[2]~input_o\ : std_logic;
SIGNAL \Data_In[3]~input_o\ : std_logic;
SIGNAL \Data_In[4]~input_o\ : std_logic;
SIGNAL \Data_In[5]~input_o\ : std_logic;
SIGNAL \Data_In[6]~input_o\ : std_logic;
SIGNAL \Data_In[7]~input_o\ : std_logic;
SIGNAL \Data_In[8]~input_o\ : std_logic;
SIGNAL \Data_In[9]~input_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \LED_out[0]~output_o\ : std_logic;
SIGNAL \LED_out[1]~output_o\ : std_logic;
SIGNAL \LED_out[2]~output_o\ : std_logic;
SIGNAL \LED_out[3]~output_o\ : std_logic;
SIGNAL \LED_out[4]~output_o\ : std_logic;
SIGNAL \LED_out[5]~output_o\ : std_logic;
SIGNAL \LED_out[6]~output_o\ : std_logic;
SIGNAL \LED_out[7]~output_o\ : std_logic;
SIGNAL \Data_In[0]~input_o\ : std_logic;
SIGNAL \DUO|Q_Out[0]~0_combout\ : std_logic;
SIGNAL \DUO|v_Q~2_combout\ : std_logic;
SIGNAL \DUO|v_Q~0_combout\ : std_logic;
SIGNAL \LED_out~9_combout\ : std_logic;
SIGNAL \DUO|v_Q[2]~1_combout\ : std_logic;
SIGNAL \tmp[1]~8_combout\ : std_logic;
SIGNAL \tmp[1]~9_combout\ : std_logic;
SIGNAL \tmp[2]~10_combout\ : std_logic;
SIGNAL \tmp[2]~11_combout\ : std_logic;
SIGNAL \tmp[3]~12_combout\ : std_logic;
SIGNAL \tmp[3]~13_combout\ : std_logic;
SIGNAL \LED_out~2_combout\ : std_logic;
SIGNAL \LED_out~10_combout\ : std_logic;
SIGNAL \LED_out~5_combout\ : std_logic;
SIGNAL \LED_out~11_combout\ : std_logic;
SIGNAL \LED_out~8_combout\ : std_logic;
SIGNAL \LED_out~12_combout\ : std_logic;
SIGNAL \tmp[7]~14_combout\ : std_logic;
SIGNAL \tmp[7]~15_combout\ : std_logic;
SIGNAL \DUO|v_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DUO|Q_Out\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_Clock <= Clock;
ww_Data_In <= Data_In;
LED_out <= ww_LED_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

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

-- Location: CLKCTRL_G9
\Clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOOBUF_X32_Y29_N23
\LED_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_out~9_combout\,
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
	i => \tmp[1]~9_combout\,
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
	i => \tmp[2]~11_combout\,
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
	i => \tmp[3]~13_combout\,
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
	i => \LED_out~10_combout\,
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
	i => \LED_out~11_combout\,
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
	i => \LED_out~12_combout\,
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
	i => \tmp[7]~15_combout\,
	devoe => ww_devoe,
	o => \LED_out[7]~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\Data_In[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(0),
	o => \Data_In[0]~input_o\);

-- Location: LCCOMB_X35_Y28_N24
\DUO|Q_Out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUO|Q_Out[0]~0_combout\ = !\DUO|Q_Out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUO|Q_Out\(0),
	combout => \DUO|Q_Out[0]~0_combout\);

-- Location: FF_X35_Y28_N25
\DUO|Q_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DUO|Q_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUO|Q_Out\(0));

-- Location: LCCOMB_X35_Y28_N12
\DUO|v_Q~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUO|v_Q~2_combout\ = (\DUO|v_Q\(1) & (((\DUO|Q_Out\(0))))) # (!\DUO|v_Q\(1) & (!\DUO|Q_Out\(0) & ((\DUO|v_Q\(2)) # (!\DUO|v_Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUO|v_Q\(2),
	datab => \DUO|v_Q\(3),
	datac => \DUO|v_Q\(1),
	datad => \DUO|Q_Out\(0),
	combout => \DUO|v_Q~2_combout\);

-- Location: FF_X35_Y28_N13
\DUO|v_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DUO|v_Q~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUO|v_Q\(1));

-- Location: LCCOMB_X35_Y28_N4
\DUO|v_Q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUO|v_Q~0_combout\ = (\DUO|v_Q\(2) & (\DUO|v_Q\(3) $ (((!\DUO|Q_Out\(0) & \DUO|v_Q\(1)))))) # (!\DUO|v_Q\(2) & (\DUO|v_Q\(3) & ((\DUO|Q_Out\(0)) # (\DUO|v_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUO|v_Q\(2),
	datab => \DUO|Q_Out\(0),
	datac => \DUO|v_Q\(3),
	datad => \DUO|v_Q\(1),
	combout => \DUO|v_Q~0_combout\);

-- Location: FF_X35_Y28_N5
\DUO|v_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DUO|v_Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUO|v_Q\(3));

-- Location: FF_X35_Y28_N29
\DUO|Q_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DUO|v_Q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUO|Q_Out\(3));

-- Location: LCCOMB_X35_Y28_N20
\LED_out~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_out~9_combout\ = (\Data_In[0]~input_o\) # (\DUO|Q_Out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_In[0]~input_o\,
	datac => \DUO|Q_Out\(3),
	combout => \LED_out~9_combout\);

-- Location: LCCOMB_X35_Y28_N30
\DUO|v_Q[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUO|v_Q[2]~1_combout\ = \DUO|v_Q\(2) $ (((\DUO|v_Q\(1) & !\DUO|Q_Out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUO|v_Q\(1),
	datac => \DUO|v_Q\(2),
	datad => \DUO|Q_Out\(0),
	combout => \DUO|v_Q[2]~1_combout\);

-- Location: FF_X35_Y28_N31
\DUO|v_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DUO|v_Q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUO|v_Q\(2));

-- Location: FF_X35_Y28_N9
\DUO|Q_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DUO|v_Q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUO|Q_Out\(2));

-- Location: LCCOMB_X35_Y28_N14
\tmp[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[1]~8_combout\ = (\DUO|Q_Out\(1) & (!\DUO|Q_Out\(3) & ((!\DUO|Q_Out\(0)) # (!\DUO|Q_Out\(2))))) # (!\DUO|Q_Out\(1) & ((\DUO|Q_Out\(2) & (!\DUO|Q_Out\(3))) # (!\DUO|Q_Out\(2) & ((\DUO|Q_Out\(3)) # (\DUO|Q_Out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUO|Q_Out\(1),
	datab => \DUO|Q_Out\(2),
	datac => \DUO|Q_Out\(3),
	datad => \DUO|Q_Out\(0),
	combout => \tmp[1]~8_combout\);

-- Location: LCCOMB_X36_Y28_N12
\tmp[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[1]~9_combout\ = (\Data_In[0]~input_o\) # (!\tmp[1]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data_In[0]~input_o\,
	datad => \tmp[1]~8_combout\,
	combout => \tmp[1]~9_combout\);

-- Location: FF_X35_Y28_N27
\DUO|Q_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DUO|v_Q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUO|Q_Out\(1));

-- Location: LCCOMB_X35_Y28_N26
\tmp[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[2]~10_combout\ = (\DUO|Q_Out\(2) & ((\DUO|Q_Out\(3)) # ((\DUO|Q_Out\(1) & !\DUO|Q_Out\(0))))) # (!\DUO|Q_Out\(2) & (\DUO|Q_Out\(3) & (\DUO|Q_Out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUO|Q_Out\(2),
	datab => \DUO|Q_Out\(3),
	datac => \DUO|Q_Out\(1),
	datad => \DUO|Q_Out\(0),
	combout => \tmp[2]~10_combout\);

-- Location: LCCOMB_X35_Y28_N2
\tmp[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[2]~11_combout\ = (\Data_In[0]~input_o\) # (\tmp[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_In[0]~input_o\,
	datad => \tmp[2]~10_combout\,
	combout => \tmp[2]~11_combout\);

-- Location: LCCOMB_X35_Y28_N6
\tmp[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[3]~12_combout\ = (\DUO|Q_Out\(1) & (((\DUO|Q_Out\(3))))) # (!\DUO|Q_Out\(1) & (\DUO|Q_Out\(2) & ((\DUO|Q_Out\(3)) # (\DUO|Q_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUO|Q_Out\(1),
	datab => \DUO|Q_Out\(2),
	datac => \DUO|Q_Out\(3),
	datad => \DUO|Q_Out\(0),
	combout => \tmp[3]~12_combout\);

-- Location: LCCOMB_X35_Y28_N22
\tmp[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[3]~13_combout\ = (\Data_In[0]~input_o\) # (\tmp[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_In[0]~input_o\,
	datac => \tmp[3]~12_combout\,
	combout => \tmp[3]~13_combout\);

-- Location: LCCOMB_X35_Y28_N8
\LED_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_out~2_combout\ = (\DUO|Q_Out\(1) & (\DUO|Q_Out\(3))) # (!\DUO|Q_Out\(1) & (\DUO|Q_Out\(2) & ((\DUO|Q_Out\(3)) # (!\DUO|Q_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUO|Q_Out\(1),
	datab => \DUO|Q_Out\(3),
	datac => \DUO|Q_Out\(2),
	datad => \DUO|Q_Out\(0),
	combout => \LED_out~2_combout\);

-- Location: LCCOMB_X36_Y28_N2
\LED_out~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_out~10_combout\ = (\Data_In[0]~input_o\) # (\LED_out~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data_In[0]~input_o\,
	datad => \LED_out~2_combout\,
	combout => \LED_out~10_combout\);

-- Location: LCCOMB_X35_Y28_N10
\LED_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_out~5_combout\ = (\DUO|Q_Out\(2) & (((\DUO|Q_Out\(3))))) # (!\DUO|Q_Out\(2) & (\DUO|Q_Out\(1) & ((\DUO|Q_Out\(3)) # (\DUO|Q_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUO|Q_Out\(1),
	datab => \DUO|Q_Out\(2),
	datac => \DUO|Q_Out\(3),
	datad => \DUO|Q_Out\(0),
	combout => \LED_out~5_combout\);

-- Location: LCCOMB_X36_Y28_N8
\LED_out~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_out~11_combout\ = (\Data_In[0]~input_o\) # (\LED_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data_In[0]~input_o\,
	datad => \LED_out~5_combout\,
	combout => \LED_out~11_combout\);

-- Location: LCCOMB_X35_Y28_N0
\LED_out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_out~8_combout\ = (\DUO|Q_Out\(2) & (((\DUO|Q_Out\(3))))) # (!\DUO|Q_Out\(2) & (\DUO|Q_Out\(1) & ((\DUO|Q_Out\(3)) # (!\DUO|Q_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUO|Q_Out\(1),
	datab => \DUO|Q_Out\(2),
	datac => \DUO|Q_Out\(3),
	datad => \DUO|Q_Out\(0),
	combout => \LED_out~8_combout\);

-- Location: LCCOMB_X35_Y28_N16
\LED_out~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED_out~12_combout\ = (\Data_In[0]~input_o\) # (\LED_out~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_In[0]~input_o\,
	datac => \LED_out~8_combout\,
	combout => \LED_out~12_combout\);

-- Location: LCCOMB_X35_Y28_N18
\tmp[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[7]~14_combout\ = (\DUO|Q_Out\(1) & (((!\DUO|Q_Out\(3))))) # (!\DUO|Q_Out\(1) & ((\DUO|Q_Out\(2) & (!\DUO|Q_Out\(3))) # (!\DUO|Q_Out\(2) & (\DUO|Q_Out\(3) & !\DUO|Q_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUO|Q_Out\(1),
	datab => \DUO|Q_Out\(2),
	datac => \DUO|Q_Out\(3),
	datad => \DUO|Q_Out\(0),
	combout => \tmp[7]~14_combout\);

-- Location: LCCOMB_X35_Y28_N28
\tmp[7]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tmp[7]~15_combout\ = (\Data_In[0]~input_o\) # (!\tmp[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_In[0]~input_o\,
	datad => \tmp[7]~14_combout\,
	combout => \tmp[7]~15_combout\);

-- Location: IOIBUF_X0_Y27_N1
\Data_In[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(1),
	o => \Data_In[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\Data_In[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(2),
	o => \Data_In[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\Data_In[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(3),
	o => \Data_In[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\Data_In[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(4),
	o => \Data_In[4]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\Data_In[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(5),
	o => \Data_In[5]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\Data_In[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(6),
	o => \Data_In[6]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\Data_In[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(7),
	o => \Data_In[7]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\Data_In[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(8),
	o => \Data_In[8]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\Data_In[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(9),
	o => \Data_In[9]~input_o\);

ww_LED_out(0) <= \LED_out[0]~output_o\;

ww_LED_out(1) <= \LED_out[1]~output_o\;

ww_LED_out(2) <= \LED_out[2]~output_o\;

ww_LED_out(3) <= \LED_out[3]~output_o\;

ww_LED_out(4) <= \LED_out[4]~output_o\;

ww_LED_out(5) <= \LED_out[5]~output_o\;

ww_LED_out(6) <= \LED_out[6]~output_o\;

ww_LED_out(7) <= \LED_out[7]~output_o\;
END structure;


