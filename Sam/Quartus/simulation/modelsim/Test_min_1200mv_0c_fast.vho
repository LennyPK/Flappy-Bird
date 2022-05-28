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

-- DATE "05/29/2022 09:09:14"

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

ENTITY 	Test IS
    PORT (
	horiz_sync_out : OUT std_logic;
	clk : IN std_logic;
	sw0 : IN std_logic;
	pb2 : IN std_logic;
	vert_sync_out : OUT std_logic;
	ledg1 : OUT std_logic;
	sw1 : IN std_logic;
	ledg2 : OUT std_logic;
	sw2 : IN std_logic;
	ledg3 : OUT std_logic;
	sw3 : IN std_logic;
	ledg4 : OUT std_logic;
	sw4 : IN std_logic;
	ledg5 : OUT std_logic;
	sw5 : IN std_logic;
	ledg6 : OUT std_logic;
	sw6 : IN std_logic;
	ledg7 : OUT std_logic;
	sw7 : IN std_logic;
	ledg8 : OUT std_logic;
	sw8 : IN std_logic;
	ledg9 : OUT std_logic;
	sw9 : IN std_logic;
	ledg0 : OUT std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	blue_out : OUT std_logic_vector(3 DOWNTO 0);
	green_out : OUT std_logic_vector(3 DOWNTO 0);
	red_out : OUT std_logic_vector(3 DOWNTO 0);
	seg0 : OUT std_logic_vector(6 DOWNTO 0);
	pb0 : IN std_logic;
	seg1 : OUT std_logic_vector(6 DOWNTO 0);
	pb1 : IN std_logic;
	seg2 : OUT std_logic_vector(6 DOWNTO 0);
	seg3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Test;

-- Design Ports Information
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg1	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg2	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg3	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg4	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg5	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg6	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg7	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg8	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg9	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg0	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_out[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_out[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_out[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_out[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw3	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw4	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw5	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw6	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw7	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw8	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw9	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb0	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb2	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_sw0 : std_logic;
SIGNAL ww_pb2 : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_ledg1 : std_logic;
SIGNAL ww_sw1 : std_logic;
SIGNAL ww_ledg2 : std_logic;
SIGNAL ww_sw2 : std_logic;
SIGNAL ww_ledg3 : std_logic;
SIGNAL ww_sw3 : std_logic;
SIGNAL ww_ledg4 : std_logic;
SIGNAL ww_sw4 : std_logic;
SIGNAL ww_ledg5 : std_logic;
SIGNAL ww_sw5 : std_logic;
SIGNAL ww_ledg6 : std_logic;
SIGNAL ww_sw6 : std_logic;
SIGNAL ww_ledg7 : std_logic;
SIGNAL ww_sw7 : std_logic;
SIGNAL ww_ledg8 : std_logic;
SIGNAL ww_sw8 : std_logic;
SIGNAL ww_ledg9 : std_logic;
SIGNAL ww_sw9 : std_logic;
SIGNAL ww_ledg0 : std_logic;
SIGNAL ww_blue_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_green_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_red_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_pb0 : std_logic;
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_pb1 : std_logic;
SIGNAL ww_seg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst16|char|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst16|char|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst4|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|Add1~4_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[2]~13_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[4]~17_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[5]~19_combout\ : std_logic;
SIGNAL \inst16|line2~q\ : std_logic;
SIGNAL \inst16|line1~q\ : std_logic;
SIGNAL \inst1|blue_out~0_combout\ : std_logic;
SIGNAL \inst4|right_button~0_combout\ : std_logic;
SIGNAL \inst1|process_0~4_combout\ : std_logic;
SIGNAL \inst16|char|Mux0~0_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~6_combout\ : std_logic;
SIGNAL \inst16|char_addr~15_combout\ : std_logic;
SIGNAL \inst16|char_addr~16_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~11_combout\ : std_logic;
SIGNAL \inst16|title~0_combout\ : std_logic;
SIGNAL \inst16|line2~2_combout\ : std_logic;
SIGNAL \inst16|line2~3_combout\ : std_logic;
SIGNAL \inst16|line2~4_combout\ : std_logic;
SIGNAL \inst16|line2~5_combout\ : std_logic;
SIGNAL \inst16|char_addr~20_combout\ : std_logic;
SIGNAL \inst16|line2~6_combout\ : std_logic;
SIGNAL \inst16|line2~8_combout\ : std_logic;
SIGNAL \inst16|line2~9_combout\ : std_logic;
SIGNAL \inst16|line2~10_combout\ : std_logic;
SIGNAL \inst16|line1~0_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|process_0~7_combout\ : std_logic;
SIGNAL \inst1|process_0~8_combout\ : std_logic;
SIGNAL \inst1|process_0~10_combout\ : std_logic;
SIGNAL \inst1|v_count~2_combout\ : std_logic;
SIGNAL \inst16|char_addr~21_combout\ : std_logic;
SIGNAL \inst16|char_addr~22_combout\ : std_logic;
SIGNAL \inst16|char_addr[0]~27_combout\ : std_logic;
SIGNAL \inst16|char_addr~31_combout\ : std_logic;
SIGNAL \inst16|char_addr~36_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[0]~33_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~28_combout\ : std_logic;
SIGNAL \inst16|line2~11_combout\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \inst4|filter[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|filter[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|filter[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|filter[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \inst4|INCNT~0_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[1]~11_combout\ : std_logic;
SIGNAL \inst4|Selector0~0_combout\ : std_logic;
SIGNAL \inst4|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[1]~12\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[2]~14\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[3]~15_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[3]~16\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[4]~18\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[5]~20\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[6]~21_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[6]~22\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[7]~23_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[7]~24\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[8]~25_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[8]~26\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[9]~27_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[9]~28\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[10]~30\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[11]~31_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[10]~29_combout\ : std_logic;
SIGNAL \inst4|Selector1~0_combout\ : std_logic;
SIGNAL \inst4|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst4|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst4|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst4|send_char~0_combout\ : std_logic;
SIGNAL \inst4|send_char~q\ : std_logic;
SIGNAL \inst4|output_ready~0_combout\ : std_logic;
SIGNAL \inst4|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst4|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst4|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst4|output_ready~feeder_combout\ : std_logic;
SIGNAL \inst4|output_ready~q\ : std_logic;
SIGNAL \inst4|Selector3~0_combout\ : std_logic;
SIGNAL \inst4|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst4|INCNT[3]~1_combout\ : std_logic;
SIGNAL \inst4|INCNT~3_combout\ : std_logic;
SIGNAL \inst4|INCNT~2_combout\ : std_logic;
SIGNAL \inst4|INCNT~4_combout\ : std_logic;
SIGNAL \inst4|LessThan1~0_combout\ : std_logic;
SIGNAL \inst4|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst4|READ_CHAR~q\ : std_logic;
SIGNAL \inst4|iready_set~0_combout\ : std_logic;
SIGNAL \inst4|iready_set~q\ : std_logic;
SIGNAL \inst4|Selector4~0_combout\ : std_logic;
SIGNAL \inst4|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst4|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \inst4|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst4|Selector6~0_combout\ : std_logic;
SIGNAL \inst4|Selector6~1_combout\ : std_logic;
SIGNAL \inst4|send_data~q\ : std_logic;
SIGNAL \inst4|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst4|WideOr4~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|h_count~0_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|h_count~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|h_count~2_combout\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|process_0~3_combout\ : std_logic;
SIGNAL \inst1|horiz_sync~q\ : std_logic;
SIGNAL \inst1|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst1|horiz_sync_out~q\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|v_count[9]~1_combout\ : std_logic;
SIGNAL \inst1|Add1~9\ : std_logic;
SIGNAL \inst1|Add1~11\ : std_logic;
SIGNAL \inst1|Add1~12_combout\ : std_logic;
SIGNAL \inst1|v_count[6]~9_combout\ : std_logic;
SIGNAL \inst1|Add1~13\ : std_logic;
SIGNAL \inst1|Add1~14_combout\ : std_logic;
SIGNAL \inst1|v_count[7]~10_combout\ : std_logic;
SIGNAL \inst1|Add1~15\ : std_logic;
SIGNAL \inst1|Add1~17\ : std_logic;
SIGNAL \inst1|Add1~18_combout\ : std_logic;
SIGNAL \inst1|v_count[9]~7_combout\ : std_logic;
SIGNAL \inst1|process_0~6_combout\ : std_logic;
SIGNAL \inst1|process_0~9_combout\ : std_logic;
SIGNAL \inst1|process_0~11_combout\ : std_logic;
SIGNAL \inst1|process_0~12_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|v_count~0_combout\ : std_logic;
SIGNAL \inst1|Add1~1\ : std_logic;
SIGNAL \inst1|Add1~3\ : std_logic;
SIGNAL \inst1|Add1~5\ : std_logic;
SIGNAL \inst1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|v_count[3]~5_combout\ : std_logic;
SIGNAL \inst1|Add1~7\ : std_logic;
SIGNAL \inst1|Add1~8_combout\ : std_logic;
SIGNAL \inst1|v_count[4]~6_combout\ : std_logic;
SIGNAL \inst1|Add1~10_combout\ : std_logic;
SIGNAL \inst1|v_count[5]~8_combout\ : std_logic;
SIGNAL \inst1|Add1~16_combout\ : std_logic;
SIGNAL \inst1|v_count[8]~11_combout\ : std_logic;
SIGNAL \inst1|LessThan7~0_combout\ : std_logic;
SIGNAL \inst1|process_0~5_combout\ : std_logic;
SIGNAL \inst1|vert_sync~q\ : std_logic;
SIGNAL \inst1|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst1|vert_sync_out~q\ : std_logic;
SIGNAL \sw1~input_o\ : std_logic;
SIGNAL \sw2~input_o\ : std_logic;
SIGNAL \sw3~input_o\ : std_logic;
SIGNAL \sw4~input_o\ : std_logic;
SIGNAL \sw5~input_o\ : std_logic;
SIGNAL \sw6~input_o\ : std_logic;
SIGNAL \sw7~input_o\ : std_logic;
SIGNAL \sw8~input_o\ : std_logic;
SIGNAL \sw9~input_o\ : std_logic;
SIGNAL \sw0~input_o\ : std_logic;
SIGNAL \inst1|video_on_h~q\ : std_logic;
SIGNAL \inst1|v_count[7]~3_combout\ : std_logic;
SIGNAL \inst1|v_count[2]~4_combout\ : std_logic;
SIGNAL \inst1|pixel_row[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|LessThan7~1_combout\ : std_logic;
SIGNAL \inst1|pixel_row[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|pixel_row[7]~feeder_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~19_combout\ : std_logic;
SIGNAL \inst16|line2~7_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~24_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~4_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~9_combout\ : std_logic;
SIGNAL \inst16|char_addr~25_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~20_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~29_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~16_combout\ : std_logic;
SIGNAL \inst16|char_addr~8_combout\ : std_logic;
SIGNAL \inst16|char_addr~5_combout\ : std_logic;
SIGNAL \inst16|char_addr~43_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~17_combout\ : std_logic;
SIGNAL \inst16|char_addr~42_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~22_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~23_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~21_combout\ : std_logic;
SIGNAL \inst16|char_addr~23_combout\ : std_logic;
SIGNAL \inst16|char_addr~24_combout\ : std_logic;
SIGNAL \inst16|char_addr~26_combout\ : std_logic;
SIGNAL \inst16|char_addr~19_combout\ : std_logic;
SIGNAL \inst16|char_addr[0]~46_combout\ : std_logic;
SIGNAL \inst16|LessThan24~0_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~18_combout\ : std_logic;
SIGNAL \inst16|char_addr[0]~28_combout\ : std_logic;
SIGNAL \inst16|char_addr[0]~47_combout\ : std_logic;
SIGNAL \inst16|char_addr[0]~29_combout\ : std_logic;
SIGNAL \inst16|char_addr~32_combout\ : std_logic;
SIGNAL \inst16|char_addr~33_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~10_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~8_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~25_combout\ : std_logic;
SIGNAL \inst16|char_addr~30_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~13_combout\ : std_logic;
SIGNAL \inst16|char_addr~34_combout\ : std_logic;
SIGNAL \inst16|char_addr~35_combout\ : std_logic;
SIGNAL \inst16|char_addr~37_combout\ : std_logic;
SIGNAL \inst16|char_addr~38_combout\ : std_logic;
SIGNAL \inst16|char_addr~17_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~5_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~7_combout\ : std_logic;
SIGNAL \inst16|char_addr~18_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~26_combout\ : std_logic;
SIGNAL \inst16|char_addr~39_combout\ : std_logic;
SIGNAL \inst16|char_addr~44_combout\ : std_logic;
SIGNAL \inst16|char_addr~45_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~27_combout\ : std_logic;
SIGNAL \inst16|char_addr~40_combout\ : std_logic;
SIGNAL \inst16|char_addr~41_combout\ : std_logic;
SIGNAL \inst16|char|Mux0~1_combout\ : std_logic;
SIGNAL \inst16|char|Mux0~2_combout\ : std_logic;
SIGNAL \inst16|char|Mux0~3_combout\ : std_logic;
SIGNAL \inst16|char|Mux0~4_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~14_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~15_combout\ : std_logic;
SIGNAL \inst16|select_gamemode~12_combout\ : std_logic;
SIGNAL \inst16|title~1_combout\ : std_logic;
SIGNAL \inst16|title~2_combout\ : std_logic;
SIGNAL \inst16|title~3_combout\ : std_logic;
SIGNAL \inst16|title~q\ : std_logic;
SIGNAL \inst1|video_on_v~feeder_combout\ : std_logic;
SIGNAL \inst1|video_on_v~q\ : std_logic;
SIGNAL \inst1|blue_out~1_combout\ : std_logic;
SIGNAL \inst1|blue_out~2_combout\ : std_logic;
SIGNAL \inst1|blue_out[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|blue_out[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|green_out[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|green_out[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|green_out[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|green_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|red_out[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|red_out[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|red_out[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|red_out[0]~feeder_combout\ : std_logic;
SIGNAL \pb0~input_o\ : std_logic;
SIGNAL \pb1~input_o\ : std_logic;
SIGNAL \pb2~input_o\ : std_logic;
SIGNAL \inst4|SHIFTIN[1]~0_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR1[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_COUNT[1]~0_combout\ : std_logic;
SIGNAL \inst4|PACKET_COUNT[0]~2_combout\ : std_logic;
SIGNAL \inst4|PACKET_COUNT[1]~1_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR1[1]~0_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR1[1]~1_combout\ : std_logic;
SIGNAL \inst4|right_button~feeder_combout\ : std_logic;
SIGNAL \inst4|right_button~1_combout\ : std_logic;
SIGNAL \inst4|right_button~q\ : std_logic;
SIGNAL \inst4|SHIFTIN[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR1[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|left_button~q\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|green_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|blue_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|red_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst16|char_addr\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst4|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst4|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst16|char|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst4|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \ALT_INV_inst7~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_left_button~q\ : std_logic;
SIGNAL \inst4|ALT_INV_right_button~q\ : std_logic;

BEGIN

horiz_sync_out <= ww_horiz_sync_out;
ww_clk <= clk;
ww_sw0 <= sw0;
ww_pb2 <= pb2;
vert_sync_out <= ww_vert_sync_out;
ledg1 <= ww_ledg1;
ww_sw1 <= sw1;
ledg2 <= ww_ledg2;
ww_sw2 <= sw2;
ledg3 <= ww_ledg3;
ww_sw3 <= sw3;
ledg4 <= ww_ledg4;
ww_sw4 <= sw4;
ledg5 <= ww_ledg5;
ww_sw5 <= sw5;
ledg6 <= ww_ledg6;
ww_sw6 <= sw6;
ledg7 <= ww_ledg7;
ww_sw7 <= sw7;
ledg8 <= ww_ledg8;
ww_sw8 <= sw8;
ledg9 <= ww_ledg9;
ww_sw9 <= sw9;
ledg0 <= ww_ledg0;
blue_out <= ww_blue_out;
green_out <= ww_green_out;
red_out <= ww_red_out;
seg0 <= ww_seg0;
ww_pb0 <= pb0;
seg1 <= ww_seg1;
ww_pb1 <= pb1;
seg2 <= ww_seg2;
seg3 <= ww_seg3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst16|char|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst16|char_addr\(5) & \inst16|char_addr\(4) & \inst16|char_addr\(3) & \inst16|char_addr\(2) & \inst16|char_addr\(1) & \inst16|char_addr\(0) & 
\inst1|pixel_row\(4) & \inst1|pixel_row\(3) & \inst1|pixel_row\(2));

\inst16|char|altsyncram_component|auto_generated|q_a\(0) <= \inst16|char|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst16|char|altsyncram_component|auto_generated|q_a\(1) <= \inst16|char|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst16|char|altsyncram_component|auto_generated|q_a\(2) <= \inst16|char|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst16|char|altsyncram_component|auto_generated|q_a\(3) <= \inst16|char|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst16|char|altsyncram_component|auto_generated|q_a\(4) <= \inst16|char|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst16|char|altsyncram_component|auto_generated|q_a\(5) <= \inst16|char|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst16|char|altsyncram_component|auto_generated|q_a\(6) <= \inst16|char|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst16|char|altsyncram_component|auto_generated|q_a\(7) <= \inst16|char|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst4|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|MOUSE_CLK_FILTER~q\);

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\;
\inst4|ALT_INV_send_data~q\ <= NOT \inst4|send_data~q\;
\inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst4|mouse_state.INHIBIT_TRANS~q\;
\inst4|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \inst4|mouse_state.WAIT_OUTPUT_READY~q\;
\ALT_INV_inst7~combout\ <= NOT \inst7~combout\;
\inst4|ALT_INV_left_button~q\ <= NOT \inst4|left_button~q\;
\inst4|ALT_INV_right_button~q\ <= NOT \inst4|right_button~q\;

-- Location: M9K_X25_Y18_N0
\inst16|char|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001980006000F8006600198003C0000",
	mem_init3 => X"0003C001980066000F0006600198003C00000001800060001800060000C00198007E00000003C001980066001F0006000198003C00000003C00198000600018007C00180007E00000000600018007F00198001E00038000600000003C00198000600070000600198003C00000007E00180003000030000600198003C00000007E00060001800060003800060001800000003C001980066001D8006E00198003C000000060000C000180003000060000C0000000000018000600000000000000000000000000000000000000000001F80000000000000000C00018000600000000000000000000000000000000000600018001F80018000600000000000000001",
	mem_init2 => X"98003C003FC003C00198000000000003000060000C00030000C00060003000000000C000600030000C0003000060000C00000000000000000000000001800030000600000003F001980067000E0003C00198003C00000004600198003000060000C001980062000000018001F00006000F00060000F800180000000660019800FF0019800FF001980066000000000000000000000000066001980066000000018000000000000600018000600018000000000000000000000000000000000000000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "main_menu:inst16|char_rom:char|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst16|char|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst16|char|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y18_N10
\inst1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|h_count\(1) & (!\inst1|Add0~1\)) # (!\inst1|h_count\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X27_Y18_N12
\inst1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~2_combout\ = (\inst1|v_count\(1) & (!\inst1|Add1~1\)) # (!\inst1|v_count\(1) & ((\inst1|Add1~1\) # (GND)))
-- \inst1|Add1~3\ = CARRY((!\inst1|Add1~1\) # (!\inst1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(1),
	datad => VCC,
	cin => \inst1|Add1~1\,
	combout => \inst1|Add1~2_combout\,
	cout => \inst1|Add1~3\);

-- Location: LCCOMB_X27_Y18_N14
\inst1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~4_combout\ = (\inst1|v_count\(2) & (\inst1|Add1~3\ $ (GND))) # (!\inst1|v_count\(2) & (!\inst1|Add1~3\ & VCC))
-- \inst1|Add1~5\ = CARRY((\inst1|v_count\(2) & !\inst1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datad => VCC,
	cin => \inst1|Add1~3\,
	combout => \inst1|Add1~4_combout\,
	cout => \inst1|Add1~5\);

-- Location: FF_X40_Y22_N13
\inst4|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[5]~19_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(5));

-- Location: FF_X40_Y22_N11
\inst4|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[4]~17_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(4));

-- Location: FF_X40_Y22_N7
\inst4|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[2]~13_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(2));

-- Location: LCCOMB_X40_Y22_N6
\inst4|inhibit_wait_count[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[2]~13_combout\ = (\inst4|inhibit_wait_count\(2) & (!\inst4|inhibit_wait_count[1]~12\)) # (!\inst4|inhibit_wait_count\(2) & ((\inst4|inhibit_wait_count[1]~12\) # (GND)))
-- \inst4|inhibit_wait_count[2]~14\ = CARRY((!\inst4|inhibit_wait_count[1]~12\) # (!\inst4|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[1]~12\,
	combout => \inst4|inhibit_wait_count[2]~13_combout\,
	cout => \inst4|inhibit_wait_count[2]~14\);

-- Location: LCCOMB_X40_Y22_N10
\inst4|inhibit_wait_count[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[4]~17_combout\ = (\inst4|inhibit_wait_count\(4) & (!\inst4|inhibit_wait_count[3]~16\)) # (!\inst4|inhibit_wait_count\(4) & ((\inst4|inhibit_wait_count[3]~16\) # (GND)))
-- \inst4|inhibit_wait_count[4]~18\ = CARRY((!\inst4|inhibit_wait_count[3]~16\) # (!\inst4|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[3]~16\,
	combout => \inst4|inhibit_wait_count[4]~17_combout\,
	cout => \inst4|inhibit_wait_count[4]~18\);

-- Location: LCCOMB_X40_Y22_N12
\inst4|inhibit_wait_count[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[5]~19_combout\ = (\inst4|inhibit_wait_count\(5) & (\inst4|inhibit_wait_count[4]~18\ $ (GND))) # (!\inst4|inhibit_wait_count\(5) & (!\inst4|inhibit_wait_count[4]~18\ & VCC))
-- \inst4|inhibit_wait_count[5]~20\ = CARRY((\inst4|inhibit_wait_count\(5) & !\inst4|inhibit_wait_count[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[4]~18\,
	combout => \inst4|inhibit_wait_count[5]~19_combout\,
	cout => \inst4|inhibit_wait_count[5]~20\);

-- Location: FF_X28_Y19_N23
\inst16|line2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst16|line2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|line2~q\);

-- Location: FF_X28_Y19_N9
\inst16|line1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst16|line1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|line1~q\);

-- Location: LCCOMB_X28_Y19_N14
\inst1|blue_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|blue_out~0_combout\ = (!\inst16|line2~q\ & !\inst16|line1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|line2~q\,
	datac => \inst16|line1~q\,
	combout => \inst1|blue_out~0_combout\);

-- Location: LCCOMB_X37_Y21_N30
\inst4|right_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|right_button~0_combout\ = (\inst4|PACKET_COUNT\(1) & \inst4|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_COUNT\(1),
	datad => \inst4|PACKET_COUNT\(0),
	combout => \inst4|right_button~0_combout\);

-- Location: FF_X23_Y18_N11
\inst1|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(1));

-- Location: FF_X27_Y18_N31
\inst1|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count~2_combout\,
	ena => \inst1|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(1));

-- Location: LCCOMB_X27_Y18_N4
\inst1|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = ((\inst1|v_count\(1) $ (!\inst1|v_count\(0))) # (!\inst1|v_count\(3))) # (!\inst1|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datab => \inst1|v_count\(3),
	datac => \inst1|v_count\(1),
	datad => \inst1|v_count\(0),
	combout => \inst1|process_0~4_combout\);

-- Location: LCCOMB_X24_Y18_N14
\inst16|char|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char|Mux0~0_combout\ = (\inst1|pixel_column\(3) & ((\inst16|char|altsyncram_component|auto_generated|q_a\(1)) # ((\inst1|pixel_column\(2))))) # (!\inst1|pixel_column\(3) & (((\inst16|char|altsyncram_component|auto_generated|q_a\(3) & 
-- !\inst1|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|char|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst16|char|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst1|pixel_column\(3),
	datad => \inst1|pixel_column\(2),
	combout => \inst16|char|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y18_N14
\inst16|select_gamemode~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~6_combout\ = (\inst1|pixel_column\(6) & ((\inst1|pixel_column\(5)) # (\inst1|pixel_column\(4)))) # (!\inst1|pixel_column\(6) & ((!\inst1|pixel_column\(4)) # (!\inst1|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(6),
	datac => \inst1|pixel_column\(5),
	datad => \inst1|pixel_column\(4),
	combout => \inst16|select_gamemode~6_combout\);

-- Location: LCCOMB_X24_Y19_N12
\inst16|char_addr~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~15_combout\ = (\inst1|pixel_column\(4) & (!\inst1|pixel_column\(8) & \inst1|pixel_column\(7))) # (!\inst1|pixel_column\(4) & (\inst1|pixel_column\(8) & !\inst1|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(4),
	datac => \inst1|pixel_column\(8),
	datad => \inst1|pixel_column\(7),
	combout => \inst16|char_addr~15_combout\);

-- Location: LCCOMB_X24_Y19_N10
\inst16|char_addr~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~16_combout\ = (\inst16|char_addr~15_combout\ & ((\inst1|pixel_column\(6) & (\inst1|pixel_column\(4) & \inst1|pixel_column\(5))) # (!\inst1|pixel_column\(6) & (!\inst1|pixel_column\(4) & !\inst1|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|char_addr~15_combout\,
	datab => \inst1|pixel_column\(6),
	datac => \inst1|pixel_column\(4),
	datad => \inst1|pixel_column\(5),
	combout => \inst16|char_addr~16_combout\);

-- Location: LCCOMB_X27_Y19_N2
\inst16|select_gamemode~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~11_combout\ = (!\inst16|LessThan24~0_combout\ & (\inst16|select_gamemode~8_combout\ & (\inst16|select_gamemode~10_combout\ & \inst16|select_gamemode~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|LessThan24~0_combout\,
	datab => \inst16|select_gamemode~8_combout\,
	datac => \inst16|select_gamemode~10_combout\,
	datad => \inst16|select_gamemode~4_combout\,
	combout => \inst16|select_gamemode~11_combout\);

-- Location: LCCOMB_X27_Y19_N12
\inst16|title~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|title~0_combout\ = (!\inst16|select_gamemode~11_combout\ & (((!\inst16|select_gamemode~9_combout\) # (!\inst1|pixel_column\(6))) # (!\inst16|select_gamemode~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~11_combout\,
	datab => \inst16|select_gamemode~8_combout\,
	datac => \inst1|pixel_column\(6),
	datad => \inst16|select_gamemode~9_combout\,
	combout => \inst16|title~0_combout\);

-- Location: LCCOMB_X29_Y18_N16
\inst16|line2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|line2~2_combout\ = (!\inst1|pixel_column\(9) & (!\inst1|pixel_row\(5) & (!\inst1|pixel_row\(8) & !\inst1|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(9),
	datab => \inst1|pixel_row\(5),
	datac => \inst1|pixel_row\(8),
	datad => \inst1|pixel_row\(7),
	combout => \inst16|line2~2_combout\);

-- Location: LCCOMB_X28_Y18_N26
\inst16|line2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|line2~3_combout\ = (\inst1|pixel_column\(7) & ((\inst1|pixel_column\(4) & ((!\inst1|pixel_column\(8)))) # (!\inst1|pixel_column\(4) & (\inst1|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst1|pixel_column\(6),
	datac => \inst1|pixel_column\(7),
	datad => \inst1|pixel_column\(8),
	combout => \inst16|line2~3_combout\);

-- Location: LCCOMB_X28_Y18_N28
\inst16|line2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|line2~4_combout\ = (\inst1|pixel_column\(7) & ((\inst1|pixel_column\(5) & (!\inst1|pixel_column\(6))) # (!\inst1|pixel_column\(5) & ((\inst1|pixel_column\(8)))))) # (!\inst1|pixel_column\(7) & (((\inst1|pixel_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datab => \inst1|pixel_column\(6),
	datac => \inst1|pixel_column\(5),
	datad => \inst1|pixel_column\(8),
	combout => \inst16|line2~4_combout\);

-- Location: LCCOMB_X28_Y18_N18
\inst16|line2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|line2~5_combout\ = (\inst1|pixel_row\(6) & (\inst16|line2~2_combout\ & ((\inst16|line2~4_combout\) # (\inst16|line2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(6),
	datab => \inst16|line2~4_combout\,
	datac => \inst16|line2~3_combout\,
	datad => \inst16|line2~2_combout\,
	combout => \inst16|line2~5_combout\);

-- Location: LCCOMB_X28_Y19_N12
\inst16|char_addr~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~20_combout\ = ((!\inst16|select_gamemode~17_combout\) # (!\inst1|pixel_column\(5))) # (!\inst16|select_gamemode~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|select_gamemode~16_combout\,
	datac => \inst1|pixel_column\(5),
	datad => \inst16|select_gamemode~17_combout\,
	combout => \inst16|char_addr~20_combout\);

-- Location: LCCOMB_X28_Y19_N26
\inst16|line2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|line2~6_combout\ = ((\inst16|line2~5_combout\) # (!\inst16|char_addr~43_combout\)) # (!\inst16|char_addr~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|char_addr~20_combout\,
	datab => \inst16|char_addr~43_combout\,
	datad => \inst16|line2~5_combout\,
	combout => \inst16|line2~6_combout\);

-- Location: LCCOMB_X26_Y19_N18
\inst16|line2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|line2~8_combout\ = (!\inst16|select_gamemode~28_combout\ & (\inst16|line2~7_combout\ & ((!\inst16|select_gamemode~19_combout\) # (!\inst16|char_addr~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~28_combout\,
	datab => \inst16|line2~7_combout\,
	datac => \inst16|char_addr~19_combout\,
	datad => \inst16|select_gamemode~19_combout\,
	combout => \inst16|line2~8_combout\);

-- Location: LCCOMB_X29_Y19_N4
\inst16|line2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|line2~9_combout\ = (\inst16|line2~8_combout\ & (!\inst16|select_gamemode~23_combout\ & (!\inst16|select_gamemode~21_combout\ & \inst16|line2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|line2~8_combout\,
	datab => \inst16|select_gamemode~23_combout\,
	datac => \inst16|select_gamemode~21_combout\,
	datad => \inst16|line2~11_combout\,
	combout => \inst16|line2~9_combout\);

-- Location: LCCOMB_X28_Y19_N22
\inst16|line2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|line2~10_combout\ = (\inst16|line2~6_combout\ & (((\inst16|line2~q\)))) # (!\inst16|line2~6_combout\ & (\inst16|char|Mux0~4_combout\ & ((!\inst16|line2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|line2~6_combout\,
	datab => \inst16|char|Mux0~4_combout\,
	datac => \inst16|line2~q\,
	datad => \inst16|line2~9_combout\,
	combout => \inst16|line2~10_combout\);

-- Location: LCCOMB_X28_Y19_N8
\inst16|line1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|line1~0_combout\ = (\inst16|line2~5_combout\ & (((\inst16|line1~q\)))) # (!\inst16|line2~5_combout\ & ((\inst16|char_addr~42_combout\ & ((\inst16|line1~q\))) # (!\inst16|char_addr~42_combout\ & (\inst16|char|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|line2~5_combout\,
	datab => \inst16|char|Mux0~4_combout\,
	datac => \inst16|line1~q\,
	datad => \inst16|char_addr~42_combout\,
	combout => \inst16|line1~0_combout\);

-- Location: FF_X22_Y1_N11
\inst4|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst4|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(7));

-- Location: LCCOMB_X22_Y1_N10
\inst4|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_CLK_FILTER~0_combout\ = (\inst4|filter\(4) & ((\inst4|filter\(7)) # (!\inst4|filter\(2)))) # (!\inst4|filter\(4) & (\inst4|filter\(7) & !\inst4|filter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|filter\(4),
	datac => \inst4|filter\(7),
	datad => \inst4|filter\(2),
	combout => \inst4|MOUSE_CLK_FILTER~0_combout\);

-- Location: LCCOMB_X24_Y18_N6
\inst1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|h_count\(2) & (\inst1|h_count\(8) & (!\inst1|h_count\(5) & !\inst1|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(2),
	datab => \inst1|h_count\(8),
	datac => \inst1|h_count\(5),
	datad => \inst1|h_count\(7),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y18_N26
\inst1|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~7_combout\ = (!\inst1|v_count\(4) & (!\inst1|v_count\(5) & ((!\inst1|v_count\(3)) # (!\inst1|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datab => \inst1|v_count\(4),
	datac => \inst1|v_count\(5),
	datad => \inst1|v_count\(3),
	combout => \inst1|process_0~7_combout\);

-- Location: LCCOMB_X26_Y18_N12
\inst1|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~8_combout\ = (!\inst1|v_count\(7) & (!\inst1|v_count\(8) & (!\inst1|v_count\(6) & \inst1|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(7),
	datab => \inst1|v_count\(8),
	datac => \inst1|v_count\(6),
	datad => \inst1|process_0~7_combout\,
	combout => \inst1|process_0~8_combout\);

-- Location: LCCOMB_X24_Y18_N22
\inst1|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~10_combout\ = (\inst1|h_count\(5) & \inst1|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(5),
	datac => \inst1|h_count\(4),
	combout => \inst1|process_0~10_combout\);

-- Location: LCCOMB_X27_Y18_N30
\inst1|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count~2_combout\ = (\inst1|process_0~12_combout\ & \inst1|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|process_0~12_combout\,
	datad => \inst1|Add1~2_combout\,
	combout => \inst1|v_count~2_combout\);

-- Location: LCCOMB_X26_Y19_N20
\inst16|char_addr~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~21_combout\ = (\inst16|select_gamemode~16_combout\ & (\inst16|select_gamemode~17_combout\ & ((\inst1|pixel_column\(6)) # (!\inst1|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datab => \inst16|select_gamemode~16_combout\,
	datac => \inst1|pixel_column\(5),
	datad => \inst16|select_gamemode~17_combout\,
	combout => \inst16|char_addr~21_combout\);

-- Location: LCCOMB_X26_Y19_N30
\inst16|char_addr~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~22_combout\ = (\inst16|select_gamemode~28_combout\) # ((\inst16|char_addr~21_combout\) # ((\inst1|pixel_column\(6) & \inst16|select_gamemode~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~28_combout\,
	datab => \inst16|char_addr~21_combout\,
	datac => \inst1|pixel_column\(6),
	datad => \inst16|select_gamemode~11_combout\,
	combout => \inst16|char_addr~22_combout\);

-- Location: LCCOMB_X28_Y18_N10
\inst16|char_addr[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr[0]~27_combout\ = (\inst1|pixel_column\(7) & ((\inst1|pixel_column\(6)) # (\inst1|pixel_column\(5)))) # (!\inst1|pixel_column\(7) & ((!\inst1|pixel_column\(5)) # (!\inst1|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datab => \inst1|pixel_column\(6),
	datac => \inst1|pixel_column\(5),
	combout => \inst16|char_addr[0]~27_combout\);

-- Location: LCCOMB_X27_Y19_N4
\inst16|char_addr~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~31_combout\ = (!\inst16|select_gamemode~7_combout\ & (\inst16|char_addr~30_combout\ & !\inst16|select_gamemode~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|select_gamemode~7_combout\,
	datac => \inst16|char_addr~30_combout\,
	datad => \inst16|select_gamemode~15_combout\,
	combout => \inst16|char_addr~31_combout\);

-- Location: LCCOMB_X28_Y19_N4
\inst16|char_addr~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~36_combout\ = (\inst16|select_gamemode~13_combout\) # ((\inst16|select_gamemode~21_combout\) # (!\inst16|char_addr~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|select_gamemode~13_combout\,
	datac => \inst16|char_addr~43_combout\,
	datad => \inst16|select_gamemode~21_combout\,
	combout => \inst16|char_addr~36_combout\);

-- Location: FF_X40_Y22_N27
\inst4|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(0));

-- Location: LCCOMB_X40_Y22_N26
\inst4|inhibit_wait_count[0]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[0]~33_combout\ = \inst4|inhibit_wait_count\(0) $ (!\inst4|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inhibit_wait_count\(0),
	datad => \inst4|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst4|inhibit_wait_count[0]~33_combout\);

-- Location: LCCOMB_X26_Y19_N10
\inst16|select_gamemode~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~28_combout\ = (!\inst1|pixel_column\(6) & (\inst16|select_gamemode~16_combout\ & (!\inst1|pixel_column\(5) & \inst16|select_gamemode~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datab => \inst16|select_gamemode~16_combout\,
	datac => \inst1|pixel_column\(5),
	datad => \inst16|select_gamemode~19_combout\,
	combout => \inst16|select_gamemode~28_combout\);

-- Location: LCCOMB_X26_Y19_N4
\inst16|line2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|line2~11_combout\ = ((\inst1|pixel_column\(6)) # (!\inst1|pixel_column\(7))) # (!\inst16|select_gamemode~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~20_combout\,
	datac => \inst1|pixel_column\(6),
	datad => \inst1|pixel_column\(7),
	combout => \inst16|line2~11_combout\);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => ww_horiz_sync_out);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOOBUF_X0_Y20_N2
\ledg1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw1~input_o\,
	devoe => ww_devoe,
	o => ww_ledg1);

-- Location: IOOBUF_X0_Y21_N23
\ledg2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw2~input_o\,
	devoe => ww_devoe,
	o => ww_ledg2);

-- Location: IOOBUF_X0_Y21_N16
\ledg3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw3~input_o\,
	devoe => ww_devoe,
	o => ww_ledg3);

-- Location: IOOBUF_X0_Y24_N23
\ledg4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw4~input_o\,
	devoe => ww_devoe,
	o => ww_ledg4);

-- Location: IOOBUF_X0_Y24_N16
\ledg5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw5~input_o\,
	devoe => ww_devoe,
	o => ww_ledg5);

-- Location: IOOBUF_X0_Y26_N23
\ledg6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw6~input_o\,
	devoe => ww_devoe,
	o => ww_ledg6);

-- Location: IOOBUF_X0_Y26_N16
\ledg7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw7~input_o\,
	devoe => ww_devoe,
	o => ww_ledg7);

-- Location: IOOBUF_X0_Y27_N9
\ledg8~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw8~input_o\,
	devoe => ww_devoe,
	o => ww_ledg8);

-- Location: IOOBUF_X0_Y27_N16
\ledg9~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw9~input_o\,
	devoe => ww_devoe,
	o => ww_ledg9);

-- Location: IOOBUF_X0_Y20_N9
\ledg0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw0~input_o\,
	devoe => ww_devoe,
	o => ww_ledg0);

-- Location: IOOBUF_X41_Y21_N9
\blue_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|blue_out\(3),
	devoe => ww_devoe,
	o => ww_blue_out(3));

-- Location: IOOBUF_X41_Y19_N2
\blue_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|blue_out\(2),
	devoe => ww_devoe,
	o => ww_blue_out(2));

-- Location: IOOBUF_X41_Y19_N9
\blue_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|blue_out\(1),
	devoe => ww_devoe,
	o => ww_blue_out(1));

-- Location: IOOBUF_X41_Y19_N16
\blue_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|blue_out\(0),
	devoe => ww_devoe,
	o => ww_blue_out(0));

-- Location: IOOBUF_X41_Y20_N23
\green_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|green_out\(3),
	devoe => ww_devoe,
	o => ww_green_out(3));

-- Location: IOOBUF_X41_Y21_N16
\green_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|green_out\(2),
	devoe => ww_devoe,
	o => ww_green_out(2));

-- Location: IOOBUF_X41_Y24_N23
\green_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|green_out\(1),
	devoe => ww_devoe,
	o => ww_green_out(1));

-- Location: IOOBUF_X41_Y20_N2
\green_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|green_out\(0),
	devoe => ww_devoe,
	o => ww_green_out(0));

-- Location: IOOBUF_X41_Y21_N23
\red_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|red_out\(3),
	devoe => ww_devoe,
	o => ww_red_out(3));

-- Location: IOOBUF_X41_Y22_N2
\red_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|red_out\(2),
	devoe => ww_devoe,
	o => ww_red_out(2));

-- Location: IOOBUF_X41_Y25_N2
\red_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|red_out\(1),
	devoe => ww_devoe,
	o => ww_red_out(1));

-- Location: IOOBUF_X41_Y23_N23
\red_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|red_out\(0),
	devoe => ww_devoe,
	o => ww_red_out(0));

-- Location: IOOBUF_X26_Y29_N16
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb0~input_o\,
	devoe => ww_devoe,
	o => ww_seg0(6));

-- Location: IOOBUF_X28_Y29_N23
\seg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb0~input_o\,
	devoe => ww_devoe,
	o => ww_seg0(5));

-- Location: IOOBUF_X26_Y29_N9
\seg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb0~input_o\,
	devoe => ww_devoe,
	o => ww_seg0(4));

-- Location: IOOBUF_X28_Y29_N30
\seg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb0~input_o\,
	devoe => ww_devoe,
	o => ww_seg0(3));

-- Location: IOOBUF_X26_Y29_N2
\seg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb0~input_o\,
	devoe => ww_devoe,
	o => ww_seg0(2));

-- Location: IOOBUF_X21_Y29_N30
\seg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb0~input_o\,
	devoe => ww_devoe,
	o => ww_seg0(1));

-- Location: IOOBUF_X21_Y29_N23
\seg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb0~input_o\,
	devoe => ww_devoe,
	o => ww_seg0(0));

-- Location: IOOBUF_X26_Y29_N23
\seg1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb1~input_o\,
	devoe => ww_devoe,
	o => ww_seg1(6));

-- Location: IOOBUF_X28_Y29_N16
\seg1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb1~input_o\,
	devoe => ww_devoe,
	o => ww_seg1(5));

-- Location: IOOBUF_X23_Y29_N30
\seg1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb1~input_o\,
	devoe => ww_devoe,
	o => ww_seg1(4));

-- Location: IOOBUF_X23_Y29_N23
\seg1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb1~input_o\,
	devoe => ww_devoe,
	o => ww_seg1(3));

-- Location: IOOBUF_X23_Y29_N2
\seg1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb1~input_o\,
	devoe => ww_devoe,
	o => ww_seg1(2));

-- Location: IOOBUF_X21_Y29_N9
\seg1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb1~input_o\,
	devoe => ww_devoe,
	o => ww_seg1(1));

-- Location: IOOBUF_X21_Y29_N2
\seg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb1~input_o\,
	devoe => ww_devoe,
	o => ww_seg1(0));

-- Location: IOOBUF_X37_Y29_N2
\seg2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb2~input_o\,
	devoe => ww_devoe,
	o => ww_seg2(6));

-- Location: IOOBUF_X30_Y29_N23
\seg2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb2~input_o\,
	devoe => ww_devoe,
	o => ww_seg2(5));

-- Location: IOOBUF_X30_Y29_N16
\seg2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb2~input_o\,
	devoe => ww_devoe,
	o => ww_seg2(4));

-- Location: IOOBUF_X30_Y29_N2
\seg2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb2~input_o\,
	devoe => ww_devoe,
	o => ww_seg2(3));

-- Location: IOOBUF_X28_Y29_N2
\seg2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb2~input_o\,
	devoe => ww_devoe,
	o => ww_seg2(2));

-- Location: IOOBUF_X30_Y29_N30
\seg2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb2~input_o\,
	devoe => ww_devoe,
	o => ww_seg2(1));

