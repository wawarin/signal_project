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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/12/2020 19:18:02"

-- 
-- Device: Altera EP3C10E144C8 Package TQFP144
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

ENTITY 	Top_DAC IS
    PORT (
	CLK : IN std_logic;
	BCK : OUT std_logic;
	DIN : OUT std_logic;
	LCK : OUT std_logic
	);
END Top_DAC;

-- Design Ports Information
-- BCK	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCK	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Top_DAC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_BCK : std_logic;
SIGNAL ww_DIN : std_logic;
SIGNAL ww_LCK : std_logic;
SIGNAL \U0|temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BCK~output_o\ : std_logic;
SIGNAL \DIN~output_o\ : std_logic;
SIGNAL \LCK~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \U0|Add0~0_combout\ : std_logic;
SIGNAL \U0|count[0]~5_combout\ : std_logic;
SIGNAL \U0|Add0~1\ : std_logic;
SIGNAL \U0|Add0~2_combout\ : std_logic;
SIGNAL \U0|Add0~3\ : std_logic;
SIGNAL \U0|Add0~4_combout\ : std_logic;
SIGNAL \U0|Add0~5\ : std_logic;
SIGNAL \U0|Add0~6_combout\ : std_logic;
SIGNAL \U0|count~0_combout\ : std_logic;
SIGNAL \U0|Add0~7\ : std_logic;
SIGNAL \U0|Add0~8_combout\ : std_logic;
SIGNAL \U0|Add0~9\ : std_logic;
SIGNAL \U0|Add0~10_combout\ : std_logic;
SIGNAL \U0|Add0~11\ : std_logic;
SIGNAL \U0|Add0~12_combout\ : std_logic;
SIGNAL \U0|Add0~13\ : std_logic;
SIGNAL \U0|Add0~14_combout\ : std_logic;
SIGNAL \U0|count~1_combout\ : std_logic;
SIGNAL \U0|Equal0~1_combout\ : std_logic;
SIGNAL \U0|Add0~15\ : std_logic;
SIGNAL \U0|Add0~16_combout\ : std_logic;
SIGNAL \U0|count~2_combout\ : std_logic;
SIGNAL \U0|Add0~17\ : std_logic;
SIGNAL \U0|Add0~18_combout\ : std_logic;
SIGNAL \U0|count~3_combout\ : std_logic;
SIGNAL \U0|Add0~19\ : std_logic;
SIGNAL \U0|Add0~20_combout\ : std_logic;
SIGNAL \U0|Add0~21\ : std_logic;
SIGNAL \U0|Add0~22_combout\ : std_logic;
SIGNAL \U0|Equal0~2_combout\ : std_logic;
SIGNAL \U0|Equal0~0_combout\ : std_logic;
SIGNAL \U0|Add0~23\ : std_logic;
SIGNAL \U0|Add0~24_combout\ : std_logic;
SIGNAL \U0|count~4_combout\ : std_logic;
SIGNAL \U0|Add0~25\ : std_logic;
SIGNAL \U0|Add0~26_combout\ : std_logic;
SIGNAL \U0|Add0~27\ : std_logic;
SIGNAL \U0|Add0~28_combout\ : std_logic;
SIGNAL \U0|Add0~29\ : std_logic;
SIGNAL \U0|Add0~30_combout\ : std_logic;
SIGNAL \U0|Equal0~3_combout\ : std_logic;
SIGNAL \U0|Equal0~4_combout\ : std_logic;
SIGNAL \U0|Add0~31\ : std_logic;
SIGNAL \U0|Add0~32_combout\ : std_logic;
SIGNAL \U0|Add0~33\ : std_logic;
SIGNAL \U0|Add0~34_combout\ : std_logic;
SIGNAL \U0|Add0~35\ : std_logic;
SIGNAL \U0|Add0~36_combout\ : std_logic;
SIGNAL \U0|Add0~37\ : std_logic;
SIGNAL \U0|Add0~38_combout\ : std_logic;
SIGNAL \U0|Add0~39\ : std_logic;
SIGNAL \U0|Add0~40_combout\ : std_logic;
SIGNAL \U0|Add0~41\ : std_logic;
SIGNAL \U0|Add0~42_combout\ : std_logic;
SIGNAL \U0|Add0~43\ : std_logic;
SIGNAL \U0|Add0~44_combout\ : std_logic;
SIGNAL \U0|Add0~45\ : std_logic;
SIGNAL \U0|Add0~46_combout\ : std_logic;
SIGNAL \U0|Add0~47\ : std_logic;
SIGNAL \U0|Add0~48_combout\ : std_logic;
SIGNAL \U0|Add0~49\ : std_logic;
SIGNAL \U0|Add0~50_combout\ : std_logic;
SIGNAL \U0|Add0~51\ : std_logic;
SIGNAL \U0|Add0~52_combout\ : std_logic;
SIGNAL \U0|Add0~53\ : std_logic;
SIGNAL \U0|Add0~54_combout\ : std_logic;
SIGNAL \U0|Add0~55\ : std_logic;
SIGNAL \U0|Add0~56_combout\ : std_logic;
SIGNAL \U0|Add0~57\ : std_logic;
SIGNAL \U0|Add0~58_combout\ : std_logic;
SIGNAL \U0|Add0~59\ : std_logic;
SIGNAL \U0|Add0~60_combout\ : std_logic;
SIGNAL \U0|Add0~61\ : std_logic;
SIGNAL \U0|Add0~62_combout\ : std_logic;
SIGNAL \U0|Equal0~9_combout\ : std_logic;
SIGNAL \U0|Equal0~8_combout\ : std_logic;
SIGNAL \U0|Equal0~6_combout\ : std_logic;
SIGNAL \U0|Equal0~5_combout\ : std_logic;
SIGNAL \U0|Equal0~7_combout\ : std_logic;
SIGNAL \U0|Equal0~10_combout\ : std_logic;
SIGNAL \U0|temp~0_combout\ : std_logic;
SIGNAL \U0|temp~feeder_combout\ : std_logic;
SIGNAL \U0|temp~q\ : std_logic;
SIGNAL \U0|temp~clkctrl_outclk\ : std_logic;
SIGNAL \U2|count[0]~4_combout\ : std_logic;
SIGNAL \U2|count~1_combout\ : std_logic;
SIGNAL \U2|count~0_combout\ : std_logic;
SIGNAL \U2|count~2_combout\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U2|Mux0~7_combout\ : std_logic;
SIGNAL \U2|Mux0~8_combout\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U2|Mux0~0_combout\ : std_logic;
SIGNAL \U2|Mux0~1_combout\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|Add0~19\ : std_logic;
SIGNAL \U1|Add0~20_combout\ : std_logic;
SIGNAL \U1|Add0~21\ : std_logic;
SIGNAL \U1|Add0~22_combout\ : std_logic;
SIGNAL \U1|Add0~23\ : std_logic;
SIGNAL \U1|Add0~24_combout\ : std_logic;
SIGNAL \U1|Add0~25\ : std_logic;
SIGNAL \U1|Add0~26_combout\ : std_logic;
SIGNAL \U1|Add0~27\ : std_logic;
SIGNAL \U1|Add0~28_combout\ : std_logic;
SIGNAL \U2|Mux0~2_combout\ : std_logic;
SIGNAL \U2|Mux0~3_combout\ : std_logic;
SIGNAL \U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Equal0~4_combout\ : std_logic;
SIGNAL \U1|Add0~29\ : std_logic;
SIGNAL \U1|Add0~31\ : std_logic;
SIGNAL \U1|Add0~32_combout\ : std_logic;
SIGNAL \U1|Add0~33\ : std_logic;
SIGNAL \U1|Add0~34_combout\ : std_logic;
SIGNAL \U1|Add0~35\ : std_logic;
SIGNAL \U1|Add0~36_combout\ : std_logic;
SIGNAL \U1|Add0~37\ : std_logic;
SIGNAL \U1|Add0~38_combout\ : std_logic;
SIGNAL \U1|Add0~39\ : std_logic;
SIGNAL \U1|Add0~40_combout\ : std_logic;
SIGNAL \U1|Add0~41\ : std_logic;
SIGNAL \U1|Add0~42_combout\ : std_logic;
SIGNAL \U1|Add0~43\ : std_logic;
SIGNAL \U1|Add0~44_combout\ : std_logic;
SIGNAL \U1|Add0~45\ : std_logic;
SIGNAL \U1|Add0~46_combout\ : std_logic;
SIGNAL \U1|Equal0~6_combout\ : std_logic;
SIGNAL \U1|Add0~47\ : std_logic;
SIGNAL \U1|Add0~48_combout\ : std_logic;
SIGNAL \U1|Add0~49\ : std_logic;
SIGNAL \U1|Add0~50_combout\ : std_logic;
SIGNAL \U1|Add0~51\ : std_logic;
SIGNAL \U1|Add0~52_combout\ : std_logic;
SIGNAL \U1|Add0~53\ : std_logic;
SIGNAL \U1|Add0~54_combout\ : std_logic;
SIGNAL \U1|Add0~55\ : std_logic;
SIGNAL \U1|Add0~56_combout\ : std_logic;
SIGNAL \U1|Add0~57\ : std_logic;
SIGNAL \U1|Add0~58_combout\ : std_logic;
SIGNAL \U1|Add0~59\ : std_logic;
SIGNAL \U1|Add0~60_combout\ : std_logic;
SIGNAL \U1|Add0~61\ : std_logic;
SIGNAL \U1|Add0~62_combout\ : std_logic;
SIGNAL \U1|Equal0~8_combout\ : std_logic;
SIGNAL \U1|Equal0~7_combout\ : std_logic;
SIGNAL \U1|Equal0~5_combout\ : std_logic;
SIGNAL \U1|Equal0~9_combout\ : std_logic;
SIGNAL \U1|Add0~30_combout\ : std_logic;
SIGNAL \U1|count~0_combout\ : std_logic;
SIGNAL \U2|Mux0~4_combout\ : std_logic;
SIGNAL \U2|Mux0~5_combout\ : std_logic;
SIGNAL \U2|Mux0~6_combout\ : std_logic;
SIGNAL \U2|Mux0~9_combout\ : std_logic;
SIGNAL \U2|serial_data_out~q\ : std_logic;
SIGNAL \U3|count[0]~32_combout\ : std_logic;
SIGNAL \U3|count[0]~33\ : std_logic;
SIGNAL \U3|count[1]~34_combout\ : std_logic;
SIGNAL \U3|count[1]~35\ : std_logic;
SIGNAL \U3|count[2]~36_combout\ : std_logic;
SIGNAL \U3|count[2]~37\ : std_logic;
SIGNAL \U3|count[3]~38_combout\ : std_logic;
SIGNAL \U3|count[3]~39\ : std_logic;
SIGNAL \U3|count[4]~40_combout\ : std_logic;
SIGNAL \U3|count[4]~41\ : std_logic;
SIGNAL \U3|count[5]~42_combout\ : std_logic;
SIGNAL \U3|count[5]~43\ : std_logic;
SIGNAL \U3|count[6]~44_combout\ : std_logic;
SIGNAL \U3|count[6]~45\ : std_logic;
SIGNAL \U3|count[7]~46_combout\ : std_logic;
SIGNAL \U3|count[7]~47\ : std_logic;
SIGNAL \U3|count[8]~48_combout\ : std_logic;
SIGNAL \U3|count[8]~49\ : std_logic;
SIGNAL \U3|count[9]~50_combout\ : std_logic;
SIGNAL \U3|count[9]~51\ : std_logic;
SIGNAL \U3|count[10]~52_combout\ : std_logic;
SIGNAL \U3|count[10]~53\ : std_logic;
SIGNAL \U3|count[11]~54_combout\ : std_logic;
SIGNAL \U3|count[11]~55\ : std_logic;
SIGNAL \U3|count[12]~56_combout\ : std_logic;
SIGNAL \U3|count[12]~57\ : std_logic;
SIGNAL \U3|count[13]~58_combout\ : std_logic;
SIGNAL \U3|count[13]~59\ : std_logic;
SIGNAL \U3|count[14]~60_combout\ : std_logic;
SIGNAL \U3|count[14]~61\ : std_logic;
SIGNAL \U3|count[15]~62_combout\ : std_logic;
SIGNAL \U3|count[15]~63\ : std_logic;
SIGNAL \U3|count[16]~64_combout\ : std_logic;
SIGNAL \U3|count[16]~65\ : std_logic;
SIGNAL \U3|count[17]~66_combout\ : std_logic;
SIGNAL \U3|count[17]~67\ : std_logic;
SIGNAL \U3|count[18]~68_combout\ : std_logic;
SIGNAL \U3|count[18]~69\ : std_logic;
SIGNAL \U3|count[19]~70_combout\ : std_logic;
SIGNAL \U3|count[19]~71\ : std_logic;
SIGNAL \U3|count[20]~72_combout\ : std_logic;
SIGNAL \U3|count[20]~73\ : std_logic;
SIGNAL \U3|count[21]~74_combout\ : std_logic;
SIGNAL \U3|count[21]~75\ : std_logic;
SIGNAL \U3|count[22]~76_combout\ : std_logic;
SIGNAL \U3|count[22]~77\ : std_logic;
SIGNAL \U3|count[23]~78_combout\ : std_logic;
SIGNAL \U3|LessThan0~5_combout\ : std_logic;
SIGNAL \U3|count[23]~79\ : std_logic;
SIGNAL \U3|count[24]~80_combout\ : std_logic;
SIGNAL \U3|count[24]~81\ : std_logic;
SIGNAL \U3|count[25]~82_combout\ : std_logic;
SIGNAL \U3|count[25]~83\ : std_logic;
SIGNAL \U3|count[26]~84_combout\ : std_logic;
SIGNAL \U3|count[26]~85\ : std_logic;
SIGNAL \U3|count[27]~86_combout\ : std_logic;
SIGNAL \U3|count[27]~87\ : std_logic;
SIGNAL \U3|count[28]~88_combout\ : std_logic;
SIGNAL \U3|count[28]~89\ : std_logic;
SIGNAL \U3|count[29]~90_combout\ : std_logic;
SIGNAL \U3|count[29]~91\ : std_logic;
SIGNAL \U3|count[30]~92_combout\ : std_logic;
SIGNAL \U3|count[30]~93\ : std_logic;
SIGNAL \U3|count[31]~94_combout\ : std_logic;
SIGNAL \U3|LessThan0~6_combout\ : std_logic;
SIGNAL \U3|LessThan0~7_combout\ : std_logic;
SIGNAL \U3|LessThan0~0_combout\ : std_logic;
SIGNAL \U3|LessThan0~3_combout\ : std_logic;
SIGNAL \U3|LessThan0~2_combout\ : std_logic;
SIGNAL \U3|LessThan0~1_combout\ : std_logic;
SIGNAL \U3|LessThan0~4_combout\ : std_logic;
SIGNAL \U3|LessThan0~8_combout\ : std_logic;
SIGNAL \U3|LR~0_combout\ : std_logic;
SIGNAL \U3|LR~q\ : std_logic;
SIGNAL \U0|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U3|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U2|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U0|ALT_INV_temp~clkctrl_outclk\ : std_logic;

