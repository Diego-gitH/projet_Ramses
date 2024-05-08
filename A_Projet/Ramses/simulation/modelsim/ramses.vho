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

-- DATE "05/07/2024 09:37:08"

-- 
-- Device: Altera 5M160ZE64C5 Package EQFP64
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	ramses IS
    PORT (
	clock0 : IN std_logic;
	clock1 : IN std_logic;
	buttons : IN std_logic_vector(0 TO 3);
	reset_button : IN std_logic;
	led_col_green : OUT std_logic_vector(4 DOWNTO 0);
	led_col_red : OUT std_logic_vector(4 DOWNTO 0);
	led_row : OUT std_logic_vector(6 DOWNTO 0);
	led_current_player : OUT std_logic_vector(1 DOWNTO 0);
	seven_segments : OUT std_logic_vector(1 DOWNTO 0)
	);
END ramses;

-- Design Ports Information


ARCHITECTURE structure OF ramses IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock0 : std_logic;
SIGNAL ww_clock1 : std_logic;
SIGNAL ww_buttons : std_logic_vector(0 TO 3);
SIGNAL ww_reset_button : std_logic;
SIGNAL ww_led_col_green : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_led_col_red : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_led_row : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_current_player : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_seven_segments : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock0~combout\ : std_logic;
SIGNAL \clock1~combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \tresors_pos_col[0][1]~regout\ : std_logic;
SIGNAL \MAIN~11_combout\ : std_logic;
SIGNAL \state.MOVE_DOWN~regout\ : std_logic;
SIGNAL \reset_button~combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \counters[1][0]~regout\ : std_logic;
SIGNAL \counters[0][0]~regout\ : std_logic;
SIGNAL \counters~0_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \state.MOVE_LEFT~regout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \pos_col_players[0][0]~regout\ : std_logic;
SIGNAL \led_col_green~3_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \pos_col_players~1_combout\ : std_logic;
SIGNAL \pos_col_players~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \pos_col_players[1][2]~regout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \pos_col_players[0][2]~regout\ : std_logic;
SIGNAL \led_col_green~2_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \pos_col_players[1][1]~regout\ : std_logic;
SIGNAL \led_col_green~4_combout\ : std_logic;
SIGNAL \Decoder2~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \pos_col_players[1][0]~regout\ : std_logic;
SIGNAL \MAIN~0_combout\ : std_logic;
SIGNAL \tresors_pos_col[3][0]~regout\ : std_logic;
SIGNAL \MAIN~7_combout\ : std_logic;
SIGNAL \MAIN~8_combout\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \case_color~regout\ : std_logic;
SIGNAL \MAIN~1_combout\ : std_logic;
SIGNAL \MAIN~2_combout\ : std_logic;
SIGNAL \tresors_pos_col[1][1]~regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \MAIN~3_combout\ : std_logic;
SIGNAL \MAIN~4_combout\ : std_logic;
SIGNAL \MAIN~5_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \state.BLINK_LED~regout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \number_blink[1]~4_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state.PLAYER_TURN~regout\ : std_logic;
SIGNAL \state.MOVE_UP~regout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \pos_row_players[0][0]~regout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \pos_row_players[1][0]~regout\ : std_logic;
SIGNAL \DISPLAY~4_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \pos_row_players[0][1]~regout\ : std_logic;
SIGNAL \pos_row_players[1][1]~regout\ : std_logic;
SIGNAL \DISPLAY~3_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \pos_row_players[0][2]~regout\ : std_logic;
SIGNAL \pos_row_players[1][2]~regout\ : std_logic;
SIGNAL \DISPLAY~2_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \MAIN~9_combout\ : std_logic;
SIGNAL \MAIN~10_combout\ : std_logic;
SIGNAL \MAIN~12_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \tresors_pos_col[2][0]~regout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \MAIN~6_combout\ : std_logic;
SIGNAL \state.INCREASE_PLAYER~regout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.END_GAME~regout\ : std_logic;
SIGNAL \new_user_command~regout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.MOVE_RIGHT~regout\ : std_logic;
SIGNAL \state.CHECK_TRESORS~regout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector42~1_combout\ : std_logic;
SIGNAL \current_player~regout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \pos_col_players[0][1]~regout\ : std_logic;
SIGNAL \led_col_green~1_combout\ : std_logic;
SIGNAL \Decoder3~2_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \color_blink_players[0][0]~regout\ : std_logic;
SIGNAL \Selector43~5_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector46~1_combout\ : std_logic;
SIGNAL \color_blink_players[1][0]~regout\ : std_logic;
SIGNAL \DISPLAY~5_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector45~1_combout\ : std_logic;
SIGNAL \color_blink_players[1][1]~regout\ : std_logic;
SIGNAL \Selector43~2_combout\ : std_logic;
SIGNAL \Selector43~3_combout\ : std_logic;
SIGNAL \color_blink_players[0][1]~regout\ : std_logic;
SIGNAL \DISPLAY~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \led_col_green~5_combout\ : std_logic;
SIGNAL \DISPLAY~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Decoder3~6_combout\ : std_logic;
SIGNAL \led_col_green[0]~reg0_regout\ : std_logic;
SIGNAL \led_col_green~8_combout\ : std_logic;
SIGNAL \led_col_green~7_combout\ : std_logic;
SIGNAL \led_col_green[1]~reg0_regout\ : std_logic;
SIGNAL \led_col_green~10_combout\ : std_logic;
SIGNAL \led_col_green[2]~reg0_regout\ : std_logic;
SIGNAL \led_col_green~12_combout\ : std_logic;
SIGNAL \led_col_green[3]~reg0_regout\ : std_logic;
SIGNAL \led_col_green~0_combout\ : std_logic;
SIGNAL \Decoder3~3_combout\ : std_logic;
SIGNAL \Decoder2~1_combout\ : std_logic;
SIGNAL \led_col_green[4]~reg0_regout\ : std_logic;
SIGNAL \led_col_red~0_combout\ : std_logic;
SIGNAL \Decoder3~4_combout\ : std_logic;
SIGNAL \led_col_red[0]~reg0_regout\ : std_logic;
SIGNAL \led_col_red~2_combout\ : std_logic;
SIGNAL \Decoder3~5_combout\ : std_logic;
SIGNAL \led_col_red[1]~reg0_regout\ : std_logic;
SIGNAL \led_col_red~4_combout\ : std_logic;
SIGNAL \led_col_red[2]~reg0_regout\ : std_logic;
SIGNAL \led_col_red[3]~reg0_regout\ : std_logic;
SIGNAL \led_col_red[4]~reg0_regout\ : std_logic;
SIGNAL \led_row~0_combout\ : std_logic;
SIGNAL \led_row[0]~reg0_regout\ : std_logic;
SIGNAL \led_row[1]~reg0_regout\ : std_logic;
SIGNAL \led_row[2]~reg0_regout\ : std_logic;
SIGNAL \led_row[3]~reg0_regout\ : std_logic;
SIGNAL \led_row[4]~reg0_regout\ : std_logic;
SIGNAL \led_row[5]~reg0_regout\ : std_logic;
SIGNAL \led_row[6]~reg0_regout\ : std_logic;
SIGNAL \seven_segments[0]~reg0_regout\ : std_logic;
SIGNAL \seven_segments[1]~reg0_regout\ : std_logic;
SIGNAL fast_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL number_blink : std_logic_vector(1 DOWNTO 0);
SIGNAL count : std_logic_vector(2 DOWNTO 0);
SIGNAL \buttons~combout\ : std_logic_vector(0 TO 3);

BEGIN

ww_clock0 <= clock0;
ww_clock1 <= clock1;
ww_buttons <= buttons;
ww_reset_button <= reset_button;
led_col_green <= ww_led_col_green;
led_col_red <= ww_led_col_red;
led_row <= ww_led_row;
led_current_player <= ww_led_current_player;
seven_segments <= ww_seven_segments;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock0~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock0,
	combout => \clock0~combout\);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock1,
	combout => \clock1~combout\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\buttons[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_buttons(1),
	combout => \buttons~combout\(1));