-- Location: IOOBUF_X32_Y29_N30
\seg2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb2~input_o\,
	devoe => ww_devoe,
	o => ww_seg2(0));

-- Location: IOOBUF_X39_Y29_N30
\seg3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_right_button~q\,
	devoe => ww_devoe,
	o => ww_seg3(6));

-- Location: IOOBUF_X37_Y29_N30
\seg3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst7~combout\,
	devoe => ww_devoe,
	o => ww_seg3(5));

-- Location: IOOBUF_X37_Y29_N23
\seg3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst7~combout\,
	devoe => ww_devoe,
	o => ww_seg3(4));

-- Location: IOOBUF_X32_Y29_N2
\seg3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_left_button~q\,
	devoe => ww_devoe,
	o => ww_seg3(3));

-- Location: IOOBUF_X32_Y29_N9
\seg3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_right_button~q\,
	devoe => ww_devoe,
	o => ww_seg3(2));

-- Location: IOOBUF_X39_Y29_N16
\seg3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_right_button~q\,
	devoe => ww_devoe,
	o => ww_seg3(1));

-- Location: IOOBUF_X32_Y29_N23
\seg3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_right_button~q\,
	devoe => ww_devoe,
	o => ww_seg3(0));

-- Location: IOOBUF_X41_Y12_N23
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MOUSE_DATA_BUF~q\,
	oe => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => mouse_data);