BEGIN

ww_CLK <= CLK;
BCK <= ww_BCK;
DIN <= ww_DIN;
LCK <= ww_LCK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U0|temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|temp~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\U0|ALT_INV_temp~clkctrl_outclk\ <= NOT \U0|temp~clkctrl_outclk\;

-- Location: IOOBUF_X34_Y10_N9
\BCK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|temp~q\,
	devoe => ww_devoe,
	o => \BCK~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\DIN~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|serial_data_out~q\,
	devoe => ww_devoe,
	o => \DIN~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\LCK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|LR~q\,
	devoe => ww_devoe,
	o => \LCK~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y11_N0
\U0|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~0_combout\ = \U0|count\(0) $ (GND)
-- \U0|Add0~1\ = CARRY(!\U0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(0),
	datad => VCC,
	combout => \U0|Add0~0_combout\,
	cout => \U0|Add0~1\);

-- Location: LCCOMB_X30_Y11_N16
\U0|count[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|count[0]~5_combout\ = !\U0|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Add0~0_combout\,
	combout => \U0|count[0]~5_combout\);

-- Location: FF_X31_Y11_N25
\U0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U0|count[0]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(0));

-- Location: LCCOMB_X31_Y11_N2
\U0|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~2_combout\ = (\U0|count\(1) & (!\U0|Add0~1\)) # (!\U0|count\(1) & ((\U0|Add0~1\) # (GND)))
-- \U0|Add0~3\ = CARRY((!\U0|Add0~1\) # (!\U0|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(1),
	datad => VCC,
	cin => \U0|Add0~1\,
	combout => \U0|Add0~2_combout\,
	cout => \U0|Add0~3\);

-- Location: FF_X31_Y11_N3
\U0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(1));

-- Location: LCCOMB_X31_Y11_N4
\U0|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~4_combout\ = (\U0|count\(2) & (\U0|Add0~3\ $ (GND))) # (!\U0|count\(2) & (!\U0|Add0~3\ & VCC))
-- \U0|Add0~5\ = CARRY((\U0|count\(2) & !\U0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(2),
	datad => VCC,
	cin => \U0|Add0~3\,
	combout => \U0|Add0~4_combout\,
	cout => \U0|Add0~5\);

-- Location: FF_X31_Y11_N5
\U0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(2));

-- Location: LCCOMB_X31_Y11_N6
\U0|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~6_combout\ = (\U0|count\(3) & (!\U0|Add0~5\)) # (!\U0|count\(3) & ((\U0|Add0~5\) # (GND)))
-- \U0|Add0~7\ = CARRY((!\U0|Add0~5\) # (!\U0|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(3),
	datad => VCC,
	cin => \U0|Add0~5\,
	combout => \U0|Add0~6_combout\,
	cout => \U0|Add0~7\);

-- Location: LCCOMB_X32_Y11_N12
\U0|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|count~0_combout\ = (\U0|Add0~6_combout\ & !\U0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Add0~6_combout\,
	datad => \U0|Equal0~10_combout\,
	combout => \U0|count~0_combout\);

-- Location: FF_X31_Y11_N19
\U0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U0|count~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(3));

-- Location: LCCOMB_X31_Y11_N8
\U0|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~8_combout\ = (\U0|count\(4) & (\U0|Add0~7\ $ (GND))) # (!\U0|count\(4) & (!\U0|Add0~7\ & VCC))
-- \U0|Add0~9\ = CARRY((\U0|count\(4) & !\U0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(4),
	datad => VCC,
	cin => \U0|Add0~7\,
	combout => \U0|Add0~8_combout\,
	cout => \U0|Add0~9\);

-- Location: FF_X31_Y11_N9
\U0|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(4));

-- Location: LCCOMB_X31_Y11_N10
\U0|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~10_combout\ = (\U0|count\(5) & (!\U0|Add0~9\)) # (!\U0|count\(5) & ((\U0|Add0~9\) # (GND)))
-- \U0|Add0~11\ = CARRY((!\U0|Add0~9\) # (!\U0|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(5),
	datad => VCC,
	cin => \U0|Add0~9\,
	combout => \U0|Add0~10_combout\,
	cout => \U0|Add0~11\);

-- Location: FF_X31_Y11_N11
\U0|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(5));

-- Location: LCCOMB_X31_Y11_N12
\U0|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~12_combout\ = (\U0|count\(6) & (\U0|Add0~11\ $ (GND))) # (!\U0|count\(6) & (!\U0|Add0~11\ & VCC))
-- \U0|Add0~13\ = CARRY((\U0|count\(6) & !\U0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(6),
	datad => VCC,
	cin => \U0|Add0~11\,
	combout => \U0|Add0~12_combout\,
	cout => \U0|Add0~13\);

-- Location: FF_X31_Y11_N13
\U0|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(6));

-- Location: LCCOMB_X31_Y11_N14
\U0|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~14_combout\ = (\U0|count\(7) & (!\U0|Add0~13\)) # (!\U0|count\(7) & ((\U0|Add0~13\) # (GND)))
-- \U0|Add0~15\ = CARRY((!\U0|Add0~13\) # (!\U0|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(7),
	datad => VCC,
	cin => \U0|Add0~13\,
	combout => \U0|Add0~14_combout\,
	cout => \U0|Add0~15\);

-- Location: LCCOMB_X32_Y11_N24
\U0|count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|count~1_combout\ = (!\U0|Equal0~10_combout\ & \U0|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Equal0~10_combout\,
	datad => \U0|Add0~14_combout\,
	combout => \U0|count~1_combout\);

-- Location: FF_X32_Y11_N25
\U0|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(7));