-- Location: LC_X4_Y1_N5
\Selector34~0\ : maxv_lcell
-- Equation(s):
-- \Selector34~0_combout\ = (((\state.CHECK_TRESORS~regout\) # (!\state.END_GAME~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \state.END_GAME~regout\,
	datad => \state.CHECK_TRESORS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector34~0_combout\);

-- Location: LC_X4_Y2_N3
\Selector34~1\ : maxv_lcell
-- Equation(s):
-- \Selector34~1_combout\ = (((\state.CHECK_TRESORS~regout\ & \MAIN~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \state.CHECK_TRESORS~regout\,
	datad => \MAIN~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector34~1_combout\);

-- Location: LC_X4_Y2_N9
\tresors_pos_col[0][1]\ : maxv_lcell
-- Equation(s):
-- \tresors_pos_col[0][1]~regout\ = DFFEAS((\current_player~regout\ & (\tresors_pos_col[0][1]~regout\ & (\Selector34~0_combout\))) # (!\current_player~regout\ & ((\Selector34~1_combout\) # ((\tresors_pos_col[0][1]~regout\ & \Selector34~0_combout\)))), 
-- GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \current_player~regout\,
	datab => \tresors_pos_col[0][1]~regout\,
	datac => \Selector34~0_combout\,
	datad => \Selector34~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tresors_pos_col[0][1]~regout\);

-- Location: LC_X4_Y2_N5
\MAIN~11\ : maxv_lcell
-- Equation(s):
-- \MAIN~11_combout\ = ((\tresors_pos_col[0][1]~regout\) # ((\current_player~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tresors_pos_col[0][1]~regout\,
	datad => \current_player~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MAIN~11_combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\buttons[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_buttons(2),
	combout => \buttons~combout\(2));

-- Location: LC_X3_Y1_N0
\state.MOVE_DOWN\ : maxv_lcell
-- Equation(s):
-- \state.MOVE_DOWN~regout\ = DFFEAS(((!\buttons~combout\(2) & (\buttons~combout\(1) & \state~21_combout\))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	datab => \buttons~combout\(2),
	datac => \buttons~combout\(1),
	datad => \state~21_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.MOVE_DOWN~regout\);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\buttons[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_buttons(0),
	combout => \buttons~combout\(0));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_button~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset_button,
	combout => \reset_button~combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\buttons[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_buttons(3),
	combout => \buttons~combout\(3));

-- Location: LC_X3_Y1_N1
\Equal7~0\ : maxv_lcell
-- Equation(s):
-- \Equal7~0_combout\ = (\buttons~combout\(0) & (\buttons~combout\(2) & (\buttons~combout\(1) & \buttons~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \buttons~combout\(0),
	datab => \buttons~combout\(2),
	datac => \buttons~combout\(1),
	datad => \buttons~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~0_combout\);

-- Location: LC_X3_Y1_N6
\Selector1~2\ : maxv_lcell
-- Equation(s):
-- \Selector1~2_combout\ = ((!\state.PLAYER_TURN~regout\ & ((\new_user_command~regout\) # (\Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \new_user_command~regout\,
	datac => \state.PLAYER_TURN~regout\,
	datad => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~2_combout\);

-- Location: LC_X6_Y1_N9
\Selector1~0\ : maxv_lcell
-- Equation(s):
-- \Selector1~0_combout\ = (((number_blink(0) & number_blink(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => number_blink(0),
	datad => number_blink(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~0_combout\);

-- Location: LC_X3_Y2_N1
\counters[1][0]\ : maxv_lcell
-- Equation(s):
-- \counters[1][0]~regout\ = DFFEAS((\counters[1][0]~regout\ & (((\state.INCREASE_PLAYER~regout\)) # (!\state.END_GAME~regout\))) # (!\counters[1][0]~regout\ & (((\state.INCREASE_PLAYER~regout\ & \current_player~regout\)))), GLOBAL(\clock1~combout\), VCC, , 
-- , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2a2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \counters[1][0]~regout\,
	datab => \state.END_GAME~regout\,
	datac => \state.INCREASE_PLAYER~regout\,
	datad => \current_player~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counters[1][0]~regout\);

-- Location: LC_X3_Y2_N4
\counters[0][0]\ : maxv_lcell
-- Equation(s):
-- \counters[0][0]~regout\ = DFFEAS((\counters[0][0]~regout\ & (((\state.INCREASE_PLAYER~regout\)) # (!\state.END_GAME~regout\))) # (!\counters[0][0]~regout\ & (((\state.INCREASE_PLAYER~regout\ & !\current_player~regout\)))), GLOBAL(\clock1~combout\), VCC, , 
-- , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2f2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \counters[0][0]~regout\,
	datab => \state.END_GAME~regout\,
	datac => \state.INCREASE_PLAYER~regout\,
	datad => \current_player~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counters[0][0]~regout\);

-- Location: LC_X3_Y2_N6
\counters~0\ : maxv_lcell
-- Equation(s):
-- \counters~0_combout\ = ((\current_player~regout\ & (\counters[1][0]~regout\)) # (!\current_player~regout\ & ((\counters[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \counters[1][0]~regout\,
	datac => \counters[0][0]~regout\,
	datad => \current_player~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \counters~0_combout\);

-- Location: LC_X4_Y1_N0
\Selector2~4\ : maxv_lcell
-- Equation(s):
-- \Selector2~4_combout\ = (\state.INCREASE_PLAYER~regout\ & (((\state.BLINK_LED~regout\ & !\Selector1~0_combout\)) # (!\counters~0_combout\))) # (!\state.INCREASE_PLAYER~regout\ & (\state.BLINK_LED~regout\ & (!\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.INCREASE_PLAYER~regout\,
	datab => \state.BLINK_LED~regout\,
	datac => \Selector1~0_combout\,
	datad => \counters~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~4_combout\);

-- Location: LC_X3_Y1_N7
\state.MOVE_LEFT\ : maxv_lcell
-- Equation(s):
-- \state.MOVE_LEFT~regout\ = DFFEAS((\buttons~combout\(2) & (!\Equal7~0_combout\ & (\buttons~combout\(1) & \state~21_combout\))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \buttons~combout\(2),
	datab => \Equal7~0_combout\,
	datac => \buttons~combout\(1),
	datad => \state~21_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.MOVE_LEFT~regout\);

-- Location: LC_X5_Y4_N0
\Selector17~0\ : maxv_lcell
-- Equation(s):
-- \Selector17~0_combout\ = (\state.MOVE_LEFT~regout\ & (!\current_player~regout\)) # (!\state.MOVE_LEFT~regout\ & ((\state.MOVE_RIGHT~regout\ & (!\current_player~regout\)) # (!\state.MOVE_RIGHT~regout\ & ((!\state.END_GAME~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3327",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.MOVE_LEFT~regout\,
	datab => \current_player~regout\,
	datac => \state.END_GAME~regout\,
	datad => \state.MOVE_RIGHT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector17~0_combout\);

-- Location: LC_X5_Y4_N2
\Selector13~0\ : maxv_lcell
-- Equation(s):
-- \Selector13~0_combout\ = (\state.MOVE_LEFT~regout\ & (((\current_player~regout\)))) # (!\state.MOVE_LEFT~regout\ & ((\state.MOVE_RIGHT~regout\ & ((\current_player~regout\))) # (!\state.MOVE_RIGHT~regout\ & (!\state.END_GAME~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.END_GAME~regout\,
	datab => \current_player~regout\,
	datac => \state.MOVE_LEFT~regout\,
	datad => \state.MOVE_RIGHT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector13~0_combout\);

-- Location: LC_X5_Y4_N8
\pos_col_players[0][0]\ : maxv_lcell
-- Equation(s):
-- \pos_col_players[0][0]~regout\ = DFFEAS((\pos_col_players[0][0]~regout\ & (((\Selector13~0_combout\)))) # (!\pos_col_players[0][0]~regout\ & (!\current_player~regout\ & ((\Selector14~0_combout\)))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c5c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \current_player~regout\,
	datab => \Selector13~0_combout\,
	datac => \pos_col_players[0][0]~regout\,
	datad => \Selector14~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pos_col_players[0][0]~regout\);

-- Location: LC_X5_Y4_N4
\led_col_green~3\ : maxv_lcell
-- Equation(s):
-- \led_col_green~3_combout\ = ((\current_player~regout\ & (\pos_col_players[1][0]~regout\)) # (!\current_player~regout\ & ((\pos_col_players[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pos_col_players[1][0]~regout\,
	datac => \current_player~regout\,
	datad => \pos_col_players[0][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_col_green~3_combout\);

-- Location: LC_X3_Y2_N3
\Selector15~2\ : maxv_lcell
-- Equation(s):
-- \Selector15~2_combout\ = (((!\pos_col_players[1][2]~regout\ & !\current_player~regout\)) # (!\state.MOVE_RIGHT~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pos_col_players[1][2]~regout\,
	datac => \state.MOVE_RIGHT~regout\,
	datad => \current_player~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector15~2_combout\);

-- Location: LC_X3_Y4_N7
\Selector15~0\ : maxv_lcell
-- Equation(s):
-- \Selector15~0_combout\ = ((\state.MOVE_LEFT~regout\) # ((\state.MOVE_RIGHT~regout\) # (\state.END_GAME~regout\))) # (!\pos_col_players[1][2]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pos_col_players[1][2]~regout\,
	datab => \state.MOVE_LEFT~regout\,
	datac => \state.MOVE_RIGHT~regout\,
	datad => \state.END_GAME~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector15~0_combout\);

-- Location: LC_X3_Y2_N9
\pos_col_players~1\ : maxv_lcell
-- Equation(s):
-- \pos_col_players~1_combout\ = (\current_player~regout\ & ((\led_col_green~3_combout\ & (\led_col_green~4_combout\ $ (\led_col_green~2_combout\))) # (!\led_col_green~3_combout\ & (\led_col_green~4_combout\ & \led_col_green~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_player~regout\,
	datab => \led_col_green~3_combout\,
	datac => \led_col_green~4_combout\,
	datad => \led_col_green~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pos_col_players~1_combout\);

-- Location: LC_X4_Y4_N5
\pos_col_players~0\ : maxv_lcell
-- Equation(s):
-- \pos_col_players~0_combout\ = (\led_col_green~2_combout\ $ (((!\led_col_green~3_combout\ & !\led_col_green~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \led_col_green~3_combout\,
	datac => \led_col_green~4_combout\,
	datad => \led_col_green~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pos_col_players~0_combout\);

-- Location: LC_X4_Y4_N6
\Selector15~1\ : maxv_lcell
-- Equation(s):
-- \Selector15~1_combout\ = ((\current_player~regout\ & ((\pos_col_players~0_combout\))) # (!\current_player~regout\ & (!\pos_col_players[1][2]~regout\))) # (!\state.MOVE_LEFT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df1f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pos_col_players[1][2]~regout\,
	datab => \current_player~regout\,
	datac => \state.MOVE_LEFT~regout\,
	datad => \pos_col_players~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector15~1_combout\);

-- Location: LC_X3_Y2_N0
\pos_col_players[1][2]\ : maxv_lcell
-- Equation(s):
-- \pos_col_players[1][2]~regout\ = DFFEAS((((!\Selector15~2_combout\ & !\pos_col_players~1_combout\)) # (!\Selector15~1_combout\)) # (!\Selector15~0_combout\), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "37ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \Selector15~2_combout\,
	datab => \Selector15~0_combout\,
	datac => \pos_col_players~1_combout\,
	datad => \Selector15~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pos_col_players[1][2]~regout\);

-- Location: LC_X4_Y4_N4
\Selector12~0\ : maxv_lcell
-- Equation(s):
-- \Selector12~0_combout\ = (\state.MOVE_RIGHT~regout\ & ((\led_col_green~3_combout\) # ((\led_col_green~4_combout\) # (!\led_col_green~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.MOVE_RIGHT~regout\,
	datab => \led_col_green~3_combout\,
	datac => \led_col_green~4_combout\,
	datad => \led_col_green~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector12~0_combout\);

-- Location: LC_X4_Y4_N8
\Add2~0\ : maxv_lcell
-- Equation(s):
-- \Add2~0_combout\ = (\led_col_green~2_combout\ $ (((\led_col_green~3_combout\ & \led_col_green~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \led_col_green~3_combout\,
	datac => \led_col_green~4_combout\,
	datad => \led_col_green~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\);

-- Location: LC_X4_Y4_N9
\Selector12~1\ : maxv_lcell
-- Equation(s):
-- \Selector12~1_combout\ = (\pos_col_players~0_combout\ & ((\state.MOVE_LEFT~regout\) # ((\Selector12~0_combout\ & \Add2~0_combout\)))) # (!\pos_col_players~0_combout\ & (((\Selector12~0_combout\ & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pos_col_players~0_combout\,
	datab => \state.MOVE_LEFT~regout\,
	datac => \Selector12~0_combout\,
	datad => \Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector12~1_combout\);

-- Location: LC_X3_Y2_N5
\pos_col_players[0][2]\ : maxv_lcell
-- Equation(s):
-- \pos_col_players[0][2]~regout\ = DFFEAS((\pos_col_players[0][2]~regout\ & ((\Selector13~0_combout\) # ((!\current_player~regout\ & \Selector12~1_combout\)))) # (!\pos_col_players[0][2]~regout\ & (!\current_player~regout\ & ((\Selector12~1_combout\)))), 
-- GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \pos_col_players[0][2]~regout\,
	datab => \current_player~regout\,
	datac => \Selector13~0_combout\,
	datad => \Selector12~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pos_col_players[0][2]~regout\);

-- Location: LC_X3_Y2_N2
\led_col_green~2\ : maxv_lcell
-- Equation(s):
-- \led_col_green~2_combout\ = ((\current_player~regout\ & (!\pos_col_players[1][2]~regout\)) # (!\current_player~regout\ & ((\pos_col_players[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pos_col_players[1][2]~regout\,
	datac => \pos_col_players[0][2]~regout\,
	datad => \current_player~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_col_green~2_combout\);

-- Location: LC_X3_Y4_N1
\Selector13~1\ : maxv_lcell
-- Equation(s):
-- \Selector13~1_combout\ = (\state.MOVE_LEFT~regout\ & ((\led_col_green~4_combout\ & ((\led_col_green~3_combout\))) # (!\led_col_green~4_combout\ & (\led_col_green~2_combout\ & !\led_col_green~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8820",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.MOVE_LEFT~regout\,
	datab => \led_col_green~4_combout\,
	datac => \led_col_green~2_combout\,
	datad => \led_col_green~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector13~1_combout\);

-- Location: LC_X3_Y4_N4
\Selector16~0\ : maxv_lcell
-- Equation(s):
-- \Selector16~0_combout\ = (\Selector13~1_combout\) # ((\state.MOVE_RIGHT~regout\ & (\pos_col_players[1][0]~regout\ $ (\pos_col_players[1][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.MOVE_RIGHT~regout\,
	datab => \pos_col_players[1][0]~regout\,
	datac => \pos_col_players[1][1]~regout\,
	datad => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector16~0_combout\);

-- Location: LC_X3_Y4_N5
\pos_col_players[1][1]\ : maxv_lcell
-- Equation(s):
-- \pos_col_players[1][1]~regout\ = DFFEAS((\pos_col_players[1][1]~regout\ & ((\Selector17~0_combout\) # ((\current_player~regout\ & \Selector16~0_combout\)))) # (!\pos_col_players[1][1]~regout\ & (\current_player~regout\ & ((\Selector16~0_combout\)))), 
-- GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \pos_col_players[1][1]~regout\,
	datab => \current_player~regout\,
	datac => \Selector17~0_combout\,
	datad => \Selector16~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pos_col_players[1][1]~regout\);

-- Location: LC_X3_Y4_N0
\led_col_green~4\ : maxv_lcell
-- Equation(s):
-- \led_col_green~4_combout\ = ((\current_player~regout\ & ((\pos_col_players[1][1]~regout\))) # (!\current_player~regout\ & (\pos_col_players[0][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pos_col_players[0][1]~regout\,
	datac => \pos_col_players[1][1]~regout\,
	datad => \current_player~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_col_green~4_combout\);

-- Location: LC_X5_Y4_N3
\Decoder2~0\ : maxv_lcell
-- Equation(s):
-- \Decoder2~0_combout\ = (!\led_col_green~3_combout\ & (((!\led_col_green~4_combout\ & !\led_col_green~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \led_col_green~3_combout\,
	datac => \led_col_green~4_combout\,
	datad => \led_col_green~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder2~0_combout\);

-- Location: LC_X5_Y4_N1
\Selector14~0\ : maxv_lcell
-- Equation(s):
-- \Selector14~0_combout\ = ((\Selector12~0_combout\) # ((\state.MOVE_LEFT~regout\ & !\Decoder2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.MOVE_LEFT~regout\,
	datac => \Decoder2~0_combout\,
	datad => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector14~0_combout\);

-- Location: LC_X5_Y4_N6
\pos_col_players[1][0]\ : maxv_lcell
-- Equation(s):
-- \pos_col_players[1][0]~regout\ = DFFEAS((\pos_col_players[1][0]~regout\ & (((\Selector17~0_combout\)))) # (!\pos_col_players[1][0]~regout\ & (\current_player~regout\ & ((\Selector14~0_combout\)))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \pos_col_players[1][0]~regout\,
	datab => \current_player~regout\,
	datac => \Selector17~0_combout\,
	datad => \Selector14~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pos_col_players[1][0]~regout\);

-- Location: LC_X4_Y3_N0
\MAIN~0\ : maxv_lcell
-- Equation(s):
-- \MAIN~0_combout\ = (\DISPLAY~3_combout\ & ((\current_player~regout\ & (\pos_col_players[1][0]~regout\)) # (!\current_player~regout\ & ((\pos_col_players[0][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_player~regout\,
	datab => \pos_col_players[1][0]~regout\,
	datac => \pos_col_players[0][0]~regout\,
	datad => \DISPLAY~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MAIN~0_combout\);

-- Location: LC_X5_Y2_N5
\tresors_pos_col[3][0]\ : maxv_lcell
-- Equation(s):
-- \tresors_pos_col[3][0]~regout\ = DFFEAS((\tresors_pos_col[3][0]~regout\ & ((\Selector34~0_combout\) # ((\current_player~regout\ & \Selector38~0_combout\)))) # (!\tresors_pos_col[3][0]~regout\ & (\current_player~regout\ & ((\Selector38~0_combout\)))), 
-- GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \tresors_pos_col[3][0]~regout\,
	datab => \current_player~regout\,
	datac => \Selector34~0_combout\,
	datad => \Selector38~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tresors_pos_col[3][0]~regout\);

-- Location: LC_X4_Y4_N1
\MAIN~7\ : maxv_lcell
-- Equation(s):
-- \MAIN~7_combout\ = (\led_col_green~4_combout\ & (\DISPLAY~2_combout\ $ (((!\tresors_pos_col[3][0]~regout\ & \current_player~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tresors_pos_col[3][0]~regout\,
	datab => \current_player~regout\,
	datac => \led_col_green~4_combout\,
	datad => \DISPLAY~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MAIN~7_combout\);

-- Location: LC_X4_Y4_N2
\MAIN~8\ : maxv_lcell
-- Equation(s):
-- \MAIN~8_combout\ = (\MAIN~7_combout\ & (\DISPLAY~3_combout\ $ (((!\current_player~regout\ & !\tresors_pos_col[2][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_player~regout\,
	datab => \tresors_pos_col[2][0]~regout\,
	datac => \DISPLAY~3_combout\,
	datad => \MAIN~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MAIN~8_combout\);

-- Location: LC_X5_Y2_N2
\state~23\ : maxv_lcell
-- Equation(s):
-- \state~23_combout\ = ((!\MAIN~12_combout\ & ((!\MAIN~8_combout\) # (!\MAIN~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "030f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MAIN~6_combout\,
	datac => \MAIN~12_combout\,
	datad => \MAIN~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \state~23_combout\);

-- Location: LC_X5_Y2_N0
case_color : maxv_lcell
-- Equation(s):
-- \case_color~regout\ = DFFEAS((\state.CHECK_TRESORS~regout\ & ((\current_player~regout\ $ (\state~23_combout\)))) # (!\state.CHECK_TRESORS~regout\ & (\case_color~regout\)), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3aca",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \case_color~regout\,
	datab => \current_player~regout\,
	datac => \state.CHECK_TRESORS~regout\,
	datad => \state~23_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \case_color~regout\);

-- Location: LC_X5_Y4_N7
\MAIN~1\ : maxv_lcell
-- Equation(s):
-- \MAIN~1_combout\ = ((\case_color~regout\ & (\tresors_pos_col[3][0]~regout\)) # (!\case_color~regout\ & ((\tresors_pos_col[2][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tresors_pos_col[3][0]~regout\,
	datac => \tresors_pos_col[2][0]~regout\,
	datad => \case_color~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MAIN~1_combout\);

-- Location: LC_X5_Y4_N9
\MAIN~2\ : maxv_lcell
-- Equation(s):
-- \MAIN~2_combout\ = (\MAIN~1_combout\ & (((\led_col_green~3_combout\ & \DISPLAY~2_combout\)))) # (!\MAIN~1_combout\ & (!\led_col_green~3_combout\ & (\case_color~regout\ $ (\DISPLAY~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c102",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \case_color~regout\,
	datab => \MAIN~1_combout\,
	datac => \led_col_green~3_combout\,
	datad => \DISPLAY~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MAIN~2_combout\);

-- Location: LC_X4_Y2_N2
\tresors_pos_col[1][1]\ : maxv_lcell
-- Equation(s):
-- \tresors_pos_col[1][1]~regout\ = DFFEAS((\tresors_pos_col[1][1]~regout\ & ((\Selector34~0_combout\) # ((\current_player~regout\ & \Selector34~1_combout\)))) # (!\tresors_pos_col[1][1]~regout\ & (\current_player~regout\ & ((\Selector34~1_combout\)))), 
-- GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \tresors_pos_col[1][1]~regout\,
	datab => \current_player~regout\,
	datac => \Selector34~0_combout\,
	datad => \Selector34~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tresors_pos_col[1][1]~regout\);

-- Location: LC_X4_Y2_N6
\Selector2~0\ : maxv_lcell
-- Equation(s):
-- \Selector2~0_combout\ = ((\case_color~regout\ & ((\tresors_pos_col[1][1]~regout\))) # (!\case_color~regout\ & (\tresors_pos_col[0][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tresors_pos_col[0][1]~regout\,
	datac => \tresors_pos_col[1][1]~regout\,
	datad => \case_color~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~0_combout\);

-- Location: LC_X4_Y3_N6
\Selector2~1\ : maxv_lcell
-- Equation(s):
-- \Selector2~1_combout\ = (\case_color~regout\ & (\DISPLAY~2_combout\ & (\DISPLAY~4_combout\ $ (!\Selector2~0_combout\)))) # (!\case_color~regout\ & (\DISPLAY~4_combout\ & (\Selector2~0_combout\ $ (!\DISPLAY~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a402",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY~4_combout\,
	datab => \case_color~regout\,
	datac => \Selector2~0_combout\,
	datad => \DISPLAY~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~1_combout\);

-- Location: LC_X4_Y3_N7
\Selector2~2\ : maxv_lcell
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector2~1_combout\ & ((\Selector2~0_combout\ & (\led_col_green~4_combout\ & \led_col_green~2_combout\)) # (!\Selector2~0_combout\ & (!\led_col_green~4_combout\ & !\led_col_green~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \led_col_green~4_combout\,
	datac => \led_col_green~2_combout\,
	datad => \Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~2_combout\);

-- Location: LC_X5_Y2_N6
\MAIN~3\ : maxv_lcell
-- Equation(s):
-- \MAIN~3_combout\ = ((\case_color~regout\ & (\tresors_pos_col[3][0]~regout\)) # (!\case_color~regout\ & ((\tresors_pos_col[2][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \case_color~regout\,
	datac => \tresors_pos_col[3][0]~regout\,
	datad => \tresors_pos_col[2][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MAIN~3_combout\);

-- Location: LC_X4_Y3_N3
\MAIN~4\ : maxv_lcell
-- Equation(s):
-- \MAIN~4_combout\ = (\DISPLAY~4_combout\ & ((\led_col_green~2_combout\ & ((\DISPLAY~3_combout\))) # (!\led_col_green~2_combout\ & ((!\DISPLAY~3_combout\) # (!\case_color~regout\))))) # (!\DISPLAY~4_combout\ & (!\led_col_green~2_combout\ & 
-- ((\case_color~regout\) # (\DISPLAY~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a70e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY~4_combout\,
	datab => \case_color~regout\,
	datac => \led_col_green~2_combout\,
	datad => \DISPLAY~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MAIN~4_combout\);

-- Location: LC_X4_Y3_N4
\MAIN~5\ : maxv_lcell
-- Equation(s):
-- \MAIN~5_combout\ = (\led_col_green~4_combout\ & ((\MAIN~3_combout\ & (\led_col_green~2_combout\ & \MAIN~4_combout\)) # (!\MAIN~3_combout\ & (!\led_col_green~2_combout\ & !\MAIN~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \led_col_green~4_combout\,
	datab => \MAIN~3_combout\,
	datac => \led_col_green~2_combout\,
	datad => \MAIN~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MAIN~5_combout\);

-- Location: LC_X4_Y3_N8
\Selector2~3\ : maxv_lcell
-- Equation(s):
-- \Selector2~3_combout\ = (\MAIN~0_combout\ & (!\Selector2~2_combout\ & ((!\MAIN~5_combout\) # (!\MAIN~2_combout\)))) # (!\MAIN~0_combout\ & (((!\MAIN~5_combout\)) # (!\MAIN~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "135f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN~0_combout\,
	datab => \MAIN~2_combout\,
	datac => \Selector2~2_combout\,
	datad => \MAIN~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~3_combout\);

-- Location: LC_X5_Y2_N3
\state.BLINK_LED\ : maxv_lcell
-- Equation(s):
-- \state.BLINK_LED~regout\ = DFFEAS((\Selector2~4_combout\) # ((\state.CHECK_TRESORS~regout\ & (!\Selector2~3_combout\ & \state~23_combout\))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \state.CHECK_TRESORS~regout\,
	datab => \Selector2~4_combout\,
	datac => \Selector2~3_combout\,
	datad => \state~23_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.BLINK_LED~regout\);

-- Location: LC_X6_Y1_N8
\count[0]\ : maxv_lcell
-- Equation(s):
-- count(0) = DFFEAS((\LessThan1~0_combout\ & (!count(0) & ((!number_blink(0)) # (!number_blink(1))))), GLOBAL(\clock1~combout\), VCC, , \state.BLINK_LED~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "004c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => number_blink(1),
	datab => \LessThan1~0_combout\,
	datac => number_blink(0),
	datad => count(0),
	aclr => GND,
	ena => \state.BLINK_LED~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LC_X6_Y1_N4
\count[1]\ : maxv_lcell
-- Equation(s):
-- count(1) = DFFEAS((!count(2) & (!\Selector1~0_combout\ & (count(0) $ (count(1))))), GLOBAL(\clock1~combout\), VCC, , \state.BLINK_LED~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0012",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => count(0),
	datab => count(2),
	datac => count(1),
	datad => \Selector1~0_combout\,
	aclr => GND,
	ena => \state.BLINK_LED~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LC_X6_Y1_N1
\count[2]\ : maxv_lcell
-- Equation(s):
-- count(2) = DFFEAS((!\Selector1~0_combout\ & ((count(0) & (!count(2) & count(1))) # (!count(0) & (count(2) & !count(1))))), GLOBAL(\clock1~combout\), VCC, , \state.BLINK_LED~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0024",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => count(0),
	datab => count(2),
	datac => count(1),
	datad => \Selector1~0_combout\,
	aclr => GND,
	ena => \state.BLINK_LED~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LC_X6_Y1_N2
\LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \LessThan1~0_combout\ = (((!count(1) & !count(0))) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "333f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datac => count(1),
	datad => count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~0_combout\);

-- Location: LC_X6_Y1_N5
\number_blink[0]\ : maxv_lcell
-- Equation(s):
-- number_blink(0) = DFFEAS((\number_blink[1]~4_combout\ & ((number_blink(0) & (!number_blink(1) & \LessThan1~0_combout\)) # (!number_blink(0) & ((!\LessThan1~0_combout\))))) # (!\number_blink[1]~4_combout\ & (((number_blink(0))))), GLOBAL(\clock1~combout\), 
-- VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "703c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => number_blink(1),
	datab => \number_blink[1]~4_combout\,
	datac => number_blink(0),
	datad => \LessThan1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => number_blink(0));

-- Location: LC_X6_Y1_N6
\LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = ((!count(2) & ((!count(0)) # (!count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datac => count(1),
	datad => count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X6_Y1_N0
\number_blink[1]~4\ : maxv_lcell
-- Equation(s):
-- \number_blink[1]~4_combout\ = (\state.BLINK_LED~regout\ & (((number_blink(0) & number_blink(1))) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => number_blink(0),
	datab => \state.BLINK_LED~regout\,
	datac => \LessThan0~0_combout\,
	datad => number_blink(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \number_blink[1]~4_combout\);

-- Location: LC_X6_Y1_N3
\number_blink[1]\ : maxv_lcell
-- Equation(s):
-- number_blink(1) = DFFEAS((number_blink(1) & (((!number_blink(0))) # (!\number_blink[1]~4_combout\))) # (!number_blink(1) & (\number_blink[1]~4_combout\ & (number_blink(0) & !\LessThan1~0_combout\))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a6a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => number_blink(1),
	datab => \number_blink[1]~4_combout\,
	datac => number_blink(0),
	datad => \LessThan1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => number_blink(1));

-- Location: LC_X5_Y1_N0
\Selector1~3\ : maxv_lcell
-- Equation(s):
-- \Selector1~3_combout\ = (\state.END_GAME~regout\) # ((number_blink(1) & (number_blink(0) & \state.BLINK_LED~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => number_blink(1),
	datab => number_blink(0),
	datac => \state.END_GAME~regout\,
	datad => \state.BLINK_LED~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~3_combout\);

-- Location: LC_X4_Y3_N9
\Selector1~1\ : maxv_lcell
-- Equation(s):
-- \Selector1~1_combout\ = (!\MAIN~12_combout\ & (\Selector2~3_combout\ & ((!\MAIN~8_combout\) # (!\MAIN~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN~6_combout\,
	datab => \MAIN~8_combout\,
	datac => \MAIN~12_combout\,
	datad => \Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~1_combout\);

-- Location: LC_X4_Y3_N1
\state.PLAYER_TURN\ : maxv_lcell
-- Equation(s):
-- \state.PLAYER_TURN~regout\ = DFFEAS((!\Selector1~2_combout\ & (!\Selector1~3_combout\ & ((!\Selector1~1_combout\) # (!\state.CHECK_TRESORS~regout\)))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0103",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \state.CHECK_TRESORS~regout\,
	datab => \Selector1~2_combout\,
	datac => \Selector1~3_combout\,
	datad => \Selector1~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.PLAYER_TURN~regout\);

-- Location: LC_X3_Y1_N2
\state.MOVE_UP\ : maxv_lcell
-- Equation(s):
-- \state.MOVE_UP~regout\ = DFFEAS((!\buttons~combout\(0) & (\reset_button~combout\ & (!\new_user_command~regout\ & !\state.PLAYER_TURN~regout\))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \buttons~combout\(0),
	datab => \reset_button~combout\,
	datac => \new_user_command~regout\,
	datad => \state.PLAYER_TURN~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.MOVE_UP~regout\);

-- Location: LC_X3_Y4_N3
\Selector8~0\ : maxv_lcell
-- Equation(s):
-- \Selector8~0_combout\ = (\state.MOVE_DOWN~regout\ & (!\current_player~regout\)) # (!\state.MOVE_DOWN~regout\ & ((\state.MOVE_UP~regout\ & (!\current_player~regout\)) # (!\state.MOVE_UP~regout\ & ((\state.END_GAME~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3732",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.MOVE_DOWN~regout\,
	datab => \current_player~regout\,
	datac => \state.MOVE_UP~regout\,
	datad => \state.END_GAME~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~0_combout\);

-- Location: LC_X4_Y4_N3
\Selector8~1\ : maxv_lcell
-- Equation(s):
-- \Selector8~1_combout\ = (\DISPLAY~4_combout\ & (((!\DISPLAY~3_combout\)))) # (!\DISPLAY~4_combout\ & (((\DISPLAY~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY~4_combout\,
	datac => \DISPLAY~3_combout\,
	datad => \DISPLAY~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~1_combout\);

-- Location: LC_X4_Y4_N0
\Selector8~2\ : maxv_lcell
-- Equation(s):
-- \Selector8~2_combout\ = (\DISPLAY~3_combout\ & ((\state.MOVE_UP~regout\) # ((\state.MOVE_DOWN~regout\ & !\Selector8~1_combout\)))) # (!\DISPLAY~3_combout\ & ((\state.MOVE_DOWN~regout\) # ((\state.MOVE_UP~regout\ & \Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dcf8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY~3_combout\,
	datab => \state.MOVE_UP~regout\,
	datac => \state.MOVE_DOWN~regout\,
	datad => \Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~2_combout\);

-- Location: LC_X5_Y3_N2
\pos_row_players[0][0]\ : maxv_lcell
-- Equation(s):
-- \pos_row_players[0][0]~regout\ = DFFEAS((\pos_row_players[0][0]~regout\ & (((!\Selector8~0_combout\)))) # (!\pos_row_players[0][0]~regout\ & (!\current_player~regout\ & ((\Selector8~2_combout\)))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1d0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \current_player~regout\,
	datab => \pos_row_players[0][0]~regout\,
	datac => \Selector8~0_combout\,
	datad => \Selector8~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pos_row_players[0][0]~regout\);

-- Location: LC_X3_Y4_N9
\Selector11~0\ : maxv_lcell
-- Equation(s):
-- \Selector11~0_combout\ = (\state.MOVE_DOWN~regout\ & (\current_player~regout\)) # (!\state.MOVE_DOWN~regout\ & ((\state.MOVE_UP~regout\ & (\current_player~regout\)) # (!\state.MOVE_UP~regout\ & ((\state.END_GAME~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.MOVE_DOWN~regout\,
	datab => \current_player~regout\,
	datac => \state.MOVE_UP~regout\,
	datad => \state.END_GAME~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector11~0_combout\);

-- Location: LC_X5_Y3_N6
\pos_row_players[1][0]\ : maxv_lcell
-- Equation(s):
-- \pos_row_players[1][0]~regout\ = DFFEAS((\pos_row_players[1][0]~regout\ & (((!\Selector11~0_combout\)))) # (!\pos_row_players[1][0]~regout\ & (\current_player~regout\ & ((\Selector8~2_combout\)))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4e0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \pos_row_players[1][0]~regout\,
	datab => \current_player~regout\,
	datac => \Selector11~0_combout\,
	datad => \Selector8~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pos_row_players[1][0]~regout\);

-- Location: LC_X5_Y3_N7
\DISPLAY~4\ : maxv_lcell
-- Equation(s):
-- \DISPLAY~4_combout\ = ((\current_player~regout\ & ((\pos_row_players[1][0]~regout\))) # (!\current_player~regout\ & (\pos_row_players[0][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pos_row_players[0][0]~regout\,
	datac => \pos_row_players[1][0]~regout\,
	datad => \current_player~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DISPLAY~4_combout\);

-- Location: LC_X3_Y4_N8
\Selector7~0\ : maxv_lcell
-- Equation(s):
-- \Selector7~0_combout\ = (\state.MOVE_DOWN~regout\ & ((\DISPLAY~3_combout\ & (!\DISPLAY~2_combout\ & !\DISPLAY~4_combout\)) # (!\DISPLAY~3_combout\ & ((\DISPLAY~4_combout\))))) # (!\state.MOVE_DOWN~regout\ & (\DISPLAY~3_combout\ $ 
-- (((!\DISPLAY~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6619",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.MOVE_DOWN~regout\,
	datab => \DISPLAY~3_combout\,
	datac => \DISPLAY~2_combout\,
	datad => \DISPLAY~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~0_combout\);

-- Location: LC_X3_Y3_N9
\pos_row_players[0][1]\ : maxv_lcell
-- Equation(s):
-- \pos_row_players[0][1]~regout\ = DFFEAS((((!\state.END_GAME~regout\ & !\Selector7~0_combout\))), GLOBAL(\clock1~combout\), VCC, , \Selector8~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	datac => \state.END_GAME~regout\,
	datad => \Selector7~0_combout\,
	aclr => GND,
	ena => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pos_row_players[0][1]~regout\);

-- Location: LC_X2_Y3_N3
\pos_row_players[1][1]\ : maxv_lcell
-- Equation(s):
-- \pos_row_players[1][1]~regout\ = DFFEAS((\DISPLAY~3_combout\ & ((\state.MOVE_DOWN~regout\ & (!\DISPLAY~4_combout\ & !\DISPLAY~2_combout\)) # (!\state.MOVE_DOWN~regout\ & (\DISPLAY~4_combout\)))) # (!\DISPLAY~3_combout\ & (\state.MOVE_DOWN~regout\ $ 
-- ((!\DISPLAY~4_combout\)))), GLOBAL(\clock1~combout\), VCC, , \Selector11~0_combout\, , , \state.END_GAME~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6169",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \DISPLAY~3_combout\,
	datab => \state.MOVE_DOWN~regout\,
	datac => \DISPLAY~4_combout\,
	datad => \DISPLAY~2_combout\,
	aclr => GND,
	sclr => \state.END_GAME~regout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pos_row_players[1][1]~regout\);

-- Location: LC_X4_Y3_N2
\DISPLAY~3\ : maxv_lcell
-- Equation(s):
-- \DISPLAY~3_combout\ = (\current_player~regout\ & (((\pos_row_players[1][1]~regout\)))) # (!\current_player~regout\ & (((!\pos_row_players[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af05",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_player~regout\,
	datac => \pos_row_players[0][1]~regout\,
	datad => \pos_row_players[1][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DISPLAY~3_combout\);

-- Location: LC_X4_Y4_N7
\Selector6~0\ : maxv_lcell
-- Equation(s):
-- \Selector6~0_combout\ = (\state.MOVE_DOWN~regout\ & ((\DISPLAY~2_combout\ & (!\DISPLAY~3_combout\)) # (!\DISPLAY~2_combout\ & (\DISPLAY~3_combout\ & \DISPLAY~4_combout\)))) # (!\state.MOVE_DOWN~regout\ & (\DISPLAY~2_combout\ $ (((!\DISPLAY~3_combout\ & 
-- !\DISPLAY~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6c49",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.MOVE_DOWN~regout\,
	datab => \DISPLAY~2_combout\,
	datac => \DISPLAY~3_combout\,
	datad => \DISPLAY~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~0_combout\);

-- Location: LC_X3_Y3_N4
\pos_row_players[0][2]\ : maxv_lcell
-- Equation(s):
-- \pos_row_players[0][2]~regout\ = DFFEAS((((!\state.END_GAME~regout\ & !\Selector6~0_combout\))), GLOBAL(\clock1~combout\), VCC, , \Selector8~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	datac => \state.END_GAME~regout\,
	datad => \Selector6~0_combout\,
	aclr => GND,
	ena => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pos_row_players[0][2]~regout\);

-- Location: LC_X2_Y3_N9
\pos_row_players[1][2]\ : maxv_lcell
-- Equation(s):
-- \pos_row_players[1][2]~regout\ = DFFEAS((\DISPLAY~3_combout\ & ((\state.MOVE_DOWN~regout\ & (\DISPLAY~4_combout\ & !\DISPLAY~2_combout\)) # (!\state.MOVE_DOWN~regout\ & ((\DISPLAY~2_combout\))))) # (!\DISPLAY~3_combout\ & (\DISPLAY~2_combout\ $ 
-- (((!\state.MOVE_DOWN~regout\ & !\DISPLAY~4_combout\))))), GLOBAL(\clock1~combout\), VCC, , \Selector11~0_combout\, , , \state.END_GAME~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7681",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \DISPLAY~3_combout\,
	datab => \state.MOVE_DOWN~regout\,
	datac => \DISPLAY~4_combout\,
	datad => \DISPLAY~2_combout\,
	aclr => GND,
	sclr => \state.END_GAME~regout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pos_row_players[1][2]~regout\);

-- Location: LC_X5_Y3_N9
\DISPLAY~2\ : maxv_lcell
-- Equation(s):
-- \DISPLAY~2_combout\ = (\current_player~regout\ & (((\pos_row_players[1][2]~regout\)))) # (!\current_player~regout\ & (((!\pos_row_players[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af05",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_player~regout\,
	datac => \pos_row_players[0][2]~regout\,
	datad => \pos_row_players[1][2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DISPLAY~2_combout\);

-- Location: LC_X4_Y2_N4
\Equal12~0\ : maxv_lcell
-- Equation(s):
-- \Equal12~0_combout\ = (\current_player~regout\ & (\tresors_pos_col[1][1]~regout\ $ (((\pos_row_players[1][0]~regout\))))) # (!\current_player~regout\ & (((!\pos_row_players[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "478b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tresors_pos_col[1][1]~regout\,
	datab => \current_player~regout\,
	datac => \pos_row_players[0][0]~regout\,
	datad => \pos_row_players[1][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal12~0_combout\);

-- Location: LC_X4_Y2_N7
\MAIN~9\ : maxv_lcell
-- Equation(s):
-- \MAIN~9_combout\ = ((\current_player~regout\ & (\tresors_pos_col[1][1]~regout\)) # (!\current_player~regout\ & ((\tresors_pos_col[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tresors_pos_col[1][1]~regout\,
	datac => \tresors_pos_col[0][1]~regout\,
	datad => \current_player~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MAIN~9_combout\);

-- Location: LC_X4_Y2_N0
\MAIN~10\ : maxv_lcell
-- Equation(s):
-- \MAIN~10_combout\ = (!\Equal12~0_combout\ & ((\led_col_green~2_combout\ & (\MAIN~9_combout\ & \led_col_green~4_combout\)) # (!\led_col_green~2_combout\ & (!\MAIN~9_combout\ & !\led_col_green~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~0_combout\,
	datab => \led_col_green~2_combout\,
	datac => \MAIN~9_combout\,
	datad => \led_col_green~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MAIN~10_combout\);

-- Location: LC_X4_Y2_N1
\MAIN~12\ : maxv_lcell
-- Equation(s):
-- \MAIN~12_combout\ = (\MAIN~0_combout\ & (\MAIN~10_combout\ & (\MAIN~11_combout\ $ (!\DISPLAY~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MAIN~11_combout\,
	datab => \DISPLAY~2_combout\,
	datac => \MAIN~0_combout\,
	datad => \MAIN~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MAIN~12_combout\);

-- Location: LC_X5_Y2_N4
\Selector38~0\ : maxv_lcell
-- Equation(s):
-- \Selector38~0_combout\ = (\state.CHECK_TRESORS~regout\ & (\MAIN~6_combout\ & (!\MAIN~12_combout\ & \MAIN~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.CHECK_TRESORS~regout\,
	datab => \MAIN~6_combout\,
	datac => \MAIN~12_combout\,
	datad => \MAIN~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector38~0_combout\);

-- Location: LC_X5_Y2_N8
\tresors_pos_col[2][0]\ : maxv_lcell
-- Equation(s):
-- \tresors_pos_col[2][0]~regout\ = DFFEAS((\tresors_pos_col[2][0]~regout\ & ((\Selector34~0_combout\) # ((!\current_player~regout\ & \Selector38~0_combout\)))) # (!\tresors_pos_col[2][0]~regout\ & (!\current_player~regout\ & ((\Selector38~0_combout\)))), 
-- GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \tresors_pos_col[2][0]~regout\,
	datab => \current_player~regout\,
	datac => \Selector34~0_combout\,
	datad => \Selector38~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tresors_pos_col[2][0]~regout\);

-- Location: LC_X5_Y2_N7
\Mux5~0\ : maxv_lcell
-- Equation(s):
-- \Mux5~0_combout\ = ((\current_player~regout\ & ((\tresors_pos_col[3][0]~regout\))) # (!\current_player~regout\ & (\tresors_pos_col[2][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tresors_pos_col[2][0]~regout\,
	datac => \tresors_pos_col[3][0]~regout\,
	datad => \current_player~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X5_Y2_N9
\Equal14~0\ : maxv_lcell
-- Equation(s):
-- \Equal14~0_combout\ = (\current_player~regout\ & (((!\pos_row_players[1][0]~regout\)))) # (!\current_player~regout\ & (\tresors_pos_col[2][0]~regout\ $ (((\pos_row_players[0][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "353a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tresors_pos_col[2][0]~regout\,
	datab => \pos_row_players[1][0]~regout\,
	datac => \current_player~regout\,
	datad => \pos_row_players[0][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal14~0_combout\);

-- Location: LC_X5_Y2_N1
\MAIN~6\ : maxv_lcell
-- Equation(s):
-- \MAIN~6_combout\ = (!\Equal14~0_combout\ & ((\Mux5~0_combout\ & (\led_col_green~3_combout\ & \led_col_green~2_combout\)) # (!\Mux5~0_combout\ & (!\led_col_green~3_combout\ & !\led_col_green~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Equal14~0_combout\,
	datac => \led_col_green~3_combout\,
	datad => \led_col_green~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MAIN~6_combout\);

-- Location: LC_X4_Y2_N8
\state.INCREASE_PLAYER\ : maxv_lcell
-- Equation(s):
-- \state.INCREASE_PLAYER~regout\ = DFFEAS((\state.CHECK_TRESORS~regout\ & ((\MAIN~12_combout\) # ((\MAIN~6_combout\ & \MAIN~8_combout\)))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \MAIN~6_combout\,
	datab => \state.CHECK_TRESORS~regout\,
	datac => \MAIN~8_combout\,
	datad => \MAIN~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.INCREASE_PLAYER~regout\);

-- Location: LC_X3_Y1_N9
\Selector5~0\ : maxv_lcell
-- Equation(s):
-- \Selector5~0_combout\ = (!\new_user_command~regout\ & (!\reset_button~combout\ & (!\state.PLAYER_TURN~regout\ & !\Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \new_user_command~regout\,
	datab => \reset_button~combout\,
	datac => \state.PLAYER_TURN~regout\,
	datad => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~0_combout\);

-- Location: LC_X4_Y1_N6
\state.END_GAME\ : maxv_lcell
-- Equation(s):
-- \state.END_GAME~regout\ = DFFEAS((\Selector5~0_combout\) # ((\state.INCREASE_PLAYER~regout\ & ((\counters~0_combout\)))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \state.INCREASE_PLAYER~regout\,
	datab => \Selector5~0_combout\,
	datad => \counters~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.END_GAME~regout\);

-- Location: LC_X3_Y1_N8
new_user_command : maxv_lcell
-- Equation(s):
-- \new_user_command~regout\ = DFFEAS((\state.PLAYER_TURN~regout\ & (\new_user_command~regout\ & (!\state.END_GAME~regout\))) # (!\state.PLAYER_TURN~regout\ & (((!\Equal7~0_combout\)))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "202f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \new_user_command~regout\,
	datab => \state.END_GAME~regout\,
	datac => \state.PLAYER_TURN~regout\,
	datad => \Equal7~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \new_user_command~regout\);

-- Location: LC_X3_Y1_N3
\state~21\ : maxv_lcell
-- Equation(s):
-- \state~21_combout\ = (!\new_user_command~regout\ & (\buttons~combout\(0) & (!\state.PLAYER_TURN~regout\ & \reset_button~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \new_user_command~regout\,
	datab => \buttons~combout\(0),
	datac => \state.PLAYER_TURN~regout\,
	datad => \reset_button~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \state~21_combout\);

-- Location: LC_X3_Y1_N4
\state.MOVE_RIGHT\ : maxv_lcell
-- Equation(s):
-- \state.MOVE_RIGHT~regout\ = DFFEAS((((!\buttons~combout\(1) & \state~21_combout\))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	datac => \buttons~combout\(1),
	datad => \state~21_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.MOVE_RIGHT~regout\);

-- Location: LC_X3_Y1_N5
\state.CHECK_TRESORS\ : maxv_lcell
-- Equation(s):
-- \state.CHECK_TRESORS~regout\ = DFFEAS((\state.MOVE_RIGHT~regout\) # ((\state.MOVE_DOWN~regout\) # ((\state.MOVE_LEFT~regout\) # (\state.MOVE_UP~regout\))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \state.MOVE_RIGHT~regout\,
	datab => \state.MOVE_DOWN~regout\,
	datac => \state.MOVE_LEFT~regout\,
	datad => \state.MOVE_UP~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.CHECK_TRESORS~regout\);

-- Location: LC_X5_Y1_N3
\Selector42~0\ : maxv_lcell
-- Equation(s):
-- \Selector42~0_combout\ = (!\state.END_GAME~regout\ & (!\state.BLINK_LED~regout\ & (\current_player~regout\ & !\state.CHECK_TRESORS~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.END_GAME~regout\,
	datab => \state.BLINK_LED~regout\,
	datac => \current_player~regout\,
	datad => \state.CHECK_TRESORS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector42~0_combout\);

-- Location: LC_X5_Y1_N4
\Selector42~1\ : maxv_lcell
-- Equation(s):
-- \Selector42~1_combout\ = (\Selector42~0_combout\) # ((\state.BLINK_LED~regout\ & (\current_player~regout\ $ (\Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_player~regout\,
	datab => \state.BLINK_LED~regout\,
	datac => \Selector1~0_combout\,
	datad => \Selector42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector42~1_combout\);

-- Location: LC_X4_Y3_N5
current_player : maxv_lcell
-- Equation(s):
-- \current_player~regout\ = DFFEAS((\Selector42~1_combout\) # ((\state.CHECK_TRESORS~regout\ & (\current_player~regout\ $ (\Selector1~1_combout\)))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \current_player~regout\,
	datab => \state.CHECK_TRESORS~regout\,
	datac => \Selector42~1_combout\,
	datad => \Selector1~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_player~regout\);

-- Location: LC_X3_Y4_N2
\Selector13~2\ : maxv_lcell
-- Equation(s):
-- \Selector13~2_combout\ = (\Selector13~1_combout\) # ((\state.MOVE_RIGHT~regout\ & (\pos_col_players[0][1]~regout\ $ (\pos_col_players[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pos_col_players[0][1]~regout\,
	datab => \state.MOVE_RIGHT~regout\,
	datac => \pos_col_players[0][0]~regout\,
	datad => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector13~2_combout\);

-- Location: LC_X3_Y4_N6
\pos_col_players[0][1]\ : maxv_lcell
-- Equation(s):
-- \pos_col_players[0][1]~regout\ = DFFEAS((\pos_col_players[0][1]~regout\ & ((\Selector13~0_combout\) # ((!\current_player~regout\ & \Selector13~2_combout\)))) # (!\pos_col_players[0][1]~regout\ & (!\current_player~regout\ & ((\Selector13~2_combout\)))), 
-- GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \pos_col_players[0][1]~regout\,
	datab => \current_player~regout\,
	datac => \Selector13~0_combout\,
	datad => \Selector13~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pos_col_players[0][1]~regout\);

-- Location: LC_X7_Y3_N7
\led_col_green~1\ : maxv_lcell
-- Equation(s):
-- \led_col_green~1_combout\ = ((\current_player~regout\ & (\pos_col_players[0][0]~regout\)) # (!\current_player~regout\ & ((\pos_col_players[1][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \current_player~regout\,
	datac => \pos_col_players[0][0]~regout\,
	datad => \pos_col_players[1][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_col_green~1_combout\);

-- Location: LC_X7_Y3_N6
\Decoder3~2\ : maxv_lcell
-- Equation(s):
-- \Decoder3~2_combout\ = (!\led_col_green~1_combout\ & ((\current_player~regout\ & (!\pos_col_players[0][1]~regout\)) # (!\current_player~regout\ & ((!\pos_col_players[1][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0407",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pos_col_players[0][1]~regout\,
	datab => \current_player~regout\,
	datac => \led_col_green~1_combout\,
	datad => \pos_col_players[1][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder3~2_combout\);

-- Location: LC_X4_Y1_N7
\Selector44~0\ : maxv_lcell
-- Equation(s):
-- \Selector44~0_combout\ = (\LessThan0~0_combout\ & (\case_color~regout\ $ ((\color_blink_players[0][0]~regout\)))) # (!\LessThan0~0_combout\ & (((!\color_blink_players[0][0]~regout\ & \LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6360",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \case_color~regout\,
	datab => \color_blink_players[0][0]~regout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector44~0_combout\);

-- Location: LC_X4_Y1_N8
\Selector44~1\ : maxv_lcell
-- Equation(s):
-- \Selector44~1_combout\ = (!\current_player~regout\ & ((\Selector1~0_combout\ & (\color_blink_players[0][0]~regout\)) # (!\Selector1~0_combout\ & ((\Selector44~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \current_player~regout\,
	datac => \color_blink_players[0][0]~regout\,
	datad => \Selector44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector44~1_combout\);

-- Location: LC_X4_Y1_N9
\color_blink_players[0][0]\ : maxv_lcell
-- Equation(s):
-- \color_blink_players[0][0]~regout\ = DFFEAS((\state.BLINK_LED~regout\ & ((\color_blink_players[0][0]~regout\ $ (\Selector44~1_combout\)))) # (!\state.BLINK_LED~regout\ & (!\state.END_GAME~regout\ & (\color_blink_players[0][0]~regout\))), 
-- GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "34c4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \state.END_GAME~regout\,
	datab => \color_blink_players[0][0]~regout\,
	datac => \state.BLINK_LED~regout\,
	datad => \Selector44~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_blink_players[0][0]~regout\);

-- Location: LC_X6_Y1_N7
\Selector43~5\ : maxv_lcell
-- Equation(s):
-- \Selector43~5_combout\ = (\state.BLINK_LED~regout\ & (\LessThan0~0_combout\ & ((!number_blink(0)) # (!number_blink(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => number_blink(1),
	datab => \state.BLINK_LED~regout\,
	datac => number_blink(0),
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector43~5_combout\);

-- Location: LC_X4_Y1_N3
\Selector46~0\ : maxv_lcell
-- Equation(s):
-- \Selector46~0_combout\ = ((!\Selector1~0_combout\ & (!\LessThan0~0_combout\ & !\LessThan1~0_combout\))) # (!\current_player~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5557",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_player~regout\,
	datab => \Selector1~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector46~0_combout\);

-- Location: LC_X4_Y1_N1
\Selector46~1\ : maxv_lcell
-- Equation(s):
-- \Selector46~1_combout\ = (\color_blink_players[1][0]~regout\ & ((\state.BLINK_LED~regout\ & ((\Selector46~0_combout\))) # (!\state.BLINK_LED~regout\ & (!\state.END_GAME~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.END_GAME~regout\,
	datab => \state.BLINK_LED~regout\,
	datac => \color_blink_players[1][0]~regout\,
	datad => \Selector46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector46~1_combout\);

-- Location: LC_X4_Y1_N4
\color_blink_players[1][0]\ : maxv_lcell
-- Equation(s):
-- \color_blink_players[1][0]~regout\ = DFFEAS((\Selector46~1_combout\) # ((!\case_color~regout\ & (\current_player~regout\ & \Selector43~5_combout\))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \case_color~regout\,
	datab => \current_player~regout\,
	datac => \Selector43~5_combout\,
	datad => \Selector46~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_blink_players[1][0]~regout\);

-- Location: LC_X4_Y1_N2
\DISPLAY~5\ : maxv_lcell
-- Equation(s):
-- \DISPLAY~5_combout\ = ((\current_player~regout\ & ((\color_blink_players[1][0]~regout\))) # (!\current_player~regout\ & (!\color_blink_players[0][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \color_blink_players[0][0]~regout\,
	datac => \color_blink_players[1][0]~regout\,
	datad => \current_player~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DISPLAY~5_combout\);

-- Location: LC_X5_Y1_N8
\Selector45~0\ : maxv_lcell
-- Equation(s):
-- \Selector45~0_combout\ = (\LessThan0~0_combout\ & (\case_color~regout\ $ ((!\color_blink_players[1][1]~regout\)))) # (!\LessThan0~0_combout\ & (((!\color_blink_players[1][1]~regout\ & \LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9930",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \case_color~regout\,
	datab => \color_blink_players[1][1]~regout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector45~0_combout\);

-- Location: LC_X5_Y1_N7
\Selector45~1\ : maxv_lcell
-- Equation(s):
-- \Selector45~1_combout\ = (\current_player~regout\ & ((\Selector1~0_combout\ & (\color_blink_players[1][1]~regout\)) # (!\Selector1~0_combout\ & ((\Selector45~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_player~regout\,
	datab => \color_blink_players[1][1]~regout\,
	datac => \Selector1~0_combout\,
	datad => \Selector45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector45~1_combout\);

-- Location: LC_X5_Y1_N9
\color_blink_players[1][1]\ : maxv_lcell
-- Equation(s):
-- \color_blink_players[1][1]~regout\ = DFFEAS((\state.BLINK_LED~regout\ & (\color_blink_players[1][1]~regout\ $ (((\Selector45~1_combout\))))) # (!\state.BLINK_LED~regout\ & (\color_blink_players[1][1]~regout\ & (!\state.END_GAME~regout\))), 
-- GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "268c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \state.BLINK_LED~regout\,
	datab => \color_blink_players[1][1]~regout\,
	datac => \state.END_GAME~regout\,
	datad => \Selector45~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_blink_players[1][1]~regout\);

-- Location: LC_X5_Y1_N2
\Selector43~2\ : maxv_lcell
-- Equation(s):
-- \Selector43~2_combout\ = (\current_player~regout\) # ((!\Selector1~0_combout\ & (!\LessThan1~0_combout\ & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaab",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_player~regout\,
	datab => \Selector1~0_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector43~2_combout\);

-- Location: LC_X5_Y1_N5
\Selector43~3\ : maxv_lcell
-- Equation(s):
-- \Selector43~3_combout\ = (\color_blink_players[0][1]~regout\ & ((\state.BLINK_LED~regout\ & ((\Selector43~2_combout\))) # (!\state.BLINK_LED~regout\ & (!\state.END_GAME~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \color_blink_players[0][1]~regout\,
	datab => \state.BLINK_LED~regout\,
	datac => \state.END_GAME~regout\,
	datad => \Selector43~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector43~3_combout\);

-- Location: LC_X5_Y1_N6
\color_blink_players[0][1]\ : maxv_lcell
-- Equation(s):
-- \color_blink_players[0][1]~regout\ = DFFEAS((\Selector43~3_combout\) # ((\Selector43~5_combout\ & (!\current_player~regout\ & \case_color~regout\))), GLOBAL(\clock1~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock1~combout\,
	dataa => \Selector43~5_combout\,
	datab => \current_player~regout\,
	datac => \case_color~regout\,
	datad => \Selector43~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color_blink_players[0][1]~regout\);

-- Location: LC_X5_Y1_N1
\DISPLAY~1\ : maxv_lcell
-- Equation(s):
-- \DISPLAY~1_combout\ = ((\current_player~regout\ & (!\color_blink_players[1][1]~regout\)) # (!\current_player~regout\ & ((\color_blink_players[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \color_blink_players[1][1]~regout\,
	datac => \color_blink_players[0][1]~regout\,
	datad => \current_player~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DISPLAY~1_combout\);

-- Location: LC_X5_Y3_N5
\fast_counter[1]\ : maxv_lcell
-- Equation(s):
-- fast_counter(1) = DFFEAS(((fast_counter(1) & (!fast_counter(2) & !fast_counter(0))) # (!fast_counter(1) & ((fast_counter(0))))), GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	datab => fast_counter(2),
	datac => fast_counter(1),
	datad => fast_counter(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => fast_counter(1));

-- Location: LC_X5_Y3_N4
\fast_counter[2]\ : maxv_lcell
-- Equation(s):
-- fast_counter(2) = DFFEAS(((fast_counter(2) & (!fast_counter(1))) # (!fast_counter(2) & (fast_counter(1) & fast_counter(0)))), GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	datab => fast_counter(2),
	datac => fast_counter(1),
	datad => fast_counter(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => fast_counter(2));

-- Location: LC_X3_Y3_N3
\fast_counter[0]\ : maxv_lcell
-- Equation(s):
-- fast_counter(0) = DFFEAS(((!fast_counter(0) & ((!fast_counter(1)) # (!fast_counter(2))))), GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	datab => fast_counter(2),
	datac => fast_counter(1),
	datad => fast_counter(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => fast_counter(0));

-- Location: LC_X5_Y3_N1
\Equal2~0\ : maxv_lcell
-- Equation(s):
-- \Equal2~0_combout\ = (fast_counter(1) & (\DISPLAY~3_combout\ & (\DISPLAY~2_combout\ $ (!fast_counter(2))))) # (!fast_counter(1) & (!\DISPLAY~3_combout\ & (\DISPLAY~2_combout\ $ (!fast_counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => fast_counter(1),
	datab => \DISPLAY~2_combout\,
	datac => fast_counter(2),
	datad => \DISPLAY~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~0_combout\);

-- Location: LC_X5_Y3_N8
\Equal2~1\ : maxv_lcell
-- Equation(s):
-- \Equal2~1_combout\ = ((\Equal2~0_combout\ & (\DISPLAY~4_combout\ $ (!fast_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \DISPLAY~4_combout\,
	datac => fast_counter(0),
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~1_combout\);

-- Location: LC_X5_Y3_N3
\led_col_green~5\ : maxv_lcell
-- Equation(s):
-- \led_col_green~5_combout\ = (!\DISPLAY~5_combout\ & (((\DISPLAY~1_combout\ & \Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY~5_combout\,
	datac => \DISPLAY~1_combout\,
	datad => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_col_green~5_combout\);

-- Location: LC_X3_Y3_N2
\DISPLAY~0\ : maxv_lcell
-- Equation(s):
-- \DISPLAY~0_combout\ = (\current_player~regout\ & (((\pos_row_players[0][0]~regout\)))) # (!\current_player~regout\ & (((\pos_row_players[1][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_player~regout\,
	datac => \pos_row_players[1][0]~regout\,
	datad => \pos_row_players[0][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DISPLAY~0_combout\);

-- Location: LC_X3_Y3_N0
\Equal5~1\ : maxv_lcell
-- Equation(s):
-- \Equal5~1_combout\ = fast_counter(2) $ (((\current_player~regout\ & (!\pos_row_players[0][2]~regout\)) # (!\current_player~regout\ & ((\pos_row_players[1][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8d72",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_player~regout\,
	datab => \pos_row_players[0][2]~regout\,
	datac => \pos_row_players[1][2]~regout\,
	datad => fast_counter(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~1_combout\);

-- Location: LC_X3_Y3_N7
\Equal5~0\ : maxv_lcell
-- Equation(s):
-- \Equal5~0_combout\ = fast_counter(1) $ (((\current_player~regout\ & (!\pos_row_players[0][1]~regout\)) # (!\current_player~regout\ & ((\pos_row_players[1][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8d72",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_player~regout\,
	datab => \pos_row_players[0][1]~regout\,
	datac => \pos_row_players[1][1]~regout\,
	datad => fast_counter(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~0_combout\);

-- Location: LC_X3_Y3_N8
\Equal5~2\ : maxv_lcell
-- Equation(s):
-- \Equal5~2_combout\ = (!\Equal5~1_combout\ & (!\Equal5~0_combout\ & (fast_counter(0) $ (!\DISPLAY~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => fast_counter(0),
	datab => \DISPLAY~0_combout\,
	datac => \Equal5~1_combout\,
	datad => \Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~2_combout\);

-- Location: LC_X3_Y3_N1
\Decoder3~6\ : maxv_lcell
-- Equation(s):
-- \Decoder3~6_combout\ = (\pos_col_players[1][2]~regout\ & (((!\current_player~regout\ & \Equal5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pos_col_players[1][2]~regout\,
	datac => \current_player~regout\,
	datad => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder3~6_combout\);

-- Location: LC_X6_Y3_N1
\led_col_green[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_col_green[0]~reg0_regout\ = DFFEAS((\Decoder3~2_combout\ & (!\Decoder3~6_combout\ & ((!\Decoder2~0_combout\) # (!\led_col_green~5_combout\)))) # (!\Decoder3~2_combout\ & (((!\Decoder2~0_combout\)) # (!\led_col_green~5_combout\))), 
-- GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "153f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => \Decoder3~2_combout\,
	datab => \led_col_green~5_combout\,
	datac => \Decoder2~0_combout\,
	datad => \Decoder3~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_col_green[0]~reg0_regout\);

-- Location: LC_X7_Y3_N3
\led_col_green~8\ : maxv_lcell
-- Equation(s):
-- \led_col_green~8_combout\ = ((\current_player~regout\ & (\pos_col_players[0][1]~regout\)) # (!\current_player~regout\ & ((\pos_col_players[1][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \current_player~regout\,
	datac => \pos_col_players[0][1]~regout\,
	datad => \pos_col_players[1][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_col_green~8_combout\);

-- Location: LC_X6_Y3_N2
\led_col_green~7\ : maxv_lcell
-- Equation(s):
-- \led_col_green~7_combout\ = (\led_col_green~4_combout\) # ((\led_col_green~2_combout\) # ((!\led_col_green~5_combout\) # (!\led_col_green~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \led_col_green~4_combout\,
	datab => \led_col_green~2_combout\,
	datac => \led_col_green~3_combout\,
	datad => \led_col_green~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_col_green~7_combout\);

-- Location: LC_X6_Y3_N0
\led_col_green[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_col_green[1]~reg0_regout\ = DFFEAS((\led_col_green~7_combout\ & (((\led_col_green~8_combout\) # (!\Decoder3~6_combout\)) # (!\led_col_green~1_combout\))), GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => \led_col_green~1_combout\,
	datab => \led_col_green~8_combout\,
	datac => \Decoder3~6_combout\,
	datad => \led_col_green~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_col_green[1]~reg0_regout\);

-- Location: LC_X6_Y3_N8
\led_col_green~10\ : maxv_lcell
-- Equation(s):
-- \led_col_green~10_combout\ = ((\led_col_green~2_combout\) # ((\led_col_green~3_combout\) # (!\led_col_green~5_combout\))) # (!\led_col_green~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \led_col_green~4_combout\,
	datab => \led_col_green~2_combout\,
	datac => \led_col_green~3_combout\,
	datad => \led_col_green~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_col_green~10_combout\);

-- Location: LC_X6_Y3_N9
\led_col_green[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_col_green[2]~reg0_regout\ = DFFEAS((\led_col_green~10_combout\ & ((\led_col_green~1_combout\) # ((!\Decoder3~6_combout\) # (!\led_col_green~8_combout\)))), GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => \led_col_green~1_combout\,
	datab => \led_col_green~8_combout\,
	datac => \Decoder3~6_combout\,
	datad => \led_col_green~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_col_green[2]~reg0_regout\);

-- Location: LC_X7_Y3_N8
\led_col_green~12\ : maxv_lcell
-- Equation(s):
-- \led_col_green~12_combout\ = (((\led_col_green~2_combout\) # (!\led_col_green~5_combout\)) # (!\led_col_green~4_combout\)) # (!\led_col_green~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \led_col_green~3_combout\,
	datab => \led_col_green~4_combout\,
	datac => \led_col_green~2_combout\,
	datad => \led_col_green~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_col_green~12_combout\);

-- Location: LC_X7_Y3_N9
\led_col_green[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_col_green[3]~reg0_regout\ = DFFEAS((\led_col_green~12_combout\ & (((!\Decoder3~6_combout\) # (!\led_col_green~1_combout\)) # (!\led_col_green~8_combout\))), GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => \led_col_green~8_combout\,
	datab => \led_col_green~1_combout\,
	datac => \Decoder3~6_combout\,
	datad => \led_col_green~12_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_col_green[3]~reg0_regout\);

-- Location: LC_X7_Y3_N2
\led_col_green~0\ : maxv_lcell
-- Equation(s):
-- \led_col_green~0_combout\ = ((\current_player~regout\ & (\pos_col_players[0][2]~regout\)) # (!\current_player~regout\ & ((!\pos_col_players[1][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \current_player~regout\,
	datac => \pos_col_players[0][2]~regout\,
	datad => \pos_col_players[1][2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_col_green~0_combout\);

-- Location: LC_X3_Y3_N5
\Decoder3~3\ : maxv_lcell
-- Equation(s):
-- \Decoder3~3_combout\ = (\led_col_green~0_combout\ & (!\led_col_green~1_combout\ & (!\led_col_green~8_combout\ & \Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \led_col_green~0_combout\,
	datab => \led_col_green~1_combout\,
	datac => \led_col_green~8_combout\,
	datad => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder3~3_combout\);

-- Location: LC_X5_Y4_N5
\Decoder2~1\ : maxv_lcell
-- Equation(s):
-- \Decoder2~1_combout\ = (!\led_col_green~3_combout\ & (((!\led_col_green~4_combout\ & \led_col_green~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \led_col_green~3_combout\,
	datac => \led_col_green~4_combout\,
	datad => \led_col_green~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder2~1_combout\);

-- Location: LC_X3_Y3_N6
\led_col_green[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_col_green[4]~reg0_regout\ = DFFEAS((\current_player~regout\ & (((!\Decoder2~1_combout\)) # (!\led_col_green~5_combout\))) # (!\current_player~regout\ & (!\Decoder3~3_combout\ & ((!\Decoder2~1_combout\) # (!\led_col_green~5_combout\)))), 
-- GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "23af",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => \current_player~regout\,
	datab => \led_col_green~5_combout\,
	datac => \Decoder3~3_combout\,
	datad => \Decoder2~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_col_green[4]~reg0_regout\);

-- Location: LC_X5_Y3_N0
\led_col_red~0\ : maxv_lcell
-- Equation(s):
-- \led_col_red~0_combout\ = (\DISPLAY~5_combout\ & (((!\DISPLAY~1_combout\ & \Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISPLAY~5_combout\,
	datac => \DISPLAY~1_combout\,
	datad => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_col_red~0_combout\);

-- Location: LC_X7_Y3_N4
\Decoder3~4\ : maxv_lcell
-- Equation(s):
-- \Decoder3~4_combout\ = (!\pos_col_players[0][2]~regout\ & (\current_player~regout\ & ((\Equal5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pos_col_players[0][2]~regout\,
	datab => \current_player~regout\,
	datad => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder3~4_combout\);

-- Location: LC_X7_Y3_N5
\led_col_red[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_col_red[0]~reg0_regout\ = DFFEAS((\Decoder3~2_combout\ & (!\Decoder3~4_combout\ & ((!\Decoder2~0_combout\) # (!\led_col_red~0_combout\)))) # (!\Decoder3~2_combout\ & (((!\Decoder2~0_combout\)) # (!\led_col_red~0_combout\))), GLOBAL(\clock0~combout\), 
-- VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "153f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => \Decoder3~2_combout\,
	datab => \led_col_red~0_combout\,
	datac => \Decoder2~0_combout\,
	datad => \Decoder3~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_col_red[0]~reg0_regout\);

-- Location: LC_X6_Y3_N4
\led_col_red~2\ : maxv_lcell
-- Equation(s):
-- \led_col_red~2_combout\ = ((!\led_col_green~2_combout\ & (\led_col_green~3_combout\ & \led_col_red~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \led_col_green~2_combout\,
	datac => \led_col_green~3_combout\,
	datad => \led_col_red~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_col_red~2_combout\);

-- Location: LC_X6_Y3_N6
\Decoder3~5\ : maxv_lcell
-- Equation(s):
-- \Decoder3~5_combout\ = (\led_col_green~1_combout\ & (\current_player~regout\ & (!\led_col_green~0_combout\ & \Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \led_col_green~1_combout\,
	datab => \current_player~regout\,
	datac => \led_col_green~0_combout\,
	datad => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder3~5_combout\);

-- Location: LC_X6_Y3_N3
\led_col_red[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_col_red[1]~reg0_regout\ = DFFEAS((\led_col_green~4_combout\ & ((\led_col_green~8_combout\) # ((!\Decoder3~5_combout\)))) # (!\led_col_green~4_combout\ & (!\led_col_red~2_combout\ & ((\led_col_green~8_combout\) # (!\Decoder3~5_combout\)))), 
-- GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8caf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => \led_col_green~4_combout\,
	datab => \led_col_green~8_combout\,
	datac => \led_col_red~2_combout\,
	datad => \Decoder3~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_col_red[1]~reg0_regout\);

-- Location: LC_X7_Y3_N0
\led_col_red~4\ : maxv_lcell
-- Equation(s):
-- \led_col_red~4_combout\ = (\led_col_green~3_combout\) # (((\led_col_green~2_combout\) # (!\led_col_red~0_combout\)) # (!\led_col_green~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \led_col_green~3_combout\,
	datab => \led_col_green~4_combout\,
	datac => \led_col_green~2_combout\,
	datad => \led_col_red~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_col_red~4_combout\);

-- Location: LC_X7_Y3_N1
\led_col_red[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_col_red[2]~reg0_regout\ = DFFEAS((\led_col_red~4_combout\ & (((\led_col_green~1_combout\) # (!\Decoder3~4_combout\)) # (!\led_col_green~8_combout\))), GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => \led_col_green~8_combout\,
	datab => \led_col_green~1_combout\,
	datac => \Decoder3~4_combout\,
	datad => \led_col_red~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_col_red[2]~reg0_regout\);

-- Location: LC_X6_Y3_N7
\led_col_red[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_col_red[3]~reg0_regout\ = DFFEAS((\led_col_green~4_combout\ & (!\led_col_red~2_combout\ & ((!\Decoder3~5_combout\) # (!\led_col_green~8_combout\)))) # (!\led_col_green~4_combout\ & (((!\Decoder3~5_combout\)) # (!\led_col_green~8_combout\))), 
-- GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "135f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => \led_col_green~4_combout\,
	datab => \led_col_green~8_combout\,
	datac => \led_col_red~2_combout\,
	datad => \Decoder3~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_col_red[3]~reg0_regout\);

-- Location: LC_X6_Y3_N5
\led_col_red[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_col_red[4]~reg0_regout\ = DFFEAS((\led_col_red~0_combout\ & (!\Decoder2~1_combout\ & ((!\Decoder3~3_combout\) # (!\current_player~regout\)))) # (!\led_col_red~0_combout\ & (((!\Decoder3~3_combout\)) # (!\current_player~regout\))), 
-- GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "135f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => \led_col_red~0_combout\,
	datab => \current_player~regout\,
	datac => \Decoder2~1_combout\,
	datad => \Decoder3~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_col_red[4]~reg0_regout\);

-- Location: LC_X2_Y3_N8
\led_row~0\ : maxv_lcell
-- Equation(s):
-- \led_row~0_combout\ = (\Equal5~2_combout\) # ((\Equal2~0_combout\ & (fast_counter(0) $ (!\DISPLAY~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff90",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => fast_counter(0),
	datab => \DISPLAY~4_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \led_row~0_combout\);

-- Location: LC_X2_Y3_N0
\led_row[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_row[0]~reg0_regout\ = DFFEAS((!fast_counter(0) & (!fast_counter(1) & (!fast_counter(2) & \led_row~0_combout\))), GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => fast_counter(0),
	datab => fast_counter(1),
	datac => fast_counter(2),
	datad => \led_row~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_row[0]~reg0_regout\);

-- Location: LC_X2_Y3_N5
\led_row[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_row[1]~reg0_regout\ = DFFEAS((fast_counter(0) & (!fast_counter(1) & (!fast_counter(2) & \led_row~0_combout\))), GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => fast_counter(0),
	datab => fast_counter(1),
	datac => fast_counter(2),
	datad => \led_row~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_row[1]~reg0_regout\);

-- Location: LC_X2_Y3_N6
\led_row[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_row[2]~reg0_regout\ = DFFEAS((fast_counter(1) & (!fast_counter(0) & (!fast_counter(2) & \led_row~0_combout\))), GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => fast_counter(1),
	datab => fast_counter(0),
	datac => fast_counter(2),
	datad => \led_row~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_row[2]~reg0_regout\);

-- Location: LC_X2_Y3_N2
\led_row[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_row[3]~reg0_regout\ = DFFEAS((fast_counter(1) & (fast_counter(0) & (!fast_counter(2) & \led_row~0_combout\))), GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => fast_counter(1),
	datab => fast_counter(0),
	datac => fast_counter(2),
	datad => \led_row~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_row[3]~reg0_regout\);

-- Location: LC_X2_Y3_N4
\led_row[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_row[4]~reg0_regout\ = DFFEAS((!fast_counter(0) & (!fast_counter(1) & (fast_counter(2) & \led_row~0_combout\))), GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => fast_counter(0),
	datab => fast_counter(1),
	datac => fast_counter(2),
	datad => \led_row~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_row[4]~reg0_regout\);

-- Location: LC_X2_Y3_N1
\led_row[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_row[5]~reg0_regout\ = DFFEAS((fast_counter(0) & (!fast_counter(1) & (fast_counter(2) & \led_row~0_combout\))), GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => fast_counter(0),
	datab => fast_counter(1),
	datac => fast_counter(2),
	datad => \led_row~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_row[5]~reg0_regout\);

-- Location: LC_X2_Y3_N7
\led_row[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \led_row[6]~reg0_regout\ = DFFEAS((fast_counter(1) & (!fast_counter(0) & (fast_counter(2) & \led_row~0_combout\))), GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	dataa => fast_counter(1),
	datab => fast_counter(0),
	datac => fast_counter(2),
	datad => \led_row~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_row[6]~reg0_regout\);

-- Location: LC_X3_Y2_N8
\seven_segments[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \seven_segments[0]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clock0~combout\), VCC, , , \counters[0][0]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	datac => \counters[0][0]~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seven_segments[0]~reg0_regout\);

-- Location: LC_X3_Y2_N7
\seven_segments[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \seven_segments[1]~reg0_regout\ = DFFEAS((((\counters[1][0]~regout\))), GLOBAL(\clock0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock0~combout\,
	datad => \counters[1][0]~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seven_segments[1]~reg0_regout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_col_green[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_col_green[0]~reg0_regout\,
	oe => VCC,
	padio => ww_led_col_green(0));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_col_green[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_col_green[1]~reg0_regout\,
	oe => VCC,
	padio => ww_led_col_green(1));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_col_green[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_col_green[2]~reg0_regout\,
	oe => VCC,
	padio => ww_led_col_green(2));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_col_green[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_col_green[3]~reg0_regout\,
	oe => VCC,
	padio => ww_led_col_green(3));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_col_green[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_col_green[4]~reg0_regout\,
	oe => VCC,
	padio => ww_led_col_green(4));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_col_red[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_col_red[0]~reg0_regout\,
	oe => VCC,
	padio => ww_led_col_red(0));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_col_red[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_col_red[1]~reg0_regout\,
	oe => VCC,
	padio => ww_led_col_red(1));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_col_red[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_col_red[2]~reg0_regout\,
	oe => VCC,
	padio => ww_led_col_red(2));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_col_red[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_col_red[3]~reg0_regout\,
	oe => VCC,
	padio => ww_led_col_red(3));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_col_red[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_col_red[4]~reg0_regout\,
	oe => VCC,
	padio => ww_led_col_red(4));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_row[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_row[0]~reg0_regout\,
	oe => VCC,
	padio => ww_led_row(0));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_row[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_row[1]~reg0_regout\,
	oe => VCC,
	padio => ww_led_row(1));

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_row[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_row[2]~reg0_regout\,
	oe => VCC,
	padio => ww_led_row(2));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_row[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_row[3]~reg0_regout\,
	oe => VCC,
	padio => ww_led_row(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_row[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_row[4]~reg0_regout\,
	oe => VCC,
	padio => ww_led_row(4));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_row[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_row[5]~reg0_regout\,
	oe => VCC,
	padio => ww_led_row(5));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_row[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led_row[6]~reg0_regout\,
	oe => VCC,
	padio => ww_led_row(6));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_current_player[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led_current_player(0));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led_current_player[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led_current_player(1));

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\seven_segments[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \seven_segments[0]~reg0_regout\,
	oe => VCC,
	padio => ww_seven_segments(0));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\seven_segments[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \seven_segments[1]~reg0_regout\,
	oe => VCC,
	padio => ww_seven_segments(1));
END structure;