-- Location: IOOBUF_X41_Y11_N2
\mouse_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst4|WideOr4~combout\,
	devoe => ww_devoe,
	o => mouse_clk);

-- Location: IOIBUF_X41_Y11_N1
\mouse_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_clk,
	o => \mouse_clk~input_o\);

-- Location: LCCOMB_X22_Y1_N22
\inst4|filter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[0]~feeder_combout\ = \mouse_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_clk~input_o\,
	combout => \inst4|filter[0]~feeder_combout\);

-- Location: FF_X22_Y1_N23
\inst4|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|filter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(0));

-- Location: FF_X22_Y1_N13
\inst4|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst4|filter\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(1));

-- Location: LCCOMB_X22_Y1_N16
\inst4|filter[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[2]~feeder_combout\ = \inst4|filter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|filter\(1),
	combout => \inst4|filter[2]~feeder_combout\);

-- Location: FF_X22_Y1_N17
\inst4|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|filter[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(2));

-- Location: LCCOMB_X22_Y1_N30
\inst4|filter[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[3]~feeder_combout\ = \inst4|filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|filter\(2),
	combout => \inst4|filter[3]~feeder_combout\);

-- Location: FF_X22_Y1_N31
\inst4|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|filter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(3));

-- Location: FF_X22_Y1_N21
\inst4|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst4|filter\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(4));

-- Location: LCCOMB_X22_Y1_N14
\inst4|filter[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[5]~feeder_combout\ = \inst4|filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|filter\(4),
	combout => \inst4|filter[5]~feeder_combout\);

-- Location: FF_X22_Y1_N15
\inst4|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|filter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(5));

-- Location: FF_X22_Y1_N27
\inst4|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst4|filter\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(6));