-- Location: LCCOMB_X32_Y11_N26
\U0|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Equal0~1_combout\ = (!\U0|count\(5) & (\U0|count\(7) & (!\U0|count\(6) & !\U0|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(5),
	datab => \U0|count\(7),
	datac => \U0|count\(6),
	datad => \U0|count\(4),
	combout => \U0|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y11_N16
\U0|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~16_combout\ = (\U0|count\(8) & (\U0|Add0~15\ $ (GND))) # (!\U0|count\(8) & (!\U0|Add0~15\ & VCC))
-- \U0|Add0~17\ = CARRY((\U0|count\(8) & !\U0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(8),
	datad => VCC,
	cin => \U0|Add0~15\,
	combout => \U0|Add0~16_combout\,
	cout => \U0|Add0~17\);

-- Location: LCCOMB_X32_Y11_N22
\U0|count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|count~2_combout\ = (\U0|Add0~16_combout\ & !\U0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Add0~16_combout\,
	datad => \U0|Equal0~10_combout\,
	combout => \U0|count~2_combout\);

-- Location: FF_X32_Y11_N23
\U0|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(8));

-- Location: LCCOMB_X31_Y11_N18
\U0|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~18_combout\ = (\U0|count\(9) & (!\U0|Add0~17\)) # (!\U0|count\(9) & ((\U0|Add0~17\) # (GND)))
-- \U0|Add0~19\ = CARRY((!\U0|Add0~17\) # (!\U0|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(9),
	datad => VCC,
	cin => \U0|Add0~17\,
	combout => \U0|Add0~18_combout\,
	cout => \U0|Add0~19\);

-- Location: LCCOMB_X32_Y11_N30
\U0|count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|count~3_combout\ = (!\U0|Equal0~10_combout\ & \U0|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Equal0~10_combout\,
	datad => \U0|Add0~18_combout\,
	combout => \U0|count~3_combout\);

-- Location: FF_X32_Y11_N31
\U0|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(9));

-- Location: LCCOMB_X31_Y11_N20
\U0|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~20_combout\ = (\U0|count\(10) & (\U0|Add0~19\ $ (GND))) # (!\U0|count\(10) & (!\U0|Add0~19\ & VCC))
-- \U0|Add0~21\ = CARRY((\U0|count\(10) & !\U0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(10),
	datad => VCC,
	cin => \U0|Add0~19\,
	combout => \U0|Add0~20_combout\,
	cout => \U0|Add0~21\);

-- Location: FF_X31_Y11_N21
\U0|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(10));

-- Location: LCCOMB_X31_Y11_N22
\U0|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~22_combout\ = (\U0|count\(11) & (!\U0|Add0~21\)) # (!\U0|count\(11) & ((\U0|Add0~21\) # (GND)))
-- \U0|Add0~23\ = CARRY((!\U0|Add0~21\) # (!\U0|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(11),
	datad => VCC,
	cin => \U0|Add0~21\,
	combout => \U0|Add0~22_combout\,
	cout => \U0|Add0~23\);

-- Location: FF_X31_Y11_N23
\U0|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(11));

-- Location: LCCOMB_X32_Y11_N20
\U0|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Equal0~2_combout\ = (\U0|count\(9) & (!\U0|count\(10) & (\U0|count\(8) & !\U0|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(9),
	datab => \U0|count\(10),
	datac => \U0|count\(8),
	datad => \U0|count\(11),
	combout => \U0|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y11_N8
\U0|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Equal0~0_combout\ = (!\U0|count\(1) & (\U0|count\(3) & (!\U0|count\(2) & \U0|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(1),
	datab => \U0|count\(3),
	datac => \U0|count\(2),
	datad => \U0|count\(0),
	combout => \U0|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y11_N24
\U0|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~24_combout\ = (\U0|count\(12) & (\U0|Add0~23\ $ (GND))) # (!\U0|count\(12) & (!\U0|Add0~23\ & VCC))
-- \U0|Add0~25\ = CARRY((\U0|count\(12) & !\U0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(12),
	datad => VCC,
	cin => \U0|Add0~23\,
	combout => \U0|Add0~24_combout\,
	cout => \U0|Add0~25\);

-- Location: LCCOMB_X32_Y11_N0
\U0|count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|count~4_combout\ = (!\U0|Equal0~10_combout\ & \U0|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Equal0~10_combout\,
	datac => \U0|Add0~24_combout\,
	combout => \U0|count~4_combout\);

-- Location: FF_X32_Y11_N1
\U0|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(12));

-- Location: LCCOMB_X31_Y11_N26
\U0|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~26_combout\ = (\U0|count\(13) & (!\U0|Add0~25\)) # (!\U0|count\(13) & ((\U0|Add0~25\) # (GND)))
-- \U0|Add0~27\ = CARRY((!\U0|Add0~25\) # (!\U0|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(13),
	datad => VCC,
	cin => \U0|Add0~25\,
	combout => \U0|Add0~26_combout\,
	cout => \U0|Add0~27\);

-- Location: FF_X31_Y11_N27
\U0|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(13));

-- Location: LCCOMB_X31_Y11_N28
\U0|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~28_combout\ = (\U0|count\(14) & (\U0|Add0~27\ $ (GND))) # (!\U0|count\(14) & (!\U0|Add0~27\ & VCC))
-- \U0|Add0~29\ = CARRY((\U0|count\(14) & !\U0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(14),
	datad => VCC,
	cin => \U0|Add0~27\,
	combout => \U0|Add0~28_combout\,
	cout => \U0|Add0~29\);

-- Location: FF_X31_Y11_N29
\U0|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(14));

-- Location: LCCOMB_X31_Y11_N30
\U0|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~30_combout\ = (\U0|count\(15) & (!\U0|Add0~29\)) # (!\U0|count\(15) & ((\U0|Add0~29\) # (GND)))
-- \U0|Add0~31\ = CARRY((!\U0|Add0~29\) # (!\U0|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(15),
	datad => VCC,
	cin => \U0|Add0~29\,
	combout => \U0|Add0~30_combout\,
	cout => \U0|Add0~31\);

-- Location: FF_X31_Y11_N31
\U0|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(15));

-- Location: LCCOMB_X32_Y11_N28
\U0|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Equal0~3_combout\ = (!\U0|count\(13) & (\U0|count\(12) & (!\U0|count\(14) & !\U0|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(13),
	datab => \U0|count\(12),
	datac => \U0|count\(14),
	datad => \U0|count\(15),
	combout => \U0|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y11_N6
\U0|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Equal0~4_combout\ = (\U0|Equal0~1_combout\ & (\U0|Equal0~2_combout\ & (\U0|Equal0~0_combout\ & \U0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal0~1_combout\,
	datab => \U0|Equal0~2_combout\,
	datac => \U0|Equal0~0_combout\,
	datad => \U0|Equal0~3_combout\,
	combout => \U0|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y10_N0
\U0|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~32_combout\ = (\U0|count\(16) & (\U0|Add0~31\ $ (GND))) # (!\U0|count\(16) & (!\U0|Add0~31\ & VCC))
-- \U0|Add0~33\ = CARRY((\U0|count\(16) & !\U0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(16),
	datad => VCC,
	cin => \U0|Add0~31\,
	combout => \U0|Add0~32_combout\,
	cout => \U0|Add0~33\);

-- Location: FF_X31_Y10_N1
\U0|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(16));

-- Location: LCCOMB_X31_Y10_N2
\U0|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~34_combout\ = (\U0|count\(17) & (!\U0|Add0~33\)) # (!\U0|count\(17) & ((\U0|Add0~33\) # (GND)))
-- \U0|Add0~35\ = CARRY((!\U0|Add0~33\) # (!\U0|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(17),
	datad => VCC,
	cin => \U0|Add0~33\,
	combout => \U0|Add0~34_combout\,
	cout => \U0|Add0~35\);

-- Location: FF_X31_Y10_N3
\U0|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(17));

-- Location: LCCOMB_X31_Y10_N4
\U0|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~36_combout\ = (\U0|count\(18) & (\U0|Add0~35\ $ (GND))) # (!\U0|count\(18) & (!\U0|Add0~35\ & VCC))
-- \U0|Add0~37\ = CARRY((\U0|count\(18) & !\U0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(18),
	datad => VCC,
	cin => \U0|Add0~35\,
	combout => \U0|Add0~36_combout\,
	cout => \U0|Add0~37\);

-- Location: FF_X31_Y10_N5
\U0|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(18));

-- Location: LCCOMB_X31_Y10_N6
\U0|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~38_combout\ = (\U0|count\(19) & (!\U0|Add0~37\)) # (!\U0|count\(19) & ((\U0|Add0~37\) # (GND)))
-- \U0|Add0~39\ = CARRY((!\U0|Add0~37\) # (!\U0|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(19),
	datad => VCC,
	cin => \U0|Add0~37\,
	combout => \U0|Add0~38_combout\,
	cout => \U0|Add0~39\);

-- Location: FF_X31_Y10_N7
\U0|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(19));

-- Location: LCCOMB_X31_Y10_N8
\U0|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~40_combout\ = (\U0|count\(20) & (\U0|Add0~39\ $ (GND))) # (!\U0|count\(20) & (!\U0|Add0~39\ & VCC))
-- \U0|Add0~41\ = CARRY((\U0|count\(20) & !\U0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(20),
	datad => VCC,
	cin => \U0|Add0~39\,
	combout => \U0|Add0~40_combout\,
	cout => \U0|Add0~41\);

-- Location: FF_X31_Y10_N9
\U0|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(20));

-- Location: LCCOMB_X31_Y10_N10
\U0|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~42_combout\ = (\U0|count\(21) & (!\U0|Add0~41\)) # (!\U0|count\(21) & ((\U0|Add0~41\) # (GND)))
-- \U0|Add0~43\ = CARRY((!\U0|Add0~41\) # (!\U0|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(21),
	datad => VCC,
	cin => \U0|Add0~41\,
	combout => \U0|Add0~42_combout\,
	cout => \U0|Add0~43\);

-- Location: FF_X31_Y10_N11
\U0|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(21));

-- Location: LCCOMB_X31_Y10_N12
\U0|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~44_combout\ = (\U0|count\(22) & (\U0|Add0~43\ $ (GND))) # (!\U0|count\(22) & (!\U0|Add0~43\ & VCC))
-- \U0|Add0~45\ = CARRY((\U0|count\(22) & !\U0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(22),
	datad => VCC,
	cin => \U0|Add0~43\,
	combout => \U0|Add0~44_combout\,
	cout => \U0|Add0~45\);

-- Location: FF_X31_Y10_N13
\U0|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(22));

-- Location: LCCOMB_X31_Y10_N14
\U0|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~46_combout\ = (\U0|count\(23) & (!\U0|Add0~45\)) # (!\U0|count\(23) & ((\U0|Add0~45\) # (GND)))
-- \U0|Add0~47\ = CARRY((!\U0|Add0~45\) # (!\U0|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(23),
	datad => VCC,
	cin => \U0|Add0~45\,
	combout => \U0|Add0~46_combout\,
	cout => \U0|Add0~47\);

-- Location: FF_X31_Y10_N15
\U0|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(23));

-- Location: LCCOMB_X31_Y10_N16
\U0|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~48_combout\ = (\U0|count\(24) & (\U0|Add0~47\ $ (GND))) # (!\U0|count\(24) & (!\U0|Add0~47\ & VCC))
-- \U0|Add0~49\ = CARRY((\U0|count\(24) & !\U0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(24),
	datad => VCC,
	cin => \U0|Add0~47\,
	combout => \U0|Add0~48_combout\,
	cout => \U0|Add0~49\);

-- Location: FF_X31_Y10_N17
\U0|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(24));

-- Location: LCCOMB_X31_Y10_N18
\U0|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~50_combout\ = (\U0|count\(25) & (!\U0|Add0~49\)) # (!\U0|count\(25) & ((\U0|Add0~49\) # (GND)))
-- \U0|Add0~51\ = CARRY((!\U0|Add0~49\) # (!\U0|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(25),
	datad => VCC,
	cin => \U0|Add0~49\,
	combout => \U0|Add0~50_combout\,
	cout => \U0|Add0~51\);

-- Location: FF_X31_Y10_N19
\U0|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(25));

-- Location: LCCOMB_X31_Y10_N20
\U0|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~52_combout\ = (\U0|count\(26) & (\U0|Add0~51\ $ (GND))) # (!\U0|count\(26) & (!\U0|Add0~51\ & VCC))
-- \U0|Add0~53\ = CARRY((\U0|count\(26) & !\U0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(26),
	datad => VCC,
	cin => \U0|Add0~51\,
	combout => \U0|Add0~52_combout\,
	cout => \U0|Add0~53\);

-- Location: FF_X31_Y10_N21
\U0|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(26));

-- Location: LCCOMB_X31_Y10_N22
\U0|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~54_combout\ = (\U0|count\(27) & (!\U0|Add0~53\)) # (!\U0|count\(27) & ((\U0|Add0~53\) # (GND)))
-- \U0|Add0~55\ = CARRY((!\U0|Add0~53\) # (!\U0|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(27),
	datad => VCC,
	cin => \U0|Add0~53\,
	combout => \U0|Add0~54_combout\,
	cout => \U0|Add0~55\);

-- Location: FF_X31_Y10_N23
\U0|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(27));

-- Location: LCCOMB_X31_Y10_N24
\U0|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~56_combout\ = (\U0|count\(28) & (\U0|Add0~55\ $ (GND))) # (!\U0|count\(28) & (!\U0|Add0~55\ & VCC))
-- \U0|Add0~57\ = CARRY((\U0|count\(28) & !\U0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(28),
	datad => VCC,
	cin => \U0|Add0~55\,
	combout => \U0|Add0~56_combout\,
	cout => \U0|Add0~57\);

-- Location: FF_X31_Y10_N25
\U0|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(28));

-- Location: LCCOMB_X31_Y10_N26
\U0|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~58_combout\ = (\U0|count\(29) & (!\U0|Add0~57\)) # (!\U0|count\(29) & ((\U0|Add0~57\) # (GND)))
-- \U0|Add0~59\ = CARRY((!\U0|Add0~57\) # (!\U0|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(29),
	datad => VCC,
	cin => \U0|Add0~57\,
	combout => \U0|Add0~58_combout\,
	cout => \U0|Add0~59\);

-- Location: FF_X31_Y10_N27
\U0|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(29));

-- Location: LCCOMB_X31_Y10_N28
\U0|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~60_combout\ = (\U0|count\(30) & (\U0|Add0~59\ $ (GND))) # (!\U0|count\(30) & (!\U0|Add0~59\ & VCC))
-- \U0|Add0~61\ = CARRY((\U0|count\(30) & !\U0|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(30),
	datad => VCC,
	cin => \U0|Add0~59\,
	combout => \U0|Add0~60_combout\,
	cout => \U0|Add0~61\);

-- Location: FF_X31_Y10_N29
\U0|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(30));

-- Location: LCCOMB_X31_Y10_N30
\U0|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Add0~62_combout\ = \U0|count\(31) $ (\U0|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(31),
	cin => \U0|Add0~61\,
	combout => \U0|Add0~62_combout\);

-- Location: FF_X31_Y10_N31
\U0|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(31));

-- Location: LCCOMB_X30_Y10_N0
\U0|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Equal0~9_combout\ = (!\U0|count\(31) & (!\U0|count\(30) & (!\U0|count\(28) & !\U0|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(31),
	datab => \U0|count\(30),
	datac => \U0|count\(28),
	datad => \U0|count\(29),
	combout => \U0|Equal0~9_combout\);

-- Location: LCCOMB_X32_Y10_N2
\U0|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Equal0~8_combout\ = (!\U0|count\(24) & (!\U0|count\(27) & (!\U0|count\(26) & !\U0|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(24),
	datab => \U0|count\(27),
	datac => \U0|count\(26),
	datad => \U0|count\(25),
	combout => \U0|Equal0~8_combout\);

-- Location: LCCOMB_X32_Y10_N22
\U0|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Equal0~6_combout\ = (!\U0|count\(21) & !\U0|count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|count\(21),
	datad => \U0|count\(20),
	combout => \U0|Equal0~6_combout\);

-- Location: LCCOMB_X32_Y10_N12
\U0|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Equal0~5_combout\ = (!\U0|count\(16) & (!\U0|count\(19) & (!\U0|count\(18) & !\U0|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(16),
	datab => \U0|count\(19),
	datac => \U0|count\(18),
	datad => \U0|count\(17),
	combout => \U0|Equal0~5_combout\);

-- Location: LCCOMB_X32_Y10_N0
\U0|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Equal0~7_combout\ = (!\U0|count\(23) & (!\U0|count\(22) & (\U0|Equal0~6_combout\ & \U0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(23),
	datab => \U0|count\(22),
	datac => \U0|Equal0~6_combout\,
	datad => \U0|Equal0~5_combout\,
	combout => \U0|Equal0~7_combout\);

-- Location: LCCOMB_X32_Y11_N16
\U0|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|Equal0~10_combout\ = (\U0|Equal0~4_combout\ & (\U0|Equal0~9_combout\ & (\U0|Equal0~8_combout\ & \U0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal0~4_combout\,
	datab => \U0|Equal0~9_combout\,
	datac => \U0|Equal0~8_combout\,
	datad => \U0|Equal0~7_combout\,
	combout => \U0|Equal0~10_combout\);

-- Location: LCCOMB_X32_Y11_N14
\U0|temp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|temp~0_combout\ = \U0|temp~q\ $ (\U0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|temp~q\,
	datad => \U0|Equal0~10_combout\,
	combout => \U0|temp~0_combout\);

-- Location: LCCOMB_X32_Y11_N10
\U0|temp~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U0|temp~feeder_combout\ = \U0|temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|temp~0_combout\,
	combout => \U0|temp~feeder_combout\);

-- Location: FF_X32_Y11_N11
\U0|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U0|temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|temp~q\);

-- Location: CLKCTRL_G8
\U0|temp~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|temp~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y18_N6
\U2|count[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count[0]~4_combout\ = !\U2|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|count\(0),
	combout => \U2|count[0]~4_combout\);

-- Location: FF_X18_Y18_N7
\U2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U2|count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(0));

-- Location: LCCOMB_X18_Y18_N10
\U2|count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count~1_combout\ = \U2|count\(1) $ (\U2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|count\(1),
	datad => \U2|count\(0),
	combout => \U2|count~1_combout\);

-- Location: FF_X18_Y18_N11
\U2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U2|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(1));

-- Location: LCCOMB_X18_Y18_N16
\U2|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count~0_combout\ = \U2|count\(2) $ (((\U2|count\(1) & \U2|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(1),
	datac => \U2|count\(2),
	datad => \U2|count\(0),
	combout => \U2|count~0_combout\);

-- Location: FF_X18_Y18_N17
\U2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U2|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(2));

-- Location: LCCOMB_X18_Y18_N4
\U2|count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|count~2_combout\ = \U2|count\(3) $ (((\U2|count\(1) & (\U2|count\(2) & \U2|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(1),
	datab => \U2|count\(2),
	datac => \U2|count\(3),
	datad => \U2|count\(0),
	combout => \U2|count~2_combout\);

-- Location: FF_X18_Y18_N5
\U2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U2|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(3));

-- Location: LCCOMB_X16_Y18_N0
\U1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|count\(0) $ (VCC)
-- \U1|Add0~1\ = CARRY(\U1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(0),
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: FF_X16_Y18_N1
\U1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(0));

-- Location: LCCOMB_X16_Y18_N2
\U1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\U1|count\(1) & (!\U1|Add0~1\)) # (!\U1|count\(1) & ((\U1|Add0~1\) # (GND)))
-- \U1|Add0~3\ = CARRY((!\U1|Add0~1\) # (!\U1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(1),
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: FF_X16_Y18_N3
\U1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(1));

-- Location: LCCOMB_X16_Y18_N4
\U1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = (\U1|count\(2) & (\U1|Add0~3\ $ (GND))) # (!\U1|count\(2) & (!\U1|Add0~3\ & VCC))
-- \U1|Add0~5\ = CARRY((\U1|count\(2) & !\U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(2),
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: FF_X16_Y18_N5
\U1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(2));

-- Location: LCCOMB_X16_Y18_N6
\U1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\U1|count\(3) & (!\U1|Add0~5\)) # (!\U1|count\(3) & ((\U1|Add0~5\) # (GND)))
-- \U1|Add0~7\ = CARRY((!\U1|Add0~5\) # (!\U1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(3),
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: FF_X16_Y18_N7
\U1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(3));

-- Location: LCCOMB_X16_Y18_N8
\U1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = (\U1|count\(4) & (\U1|Add0~7\ $ (GND))) # (!\U1|count\(4) & (!\U1|Add0~7\ & VCC))
-- \U1|Add0~9\ = CARRY((\U1|count\(4) & !\U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(4),
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: FF_X16_Y18_N9
\U1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(4));

-- Location: LCCOMB_X16_Y18_N10
\U1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|count\(5) & (!\U1|Add0~9\)) # (!\U1|count\(5) & ((\U1|Add0~9\) # (GND)))
-- \U1|Add0~11\ = CARRY((!\U1|Add0~9\) # (!\U1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(5),
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: FF_X16_Y18_N11
\U1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(5));

-- Location: LCCOMB_X16_Y18_N12
\U1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = (\U1|count\(6) & (\U1|Add0~11\ $ (GND))) # (!\U1|count\(6) & (!\U1|Add0~11\ & VCC))
-- \U1|Add0~13\ = CARRY((\U1|count\(6) & !\U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(6),
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: FF_X16_Y18_N13
\U1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(6));

-- Location: LCCOMB_X17_Y18_N10
\U2|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux0~7_combout\ = (\U2|count\(1) & (((\U2|count\(2))))) # (!\U2|count\(1) & ((\U2|count\(2) & ((\U1|count\(2)))) # (!\U2|count\(2) & (\U1|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(6),
	datab => \U1|count\(2),
	datac => \U2|count\(1),
	datad => \U2|count\(2),
	combout => \U2|Mux0~7_combout\);

-- Location: LCCOMB_X17_Y18_N28
\U2|Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux0~8_combout\ = (\U2|count\(1) & ((\U2|Mux0~7_combout\ & ((\U1|count\(0)))) # (!\U2|Mux0~7_combout\ & (\U1|count\(4))))) # (!\U2|count\(1) & (((\U2|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(4),
	datab => \U2|count\(1),
	datac => \U1|count\(0),
	datad => \U2|Mux0~7_combout\,
	combout => \U2|Mux0~8_combout\);

-- Location: LCCOMB_X16_Y18_N14
\U1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|count\(7) & (!\U1|Add0~13\)) # (!\U1|count\(7) & ((\U1|Add0~13\) # (GND)))
-- \U1|Add0~15\ = CARRY((!\U1|Add0~13\) # (!\U1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(7),
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: FF_X16_Y18_N15
\U1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(7));

-- Location: LCCOMB_X17_Y18_N30
\U2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux0~0_combout\ = (\U2|count\(2) & (((\U2|count\(1))))) # (!\U2|count\(2) & ((\U2|count\(1) & (\U1|count\(5))) # (!\U2|count\(1) & ((\U1|count\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(5),
	datab => \U2|count\(2),
	datac => \U2|count\(1),
	datad => \U1|count\(7),
	combout => \U2|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y18_N8
\U2|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux0~1_combout\ = (\U2|Mux0~0_combout\ & ((\U1|count\(1)) # ((!\U2|count\(2))))) # (!\U2|Mux0~0_combout\ & (((\U1|count\(3) & \U2|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(1),
	datab => \U1|count\(3),
	datac => \U2|Mux0~0_combout\,
	datad => \U2|count\(2),
	combout => \U2|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y18_N16
\U1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = (\U1|count\(8) & (\U1|Add0~15\ $ (GND))) # (!\U1|count\(8) & (!\U1|Add0~15\ & VCC))
-- \U1|Add0~17\ = CARRY((\U1|count\(8) & !\U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(8),
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: FF_X16_Y18_N17
\U1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(8));

-- Location: LCCOMB_X16_Y18_N18
\U1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = (\U1|count\(9) & (!\U1|Add0~17\)) # (!\U1|count\(9) & ((\U1|Add0~17\) # (GND)))
-- \U1|Add0~19\ = CARRY((!\U1|Add0~17\) # (!\U1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(9),
	datad => VCC,
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\,
	cout => \U1|Add0~19\);

-- Location: FF_X16_Y18_N19
\U1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(9));

-- Location: LCCOMB_X16_Y18_N20
\U1|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~20_combout\ = (\U1|count\(10) & (\U1|Add0~19\ $ (GND))) # (!\U1|count\(10) & (!\U1|Add0~19\ & VCC))
-- \U1|Add0~21\ = CARRY((\U1|count\(10) & !\U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(10),
	datad => VCC,
	cin => \U1|Add0~19\,
	combout => \U1|Add0~20_combout\,
	cout => \U1|Add0~21\);

-- Location: FF_X16_Y18_N21
\U1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(10));

-- Location: LCCOMB_X16_Y18_N22
\U1|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~22_combout\ = (\U1|count\(11) & (!\U1|Add0~21\)) # (!\U1|count\(11) & ((\U1|Add0~21\) # (GND)))
-- \U1|Add0~23\ = CARRY((!\U1|Add0~21\) # (!\U1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(11),
	datad => VCC,
	cin => \U1|Add0~21\,
	combout => \U1|Add0~22_combout\,
	cout => \U1|Add0~23\);

-- Location: FF_X16_Y18_N23
\U1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(11));

-- Location: LCCOMB_X16_Y18_N24
\U1|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~24_combout\ = (\U1|count\(12) & (\U1|Add0~23\ $ (GND))) # (!\U1|count\(12) & (!\U1|Add0~23\ & VCC))
-- \U1|Add0~25\ = CARRY((\U1|count\(12) & !\U1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(12),
	datad => VCC,
	cin => \U1|Add0~23\,
	combout => \U1|Add0~24_combout\,
	cout => \U1|Add0~25\);

-- Location: FF_X16_Y18_N25
\U1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(12));

-- Location: LCCOMB_X16_Y18_N26
\U1|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~26_combout\ = (\U1|count\(13) & (!\U1|Add0~25\)) # (!\U1|count\(13) & ((\U1|Add0~25\) # (GND)))
-- \U1|Add0~27\ = CARRY((!\U1|Add0~25\) # (!\U1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(13),
	datad => VCC,
	cin => \U1|Add0~25\,
	combout => \U1|Add0~26_combout\,
	cout => \U1|Add0~27\);

-- Location: FF_X16_Y18_N27
\U1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(13));

-- Location: LCCOMB_X16_Y18_N28
\U1|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~28_combout\ = (\U1|count\(14) & (\U1|Add0~27\ $ (GND))) # (!\U1|count\(14) & (!\U1|Add0~27\ & VCC))
-- \U1|Add0~29\ = CARRY((\U1|count\(14) & !\U1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(14),
	datad => VCC,
	cin => \U1|Add0~27\,
	combout => \U1|Add0~28_combout\,
	cout => \U1|Add0~29\);

-- Location: FF_X16_Y18_N29
\U1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(14));

-- Location: LCCOMB_X17_Y18_N18
\U2|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux0~2_combout\ = (\U2|count\(1) & (((\U2|count\(2))))) # (!\U2|count\(1) & ((\U2|count\(2) & (\U1|count\(10))) # (!\U2|count\(2) & ((\U1|count\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(10),
	datab => \U1|count\(14),
	datac => \U2|count\(1),
	datad => \U2|count\(2),
	combout => \U2|Mux0~2_combout\);

-- Location: LCCOMB_X17_Y18_N0
\U2|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux0~3_combout\ = (\U2|count\(1) & ((\U2|Mux0~2_combout\ & (\U1|count\(8))) # (!\U2|Mux0~2_combout\ & ((\U1|count\(12)))))) # (!\U2|count\(1) & (((\U2|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(8),
	datab => \U1|count\(12),
	datac => \U2|count\(1),
	datad => \U2|Mux0~2_combout\,
	combout => \U2|Mux0~3_combout\);

-- Location: LCCOMB_X17_Y18_N12
\U1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~3_combout\ = (\U1|count\(0) & (\U1|count\(2) & (\U1|count\(3) & \U1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(0),
	datab => \U1|count\(2),
	datac => \U1|count\(3),
	datad => \U1|count\(1),
	combout => \U1|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y18_N16
\U1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (\U1|count\(9) & (\U1|count\(10) & (\U1|count\(8) & \U1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(9),
	datab => \U1|count\(10),
	datac => \U1|count\(8),
	datad => \U1|count\(11),
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y18_N22
\U1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = (\U1|count\(6) & (\U1|count\(5) & (\U1|count\(7) & \U1|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(6),
	datab => \U1|count\(5),
	datac => \U1|count\(7),
	datad => \U1|count\(4),
	combout => \U1|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y18_N2
\U1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (!\U1|count\(15) & (\U1|count\(14) & (\U1|count\(13) & \U1|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(15),
	datab => \U1|count\(14),
	datac => \U1|count\(13),
	datad => \U1|count\(12),
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y18_N26
\U1|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~4_combout\ = (\U1|Equal0~3_combout\ & (\U1|Equal0~1_combout\ & (\U1|Equal0~2_combout\ & \U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~3_combout\,
	datab => \U1|Equal0~1_combout\,
	datac => \U1|Equal0~2_combout\,
	datad => \U1|Equal0~0_combout\,
	combout => \U1|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y18_N30
\U1|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~30_combout\ = (\U1|count\(15) & (!\U1|Add0~29\)) # (!\U1|count\(15) & ((\U1|Add0~29\) # (GND)))
-- \U1|Add0~31\ = CARRY((!\U1|Add0~29\) # (!\U1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(15),
	datad => VCC,
	cin => \U1|Add0~29\,
	combout => \U1|Add0~30_combout\,
	cout => \U1|Add0~31\);

-- Location: LCCOMB_X16_Y17_N0
\U1|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~32_combout\ = (\U1|count\(16) & (\U1|Add0~31\ $ (GND))) # (!\U1|count\(16) & (!\U1|Add0~31\ & VCC))
-- \U1|Add0~33\ = CARRY((\U1|count\(16) & !\U1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(16),
	datad => VCC,
	cin => \U1|Add0~31\,
	combout => \U1|Add0~32_combout\,
	cout => \U1|Add0~33\);

-- Location: FF_X16_Y17_N1
\U1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(16));

-- Location: LCCOMB_X16_Y17_N2
\U1|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~34_combout\ = (\U1|count\(17) & (!\U1|Add0~33\)) # (!\U1|count\(17) & ((\U1|Add0~33\) # (GND)))
-- \U1|Add0~35\ = CARRY((!\U1|Add0~33\) # (!\U1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(17),
	datad => VCC,
	cin => \U1|Add0~33\,
	combout => \U1|Add0~34_combout\,
	cout => \U1|Add0~35\);

-- Location: FF_X16_Y17_N3
\U1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(17));

-- Location: LCCOMB_X16_Y17_N4
\U1|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~36_combout\ = (\U1|count\(18) & (\U1|Add0~35\ $ (GND))) # (!\U1|count\(18) & (!\U1|Add0~35\ & VCC))
-- \U1|Add0~37\ = CARRY((\U1|count\(18) & !\U1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(18),
	datad => VCC,
	cin => \U1|Add0~35\,
	combout => \U1|Add0~36_combout\,
	cout => \U1|Add0~37\);

-- Location: FF_X16_Y17_N5
\U1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(18));

-- Location: LCCOMB_X16_Y17_N6
\U1|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~38_combout\ = (\U1|count\(19) & (!\U1|Add0~37\)) # (!\U1|count\(19) & ((\U1|Add0~37\) # (GND)))
-- \U1|Add0~39\ = CARRY((!\U1|Add0~37\) # (!\U1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(19),
	datad => VCC,
	cin => \U1|Add0~37\,
	combout => \U1|Add0~38_combout\,
	cout => \U1|Add0~39\);

-- Location: FF_X16_Y17_N7
\U1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(19));

-- Location: LCCOMB_X16_Y17_N8
\U1|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~40_combout\ = (\U1|count\(20) & (\U1|Add0~39\ $ (GND))) # (!\U1|count\(20) & (!\U1|Add0~39\ & VCC))
-- \U1|Add0~41\ = CARRY((\U1|count\(20) & !\U1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(20),
	datad => VCC,
	cin => \U1|Add0~39\,
	combout => \U1|Add0~40_combout\,
	cout => \U1|Add0~41\);

-- Location: FF_X16_Y17_N9
\U1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(20));

-- Location: LCCOMB_X16_Y17_N10
\U1|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~42_combout\ = (\U1|count\(21) & (!\U1|Add0~41\)) # (!\U1|count\(21) & ((\U1|Add0~41\) # (GND)))
-- \U1|Add0~43\ = CARRY((!\U1|Add0~41\) # (!\U1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(21),
	datad => VCC,
	cin => \U1|Add0~41\,
	combout => \U1|Add0~42_combout\,
	cout => \U1|Add0~43\);

-- Location: FF_X16_Y17_N11
\U1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(21));

-- Location: LCCOMB_X16_Y17_N12
\U1|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~44_combout\ = (\U1|count\(22) & (\U1|Add0~43\ $ (GND))) # (!\U1|count\(22) & (!\U1|Add0~43\ & VCC))
-- \U1|Add0~45\ = CARRY((\U1|count\(22) & !\U1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(22),
	datad => VCC,
	cin => \U1|Add0~43\,
	combout => \U1|Add0~44_combout\,
	cout => \U1|Add0~45\);

-- Location: FF_X16_Y17_N13
\U1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(22));

-- Location: LCCOMB_X16_Y17_N14
\U1|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~46_combout\ = (\U1|count\(23) & (!\U1|Add0~45\)) # (!\U1|count\(23) & ((\U1|Add0~45\) # (GND)))
-- \U1|Add0~47\ = CARRY((!\U1|Add0~45\) # (!\U1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(23),
	datad => VCC,
	cin => \U1|Add0~45\,
	combout => \U1|Add0~46_combout\,
	cout => \U1|Add0~47\);

-- Location: FF_X16_Y17_N15
\U1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(23));

-- Location: LCCOMB_X17_Y17_N26
\U1|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~6_combout\ = (!\U1|count\(22) & (!\U1|count\(23) & (!\U1|count\(20) & !\U1|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(22),
	datab => \U1|count\(23),
	datac => \U1|count\(20),
	datad => \U1|count\(21),
	combout => \U1|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y17_N16
\U1|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~48_combout\ = (\U1|count\(24) & (\U1|Add0~47\ $ (GND))) # (!\U1|count\(24) & (!\U1|Add0~47\ & VCC))
-- \U1|Add0~49\ = CARRY((\U1|count\(24) & !\U1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(24),
	datad => VCC,
	cin => \U1|Add0~47\,
	combout => \U1|Add0~48_combout\,
	cout => \U1|Add0~49\);

-- Location: FF_X16_Y17_N17
\U1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(24));

-- Location: LCCOMB_X16_Y17_N18
\U1|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~50_combout\ = (\U1|count\(25) & (!\U1|Add0~49\)) # (!\U1|count\(25) & ((\U1|Add0~49\) # (GND)))
-- \U1|Add0~51\ = CARRY((!\U1|Add0~49\) # (!\U1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(25),
	datad => VCC,
	cin => \U1|Add0~49\,
	combout => \U1|Add0~50_combout\,
	cout => \U1|Add0~51\);

-- Location: FF_X16_Y17_N19
\U1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(25));

-- Location: LCCOMB_X16_Y17_N20
\U1|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~52_combout\ = (\U1|count\(26) & (\U1|Add0~51\ $ (GND))) # (!\U1|count\(26) & (!\U1|Add0~51\ & VCC))
-- \U1|Add0~53\ = CARRY((\U1|count\(26) & !\U1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(26),
	datad => VCC,
	cin => \U1|Add0~51\,
	combout => \U1|Add0~52_combout\,
	cout => \U1|Add0~53\);

-- Location: FF_X16_Y17_N21
\U1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(26));

-- Location: LCCOMB_X16_Y17_N22
\U1|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~54_combout\ = (\U1|count\(27) & (!\U1|Add0~53\)) # (!\U1|count\(27) & ((\U1|Add0~53\) # (GND)))
-- \U1|Add0~55\ = CARRY((!\U1|Add0~53\) # (!\U1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(27),
	datad => VCC,
	cin => \U1|Add0~53\,
	combout => \U1|Add0~54_combout\,
	cout => \U1|Add0~55\);

-- Location: FF_X16_Y17_N23
\U1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(27));

-- Location: LCCOMB_X16_Y17_N24
\U1|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~56_combout\ = (\U1|count\(28) & (\U1|Add0~55\ $ (GND))) # (!\U1|count\(28) & (!\U1|Add0~55\ & VCC))
-- \U1|Add0~57\ = CARRY((\U1|count\(28) & !\U1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(28),
	datad => VCC,
	cin => \U1|Add0~55\,
	combout => \U1|Add0~56_combout\,
	cout => \U1|Add0~57\);

-- Location: FF_X16_Y17_N25
\U1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(28));

-- Location: LCCOMB_X16_Y17_N26
\U1|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~58_combout\ = (\U1|count\(29) & (!\U1|Add0~57\)) # (!\U1|count\(29) & ((\U1|Add0~57\) # (GND)))
-- \U1|Add0~59\ = CARRY((!\U1|Add0~57\) # (!\U1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(29),
	datad => VCC,
	cin => \U1|Add0~57\,
	combout => \U1|Add0~58_combout\,
	cout => \U1|Add0~59\);

-- Location: FF_X16_Y17_N27
\U1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(29));

-- Location: LCCOMB_X16_Y17_N28
\U1|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~60_combout\ = (\U1|count\(30) & (\U1|Add0~59\ $ (GND))) # (!\U1|count\(30) & (!\U1|Add0~59\ & VCC))
-- \U1|Add0~61\ = CARRY((\U1|count\(30) & !\U1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(30),
	datad => VCC,
	cin => \U1|Add0~59\,
	combout => \U1|Add0~60_combout\,
	cout => \U1|Add0~61\);

-- Location: FF_X16_Y17_N29
\U1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(30));

-- Location: LCCOMB_X16_Y17_N30
\U1|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~62_combout\ = \U1|count\(31) $ (\U1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(31),
	cin => \U1|Add0~61\,
	combout => \U1|Add0~62_combout\);

-- Location: FF_X16_Y17_N31
\U1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(31));

-- Location: LCCOMB_X17_Y17_N18
\U1|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~8_combout\ = (!\U1|count\(28) & (!\U1|count\(30) & (!\U1|count\(29) & !\U1|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(28),
	datab => \U1|count\(30),
	datac => \U1|count\(29),
	datad => \U1|count\(31),
	combout => \U1|Equal0~8_combout\);

-- Location: LCCOMB_X17_Y17_N4
\U1|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~7_combout\ = (!\U1|count\(27) & (!\U1|count\(26) & (!\U1|count\(24) & !\U1|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(27),
	datab => \U1|count\(26),
	datac => \U1|count\(24),
	datad => \U1|count\(25),
	combout => \U1|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y17_N12
\U1|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~5_combout\ = (!\U1|count\(16) & (!\U1|count\(18) & (!\U1|count\(19) & !\U1|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(16),
	datab => \U1|count\(18),
	datac => \U1|count\(19),
	datad => \U1|count\(17),
	combout => \U1|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y17_N0
\U1|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~9_combout\ = (\U1|Equal0~6_combout\ & (\U1|Equal0~8_combout\ & (\U1|Equal0~7_combout\ & \U1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~6_combout\,
	datab => \U1|Equal0~8_combout\,
	datac => \U1|Equal0~7_combout\,
	datad => \U1|Equal0~5_combout\,
	combout => \U1|Equal0~9_combout\);

-- Location: LCCOMB_X17_Y18_N6
\U1|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|count~0_combout\ = (\U1|Add0~30_combout\ & ((!\U1|Equal0~9_combout\) # (!\U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~4_combout\,
	datac => \U1|Equal0~9_combout\,
	datad => \U1|Add0~30_combout\,
	combout => \U1|count~0_combout\);

-- Location: FF_X17_Y18_N7
\U1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U1|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(15));

-- Location: LCCOMB_X17_Y18_N4
\U2|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux0~4_combout\ = (\U2|count\(1) & (((\U1|count\(13)) # (\U2|count\(2))))) # (!\U2|count\(1) & (\U1|count\(15) & ((!\U2|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(15),
	datab => \U2|count\(1),
	datac => \U1|count\(13),
	datad => \U2|count\(2),
	combout => \U2|Mux0~4_combout\);

-- Location: LCCOMB_X17_Y18_N14
\U2|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux0~5_combout\ = (\U2|Mux0~4_combout\ & ((\U1|count\(9)) # ((!\U2|count\(2))))) # (!\U2|Mux0~4_combout\ & (((\U1|count\(11) & \U2|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(9),
	datab => \U1|count\(11),
	datac => \U2|Mux0~4_combout\,
	datad => \U2|count\(2),
	combout => \U2|Mux0~5_combout\);

-- Location: LCCOMB_X17_Y18_N24
\U2|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux0~6_combout\ = (\U2|count\(0) & ((\U2|Mux0~3_combout\) # ((\U2|count\(3))))) # (!\U2|count\(0) & (((\U2|Mux0~5_combout\ & !\U2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(0),
	datab => \U2|Mux0~3_combout\,
	datac => \U2|Mux0~5_combout\,
	datad => \U2|count\(3),
	combout => \U2|Mux0~6_combout\);

-- Location: LCCOMB_X17_Y18_N20
\U2|Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux0~9_combout\ = (\U2|count\(3) & ((\U2|Mux0~6_combout\ & (\U2|Mux0~8_combout\)) # (!\U2|Mux0~6_combout\ & ((\U2|Mux0~1_combout\))))) # (!\U2|count\(3) & (((\U2|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(3),
	datab => \U2|Mux0~8_combout\,
	datac => \U2|Mux0~1_combout\,
	datad => \U2|Mux0~6_combout\,
	combout => \U2|Mux0~9_combout\);

-- Location: FF_X17_Y18_N21
\U2|serial_data_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U2|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|serial_data_out~q\);

-- Location: LCCOMB_X31_Y2_N0
\U3|count[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[0]~32_combout\ = \U3|count\(0) $ (VCC)
-- \U3|count[0]~33\ = CARRY(\U3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(0),
	datad => VCC,
	combout => \U3|count[0]~32_combout\,
	cout => \U3|count[0]~33\);

-- Location: FF_X31_Y2_N1
\U3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[0]~32_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(0));

-- Location: LCCOMB_X31_Y2_N2
\U3|count[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[1]~34_combout\ = (\U3|count\(1) & (!\U3|count[0]~33\)) # (!\U3|count\(1) & ((\U3|count[0]~33\) # (GND)))
-- \U3|count[1]~35\ = CARRY((!\U3|count[0]~33\) # (!\U3|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(1),
	datad => VCC,
	cin => \U3|count[0]~33\,
	combout => \U3|count[1]~34_combout\,
	cout => \U3|count[1]~35\);

-- Location: FF_X31_Y2_N3
\U3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[1]~34_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(1));

-- Location: LCCOMB_X31_Y2_N4
\U3|count[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[2]~36_combout\ = (\U3|count\(2) & (\U3|count[1]~35\ $ (GND))) # (!\U3|count\(2) & (!\U3|count[1]~35\ & VCC))
-- \U3|count[2]~37\ = CARRY((\U3|count\(2) & !\U3|count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(2),
	datad => VCC,
	cin => \U3|count[1]~35\,
	combout => \U3|count[2]~36_combout\,
	cout => \U3|count[2]~37\);

-- Location: FF_X31_Y2_N5
\U3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[2]~36_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(2));

-- Location: LCCOMB_X31_Y2_N6
\U3|count[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[3]~38_combout\ = (\U3|count\(3) & (!\U3|count[2]~37\)) # (!\U3|count\(3) & ((\U3|count[2]~37\) # (GND)))
-- \U3|count[3]~39\ = CARRY((!\U3|count[2]~37\) # (!\U3|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(3),
	datad => VCC,
	cin => \U3|count[2]~37\,
	combout => \U3|count[3]~38_combout\,
	cout => \U3|count[3]~39\);

-- Location: FF_X31_Y2_N7
\U3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[3]~38_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(3));

-- Location: LCCOMB_X31_Y2_N8
\U3|count[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[4]~40_combout\ = (\U3|count\(4) & (\U3|count[3]~39\ $ (GND))) # (!\U3|count\(4) & (!\U3|count[3]~39\ & VCC))
-- \U3|count[4]~41\ = CARRY((\U3|count\(4) & !\U3|count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(4),
	datad => VCC,
	cin => \U3|count[3]~39\,
	combout => \U3|count[4]~40_combout\,
	cout => \U3|count[4]~41\);

-- Location: FF_X31_Y2_N9
\U3|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[4]~40_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(4));

-- Location: LCCOMB_X31_Y2_N10
\U3|count[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[5]~42_combout\ = (\U3|count\(5) & (!\U3|count[4]~41\)) # (!\U3|count\(5) & ((\U3|count[4]~41\) # (GND)))
-- \U3|count[5]~43\ = CARRY((!\U3|count[4]~41\) # (!\U3|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(5),
	datad => VCC,
	cin => \U3|count[4]~41\,
	combout => \U3|count[5]~42_combout\,
	cout => \U3|count[5]~43\);

-- Location: FF_X31_Y2_N11
\U3|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[5]~42_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(5));

-- Location: LCCOMB_X31_Y2_N12
\U3|count[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[6]~44_combout\ = (\U3|count\(6) & (\U3|count[5]~43\ $ (GND))) # (!\U3|count\(6) & (!\U3|count[5]~43\ & VCC))
-- \U3|count[6]~45\ = CARRY((\U3|count\(6) & !\U3|count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(6),
	datad => VCC,
	cin => \U3|count[5]~43\,
	combout => \U3|count[6]~44_combout\,
	cout => \U3|count[6]~45\);

-- Location: FF_X31_Y2_N13
\U3|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[6]~44_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(6));

-- Location: LCCOMB_X31_Y2_N14
\U3|count[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[7]~46_combout\ = (\U3|count\(7) & (!\U3|count[6]~45\)) # (!\U3|count\(7) & ((\U3|count[6]~45\) # (GND)))
-- \U3|count[7]~47\ = CARRY((!\U3|count[6]~45\) # (!\U3|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(7),
	datad => VCC,
	cin => \U3|count[6]~45\,
	combout => \U3|count[7]~46_combout\,
	cout => \U3|count[7]~47\);

-- Location: FF_X31_Y2_N15
\U3|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[7]~46_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(7));

-- Location: LCCOMB_X31_Y2_N16
\U3|count[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[8]~48_combout\ = (\U3|count\(8) & (\U3|count[7]~47\ $ (GND))) # (!\U3|count\(8) & (!\U3|count[7]~47\ & VCC))
-- \U3|count[8]~49\ = CARRY((\U3|count\(8) & !\U3|count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(8),
	datad => VCC,
	cin => \U3|count[7]~47\,
	combout => \U3|count[8]~48_combout\,
	cout => \U3|count[8]~49\);

-- Location: FF_X31_Y2_N17
\U3|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[8]~48_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(8));

-- Location: LCCOMB_X31_Y2_N18
\U3|count[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[9]~50_combout\ = (\U3|count\(9) & (!\U3|count[8]~49\)) # (!\U3|count\(9) & ((\U3|count[8]~49\) # (GND)))
-- \U3|count[9]~51\ = CARRY((!\U3|count[8]~49\) # (!\U3|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(9),
	datad => VCC,
	cin => \U3|count[8]~49\,
	combout => \U3|count[9]~50_combout\,
	cout => \U3|count[9]~51\);

-- Location: FF_X31_Y2_N19
\U3|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[9]~50_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(9));

-- Location: LCCOMB_X31_Y2_N20
\U3|count[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[10]~52_combout\ = (\U3|count\(10) & (\U3|count[9]~51\ $ (GND))) # (!\U3|count\(10) & (!\U3|count[9]~51\ & VCC))
-- \U3|count[10]~53\ = CARRY((\U3|count\(10) & !\U3|count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(10),
	datad => VCC,
	cin => \U3|count[9]~51\,
	combout => \U3|count[10]~52_combout\,
	cout => \U3|count[10]~53\);

-- Location: FF_X31_Y2_N21
\U3|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[10]~52_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(10));

-- Location: LCCOMB_X31_Y2_N22
\U3|count[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[11]~54_combout\ = (\U3|count\(11) & (!\U3|count[10]~53\)) # (!\U3|count\(11) & ((\U3|count[10]~53\) # (GND)))
-- \U3|count[11]~55\ = CARRY((!\U3|count[10]~53\) # (!\U3|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(11),
	datad => VCC,
	cin => \U3|count[10]~53\,
	combout => \U3|count[11]~54_combout\,
	cout => \U3|count[11]~55\);

-- Location: FF_X31_Y2_N23
\U3|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[11]~54_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(11));

-- Location: LCCOMB_X31_Y2_N24
\U3|count[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[12]~56_combout\ = (\U3|count\(12) & (\U3|count[11]~55\ $ (GND))) # (!\U3|count\(12) & (!\U3|count[11]~55\ & VCC))
-- \U3|count[12]~57\ = CARRY((\U3|count\(12) & !\U3|count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(12),
	datad => VCC,
	cin => \U3|count[11]~55\,
	combout => \U3|count[12]~56_combout\,
	cout => \U3|count[12]~57\);

-- Location: FF_X31_Y2_N25
\U3|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[12]~56_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(12));

-- Location: LCCOMB_X31_Y2_N26
\U3|count[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[13]~58_combout\ = (\U3|count\(13) & (!\U3|count[12]~57\)) # (!\U3|count\(13) & ((\U3|count[12]~57\) # (GND)))
-- \U3|count[13]~59\ = CARRY((!\U3|count[12]~57\) # (!\U3|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(13),
	datad => VCC,
	cin => \U3|count[12]~57\,
	combout => \U3|count[13]~58_combout\,
	cout => \U3|count[13]~59\);

-- Location: FF_X31_Y2_N27
\U3|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[13]~58_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(13));

-- Location: LCCOMB_X31_Y2_N28
\U3|count[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[14]~60_combout\ = (\U3|count\(14) & (\U3|count[13]~59\ $ (GND))) # (!\U3|count\(14) & (!\U3|count[13]~59\ & VCC))
-- \U3|count[14]~61\ = CARRY((\U3|count\(14) & !\U3|count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(14),
	datad => VCC,
	cin => \U3|count[13]~59\,
	combout => \U3|count[14]~60_combout\,
	cout => \U3|count[14]~61\);

-- Location: FF_X31_Y2_N29
\U3|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[14]~60_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(14));

-- Location: LCCOMB_X31_Y2_N30
\U3|count[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[15]~62_combout\ = (\U3|count\(15) & (!\U3|count[14]~61\)) # (!\U3|count\(15) & ((\U3|count[14]~61\) # (GND)))
-- \U3|count[15]~63\ = CARRY((!\U3|count[14]~61\) # (!\U3|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(15),
	datad => VCC,
	cin => \U3|count[14]~61\,
	combout => \U3|count[15]~62_combout\,
	cout => \U3|count[15]~63\);

-- Location: FF_X31_Y2_N31
\U3|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[15]~62_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(15));

-- Location: LCCOMB_X31_Y1_N0
\U3|count[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[16]~64_combout\ = (\U3|count\(16) & (\U3|count[15]~63\ $ (GND))) # (!\U3|count\(16) & (!\U3|count[15]~63\ & VCC))
-- \U3|count[16]~65\ = CARRY((\U3|count\(16) & !\U3|count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(16),
	datad => VCC,
	cin => \U3|count[15]~63\,
	combout => \U3|count[16]~64_combout\,
	cout => \U3|count[16]~65\);

-- Location: FF_X31_Y1_N1
\U3|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[16]~64_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(16));

-- Location: LCCOMB_X31_Y1_N2
\U3|count[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[17]~66_combout\ = (\U3|count\(17) & (!\U3|count[16]~65\)) # (!\U3|count\(17) & ((\U3|count[16]~65\) # (GND)))
-- \U3|count[17]~67\ = CARRY((!\U3|count[16]~65\) # (!\U3|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(17),
	datad => VCC,
	cin => \U3|count[16]~65\,
	combout => \U3|count[17]~66_combout\,
	cout => \U3|count[17]~67\);

-- Location: FF_X31_Y1_N3
\U3|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[17]~66_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(17));

-- Location: LCCOMB_X31_Y1_N4
\U3|count[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[18]~68_combout\ = (\U3|count\(18) & (\U3|count[17]~67\ $ (GND))) # (!\U3|count\(18) & (!\U3|count[17]~67\ & VCC))
-- \U3|count[18]~69\ = CARRY((\U3|count\(18) & !\U3|count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(18),
	datad => VCC,
	cin => \U3|count[17]~67\,
	combout => \U3|count[18]~68_combout\,
	cout => \U3|count[18]~69\);

-- Location: FF_X31_Y1_N5
\U3|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[18]~68_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(18));

-- Location: LCCOMB_X31_Y1_N6
\U3|count[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[19]~70_combout\ = (\U3|count\(19) & (!\U3|count[18]~69\)) # (!\U3|count\(19) & ((\U3|count[18]~69\) # (GND)))
-- \U3|count[19]~71\ = CARRY((!\U3|count[18]~69\) # (!\U3|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(19),
	datad => VCC,
	cin => \U3|count[18]~69\,
	combout => \U3|count[19]~70_combout\,
	cout => \U3|count[19]~71\);

-- Location: FF_X31_Y1_N7
\U3|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[19]~70_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(19));

-- Location: LCCOMB_X31_Y1_N8
\U3|count[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[20]~72_combout\ = (\U3|count\(20) & (\U3|count[19]~71\ $ (GND))) # (!\U3|count\(20) & (!\U3|count[19]~71\ & VCC))
-- \U3|count[20]~73\ = CARRY((\U3|count\(20) & !\U3|count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(20),
	datad => VCC,
	cin => \U3|count[19]~71\,
	combout => \U3|count[20]~72_combout\,
	cout => \U3|count[20]~73\);

-- Location: FF_X31_Y1_N9
\U3|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[20]~72_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(20));

-- Location: LCCOMB_X31_Y1_N10
\U3|count[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[21]~74_combout\ = (\U3|count\(21) & (!\U3|count[20]~73\)) # (!\U3|count\(21) & ((\U3|count[20]~73\) # (GND)))
-- \U3|count[21]~75\ = CARRY((!\U3|count[20]~73\) # (!\U3|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(21),
	datad => VCC,
	cin => \U3|count[20]~73\,
	combout => \U3|count[21]~74_combout\,
	cout => \U3|count[21]~75\);

-- Location: FF_X31_Y1_N11
\U3|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[21]~74_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(21));

-- Location: LCCOMB_X31_Y1_N12
\U3|count[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[22]~76_combout\ = (\U3|count\(22) & (\U3|count[21]~75\ $ (GND))) # (!\U3|count\(22) & (!\U3|count[21]~75\ & VCC))
-- \U3|count[22]~77\ = CARRY((\U3|count\(22) & !\U3|count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(22),
	datad => VCC,
	cin => \U3|count[21]~75\,
	combout => \U3|count[22]~76_combout\,
	cout => \U3|count[22]~77\);

-- Location: FF_X31_Y1_N13
\U3|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[22]~76_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(22));

-- Location: LCCOMB_X31_Y1_N14
\U3|count[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[23]~78_combout\ = (\U3|count\(23) & (!\U3|count[22]~77\)) # (!\U3|count\(23) & ((\U3|count[22]~77\) # (GND)))
-- \U3|count[23]~79\ = CARRY((!\U3|count[22]~77\) # (!\U3|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(23),
	datad => VCC,
	cin => \U3|count[22]~77\,
	combout => \U3|count[23]~78_combout\,
	cout => \U3|count[23]~79\);

-- Location: FF_X31_Y1_N15
\U3|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[23]~78_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(23));

-- Location: LCCOMB_X32_Y1_N12
\U3|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|LessThan0~5_combout\ = (\U3|count\(23)) # ((\U3|count\(21)) # ((\U3|count\(22)) # (\U3|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(23),
	datab => \U3|count\(21),
	datac => \U3|count\(22),
	datad => \U3|count\(20),
	combout => \U3|LessThan0~5_combout\);

-- Location: LCCOMB_X31_Y1_N16
\U3|count[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[24]~80_combout\ = (\U3|count\(24) & (\U3|count[23]~79\ $ (GND))) # (!\U3|count\(24) & (!\U3|count[23]~79\ & VCC))
-- \U3|count[24]~81\ = CARRY((\U3|count\(24) & !\U3|count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(24),
	datad => VCC,
	cin => \U3|count[23]~79\,
	combout => \U3|count[24]~80_combout\,
	cout => \U3|count[24]~81\);

-- Location: FF_X31_Y1_N17
\U3|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[24]~80_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(24));

-- Location: LCCOMB_X31_Y1_N18
\U3|count[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[25]~82_combout\ = (\U3|count\(25) & (!\U3|count[24]~81\)) # (!\U3|count\(25) & ((\U3|count[24]~81\) # (GND)))
-- \U3|count[25]~83\ = CARRY((!\U3|count[24]~81\) # (!\U3|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(25),
	datad => VCC,
	cin => \U3|count[24]~81\,
	combout => \U3|count[25]~82_combout\,
	cout => \U3|count[25]~83\);

-- Location: FF_X31_Y1_N19
\U3|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[25]~82_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(25));

-- Location: LCCOMB_X31_Y1_N20
\U3|count[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[26]~84_combout\ = (\U3|count\(26) & (\U3|count[25]~83\ $ (GND))) # (!\U3|count\(26) & (!\U3|count[25]~83\ & VCC))
-- \U3|count[26]~85\ = CARRY((\U3|count\(26) & !\U3|count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(26),
	datad => VCC,
	cin => \U3|count[25]~83\,
	combout => \U3|count[26]~84_combout\,
	cout => \U3|count[26]~85\);

-- Location: FF_X31_Y1_N21
\U3|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[26]~84_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(26));

-- Location: LCCOMB_X31_Y1_N22
\U3|count[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[27]~86_combout\ = (\U3|count\(27) & (!\U3|count[26]~85\)) # (!\U3|count\(27) & ((\U3|count[26]~85\) # (GND)))
-- \U3|count[27]~87\ = CARRY((!\U3|count[26]~85\) # (!\U3|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(27),
	datad => VCC,
	cin => \U3|count[26]~85\,
	combout => \U3|count[27]~86_combout\,
	cout => \U3|count[27]~87\);

-- Location: FF_X31_Y1_N23
\U3|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[27]~86_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(27));

-- Location: LCCOMB_X31_Y1_N24
\U3|count[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[28]~88_combout\ = (\U3|count\(28) & (\U3|count[27]~87\ $ (GND))) # (!\U3|count\(28) & (!\U3|count[27]~87\ & VCC))
-- \U3|count[28]~89\ = CARRY((\U3|count\(28) & !\U3|count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(28),
	datad => VCC,
	cin => \U3|count[27]~87\,
	combout => \U3|count[28]~88_combout\,
	cout => \U3|count[28]~89\);

-- Location: FF_X31_Y1_N25
\U3|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[28]~88_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(28));

-- Location: LCCOMB_X31_Y1_N26
\U3|count[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[29]~90_combout\ = (\U3|count\(29) & (!\U3|count[28]~89\)) # (!\U3|count\(29) & ((\U3|count[28]~89\) # (GND)))
-- \U3|count[29]~91\ = CARRY((!\U3|count[28]~89\) # (!\U3|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(29),
	datad => VCC,
	cin => \U3|count[28]~89\,
	combout => \U3|count[29]~90_combout\,
	cout => \U3|count[29]~91\);

-- Location: FF_X31_Y1_N27
\U3|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[29]~90_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(29));

-- Location: LCCOMB_X31_Y1_N28
\U3|count[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[30]~92_combout\ = (\U3|count\(30) & (\U3|count[29]~91\ $ (GND))) # (!\U3|count\(30) & (!\U3|count[29]~91\ & VCC))
-- \U3|count[30]~93\ = CARRY((\U3|count\(30) & !\U3|count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(30),
	datad => VCC,
	cin => \U3|count[29]~91\,
	combout => \U3|count[30]~92_combout\,
	cout => \U3|count[30]~93\);

-- Location: FF_X31_Y1_N29
\U3|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[30]~92_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(30));

-- Location: LCCOMB_X31_Y1_N30
\U3|count[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|count[31]~94_combout\ = \U3|count\(31) $ (\U3|count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(31),
	cin => \U3|count[30]~93\,
	combout => \U3|count[31]~94_combout\);

-- Location: FF_X31_Y1_N31
\U3|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|count[31]~94_combout\,
	sclr => \U3|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(31));

-- Location: LCCOMB_X32_Y1_N22
\U3|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|LessThan0~6_combout\ = (\U3|count\(24)) # ((\U3|count\(27)) # ((\U3|count\(26)) # (\U3|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(24),
	datab => \U3|count\(27),
	datac => \U3|count\(26),
	datad => \U3|count\(25),
	combout => \U3|LessThan0~6_combout\);

-- Location: LCCOMB_X32_Y1_N4
\U3|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|LessThan0~7_combout\ = (\U3|count\(28)) # ((\U3|count\(30)) # ((\U3|LessThan0~6_combout\) # (\U3|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(28),
	datab => \U3|count\(30),
	datac => \U3|LessThan0~6_combout\,
	datad => \U3|count\(29),
	combout => \U3|LessThan0~7_combout\);

-- Location: LCCOMB_X32_Y1_N30
\U3|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|LessThan0~0_combout\ = (\U3|count\(7)) # ((\U3|count\(6)) # ((\U3|count\(4)) # (\U3|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(7),
	datab => \U3|count\(6),
	datac => \U3|count\(4),
	datad => \U3|count\(5),
	combout => \U3|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y1_N8
\U3|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|LessThan0~3_combout\ = (\U3|count\(17)) # ((\U3|count\(18)) # ((\U3|count\(19)) # (\U3|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(17),
	datab => \U3|count\(18),
	datac => \U3|count\(19),
	datad => \U3|count\(16),
	combout => \U3|LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y1_N26
\U3|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|LessThan0~2_combout\ = (\U3|count\(13)) # ((\U3|count\(12)) # ((\U3|count\(14)) # (\U3|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(13),
	datab => \U3|count\(12),
	datac => \U3|count\(14),
	datad => \U3|count\(15),
	combout => \U3|LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y1_N20
\U3|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|LessThan0~1_combout\ = (\U3|count\(8)) # ((\U3|count\(9)) # ((\U3|count\(10)) # (\U3|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(8),
	datab => \U3|count\(9),
	datac => \U3|count\(10),
	datad => \U3|count\(11),
	combout => \U3|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y1_N18
\U3|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|LessThan0~4_combout\ = (\U3|LessThan0~0_combout\) # ((\U3|LessThan0~3_combout\) # ((\U3|LessThan0~2_combout\) # (\U3|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|LessThan0~0_combout\,
	datab => \U3|LessThan0~3_combout\,
	datac => \U3|LessThan0~2_combout\,
	datad => \U3|LessThan0~1_combout\,
	combout => \U3|LessThan0~4_combout\);

-- Location: LCCOMB_X32_Y1_N14
\U3|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|LessThan0~8_combout\ = (!\U3|count\(31) & ((\U3|LessThan0~5_combout\) # ((\U3|LessThan0~7_combout\) # (\U3|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|LessThan0~5_combout\,
	datab => \U3|count\(31),
	datac => \U3|LessThan0~7_combout\,
	datad => \U3|LessThan0~4_combout\,
	combout => \U3|LessThan0~8_combout\);

-- Location: LCCOMB_X32_Y1_N28
\U3|LR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|LR~0_combout\ = \U3|LessThan0~8_combout\ $ (\U3|LR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|LessThan0~8_combout\,
	datac => \U3|LR~q\,
	combout => \U3|LR~0_combout\);

-- Location: FF_X32_Y1_N29
\U3|LR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|ALT_INV_temp~clkctrl_outclk\,
	d => \U3|LR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|LR~q\);

ww_BCK <= \BCK~output_o\;

ww_DIN <= \DIN~output_o\;

ww_LCK <= \LCK~output_o\;
END structure;


