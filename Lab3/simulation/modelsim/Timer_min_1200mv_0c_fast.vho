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

-- DATE "05/04/2022 19:32:59"

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
	Start : IN std_logic;
	Data_in : IN std_logic_vector(9 DOWNTO 0);
	Time_out : OUT std_logic;
	OSeg0 : OUT std_logic_vector(7 DOWNTO 0);
	OSeg1 : OUT std_logic_vector(7 DOWNTO 0);
	OSeg2 : OUT std_logic_vector(7 DOWNTO 0);
	OTens_seconds : OUT std_logic_vector(3 DOWNTO 0)
	);
END Timer;

-- Design Ports Information
-- Data_in[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[5]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[7]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[8]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_out	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg0[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg0[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg0[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg0[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg0[4]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg0[5]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg0[6]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg0[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg1[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg1[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg1[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg1[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg1[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg1[5]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg1[6]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg1[7]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg2[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg2[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg2[2]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg2[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg2[4]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg2[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg2[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OSeg2[7]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTens_seconds[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTens_seconds[1]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTens_seconds[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTens_seconds[3]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Start : std_logic;
SIGNAL ww_Data_in : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Time_out : std_logic;
SIGNAL ww_OSeg0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OSeg1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OSeg2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OTens_seconds : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \Data_in[0]~input_o\ : std_logic;
SIGNAL \Data_in[1]~input_o\ : std_logic;
SIGNAL \Data_in[2]~input_o\ : std_logic;
SIGNAL \Data_in[3]~input_o\ : std_logic;
SIGNAL \Data_in[4]~input_o\ : std_logic;
SIGNAL \Data_in[5]~input_o\ : std_logic;
SIGNAL \Data_in[6]~input_o\ : std_logic;
SIGNAL \Data_in[7]~input_o\ : std_logic;
SIGNAL \Data_in[8]~input_o\ : std_logic;
SIGNAL \Data_in[9]~input_o\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \Time_out~output_o\ : std_logic;
SIGNAL \OSeg0[0]~output_o\ : std_logic;
SIGNAL \OSeg0[1]~output_o\ : std_logic;
SIGNAL \OSeg0[2]~output_o\ : std_logic;
SIGNAL \OSeg0[3]~output_o\ : std_logic;
SIGNAL \OSeg0[4]~output_o\ : std_logic;
SIGNAL \OSeg0[5]~output_o\ : std_logic;
SIGNAL \OSeg0[6]~output_o\ : std_logic;
SIGNAL \OSeg0[7]~output_o\ : std_logic;
SIGNAL \OSeg1[0]~output_o\ : std_logic;
SIGNAL \OSeg1[1]~output_o\ : std_logic;
SIGNAL \OSeg1[2]~output_o\ : std_logic;
SIGNAL \OSeg1[3]~output_o\ : std_logic;
SIGNAL \OSeg1[4]~output_o\ : std_logic;
SIGNAL \OSeg1[5]~output_o\ : std_logic;
SIGNAL \OSeg1[6]~output_o\ : std_logic;
SIGNAL \OSeg1[7]~output_o\ : std_logic;
SIGNAL \OSeg2[0]~output_o\ : std_logic;
SIGNAL \OSeg2[1]~output_o\ : std_logic;
SIGNAL \OSeg2[2]~output_o\ : std_logic;
SIGNAL \OSeg2[3]~output_o\ : std_logic;
SIGNAL \OSeg2[4]~output_o\ : std_logic;
SIGNAL \OSeg2[5]~output_o\ : std_logic;
SIGNAL \OSeg2[6]~output_o\ : std_logic;
SIGNAL \OSeg2[7]~output_o\ : std_logic;
SIGNAL \OTens_seconds[0]~output_o\ : std_logic;
SIGNAL \OTens_seconds[1]~output_o\ : std_logic;
SIGNAL \OTens_seconds[2]~output_o\ : std_logic;
SIGNAL \OTens_seconds[3]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Enable~0_combout\ : std_logic;
SIGNAL \Enable~q\ : std_logic;
SIGNAL \BCD3|Q_Out1~4_combout\ : std_logic;
SIGNAL \BCD3|Q_Out1[0]~feeder_combout\ : std_logic;
SIGNAL \BCD3|Add0~0_combout\ : std_logic;
SIGNAL \BCD3|Q_Out1~2_combout\ : std_logic;
SIGNAL \BCD3|Q_Out1[3]~0_combout\ : std_logic;
SIGNAL \BCD3|Q_Out1~1_combout\ : std_logic;
SIGNAL \BCD3|Add0~1_combout\ : std_logic;
SIGNAL \BCD3|Q_Out1~3_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Seg0[2]~feeder_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Seg0~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Seg0[5]~feeder_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \BCD2|Q_Out1~0_combout\ : std_logic;
SIGNAL \BCD2|Q_Out1[0]~feeder_combout\ : std_logic;
SIGNAL \BCD2|Q_Out1~2_combout\ : std_logic;
SIGNAL \BCD2|Q_Out1[0]~1_combout\ : std_logic;
SIGNAL \BCD2|Add0~0_combout\ : std_logic;
SIGNAL \BCD2|Q_Out1~5_combout\ : std_logic;
SIGNAL \BCD2|Q_Out1~3_combout\ : std_logic;
SIGNAL \BCD2|Q_Out1~4_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Seg1[2]~feeder_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Seg1[3]~feeder_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Seg1~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Seg1[5]~feeder_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Seg1[6]~feeder_combout\ : std_logic;
SIGNAL \Seg1[7]~feeder_combout\ : std_logic;
SIGNAL \Seg2[1]~feeder_combout\ : std_logic;
SIGNAL \Seg2[2]~feeder_combout\ : std_logic;
SIGNAL \Seg2[3]~feeder_combout\ : std_logic;
SIGNAL \Seg2[4]~feeder_combout\ : std_logic;
SIGNAL \BCD1|Q_Out1~0_combout\ : std_logic;
SIGNAL \BCD1|Q_Out1[0]~feeder_combout\ : std_logic;
SIGNAL \BCD1|Q_Out1~4_combout\ : std_logic;
SIGNAL \BCD1|Q_Out1~5_combout\ : std_logic;
SIGNAL \BCD1|Q_Out1[3]~1_combout\ : std_logic;
SIGNAL \BCD1|Q_Out1~2_combout\ : std_logic;
SIGNAL \BCD1|Add0~0_combout\ : std_logic;
SIGNAL \BCD1|Q_Out1~3_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Seg2[5]~feeder_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Seg2[6]~feeder_combout\ : std_logic;
SIGNAL \Seg2[7]~feeder_combout\ : std_logic;
SIGNAL Seg2 : std_logic_vector(7 DOWNTO 0);
SIGNAL Seg1 : std_logic_vector(7 DOWNTO 0);
SIGNAL Seg0 : std_logic_vector(7 DOWNTO 0);
SIGNAL \BCD1|Q_Out1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BCD2|Q_Out1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BCD3|Q_Out1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Start~input_o\ : std_logic;
SIGNAL \ALT_INV_Enable~q\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Start <= Start;
ww_Data_in <= Data_in;
Time_out <= ww_Time_out;
OSeg0 <= ww_OSeg0;
OSeg1 <= ww_OSeg1;
OSeg2 <= ww_OSeg2;
OTens_seconds <= ww_OTens_seconds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);
\ALT_INV_Start~input_o\ <= NOT \Start~input_o\;
\ALT_INV_Enable~q\ <= NOT \Enable~q\;

-- Location: LCCOMB_X4_Y10_N28
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\BCD1|Q_Out1\(2) & ((\BCD1|Q_Out1\(3)) # ((\BCD1|Q_Out1\(0) & \BCD1|Q_Out1\(1))))) # (!\BCD1|Q_Out1\(2) & (\BCD1|Q_Out1\(3) $ (((!\BCD1|Q_Out1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1|Q_Out1\(3),
	datab => \BCD1|Q_Out1\(0),
	datac => \BCD1|Q_Out1\(2),
	datad => \BCD1|Q_Out1\(1),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X4_Y10_N2
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\BCD1|Q_Out1\(0) & ((\BCD1|Q_Out1\(1)) # (\BCD1|Q_Out1\(3) $ (!\BCD1|Q_Out1\(2))))) # (!\BCD1|Q_Out1\(0) & ((\BCD1|Q_Out1\(2) & (\BCD1|Q_Out1\(3))) # (!\BCD1|Q_Out1\(2) & ((\BCD1|Q_Out1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1|Q_Out1\(3),
	datab => \BCD1|Q_Out1\(0),
	datac => \BCD1|Q_Out1\(1),
	datad => \BCD1|Q_Out1\(2),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X4_Y10_N6
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\BCD1|Q_Out1\(0)) # ((\BCD1|Q_Out1\(1) & (\BCD1|Q_Out1\(3))) # (!\BCD1|Q_Out1\(1) & ((\BCD1|Q_Out1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1|Q_Out1\(3),
	datab => \BCD1|Q_Out1\(1),
	datac => \BCD1|Q_Out1\(0),
	datad => \BCD1|Q_Out1\(2),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X4_Y10_N20
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\BCD1|Q_Out1\(1) & ((\BCD1|Q_Out1\(3)) # ((\BCD1|Q_Out1\(0) & \BCD1|Q_Out1\(2))))) # (!\BCD1|Q_Out1\(1) & (\BCD1|Q_Out1\(2) $ (((!\BCD1|Q_Out1\(3) & \BCD1|Q_Out1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1|Q_Out1\(3),
	datab => \BCD1|Q_Out1\(1),
	datac => \BCD1|Q_Out1\(0),
	datad => \BCD1|Q_Out1\(2),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X4_Y10_N30
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\BCD1|Q_Out1\(1) & (\BCD1|Q_Out1\(3))) # (!\BCD1|Q_Out1\(1) & (\BCD1|Q_Out1\(2) $ (((!\BCD1|Q_Out1\(3) & \BCD1|Q_Out1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1|Q_Out1\(3),
	datab => \BCD1|Q_Out1\(1),
	datac => \BCD1|Q_Out1\(0),
	datad => \BCD1|Q_Out1\(2),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X4_Y10_N0
\rtl~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((!\BCD1|Q_Out1\(3) & (!\BCD1|Q_Out1\(0) & (!\BCD1|Q_Out1\(2) & !\BCD1|Q_Out1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1|Q_Out1\(3),
	datab => \BCD1|Q_Out1\(0),
	datac => \BCD1|Q_Out1\(2),
	datad => \BCD1|Q_Out1\(1),
	combout => \rtl~0_combout\);

-- Location: LCCOMB_X1_Y10_N18
\rtl~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = LCELL((!\BCD2|Q_Out1\(0) & (!\BCD2|Q_Out1\(3) & (!\BCD2|Q_Out1\(2) & !\BCD2|Q_Out1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2|Q_Out1\(0),
	datab => \BCD2|Q_Out1\(3),
	datac => \BCD2|Q_Out1\(2),
	datad => \BCD2|Q_Out1\(1),
	combout => \rtl~1_combout\);

-- Location: IOIBUF_X0_Y10_N1
\Start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: CLKCTRL_G2
\rtl~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~1clkctrl_outclk\);

-- Location: IOOBUF_X41_Y17_N9
\Time_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Time_out~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\OSeg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OSeg0[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\OSeg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg0(1),
	devoe => ww_devoe,
	o => \OSeg0[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\OSeg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg0(2),
	devoe => ww_devoe,
	o => \OSeg0[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\OSeg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg0(3),
	devoe => ww_devoe,
	o => \OSeg0[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\OSeg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg0(4),
	devoe => ww_devoe,
	o => \OSeg0[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\OSeg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg0(5),
	devoe => ww_devoe,
	o => \OSeg0[5]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\OSeg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg0(6),
	devoe => ww_devoe,
	o => \OSeg0[6]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\OSeg0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg0(7),
	devoe => ww_devoe,
	o => \OSeg0[7]~output_o\);

-- Location: IOOBUF_X41_Y2_N9
\OSeg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OSeg1[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\OSeg1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg1(1),
	devoe => ww_devoe,
	o => \OSeg1[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\OSeg1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg1(2),
	devoe => ww_devoe,
	o => \OSeg1[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\OSeg1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg1(3),
	devoe => ww_devoe,
	o => \OSeg1[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\OSeg1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg1(4),
	devoe => ww_devoe,
	o => \OSeg1[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\OSeg1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg1(5),
	devoe => ww_devoe,
	o => \OSeg1[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\OSeg1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg1(6),
	devoe => ww_devoe,
	o => \OSeg1[6]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\OSeg1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg1(7),
	devoe => ww_devoe,
	o => \OSeg1[7]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\OSeg2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OSeg2[0]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\OSeg2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg2(1),
	devoe => ww_devoe,
	o => \OSeg2[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\OSeg2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg2(2),
	devoe => ww_devoe,
	o => \OSeg2[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\OSeg2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg2(3),
	devoe => ww_devoe,
	o => \OSeg2[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\OSeg2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg2(4),
	devoe => ww_devoe,
	o => \OSeg2[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\OSeg2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg2(5),
	devoe => ww_devoe,
	o => \OSeg2[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\OSeg2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg2(6),
	devoe => ww_devoe,
	o => \OSeg2[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\OSeg2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Seg2(7),
	devoe => ww_devoe,
	o => \OSeg2[7]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\OTens_seconds[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD2|Q_Out1\(0),
	devoe => ww_devoe,
	o => \OTens_seconds[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\OTens_seconds[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD2|Q_Out1\(1),
	devoe => ww_devoe,
	o => \OTens_seconds[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\OTens_seconds[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD2|Q_Out1\(2),
	devoe => ww_devoe,
	o => \OTens_seconds[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\OTens_seconds[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD2|Q_Out1\(3),
	devoe => ww_devoe,
	o => \OTens_seconds[3]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\Clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X1_Y10_N0
\Enable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Enable~0_combout\ = !\Enable~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Enable~q\,
	combout => \Enable~0_combout\);

-- Location: FF_X1_Y10_N1
Enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Start~input_o\,
	d => \Enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enable~q\);

-- Location: LCCOMB_X2_Y10_N18
\BCD3|Q_Out1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD3|Q_Out1~4_combout\ = (!\BCD3|Q_Out1\(0) & \Enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3|Q_Out1\(0),
	datad => \Enable~q\,
	combout => \BCD3|Q_Out1~4_combout\);

-- Location: LCCOMB_X2_Y10_N22
\BCD3|Q_Out1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD3|Q_Out1[0]~feeder_combout\ = \BCD3|Q_Out1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BCD3|Q_Out1~4_combout\,
	combout => \BCD3|Q_Out1[0]~feeder_combout\);

-- Location: FF_X2_Y10_N23
\BCD3|Q_Out1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \BCD3|Q_Out1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD3|Q_Out1\(0));

-- Location: LCCOMB_X2_Y10_N10
\BCD3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD3|Add0~0_combout\ = \BCD3|Q_Out1\(2) $ (((\BCD3|Q_Out1\(0) & \BCD3|Q_Out1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3|Q_Out1\(0),
	datab => \BCD3|Q_Out1\(2),
	datad => \BCD3|Q_Out1\(1),
	combout => \BCD3|Add0~0_combout\);

-- Location: LCCOMB_X2_Y10_N2
\BCD3|Q_Out1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD3|Q_Out1~2_combout\ = (\Enable~q\ & (\BCD3|Q_Out1[3]~0_combout\ & \BCD3|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~q\,
	datac => \BCD3|Q_Out1[3]~0_combout\,
	datad => \BCD3|Add0~0_combout\,
	combout => \BCD3|Q_Out1~2_combout\);

-- Location: FF_X2_Y10_N3
\BCD3|Q_Out1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \BCD3|Q_Out1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD3|Q_Out1\(2));

-- Location: LCCOMB_X2_Y10_N14
\BCD3|Q_Out1[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD3|Q_Out1[3]~0_combout\ = ((\BCD3|Q_Out1\(1)) # ((\BCD3|Q_Out1\(2)) # (!\BCD3|Q_Out1\(0)))) # (!\BCD3|Q_Out1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3|Q_Out1\(3),
	datab => \BCD3|Q_Out1\(1),
	datac => \BCD3|Q_Out1\(0),
	datad => \BCD3|Q_Out1\(2),
	combout => \BCD3|Q_Out1[3]~0_combout\);

-- Location: LCCOMB_X2_Y10_N8
\BCD3|Q_Out1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD3|Q_Out1~1_combout\ = (\Enable~q\ & (\BCD3|Q_Out1[3]~0_combout\ & (\BCD3|Q_Out1\(0) $ (\BCD3|Q_Out1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3|Q_Out1\(0),
	datab => \Enable~q\,
	datac => \BCD3|Q_Out1\(1),
	datad => \BCD3|Q_Out1[3]~0_combout\,
	combout => \BCD3|Q_Out1~1_combout\);

-- Location: FF_X2_Y10_N9
\BCD3|Q_Out1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \BCD3|Q_Out1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD3|Q_Out1\(1));

-- Location: LCCOMB_X2_Y10_N0
\BCD3|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD3|Add0~1_combout\ = \BCD3|Q_Out1\(3) $ (((\BCD3|Q_Out1\(1) & (\BCD3|Q_Out1\(0) & \BCD3|Q_Out1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3|Q_Out1\(3),
	datab => \BCD3|Q_Out1\(1),
	datac => \BCD3|Q_Out1\(0),
	datad => \BCD3|Q_Out1\(2),
	combout => \BCD3|Add0~1_combout\);

-- Location: LCCOMB_X2_Y10_N12
\BCD3|Q_Out1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD3|Q_Out1~3_combout\ = (\Enable~q\ & (\BCD3|Q_Out1[3]~0_combout\ & \BCD3|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~q\,
	datac => \BCD3|Q_Out1[3]~0_combout\,
	datad => \BCD3|Add0~1_combout\,
	combout => \BCD3|Q_Out1~3_combout\);

-- Location: FF_X2_Y10_N13
\BCD3|Q_Out1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~1clkctrl_outclk\,
	d => \BCD3|Q_Out1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD3|Q_Out1\(3));

-- Location: LCCOMB_X3_Y10_N24
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\BCD3|Q_Out1\(2)) # ((\BCD3|Q_Out1\(3)) # (!\BCD3|Q_Out1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3|Q_Out1\(2),
	datab => \BCD3|Q_Out1\(1),
	datad => \BCD3|Q_Out1\(3),
	combout => \Mux5~0_combout\);

-- Location: FF_X3_Y10_N25
\Seg0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg0(1));

-- Location: LCCOMB_X2_Y10_N28
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\BCD3|Q_Out1\(2)) # ((\BCD3|Q_Out1\(1)) # ((\BCD3|Q_Out1\(0)) # (\BCD3|Q_Out1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3|Q_Out1\(2),
	datab => \BCD3|Q_Out1\(1),
	datac => \BCD3|Q_Out1\(0),
	datad => \BCD3|Q_Out1\(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X3_Y10_N18
\Seg0[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg0[2]~feeder_combout\ = \Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux4~0_combout\,
	combout => \Seg0[2]~feeder_combout\);

-- Location: FF_X3_Y10_N19
\Seg0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg0[2]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg0(2));

-- Location: LCCOMB_X3_Y10_N20
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\BCD3|Q_Out1\(2)) # ((\BCD3|Q_Out1\(0)) # (\BCD3|Q_Out1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3|Q_Out1\(2),
	datab => \BCD3|Q_Out1\(0),
	datad => \BCD3|Q_Out1\(3),
	combout => \Mux4~1_combout\);

-- Location: FF_X3_Y10_N21
\Seg0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux4~1_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg0(3));

-- Location: LCCOMB_X2_Y10_N6
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\BCD3|Q_Out1\(3)) # ((\BCD3|Q_Out1\(2)) # ((!\BCD3|Q_Out1\(1) & \BCD3|Q_Out1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3|Q_Out1\(3),
	datab => \BCD3|Q_Out1\(1),
	datac => \BCD3|Q_Out1\(0),
	datad => \BCD3|Q_Out1\(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X2_Y10_N4
\Seg0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg0~0_combout\ = (\Mux0~0_combout\) # (!\Enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Enable~q\,
	datad => \Mux0~0_combout\,
	combout => \Seg0~0_combout\);

-- Location: FF_X2_Y10_N5
\Seg0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg0(4));

-- Location: LCCOMB_X2_Y10_N24
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\BCD3|Q_Out1\(2)) # ((\BCD3|Q_Out1\(3)) # ((!\BCD3|Q_Out1\(0) & \BCD3|Q_Out1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3|Q_Out1\(0),
	datab => \BCD3|Q_Out1\(2),
	datac => \BCD3|Q_Out1\(1),
	datad => \BCD3|Q_Out1\(3),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X3_Y10_N6
\Seg0[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg0[5]~feeder_combout\ = \Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~0_combout\,
	combout => \Seg0[5]~feeder_combout\);

-- Location: FF_X3_Y10_N7
\Seg0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg0[5]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg0(5));

-- Location: LCCOMB_X3_Y10_N8
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\BCD3|Q_Out1\(2)) # (\BCD3|Q_Out1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD3|Q_Out1\(2),
	datad => \BCD3|Q_Out1\(3),
	combout => \Mux5~1_combout\);

-- Location: FF_X3_Y10_N9
\Seg0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux5~1_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg0(6));

-- Location: FF_X2_Y10_N11
\Seg0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Seg0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg0(7));

-- Location: LCCOMB_X1_Y10_N12
\BCD2|Q_Out1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD2|Q_Out1~0_combout\ = (!\BCD2|Q_Out1\(0) & \Enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD2|Q_Out1\(0),
	datad => \Enable~q\,
	combout => \BCD2|Q_Out1~0_combout\);

-- Location: LCCOMB_X1_Y10_N30
\BCD2|Q_Out1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD2|Q_Out1[0]~feeder_combout\ = \BCD2|Q_Out1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BCD2|Q_Out1~0_combout\,
	combout => \BCD2|Q_Out1[0]~feeder_combout\);

-- Location: FF_X1_Y10_N31
\BCD2|Q_Out1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \BCD2|Q_Out1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD2|Q_Out1\(0));

-- Location: LCCOMB_X1_Y10_N20
\BCD2|Q_Out1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD2|Q_Out1~2_combout\ = (\Enable~q\ & (\BCD2|Q_Out1[0]~1_combout\ & (\BCD2|Q_Out1\(0) $ (\BCD2|Q_Out1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2|Q_Out1\(0),
	datab => \Enable~q\,
	datac => \BCD2|Q_Out1\(1),
	datad => \BCD2|Q_Out1[0]~1_combout\,
	combout => \BCD2|Q_Out1~2_combout\);

-- Location: FF_X1_Y10_N21
\BCD2|Q_Out1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \BCD2|Q_Out1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD2|Q_Out1\(1));

-- Location: LCCOMB_X1_Y10_N4
\BCD2|Q_Out1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD2|Q_Out1[0]~1_combout\ = (((\BCD2|Q_Out1\(3)) # (\BCD2|Q_Out1\(1))) # (!\BCD2|Q_Out1\(0))) # (!\BCD2|Q_Out1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2|Q_Out1\(2),
	datab => \BCD2|Q_Out1\(0),
	datac => \BCD2|Q_Out1\(3),
	datad => \BCD2|Q_Out1\(1),
	combout => \BCD2|Q_Out1[0]~1_combout\);

-- Location: LCCOMB_X1_Y10_N10
\BCD2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD2|Add0~0_combout\ = \BCD2|Q_Out1\(3) $ (((\BCD2|Q_Out1\(2) & (\BCD2|Q_Out1\(0) & \BCD2|Q_Out1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2|Q_Out1\(2),
	datab => \BCD2|Q_Out1\(0),
	datac => \BCD2|Q_Out1\(3),
	datad => \BCD2|Q_Out1\(1),
	combout => \BCD2|Add0~0_combout\);

-- Location: LCCOMB_X1_Y10_N14
\BCD2|Q_Out1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD2|Q_Out1~5_combout\ = (\Enable~q\ & (\BCD2|Q_Out1[0]~1_combout\ & \BCD2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~q\,
	datac => \BCD2|Q_Out1[0]~1_combout\,
	datad => \BCD2|Add0~0_combout\,
	combout => \BCD2|Q_Out1~5_combout\);

-- Location: FF_X1_Y10_N15
\BCD2|Q_Out1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \BCD2|Q_Out1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD2|Q_Out1\(3));

-- Location: LCCOMB_X1_Y10_N28
\BCD2|Q_Out1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD2|Q_Out1~3_combout\ = ((\BCD2|Q_Out1\(3) & !\BCD2|Q_Out1\(1))) # (!\BCD2|Q_Out1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2|Q_Out1\(0),
	datac => \BCD2|Q_Out1\(3),
	datad => \BCD2|Q_Out1\(1),
	combout => \BCD2|Q_Out1~3_combout\);

-- Location: LCCOMB_X1_Y10_N22
\BCD2|Q_Out1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD2|Q_Out1~4_combout\ = (\Enable~q\ & ((\BCD2|Q_Out1\(2) & ((\BCD2|Q_Out1~3_combout\))) # (!\BCD2|Q_Out1\(2) & (\BCD2|Q_Out1\(1) & !\BCD2|Q_Out1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2|Q_Out1\(1),
	datab => \Enable~q\,
	datac => \BCD2|Q_Out1\(2),
	datad => \BCD2|Q_Out1~3_combout\,
	combout => \BCD2|Q_Out1~4_combout\);

-- Location: FF_X1_Y10_N23
\BCD2|Q_Out1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \BCD2|Q_Out1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD2|Q_Out1\(2));

-- Location: LCCOMB_X3_Y10_N30
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\BCD2|Q_Out1\(3)) # (\BCD2|Q_Out1\(2) $ (!\BCD2|Q_Out1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2|Q_Out1\(3),
	datab => \BCD2|Q_Out1\(2),
	datad => \BCD2|Q_Out1\(1),
	combout => \Mux11~0_combout\);

-- Location: FF_X3_Y10_N31
\Seg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Mux11~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg1(1));

-- Location: LCCOMB_X2_Y10_N30
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\BCD2|Q_Out1\(1)) # ((\BCD2|Q_Out1\(3)) # ((\BCD2|Q_Out1\(0) & !\BCD2|Q_Out1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2|Q_Out1\(0),
	datab => \BCD2|Q_Out1\(1),
	datac => \BCD2|Q_Out1\(3),
	datad => \BCD2|Q_Out1\(2),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X3_Y10_N12
\Seg1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg1[2]~feeder_combout\ = \Mux10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux10~0_combout\,
	combout => \Seg1[2]~feeder_combout\);

-- Location: FF_X3_Y10_N13
\Seg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg1[2]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg1(2));

-- Location: LCCOMB_X1_Y10_N2
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\BCD2|Q_Out1\(0)) # ((\BCD2|Q_Out1\(3)) # (\BCD2|Q_Out1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD2|Q_Out1\(0),
	datac => \BCD2|Q_Out1\(3),
	datad => \BCD2|Q_Out1\(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X1_Y11_N16
\Seg1[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg1[3]~feeder_combout\ = \Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal1~0_combout\,
	combout => \Seg1[3]~feeder_combout\);

-- Location: FF_X1_Y11_N17
\Seg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg1[3]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg1(3));

-- Location: LCCOMB_X2_Y10_N16
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\BCD2|Q_Out1\(3)) # (\BCD2|Q_Out1\(2) $ (((\BCD2|Q_Out1\(0) & !\BCD2|Q_Out1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2|Q_Out1\(0),
	datab => \BCD2|Q_Out1\(2),
	datac => \BCD2|Q_Out1\(3),
	datad => \BCD2|Q_Out1\(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X2_Y10_N20
\Seg1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg1~0_combout\ = (\Mux6~0_combout\) # (!\Enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Enable~q\,
	datad => \Mux6~0_combout\,
	combout => \Seg1~0_combout\);

-- Location: FF_X2_Y10_N21
\Seg1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg1(4));

-- Location: LCCOMB_X1_Y10_N26
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\BCD2|Q_Out1\(3)) # ((\BCD2|Q_Out1\(1) & ((\BCD2|Q_Out1\(2)) # (!\BCD2|Q_Out1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2|Q_Out1\(2),
	datab => \BCD2|Q_Out1\(0),
	datac => \BCD2|Q_Out1\(3),
	datad => \BCD2|Q_Out1\(1),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X3_Y10_N2
\Seg1[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg1[5]~feeder_combout\ = \Mux8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux8~0_combout\,
	combout => \Seg1[5]~feeder_combout\);

-- Location: FF_X3_Y10_N3
\Seg1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg1[5]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg1(5));

-- Location: LCCOMB_X1_Y10_N24
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\BCD2|Q_Out1\(3)) # ((\BCD2|Q_Out1\(2) & ((\BCD2|Q_Out1\(0)) # (\BCD2|Q_Out1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD2|Q_Out1\(0),
	datab => \BCD2|Q_Out1\(1),
	datac => \BCD2|Q_Out1\(2),
	datad => \BCD2|Q_Out1\(3),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X3_Y10_N4
\Seg1[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg1[6]~feeder_combout\ = \Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux7~0_combout\,
	combout => \Seg1[6]~feeder_combout\);

-- Location: FF_X3_Y10_N5
\Seg1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg1[6]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg1(6));

-- Location: LCCOMB_X2_Y10_N26
\Seg1[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg1[7]~feeder_combout\ = \Seg1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Seg1~0_combout\,
	combout => \Seg1[7]~feeder_combout\);

-- Location: FF_X2_Y10_N27
\Seg1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg1[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg1(7));

-- Location: LCCOMB_X3_Y10_N26
\Seg2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg2[1]~feeder_combout\ = \Mux18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	combout => \Seg2[1]~feeder_combout\);

-- Location: FF_X3_Y10_N27
\Seg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg2[1]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg2(1));

-- Location: LCCOMB_X3_Y10_N16
\Seg2[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg2[2]~feeder_combout\ = \Mux17~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	combout => \Seg2[2]~feeder_combout\);

-- Location: FF_X3_Y10_N17
\Seg2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg2[2]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg2(2));

-- Location: LCCOMB_X3_Y10_N22
\Seg2[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg2[3]~feeder_combout\ = \Mux16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	combout => \Seg2[3]~feeder_combout\);

-- Location: FF_X3_Y10_N23
\Seg2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg2[3]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg2(3));

-- Location: LCCOMB_X3_Y10_N28
\Seg2[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg2[4]~feeder_combout\ = \Mux15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	combout => \Seg2[4]~feeder_combout\);

-- Location: FF_X3_Y10_N29
\Seg2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg2[4]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg2(4));

-- Location: LCCOMB_X4_Y10_N24
\BCD1|Q_Out1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD1|Q_Out1~0_combout\ = (!\BCD1|Q_Out1\(0) & \Enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD1|Q_Out1\(0),
	datad => \Enable~q\,
	combout => \BCD1|Q_Out1~0_combout\);

-- Location: LCCOMB_X4_Y10_N14
\BCD1|Q_Out1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD1|Q_Out1[0]~feeder_combout\ = \BCD1|Q_Out1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD1|Q_Out1~0_combout\,
	combout => \BCD1|Q_Out1[0]~feeder_combout\);

-- Location: FF_X4_Y10_N15
\BCD1|Q_Out1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BCD1|Q_Out1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD1|Q_Out1\(0));

-- Location: LCCOMB_X4_Y10_N4
\BCD1|Q_Out1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD1|Q_Out1~4_combout\ = (\BCD1|Q_Out1\(2) $ (\BCD1|Q_Out1\(1))) # (!\BCD1|Q_Out1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1|Q_Out1\(2),
	datac => \BCD1|Q_Out1\(0),
	datad => \BCD1|Q_Out1\(1),
	combout => \BCD1|Q_Out1~4_combout\);

-- Location: LCCOMB_X4_Y10_N26
\BCD1|Q_Out1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD1|Q_Out1~5_combout\ = (\Enable~q\ & ((\BCD1|Q_Out1~4_combout\ & ((\BCD1|Q_Out1\(3)))) # (!\BCD1|Q_Out1~4_combout\ & (\BCD1|Q_Out1\(2) & !\BCD1|Q_Out1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1|Q_Out1\(2),
	datab => \BCD1|Q_Out1~4_combout\,
	datac => \BCD1|Q_Out1\(3),
	datad => \Enable~q\,
	combout => \BCD1|Q_Out1~5_combout\);

-- Location: FF_X4_Y10_N27
\BCD1|Q_Out1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \BCD1|Q_Out1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD1|Q_Out1\(3));

-- Location: LCCOMB_X4_Y10_N12
\BCD1|Q_Out1[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD1|Q_Out1[3]~1_combout\ = (\BCD1|Q_Out1\(2)) # (((\BCD1|Q_Out1\(1)) # (!\BCD1|Q_Out1\(0))) # (!\BCD1|Q_Out1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1|Q_Out1\(2),
	datab => \BCD1|Q_Out1\(3),
	datac => \BCD1|Q_Out1\(0),
	datad => \BCD1|Q_Out1\(1),
	combout => \BCD1|Q_Out1[3]~1_combout\);

-- Location: LCCOMB_X4_Y10_N8
\BCD1|Q_Out1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD1|Q_Out1~2_combout\ = (\Enable~q\ & (\BCD1|Q_Out1[3]~1_combout\ & (\BCD1|Q_Out1\(0) $ (\BCD1|Q_Out1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~q\,
	datab => \BCD1|Q_Out1\(0),
	datac => \BCD1|Q_Out1\(1),
	datad => \BCD1|Q_Out1[3]~1_combout\,
	combout => \BCD1|Q_Out1~2_combout\);

-- Location: FF_X4_Y10_N9
\BCD1|Q_Out1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \BCD1|Q_Out1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD1|Q_Out1\(1));

-- Location: LCCOMB_X4_Y10_N18
\BCD1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD1|Add0~0_combout\ = \BCD1|Q_Out1\(2) $ (((\BCD1|Q_Out1\(0) & \BCD1|Q_Out1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1|Q_Out1\(0),
	datac => \BCD1|Q_Out1\(1),
	datad => \BCD1|Q_Out1\(2),
	combout => \BCD1|Add0~0_combout\);

-- Location: LCCOMB_X4_Y10_N22
\BCD1|Q_Out1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD1|Q_Out1~3_combout\ = (\BCD1|Add0~0_combout\ & (\Enable~q\ & \BCD1|Q_Out1[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD1|Add0~0_combout\,
	datac => \Enable~q\,
	datad => \BCD1|Q_Out1[3]~1_combout\,
	combout => \BCD1|Q_Out1~3_combout\);

-- Location: FF_X4_Y10_N23
\BCD1|Q_Out1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \BCD1|Q_Out1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD1|Q_Out1\(2));

-- Location: LCCOMB_X4_Y10_N10
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\BCD1|Q_Out1\(2) & (\BCD1|Q_Out1\(3))) # (!\BCD1|Q_Out1\(2) & (\BCD1|Q_Out1\(1) & ((\BCD1|Q_Out1\(3)) # (!\BCD1|Q_Out1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1|Q_Out1\(3),
	datab => \BCD1|Q_Out1\(1),
	datac => \BCD1|Q_Out1\(0),
	datad => \BCD1|Q_Out1\(2),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X3_Y10_N10
\Seg2[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg2[5]~feeder_combout\ = \Mux14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux14~0_combout\,
	combout => \Seg2[5]~feeder_combout\);

-- Location: FF_X3_Y10_N11
\Seg2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg2[5]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg2(5));

-- Location: LCCOMB_X4_Y10_N16
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\BCD1|Q_Out1\(3) & (((\BCD1|Q_Out1\(2)) # (\BCD1|Q_Out1\(1))))) # (!\BCD1|Q_Out1\(3) & (\BCD1|Q_Out1\(2) & (\BCD1|Q_Out1\(0) $ (\BCD1|Q_Out1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD1|Q_Out1\(3),
	datab => \BCD1|Q_Out1\(0),
	datac => \BCD1|Q_Out1\(2),
	datad => \BCD1|Q_Out1\(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X3_Y10_N0
\Seg2[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg2[6]~feeder_combout\ = \Mux13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux13~0_combout\,
	combout => \Seg2[6]~feeder_combout\);

-- Location: FF_X3_Y10_N1
\Seg2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg2[6]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg2(6));

-- Location: LCCOMB_X3_Y10_N14
\Seg2[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Seg2[7]~feeder_combout\ = \Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	combout => \Seg2[7]~feeder_combout\);

-- Location: FF_X3_Y10_N15
\Seg2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Seg2[7]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_Enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Seg2(7));

-- Location: IOIBUF_X37_Y29_N1
\Data_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(0),
	o => \Data_in[0]~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\Data_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(1),
	o => \Data_in[1]~input_o\);

-- Location: IOIBUF_X28_Y29_N22
\Data_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(2),
	o => \Data_in[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\Data_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(3),
	o => \Data_in[3]~input_o\);

-- Location: IOIBUF_X41_Y14_N22
\Data_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(4),
	o => \Data_in[4]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\Data_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(5),
	o => \Data_in[5]~input_o\);

-- Location: IOIBUF_X23_Y29_N8
\Data_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(6),
	o => \Data_in[6]~input_o\);

-- Location: IOIBUF_X32_Y29_N22
\Data_in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(7),
	o => \Data_in[7]~input_o\);

-- Location: IOIBUF_X3_Y29_N8
\Data_in[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(8),
	o => \Data_in[8]~input_o\);

-- Location: IOIBUF_X39_Y29_N15
\Data_in[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(9),
	o => \Data_in[9]~input_o\);

ww_Time_out <= \Time_out~output_o\;

ww_OSeg0(0) <= \OSeg0[0]~output_o\;

ww_OSeg0(1) <= \OSeg0[1]~output_o\;

ww_OSeg0(2) <= \OSeg0[2]~output_o\;

ww_OSeg0(3) <= \OSeg0[3]~output_o\;

ww_OSeg0(4) <= \OSeg0[4]~output_o\;

ww_OSeg0(5) <= \OSeg0[5]~output_o\;

ww_OSeg0(6) <= \OSeg0[6]~output_o\;

ww_OSeg0(7) <= \OSeg0[7]~output_o\;

ww_OSeg1(0) <= \OSeg1[0]~output_o\;

ww_OSeg1(1) <= \OSeg1[1]~output_o\;

ww_OSeg1(2) <= \OSeg1[2]~output_o\;

ww_OSeg1(3) <= \OSeg1[3]~output_o\;

ww_OSeg1(4) <= \OSeg1[4]~output_o\;

ww_OSeg1(5) <= \OSeg1[5]~output_o\;

ww_OSeg1(6) <= \OSeg1[6]~output_o\;

ww_OSeg1(7) <= \OSeg1[7]~output_o\;

ww_OSeg2(0) <= \OSeg2[0]~output_o\;

ww_OSeg2(1) <= \OSeg2[1]~output_o\;

ww_OSeg2(2) <= \OSeg2[2]~output_o\;

ww_OSeg2(3) <= \OSeg2[3]~output_o\;

ww_OSeg2(4) <= \OSeg2[4]~output_o\;

ww_OSeg2(5) <= \OSeg2[5]~output_o\;

ww_OSeg2(6) <= \OSeg2[6]~output_o\;

ww_OSeg2(7) <= \OSeg2[7]~output_o\;

ww_OTens_seconds(0) <= \OTens_seconds[0]~output_o\;

ww_OTens_seconds(1) <= \OTens_seconds[1]~output_o\;

ww_OTens_seconds(2) <= \OTens_seconds[2]~output_o\;

ww_OTens_seconds(3) <= \OTens_seconds[3]~output_o\;
END structure;