-- Location: LCCOMB_X22_Y1_N18
\inst4|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_CLK_FILTER~2_combout\ = (\inst4|filter\(0) & ((\inst4|MOUSE_CLK_FILTER~q\) # ((\inst4|filter\(1) & \inst4|filter\(6))))) # (!\inst4|filter\(0) & (\inst4|MOUSE_CLK_FILTER~q\ & ((\inst4|filter\(1)) # (\inst4|filter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|filter\(0),
	datab => \inst4|filter\(1),
	datac => \inst4|filter\(6),
	datad => \inst4|MOUSE_CLK_FILTER~q\,
	combout => \inst4|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X22_Y1_N28
\inst4|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_CLK_FILTER~1_combout\ = (\inst4|filter\(3) & ((\inst4|MOUSE_CLK_FILTER~q\) # ((\inst4|filter\(2) & \inst4|filter\(5))))) # (!\inst4|filter\(3) & (\inst4|MOUSE_CLK_FILTER~q\ & ((\inst4|filter\(2)) # (\inst4|filter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|filter\(3),
	datab => \inst4|filter\(2),
	datac => \inst4|filter\(5),
	datad => \inst4|MOUSE_CLK_FILTER~q\,
	combout => \inst4|MOUSE_CLK_FILTER~1_combout\);

-- Location: LCCOMB_X22_Y1_N24
\inst4|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_CLK_FILTER~3_combout\ = (\inst4|MOUSE_CLK_FILTER~0_combout\ & ((\inst4|MOUSE_CLK_FILTER~q\) # ((\inst4|MOUSE_CLK_FILTER~2_combout\ & \inst4|MOUSE_CLK_FILTER~1_combout\)))) # (!\inst4|MOUSE_CLK_FILTER~0_combout\ & (\inst4|MOUSE_CLK_FILTER~q\ & 
-- ((\inst4|MOUSE_CLK_FILTER~2_combout\) # (\inst4|MOUSE_CLK_FILTER~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|MOUSE_CLK_FILTER~0_combout\,
	datab => \inst4|MOUSE_CLK_FILTER~2_combout\,
	datac => \inst4|MOUSE_CLK_FILTER~q\,
	datad => \inst4|MOUSE_CLK_FILTER~1_combout\,
	combout => \inst4|MOUSE_CLK_FILTER~3_combout\);

-- Location: FF_X22_Y1_N25
\inst4|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|MOUSE_CLK_FILTER~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G18
\inst4|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y21_N16
\inst4|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst4|SHIFTOUT[9]~feeder_combout\);

-- Location: IOIBUF_X41_Y12_N22
\mouse_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_data,
	o => \mouse_data~input_o\);

-- Location: LCCOMB_X35_Y21_N26
\inst4|INCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT~0_combout\ = (!\inst4|INCNT\(3) & (\inst4|INCNT\(2) $ (((\inst4|INCNT\(0) & \inst4|INCNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|INCNT\(0),
	datab => \inst4|INCNT\(3),
	datac => \inst4|INCNT\(2),
	datad => \inst4|INCNT\(1),
	combout => \inst4|INCNT~0_combout\);

-- Location: LCCOMB_X40_Y22_N4
\inst4|inhibit_wait_count[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[1]~11_combout\ = (\inst4|inhibit_wait_count\(0) & (\inst4|inhibit_wait_count\(1) $ (VCC))) # (!\inst4|inhibit_wait_count\(0) & (\inst4|inhibit_wait_count\(1) & VCC))
-- \inst4|inhibit_wait_count[1]~12\ = CARRY((\inst4|inhibit_wait_count\(0) & \inst4|inhibit_wait_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(0),
	datab => \inst4|inhibit_wait_count\(1),
	datad => VCC,
	combout => \inst4|inhibit_wait_count[1]~11_combout\,
	cout => \inst4|inhibit_wait_count[1]~12\);

-- Location: LCCOMB_X40_Y22_N2
\inst4|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector0~0_combout\ = (\inst4|mouse_state.INHIBIT_TRANS~q\) # ((\inst4|inhibit_wait_count\(10) & \inst4|inhibit_wait_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(10),
	datab => \inst4|inhibit_wait_count\(11),
	datac => \inst4|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst4|Selector0~0_combout\);

-- Location: FF_X40_Y22_N3
\inst4|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.INHIBIT_TRANS~q\);

-- Location: FF_X40_Y22_N5
\inst4|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[1]~11_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(1));

-- Location: LCCOMB_X40_Y22_N8
\inst4|inhibit_wait_count[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[3]~15_combout\ = (\inst4|inhibit_wait_count\(3) & (\inst4|inhibit_wait_count[2]~14\ $ (GND))) # (!\inst4|inhibit_wait_count\(3) & (!\inst4|inhibit_wait_count[2]~14\ & VCC))
-- \inst4|inhibit_wait_count[3]~16\ = CARRY((\inst4|inhibit_wait_count\(3) & !\inst4|inhibit_wait_count[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(3),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[2]~14\,
	combout => \inst4|inhibit_wait_count[3]~15_combout\,
	cout => \inst4|inhibit_wait_count[3]~16\);

-- Location: FF_X40_Y22_N9
\inst4|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[3]~15_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(3));

-- Location: LCCOMB_X40_Y22_N14
\inst4|inhibit_wait_count[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[6]~21_combout\ = (\inst4|inhibit_wait_count\(6) & (!\inst4|inhibit_wait_count[5]~20\)) # (!\inst4|inhibit_wait_count\(6) & ((\inst4|inhibit_wait_count[5]~20\) # (GND)))
-- \inst4|inhibit_wait_count[6]~22\ = CARRY((!\inst4|inhibit_wait_count[5]~20\) # (!\inst4|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[5]~20\,
	combout => \inst4|inhibit_wait_count[6]~21_combout\,
	cout => \inst4|inhibit_wait_count[6]~22\);

-- Location: FF_X40_Y22_N15
\inst4|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[6]~21_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(6));

-- Location: LCCOMB_X40_Y22_N16
\inst4|inhibit_wait_count[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[7]~23_combout\ = (\inst4|inhibit_wait_count\(7) & (\inst4|inhibit_wait_count[6]~22\ $ (GND))) # (!\inst4|inhibit_wait_count\(7) & (!\inst4|inhibit_wait_count[6]~22\ & VCC))
-- \inst4|inhibit_wait_count[7]~24\ = CARRY((\inst4|inhibit_wait_count\(7) & !\inst4|inhibit_wait_count[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[6]~22\,
	combout => \inst4|inhibit_wait_count[7]~23_combout\,
	cout => \inst4|inhibit_wait_count[7]~24\);

-- Location: FF_X40_Y22_N17
\inst4|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[7]~23_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(7));

-- Location: LCCOMB_X40_Y22_N18
\inst4|inhibit_wait_count[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[8]~25_combout\ = (\inst4|inhibit_wait_count\(8) & (!\inst4|inhibit_wait_count[7]~24\)) # (!\inst4|inhibit_wait_count\(8) & ((\inst4|inhibit_wait_count[7]~24\) # (GND)))
-- \inst4|inhibit_wait_count[8]~26\ = CARRY((!\inst4|inhibit_wait_count[7]~24\) # (!\inst4|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[7]~24\,
	combout => \inst4|inhibit_wait_count[8]~25_combout\,
	cout => \inst4|inhibit_wait_count[8]~26\);

-- Location: FF_X40_Y22_N19
\inst4|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[8]~25_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(8));

-- Location: LCCOMB_X40_Y22_N20
\inst4|inhibit_wait_count[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[9]~27_combout\ = (\inst4|inhibit_wait_count\(9) & (\inst4|inhibit_wait_count[8]~26\ $ (GND))) # (!\inst4|inhibit_wait_count\(9) & (!\inst4|inhibit_wait_count[8]~26\ & VCC))
-- \inst4|inhibit_wait_count[9]~28\ = CARRY((\inst4|inhibit_wait_count\(9) & !\inst4|inhibit_wait_count[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[8]~26\,
	combout => \inst4|inhibit_wait_count[9]~27_combout\,
	cout => \inst4|inhibit_wait_count[9]~28\);

-- Location: FF_X40_Y22_N21
\inst4|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[9]~27_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(9));

-- Location: LCCOMB_X40_Y22_N22
\inst4|inhibit_wait_count[10]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[10]~29_combout\ = (\inst4|inhibit_wait_count\(10) & (!\inst4|inhibit_wait_count[9]~28\)) # (!\inst4|inhibit_wait_count\(10) & ((\inst4|inhibit_wait_count[9]~28\) # (GND)))
-- \inst4|inhibit_wait_count[10]~30\ = CARRY((!\inst4|inhibit_wait_count[9]~28\) # (!\inst4|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(10),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[9]~28\,
	combout => \inst4|inhibit_wait_count[10]~29_combout\,
	cout => \inst4|inhibit_wait_count[10]~30\);

-- Location: LCCOMB_X40_Y22_N24
\inst4|inhibit_wait_count[11]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[11]~31_combout\ = \inst4|inhibit_wait_count[10]~30\ $ (!\inst4|inhibit_wait_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inhibit_wait_count\(11),
	cin => \inst4|inhibit_wait_count[10]~30\,
	combout => \inst4|inhibit_wait_count[11]~31_combout\);

-- Location: FF_X40_Y22_N25
\inst4|inhibit_wait_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[11]~31_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(11));

-- Location: FF_X40_Y22_N23
\inst4|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[10]~29_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(10));

-- Location: LCCOMB_X40_Y22_N0
\inst4|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector1~0_combout\ = (\inst4|inhibit_wait_count\(11) & (\inst4|inhibit_wait_count\(10) & !\inst4|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(11),
	datac => \inst4|inhibit_wait_count\(10),
	datad => \inst4|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst4|Selector1~0_combout\);

-- Location: FF_X40_Y22_N1
\inst4|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.LOAD_COMMAND~q\);

-- Location: FF_X39_Y21_N15
\inst4|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst4|mouse_state.LOAD_COMMAND~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X39_Y21_N26
\inst4|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|OUTCNT~3_combout\ = (!\inst4|OUTCNT\(0) & (((!\inst4|OUTCNT\(2) & !\inst4|OUTCNT\(1))) # (!\inst4|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|OUTCNT\(3),
	datab => \inst4|OUTCNT\(2),
	datac => \inst4|OUTCNT\(0),
	datad => \inst4|OUTCNT\(1),
	combout => \inst4|OUTCNT~3_combout\);

-- Location: LCCOMB_X40_Y21_N22
\inst4|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|send_char~0_combout\ = (\inst4|send_char~q\) # ((\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & \inst4|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst4|send_char~q\,
	datad => \inst4|LessThan0~0_combout\,
	combout => \inst4|send_char~0_combout\);

-- Location: FF_X40_Y21_N23
\inst4|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|send_char~0_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|send_char~q\);

-- Location: LCCOMB_X39_Y21_N16
\inst4|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|output_ready~0_combout\ = (\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst4|send_char~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst4|send_char~q\,
	combout => \inst4|output_ready~0_combout\);

-- Location: FF_X39_Y21_N27
\inst4|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|OUTCNT~3_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|OUTCNT\(0));

-- Location: LCCOMB_X39_Y21_N22
\inst4|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|OUTCNT~1_combout\ = (!\inst4|OUTCNT\(3) & (\inst4|OUTCNT\(2) $ (((\inst4|OUTCNT\(0) & \inst4|OUTCNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|OUTCNT\(3),
	datab => \inst4|OUTCNT\(0),
	datac => \inst4|OUTCNT\(2),
	datad => \inst4|OUTCNT\(1),
	combout => \inst4|OUTCNT~1_combout\);

-- Location: FF_X39_Y21_N23
\inst4|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|OUTCNT~1_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|OUTCNT\(2));

-- Location: LCCOMB_X39_Y21_N28
\inst4|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|OUTCNT~2_combout\ = (\inst4|OUTCNT\(3) & (!\inst4|OUTCNT\(2) & (!\inst4|OUTCNT\(1) & \inst4|OUTCNT\(0)))) # (!\inst4|OUTCNT\(3) & ((\inst4|OUTCNT\(1) $ (\inst4|OUTCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|OUTCNT\(3),
	datab => \inst4|OUTCNT\(2),
	datac => \inst4|OUTCNT\(1),
	datad => \inst4|OUTCNT\(0),
	combout => \inst4|OUTCNT~2_combout\);

-- Location: FF_X39_Y21_N29
\inst4|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|OUTCNT~2_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|OUTCNT\(1));

-- Location: LCCOMB_X39_Y21_N20
\inst4|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|OUTCNT~0_combout\ = (\inst4|OUTCNT\(2) & (\inst4|OUTCNT\(0) & (!\inst4|OUTCNT\(3) & \inst4|OUTCNT\(1)))) # (!\inst4|OUTCNT\(2) & (((\inst4|OUTCNT\(3) & !\inst4|OUTCNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|OUTCNT\(2),
	datab => \inst4|OUTCNT\(0),
	datac => \inst4|OUTCNT\(3),
	datad => \inst4|OUTCNT\(1),
	combout => \inst4|OUTCNT~0_combout\);

-- Location: FF_X39_Y21_N21
\inst4|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|OUTCNT~0_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|OUTCNT\(3));

-- Location: LCCOMB_X39_Y21_N14
\inst4|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~0_combout\ = (\inst4|OUTCNT\(3) & ((\inst4|OUTCNT\(2)) # (\inst4|OUTCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|OUTCNT\(2),
	datab => \inst4|OUTCNT\(1),
	datad => \inst4|OUTCNT\(3),
	combout => \inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y21_N24
\inst4|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|output_ready~feeder_combout\ = \inst4|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|LessThan0~0_combout\,
	combout => \inst4|output_ready~feeder_combout\);

-- Location: FF_X39_Y21_N25
\inst4|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|output_ready~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|output_ready~q\);

-- Location: LCCOMB_X39_Y21_N0
\inst4|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector3~0_combout\ = (\inst4|mouse_state.LOAD_COMMAND2~q\) # ((\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst4|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst4|output_ready~q\,
	combout => \inst4|Selector3~0_combout\);

-- Location: FF_X39_Y21_N1
\inst4|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: LCCOMB_X35_Y21_N16
\inst4|INCNT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT[3]~1_combout\ = (!\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & \inst4|READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst4|READ_CHAR~q\,
	combout => \inst4|INCNT[3]~1_combout\);

-- Location: FF_X35_Y21_N27
\inst4|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|INCNT~0_combout\,
	ena => \inst4|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|INCNT\(2));

-- Location: LCCOMB_X35_Y21_N30
\inst4|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT~3_combout\ = (!\inst4|INCNT\(0) & (((!\inst4|INCNT\(1) & !\inst4|INCNT\(2))) # (!\inst4|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|INCNT\(1),
	datab => \inst4|INCNT\(3),
	datac => \inst4|INCNT\(0),
	datad => \inst4|INCNT\(2),
	combout => \inst4|INCNT~3_combout\);

-- Location: FF_X35_Y21_N31
\inst4|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|INCNT~3_combout\,
	ena => \inst4|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|INCNT\(0));

-- Location: LCCOMB_X35_Y21_N12
\inst4|INCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT~2_combout\ = (!\inst4|INCNT\(3) & (\inst4|INCNT\(1) $ (\inst4|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|INCNT\(3),
	datac => \inst4|INCNT\(1),
	datad => \inst4|INCNT\(0),
	combout => \inst4|INCNT~2_combout\);

-- Location: FF_X35_Y21_N13
\inst4|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|INCNT~2_combout\,
	ena => \inst4|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|INCNT\(1));

-- Location: LCCOMB_X35_Y21_N20
\inst4|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT~4_combout\ = (\inst4|INCNT\(0) & (\inst4|INCNT\(1) & (!\inst4|INCNT\(3) & \inst4|INCNT\(2)))) # (!\inst4|INCNT\(0) & (!\inst4|INCNT\(1) & (\inst4|INCNT\(3) & !\inst4|INCNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|INCNT\(0),
	datab => \inst4|INCNT\(1),
	datac => \inst4|INCNT\(3),
	datad => \inst4|INCNT\(2),
	combout => \inst4|INCNT~4_combout\);

-- Location: FF_X35_Y21_N21
\inst4|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|INCNT~4_combout\,
	ena => \inst4|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|INCNT\(3));

-- Location: LCCOMB_X35_Y21_N14
\inst4|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~0_combout\ = ((!\inst4|INCNT\(0) & (!\inst4|INCNT\(2) & !\inst4|INCNT\(1)))) # (!\inst4|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|INCNT\(0),
	datab => \inst4|INCNT\(3),
	datac => \inst4|INCNT\(2),
	datad => \inst4|INCNT\(1),
	combout => \inst4|LessThan1~0_combout\);

-- Location: LCCOMB_X35_Y21_N24
\inst4|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|READ_CHAR~0_combout\ = (\inst4|READ_CHAR~q\ & (\inst4|LessThan1~0_combout\)) # (!\inst4|READ_CHAR~q\ & ((!\mouse_data~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LessThan1~0_combout\,
	datac => \inst4|READ_CHAR~q\,
	datad => \mouse_data~input_o\,
	combout => \inst4|READ_CHAR~0_combout\);

-- Location: FF_X35_Y21_N25
\inst4|READ_CHAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|READ_CHAR~0_combout\,
	ena => \inst4|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|READ_CHAR~q\);

-- Location: LCCOMB_X38_Y21_N2
\inst4|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|iready_set~0_combout\ = (\inst4|READ_CHAR~q\ & (!\inst4|LessThan1~0_combout\)) # (!\inst4|READ_CHAR~q\ & (((\mouse_data~input_o\ & \inst4|iready_set~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan1~0_combout\,
	datab => \mouse_data~input_o\,
	datac => \inst4|iready_set~q\,
	datad => \inst4|READ_CHAR~q\,
	combout => \inst4|iready_set~0_combout\);

-- Location: FF_X38_Y21_N3
\inst4|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|iready_set~0_combout\,
	ena => \inst4|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|iready_set~q\);

-- Location: LCCOMB_X38_Y21_N0
\inst4|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector4~0_combout\ = (\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & ((\inst4|output_ready~q\) # ((!\inst4|iready_set~q\ & \inst4|mouse_state.WAIT_CMD_ACK~q\)))) # (!\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst4|iready_set~q\ & 
-- (\inst4|mouse_state.WAIT_CMD_ACK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst4|iready_set~q\,
	datac => \inst4|mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst4|output_ready~q\,
	combout => \inst4|Selector4~0_combout\);

-- Location: FF_X38_Y21_N1
\inst4|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.WAIT_CMD_ACK~q\);

-- Location: LCCOMB_X38_Y21_N24
\inst4|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|mouse_state.INPUT_PACKETS~0_combout\ = (\inst4|mouse_state.INPUT_PACKETS~q\) # ((\inst4|mouse_state.WAIT_CMD_ACK~q\ & \inst4|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|mouse_state.WAIT_CMD_ACK~q\,
	datac => \inst4|mouse_state.INPUT_PACKETS~q\,
	datad => \inst4|iready_set~q\,
	combout => \inst4|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: FF_X38_Y21_N25
\inst4|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|mouse_state.INPUT_PACKETS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.INPUT_PACKETS~q\);

