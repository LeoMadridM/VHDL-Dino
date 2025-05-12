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

-- DATE "03/14/2023 18:31:22"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SEQ_DINO IS
    PORT (
	push : IN std_logic;
	VSYNC : IN std_logic;
	limUP : OUT std_logic_vector(9 DOWNTO 0);
	limDO : OUT std_logic_vector(9 DOWNTO 0);
	flag1 : OUT std_logic;
	cont1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END SEQ_DINO;

-- Design Ports Information
-- limUP[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limUP[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limUP[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limUP[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limUP[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limUP[5]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limUP[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limUP[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limUP[8]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limUP[9]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limDO[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limDO[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limDO[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limDO[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limDO[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limDO[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limDO[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limDO[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limDO[8]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limDO[9]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag1	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont1[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont1[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont1[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont1[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont1[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont1[5]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont1[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VSYNC	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SEQ_DINO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_push : std_logic;
SIGNAL ww_VSYNC : std_logic;
SIGNAL ww_limUP : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_limDO : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_flag1 : std_logic;
SIGNAL ww_cont1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VSYNC~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \limUP[0]~output_o\ : std_logic;
SIGNAL \limUP[1]~output_o\ : std_logic;
SIGNAL \limUP[2]~output_o\ : std_logic;
SIGNAL \limUP[3]~output_o\ : std_logic;
SIGNAL \limUP[4]~output_o\ : std_logic;
SIGNAL \limUP[5]~output_o\ : std_logic;
SIGNAL \limUP[6]~output_o\ : std_logic;
SIGNAL \limUP[7]~output_o\ : std_logic;
SIGNAL \limUP[8]~output_o\ : std_logic;
SIGNAL \limUP[9]~output_o\ : std_logic;
SIGNAL \limDO[0]~output_o\ : std_logic;
SIGNAL \limDO[1]~output_o\ : std_logic;
SIGNAL \limDO[2]~output_o\ : std_logic;
SIGNAL \limDO[3]~output_o\ : std_logic;
SIGNAL \limDO[4]~output_o\ : std_logic;
SIGNAL \limDO[5]~output_o\ : std_logic;
SIGNAL \limDO[6]~output_o\ : std_logic;
SIGNAL \limDO[7]~output_o\ : std_logic;
SIGNAL \limDO[8]~output_o\ : std_logic;
SIGNAL \limDO[9]~output_o\ : std_logic;
SIGNAL \flag1~output_o\ : std_logic;
SIGNAL \cont1[0]~output_o\ : std_logic;
SIGNAL \cont1[1]~output_o\ : std_logic;
SIGNAL \cont1[2]~output_o\ : std_logic;
SIGNAL \cont1[3]~output_o\ : std_logic;
SIGNAL \cont1[4]~output_o\ : std_logic;
SIGNAL \cont1[5]~output_o\ : std_logic;
SIGNAL \cont1[6]~output_o\ : std_logic;
SIGNAL \VSYNC~input_o\ : std_logic;
SIGNAL \VSYNC~inputclkctrl_outclk\ : std_logic;
SIGNAL \posUP[0]~12_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \push~input_o\ : std_logic;
SIGNAL \flag~q\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \P1~1_combout\ : std_logic;
SIGNAL \P1~2_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \posUP[0]~14_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3_combout\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add2~4\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9_combout\ : std_logic;
SIGNAL \Add2~11_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add2~17_combout\ : std_logic;
SIGNAL \Add2~16\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \cont[6]~0_combout\ : std_logic;
SIGNAL \P1~0_combout\ : std_logic;
SIGNAL \posUP[0]~33_combout\ : std_logic;
SIGNAL \posUP[0]~13\ : std_logic;
SIGNAL \posUP[1]~15_combout\ : std_logic;
SIGNAL \posUP[1]~16\ : std_logic;
SIGNAL \posUP[2]~17_combout\ : std_logic;
SIGNAL \posUP[2]~18\ : std_logic;
SIGNAL \posUP[3]~19_combout\ : std_logic;
SIGNAL \posUP[3]~20\ : std_logic;
SIGNAL \posUP[4]~21_combout\ : std_logic;
SIGNAL \posUP[4]~22\ : std_logic;
SIGNAL \posUP[5]~23_combout\ : std_logic;
SIGNAL \posUP[5]~24\ : std_logic;
SIGNAL \posUP[6]~25_combout\ : std_logic;
SIGNAL \posUP[6]~26\ : std_logic;
SIGNAL \posUP[7]~27_combout\ : std_logic;
SIGNAL \posUP[7]~28\ : std_logic;
SIGNAL \posUP[8]~29_combout\ : std_logic;
SIGNAL \posUP[8]~30\ : std_logic;
SIGNAL \posUP[9]~31_combout\ : std_logic;
SIGNAL \posDO[0]~10_combout\ : std_logic;
SIGNAL \posDO[0]~feeder_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \posDO[0]~11\ : std_logic;
SIGNAL \posDO[1]~12_combout\ : std_logic;
SIGNAL \posDO[1]~feeder_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3_combout\ : std_logic;
SIGNAL \Add4~5_combout\ : std_logic;
SIGNAL \posDO[1]~13\ : std_logic;
SIGNAL \posDO[2]~14_combout\ : std_logic;
SIGNAL \Add4~4\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \posDO[2]~15\ : std_logic;
SIGNAL \posDO[3]~16_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9_combout\ : std_logic;
SIGNAL \Add4~11_combout\ : std_logic;
SIGNAL \posDO[3]~17\ : std_logic;
SIGNAL \posDO[4]~18_combout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \posDO[4]~19\ : std_logic;
SIGNAL \posDO[5]~20_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~15_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add4~17_combout\ : std_logic;
SIGNAL \posDO[5]~21\ : std_logic;
SIGNAL \posDO[6]~22_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add4~16\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \posDO[6]~23\ : std_logic;
SIGNAL \posDO[7]~24_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~21_combout\ : std_logic;
SIGNAL \Add4~23_combout\ : std_logic;
SIGNAL \posDO[7]~25\ : std_logic;
SIGNAL \posDO[8]~26_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \posDO[8]~27\ : std_logic;
SIGNAL \posDO[9]~28_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~27_combout\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \Add4~29_combout\ : std_logic;
SIGNAL posUP : std_logic_vector(9 DOWNTO 0);
SIGNAL posDO : std_logic_vector(9 DOWNTO 0);
SIGNAL cont : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_Add3~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_push <= push;
ww_VSYNC <= VSYNC;
limUP <= ww_limUP;
limDO <= ww_limDO;
flag1 <= ww_flag1;
cont1 <= ww_cont1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\VSYNC~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \VSYNC~input_o\);
\ALT_INV_Add3~0_combout\ <= NOT \Add3~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y54_N30
\limUP[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posUP(0),
	devoe => ww_devoe,
	o => \limUP[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\limUP[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posUP(1),
	devoe => ww_devoe,
	o => \limUP[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\limUP[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posUP(2),
	devoe => ww_devoe,
	o => \limUP[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\limUP[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posUP(3),
	devoe => ww_devoe,
	o => \limUP[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\limUP[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posUP(4),
	devoe => ww_devoe,
	o => \limUP[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\limUP[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posUP(5),
	devoe => ww_devoe,
	o => \limUP[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\limUP[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posUP(6),
	devoe => ww_devoe,
	o => \limUP[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\limUP[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posUP(7),
	devoe => ww_devoe,
	o => \limUP[7]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\limUP[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posUP(8),
	devoe => ww_devoe,
	o => \limUP[8]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\limUP[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posUP(9),
	devoe => ww_devoe,
	o => \limUP[9]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\limDO[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posDO(0),
	devoe => ww_devoe,
	o => \limDO[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\limDO[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posDO(1),
	devoe => ww_devoe,
	o => \limDO[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\limDO[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posDO(2),
	devoe => ww_devoe,
	o => \limDO[2]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\limDO[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posDO(3),
	devoe => ww_devoe,
	o => \limDO[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\limDO[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posDO(4),
	devoe => ww_devoe,
	o => \limDO[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\limDO[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posDO(5),
	devoe => ww_devoe,
	o => \limDO[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\limDO[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posDO(6),
	devoe => ww_devoe,
	o => \limDO[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\limDO[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posDO(7),
	devoe => ww_devoe,
	o => \limDO[7]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\limDO[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posDO(8),
	devoe => ww_devoe,
	o => \limDO[8]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\limDO[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => posDO(9),
	devoe => ww_devoe,
	o => \limDO[9]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\flag1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flag~q\,
	devoe => ww_devoe,
	o => \flag1~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\cont1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cont(0),
	devoe => ww_devoe,
	o => \cont1[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\cont1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cont(1),
	devoe => ww_devoe,
	o => \cont1[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\cont1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cont(2),
	devoe => ww_devoe,
	o => \cont1[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\cont1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cont(3),
	devoe => ww_devoe,
	o => \cont1[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\cont1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cont(4),
	devoe => ww_devoe,
	o => \cont1[4]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\cont1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cont(5),
	devoe => ww_devoe,
	o => \cont1[5]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\cont1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cont(6),
	devoe => ww_devoe,
	o => \cont1[6]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\VSYNC~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VSYNC,
	o => \VSYNC~input_o\);

-- Location: CLKCTRL_G3
\VSYNC~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \VSYNC~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \VSYNC~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y51_N10
\posUP[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posUP[0]~12_combout\ = posUP(0) $ (VCC)
-- \posUP[0]~13\ = CARRY(posUP(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posUP(0),
	datad => VCC,
	combout => \posUP[0]~12_combout\,
	cout => \posUP[0]~13\);

-- Location: LCCOMB_X55_Y51_N8
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X54_Y54_N29
\push~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_push,
	o => \push~input_o\);

-- Location: FF_X54_Y51_N29
flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	asdata => \Add3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag~q\);

-- Location: LCCOMB_X54_Y51_N6
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = ((\flag~q\ & !\P1~0_combout\)) # (!\push~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~q\,
	datab => \push~input_o\,
	datad => \P1~0_combout\,
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X54_Y51_N10
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = cont(0) $ (VCC)
-- \Add2~1\ = CARRY(cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X54_Y51_N24
\P1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1~1_combout\ = (cont(1)) # ((cont(5)) # ((cont(0)) # (cont(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(1),
	datab => cont(5),
	datac => cont(0),
	datad => cont(4),
	combout => \P1~1_combout\);

-- Location: LCCOMB_X54_Y51_N2
\P1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1~2_combout\ = (cont(3)) # ((cont(2)) # ((cont(6)) # (\P1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(3),
	datab => cont(2),
	datac => cont(6),
	datad => \P1~1_combout\,
	combout => \P1~2_combout\);

-- Location: LCCOMB_X55_Y51_N0
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add2~0_combout\ & ((\Add3~0_combout\) # ((!\flag~q\ & \P1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add3~0_combout\,
	datac => \flag~q\,
	datad => \P1~2_combout\,
	combout => \Add2~2_combout\);

-- Location: LCCOMB_X55_Y51_N6
\posUP[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posUP[0]~14_combout\ = ((!\P1~0_combout\) # (!\flag~q\)) # (!\push~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \push~input_o\,
	datac => \flag~q\,
	datad => \P1~0_combout\,
	combout => \posUP[0]~14_combout\);

-- Location: FF_X54_Y51_N7
\cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	asdata => \Add2~2_combout\,
	sload => VCC,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(0));

-- Location: LCCOMB_X54_Y51_N12
\Add2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~3_combout\ = (\Add3~0_combout\ & ((cont(1) & (!\Add2~1\)) # (!cont(1) & ((\Add2~1\) # (GND))))) # (!\Add3~0_combout\ & ((cont(1) & (\Add2~1\ & VCC)) # (!cont(1) & (!\Add2~1\))))
-- \Add2~4\ = CARRY((\Add3~0_combout\ & ((!\Add2~1\) # (!cont(1)))) # (!\Add3~0_combout\ & (!cont(1) & !\Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => cont(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~3_combout\,
	cout => \Add2~4\);

-- Location: LCCOMB_X55_Y51_N4
\Add2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~5_combout\ = (!\posUP[0]~33_combout\ & \Add2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \posUP[0]~33_combout\,
	datad => \Add2~3_combout\,
	combout => \Add2~5_combout\);

-- Location: FF_X55_Y51_N5
\cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \Add2~5_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(1));

-- Location: LCCOMB_X54_Y51_N14
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = ((\Add3~0_combout\ $ (cont(2) $ (\Add2~4\)))) # (GND)
-- \Add2~7\ = CARRY((\Add3~0_combout\ & (cont(2) & !\Add2~4\)) # (!\Add3~0_combout\ & ((cont(2)) # (!\Add2~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => cont(2),
	datad => VCC,
	cin => \Add2~4\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X54_Y51_N4
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (!\posUP[0]~33_combout\ & \Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \posUP[0]~33_combout\,
	datac => \Add2~6_combout\,
	combout => \Add2~8_combout\);

-- Location: FF_X54_Y51_N5
\cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(2));

-- Location: LCCOMB_X54_Y51_N16
\Add2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~9_combout\ = (\Add3~0_combout\ & ((cont(3) & (!\Add2~7\)) # (!cont(3) & ((\Add2~7\) # (GND))))) # (!\Add3~0_combout\ & ((cont(3) & (\Add2~7\ & VCC)) # (!cont(3) & (!\Add2~7\))))
-- \Add2~10\ = CARRY((\Add3~0_combout\ & ((!\Add2~7\) # (!cont(3)))) # (!\Add3~0_combout\ & (!cont(3) & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => cont(3),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~9_combout\,
	cout => \Add2~10\);

-- Location: LCCOMB_X54_Y51_N30
\Add2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~11_combout\ = (!\posUP[0]~33_combout\ & \Add2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \posUP[0]~33_combout\,
	datad => \Add2~9_combout\,
	combout => \Add2~11_combout\);

-- Location: FF_X54_Y51_N31
\cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \Add2~11_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(3));

-- Location: LCCOMB_X54_Y51_N18
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\Add3~0_combout\ $ (cont(4) $ (\Add2~10\)))) # (GND)
-- \Add2~13\ = CARRY((\Add3~0_combout\ & (cont(4) & !\Add2~10\)) # (!\Add3~0_combout\ & ((cont(4)) # (!\Add2~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => cont(4),
	datad => VCC,
	cin => \Add2~10\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X54_Y51_N8
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (!\posUP[0]~33_combout\ & \Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \posUP[0]~33_combout\,
	datad => \Add2~12_combout\,
	combout => \Add2~14_combout\);

-- Location: FF_X54_Y51_N9
\cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \Add2~14_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(4));

-- Location: LCCOMB_X54_Y51_N20
\Add2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~15_combout\ = (\Add3~0_combout\ & ((cont(5) & (!\Add2~13\)) # (!cont(5) & ((\Add2~13\) # (GND))))) # (!\Add3~0_combout\ & ((cont(5) & (\Add2~13\ & VCC)) # (!cont(5) & (!\Add2~13\))))
-- \Add2~16\ = CARRY((\Add3~0_combout\ & ((!\Add2~13\) # (!cont(5)))) # (!\Add3~0_combout\ & (!cont(5) & !\Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => cont(5),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~15_combout\,
	cout => \Add2~16\);

-- Location: LCCOMB_X54_Y51_N0
\Add2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~17_combout\ = (!\posUP[0]~33_combout\ & \Add2~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \posUP[0]~33_combout\,
	datad => \Add2~15_combout\,
	combout => \Add2~17_combout\);

-- Location: FF_X54_Y51_N1
\cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \Add2~17_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(5));

-- Location: LCCOMB_X54_Y51_N22
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = cont(6) $ (\Add2~16\ $ (\Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(6),
	datad => \Add3~0_combout\,
	cin => \Add2~16\,
	combout => \Add2~18_combout\);

-- Location: LCCOMB_X54_Y51_N26
\cont[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cont[6]~0_combout\ = (\posUP[0]~14_combout\ & (\Add2~18_combout\ & (!\posUP[0]~33_combout\))) # (!\posUP[0]~14_combout\ & (((cont(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \posUP[0]~33_combout\,
	datac => cont(6),
	datad => \posUP[0]~14_combout\,
	combout => \cont[6]~0_combout\);

-- Location: FF_X54_Y51_N27
\cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \cont[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(6));

-- Location: LCCOMB_X54_Y51_N28
\P1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1~0_combout\ = (cont(6) & ((cont(4)) # (cont(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(6),
	datab => cont(4),
	datad => cont(5),
	combout => \P1~0_combout\);

-- Location: LCCOMB_X55_Y51_N30
\posUP[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posUP[0]~33_combout\ = (\push~input_o\ & ((\flag~q\ & (\P1~0_combout\)) # (!\flag~q\ & ((!\P1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \push~input_o\,
	datab => \P1~0_combout\,
	datac => \flag~q\,
	datad => \P1~2_combout\,
	combout => \posUP[0]~33_combout\);

-- Location: FF_X55_Y51_N11
\posUP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posUP[0]~12_combout\,
	asdata => \~GND~combout\,
	sload => \posUP[0]~33_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posUP(0));

-- Location: LCCOMB_X55_Y51_N12
\posUP[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posUP[1]~15_combout\ = (posUP(1) & ((\Add3~0_combout\ & (\posUP[0]~13\ & VCC)) # (!\Add3~0_combout\ & (!\posUP[0]~13\)))) # (!posUP(1) & ((\Add3~0_combout\ & (!\posUP[0]~13\)) # (!\Add3~0_combout\ & ((\posUP[0]~13\) # (GND)))))
-- \posUP[1]~16\ = CARRY((posUP(1) & (!\Add3~0_combout\ & !\posUP[0]~13\)) # (!posUP(1) & ((!\posUP[0]~13\) # (!\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posUP(1),
	datab => \Add3~0_combout\,
	datad => VCC,
	cin => \posUP[0]~13\,
	combout => \posUP[1]~15_combout\,
	cout => \posUP[1]~16\);

-- Location: FF_X55_Y51_N13
\posUP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posUP[1]~15_combout\,
	asdata => \~GND~combout\,
	sload => \posUP[0]~33_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posUP(1));

-- Location: LCCOMB_X55_Y51_N14
\posUP[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posUP[2]~17_combout\ = ((posUP(2) $ (\Add3~0_combout\ $ (!\posUP[1]~16\)))) # (GND)
-- \posUP[2]~18\ = CARRY((posUP(2) & ((\Add3~0_combout\) # (!\posUP[1]~16\))) # (!posUP(2) & (\Add3~0_combout\ & !\posUP[1]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posUP(2),
	datab => \Add3~0_combout\,
	datad => VCC,
	cin => \posUP[1]~16\,
	combout => \posUP[2]~17_combout\,
	cout => \posUP[2]~18\);

-- Location: FF_X55_Y51_N15
\posUP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posUP[2]~17_combout\,
	asdata => \~GND~combout\,
	sload => \posUP[0]~33_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posUP(2));

-- Location: LCCOMB_X55_Y51_N16
\posUP[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posUP[3]~19_combout\ = (posUP(3) & ((\Add3~0_combout\ & (\posUP[2]~18\ & VCC)) # (!\Add3~0_combout\ & (!\posUP[2]~18\)))) # (!posUP(3) & ((\Add3~0_combout\ & (!\posUP[2]~18\)) # (!\Add3~0_combout\ & ((\posUP[2]~18\) # (GND)))))
-- \posUP[3]~20\ = CARRY((posUP(3) & (!\Add3~0_combout\ & !\posUP[2]~18\)) # (!posUP(3) & ((!\posUP[2]~18\) # (!\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posUP(3),
	datab => \Add3~0_combout\,
	datad => VCC,
	cin => \posUP[2]~18\,
	combout => \posUP[3]~19_combout\,
	cout => \posUP[3]~20\);

-- Location: FF_X55_Y51_N17
\posUP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posUP[3]~19_combout\,
	asdata => VCC,
	sload => \posUP[0]~33_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posUP(3));

-- Location: LCCOMB_X55_Y51_N18
\posUP[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posUP[4]~21_combout\ = ((posUP(4) $ (\Add3~0_combout\ $ (!\posUP[3]~20\)))) # (GND)
-- \posUP[4]~22\ = CARRY((posUP(4) & ((\Add3~0_combout\) # (!\posUP[3]~20\))) # (!posUP(4) & (\Add3~0_combout\ & !\posUP[3]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posUP(4),
	datab => \Add3~0_combout\,
	datad => VCC,
	cin => \posUP[3]~20\,
	combout => \posUP[4]~21_combout\,
	cout => \posUP[4]~22\);

-- Location: FF_X55_Y51_N19
\posUP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posUP[4]~21_combout\,
	asdata => \~GND~combout\,
	sload => \posUP[0]~33_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posUP(4));

-- Location: LCCOMB_X55_Y51_N20
\posUP[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posUP[5]~23_combout\ = (posUP(5) & ((\Add3~0_combout\ & (\posUP[4]~22\ & VCC)) # (!\Add3~0_combout\ & (!\posUP[4]~22\)))) # (!posUP(5) & ((\Add3~0_combout\ & (!\posUP[4]~22\)) # (!\Add3~0_combout\ & ((\posUP[4]~22\) # (GND)))))
-- \posUP[5]~24\ = CARRY((posUP(5) & (!\Add3~0_combout\ & !\posUP[4]~22\)) # (!posUP(5) & ((!\posUP[4]~22\) # (!\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posUP(5),
	datab => \Add3~0_combout\,
	datad => VCC,
	cin => \posUP[4]~22\,
	combout => \posUP[5]~23_combout\,
	cout => \posUP[5]~24\);

-- Location: FF_X55_Y51_N21
\posUP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posUP[5]~23_combout\,
	asdata => VCC,
	sload => \posUP[0]~33_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posUP(5));

-- Location: LCCOMB_X55_Y51_N22
\posUP[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posUP[6]~25_combout\ = ((posUP(6) $ (\Add3~0_combout\ $ (!\posUP[5]~24\)))) # (GND)
-- \posUP[6]~26\ = CARRY((posUP(6) & ((\Add3~0_combout\) # (!\posUP[5]~24\))) # (!posUP(6) & (\Add3~0_combout\ & !\posUP[5]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posUP(6),
	datab => \Add3~0_combout\,
	datad => VCC,
	cin => \posUP[5]~24\,
	combout => \posUP[6]~25_combout\,
	cout => \posUP[6]~26\);

-- Location: FF_X55_Y51_N23
\posUP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posUP[6]~25_combout\,
	asdata => \~GND~combout\,
	sload => \posUP[0]~33_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posUP(6));

-- Location: LCCOMB_X55_Y51_N24
\posUP[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posUP[7]~27_combout\ = (posUP(7) & ((\Add3~0_combout\ & (\posUP[6]~26\ & VCC)) # (!\Add3~0_combout\ & (!\posUP[6]~26\)))) # (!posUP(7) & ((\Add3~0_combout\ & (!\posUP[6]~26\)) # (!\Add3~0_combout\ & ((\posUP[6]~26\) # (GND)))))
-- \posUP[7]~28\ = CARRY((posUP(7) & (!\Add3~0_combout\ & !\posUP[6]~26\)) # (!posUP(7) & ((!\posUP[6]~26\) # (!\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posUP(7),
	datab => \Add3~0_combout\,
	datad => VCC,
	cin => \posUP[6]~26\,
	combout => \posUP[7]~27_combout\,
	cout => \posUP[7]~28\);

-- Location: FF_X55_Y51_N25
\posUP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posUP[7]~27_combout\,
	asdata => VCC,
	sload => \posUP[0]~33_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posUP(7));

-- Location: LCCOMB_X55_Y51_N26
\posUP[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posUP[8]~29_combout\ = ((posUP(8) $ (\Add3~0_combout\ $ (!\posUP[7]~28\)))) # (GND)
-- \posUP[8]~30\ = CARRY((posUP(8) & ((\Add3~0_combout\) # (!\posUP[7]~28\))) # (!posUP(8) & (\Add3~0_combout\ & !\posUP[7]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posUP(8),
	datab => \Add3~0_combout\,
	datad => VCC,
	cin => \posUP[7]~28\,
	combout => \posUP[8]~29_combout\,
	cout => \posUP[8]~30\);

-- Location: FF_X55_Y51_N27
\posUP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posUP[8]~29_combout\,
	asdata => VCC,
	sload => \posUP[0]~33_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posUP(8));

-- Location: LCCOMB_X55_Y51_N28
\posUP[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posUP[9]~31_combout\ = \Add3~0_combout\ $ (\posUP[8]~30\ $ (posUP(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~0_combout\,
	datad => posUP(9),
	cin => \posUP[8]~30\,
	combout => \posUP[9]~31_combout\);

-- Location: FF_X55_Y51_N29
\posUP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posUP[9]~31_combout\,
	asdata => \~GND~combout\,
	sload => \posUP[0]~33_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posUP(9));

-- Location: LCCOMB_X57_Y51_N0
\posDO[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posDO[0]~10_combout\ = posDO(0) $ (VCC)
-- \posDO[0]~11\ = CARRY(posDO(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posDO(0),
	datad => VCC,
	combout => \posDO[0]~10_combout\,
	cout => \posDO[0]~11\);

-- Location: LCCOMB_X58_Y51_N28
\posDO[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posDO[0]~feeder_combout\ = \posDO[0]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \posDO[0]~10_combout\,
	combout => \posDO[0]~feeder_combout\);

-- Location: LCCOMB_X58_Y51_N6
\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = posDO(0) $ (VCC)
-- \Add4~1\ = CARRY(posDO(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posDO(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X58_Y51_N4
\Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\flag~q\ & (((posUP(0))))) # (!\flag~q\ & ((\P1~2_combout\ & (\Add4~0_combout\)) # (!\P1~2_combout\ & ((posUP(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => posUP(0),
	datac => \flag~q\,
	datad => \P1~2_combout\,
	combout => \Add4~2_combout\);

-- Location: FF_X58_Y51_N29
\posDO[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posDO[0]~feeder_combout\,
	asdata => \Add4~2_combout\,
	sload => \ALT_INV_Add3~0_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posDO(0));

-- Location: LCCOMB_X57_Y51_N2
\posDO[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posDO[1]~12_combout\ = (posDO(1) & (\posDO[0]~11\ & VCC)) # (!posDO(1) & (!\posDO[0]~11\))
-- \posDO[1]~13\ = CARRY((!posDO(1) & !\posDO[0]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posDO(1),
	datad => VCC,
	cin => \posDO[0]~11\,
	combout => \posDO[1]~12_combout\,
	cout => \posDO[1]~13\);

-- Location: LCCOMB_X58_Y51_N26
\posDO[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posDO[1]~feeder_combout\ = \posDO[1]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \posDO[1]~12_combout\,
	combout => \posDO[1]~feeder_combout\);

-- Location: LCCOMB_X56_Y51_N4
\Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = posUP(1) $ (VCC)
-- \Add6~1\ = CARRY(posUP(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posUP(1),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X58_Y51_N8
\Add4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~3_combout\ = (posDO(1) & (!\Add4~1\)) # (!posDO(1) & ((\Add4~1\) # (GND)))
-- \Add4~4\ = CARRY((!\Add4~1\) # (!posDO(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posDO(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~3_combout\,
	cout => \Add4~4\);

-- Location: LCCOMB_X58_Y51_N30
\Add4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~5_combout\ = (\flag~q\ & (\Add6~0_combout\)) # (!\flag~q\ & ((\P1~2_combout\ & ((\Add4~3_combout\))) # (!\P1~2_combout\ & (\Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~q\,
	datab => \Add6~0_combout\,
	datac => \Add4~3_combout\,
	datad => \P1~2_combout\,
	combout => \Add4~5_combout\);

-- Location: FF_X58_Y51_N27
\posDO[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posDO[1]~feeder_combout\,
	asdata => \Add4~5_combout\,
	sload => \ALT_INV_Add3~0_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posDO(1));

-- Location: LCCOMB_X57_Y51_N4
\posDO[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posDO[2]~14_combout\ = (posDO(2) & ((GND) # (!\posDO[1]~13\))) # (!posDO(2) & (\posDO[1]~13\ $ (GND)))
-- \posDO[2]~15\ = CARRY((posDO(2)) # (!\posDO[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posDO(2),
	datad => VCC,
	cin => \posDO[1]~13\,
	combout => \posDO[2]~14_combout\,
	cout => \posDO[2]~15\);

-- Location: LCCOMB_X58_Y51_N10
\Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (posDO(2) & (\Add4~4\ $ (GND))) # (!posDO(2) & (!\Add4~4\ & VCC))
-- \Add4~7\ = CARRY((posDO(2) & !\Add4~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posDO(2),
	datad => VCC,
	cin => \Add4~4\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X56_Y51_N6
\Add6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (posUP(2) & (!\Add6~1\)) # (!posUP(2) & ((\Add6~1\) # (GND)))
-- \Add6~3\ = CARRY((!\Add6~1\) # (!posUP(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posUP(2),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X56_Y51_N0
\Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\flag~q\ & (((\Add6~2_combout\)))) # (!\flag~q\ & ((\P1~2_combout\ & (\Add4~6_combout\)) # (!\P1~2_combout\ & ((\Add6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~q\,
	datab => \P1~2_combout\,
	datac => \Add4~6_combout\,
	datad => \Add6~2_combout\,
	combout => \Add4~8_combout\);

-- Location: FF_X57_Y51_N5
\posDO[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posDO[2]~14_combout\,
	asdata => \Add4~8_combout\,
	sload => \ALT_INV_Add3~0_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posDO(2));

-- Location: LCCOMB_X57_Y51_N6
\posDO[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posDO[3]~16_combout\ = (posDO(3) & (\posDO[2]~15\ & VCC)) # (!posDO(3) & (!\posDO[2]~15\))
-- \posDO[3]~17\ = CARRY((!posDO(3) & !\posDO[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posDO(3),
	datad => VCC,
	cin => \posDO[2]~15\,
	combout => \posDO[3]~16_combout\,
	cout => \posDO[3]~17\);

-- Location: LCCOMB_X56_Y51_N8
\Add6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (posUP(3) & (\Add6~3\ $ (GND))) # (!posUP(3) & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((posUP(3) & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posUP(3),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X58_Y51_N12
\Add4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~9_combout\ = (posDO(3) & (!\Add4~7\)) # (!posDO(3) & ((\Add4~7\) # (GND)))
-- \Add4~10\ = CARRY((!\Add4~7\) # (!posDO(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posDO(3),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~9_combout\,
	cout => \Add4~10\);

-- Location: LCCOMB_X56_Y51_N26
\Add4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~11_combout\ = (\flag~q\ & (((\Add6~4_combout\)))) # (!\flag~q\ & ((\P1~2_combout\ & ((\Add4~9_combout\))) # (!\P1~2_combout\ & (\Add6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~q\,
	datab => \P1~2_combout\,
	datac => \Add6~4_combout\,
	datad => \Add4~9_combout\,
	combout => \Add4~11_combout\);

-- Location: FF_X57_Y51_N7
\posDO[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posDO[3]~16_combout\,
	asdata => \Add4~11_combout\,
	sload => \ALT_INV_Add3~0_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posDO(3));

-- Location: LCCOMB_X57_Y51_N8
\posDO[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posDO[4]~18_combout\ = (posDO(4) & ((GND) # (!\posDO[3]~17\))) # (!posDO(4) & (\posDO[3]~17\ $ (GND)))
-- \posDO[4]~19\ = CARRY((posDO(4)) # (!\posDO[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posDO(4),
	datad => VCC,
	cin => \posDO[3]~17\,
	combout => \posDO[4]~18_combout\,
	cout => \posDO[4]~19\);

-- Location: LCCOMB_X58_Y51_N14
\Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (posDO(4) & (\Add4~10\ $ (GND))) # (!posDO(4) & (!\Add4~10\ & VCC))
-- \Add4~13\ = CARRY((posDO(4) & !\Add4~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posDO(4),
	datad => VCC,
	cin => \Add4~10\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X56_Y51_N10
\Add6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (posUP(4) & (\Add6~5\ & VCC)) # (!posUP(4) & (!\Add6~5\))
-- \Add6~7\ = CARRY((!posUP(4) & !\Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posUP(4),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X57_Y51_N24
\Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\flag~q\ & (((\Add6~6_combout\)))) # (!\flag~q\ & ((\P1~2_combout\ & (\Add4~12_combout\)) # (!\P1~2_combout\ & ((\Add6~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~q\,
	datab => \P1~2_combout\,
	datac => \Add4~12_combout\,
	datad => \Add6~6_combout\,
	combout => \Add4~14_combout\);

-- Location: FF_X57_Y51_N9
\posDO[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posDO[4]~18_combout\,
	asdata => \Add4~14_combout\,
	sload => \ALT_INV_Add3~0_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posDO(4));

-- Location: LCCOMB_X57_Y51_N10
\posDO[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posDO[5]~20_combout\ = (posDO(5) & (\posDO[4]~19\ & VCC)) # (!posDO(5) & (!\posDO[4]~19\))
-- \posDO[5]~21\ = CARRY((!posDO(5) & !\posDO[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posDO(5),
	datad => VCC,
	cin => \posDO[4]~19\,
	combout => \posDO[5]~20_combout\,
	cout => \posDO[5]~21\);

-- Location: LCCOMB_X58_Y51_N16
\Add4~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~15_combout\ = (posDO(5) & (!\Add4~13\)) # (!posDO(5) & ((\Add4~13\) # (GND)))
-- \Add4~16\ = CARRY((!\Add4~13\) # (!posDO(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posDO(5),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~15_combout\,
	cout => \Add4~16\);

-- Location: LCCOMB_X56_Y51_N12
\Add6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (posUP(5) & ((GND) # (!\Add6~7\))) # (!posUP(5) & (\Add6~7\ $ (GND)))
-- \Add6~9\ = CARRY((posUP(5)) # (!\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posUP(5),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X57_Y51_N22
\Add4~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~17_combout\ = (\flag~q\ & (((\Add6~8_combout\)))) # (!\flag~q\ & ((\P1~2_combout\ & (\Add4~15_combout\)) # (!\P1~2_combout\ & ((\Add6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~q\,
	datab => \Add4~15_combout\,
	datac => \P1~2_combout\,
	datad => \Add6~8_combout\,
	combout => \Add4~17_combout\);

-- Location: FF_X57_Y51_N11
\posDO[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posDO[5]~20_combout\,
	asdata => \Add4~17_combout\,
	sload => \ALT_INV_Add3~0_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posDO(5));

-- Location: LCCOMB_X57_Y51_N12
\posDO[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posDO[6]~22_combout\ = (posDO(6) & ((GND) # (!\posDO[5]~21\))) # (!posDO(6) & (\posDO[5]~21\ $ (GND)))
-- \posDO[6]~23\ = CARRY((posDO(6)) # (!\posDO[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posDO(6),
	datad => VCC,
	cin => \posDO[5]~21\,
	combout => \posDO[6]~22_combout\,
	cout => \posDO[6]~23\);

-- Location: LCCOMB_X56_Y51_N14
\Add6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (posUP(6) & (!\Add6~9\)) # (!posUP(6) & ((\Add6~9\) # (GND)))
-- \Add6~11\ = CARRY((!\Add6~9\) # (!posUP(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posUP(6),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X58_Y51_N18
\Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (posDO(6) & (\Add4~16\ $ (GND))) # (!posDO(6) & (!\Add4~16\ & VCC))
-- \Add4~19\ = CARRY((posDO(6) & !\Add4~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posDO(6),
	datad => VCC,
	cin => \Add4~16\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X57_Y51_N20
\Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (\flag~q\ & (\Add6~10_combout\)) # (!\flag~q\ & ((\P1~2_combout\ & ((\Add4~18_combout\))) # (!\P1~2_combout\ & (\Add6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datab => \flag~q\,
	datac => \P1~2_combout\,
	datad => \Add4~18_combout\,
	combout => \Add4~20_combout\);

-- Location: FF_X57_Y51_N13
\posDO[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posDO[6]~22_combout\,
	asdata => \Add4~20_combout\,
	sload => \ALT_INV_Add3~0_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posDO(6));

-- Location: LCCOMB_X57_Y51_N14
\posDO[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posDO[7]~24_combout\ = (posDO(7) & (\posDO[6]~23\ & VCC)) # (!posDO(7) & (!\posDO[6]~23\))
-- \posDO[7]~25\ = CARRY((!posDO(7) & !\posDO[6]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posDO(7),
	datad => VCC,
	cin => \posDO[6]~23\,
	combout => \posDO[7]~24_combout\,
	cout => \posDO[7]~25\);

-- Location: LCCOMB_X56_Y51_N16
\Add6~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (posUP(7) & (\Add6~11\ $ (GND))) # (!posUP(7) & (!\Add6~11\ & VCC))
-- \Add6~13\ = CARRY((posUP(7) & !\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posUP(7),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X58_Y51_N20
\Add4~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~21_combout\ = (posDO(7) & (!\Add4~19\)) # (!posDO(7) & ((\Add4~19\) # (GND)))
-- \Add4~22\ = CARRY((!\Add4~19\) # (!posDO(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posDO(7),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~21_combout\,
	cout => \Add4~22\);

-- Location: LCCOMB_X57_Y51_N30
\Add4~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~23_combout\ = (\flag~q\ & (((\Add6~12_combout\)))) # (!\flag~q\ & ((\P1~2_combout\ & ((\Add4~21_combout\))) # (!\P1~2_combout\ & (\Add6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~q\,
	datab => \P1~2_combout\,
	datac => \Add6~12_combout\,
	datad => \Add4~21_combout\,
	combout => \Add4~23_combout\);

-- Location: FF_X57_Y51_N15
\posDO[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posDO[7]~24_combout\,
	asdata => \Add4~23_combout\,
	sload => \ALT_INV_Add3~0_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posDO(7));

-- Location: LCCOMB_X57_Y51_N16
\posDO[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posDO[8]~26_combout\ = (posDO(8) & ((GND) # (!\posDO[7]~25\))) # (!posDO(8) & (\posDO[7]~25\ $ (GND)))
-- \posDO[8]~27\ = CARRY((posDO(8)) # (!\posDO[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posDO(8),
	datad => VCC,
	cin => \posDO[7]~25\,
	combout => \posDO[8]~26_combout\,
	cout => \posDO[8]~27\);

-- Location: LCCOMB_X56_Y51_N18
\Add6~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (posUP(8) & (!\Add6~13\)) # (!posUP(8) & ((\Add6~13\) # (GND)))
-- \Add6~15\ = CARRY((!\Add6~13\) # (!posUP(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posUP(8),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X58_Y51_N22
\Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (posDO(8) & (\Add4~22\ $ (GND))) # (!posDO(8) & (!\Add4~22\ & VCC))
-- \Add4~25\ = CARRY((posDO(8) & !\Add4~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posDO(8),
	datad => VCC,
	cin => \Add4~22\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X57_Y51_N28
\Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (\flag~q\ & (\Add6~14_combout\)) # (!\flag~q\ & ((\P1~2_combout\ & ((\Add4~24_combout\))) # (!\P1~2_combout\ & (\Add6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~q\,
	datab => \Add6~14_combout\,
	datac => \P1~2_combout\,
	datad => \Add4~24_combout\,
	combout => \Add4~26_combout\);

-- Location: FF_X57_Y51_N17
\posDO[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posDO[8]~26_combout\,
	asdata => \Add4~26_combout\,
	sload => \ALT_INV_Add3~0_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posDO(8));

-- Location: LCCOMB_X57_Y51_N18
\posDO[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \posDO[9]~28_combout\ = \posDO[8]~27\ $ (!posDO(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => posDO(9),
	cin => \posDO[8]~27\,
	combout => \posDO[9]~28_combout\);

-- Location: LCCOMB_X58_Y51_N24
\Add4~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~27_combout\ = \Add4~25\ $ (posDO(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => posDO(9),
	cin => \Add4~25\,
	combout => \Add4~27_combout\);

-- Location: LCCOMB_X56_Y51_N20
\Add6~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = \Add6~15\ $ (!posUP(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => posUP(9),
	cin => \Add6~15\,
	combout => \Add6~16_combout\);

-- Location: LCCOMB_X57_Y51_N26
\Add4~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~29_combout\ = (\flag~q\ & (((\Add6~16_combout\)))) # (!\flag~q\ & ((\P1~2_combout\ & (\Add4~27_combout\)) # (!\P1~2_combout\ & ((\Add6~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~q\,
	datab => \Add4~27_combout\,
	datac => \P1~2_combout\,
	datad => \Add6~16_combout\,
	combout => \Add4~29_combout\);

-- Location: FF_X57_Y51_N19
\posDO[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VSYNC~inputclkctrl_outclk\,
	d => \posDO[9]~28_combout\,
	asdata => \Add4~29_combout\,
	sload => \ALT_INV_Add3~0_combout\,
	ena => \posUP[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posDO(9));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_limUP(0) <= \limUP[0]~output_o\;

ww_limUP(1) <= \limUP[1]~output_o\;

ww_limUP(2) <= \limUP[2]~output_o\;

ww_limUP(3) <= \limUP[3]~output_o\;

ww_limUP(4) <= \limUP[4]~output_o\;

ww_limUP(5) <= \limUP[5]~output_o\;

ww_limUP(6) <= \limUP[6]~output_o\;

ww_limUP(7) <= \limUP[7]~output_o\;

ww_limUP(8) <= \limUP[8]~output_o\;

ww_limUP(9) <= \limUP[9]~output_o\;

ww_limDO(0) <= \limDO[0]~output_o\;

ww_limDO(1) <= \limDO[1]~output_o\;

ww_limDO(2) <= \limDO[2]~output_o\;

ww_limDO(3) <= \limDO[3]~output_o\;

ww_limDO(4) <= \limDO[4]~output_o\;

ww_limDO(5) <= \limDO[5]~output_o\;

ww_limDO(6) <= \limDO[6]~output_o\;

ww_limDO(7) <= \limDO[7]~output_o\;

ww_limDO(8) <= \limDO[8]~output_o\;

ww_limDO(9) <= \limDO[9]~output_o\;

ww_flag1 <= \flag1~output_o\;

ww_cont1(0) <= \cont1[0]~output_o\;

ww_cont1(1) <= \cont1[1]~output_o\;

ww_cont1(2) <= \cont1[2]~output_o\;

ww_cont1(3) <= \cont1[3]~output_o\;

ww_cont1(4) <= \cont1[4]~output_o\;

ww_cont1(5) <= \cont1[5]~output_o\;

ww_cont1(6) <= \cont1[6]~output_o\;
END structure;