-- Location: LCCOMB_X39_Y21_N8
\inst4|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector6~0_combout\ = (\inst4|send_data~q\ & ((\inst4|mouse_state.INPUT_PACKETS~q\) # (!\inst4|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|mouse_state.INPUT_PACKETS~q\,
	datac => \inst4|send_data~q\,
	datad => \inst4|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst4|Selector6~0_combout\);

-- Location: LCCOMB_X39_Y21_N30
\inst4|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector6~1_combout\ = (\inst4|mouse_state.LOAD_COMMAND~q\) # ((\inst4|Selector6~0_combout\) # (\inst4|mouse_state.LOAD_COMMAND2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mouse_state.LOAD_COMMAND~q\,
	datab => \inst4|Selector6~0_combout\,
	datad => \inst4|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst4|Selector6~1_combout\);

-- Location: FF_X39_Y21_N31
\inst4|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|send_data~q\);

-- Location: LCCOMB_X40_Y21_N28
\inst4|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_DATA_BUF~0_combout\ = (\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst4|send_char~q\ & !\inst4|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst4|send_char~q\,
	datad => \inst4|LessThan0~0_combout\,
	combout => \inst4|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X40_Y21_N17
\inst4|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(9));

-- Location: LCCOMB_X40_Y21_N18
\inst4|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[8]~3_combout\ = !\inst4|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(9),
	combout => \inst4|SHIFTOUT[8]~3_combout\);

-- Location: FF_X40_Y21_N19
\inst4|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[8]~3_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(8));

-- Location: LCCOMB_X40_Y21_N24
\inst4|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[7]~feeder_combout\ = \inst4|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(8),
	combout => \inst4|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X40_Y21_N25
\inst4|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[7]~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(7));

-- Location: LCCOMB_X40_Y21_N6
\inst4|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[6]~feeder_combout\ = \inst4|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(7),
	combout => \inst4|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X40_Y21_N7
\inst4|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[6]~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(6));

-- Location: LCCOMB_X40_Y21_N20
\inst4|SHIFTOUT[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[5]~feeder_combout\ = \inst4|SHIFTOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(6),
	combout => \inst4|SHIFTOUT[5]~feeder_combout\);

-- Location: FF_X40_Y21_N21
\inst4|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[5]~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(5));

-- Location: LCCOMB_X40_Y21_N10
\inst4|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[4]~2_combout\ = !\inst4|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(5),
	combout => \inst4|SHIFTOUT[4]~2_combout\);

-- Location: FF_X40_Y21_N11
\inst4|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[4]~2_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(4));

-- Location: LCCOMB_X40_Y21_N12
\inst4|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[3]~1_combout\ = !\inst4|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(4),
	combout => \inst4|SHIFTOUT[3]~1_combout\);

-- Location: FF_X40_Y21_N13
\inst4|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[3]~1_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(3));

-- Location: LCCOMB_X40_Y21_N26
\inst4|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[2]~0_combout\ = !\inst4|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(3),
	combout => \inst4|SHIFTOUT[2]~0_combout\);

-- Location: FF_X40_Y21_N27
\inst4|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[2]~0_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(2));

-- Location: LCCOMB_X40_Y21_N8
\inst4|SHIFTOUT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[1]~feeder_combout\ = \inst4|SHIFTOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTOUT\(2),
	combout => \inst4|SHIFTOUT[1]~feeder_combout\);

-- Location: FF_X40_Y21_N9
\inst4|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[1]~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(1));

-- Location: FF_X40_Y21_N29
\inst4|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst4|SHIFTOUT\(1),
	clrn => \inst4|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X39_Y21_N10
\inst4|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|WideOr4~combout\ = (\inst4|mouse_state.LOAD_COMMAND~q\) # ((\inst4|mouse_state.LOAD_COMMAND2~q\) # (!\inst4|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mouse_state.LOAD_COMMAND~q\,
	datab => \inst4|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst4|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst4|WideOr4~combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_2
\inst|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3403,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y18_N8
\inst1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|h_count\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: FF_X23_Y18_N9
\inst1|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(0));

-- Location: LCCOMB_X23_Y18_N12
\inst1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|h_count\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|h_count\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|h_count\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: FF_X23_Y18_N13
\inst1|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(2));

-- Location: LCCOMB_X23_Y18_N14
\inst1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|h_count\(3) & (!\inst1|Add0~5\)) # (!\inst1|h_count\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: FF_X23_Y18_N15
\inst1|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(3));

-- Location: LCCOMB_X23_Y18_N16
\inst1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|h_count\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|h_count\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|h_count\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: FF_X23_Y18_N17
\inst1|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(4));

-- Location: LCCOMB_X23_Y18_N18
\inst1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|h_count\(5) & (!\inst1|Add0~9\)) # (!\inst1|h_count\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X23_Y18_N20
\inst1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|h_count\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|h_count\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|h_count\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: FF_X23_Y18_N21
\inst1|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(6));

-- Location: LCCOMB_X23_Y18_N22
\inst1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|h_count\(7) & (!\inst1|Add0~13\)) # (!\inst1|h_count\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X23_Y18_N24
\inst1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|h_count\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|h_count\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|h_count\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X24_Y18_N8
\inst1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|h_count\(1) & (\inst1|h_count\(3) & (\inst1|h_count\(4) & \inst1|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(1),
	datab => \inst1|h_count\(3),
	datac => \inst1|h_count\(4),
	datad => \inst1|h_count\(0),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y18_N28
\inst1|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count~0_combout\ = (\inst1|Add0~16_combout\ & (((!\inst1|Equal0~0_combout\) # (!\inst1|Equal0~1_combout\)) # (!\inst1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~2_combout\,
	datab => \inst1|Add0~16_combout\,
	datac => \inst1|Equal0~1_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|h_count~0_combout\);

-- Location: FF_X23_Y18_N29
\inst1|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(8));

-- Location: LCCOMB_X23_Y18_N26
\inst1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = \inst1|Add0~17\ $ (\inst1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count\(9),
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\);

-- Location: LCCOMB_X23_Y18_N2
\inst1|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count~1_combout\ = (\inst1|Add0~18_combout\ & (((!\inst1|Equal0~0_combout\) # (!\inst1|Equal0~1_combout\)) # (!\inst1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~2_combout\,
	datab => \inst1|Add0~18_combout\,
	datac => \inst1|Equal0~1_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|h_count~1_combout\);

-- Location: FF_X23_Y18_N3
\inst1|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(9));

-- Location: LCCOMB_X23_Y19_N8
\inst1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|h_count\(9) & !\inst1|h_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|h_count\(9),
	datad => \inst1|h_count\(6),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst1|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count~2_combout\ = (\inst1|Add0~10_combout\ & (((!\inst1|Equal0~0_combout\) # (!\inst1|Equal0~1_combout\)) # (!\inst1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~2_combout\,
	datab => \inst1|Add0~10_combout\,
	datac => \inst1|Equal0~1_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|h_count~2_combout\);

-- Location: FF_X23_Y18_N7
\inst1|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(5));

-- Location: FF_X23_Y18_N23
\inst1|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(7));

-- Location: LCCOMB_X23_Y18_N4
\inst1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (!\inst1|h_count\(8) & (\inst1|h_count\(7) & \inst1|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(8),
	datac => \inst1|h_count\(7),
	datad => \inst1|h_count\(9),
	combout => \inst1|process_0~0_combout\);

-- Location: LCCOMB_X24_Y18_N10
\inst1|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~1_combout\ = (\inst1|h_count\(3)) # ((\inst1|h_count\(1) & (!\inst1|h_count\(5) & \inst1|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(1),
	datab => \inst1|h_count\(3),
	datac => \inst1|h_count\(5),
	datad => \inst1|h_count\(0),
	combout => \inst1|process_0~1_combout\);

-- Location: LCCOMB_X24_Y18_N28
\inst1|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~2_combout\ = (\inst1|h_count\(4) & ((\inst1|h_count\(2)) # (\inst1|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(4),
	datac => \inst1|h_count\(2),
	datad => \inst1|process_0~1_combout\,
	combout => \inst1|process_0~2_combout\);

-- Location: LCCOMB_X24_Y18_N12
\inst1|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~3_combout\ = ((\inst1|h_count\(6) & (\inst1|h_count\(5) & \inst1|process_0~2_combout\)) # (!\inst1|h_count\(6) & (!\inst1|h_count\(5) & !\inst1|process_0~2_combout\))) # (!\inst1|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(6),
	datab => \inst1|h_count\(5),
	datac => \inst1|process_0~0_combout\,
	datad => \inst1|process_0~2_combout\,
	combout => \inst1|process_0~3_combout\);

-- Location: FF_X24_Y18_N13
\inst1|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|horiz_sync~q\);

-- Location: LCCOMB_X40_Y18_N16
\inst1|horiz_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|horiz_sync_out~feeder_combout\ = \inst1|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|horiz_sync~q\,
	combout => \inst1|horiz_sync_out~feeder_combout\);

-- Location: FF_X40_Y18_N17
\inst1|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|horiz_sync_out~q\);

-- Location: LCCOMB_X24_Y18_N18
\inst1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (\inst1|h_count\(2)) # ((\inst1|h_count\(8)) # ((!\inst1|h_count\(7)) # (!\inst1|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(2),
	datab => \inst1|h_count\(8),
	datac => \inst1|h_count\(5),
	datad => \inst1|h_count\(7),
	combout => \inst1|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y18_N8
\inst1|v_count[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[9]~1_combout\ = ((!\inst1|Equal1~0_combout\ & (\inst1|Equal0~1_combout\ & \inst1|Equal0~0_combout\))) # (!\inst1|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~12_combout\,
	datab => \inst1|Equal1~0_combout\,
	datac => \inst1|Equal0~1_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|v_count[9]~1_combout\);

-- Location: LCCOMB_X27_Y18_N18
\inst1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~8_combout\ = (\inst1|v_count\(4) & (\inst1|Add1~7\ $ (GND))) # (!\inst1|v_count\(4) & (!\inst1|Add1~7\ & VCC))
-- \inst1|Add1~9\ = CARRY((\inst1|v_count\(4) & !\inst1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(4),
	datad => VCC,
	cin => \inst1|Add1~7\,
	combout => \inst1|Add1~8_combout\,
	cout => \inst1|Add1~9\);

-- Location: LCCOMB_X27_Y18_N20
\inst1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~10_combout\ = (\inst1|v_count\(5) & (!\inst1|Add1~9\)) # (!\inst1|v_count\(5) & ((\inst1|Add1~9\) # (GND)))
-- \inst1|Add1~11\ = CARRY((!\inst1|Add1~9\) # (!\inst1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(5),
	datad => VCC,
	cin => \inst1|Add1~9\,
	combout => \inst1|Add1~10_combout\,
	cout => \inst1|Add1~11\);

-- Location: LCCOMB_X27_Y18_N22
\inst1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~12_combout\ = (\inst1|v_count\(6) & (\inst1|Add1~11\ $ (GND))) # (!\inst1|v_count\(6) & (!\inst1|Add1~11\ & VCC))
-- \inst1|Add1~13\ = CARRY((\inst1|v_count\(6) & !\inst1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(6),
	datad => VCC,
	cin => \inst1|Add1~11\,
	combout => \inst1|Add1~12_combout\,
	cout => \inst1|Add1~13\);

-- Location: LCCOMB_X26_Y18_N22
\inst1|v_count[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[6]~9_combout\ = (\inst1|v_count[7]~3_combout\ & ((\inst1|Add1~12_combout\) # ((!\inst1|v_count[9]~1_combout\ & \inst1|v_count\(6))))) # (!\inst1|v_count[7]~3_combout\ & (!\inst1|v_count[9]~1_combout\ & (\inst1|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[7]~3_combout\,
	datab => \inst1|v_count[9]~1_combout\,
	datac => \inst1|v_count\(6),
	datad => \inst1|Add1~12_combout\,
	combout => \inst1|v_count[6]~9_combout\);

-- Location: FF_X26_Y18_N23
\inst1|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(6));

-- Location: LCCOMB_X27_Y18_N24
\inst1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~14_combout\ = (\inst1|v_count\(7) & (!\inst1|Add1~13\)) # (!\inst1|v_count\(7) & ((\inst1|Add1~13\) # (GND)))
-- \inst1|Add1~15\ = CARRY((!\inst1|Add1~13\) # (!\inst1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(7),
	datad => VCC,
	cin => \inst1|Add1~13\,
	combout => \inst1|Add1~14_combout\,
	cout => \inst1|Add1~15\);

-- Location: LCCOMB_X26_Y18_N6
\inst1|v_count[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[7]~10_combout\ = (\inst1|v_count[7]~3_combout\ & ((\inst1|Add1~14_combout\) # ((!\inst1|v_count[9]~1_combout\ & \inst1|v_count\(7))))) # (!\inst1|v_count[7]~3_combout\ & (!\inst1|v_count[9]~1_combout\ & (\inst1|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[7]~3_combout\,
	datab => \inst1|v_count[9]~1_combout\,
	datac => \inst1|v_count\(7),
	datad => \inst1|Add1~14_combout\,
	combout => \inst1|v_count[7]~10_combout\);

-- Location: FF_X26_Y18_N7
\inst1|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(7));

-- Location: LCCOMB_X27_Y18_N26
\inst1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~16_combout\ = (\inst1|v_count\(8) & (\inst1|Add1~15\ $ (GND))) # (!\inst1|v_count\(8) & (!\inst1|Add1~15\ & VCC))
-- \inst1|Add1~17\ = CARRY((\inst1|v_count\(8) & !\inst1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(8),
	datad => VCC,
	cin => \inst1|Add1~15\,
	combout => \inst1|Add1~16_combout\,
	cout => \inst1|Add1~17\);

-- Location: LCCOMB_X27_Y18_N28
\inst1|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~18_combout\ = \inst1|Add1~17\ $ (\inst1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(9),
	cin => \inst1|Add1~17\,
	combout => \inst1|Add1~18_combout\);

-- Location: LCCOMB_X27_Y18_N2
\inst1|v_count[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[9]~7_combout\ = (\inst1|v_count[7]~3_combout\ & ((\inst1|Add1~18_combout\) # ((!\inst1|v_count[9]~1_combout\ & \inst1|v_count\(9))))) # (!\inst1|v_count[7]~3_combout\ & (!\inst1|v_count[9]~1_combout\ & (\inst1|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[7]~3_combout\,
	datab => \inst1|v_count[9]~1_combout\,
	datac => \inst1|v_count\(9),
	datad => \inst1|Add1~18_combout\,
	combout => \inst1|v_count[9]~7_combout\);

-- Location: FF_X27_Y18_N3
\inst1|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(9));

-- Location: LCCOMB_X28_Y18_N22
\inst1|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = ((!\inst1|h_count\(8) & !\inst1|h_count\(7))) # (!\inst1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(9),
	datac => \inst1|h_count\(8),
	datad => \inst1|h_count\(7),
	combout => \inst1|process_0~6_combout\);

-- Location: LCCOMB_X24_Y18_N4
\inst1|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~9_combout\ = ((!\inst1|h_count\(2) & ((!\inst1|h_count\(0)) # (!\inst1|h_count\(1))))) # (!\inst1|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(1),
	datab => \inst1|h_count\(2),
	datac => \inst1|h_count\(3),
	datad => \inst1|h_count\(0),
	combout => \inst1|process_0~9_combout\);

-- Location: LCCOMB_X24_Y18_N20
\inst1|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~11_combout\ = (!\inst1|h_count\(6) & (!\inst1|h_count\(8) & ((\inst1|process_0~9_combout\) # (!\inst1|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~10_combout\,
	datab => \inst1|h_count\(6),
	datac => \inst1|process_0~9_combout\,
	datad => \inst1|h_count\(8),
	combout => \inst1|process_0~11_combout\);

-- Location: LCCOMB_X24_Y18_N26
\inst1|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~12_combout\ = (\inst1|process_0~8_combout\) # (((\inst1|process_0~6_combout\) # (\inst1|process_0~11_combout\)) # (!\inst1|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~8_combout\,
	datab => \inst1|v_count\(9),
	datac => \inst1|process_0~6_combout\,
	datad => \inst1|process_0~11_combout\,
	combout => \inst1|process_0~12_combout\);

-- Location: LCCOMB_X27_Y18_N10
\inst1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = \inst1|v_count\(0) $ (VCC)
-- \inst1|Add1~1\ = CARRY(\inst1|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(0),
	datad => VCC,
	combout => \inst1|Add1~0_combout\,
	cout => \inst1|Add1~1\);

-- Location: LCCOMB_X27_Y18_N0
\inst1|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count~0_combout\ = (\inst1|process_0~12_combout\ & \inst1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|process_0~12_combout\,
	datad => \inst1|Add1~0_combout\,
	combout => \inst1|v_count~0_combout\);

-- Location: FF_X27_Y18_N1
\inst1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count~0_combout\,
	ena => \inst1|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(0));

-- Location: LCCOMB_X27_Y18_N16
\inst1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = (\inst1|v_count\(3) & (!\inst1|Add1~5\)) # (!\inst1|v_count\(3) & ((\inst1|Add1~5\) # (GND)))
-- \inst1|Add1~7\ = CARRY((!\inst1|Add1~5\) # (!\inst1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(3),
	datad => VCC,
	cin => \inst1|Add1~5\,
	combout => \inst1|Add1~6_combout\,
	cout => \inst1|Add1~7\);

-- Location: LCCOMB_X26_Y18_N4
\inst1|v_count[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[3]~5_combout\ = (\inst1|v_count[7]~3_combout\ & ((\inst1|Add1~6_combout\) # ((!\inst1|v_count[9]~1_combout\ & \inst1|v_count\(3))))) # (!\inst1|v_count[7]~3_combout\ & (!\inst1|v_count[9]~1_combout\ & (\inst1|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[7]~3_combout\,
	datab => \inst1|v_count[9]~1_combout\,
	datac => \inst1|v_count\(3),
	datad => \inst1|Add1~6_combout\,
	combout => \inst1|v_count[3]~5_combout\);

-- Location: FF_X26_Y18_N5
\inst1|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(3));

-- Location: LCCOMB_X26_Y18_N14
\inst1|v_count[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[4]~6_combout\ = (\inst1|v_count[7]~3_combout\ & ((\inst1|Add1~8_combout\) # ((!\inst1|v_count[9]~1_combout\ & \inst1|v_count\(4))))) # (!\inst1|v_count[7]~3_combout\ & (!\inst1|v_count[9]~1_combout\ & (\inst1|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[7]~3_combout\,
	datab => \inst1|v_count[9]~1_combout\,
	datac => \inst1|v_count\(4),
	datad => \inst1|Add1~8_combout\,
	combout => \inst1|v_count[4]~6_combout\);

-- Location: FF_X26_Y18_N15
\inst1|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(4));

-- Location: LCCOMB_X26_Y18_N8
\inst1|v_count[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[5]~8_combout\ = (\inst1|v_count[7]~3_combout\ & ((\inst1|Add1~10_combout\) # ((!\inst1|v_count[9]~1_combout\ & \inst1|v_count\(5))))) # (!\inst1|v_count[7]~3_combout\ & (!\inst1|v_count[9]~1_combout\ & (\inst1|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[7]~3_combout\,
	datab => \inst1|v_count[9]~1_combout\,
	datac => \inst1|v_count\(5),
	datad => \inst1|Add1~10_combout\,
	combout => \inst1|v_count[5]~8_combout\);

-- Location: FF_X26_Y18_N9
\inst1|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(5));

-- Location: LCCOMB_X26_Y18_N16
\inst1|v_count[8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[8]~11_combout\ = (\inst1|v_count[7]~3_combout\ & ((\inst1|Add1~16_combout\) # ((!\inst1|v_count[9]~1_combout\ & \inst1|v_count\(8))))) # (!\inst1|v_count[7]~3_combout\ & (!\inst1|v_count[9]~1_combout\ & (\inst1|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[7]~3_combout\,
	datab => \inst1|v_count[9]~1_combout\,
	datac => \inst1|v_count\(8),
	datad => \inst1|Add1~16_combout\,
	combout => \inst1|v_count[8]~11_combout\);

-- Location: FF_X26_Y18_N17
\inst1|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(8));

-- Location: LCCOMB_X26_Y18_N18
\inst1|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~0_combout\ = (\inst1|v_count\(7) & (\inst1|v_count\(5) & (\inst1|v_count\(6) & \inst1|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(7),
	datab => \inst1|v_count\(5),
	datac => \inst1|v_count\(6),
	datad => \inst1|v_count\(8),
	combout => \inst1|LessThan7~0_combout\);

-- Location: LCCOMB_X26_Y18_N2
\inst1|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = (\inst1|process_0~4_combout\) # ((\inst1|v_count\(4)) # ((\inst1|v_count\(9)) # (!\inst1|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~4_combout\,
	datab => \inst1|v_count\(4),
	datac => \inst1|v_count\(9),
	datad => \inst1|LessThan7~0_combout\,
	combout => \inst1|process_0~5_combout\);

-- Location: FF_X26_Y18_N3
\inst1|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|vert_sync~q\);

-- Location: LCCOMB_X33_Y18_N24
\inst1|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|vert_sync_out~feeder_combout\ = \inst1|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|vert_sync~q\,
	combout => \inst1|vert_sync_out~feeder_combout\);

-- Location: FF_X33_Y18_N25
\inst1|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|vert_sync_out~q\);

-- Location: IOIBUF_X0_Y27_N1
\sw1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1,
	o => \sw1~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\sw2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2,
	o => \sw2~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\sw3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw3,
	o => \sw3~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\sw4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw4,
	o => \sw4~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\sw5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw5,
	o => \sw5~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\sw6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw6,
	o => \sw6~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\sw7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw7,
	o => \sw7~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\sw8~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw8,
	o => \sw8~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\sw9~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw9,
	o => \sw9~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\sw0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw0,
	o => \sw0~input_o\);

-- Location: FF_X28_Y18_N25
\inst1|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|process_0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|video_on_h~q\);

-- Location: FF_X24_Y18_N29
\inst1|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(2),
	sload => VCC,
	ena => \inst1|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(2));

-- Location: LCCOMB_X27_Y18_N6
\inst1|v_count[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[7]~3_combout\ = (\inst1|process_0~12_combout\ & (!\inst1|Equal1~0_combout\ & (\inst1|Equal0~1_combout\ & \inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~12_combout\,
	datab => \inst1|Equal1~0_combout\,
	datac => \inst1|Equal0~1_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|v_count[7]~3_combout\);

-- Location: LCCOMB_X26_Y18_N10
\inst1|v_count[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[2]~4_combout\ = (\inst1|Add1~4_combout\ & ((\inst1|v_count[7]~3_combout\) # ((!\inst1|v_count[9]~1_combout\ & \inst1|v_count\(2))))) # (!\inst1|Add1~4_combout\ & (!\inst1|v_count[9]~1_combout\ & (\inst1|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~4_combout\,
	datab => \inst1|v_count[9]~1_combout\,
	datac => \inst1|v_count\(2),
	datad => \inst1|v_count[7]~3_combout\,
	combout => \inst1|v_count[2]~4_combout\);

-- Location: FF_X26_Y18_N11
\inst1|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(2));

-- Location: LCCOMB_X26_Y18_N28
\inst1|pixel_row[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_row[2]~feeder_combout\ = \inst1|v_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(2),
	combout => \inst1|pixel_row[2]~feeder_combout\);

-- Location: LCCOMB_X26_Y18_N24
\inst1|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~1_combout\ = (!\inst1|v_count\(9) & !\inst1|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(9),
	datad => \inst1|LessThan7~0_combout\,
	combout => \inst1|LessThan7~1_combout\);

-- Location: FF_X26_Y18_N29
\inst1|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_row[2]~feeder_combout\,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(2));

-- Location: FF_X26_Y18_N1
\inst1|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(3),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(3));

-- Location: FF_X26_Y18_N31
\inst1|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(4),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(4));

-- Location: FF_X24_Y18_N19
\inst1|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(5),
	sload => VCC,
	ena => \inst1|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(5));

-- Location: FF_X26_Y18_N27
\inst1|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(5),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(5));

-- Location: LCCOMB_X29_Y18_N4
\inst1|pixel_row[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_row[8]~feeder_combout\ = \inst1|v_count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(8),
	combout => \inst1|pixel_row[8]~feeder_combout\);

-- Location: FF_X29_Y18_N5
\inst1|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_row[8]~feeder_combout\,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(8));

-- Location: LCCOMB_X26_Y18_N20
\inst1|pixel_row[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_row[7]~feeder_combout\ = \inst1|v_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(7),
	combout => \inst1|pixel_row[7]~feeder_combout\);

-- Location: FF_X26_Y18_N21
\inst1|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_row[7]~feeder_combout\,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(7));

-- Location: LCCOMB_X29_Y18_N26
\inst16|select_gamemode~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~19_combout\ = (!\inst1|pixel_row\(6) & (\inst1|pixel_row\(5) & (\inst1|pixel_row\(8) & !\inst1|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(6),
	datab => \inst1|pixel_row\(5),
	datac => \inst1|pixel_row\(8),
	datad => \inst1|pixel_row\(7),
	combout => \inst16|select_gamemode~19_combout\);

-- Location: LCCOMB_X26_Y19_N24
\inst16|line2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|line2~7_combout\ = ((!\inst16|select_gamemode~19_combout\) # (!\inst1|pixel_column\(5))) # (!\inst16|select_gamemode~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~16_combout\,
	datac => \inst1|pixel_column\(5),
	datad => \inst16|select_gamemode~19_combout\,
	combout => \inst16|line2~7_combout\);

-- Location: FF_X28_Y18_N31
\inst1|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(7),
	sload => VCC,
	ena => \inst1|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(7));

-- Location: FF_X24_Y18_N1
\inst1|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(6),
	sload => VCC,
	ena => \inst1|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(6));

-- Location: LCCOMB_X27_Y19_N26
\inst16|select_gamemode~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~24_combout\ = (\inst16|select_gamemode~12_combout\ & (\inst1|pixel_column\(7) & !\inst1|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~12_combout\,
	datac => \inst1|pixel_column\(7),
	datad => \inst1|pixel_column\(6),
	combout => \inst16|select_gamemode~24_combout\);

-- Location: FF_X28_Y18_N21
\inst1|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(8),
	sload => VCC,
	ena => \inst1|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(8));

-- Location: FF_X28_Y18_N17
\inst1|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(9),
	sload => VCC,
	ena => \inst1|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(9));

-- Location: LCCOMB_X28_Y18_N16
\inst16|select_gamemode~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~4_combout\ = (\inst1|pixel_row\(6) & (!\inst1|pixel_row\(7) & (!\inst1|pixel_column\(9) & !\inst1|pixel_row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(6),
	datab => \inst1|pixel_row\(7),
	datac => \inst1|pixel_column\(9),
	datad => \inst1|pixel_row\(8),
	combout => \inst16|select_gamemode~4_combout\);

-- Location: LCCOMB_X28_Y18_N0
\inst16|select_gamemode~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~9_combout\ = (!\inst16|LessThan24~0_combout\ & (\inst1|pixel_column\(8) & (!\inst1|pixel_column\(7) & \inst16|select_gamemode~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|LessThan24~0_combout\,
	datab => \inst1|pixel_column\(8),
	datac => \inst1|pixel_column\(7),
	datad => \inst16|select_gamemode~4_combout\,
	combout => \inst16|select_gamemode~9_combout\);

-- Location: LCCOMB_X27_Y19_N0
\inst16|char_addr~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~25_combout\ = (\inst16|line2~7_combout\ & (!\inst16|select_gamemode~24_combout\ & ((\inst16|select_gamemode~6_combout\) # (!\inst16|select_gamemode~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~6_combout\,
	datab => \inst16|line2~7_combout\,
	datac => \inst16|select_gamemode~24_combout\,
	datad => \inst16|select_gamemode~9_combout\,
	combout => \inst16|char_addr~25_combout\);

-- Location: LCCOMB_X26_Y19_N12
\inst16|select_gamemode~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~20_combout\ = (\inst1|pixel_column\(8) & (!\inst1|pixel_column\(9) & \inst16|select_gamemode~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datac => \inst1|pixel_column\(9),
	datad => \inst16|select_gamemode~19_combout\,
	combout => \inst16|select_gamemode~20_combout\);

-- Location: LCCOMB_X26_Y19_N22
\inst16|select_gamemode~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~29_combout\ = (!\inst1|pixel_column\(6) & (\inst1|pixel_column\(7) & (!\inst1|pixel_column\(5) & \inst16|select_gamemode~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datab => \inst1|pixel_column\(7),
	datac => \inst1|pixel_column\(5),
	datad => \inst16|select_gamemode~20_combout\,
	combout => \inst16|select_gamemode~29_combout\);

-- Location: LCCOMB_X24_Y19_N14
\inst16|select_gamemode~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~16_combout\ = (!\inst1|pixel_column\(9) & (\inst1|pixel_column\(8) & !\inst1|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(9),
	datac => \inst1|pixel_column\(8),
	datad => \inst1|pixel_column\(7),
	combout => \inst16|select_gamemode~16_combout\);

-- Location: LCCOMB_X28_Y18_N30
\inst16|char_addr~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~8_combout\ = (\inst1|pixel_column\(5) & (((\inst1|pixel_column\(8)) # (!\inst1|pixel_column\(7))) # (!\inst1|pixel_column\(6)))) # (!\inst1|pixel_column\(5) & (((\inst1|pixel_column\(6) & \inst1|pixel_column\(7))) # 
-- (!\inst1|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(5),
	datab => \inst1|pixel_column\(6),
	datac => \inst1|pixel_column\(7),
	datad => \inst1|pixel_column\(8),
	combout => \inst16|char_addr~8_combout\);

-- Location: LCCOMB_X28_Y18_N24
\inst16|char_addr~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~5_combout\ = (\inst1|pixel_row\(8)) # ((\inst16|char_addr~8_combout\) # (!\inst1|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(8),
	datab => \inst1|pixel_row\(7),
	datad => \inst16|char_addr~8_combout\,
	combout => \inst16|char_addr~5_combout\);

-- Location: LCCOMB_X29_Y18_N6
\inst16|char_addr~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~43_combout\ = (((\inst1|pixel_column\(9)) # (\inst16|char_addr~5_combout\)) # (!\inst1|pixel_row\(5))) # (!\inst1|pixel_row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(6),
	datab => \inst1|pixel_row\(5),
	datac => \inst1|pixel_column\(9),
	datad => \inst16|char_addr~5_combout\,
	combout => \inst16|char_addr~43_combout\);

-- Location: LCCOMB_X29_Y18_N30
\inst16|select_gamemode~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~17_combout\ = (\inst1|pixel_row\(6) & (\inst1|pixel_row\(5) & (!\inst1|pixel_row\(8) & \inst1|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(6),
	datab => \inst1|pixel_row\(5),
	datac => \inst1|pixel_row\(8),
	datad => \inst1|pixel_row\(7),
	combout => \inst16|select_gamemode~17_combout\);

-- Location: LCCOMB_X28_Y19_N2
\inst16|char_addr~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~42_combout\ = (\inst16|char_addr~43_combout\ & (((!\inst16|select_gamemode~17_combout\) # (!\inst16|select_gamemode~16_combout\)) # (!\inst1|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(5),
	datab => \inst16|select_gamemode~16_combout\,
	datac => \inst16|char_addr~43_combout\,
	datad => \inst16|select_gamemode~17_combout\,
	combout => \inst16|char_addr~42_combout\);

-- Location: LCCOMB_X27_Y19_N8
\inst16|select_gamemode~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~22_combout\ = (!\inst1|pixel_column\(8) & (\inst1|pixel_column\(6) & (\inst1|pixel_column\(7) & !\inst1|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst1|pixel_column\(6),
	datac => \inst1|pixel_column\(7),
	datad => \inst1|pixel_column\(5),
	combout => \inst16|select_gamemode~22_combout\);

-- Location: LCCOMB_X26_Y19_N26
\inst16|select_gamemode~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~23_combout\ = (!\inst1|pixel_column\(9) & (\inst16|select_gamemode~22_combout\ & \inst16|select_gamemode~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(9),
	datac => \inst16|select_gamemode~22_combout\,
	datad => \inst16|select_gamemode~19_combout\,
	combout => \inst16|select_gamemode~23_combout\);

-- Location: LCCOMB_X28_Y19_N16
\inst16|select_gamemode~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~21_combout\ = (!\inst1|pixel_column\(5) & (\inst16|select_gamemode~19_combout\ & (\inst1|pixel_column\(6) & \inst16|select_gamemode~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(5),
	datab => \inst16|select_gamemode~19_combout\,
	datac => \inst1|pixel_column\(6),
	datad => \inst16|select_gamemode~16_combout\,
	combout => \inst16|select_gamemode~21_combout\);

-- Location: LCCOMB_X28_Y19_N20
\inst16|char_addr~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~23_combout\ = (\inst16|line2~8_combout\ & (\inst16|char_addr~42_combout\ & (!\inst16|select_gamemode~23_combout\ & !\inst16|select_gamemode~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|line2~8_combout\,
	datab => \inst16|char_addr~42_combout\,
	datac => \inst16|select_gamemode~23_combout\,
	datad => \inst16|select_gamemode~21_combout\,
	combout => \inst16|char_addr~23_combout\);

-- Location: LCCOMB_X28_Y19_N6
\inst16|char_addr~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~24_combout\ = (\inst16|title~2_combout\ & \inst16|char_addr~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|title~2_combout\,
	datad => \inst16|char_addr~23_combout\,
	combout => \inst16|char_addr~24_combout\);

-- Location: LCCOMB_X26_Y19_N8
\inst16|char_addr~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~26_combout\ = (\inst16|char_addr~22_combout\) # (((!\inst16|select_gamemode~29_combout\ & \inst16|char_addr~24_combout\)) # (!\inst16|char_addr~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|char_addr~22_combout\,
	datab => \inst16|char_addr~25_combout\,
	datac => \inst16|select_gamemode~29_combout\,
	datad => \inst16|char_addr~24_combout\,
	combout => \inst16|char_addr~26_combout\);

-- Location: LCCOMB_X24_Y19_N0
\inst16|char_addr~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~19_combout\ = (\inst16|select_gamemode~10_combout\ & (\inst1|pixel_column\(6) & (!\inst1|pixel_column\(9) & \inst1|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~10_combout\,
	datab => \inst1|pixel_column\(6),
	datac => \inst1|pixel_column\(9),
	datad => \inst1|pixel_column\(5),
	combout => \inst16|char_addr~19_combout\);

-- Location: LCCOMB_X28_Y19_N28
\inst16|char_addr[0]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr[0]~46_combout\ = (!\inst16|char_addr~19_combout\ & (((\inst1|pixel_column\(5) & \inst1|pixel_column\(6))) # (!\inst16|select_gamemode~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(5),
	datab => \inst16|char_addr~19_combout\,
	datac => \inst1|pixel_column\(6),
	datad => \inst16|select_gamemode~16_combout\,
	combout => \inst16|char_addr[0]~46_combout\);

-- Location: FF_X26_Y18_N13
\inst1|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(6),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(6));

-- Location: LCCOMB_X29_Y18_N18
\inst16|LessThan24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|LessThan24~0_combout\ = (\inst1|pixel_row\(5) & \inst1|pixel_row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(5),
	datad => \inst1|pixel_row\(6),
	combout => \inst16|LessThan24~0_combout\);

-- Location: LCCOMB_X29_Y18_N12
\inst16|select_gamemode~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~18_combout\ = (!\inst1|pixel_column\(9) & (!\inst1|pixel_row\(8) & \inst1|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(9),
	datac => \inst1|pixel_row\(8),
	datad => \inst1|pixel_column\(8),
	combout => \inst16|select_gamemode~18_combout\);

-- Location: LCCOMB_X29_Y18_N0
\inst16|char_addr[0]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr[0]~28_combout\ = (\inst16|char_addr[0]~27_combout\) # (((!\inst16|select_gamemode~18_combout\) # (!\inst16|LessThan24~0_combout\)) # (!\inst1|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|char_addr[0]~27_combout\,
	datab => \inst1|pixel_row\(7),
	datac => \inst16|LessThan24~0_combout\,
	datad => \inst16|select_gamemode~18_combout\,
	combout => \inst16|char_addr[0]~28_combout\);

-- Location: LCCOMB_X28_Y19_N18
\inst16|char_addr[0]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr[0]~47_combout\ = (\inst16|line2~9_combout\ & (\inst16|char_addr[0]~28_combout\ & ((\inst16|char_addr[0]~46_combout\) # (!\inst16|select_gamemode~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|line2~9_combout\,
	datab => \inst16|char_addr[0]~46_combout\,
	datac => \inst16|char_addr[0]~28_combout\,
	datad => \inst16|select_gamemode~17_combout\,
	combout => \inst16|char_addr[0]~47_combout\);

-- Location: LCCOMB_X28_Y19_N24
\inst16|char_addr[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr[0]~29_combout\ = (!\inst16|char_addr[0]~47_combout\) # (!\inst16|title~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|title~2_combout\,
	datad => \inst16|char_addr[0]~47_combout\,
	combout => \inst16|char_addr[0]~29_combout\);

-- Location: FF_X26_Y19_N9
\inst16|char_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst16|char_addr~26_combout\,
	ena => \inst16|char_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|char_addr\(0));

-- Location: LCCOMB_X26_Y19_N0
\inst16|char_addr~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~32_combout\ = (\inst16|select_gamemode~17_combout\ & (\inst16|select_gamemode~16_combout\ & (!\inst1|pixel_column\(6)))) # (!\inst16|select_gamemode~17_combout\ & (((\inst16|select_gamemode~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~16_combout\,
	datab => \inst16|select_gamemode~17_combout\,
	datac => \inst1|pixel_column\(6),
	datad => \inst16|select_gamemode~19_combout\,
	combout => \inst16|char_addr~32_combout\);

-- Location: LCCOMB_X26_Y19_N6
\inst16|char_addr~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~33_combout\ = ((\inst16|char_addr~32_combout\ & ((\inst16|char_addr~19_combout\) # (\inst16|select_gamemode~17_combout\))) # (!\inst16|char_addr~32_combout\ & (\inst16|char_addr~19_combout\ & \inst16|select_gamemode~17_combout\))) # 
-- (!\inst16|char_addr~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|char_addr~31_combout\,
	datab => \inst16|char_addr~32_combout\,
	datac => \inst16|char_addr~19_combout\,
	datad => \inst16|select_gamemode~17_combout\,
	combout => \inst16|char_addr~33_combout\);

-- Location: FF_X26_Y19_N7
\inst16|char_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst16|char_addr~33_combout\,
	ena => \inst16|char_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|char_addr\(1));

-- Location: LCCOMB_X24_Y19_N6
\inst16|select_gamemode~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~10_combout\ = (!\inst1|pixel_column\(8) & \inst1|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|pixel_column\(8),
	datad => \inst1|pixel_column\(7),
	combout => \inst16|select_gamemode~10_combout\);

-- Location: FF_X24_Y18_N31
\inst1|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(4),
	sload => VCC,
	ena => \inst1|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(4));

-- Location: LCCOMB_X24_Y19_N4
\inst16|select_gamemode~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~8_combout\ = \inst1|pixel_column\(4) $ (\inst1|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|pixel_column\(4),
	datad => \inst1|pixel_column\(5),
	combout => \inst16|select_gamemode~8_combout\);

-- Location: LCCOMB_X27_Y19_N6
\inst16|select_gamemode~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~25_combout\ = (\inst16|select_gamemode~5_combout\ & (\inst16|select_gamemode~10_combout\ & (\inst16|select_gamemode~8_combout\ & !\inst1|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~5_combout\,
	datab => \inst16|select_gamemode~10_combout\,
	datac => \inst16|select_gamemode~8_combout\,
	datad => \inst1|pixel_column\(6),
	combout => \inst16|select_gamemode~25_combout\);

-- Location: LCCOMB_X28_Y19_N10
\inst16|char_addr~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~30_combout\ = (!\inst16|select_gamemode~25_combout\ & (!\inst16|select_gamemode~21_combout\ & ((!\inst16|char_addr~23_combout\) # (!\inst16|title~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|title~2_combout\,
	datab => \inst16|char_addr~23_combout\,
	datac => \inst16|select_gamemode~25_combout\,
	datad => \inst16|select_gamemode~21_combout\,
	combout => \inst16|char_addr~30_combout\);

-- Location: LCCOMB_X27_Y19_N24
\inst16|select_gamemode~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~13_combout\ = (!\inst16|select_gamemode~6_combout\ & (\inst16|select_gamemode~4_combout\ & (\inst16|select_gamemode~10_combout\ & !\inst16|LessThan24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~6_combout\,
	datab => \inst16|select_gamemode~4_combout\,
	datac => \inst16|select_gamemode~10_combout\,
	datad => \inst16|LessThan24~0_combout\,
	combout => \inst16|select_gamemode~13_combout\);

-- Location: LCCOMB_X27_Y19_N10
\inst16|char_addr~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~34_combout\ = (!\inst16|select_gamemode~13_combout\ & (((!\inst1|pixel_column\(6)) # (!\inst1|pixel_column\(7))) # (!\inst16|select_gamemode~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~12_combout\,
	datab => \inst16|select_gamemode~13_combout\,
	datac => \inst1|pixel_column\(7),
	datad => \inst1|pixel_column\(6),
	combout => \inst16|char_addr~34_combout\);

-- Location: LCCOMB_X28_Y19_N30
\inst16|char_addr~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~35_combout\ = (\inst16|select_gamemode~23_combout\) # (((!\inst16|char_addr~34_combout\) # (!\inst16|char_addr~43_combout\)) # (!\inst16|char_addr~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~23_combout\,
	datab => \inst16|char_addr~30_combout\,
	datac => \inst16|char_addr~43_combout\,
	datad => \inst16|char_addr~34_combout\,
	combout => \inst16|char_addr~35_combout\);

-- Location: FF_X28_Y19_N31
\inst16|char_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst16|char_addr~35_combout\,
	ena => \inst16|char_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|char_addr\(2));

-- Location: LCCOMB_X26_Y19_N28
\inst16|char_addr~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~37_combout\ = (\inst16|char_addr~36_combout\) # (((\inst16|select_gamemode~29_combout\ & \inst16|char_addr~24_combout\)) # (!\inst16|char_addr~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|char_addr~36_combout\,
	datab => \inst16|char_addr~25_combout\,
	datac => \inst16|select_gamemode~29_combout\,
	datad => \inst16|char_addr~24_combout\,
	combout => \inst16|char_addr~37_combout\);

-- Location: FF_X26_Y19_N29
\inst16|char_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst16|char_addr~37_combout\,
	ena => \inst16|char_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|char_addr\(3));

-- Location: LCCOMB_X26_Y19_N16
\inst16|char_addr~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~38_combout\ = (\inst16|char_addr~19_combout\ & \inst16|select_gamemode~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|char_addr~19_combout\,
	datad => \inst16|select_gamemode~19_combout\,
	combout => \inst16|char_addr~38_combout\);

-- Location: LCCOMB_X27_Y19_N18
\inst16|char_addr~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~17_combout\ = (\inst16|select_gamemode~9_combout\ & (((\inst16|select_gamemode~8_combout\ & !\inst1|pixel_column\(6))) # (!\inst16|select_gamemode~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~6_combout\,
	datab => \inst16|select_gamemode~8_combout\,
	datac => \inst1|pixel_column\(6),
	datad => \inst16|select_gamemode~9_combout\,
	combout => \inst16|char_addr~17_combout\);

-- Location: LCCOMB_X26_Y18_N0
\inst16|select_gamemode~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~5_combout\ = (\inst16|select_gamemode~4_combout\ & ((!\inst1|pixel_row\(6)) # (!\inst1|pixel_row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(5),
	datab => \inst1|pixel_row\(6),
	datad => \inst16|select_gamemode~4_combout\,
	combout => \inst16|select_gamemode~5_combout\);

-- Location: LCCOMB_X27_Y19_N16
\inst16|select_gamemode~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~7_combout\ = (!\inst16|select_gamemode~6_combout\ & (\inst1|pixel_column\(7) & (\inst16|select_gamemode~5_combout\ & \inst1|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~6_combout\,
	datab => \inst1|pixel_column\(7),
	datac => \inst16|select_gamemode~5_combout\,
	datad => \inst1|pixel_column\(8),
	combout => \inst16|select_gamemode~7_combout\);

-- Location: LCCOMB_X27_Y19_N20
\inst16|char_addr~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~18_combout\ = (!\inst16|char_addr~17_combout\ & (!\inst16|select_gamemode~7_combout\ & ((!\inst16|select_gamemode~5_combout\) # (!\inst16|char_addr~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|char_addr~16_combout\,
	datab => \inst16|char_addr~17_combout\,
	datac => \inst16|select_gamemode~5_combout\,
	datad => \inst16|select_gamemode~7_combout\,
	combout => \inst16|char_addr~18_combout\);

-- Location: LCCOMB_X26_Y19_N2
\inst16|select_gamemode~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~26_combout\ = (!\inst1|pixel_column\(6) & (\inst16|select_gamemode~16_combout\ & (\inst1|pixel_column\(5) & \inst16|select_gamemode~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datab => \inst16|select_gamemode~16_combout\,
	datac => \inst1|pixel_column\(5),
	datad => \inst16|select_gamemode~17_combout\,
	combout => \inst16|select_gamemode~26_combout\);

-- Location: LCCOMB_X26_Y19_N14
\inst16|char_addr~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~39_combout\ = (\inst16|select_gamemode~23_combout\) # ((\inst16|char_addr~38_combout\) # ((\inst16|select_gamemode~26_combout\) # (!\inst16|char_addr~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~23_combout\,
	datab => \inst16|char_addr~38_combout\,
	datac => \inst16|char_addr~18_combout\,
	datad => \inst16|select_gamemode~26_combout\,
	combout => \inst16|char_addr~39_combout\);

-- Location: FF_X26_Y19_N15
\inst16|char_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst16|char_addr~39_combout\,
	ena => \inst16|char_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|char_addr\(4));

-- Location: LCCOMB_X28_Y18_N8
\inst16|char_addr~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~44_combout\ = (\inst1|pixel_column\(4) & (\inst1|pixel_column\(6) & (\inst1|pixel_column\(5) & \inst1|pixel_column\(8)))) # (!\inst1|pixel_column\(4) & (!\inst1|pixel_column\(6) & (!\inst1|pixel_column\(5) & !\inst1|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst1|pixel_column\(6),
	datac => \inst1|pixel_column\(5),
	datad => \inst1|pixel_column\(8),
	combout => \inst16|char_addr~44_combout\);

-- Location: LCCOMB_X28_Y18_N2
\inst16|char_addr~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~45_combout\ = ((\inst1|pixel_column\(7) & (\inst16|char_addr~44_combout\)) # (!\inst1|pixel_column\(7) & ((!\inst1|pixel_column\(8))))) # (!\inst16|select_gamemode~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datab => \inst16|char_addr~44_combout\,
	datac => \inst16|select_gamemode~5_combout\,
	datad => \inst1|pixel_column\(8),
	combout => \inst16|char_addr~45_combout\);

-- Location: LCCOMB_X28_Y18_N12
\inst16|select_gamemode~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~27_combout\ = (!\inst1|pixel_column\(7) & (\inst1|pixel_column\(8) & (\inst1|pixel_column\(5) $ (\inst1|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datab => \inst1|pixel_column\(8),
	datac => \inst1|pixel_column\(5),
	datad => \inst1|pixel_column\(4),
	combout => \inst16|select_gamemode~27_combout\);

-- Location: LCCOMB_X28_Y18_N6
\inst16|char_addr~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~40_combout\ = (!\inst16|LessThan24~0_combout\ & (\inst16|select_gamemode~4_combout\ & (\inst1|pixel_column\(6) & \inst16|select_gamemode~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|LessThan24~0_combout\,
	datab => \inst16|select_gamemode~4_combout\,
	datac => \inst1|pixel_column\(6),
	datad => \inst16|select_gamemode~27_combout\,
	combout => \inst16|char_addr~40_combout\);

-- Location: LCCOMB_X28_Y18_N4
\inst16|char_addr~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char_addr~41_combout\ = (\inst16|char_addr~40_combout\) # ((\inst16|char_addr[0]~47_combout\ & (\inst16|char_addr~45_combout\ & \inst16|char_addr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|char_addr[0]~47_combout\,
	datab => \inst16|char_addr~45_combout\,
	datac => \inst16|char_addr\(5),
	datad => \inst16|char_addr~40_combout\,
	combout => \inst16|char_addr~41_combout\);

-- Location: FF_X28_Y18_N5
\inst16|char_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst16|char_addr~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|char_addr\(5));

-- Location: LCCOMB_X24_Y18_N16
\inst16|char|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char|Mux0~1_combout\ = (\inst16|char|Mux0~0_combout\ & (((\inst16|char|altsyncram_component|auto_generated|q_a\(0))) # (!\inst1|pixel_column\(2)))) # (!\inst16|char|Mux0~0_combout\ & (\inst1|pixel_column\(2) & 
-- (\inst16|char|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|char|Mux0~0_combout\,
	datab => \inst1|pixel_column\(2),
	datac => \inst16|char|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst16|char|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst16|char|Mux0~1_combout\);

-- Location: FF_X24_Y18_N15
\inst1|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(3),
	sload => VCC,
	ena => \inst1|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(3));

-- Location: LCCOMB_X24_Y18_N2
\inst16|char|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char|Mux0~2_combout\ = (\inst1|pixel_column\(3) & (((\inst1|pixel_column\(2))))) # (!\inst1|pixel_column\(3) & ((\inst1|pixel_column\(2) & ((\inst16|char|altsyncram_component|auto_generated|q_a\(6)))) # (!\inst1|pixel_column\(2) & 
-- (\inst16|char|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|char|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst1|pixel_column\(3),
	datac => \inst16|char|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst1|pixel_column\(2),
	combout => \inst16|char|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst16|char|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char|Mux0~3_combout\ = (\inst16|char|Mux0~2_combout\ & ((\inst16|char|altsyncram_component|auto_generated|q_a\(4)) # ((!\inst1|pixel_column\(3))))) # (!\inst16|char|Mux0~2_combout\ & (((\inst1|pixel_column\(3) & 
-- \inst16|char|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|char|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst16|char|Mux0~2_combout\,
	datac => \inst1|pixel_column\(3),
	datad => \inst16|char|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst16|char|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y18_N0
\inst16|char|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|char|Mux0~4_combout\ = (\inst1|pixel_column\(4) & (\inst16|char|Mux0~1_combout\)) # (!\inst1|pixel_column\(4) & ((\inst16|char|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst16|char|Mux0~1_combout\,
	datad => \inst16|char|Mux0~3_combout\,
	combout => \inst16|char|Mux0~4_combout\);

-- Location: LCCOMB_X24_Y19_N24
\inst16|select_gamemode~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~14_combout\ = (\inst1|pixel_column\(6) & (\inst1|pixel_column\(5) & (\inst1|pixel_column\(4) & !\inst1|pixel_column\(7)))) # (!\inst1|pixel_column\(6) & (!\inst1|pixel_column\(5) & (!\inst1|pixel_column\(4) & 
-- \inst1|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datab => \inst1|pixel_column\(5),
	datac => \inst1|pixel_column\(4),
	datad => \inst1|pixel_column\(7),
	combout => \inst16|select_gamemode~14_combout\);

-- Location: LCCOMB_X27_Y19_N28
\inst16|select_gamemode~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~15_combout\ = (\inst1|pixel_column\(8) & (\inst16|select_gamemode~4_combout\ & (\inst16|select_gamemode~14_combout\ & !\inst16|LessThan24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(8),
	datab => \inst16|select_gamemode~4_combout\,
	datac => \inst16|select_gamemode~14_combout\,
	datad => \inst16|LessThan24~0_combout\,
	combout => \inst16|select_gamemode~15_combout\);

-- Location: LCCOMB_X27_Y19_N30
\inst16|select_gamemode~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|select_gamemode~12_combout\ = (\inst16|select_gamemode~5_combout\ & (\inst1|pixel_column\(8) & (\inst1|pixel_column\(5) $ (\inst1|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|select_gamemode~5_combout\,
	datab => \inst1|pixel_column\(5),
	datac => \inst1|pixel_column\(4),
	datad => \inst1|pixel_column\(8),
	combout => \inst16|select_gamemode~12_combout\);

-- Location: LCCOMB_X27_Y19_N22
\inst16|title~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|title~1_combout\ = (!\inst16|select_gamemode~13_combout\ & ((!\inst16|select_gamemode~12_combout\) # (!\inst1|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(7),
	datab => \inst16|select_gamemode~13_combout\,
	datac => \inst16|select_gamemode~12_combout\,
	combout => \inst16|title~1_combout\);

-- Location: LCCOMB_X27_Y19_N14
\inst16|title~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|title~2_combout\ = (\inst16|title~0_combout\ & (!\inst16|select_gamemode~15_combout\ & (\inst16|title~1_combout\ & \inst16|char_addr~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|title~0_combout\,
	datab => \inst16|select_gamemode~15_combout\,
	datac => \inst16|title~1_combout\,
	datad => \inst16|char_addr~18_combout\,
	combout => \inst16|title~2_combout\);

-- Location: LCCOMB_X28_Y19_N0
\inst16|title~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|title~3_combout\ = (\inst16|title~2_combout\ & ((\inst16|title~q\))) # (!\inst16|title~2_combout\ & (\inst16|char|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|char|Mux0~4_combout\,
	datac => \inst16|title~q\,
	datad => \inst16|title~2_combout\,
	combout => \inst16|title~3_combout\);

-- Location: FF_X28_Y19_N1
\inst16|title\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst16|title~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|title~q\);

-- Location: LCCOMB_X37_Y18_N24
\inst1|video_on_v~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|video_on_v~feeder_combout\ = \inst1|LessThan7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|LessThan7~1_combout\,
	combout => \inst1|video_on_v~feeder_combout\);

-- Location: FF_X37_Y18_N25
\inst1|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|video_on_v~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|video_on_v~q\);

-- Location: LCCOMB_X40_Y20_N30
\inst1|blue_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|blue_out~1_combout\ = (!\inst1|blue_out~0_combout\ & (\inst1|video_on_h~q\ & (!\inst16|title~q\ & \inst1|video_on_v~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|blue_out~0_combout\,
	datab => \inst1|video_on_h~q\,
	datac => \inst16|title~q\,
	datad => \inst1|video_on_v~q\,
	combout => \inst1|blue_out~1_combout\);

-- Location: FF_X40_Y20_N1
\inst1|blue_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|blue_out~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|blue_out\(3));

-- Location: LCCOMB_X40_Y20_N24
\inst1|blue_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|blue_out~2_combout\ = (\inst1|video_on_h~q\ & (\inst1|video_on_v~q\ & ((\inst16|title~q\) # (!\inst1|blue_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|blue_out~0_combout\,
	datab => \inst1|video_on_h~q\,
	datac => \inst16|title~q\,
	datad => \inst1|video_on_v~q\,
	combout => \inst1|blue_out~2_combout\);

-- Location: LCCOMB_X40_Y19_N4
\inst1|blue_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|blue_out[2]~feeder_combout\ = \inst1|blue_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|blue_out~2_combout\,
	combout => \inst1|blue_out[2]~feeder_combout\);

-- Location: FF_X40_Y19_N5
\inst1|blue_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|blue_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|blue_out\(2));

-- Location: LCCOMB_X40_Y19_N6
\inst1|blue_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|blue_out[1]~feeder_combout\ = \inst1|blue_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|blue_out~2_combout\,
	combout => \inst1|blue_out[1]~feeder_combout\);

-- Location: FF_X40_Y19_N7
\inst1|blue_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|blue_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|blue_out\(1));

-- Location: FF_X40_Y19_N17
\inst1|blue_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|blue_out~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|blue_out\(0));

-- Location: LCCOMB_X40_Y20_N6
\inst1|green_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out[3]~feeder_combout\ = \inst1|blue_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|blue_out~2_combout\,
	combout => \inst1|green_out[3]~feeder_combout\);

-- Location: FF_X40_Y20_N7
\inst1|green_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|green_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|green_out\(3));

-- Location: LCCOMB_X40_Y22_N28
\inst1|green_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out[2]~feeder_combout\ = \inst1|blue_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|blue_out~2_combout\,
	combout => \inst1|green_out[2]~feeder_combout\);

-- Location: FF_X40_Y22_N29
\inst1|green_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|green_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|green_out\(2));

-- Location: LCCOMB_X40_Y22_N30
\inst1|green_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out[1]~feeder_combout\ = \inst1|blue_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|blue_out~2_combout\,
	combout => \inst1|green_out[1]~feeder_combout\);

-- Location: FF_X40_Y22_N31
\inst1|green_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|green_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|green_out\(1));

-- Location: LCCOMB_X40_Y20_N12
\inst1|green_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out[0]~feeder_combout\ = \inst1|blue_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|blue_out~2_combout\,
	combout => \inst1|green_out[0]~feeder_combout\);

-- Location: FF_X40_Y20_N13
\inst1|green_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|green_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|green_out\(0));

-- Location: LCCOMB_X40_Y20_N10
\inst1|red_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|red_out[3]~feeder_combout\ = \inst1|blue_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|blue_out~2_combout\,
	combout => \inst1|red_out[3]~feeder_combout\);

-- Location: FF_X40_Y20_N11
\inst1|red_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|red_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|red_out\(3));

-- Location: LCCOMB_X40_Y20_N4
\inst1|red_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|red_out[2]~feeder_combout\ = \inst1|blue_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|blue_out~2_combout\,
	combout => \inst1|red_out[2]~feeder_combout\);

-- Location: FF_X40_Y20_N5
\inst1|red_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|red_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|red_out\(2));

-- Location: LCCOMB_X40_Y25_N16
\inst1|red_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|red_out[1]~feeder_combout\ = \inst1|blue_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|blue_out~2_combout\,
	combout => \inst1|red_out[1]~feeder_combout\);

-- Location: FF_X40_Y25_N17
\inst1|red_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|red_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|red_out\(1));

-- Location: LCCOMB_X40_Y23_N16
\inst1|red_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|red_out[0]~feeder_combout\ = \inst1|blue_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|blue_out~2_combout\,
	combout => \inst1|red_out[0]~feeder_combout\);

-- Location: FF_X40_Y23_N17
\inst1|red_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|red_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|red_out\(0));

-- Location: IOIBUF_X0_Y21_N8
\pb0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb0,
	o => \pb0~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\pb1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb1,
	o => \pb1~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\pb2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb2,
	o => \pb2~input_o\);

-- Location: LCCOMB_X36_Y21_N12
\inst4|SHIFTIN[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[1]~0_combout\ = (!\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst4|READ_CHAR~q\ & \inst4|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst4|READ_CHAR~q\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|SHIFTIN[1]~0_combout\);

-- Location: FF_X36_Y21_N13
\inst4|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse_data~input_o\,
	sload => VCC,
	ena => \inst4|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(8));

-- Location: LCCOMB_X36_Y21_N26
\inst4|SHIFTIN[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[7]~feeder_combout\ = \inst4|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(8),
	combout => \inst4|SHIFTIN[7]~feeder_combout\);

-- Location: FF_X36_Y21_N27
\inst4|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[7]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(7));

-- Location: LCCOMB_X36_Y21_N16
\inst4|SHIFTIN[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[6]~feeder_combout\ = \inst4|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(7),
	combout => \inst4|SHIFTIN[6]~feeder_combout\);

-- Location: FF_X36_Y21_N17
\inst4|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[6]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(6));

-- Location: LCCOMB_X36_Y21_N10
\inst4|SHIFTIN[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[5]~feeder_combout\ = \inst4|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(6),
	combout => \inst4|SHIFTIN[5]~feeder_combout\);

-- Location: FF_X36_Y21_N11
\inst4|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[5]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(5));

-- Location: LCCOMB_X36_Y21_N28
\inst4|SHIFTIN[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[4]~feeder_combout\ = \inst4|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(5),
	combout => \inst4|SHIFTIN[4]~feeder_combout\);

-- Location: FF_X36_Y21_N29
\inst4|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[4]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(4));

-- Location: LCCOMB_X36_Y21_N30
\inst4|SHIFTIN[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[3]~feeder_combout\ = \inst4|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(4),
	combout => \inst4|SHIFTIN[3]~feeder_combout\);

-- Location: FF_X36_Y21_N31
\inst4|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[3]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(3));

-- Location: LCCOMB_X36_Y21_N18
\inst4|SHIFTIN[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[2]~feeder_combout\ = \inst4|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(3),
	combout => \inst4|SHIFTIN[2]~feeder_combout\);

-- Location: FF_X36_Y21_N19
\inst4|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[2]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(2));

-- Location: LCCOMB_X36_Y21_N8
\inst4|SHIFTIN[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[1]~feeder_combout\ = \inst4|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(2),
	combout => \inst4|SHIFTIN[1]~feeder_combout\);

-- Location: FF_X36_Y21_N9
\inst4|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[1]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(1));

-- Location: LCCOMB_X36_Y21_N24
\inst4|PACKET_CHAR1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR1[1]~feeder_combout\ = \inst4|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(1),
	combout => \inst4|PACKET_CHAR1[1]~feeder_combout\);

-- Location: LCCOMB_X37_Y21_N22
\inst4|PACKET_COUNT[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_COUNT[1]~0_combout\ = (!\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst4|READ_CHAR~q\ & !\inst4|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst4|READ_CHAR~q\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|PACKET_COUNT[1]~0_combout\);

-- Location: LCCOMB_X37_Y21_N24
\inst4|PACKET_COUNT[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_COUNT[0]~2_combout\ = (\inst4|PACKET_COUNT\(0) & ((\inst4|PACKET_COUNT\(1)) # (!\inst4|PACKET_COUNT[1]~0_combout\))) # (!\inst4|PACKET_COUNT\(0) & ((\inst4|PACKET_COUNT[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_COUNT\(1),
	datac => \inst4|PACKET_COUNT\(0),
	datad => \inst4|PACKET_COUNT[1]~0_combout\,
	combout => \inst4|PACKET_COUNT[0]~2_combout\);

-- Location: FF_X37_Y21_N25
\inst4|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_COUNT[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_COUNT\(0));

-- Location: LCCOMB_X37_Y21_N26
\inst4|PACKET_COUNT[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_COUNT[1]~1_combout\ = \inst4|PACKET_COUNT\(1) $ (((\inst4|PACKET_COUNT\(0) & \inst4|PACKET_COUNT[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PACKET_COUNT\(0),
	datac => \inst4|PACKET_COUNT\(1),
	datad => \inst4|PACKET_COUNT[1]~0_combout\,
	combout => \inst4|PACKET_COUNT[1]~1_combout\);

-- Location: FF_X37_Y21_N27
\inst4|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_COUNT\(1));

-- Location: LCCOMB_X37_Y21_N12
\inst4|PACKET_CHAR1[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR1[1]~0_combout\ = (!\inst4|PACKET_COUNT\(1) & \inst4|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|PACKET_COUNT\(1),
	datad => \inst4|PACKET_COUNT\(0),
	combout => \inst4|PACKET_CHAR1[1]~0_combout\);

-- Location: LCCOMB_X36_Y21_N2
\inst4|PACKET_CHAR1[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR1[1]~1_combout\ = (!\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst4|READ_CHAR~q\ & (\inst4|PACKET_CHAR1[1]~0_combout\ & !\inst4|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst4|READ_CHAR~q\,
	datac => \inst4|PACKET_CHAR1[1]~0_combout\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|PACKET_CHAR1[1]~1_combout\);

-- Location: FF_X36_Y21_N25
\inst4|PACKET_CHAR1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR1[1]~feeder_combout\,
	ena => \inst4|PACKET_CHAR1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR1\(1));

-- Location: LCCOMB_X37_Y21_N20
\inst4|right_button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|right_button~feeder_combout\ = \inst4|PACKET_CHAR1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|PACKET_CHAR1\(1),
	combout => \inst4|right_button~feeder_combout\);

-- Location: LCCOMB_X37_Y21_N18
\inst4|right_button~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|right_button~1_combout\ = (\inst4|right_button~0_combout\ & (!\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst4|READ_CHAR~q\ & !\inst4|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|right_button~0_combout\,
	datab => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst4|READ_CHAR~q\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|right_button~1_combout\);

-- Location: FF_X37_Y21_N21
\inst4|right_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|right_button~feeder_combout\,
	ena => \inst4|right_button~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|right_button~q\);

-- Location: LCCOMB_X36_Y21_N20
\inst4|SHIFTIN[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[0]~feeder_combout\ = \inst4|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(1),
	combout => \inst4|SHIFTIN[0]~feeder_combout\);

-- Location: FF_X36_Y21_N21
\inst4|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[0]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(0));

-- Location: LCCOMB_X36_Y21_N6
\inst4|PACKET_CHAR1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR1[0]~feeder_combout\ = \inst4|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(0),
	combout => \inst4|PACKET_CHAR1[0]~feeder_combout\);

-- Location: FF_X36_Y21_N7
\inst4|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR1[0]~feeder_combout\,
	ena => \inst4|PACKET_CHAR1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR1\(0));

-- Location: FF_X37_Y21_N31
\inst4|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst4|PACKET_CHAR1\(0),
	sload => VCC,
	ena => \inst4|right_button~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|left_button~q\);

-- Location: LCCOMB_X37_Y21_N28
inst7 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7~combout\ = (\inst4|left_button~q\) # (\inst4|right_button~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|left_button~q\,
	datad => \inst4|right_button~q\,
	combout => \inst7~combout\);
END structure;


