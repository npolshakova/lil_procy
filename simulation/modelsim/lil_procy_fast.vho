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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "04/25/2019 19:33:02"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lil_procy IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	CLOCK_50 : IN std_logic
	);
END lil_procy;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA


ARCHITECTURE structure OF lil_procy IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst16|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst16|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAIN_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAIN_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAIN_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAIN_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst16|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0~portadataout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a8\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a7\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a6\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a5\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a4\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a3\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a2\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a1\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a8~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a7~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a6~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a5~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a4~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a3~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a2~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a1~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a17\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a16\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a15\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a14\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a13\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a12\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a11\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a10\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a9\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a17~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a16~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a15~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a14~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a13~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a12~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a11~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a10~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a9~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32~portadataout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a40\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a39\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a38\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a37\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a36\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a35\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a34\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a33\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a40~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a39~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a38~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a37~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a36~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a35~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a34~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a33~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a49\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a48\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a47\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a46\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a45\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a44\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a43\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a42\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a41\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a49~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a48~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a47~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a46~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a45~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a44~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a43~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a42~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a41~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~0_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~1\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~0_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~3\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~2_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~5\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~4_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~7\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~6_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~8_combout\ : std_logic;
SIGNAL \inst16|altpll_component|_clk0\ : std_logic;
SIGNAL \inst16|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \inst16|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~12_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~15\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~16_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst6|regs[30][1]~regout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst6|regs[30][2]~regout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst6|regs[30][3]~regout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst6|regs[30][4]~regout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst6|regs[30][5]~regout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst6|regs[30][6]~regout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~2_combout\ : std_logic;
SIGNAL \inst5|pc[3]~30_cout\ : std_logic;
SIGNAL \inst5|pc[3]~32\ : std_logic;
SIGNAL \inst5|pc[3]~31_combout\ : std_logic;
SIGNAL \inst5|pc[4]~34\ : std_logic;
SIGNAL \inst5|pc[4]~33_combout\ : std_logic;
SIGNAL \inst5|pc[5]~36\ : std_logic;
SIGNAL \inst5|pc[5]~35_combout\ : std_logic;
SIGNAL \inst5|pc[6]~38\ : std_logic;
SIGNAL \inst5|pc[6]~37_combout\ : std_logic;
SIGNAL \inst6|regs[30][1]~32\ : std_logic;
SIGNAL \inst6|regs[30][1]~31_combout\ : std_logic;
SIGNAL \inst6|regs[30][2]~34\ : std_logic;
SIGNAL \inst6|regs[30][2]~33_combout\ : std_logic;
SIGNAL \inst6|regs[30][3]~36\ : std_logic;
SIGNAL \inst6|regs[30][3]~35_combout\ : std_logic;
SIGNAL \inst6|regs[30][4]~38\ : std_logic;
SIGNAL \inst6|regs[30][4]~37_combout\ : std_logic;
SIGNAL \inst6|regs[30][5]~40\ : std_logic;
SIGNAL \inst6|regs[30][5]~39_combout\ : std_logic;
SIGNAL \inst6|regs[30][6]~42\ : std_logic;
SIGNAL \inst6|regs[30][6]~41_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]~3_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]~4_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]~5_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]~6_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]~7_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[8]~8_combout\ : std_logic;
SIGNAL \inst6|regs[30][7]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[9]~9_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst6|regs[30][7]~44\ : std_logic;
SIGNAL \inst6|regs[30][7]~43_combout\ : std_logic;
SIGNAL \inst6|regs[30][8]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[10]~10_combout\ : std_logic;
SIGNAL \inst5|pc[7]~41\ : std_logic;
SIGNAL \inst5|pc[7]~40_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst6|regs[30][8]~46\ : std_logic;
SIGNAL \inst6|regs[30][8]~45_combout\ : std_logic;
SIGNAL \inst6|regs[30][9]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[11]~11_combout\ : std_logic;
SIGNAL \inst5|pc[8]~43\ : std_logic;
SIGNAL \inst5|pc[8]~42_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst6|regs[30][9]~48\ : std_logic;
SIGNAL \inst6|regs[30][9]~47_combout\ : std_logic;
SIGNAL \inst6|regs[30][10]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[12]~12_combout\ : std_logic;
SIGNAL \inst5|pc[9]~45\ : std_logic;
SIGNAL \inst5|pc[9]~44_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst6|regs[30][10]~50\ : std_logic;
SIGNAL \inst6|regs[30][10]~49_combout\ : std_logic;
SIGNAL \inst6|regs[30][11]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[13]~13_combout\ : std_logic;
SIGNAL \inst5|pc[10]~47\ : std_logic;
SIGNAL \inst5|pc[10]~46_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst6|regs[30][11]~52\ : std_logic;
SIGNAL \inst6|regs[30][11]~51_combout\ : std_logic;
SIGNAL \inst6|regs[30][12]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[14]~14_combout\ : std_logic;
SIGNAL \inst5|pc[11]~49\ : std_logic;
SIGNAL \inst5|pc[11]~48_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst6|regs[30][12]~54\ : std_logic;
SIGNAL \inst6|regs[30][12]~53_combout\ : std_logic;
SIGNAL \inst6|regs[30][13]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[15]~15_combout\ : std_logic;
SIGNAL \inst5|pc[12]~51\ : std_logic;
SIGNAL \inst5|pc[12]~50_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst6|regs[30][13]~56\ : std_logic;
SIGNAL \inst6|regs[30][13]~55_combout\ : std_logic;
SIGNAL \inst6|regs[30][14]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[16]~16_combout\ : std_logic;
SIGNAL \inst5|pc[13]~53\ : std_logic;
SIGNAL \inst5|pc[13]~52_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst6|regs[30][14]~58\ : std_logic;
SIGNAL \inst6|regs[30][14]~57_combout\ : std_logic;
SIGNAL \inst6|regs[30][15]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[17]~17_combout\ : std_logic;
SIGNAL \inst5|pc[14]~55\ : std_logic;
SIGNAL \inst5|pc[14]~54_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst6|regs[30][15]~60\ : std_logic;
SIGNAL \inst6|regs[30][15]~59_combout\ : std_logic;
SIGNAL \inst6|regs[30][16]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18~portadataout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a26\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a25\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a24\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a23\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a22\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a21\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a20\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a19\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a26~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a25~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a24~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a23~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a22~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a21~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a20~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a19~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a31\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a30\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a29\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a28\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a27\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a31~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a30~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a29~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a28~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a27~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50~portadataout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a58\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a57\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a56\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a55\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a54\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a53\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a52\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a51\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a58~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a57~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a56~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a55~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a54~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a53~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a52~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a51~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a63\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a62\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a61\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a60\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a59\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a63~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a62~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a61~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a60~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a59~PORTBDATAOUT0\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[18]~18_combout\ : std_logic;
SIGNAL \inst5|pc[15]~57\ : std_logic;
SIGNAL \inst5|pc[15]~56_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~33\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst6|regs[30][16]~62\ : std_logic;
SIGNAL \inst6|regs[30][16]~61_combout\ : std_logic;
SIGNAL \inst6|regs[30][17]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[19]~19_combout\ : std_logic;
SIGNAL \inst5|pc[16]~59\ : std_logic;
SIGNAL \inst5|pc[16]~58_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~35\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst6|regs[30][17]~64\ : std_logic;
SIGNAL \inst6|regs[30][17]~63_combout\ : std_logic;
SIGNAL \inst6|regs[30][18]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[20]~20_combout\ : std_logic;
SIGNAL \inst5|pc[17]~61\ : std_logic;
SIGNAL \inst5|pc[17]~60_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~37\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \inst6|regs[30][18]~66\ : std_logic;
SIGNAL \inst6|regs[30][18]~65_combout\ : std_logic;
SIGNAL \inst6|regs[30][19]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[21]~21_combout\ : std_logic;
SIGNAL \inst5|pc[18]~63\ : std_logic;
SIGNAL \inst5|pc[18]~62_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~39\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \inst6|regs[30][19]~68\ : std_logic;
SIGNAL \inst6|regs[30][19]~67_combout\ : std_logic;
SIGNAL \inst6|regs[30][20]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[22]~22_combout\ : std_logic;
SIGNAL \inst5|pc[19]~65\ : std_logic;
SIGNAL \inst5|pc[19]~64_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~41\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \inst6|regs[30][20]~70\ : std_logic;
SIGNAL \inst6|regs[30][20]~69_combout\ : std_logic;
SIGNAL \inst6|regs[30][21]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[23]~23_combout\ : std_logic;
SIGNAL \inst5|pc[20]~67\ : std_logic;
SIGNAL \inst5|pc[20]~66_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~43\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \inst6|regs[30][21]~72\ : std_logic;
SIGNAL \inst6|regs[30][21]~71_combout\ : std_logic;
SIGNAL \inst6|regs[30][22]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[24]~24_combout\ : std_logic;
SIGNAL \inst5|pc[21]~69\ : std_logic;
SIGNAL \inst5|pc[21]~68_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~45\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \inst6|regs[30][22]~74\ : std_logic;
SIGNAL \inst6|regs[30][22]~73_combout\ : std_logic;
SIGNAL \inst6|regs[30][23]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[25]~25_combout\ : std_logic;
SIGNAL \inst5|pc[22]~71\ : std_logic;
SIGNAL \inst5|pc[22]~70_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~47\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~46_combout\ : std_logic;
SIGNAL \inst6|regs[30][23]~76\ : std_logic;
SIGNAL \inst6|regs[30][23]~75_combout\ : std_logic;
SIGNAL \inst6|regs[30][24]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[26]~26_combout\ : std_logic;
SIGNAL \inst5|pc[23]~73\ : std_logic;
SIGNAL \inst5|pc[23]~72_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~49\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~48_combout\ : std_logic;
SIGNAL \inst6|regs[30][24]~78\ : std_logic;
SIGNAL \inst6|regs[30][24]~77_combout\ : std_logic;
SIGNAL \inst6|regs[30][25]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~27_combout\ : std_logic;
SIGNAL \inst5|pc[24]~75\ : std_logic;
SIGNAL \inst5|pc[24]~74_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~51\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~50_combout\ : std_logic;
SIGNAL \inst6|regs[30][25]~80\ : std_logic;
SIGNAL \inst6|regs[30][25]~79_combout\ : std_logic;
SIGNAL \inst6|regs[30][26]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[28]~28_combout\ : std_logic;
SIGNAL \inst5|pc[25]~77\ : std_logic;
SIGNAL \inst5|pc[25]~76_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~53\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~52_combout\ : std_logic;
SIGNAL \inst6|regs[30][26]~82\ : std_logic;
SIGNAL \inst6|regs[30][26]~81_combout\ : std_logic;
SIGNAL \inst6|regs[30][27]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[29]~29_combout\ : std_logic;
SIGNAL \inst5|pc[26]~79\ : std_logic;
SIGNAL \inst5|pc[26]~78_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~55\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~54_combout\ : std_logic;
SIGNAL \inst6|regs[30][27]~84\ : std_logic;
SIGNAL \inst6|regs[30][27]~83_combout\ : std_logic;
SIGNAL \inst6|regs[30][28]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[30]~30_combout\ : std_logic;
SIGNAL \inst5|pc[27]~81\ : std_logic;
SIGNAL \inst5|pc[27]~80_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~57\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~56_combout\ : std_logic;
SIGNAL \inst6|regs[30][28]~86\ : std_logic;
SIGNAL \inst6|regs[30][28]~85_combout\ : std_logic;
SIGNAL \inst6|regs[30][29]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~31_combout\ : std_logic;
SIGNAL \inst5|pc[28]~83\ : std_logic;
SIGNAL \inst5|pc[28]~82_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~59\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~58_combout\ : std_logic;
SIGNAL \inst6|regs[30][29]~88\ : std_logic;
SIGNAL \inst6|regs[30][29]~87_combout\ : std_logic;
SIGNAL \inst6|regs[30][30]~regout\ : std_logic;
SIGNAL \inst5|pc[29]~85\ : std_logic;
SIGNAL \inst5|pc[29]~84_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~61\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~60_combout\ : std_logic;
SIGNAL \inst6|regs[30][30]~90\ : std_logic;
SIGNAL \inst6|regs[30][30]~89_combout\ : std_logic;
SIGNAL \inst6|regs[30][31]~regout\ : std_logic;
SIGNAL \inst5|pc[30]~87\ : std_logic;
SIGNAL \inst5|pc[30]~86_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~62_combout\ : std_logic;
SIGNAL \inst6|regs[30][31]~91_combout\ : std_logic;
SIGNAL \inst5|pc[31]~88_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|tdo~0_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|tdo~1_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~32_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~0_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~1_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Equal0~0_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~2_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~3_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~4_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~5_combout\ : std_logic;
SIGNAL \inst1|memwrite_out~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|decode6|eq_node[0]~0_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|decode6|eq_node[1]~1_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~33_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Mux1~0_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \inst|Mux27~0_combout\ : std_logic;
SIGNAL \inst|Mux27~1_combout\ : std_logic;
SIGNAL \inst|Mux26~0_combout\ : std_logic;
SIGNAL \inst|Mux30~0_combout\ : std_logic;
SIGNAL \inst8|a_sel~0_combout\ : std_logic;
SIGNAL \inst|Mux25~0_combout\ : std_logic;
SIGNAL \inst|Mux25~1_combout\ : std_logic;
SIGNAL \inst1|memread_out~regout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst20|control_sel~0_combout\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst6|Equal0~0_combout\ : std_logic;
SIGNAL \inst20|control_sel~1_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst20|control_sel~2_combout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst20|Equal1~0_combout\ : std_logic;
SIGNAL \inst20|control_sel~3_combout\ : std_logic;
SIGNAL \inst20|control_sel~4_combout\ : std_logic;
SIGNAL \inst8|mem_write~0_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst6|Mux63~0_combout\ : std_logic;
SIGNAL \inst6|regs[30][0]~regout\ : std_logic;
SIGNAL \inst6|regs[1][0]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst6|regs[3][0]~regout\ : std_logic;
SIGNAL \inst6|regs[2][0]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst1|regwrite_out~regout\ : std_logic;
SIGNAL \inst3|b_select~0_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst|Mux16~1_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ : std_logic;
SIGNAL \inst3|a_select~0_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[0]~11_combout\ : std_logic;
SIGNAL \inst|Mux26~1_combout\ : std_logic;
SIGNAL \inst8|a_sel~1_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ : std_logic;
SIGNAL \inst8|Decoder2~0_combout\ : std_logic;
SIGNAL \inst8|b_sel~0_combout\ : std_logic;
SIGNAL \inst|Mux11~1_combout\ : std_logic;
SIGNAL \inst8|mem_write~1_combout\ : std_logic;
SIGNAL \inst|Mux24~0_combout\ : std_logic;
SIGNAL \inst|Mux24~1_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \inst6|regs[1][1]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ : std_logic;
SIGNAL \inst6|regs[3][1]~regout\ : std_logic;
SIGNAL \inst6|regs[2][1]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[1]~8_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[1]~9_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ : std_logic;
SIGNAL \inst|Mux23~0_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[1]~13_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[1]~15_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[1]~16_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \inst6|regs[3][2]~regout\ : std_logic;
SIGNAL \inst6|regs[1][2]~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[2]~17_combout\ : std_logic;
SIGNAL \inst6|regs[2][2]~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[2]~18_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[2]~19_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[2]~11_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[2]~12_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[2]~14_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \inst6|regs[3][3]~regout\ : std_logic;
SIGNAL \inst6|regs[1][3]~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[3]~20_combout\ : std_logic;
SIGNAL \inst6|regs[2][3]~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[3]~21_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[3]~22_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[3]~15_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[3]~16_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[3]~17_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[3]~18_combout\ : std_logic;
SIGNAL \inst|Mux8~1_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \inst6|regs[3][4]~regout\ : std_logic;
SIGNAL \inst6|regs[1][4]~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[4]~23_combout\ : std_logic;
SIGNAL \inst6|regs[2][4]~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[4]~24_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[4]~25_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[4]~19_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[4]~20_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[4]~21_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[4]~22_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[4]~6_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \inst6|regs[3][5]~regout\ : std_logic;
SIGNAL \inst6|regs[1][5]~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[5]~26_combout\ : std_logic;
SIGNAL \inst6|regs[2][5]~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[5]~27_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[5]~28_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[5]~23_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[5]~24_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[5]~25_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[5]~26_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \inst6|regs[3][6]~regout\ : std_logic;
SIGNAL \inst6|regs[1][6]~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[6]~29_combout\ : std_logic;
SIGNAL \inst6|regs[2][6]~regout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[6]~30_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[6]~31_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[6]~27_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[6]~28_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[6]~29_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[6]~30_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[6]~8_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~34_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\ : std_logic;
SIGNAL \inst5|pc[2]~39_combout\ : std_logic;
SIGNAL \inst8|mem_read~0_combout\ : std_logic;
SIGNAL \inst|Mux23~1_combout\ : std_logic;
SIGNAL \inst8|wb_sel[0]~0_combout\ : std_logic;
SIGNAL \inst6|Decoder0~0_combout\ : std_logic;
SIGNAL \inst6|Decoder0~1_combout\ : std_logic;
SIGNAL \inst6|Decoder0~2_combout\ : std_logic;
SIGNAL \inst8|WideOr2~0_combout\ : std_logic;
SIGNAL \inst8|reg_write~0_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~35_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~36_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~37_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~38_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~39_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~40_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~7_combout\ : std_logic;
SIGNAL \inst6|regs[1][7]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[7]~31_combout\ : std_logic;
SIGNAL \inst6|regs[3][7]~regout\ : std_logic;
SIGNAL \inst6|regs[2][7]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[7]~32_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[7]~33_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[7]~34_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~41_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[7]~9_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[7]~32_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[7]~33_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[7]~34_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[7]~35_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~8_combout\ : std_logic;
SIGNAL \inst6|regs[1][8]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[8]~35_combout\ : std_logic;
SIGNAL \inst6|regs[2][8]~regout\ : std_logic;
SIGNAL \inst6|regs[3][8]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[8]~36_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[8]~37_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[8]~38_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~42_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[8]~10_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[8]~36_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[8]~37_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[8]~38_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[8]~39_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~9_combout\ : std_logic;
SIGNAL \inst6|regs[1][9]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[9]~39_combout\ : std_logic;
SIGNAL \inst6|regs[2][9]~regout\ : std_logic;
SIGNAL \inst6|regs[3][9]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[9]~40_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[9]~41_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[9]~42_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~43_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[9]~11_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[9]~40_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[9]~41_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[9]~42_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[9]~43_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~10_combout\ : std_logic;
SIGNAL \inst6|regs[1][10]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[10]~43_combout\ : std_logic;
SIGNAL \inst6|regs[2][10]~regout\ : std_logic;
SIGNAL \inst6|regs[3][10]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[10]~44_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[10]~45_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[10]~46_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~44_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[10]~12_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[10]~44_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[10]~45_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[10]~46_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~11_combout\ : std_logic;
SIGNAL \inst6|regs[1][11]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[11]~47_combout\ : std_logic;
SIGNAL \inst6|regs[2][11]~regout\ : std_logic;
SIGNAL \inst6|regs[3][11]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[11]~48_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[11]~49_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[11]~50_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~45_combout\ : std_logic;
SIGNAL \inst8|imm_sel[2]~0_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[11]~13_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[11]~47_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[11]~48_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[11]~49_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~12_combout\ : std_logic;
SIGNAL \inst6|regs[1][12]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[12]~51_combout\ : std_logic;
SIGNAL \inst6|regs[2][12]~regout\ : std_logic;
SIGNAL \inst6|regs[3][12]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[12]~52_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[12]~53_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[12]~54_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~46_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[12]~14_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[12]~50_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[12]~51_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[12]~52_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[12]~53_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~13_combout\ : std_logic;
SIGNAL \inst6|regs[1][13]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[13]~55_combout\ : std_logic;
SIGNAL \inst6|regs[2][13]~regout\ : std_logic;
SIGNAL \inst6|regs[3][13]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[13]~56_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[13]~57_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[13]~58_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~47_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[13]~15_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[13]~54_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[13]~55_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[13]~56_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[13]~57_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~14_combout\ : std_logic;
SIGNAL \inst6|regs[1][14]~regout\ : std_logic;
SIGNAL \inst6|regs[3][14]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[14]~59_combout\ : std_logic;
SIGNAL \inst|Mux10~1_combout\ : std_logic;
SIGNAL \inst6|regs[2][14]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[14]~60_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[14]~61_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[14]~62_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~48_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[14]~16_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[14]~58_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[14]~59_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[14]~60_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[14]~61_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~15_combout\ : std_logic;
SIGNAL \inst6|regs[1][15]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[15]~63_combout\ : std_logic;
SIGNAL \inst6|regs[2][15]~regout\ : std_logic;
SIGNAL \inst6|regs[3][15]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[15]~64_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[15]~65_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[15]~66_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~49_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[15]~17_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[15]~62_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[15]~63_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[15]~64_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~16_combout\ : std_logic;
SIGNAL \inst6|regs[1][16]~regout\ : std_logic;
SIGNAL \inst6|regs[3][16]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[16]~67_combout\ : std_logic;
SIGNAL \inst6|regs[2][16]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[16]~68_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[16]~69_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[16]~70_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~50_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[16]~18_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[16]~65_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[16]~66_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[16]~67_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[16]~68_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~17_combout\ : std_logic;
SIGNAL \inst6|regs[1][17]~regout\ : std_logic;
SIGNAL \inst6|regs[3][17]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[17]~71_combout\ : std_logic;
SIGNAL \inst6|regs[2][17]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[17]~72_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[17]~73_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[17]~74_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~51_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[17]~19_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[17]~69_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[17]~70_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[17]~71_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[17]~72_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~18_combout\ : std_logic;
SIGNAL \inst6|regs[1][18]~regout\ : std_logic;
SIGNAL \inst6|regs[3][18]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[18]~75_combout\ : std_logic;
SIGNAL \inst6|regs[2][18]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[18]~76_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[18]~77_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[18]~78_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~52_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[18]~20_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[18]~73_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[18]~74_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[18]~75_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[18]~76_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~19_combout\ : std_logic;
SIGNAL \inst6|regs[1][19]~regout\ : std_logic;
SIGNAL \inst6|regs[3][19]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[19]~79_combout\ : std_logic;
SIGNAL \inst6|regs[2][19]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[19]~80_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[19]~81_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[19]~82_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~53_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[19]~21_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[19]~77_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[19]~78_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[19]~79_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[19]~80_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~20_combout\ : std_logic;
SIGNAL \inst6|regs[2][20]~regout\ : std_logic;
SIGNAL \inst6|regs[3][20]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[20]~83_combout\ : std_logic;
SIGNAL \inst6|regs[1][20]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[20]~84_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[20]~85_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[20]~86_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~54_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[20]~22_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[20]~81_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[20]~82_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[20]~83_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[20]~84_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~21_combout\ : std_logic;
SIGNAL \inst6|regs[2][21]~regout\ : std_logic;
SIGNAL \inst6|regs[3][21]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[21]~87_combout\ : std_logic;
SIGNAL \inst6|regs[1][21]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[21]~88_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[21]~89_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[21]~90_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~55_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[21]~23_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[21]~85_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[21]~86_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[21]~87_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[21]~88_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~22_combout\ : std_logic;
SIGNAL \inst6|regs[2][22]~regout\ : std_logic;
SIGNAL \inst6|regs[3][22]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[22]~91_combout\ : std_logic;
SIGNAL \inst6|regs[1][22]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[22]~92_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[22]~93_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[22]~94_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~56_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[22]~24_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[22]~89_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[22]~90_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[22]~91_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[22]~92_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~23_combout\ : std_logic;
SIGNAL \inst6|regs[2][23]~regout\ : std_logic;
SIGNAL \inst6|regs[3][23]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[23]~95_combout\ : std_logic;
SIGNAL \inst6|regs[1][23]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[23]~96_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[23]~97_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[23]~98_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~57_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[23]~25_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[23]~93_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[23]~94_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[23]~95_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[23]~96_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~24_combout\ : std_logic;
SIGNAL \inst6|regs[2][24]~regout\ : std_logic;
SIGNAL \inst6|regs[3][24]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[24]~99_combout\ : std_logic;
SIGNAL \inst6|regs[1][24]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[24]~100_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[24]~101_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[24]~102_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~58_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[24]~26_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[24]~97_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[24]~98_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[24]~99_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[24]~100_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~25_combout\ : std_logic;
SIGNAL \inst6|regs[2][25]~regout\ : std_logic;
SIGNAL \inst6|regs[3][25]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[25]~103_combout\ : std_logic;
SIGNAL \inst6|regs[1][25]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[25]~104_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[25]~105_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[25]~106_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~59_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[25]~27_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[25]~101_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[25]~102_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[25]~103_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[25]~104_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~26_combout\ : std_logic;
SIGNAL \inst6|regs[2][26]~regout\ : std_logic;
SIGNAL \inst6|regs[3][26]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[26]~107_combout\ : std_logic;
SIGNAL \inst6|regs[1][26]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[26]~108_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[26]~109_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[26]~110_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~60_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[26]~28_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[26]~105_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[26]~106_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[26]~107_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~27_combout\ : std_logic;
SIGNAL \inst6|regs[2][27]~regout\ : std_logic;
SIGNAL \inst6|regs[3][27]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[27]~111_combout\ : std_logic;
SIGNAL \inst6|regs[1][27]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[27]~112_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[27]~113_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[27]~114_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~61_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[27]~29_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[27]~108_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[27]~109_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[27]~110_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[27]~111_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~28_combout\ : std_logic;
SIGNAL \inst6|regs[2][28]~regout\ : std_logic;
SIGNAL \inst6|regs[3][28]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[28]~115_combout\ : std_logic;
SIGNAL \inst6|regs[1][28]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[28]~116_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[28]~117_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[28]~118_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~62_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[28]~30_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[28]~112_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[28]~113_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[28]~114_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[28]~115_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~29_combout\ : std_logic;
SIGNAL \inst6|regs[2][29]~regout\ : std_logic;
SIGNAL \inst6|regs[3][29]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[29]~119_combout\ : std_logic;
SIGNAL \inst6|regs[1][29]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[29]~120_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[29]~121_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[29]~122_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~63_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[29]~31_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[29]~116_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[29]~117_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[29]~118_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[29]~119_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~30_combout\ : std_logic;
SIGNAL \inst6|regs[2][30]~regout\ : std_logic;
SIGNAL \inst6|regs[3][30]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[30]~123_combout\ : std_logic;
SIGNAL \inst6|regs[1][30]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[30]~124_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[30]~125_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[30]~126_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[30]~32_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[30]~120_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[30]~121_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[30]~122_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[30]~123_combout\ : std_logic;
SIGNAL \inst15|LPM_MUX_component|auto_generated|_~31_combout\ : std_logic;
SIGNAL \inst6|regs[2][31]~regout\ : std_logic;
SIGNAL \inst6|regs[3][31]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[31]~127_combout\ : std_logic;
SIGNAL \inst6|regs[1][31]~regout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[31]~128_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[31]~129_combout\ : std_logic;
SIGNAL \inst23|LPM_MUX_component|auto_generated|result_node[31]~130_combout\ : std_logic;
SIGNAL \inst10|LPM_MUX_component|auto_generated|result_node[31]~33_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[31]~124_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[31]~125_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[31]~126_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[31]~127_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[0]~128_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[10]~129_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[11]~130_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[15]~131_combout\ : std_logic;
SIGNAL \inst11|LPM_MUX_component|auto_generated|result_node[26]~132_combout\ : std_logic;
SIGNAL \inst6|regs[30][0]~93_combout\ : std_logic;
SIGNAL \inst6|regs[2][0]~94_combout\ : std_logic;
SIGNAL \inst6|regs[2][1]~95_combout\ : std_logic;
SIGNAL \inst6|regs[2][2]~96_combout\ : std_logic;
SIGNAL \inst6|regs[2][3]~97_combout\ : std_logic;
SIGNAL \inst6|regs[2][4]~98_combout\ : std_logic;
SIGNAL \inst6|regs[2][5]~99_combout\ : std_logic;
SIGNAL \inst6|regs[2][6]~100_combout\ : std_logic;
SIGNAL \inst6|regs[2][7]~101_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|Mux3~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Mux3~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal7~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|Mux2~0_combout\ : std_logic;
SIGNAL \auto_hub|Mux2~1_combout\ : std_logic;
SIGNAL \auto_hub|Mux2~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|Mux1~0_combout\ : std_logic;
SIGNAL \auto_hub|Mux3~3_combout\ : std_logic;
SIGNAL \auto_hub|Mux1~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|Mux0~0_combout\ : std_logic;
SIGNAL \auto_hub|Mux0~1_combout\ : std_logic;
SIGNAL \auto_hub|Mux0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \inst16|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|pc[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|memwrite_out~feeder_combout\ : std_logic;
SIGNAL \inst6|regs[3][0]~feeder_combout\ : std_logic;
SIGNAL \inst6|regs[1][1]~feeder_combout\ : std_logic;
SIGNAL \inst1|rs2_out[12]~feeder_combout\ : std_logic;
SIGNAL \inst1|rs2_out[15]~feeder_combout\ : std_logic;
SIGNAL \inst6|regs[1][17]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \altera_reserved_tms~combout\ : std_logic;
SIGNAL \altera_reserved_tck~combout\ : std_logic;
SIGNAL \altera_reserved_tdi~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\ : std_logic;
SIGNAL \auto_hub|Mux3~0_combout\ : std_logic;
SIGNAL \auto_hub|Mux3~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~7\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~9\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~10_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~11\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~13\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~14_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~6_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~11\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~12_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~13\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~14_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~15\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~16_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~17\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~18_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~19\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~20_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~21\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~22_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[1]~5_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~5\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~7\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~1\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~3\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Mux1~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|pc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|wbselect_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|rs2_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|dst_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|alu_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \inst16|altpll_component|ALT_INV__clk0~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_virtual_ir_scan_reg~regout\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \inst14|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\ : std_logic_vector(7 DOWNTO 7);

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAIN_bus\ <= (\inst1|rs2_out\(17) & \inst1|rs2_out\(16) & \inst1|rs2_out\(15) & \inst1|rs2_out\(14) & \inst1|rs2_out\(13) & \inst1|rs2_out\(12) & 
\inst1|rs2_out\(11) & \inst1|rs2_out\(10) & \inst1|rs2_out\(9) & \inst1|rs2_out\(8) & \inst1|rs2_out\(7) & \inst1|rs2_out\(6) & \inst1|rs2_out\(5) & \inst1|rs2_out\(4) & \inst1|rs2_out\(3) & \inst1|rs2_out\(2) & \inst1|rs2_out\(1) & 
\inst1|rs2_out\(0));

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAIN_bus\ <= (\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(17) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(16) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTAADDR_bus\ <= (\inst1|alu_out\(6) & \inst1|alu_out\(5) & \inst1|alu_out\(4) & \inst1|alu_out\(3) & \inst1|alu_out\(2) & \inst1|alu_out\(1) & 
\inst1|alu_out\(0) & \~GND~combout\);

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBADDR_bus\ <= (\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5)
& \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0) & \~GND~combout\);

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0~portadataout\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(0);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a1\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(1);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a2\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(2);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a3\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(3);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a4\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(4);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a5\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(5);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a6\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(6);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a7\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(7);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a8\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(8);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a9\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(9);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a10\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(10);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a11\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(11);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a12\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(12);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a13\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(13);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a14\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(14);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a15\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(15);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a16\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(16);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a17\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\(17);

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(0);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a1~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(1);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a2~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(2);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a3~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(3);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a4~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(4);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a5~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(5);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a6~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(6);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a7~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(7);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a8~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(8);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a9~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(9);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a10~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(10);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a11~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(11);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a12~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(12);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a13~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(13);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a14~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(14);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a15~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(15);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a16~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(16);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a17~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\(17);

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAIN_bus\ <= (\inst1|rs2_out\(17) & \inst1|rs2_out\(16) & \inst1|rs2_out\(15) & \inst1|rs2_out\(14) & \inst1|rs2_out\(13) & \inst1|rs2_out\(12) & 
\inst1|rs2_out\(11) & \inst1|rs2_out\(10) & \inst1|rs2_out\(9) & \inst1|rs2_out\(8) & \inst1|rs2_out\(7) & \inst1|rs2_out\(6) & \inst1|rs2_out\(5) & \inst1|rs2_out\(4) & \inst1|rs2_out\(3) & \inst1|rs2_out\(2) & \inst1|rs2_out\(1) & 
\inst1|rs2_out\(0));

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAIN_bus\ <= (\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(17) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(16) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTAADDR_bus\ <= (\inst1|alu_out\(6) & \inst1|alu_out\(5) & \inst1|alu_out\(4) & \inst1|alu_out\(3) & \inst1|alu_out\(2) & \inst1|alu_out\(1) & 
\inst1|alu_out\(0) & \~GND~combout\);

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBADDR_bus\ <= (\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0) & \~GND~combout\);

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32~portadataout\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(0);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a33\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(1);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a34\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(2);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a35\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(3);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a36\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(4);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a37\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(5);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a38\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(6);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a39\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(7);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a40\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(8);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a41\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(9);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a42\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(10);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a43\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(11);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a44\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(12);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a45\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(13);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a46\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(14);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a47\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(15);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a48\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(16);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a49\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\(17);

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(0);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a33~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(1);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a34~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(2);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a35~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(3);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a36~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(4);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a37~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(5);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a38~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(6);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a39~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(7);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a40~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(8);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a41~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(9);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a42~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(10);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a43~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(11);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a44~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(12);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a45~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(13);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a46~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(14);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a47~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(15);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a48~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(16);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a49~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\(17);

\inst16|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50~combout\);

\inst16|altpll_component|_clk0\ <= \inst16|altpll_component|pll_CLK_bus\(0);
\inst16|altpll_component|pll~CLK1\ <= \inst16|altpll_component|pll_CLK_bus\(1);
\inst16|altpll_component|pll~CLK2\ <= \inst16|altpll_component|pll_CLK_bus\(2);

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAIN_bus\ <= (\inst1|rs2_out\(31) & \inst1|rs2_out\(30) & \inst1|rs2_out\(29) & \inst1|rs2_out\(28) & \inst1|rs2_out\(27) & \inst1|rs2_out\(26) & 
\inst1|rs2_out\(25) & \inst1|rs2_out\(24) & \inst1|rs2_out\(23) & \inst1|rs2_out\(22) & \inst1|rs2_out\(21) & \inst1|rs2_out\(20) & \inst1|rs2_out\(19) & \inst1|rs2_out\(18));

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAIN_bus\ <= (\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(31) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(30) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(29) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(28) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(27) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(26) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(25) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(24) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(23) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(22) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(21) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(20) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(19) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(18));

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTAADDR_bus\ <= (\inst1|alu_out\(6) & \inst1|alu_out\(5) & \inst1|alu_out\(4) & \inst1|alu_out\(3) & \inst1|alu_out\(2) & \inst1|alu_out\(1) & 
\inst1|alu_out\(0) & \~GND~combout\);

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBADDR_bus\ <= (\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0) & \~GND~combout\);

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18~portadataout\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(0);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a19\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(1);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a20\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(2);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a21\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(3);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a22\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(4);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a23\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(5);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a24\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(6);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a25\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(7);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a26\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(8);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a27\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(9);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a28\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(10);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a29\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(11);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a30\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(12);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a31\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\(13);

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\(0);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a19~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\(1);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a20~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\(2);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a21~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\(3);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a22~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\(4);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a23~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\(5);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a24~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\(6);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a25~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\(7);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a26~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\(8);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a27~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\(9);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a28~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\(10);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a29~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\(11);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a30~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\(12);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a31~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\(13);

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAIN_bus\ <= (\inst1|rs2_out\(31) & \inst1|rs2_out\(30) & \inst1|rs2_out\(29) & \inst1|rs2_out\(28) & \inst1|rs2_out\(27) & \inst1|rs2_out\(26) & 
\inst1|rs2_out\(25) & \inst1|rs2_out\(24) & \inst1|rs2_out\(23) & \inst1|rs2_out\(22) & \inst1|rs2_out\(21) & \inst1|rs2_out\(20) & \inst1|rs2_out\(19) & \inst1|rs2_out\(18));

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAIN_bus\ <= (\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(31) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(30) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(29) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(28) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(27) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(26) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(25) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(24) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(23) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(22) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(21) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(20) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(19) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(18));

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTAADDR_bus\ <= (\inst1|alu_out\(6) & \inst1|alu_out\(5) & \inst1|alu_out\(4) & \inst1|alu_out\(3) & \inst1|alu_out\(2) & \inst1|alu_out\(1) & 
\inst1|alu_out\(0) & \~GND~combout\);

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBADDR_bus\ <= (\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & 
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0) & \~GND~combout\);

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50~portadataout\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\(0);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a51\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\(1);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a52\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\(2);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a53\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\(3);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a54\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\(4);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a55\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\(5);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a56\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\(6);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a57\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\(7);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a58\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\(8);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a59\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\(9);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a60\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\(10);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a61\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\(11);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a62\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\(12);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a63\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\(13);

\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\(0);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a51~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\(1);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a52~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\(2);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a53~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\(3);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a54~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\(4);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a55~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\(5);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a56~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\(6);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a57~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\(7);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a58~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\(8);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a59~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\(9);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a60~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\(10);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a61~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\(11);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a62~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\(12);
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a63~PORTBDATAOUT0\ <= \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\(13);

\inst16|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst16|altpll_component|_clk0\);

\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \altera_internal_jtag~TCKUTAP\);

\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0));

\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\);

\inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\);

\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\);
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\inst16|altpll_component|ALT_INV__clk0~clkctrl_outclk\ <= NOT \inst16|altpll_component|_clk0~clkctrl_outclk\;
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_virtual_ir_scan_reg~regout\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\inst14|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(7) <= NOT \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7);

-- Location: LCFF_X27_Y20_N7
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~0_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~32_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

-- Location: M4K_X26_Y21
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "lil_procy_ram.mif",
	init_file_layout => "port_a",
	logical_ram_name => "dmem:inst14|altsyncram:altsyncram_component|altsyncram_fcm1:auto_generated|altsyncram_lvh2:altsyncram1|altsyncram_djc2:altsyncram3|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|memwrite_out~regout\,
	portbrewe => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|decode6|eq_node[0]~0_combout\,
	clk0 => \inst16|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	ena1 => \inst14|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(7),
	portadatain => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAIN_bus\,
	portbdatain => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAIN_bus\,
	portaaddr => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTAADDR_bus\,
	portbaddr => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTADATAOUT_bus\,
	portbdataout => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0_PORTBDATAOUT_bus\);

-- Location: M4K_X26_Y20
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "lil_procy_ram.mif",
	init_file_layout => "port_a",
	logical_ram_name => "dmem:inst14|altsyncram:altsyncram_component|altsyncram_fcm1:auto_generated|altsyncram_lvh2:altsyncram1|altsyncram_djc2:altsyncram3|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|decode6|eq_node[1]~1_combout\,
	clk0 => \inst16|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	portadatain => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAIN_bus\,
	portbdatain => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAIN_bus\,
	portaaddr => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTAADDR_bus\,
	portbaddr => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTADATAOUT_bus\,
	portbdataout => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X27_Y20_N6
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a32~PORTBDATAOUT0\,
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~0_combout\);

-- Location: LCFF_X27_Y20_N1
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~33_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1));

-- Location: LCFF_X19_Y21_N13
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~12_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~clkctrl_outclk\,
	sclr => \inst14|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3));

-- Location: LCFF_X19_Y21_N17
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~16_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~clkctrl_outclk\,
	sclr => \inst14|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(5));

-- Location: LCCOMB_X14_Y22_N6
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datad => VCC,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~0_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~1\);

-- Location: LCCOMB_X14_Y22_N8
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => VCC,
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~1\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~2_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~3\);

-- Location: LCCOMB_X14_Y22_N10
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datad => VCC,
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~3\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~4_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~5\);

-- Location: LCCOMB_X14_Y22_N12
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => VCC,
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~5\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~6_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~7\);

-- Location: LCCOMB_X14_Y22_N14
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~7\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~8_combout\);

-- Location: PLL_1
\inst16|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 5,
	c0_initial => 1,
	c0_low => 5,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 5,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 8,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 16,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 3582,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	inclk => \inst16|altpll_component|pll_INCLK_bus\,
	clk => \inst16|altpll_component|pll_CLK_bus\);

-- Location: LCCOMB_X27_Y20_N0
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a33~PORTBDATAOUT0\,
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a1~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]~1_combout\);

-- Location: LCFF_X27_Y20_N23
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~2_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~34_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2));

-- Location: LCCOMB_X19_Y21_N12
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3),
	datad => VCC,
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~11\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~12_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~13\);

-- Location: LCCOMB_X19_Y21_N14
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4),
	datad => VCC,
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]~13\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~14_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~15\);

-- Location: LCCOMB_X19_Y21_N16
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(5),
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~15\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[5]~16_combout\);

-- Location: LCFF_X21_Y24_N11
\inst5|pc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[6]~37_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(6));

-- Location: LCFF_X21_Y24_N5
\inst5|pc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[3]~31_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(3));

-- Location: LCFF_X21_Y24_N7
\inst5|pc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[4]~33_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(4));

-- Location: LCFF_X21_Y24_N9
\inst5|pc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[5]~35_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(5));

-- Location: LCCOMB_X22_Y24_N0
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = (\inst10|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ $ (VCC))) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ & VCC))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~1\ = CARRY((\inst10|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & \inst11|LPM_MUX_component|auto_generated|result_node[0]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[0]~12_combout\,
	datad => VCC,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~1\);

-- Location: LCFF_X28_Y21_N3
\inst6|regs[30][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][1]~regout\);

-- Location: LCCOMB_X22_Y24_N2
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\inst10|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[1]~16_combout\ & 
-- (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~1\ & VCC)) # (!\inst11|LPM_MUX_component|auto_generated|result_node[1]~16_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~1\)))) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[1]~16_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[1]~16_combout\ & ((\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (GND)))))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~3\ = CARRY((\inst10|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (!\inst11|LPM_MUX_component|auto_generated|result_node[1]~16_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # (!\inst10|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~1\) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[1]~16_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~1\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~3\);

-- Location: LCFF_X28_Y21_N5
\inst6|regs[30][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][2]~regout\);

-- Location: LCCOMB_X22_Y24_N4
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = ((\inst11|LPM_MUX_component|auto_generated|result_node[2]~19_combout\ $ (\inst10|LPM_MUX_component|auto_generated|result_node[2]~4_combout\ $ 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~3\)))) # (GND)
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~5\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[2]~19_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[2]~4_combout\) # 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~3\))) # (!\inst11|LPM_MUX_component|auto_generated|result_node[2]~19_combout\ & (\inst10|LPM_MUX_component|auto_generated|result_node[2]~4_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[2]~19_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[2]~4_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~3\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~5\);

-- Location: LCFF_X28_Y21_N7
\inst6|regs[30][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][3]~regout\);

-- Location: LCCOMB_X22_Y24_N6
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\inst11|LPM_MUX_component|auto_generated|result_node[3]~22_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ & 
-- (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~5\ & VCC)) # (!\inst10|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~5\)))) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[3]~22_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ & ((\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (GND)))))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~7\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[3]~22_combout\ & (!\inst10|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # (!\inst11|LPM_MUX_component|auto_generated|result_node[3]~22_combout\ & ((!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~5\) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[3]~22_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[3]~5_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~5\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~7\);

-- Location: LCFF_X28_Y21_N9
\inst6|regs[30][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][4]~regout\);

-- Location: LCCOMB_X22_Y24_N8
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ = ((\inst10|LPM_MUX_component|auto_generated|result_node[4]~6_combout\ $ (\inst11|LPM_MUX_component|auto_generated|result_node[4]~25_combout\ $ 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~7\)))) # (GND)
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~9\ = CARRY((\inst10|LPM_MUX_component|auto_generated|result_node[4]~6_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[4]~25_combout\) # 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~7\))) # (!\inst10|LPM_MUX_component|auto_generated|result_node[4]~6_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[4]~25_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_MUX_component|auto_generated|result_node[4]~6_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[4]~25_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~7\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~9\);

-- Location: LCFF_X28_Y21_N11
\inst6|regs[30][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][5]~regout\);

-- Location: LCCOMB_X22_Y24_N10
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ = (\inst11|LPM_MUX_component|auto_generated|result_node[5]~28_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ & 
-- (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~9\ & VCC)) # (!\inst10|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~9\)))) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[5]~28_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ & ((\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (GND)))))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~11\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[5]~28_combout\ & (!\inst10|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # (!\inst11|LPM_MUX_component|auto_generated|result_node[5]~28_combout\ & ((!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~9\) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[5]~28_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[5]~7_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~9\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~11\);

-- Location: LCFF_X28_Y21_N13
\inst6|regs[30][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][6]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][6]~regout\);

-- Location: LCCOMB_X22_Y24_N12
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ = ((\inst11|LPM_MUX_component|auto_generated|result_node[6]~31_combout\ $ (\inst10|LPM_MUX_component|auto_generated|result_node[6]~8_combout\ $ 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~11\)))) # (GND)
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~13\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[6]~31_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[6]~8_combout\) # 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~11\))) # (!\inst11|LPM_MUX_component|auto_generated|result_node[6]~31_combout\ & (\inst10|LPM_MUX_component|auto_generated|result_node[6]~8_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[6]~31_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[6]~8_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~11\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X27_Y20_N22
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a34~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a2~PORTBDATAOUT0\,
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]~2_combout\);

-- Location: LCFF_X27_Y20_N27
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]~3_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~35_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3));

-- Location: LCCOMB_X21_Y24_N2
\inst5|pc[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[3]~30_cout\ = CARRY(\inst5|pc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(2),
	datad => VCC,
	cout => \inst5|pc[3]~30_cout\);

-- Location: LCCOMB_X21_Y24_N4
\inst5|pc[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[3]~31_combout\ = (\inst5|pc\(3) & (!\inst5|pc[3]~30_cout\)) # (!\inst5|pc\(3) & ((\inst5|pc[3]~30_cout\) # (GND)))
-- \inst5|pc[3]~32\ = CARRY((!\inst5|pc[3]~30_cout\) # (!\inst5|pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(3),
	datad => VCC,
	cin => \inst5|pc[3]~30_cout\,
	combout => \inst5|pc[3]~31_combout\,
	cout => \inst5|pc[3]~32\);

-- Location: LCCOMB_X21_Y24_N6
\inst5|pc[4]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[4]~33_combout\ = (\inst5|pc\(4) & (\inst5|pc[3]~32\ $ (GND))) # (!\inst5|pc\(4) & (!\inst5|pc[3]~32\ & VCC))
-- \inst5|pc[4]~34\ = CARRY((\inst5|pc\(4) & !\inst5|pc[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(4),
	datad => VCC,
	cin => \inst5|pc[3]~32\,
	combout => \inst5|pc[4]~33_combout\,
	cout => \inst5|pc[4]~34\);

-- Location: LCCOMB_X21_Y24_N8
\inst5|pc[5]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[5]~35_combout\ = (\inst5|pc\(5) & (!\inst5|pc[4]~34\)) # (!\inst5|pc\(5) & ((\inst5|pc[4]~34\) # (GND)))
-- \inst5|pc[5]~36\ = CARRY((!\inst5|pc[4]~34\) # (!\inst5|pc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(5),
	datad => VCC,
	cin => \inst5|pc[4]~34\,
	combout => \inst5|pc[5]~35_combout\,
	cout => \inst5|pc[5]~36\);

-- Location: LCCOMB_X21_Y24_N10
\inst5|pc[6]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[6]~37_combout\ = (\inst5|pc\(6) & (\inst5|pc[5]~36\ $ (GND))) # (!\inst5|pc\(6) & (!\inst5|pc[5]~36\ & VCC))
-- \inst5|pc[6]~38\ = CARRY((\inst5|pc\(6) & !\inst5|pc[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datad => VCC,
	cin => \inst5|pc[5]~36\,
	combout => \inst5|pc[6]~37_combout\,
	cout => \inst5|pc[6]~38\);

-- Location: LCCOMB_X28_Y21_N2
\inst6|regs[30][1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][1]~31_combout\ = (\inst6|regs[30][0]~regout\ & (\inst6|regs[30][1]~regout\ $ (VCC))) # (!\inst6|regs[30][0]~regout\ & (\inst6|regs[30][1]~regout\ & VCC))
-- \inst6|regs[30][1]~32\ = CARRY((\inst6|regs[30][0]~regout\ & \inst6|regs[30][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][0]~regout\,
	datab => \inst6|regs[30][1]~regout\,
	datad => VCC,
	combout => \inst6|regs[30][1]~31_combout\,
	cout => \inst6|regs[30][1]~32\);

-- Location: LCCOMB_X28_Y21_N4
\inst6|regs[30][2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][2]~33_combout\ = (\inst6|regs[30][2]~regout\ & (!\inst6|regs[30][1]~32\)) # (!\inst6|regs[30][2]~regout\ & ((\inst6|regs[30][1]~32\) # (GND)))
-- \inst6|regs[30][2]~34\ = CARRY((!\inst6|regs[30][1]~32\) # (!\inst6|regs[30][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][2]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][1]~32\,
	combout => \inst6|regs[30][2]~33_combout\,
	cout => \inst6|regs[30][2]~34\);

-- Location: LCCOMB_X28_Y21_N6
\inst6|regs[30][3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][3]~35_combout\ = (\inst6|regs[30][3]~regout\ & (\inst6|regs[30][2]~34\ $ (GND))) # (!\inst6|regs[30][3]~regout\ & (!\inst6|regs[30][2]~34\ & VCC))
-- \inst6|regs[30][3]~36\ = CARRY((\inst6|regs[30][3]~regout\ & !\inst6|regs[30][2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][3]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][2]~34\,
	combout => \inst6|regs[30][3]~35_combout\,
	cout => \inst6|regs[30][3]~36\);

-- Location: LCFF_X27_Y20_N29
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]~4_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~36_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4));

-- Location: LCCOMB_X28_Y21_N8
\inst6|regs[30][4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][4]~37_combout\ = (\inst6|regs[30][4]~regout\ & (!\inst6|regs[30][3]~36\)) # (!\inst6|regs[30][4]~regout\ & ((\inst6|regs[30][3]~36\) # (GND)))
-- \inst6|regs[30][4]~38\ = CARRY((!\inst6|regs[30][3]~36\) # (!\inst6|regs[30][4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][4]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][3]~36\,
	combout => \inst6|regs[30][4]~37_combout\,
	cout => \inst6|regs[30][4]~38\);

-- Location: LCFF_X27_Y20_N11
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]~5_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~37_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5));

-- Location: LCCOMB_X28_Y21_N10
\inst6|regs[30][5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][5]~39_combout\ = (\inst6|regs[30][5]~regout\ & (\inst6|regs[30][4]~38\ $ (GND))) # (!\inst6|regs[30][5]~regout\ & (!\inst6|regs[30][4]~38\ & VCC))
-- \inst6|regs[30][5]~40\ = CARRY((\inst6|regs[30][5]~regout\ & !\inst6|regs[30][4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][5]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][4]~38\,
	combout => \inst6|regs[30][5]~39_combout\,
	cout => \inst6|regs[30][5]~40\);

-- Location: LCFF_X27_Y20_N19
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]~6_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~38_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6));

-- Location: LCCOMB_X28_Y21_N12
\inst6|regs[30][6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][6]~41_combout\ = (\inst6|regs[30][6]~regout\ & (!\inst6|regs[30][5]~40\)) # (!\inst6|regs[30][6]~regout\ & ((\inst6|regs[30][5]~40\) # (GND)))
-- \inst6|regs[30][6]~42\ = CARRY((!\inst6|regs[30][5]~40\) # (!\inst6|regs[30][6]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][6]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][5]~40\,
	combout => \inst6|regs[30][6]~41_combout\,
	cout => \inst6|regs[30][6]~42\);

-- Location: LCCOMB_X27_Y20_N26
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a35~PORTBDATAOUT0\,
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a3~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]~3_combout\);

-- Location: LCCOMB_X27_Y20_N28
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a4~PORTBDATAOUT0\,
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a36~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]~4_combout\);

-- Location: LCCOMB_X27_Y20_N10
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a5~PORTBDATAOUT0\,
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a37~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]~5_combout\);

-- Location: LCCOMB_X27_Y20_N18
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a6~PORTBDATAOUT0\,
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a38~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]~6_combout\);

-- Location: LCFF_X27_Y20_N3
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]~7_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~39_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7));

-- Location: LCCOMB_X27_Y20_N2
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a7~PORTBDATAOUT0\,
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a39~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]~7_combout\);

-- Location: LCFF_X27_Y21_N31
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[8]~8_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~40_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8));

-- Location: LCCOMB_X27_Y21_N30
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[8]~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a40~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a8~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[8]~8_combout\);

-- Location: LCFF_X27_Y21_N7
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[9]~9_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~41_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9));

-- Location: LCFF_X28_Y21_N15
\inst6|regs[30][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][7]~regout\);

-- Location: LCCOMB_X27_Y21_N6
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[9]~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a9~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a41~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[9]~9_combout\);

-- Location: LCFF_X27_Y21_N3
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[10]~10_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~42_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10));

-- Location: LCFF_X21_Y24_N13
\inst5|pc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[7]~40_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(7));

-- Location: LCCOMB_X22_Y24_N14
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ = (\inst11|LPM_MUX_component|auto_generated|result_node[7]~35_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[7]~9_combout\ & 
-- (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~13\ & VCC)) # (!\inst10|LPM_MUX_component|auto_generated|result_node[7]~9_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~13\)))) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[7]~35_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[7]~9_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[7]~9_combout\ & ((\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (GND)))))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~15\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[7]~35_combout\ & (!\inst10|LPM_MUX_component|auto_generated|result_node[7]~9_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # (!\inst11|LPM_MUX_component|auto_generated|result_node[7]~35_combout\ & ((!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~13\) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[7]~35_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[7]~9_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~13\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X28_Y21_N14
\inst6|regs[30][7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][7]~43_combout\ = (\inst6|regs[30][7]~regout\ & (\inst6|regs[30][6]~42\ $ (GND))) # (!\inst6|regs[30][7]~regout\ & (!\inst6|regs[30][6]~42\ & VCC))
-- \inst6|regs[30][7]~44\ = CARRY((\inst6|regs[30][7]~regout\ & !\inst6|regs[30][6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][7]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][6]~42\,
	combout => \inst6|regs[30][7]~43_combout\,
	cout => \inst6|regs[30][7]~44\);

-- Location: LCFF_X28_Y21_N17
\inst6|regs[30][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][8]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][8]~regout\);

-- Location: LCCOMB_X27_Y21_N2
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[10]~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a10~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a42~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[10]~10_combout\);

-- Location: LCFF_X27_Y21_N23
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[11]~11_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~43_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11));

-- Location: LCCOMB_X21_Y24_N12
\inst5|pc[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[7]~40_combout\ = (\inst5|pc\(7) & (!\inst5|pc[6]~38\)) # (!\inst5|pc\(7) & ((\inst5|pc[6]~38\) # (GND)))
-- \inst5|pc[7]~41\ = CARRY((!\inst5|pc[6]~38\) # (!\inst5|pc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(7),
	datad => VCC,
	cin => \inst5|pc[6]~38\,
	combout => \inst5|pc[7]~40_combout\,
	cout => \inst5|pc[7]~41\);

-- Location: LCFF_X21_Y24_N15
\inst5|pc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[8]~42_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(8));

-- Location: LCCOMB_X22_Y24_N16
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ = ((\inst11|LPM_MUX_component|auto_generated|result_node[8]~39_combout\ $ (\inst10|LPM_MUX_component|auto_generated|result_node[8]~10_combout\ $ 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~15\)))) # (GND)
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~17\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[8]~39_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[8]~10_combout\) # 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~15\))) # (!\inst11|LPM_MUX_component|auto_generated|result_node[8]~39_combout\ & (\inst10|LPM_MUX_component|auto_generated|result_node[8]~10_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[8]~39_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[8]~10_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~15\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X28_Y21_N16
\inst6|regs[30][8]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][8]~45_combout\ = (\inst6|regs[30][8]~regout\ & (!\inst6|regs[30][7]~44\)) # (!\inst6|regs[30][8]~regout\ & ((\inst6|regs[30][7]~44\) # (GND)))
-- \inst6|regs[30][8]~46\ = CARRY((!\inst6|regs[30][7]~44\) # (!\inst6|regs[30][8]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][8]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][7]~44\,
	combout => \inst6|regs[30][8]~45_combout\,
	cout => \inst6|regs[30][8]~46\);

-- Location: LCFF_X28_Y21_N19
\inst6|regs[30][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][9]~regout\);

-- Location: LCCOMB_X27_Y21_N22
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[11]~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a11~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a43~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[11]~11_combout\);

-- Location: LCFF_X27_Y21_N1
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[12]~12_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~44_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12));

-- Location: LCCOMB_X21_Y24_N14
\inst5|pc[8]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[8]~42_combout\ = (\inst5|pc\(8) & (\inst5|pc[7]~41\ $ (GND))) # (!\inst5|pc\(8) & (!\inst5|pc[7]~41\ & VCC))
-- \inst5|pc[8]~43\ = CARRY((\inst5|pc\(8) & !\inst5|pc[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(8),
	datad => VCC,
	cin => \inst5|pc[7]~41\,
	combout => \inst5|pc[8]~42_combout\,
	cout => \inst5|pc[8]~43\);

-- Location: LCFF_X21_Y24_N17
\inst5|pc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[9]~44_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(9));

-- Location: LCCOMB_X22_Y24_N18
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ = (\inst11|LPM_MUX_component|auto_generated|result_node[9]~43_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[9]~11_combout\ & 
-- (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~17\ & VCC)) # (!\inst10|LPM_MUX_component|auto_generated|result_node[9]~11_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~17\)))) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[9]~43_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[9]~11_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[9]~11_combout\ & ((\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~17\) # (GND)))))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~19\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[9]~43_combout\ & (!\inst10|LPM_MUX_component|auto_generated|result_node[9]~11_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # (!\inst11|LPM_MUX_component|auto_generated|result_node[9]~43_combout\ & ((!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~17\) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[9]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[9]~43_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[9]~11_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~17\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X28_Y21_N18
\inst6|regs[30][9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][9]~47_combout\ = (\inst6|regs[30][9]~regout\ & (\inst6|regs[30][8]~46\ $ (GND))) # (!\inst6|regs[30][9]~regout\ & (!\inst6|regs[30][8]~46\ & VCC))
-- \inst6|regs[30][9]~48\ = CARRY((\inst6|regs[30][9]~regout\ & !\inst6|regs[30][8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][9]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][8]~46\,
	combout => \inst6|regs[30][9]~47_combout\,
	cout => \inst6|regs[30][9]~48\);

-- Location: LCFF_X28_Y21_N21
\inst6|regs[30][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][10]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][10]~regout\);

-- Location: LCCOMB_X27_Y21_N0
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[12]~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a44~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a12~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[12]~12_combout\);

-- Location: LCFF_X27_Y21_N13
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[13]~13_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~45_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13));

-- Location: LCCOMB_X21_Y24_N16
\inst5|pc[9]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[9]~44_combout\ = (\inst5|pc\(9) & (!\inst5|pc[8]~43\)) # (!\inst5|pc\(9) & ((\inst5|pc[8]~43\) # (GND)))
-- \inst5|pc[9]~45\ = CARRY((!\inst5|pc[8]~43\) # (!\inst5|pc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(9),
	datad => VCC,
	cin => \inst5|pc[8]~43\,
	combout => \inst5|pc[9]~44_combout\,
	cout => \inst5|pc[9]~45\);

-- Location: LCFF_X21_Y24_N19
\inst5|pc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[10]~46_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(10));

-- Location: LCCOMB_X22_Y24_N20
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ = ((\inst10|LPM_MUX_component|auto_generated|result_node[10]~12_combout\ $ (\inst11|LPM_MUX_component|auto_generated|result_node[10]~46_combout\ $ 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~19\)))) # (GND)
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~21\ = CARRY((\inst10|LPM_MUX_component|auto_generated|result_node[10]~12_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[10]~46_combout\) # 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~19\))) # (!\inst10|LPM_MUX_component|auto_generated|result_node[10]~12_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[10]~46_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_MUX_component|auto_generated|result_node[10]~12_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[10]~46_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~19\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X28_Y21_N20
\inst6|regs[30][10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][10]~49_combout\ = (\inst6|regs[30][10]~regout\ & (!\inst6|regs[30][9]~48\)) # (!\inst6|regs[30][10]~regout\ & ((\inst6|regs[30][9]~48\) # (GND)))
-- \inst6|regs[30][10]~50\ = CARRY((!\inst6|regs[30][9]~48\) # (!\inst6|regs[30][10]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][10]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][9]~48\,
	combout => \inst6|regs[30][10]~49_combout\,
	cout => \inst6|regs[30][10]~50\);

-- Location: LCFF_X28_Y21_N23
\inst6|regs[30][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][11]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][11]~regout\);

-- Location: LCCOMB_X27_Y21_N12
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[13]~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a13~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a45~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[13]~13_combout\);

-- Location: LCFF_X27_Y21_N11
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[14]~14_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~46_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14));

-- Location: LCCOMB_X21_Y24_N18
\inst5|pc[10]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[10]~46_combout\ = (\inst5|pc\(10) & (\inst5|pc[9]~45\ $ (GND))) # (!\inst5|pc\(10) & (!\inst5|pc[9]~45\ & VCC))
-- \inst5|pc[10]~47\ = CARRY((\inst5|pc\(10) & !\inst5|pc[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(10),
	datad => VCC,
	cin => \inst5|pc[9]~45\,
	combout => \inst5|pc[10]~46_combout\,
	cout => \inst5|pc[10]~47\);

-- Location: LCFF_X21_Y24_N21
\inst5|pc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[11]~48_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(11));

-- Location: LCCOMB_X22_Y24_N22
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ = (\inst10|LPM_MUX_component|auto_generated|result_node[11]~13_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[11]~49_combout\ & 
-- (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~21\ & VCC)) # (!\inst11|LPM_MUX_component|auto_generated|result_node[11]~49_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~21\)))) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[11]~13_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[11]~49_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[11]~49_combout\ & ((\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~21\) # (GND)))))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~23\ = CARRY((\inst10|LPM_MUX_component|auto_generated|result_node[11]~13_combout\ & (!\inst11|LPM_MUX_component|auto_generated|result_node[11]~49_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # (!\inst10|LPM_MUX_component|auto_generated|result_node[11]~13_combout\ & ((!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~21\) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[11]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_MUX_component|auto_generated|result_node[11]~13_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[11]~49_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~21\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X28_Y21_N22
\inst6|regs[30][11]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][11]~51_combout\ = (\inst6|regs[30][11]~regout\ & (\inst6|regs[30][10]~50\ $ (GND))) # (!\inst6|regs[30][11]~regout\ & (!\inst6|regs[30][10]~50\ & VCC))
-- \inst6|regs[30][11]~52\ = CARRY((\inst6|regs[30][11]~regout\ & !\inst6|regs[30][10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][11]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][10]~50\,
	combout => \inst6|regs[30][11]~51_combout\,
	cout => \inst6|regs[30][11]~52\);

-- Location: LCFF_X28_Y21_N25
\inst6|regs[30][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][12]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][12]~regout\);

-- Location: LCCOMB_X27_Y21_N10
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[14]~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a46~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a14~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[14]~14_combout\);

-- Location: LCFF_X27_Y21_N29
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[15]~15_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~47_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15));

-- Location: LCCOMB_X21_Y24_N20
\inst5|pc[11]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[11]~48_combout\ = (\inst5|pc\(11) & (!\inst5|pc[10]~47\)) # (!\inst5|pc\(11) & ((\inst5|pc[10]~47\) # (GND)))
-- \inst5|pc[11]~49\ = CARRY((!\inst5|pc[10]~47\) # (!\inst5|pc\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(11),
	datad => VCC,
	cin => \inst5|pc[10]~47\,
	combout => \inst5|pc[11]~48_combout\,
	cout => \inst5|pc[11]~49\);

-- Location: LCFF_X21_Y24_N23
\inst5|pc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[12]~50_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(12));

-- Location: LCCOMB_X22_Y24_N24
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ = ((\inst11|LPM_MUX_component|auto_generated|result_node[12]~53_combout\ $ (\inst10|LPM_MUX_component|auto_generated|result_node[12]~14_combout\ $ 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~23\)))) # (GND)
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~25\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[12]~53_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[12]~14_combout\) # 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~23\))) # (!\inst11|LPM_MUX_component|auto_generated|result_node[12]~53_combout\ & (\inst10|LPM_MUX_component|auto_generated|result_node[12]~14_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[12]~53_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[12]~14_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~23\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X28_Y21_N24
\inst6|regs[30][12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][12]~53_combout\ = (\inst6|regs[30][12]~regout\ & (!\inst6|regs[30][11]~52\)) # (!\inst6|regs[30][12]~regout\ & ((\inst6|regs[30][11]~52\) # (GND)))
-- \inst6|regs[30][12]~54\ = CARRY((!\inst6|regs[30][11]~52\) # (!\inst6|regs[30][12]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][12]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][11]~52\,
	combout => \inst6|regs[30][12]~53_combout\,
	cout => \inst6|regs[30][12]~54\);

-- Location: LCFF_X28_Y21_N27
\inst6|regs[30][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][13]~regout\);

-- Location: LCCOMB_X27_Y21_N28
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[15]~15\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a15~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a47~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[15]~15_combout\);

-- Location: LCFF_X27_Y22_N7
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[16]~16_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~48_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(16));

-- Location: LCCOMB_X21_Y24_N22
\inst5|pc[12]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[12]~50_combout\ = (\inst5|pc\(12) & (\inst5|pc[11]~49\ $ (GND))) # (!\inst5|pc\(12) & (!\inst5|pc[11]~49\ & VCC))
-- \inst5|pc[12]~51\ = CARRY((\inst5|pc\(12) & !\inst5|pc[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(12),
	datad => VCC,
	cin => \inst5|pc[11]~49\,
	combout => \inst5|pc[12]~50_combout\,
	cout => \inst5|pc[12]~51\);

-- Location: LCFF_X21_Y24_N25
\inst5|pc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[13]~52_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(13));

-- Location: LCCOMB_X22_Y24_N26
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ = (\inst11|LPM_MUX_component|auto_generated|result_node[13]~57_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[13]~15_combout\ & 
-- (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~25\ & VCC)) # (!\inst10|LPM_MUX_component|auto_generated|result_node[13]~15_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~25\)))) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[13]~57_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[13]~15_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[13]~15_combout\ & ((\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~25\) # (GND)))))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~27\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[13]~57_combout\ & (!\inst10|LPM_MUX_component|auto_generated|result_node[13]~15_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # (!\inst11|LPM_MUX_component|auto_generated|result_node[13]~57_combout\ & ((!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~25\) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[13]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[13]~57_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[13]~15_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~25\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~27\);

-- Location: LCCOMB_X28_Y21_N26
\inst6|regs[30][13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][13]~55_combout\ = (\inst6|regs[30][13]~regout\ & (\inst6|regs[30][12]~54\ $ (GND))) # (!\inst6|regs[30][13]~regout\ & (!\inst6|regs[30][12]~54\ & VCC))
-- \inst6|regs[30][13]~56\ = CARRY((\inst6|regs[30][13]~regout\ & !\inst6|regs[30][12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][13]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][12]~54\,
	combout => \inst6|regs[30][13]~55_combout\,
	cout => \inst6|regs[30][13]~56\);

-- Location: LCFF_X28_Y21_N29
\inst6|regs[30][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][14]~regout\);

-- Location: LCCOMB_X27_Y22_N6
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[16]~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a48~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a16~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[16]~16_combout\);

-- Location: LCFF_X27_Y22_N13
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[17]~17_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~49_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(17));

-- Location: LCCOMB_X21_Y24_N24
\inst5|pc[13]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[13]~52_combout\ = (\inst5|pc\(13) & (!\inst5|pc[12]~51\)) # (!\inst5|pc\(13) & ((\inst5|pc[12]~51\) # (GND)))
-- \inst5|pc[13]~53\ = CARRY((!\inst5|pc[12]~51\) # (!\inst5|pc\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(13),
	datad => VCC,
	cin => \inst5|pc[12]~51\,
	combout => \inst5|pc[13]~52_combout\,
	cout => \inst5|pc[13]~53\);

-- Location: LCFF_X21_Y24_N27
\inst5|pc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[14]~54_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(14));

-- Location: LCCOMB_X22_Y24_N28
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ = ((\inst11|LPM_MUX_component|auto_generated|result_node[14]~61_combout\ $ (\inst10|LPM_MUX_component|auto_generated|result_node[14]~16_combout\ $ 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~27\)))) # (GND)
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~29\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[14]~61_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[14]~16_combout\) # 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~27\))) # (!\inst11|LPM_MUX_component|auto_generated|result_node[14]~61_combout\ & (\inst10|LPM_MUX_component|auto_generated|result_node[14]~16_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[14]~61_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[14]~16_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~27\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~29\);

-- Location: LCCOMB_X28_Y21_N28
\inst6|regs[30][14]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][14]~57_combout\ = (\inst6|regs[30][14]~regout\ & (!\inst6|regs[30][13]~56\)) # (!\inst6|regs[30][14]~regout\ & ((\inst6|regs[30][13]~56\) # (GND)))
-- \inst6|regs[30][14]~58\ = CARRY((!\inst6|regs[30][13]~56\) # (!\inst6|regs[30][14]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][14]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][13]~56\,
	combout => \inst6|regs[30][14]~57_combout\,
	cout => \inst6|regs[30][14]~58\);

-- Location: LCFF_X28_Y21_N31
\inst6|regs[30][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][15]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][15]~regout\);

-- Location: LCCOMB_X27_Y22_N12
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[17]~17\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a49~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a17~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[17]~17_combout\);

-- Location: LCFF_X27_Y22_N11
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[18]~18_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~50_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(18));

-- Location: LCCOMB_X21_Y24_N26
\inst5|pc[14]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[14]~54_combout\ = (\inst5|pc\(14) & (\inst5|pc[13]~53\ $ (GND))) # (!\inst5|pc\(14) & (!\inst5|pc[13]~53\ & VCC))
-- \inst5|pc[14]~55\ = CARRY((\inst5|pc\(14) & !\inst5|pc[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(14),
	datad => VCC,
	cin => \inst5|pc[13]~53\,
	combout => \inst5|pc[14]~54_combout\,
	cout => \inst5|pc[14]~55\);

-- Location: LCFF_X21_Y24_N29
\inst5|pc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[15]~56_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(15));

-- Location: LCCOMB_X22_Y24_N30
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ = (\inst10|LPM_MUX_component|auto_generated|result_node[15]~17_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[15]~64_combout\ & 
-- (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~29\ & VCC)) # (!\inst11|LPM_MUX_component|auto_generated|result_node[15]~64_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~29\)))) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[15]~17_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[15]~64_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~29\)) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[15]~64_combout\ & ((\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (GND)))))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~31\ = CARRY((\inst10|LPM_MUX_component|auto_generated|result_node[15]~17_combout\ & (!\inst11|LPM_MUX_component|auto_generated|result_node[15]~64_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~29\)) # (!\inst10|LPM_MUX_component|auto_generated|result_node[15]~17_combout\ & ((!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~29\) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[15]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_MUX_component|auto_generated|result_node[15]~17_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[15]~64_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~29\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~31\);

-- Location: LCCOMB_X28_Y21_N30
\inst6|regs[30][15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][15]~59_combout\ = (\inst6|regs[30][15]~regout\ & (\inst6|regs[30][14]~58\ $ (GND))) # (!\inst6|regs[30][15]~regout\ & (!\inst6|regs[30][14]~58\ & VCC))
-- \inst6|regs[30][15]~60\ = CARRY((\inst6|regs[30][15]~regout\ & !\inst6|regs[30][14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][15]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][14]~58\,
	combout => \inst6|regs[30][15]~59_combout\,
	cout => \inst6|regs[30][15]~60\);

-- Location: LCFF_X28_Y20_N1
\inst6|regs[30][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][16]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][16]~regout\);

-- Location: M4K_X26_Y22
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "lil_procy_ram.mif",
	init_file_layout => "port_a",
	logical_ram_name => "dmem:inst14|altsyncram:altsyncram_component|altsyncram_fcm1:auto_generated|altsyncram_lvh2:altsyncram1|altsyncram_djc2:altsyncram3|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 14,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 14,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|memwrite_out~regout\,
	portbrewe => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|decode6|eq_node[0]~0_combout\,
	clk0 => \inst16|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	ena1 => \inst14|altsyncram_component|auto_generated|mgl_prim2|ALT_INV_ram_rom_addr_reg\(7),
	portadatain => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAIN_bus\,
	portbdatain => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAIN_bus\,
	portaaddr => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTAADDR_bus\,
	portbaddr => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTADATAOUT_bus\,
	portbdataout => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18_PORTBDATAOUT_bus\);

-- Location: M4K_X26_Y23
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "lil_procy_ram.mif",
	init_file_layout => "port_a",
	logical_ram_name => "dmem:inst14|altsyncram:altsyncram_component|altsyncram_fcm1:auto_generated|altsyncram_lvh2:altsyncram1|altsyncram_djc2:altsyncram3|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 14,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 14,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|decode6|eq_node[1]~1_combout\,
	clk0 => \inst16|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	ena0 => GND,
	ena1 => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	portadatain => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAIN_bus\,
	portbdatain => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAIN_bus\,
	portaaddr => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTAADDR_bus\,
	portbaddr => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTADATAOUT_bus\,
	portbdataout => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X27_Y22_N10
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[18]~18\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a50~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[18]~18_combout\);

-- Location: LCFF_X27_Y22_N29
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[19]~19_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~51_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(19));

-- Location: LCCOMB_X21_Y24_N28
\inst5|pc[15]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[15]~56_combout\ = (\inst5|pc\(15) & (!\inst5|pc[14]~55\)) # (!\inst5|pc\(15) & ((\inst5|pc[14]~55\) # (GND)))
-- \inst5|pc[15]~57\ = CARRY((!\inst5|pc[14]~55\) # (!\inst5|pc\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(15),
	datad => VCC,
	cin => \inst5|pc[14]~55\,
	combout => \inst5|pc[15]~56_combout\,
	cout => \inst5|pc[15]~57\);

-- Location: LCFF_X21_Y24_N31
\inst5|pc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[16]~58_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(16));

-- Location: LCCOMB_X22_Y23_N0
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ = ((\inst11|LPM_MUX_component|auto_generated|result_node[16]~68_combout\ $ (\inst10|LPM_MUX_component|auto_generated|result_node[16]~18_combout\ $ 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~31\)))) # (GND)
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~33\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[16]~68_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[16]~18_combout\) # 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~31\))) # (!\inst11|LPM_MUX_component|auto_generated|result_node[16]~68_combout\ & (\inst10|LPM_MUX_component|auto_generated|result_node[16]~18_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[16]~68_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[16]~18_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~31\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~33\);

-- Location: LCCOMB_X28_Y20_N0
\inst6|regs[30][16]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][16]~61_combout\ = (\inst6|regs[30][16]~regout\ & (!\inst6|regs[30][15]~60\)) # (!\inst6|regs[30][16]~regout\ & ((\inst6|regs[30][15]~60\) # (GND)))
-- \inst6|regs[30][16]~62\ = CARRY((!\inst6|regs[30][15]~60\) # (!\inst6|regs[30][16]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][16]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][15]~60\,
	combout => \inst6|regs[30][16]~61_combout\,
	cout => \inst6|regs[30][16]~62\);

-- Location: LCFF_X28_Y20_N3
\inst6|regs[30][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][17]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][17]~regout\);

-- Location: LCCOMB_X27_Y22_N28
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[19]~19\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a51~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a19~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[19]~19_combout\);

-- Location: LCFF_X27_Y22_N3
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[20]~20_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~52_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(20));

-- Location: LCCOMB_X21_Y24_N30
\inst5|pc[16]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[16]~58_combout\ = (\inst5|pc\(16) & (\inst5|pc[15]~57\ $ (GND))) # (!\inst5|pc\(16) & (!\inst5|pc[15]~57\ & VCC))
-- \inst5|pc[16]~59\ = CARRY((\inst5|pc\(16) & !\inst5|pc[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(16),
	datad => VCC,
	cin => \inst5|pc[15]~57\,
	combout => \inst5|pc[16]~58_combout\,
	cout => \inst5|pc[16]~59\);

-- Location: LCFF_X21_Y23_N1
\inst5|pc[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[17]~60_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(17));

-- Location: LCCOMB_X22_Y23_N2
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ = (\inst11|LPM_MUX_component|auto_generated|result_node[17]~72_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[17]~19_combout\ & 
-- (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~33\ & VCC)) # (!\inst10|LPM_MUX_component|auto_generated|result_node[17]~19_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~33\)))) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[17]~72_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[17]~19_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~33\)) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[17]~19_combout\ & ((\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~33\) # (GND)))))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~35\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[17]~72_combout\ & (!\inst10|LPM_MUX_component|auto_generated|result_node[17]~19_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~33\)) # (!\inst11|LPM_MUX_component|auto_generated|result_node[17]~72_combout\ & ((!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~33\) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[17]~72_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[17]~19_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~33\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~35\);

-- Location: LCCOMB_X28_Y20_N2
\inst6|regs[30][17]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][17]~63_combout\ = (\inst6|regs[30][17]~regout\ & (\inst6|regs[30][16]~62\ $ (GND))) # (!\inst6|regs[30][17]~regout\ & (!\inst6|regs[30][16]~62\ & VCC))
-- \inst6|regs[30][17]~64\ = CARRY((\inst6|regs[30][17]~regout\ & !\inst6|regs[30][16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][17]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][16]~62\,
	combout => \inst6|regs[30][17]~63_combout\,
	cout => \inst6|regs[30][17]~64\);

-- Location: LCFF_X28_Y20_N5
\inst6|regs[30][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][18]~regout\);

-- Location: LCCOMB_X27_Y22_N2
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[20]~20\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a20~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a52~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[20]~20_combout\);

-- Location: LCFF_X27_Y22_N19
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[21]~21_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~53_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(21));

-- Location: LCCOMB_X21_Y23_N0
\inst5|pc[17]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[17]~60_combout\ = (\inst5|pc\(17) & (!\inst5|pc[16]~59\)) # (!\inst5|pc\(17) & ((\inst5|pc[16]~59\) # (GND)))
-- \inst5|pc[17]~61\ = CARRY((!\inst5|pc[16]~59\) # (!\inst5|pc\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(17),
	datad => VCC,
	cin => \inst5|pc[16]~59\,
	combout => \inst5|pc[17]~60_combout\,
	cout => \inst5|pc[17]~61\);

-- Location: LCFF_X21_Y23_N3
\inst5|pc[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[18]~62_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~36_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(18));

-- Location: LCCOMB_X22_Y23_N4
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~36_combout\ = ((\inst11|LPM_MUX_component|auto_generated|result_node[18]~76_combout\ $ (\inst10|LPM_MUX_component|auto_generated|result_node[18]~20_combout\ $ 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~35\)))) # (GND)
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~37\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[18]~76_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[18]~20_combout\) # 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~35\))) # (!\inst11|LPM_MUX_component|auto_generated|result_node[18]~76_combout\ & (\inst10|LPM_MUX_component|auto_generated|result_node[18]~20_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[18]~76_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[18]~20_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~35\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~36_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~37\);

-- Location: LCCOMB_X28_Y20_N4
\inst6|regs[30][18]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][18]~65_combout\ = (\inst6|regs[30][18]~regout\ & (!\inst6|regs[30][17]~64\)) # (!\inst6|regs[30][18]~regout\ & ((\inst6|regs[30][17]~64\) # (GND)))
-- \inst6|regs[30][18]~66\ = CARRY((!\inst6|regs[30][17]~64\) # (!\inst6|regs[30][18]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][18]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][17]~64\,
	combout => \inst6|regs[30][18]~65_combout\,
	cout => \inst6|regs[30][18]~66\);

-- Location: LCFF_X28_Y20_N7
\inst6|regs[30][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][19]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][19]~regout\);

-- Location: LCCOMB_X27_Y22_N18
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[21]~21\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a21~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a53~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[21]~21_combout\);

-- Location: LCFF_X27_Y22_N1
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[22]~22_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~54_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(22));

-- Location: LCCOMB_X21_Y23_N2
\inst5|pc[18]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[18]~62_combout\ = (\inst5|pc\(18) & (\inst5|pc[17]~61\ $ (GND))) # (!\inst5|pc\(18) & (!\inst5|pc[17]~61\ & VCC))
-- \inst5|pc[18]~63\ = CARRY((\inst5|pc\(18) & !\inst5|pc[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(18),
	datad => VCC,
	cin => \inst5|pc[17]~61\,
	combout => \inst5|pc[18]~62_combout\,
	cout => \inst5|pc[18]~63\);

-- Location: LCFF_X21_Y23_N5
\inst5|pc[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[19]~64_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~38_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(19));

-- Location: LCCOMB_X22_Y23_N6
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~38_combout\ = (\inst11|LPM_MUX_component|auto_generated|result_node[19]~80_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[19]~21_combout\ & 
-- (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~37\ & VCC)) # (!\inst10|LPM_MUX_component|auto_generated|result_node[19]~21_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~37\)))) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[19]~80_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[19]~21_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~37\)) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[19]~21_combout\ & ((\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~37\) # (GND)))))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~39\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[19]~80_combout\ & (!\inst10|LPM_MUX_component|auto_generated|result_node[19]~21_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~37\)) # (!\inst11|LPM_MUX_component|auto_generated|result_node[19]~80_combout\ & ((!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~37\) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[19]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[19]~80_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[19]~21_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~37\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~38_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~39\);

-- Location: LCCOMB_X28_Y20_N6
\inst6|regs[30][19]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][19]~67_combout\ = (\inst6|regs[30][19]~regout\ & (\inst6|regs[30][18]~66\ $ (GND))) # (!\inst6|regs[30][19]~regout\ & (!\inst6|regs[30][18]~66\ & VCC))
-- \inst6|regs[30][19]~68\ = CARRY((\inst6|regs[30][19]~regout\ & !\inst6|regs[30][18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][19]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][18]~66\,
	combout => \inst6|regs[30][19]~67_combout\,
	cout => \inst6|regs[30][19]~68\);

-- Location: LCFF_X28_Y20_N9
\inst6|regs[30][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][20]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][20]~regout\);

-- Location: LCCOMB_X27_Y22_N0
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[22]~22\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a54~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a22~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[22]~22_combout\);

-- Location: LCFF_X27_Y22_N27
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[23]~23_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~55_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(23));

-- Location: LCCOMB_X21_Y23_N4
\inst5|pc[19]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[19]~64_combout\ = (\inst5|pc\(19) & (!\inst5|pc[18]~63\)) # (!\inst5|pc\(19) & ((\inst5|pc[18]~63\) # (GND)))
-- \inst5|pc[19]~65\ = CARRY((!\inst5|pc[18]~63\) # (!\inst5|pc\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(19),
	datad => VCC,
	cin => \inst5|pc[18]~63\,
	combout => \inst5|pc[19]~64_combout\,
	cout => \inst5|pc[19]~65\);

-- Location: LCFF_X21_Y23_N7
\inst5|pc[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[20]~66_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~40_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(20));

-- Location: LCCOMB_X22_Y23_N8
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~40_combout\ = ((\inst11|LPM_MUX_component|auto_generated|result_node[20]~84_combout\ $ (\inst10|LPM_MUX_component|auto_generated|result_node[20]~22_combout\ $ 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~39\)))) # (GND)
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~41\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[20]~84_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[20]~22_combout\) # 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~39\))) # (!\inst11|LPM_MUX_component|auto_generated|result_node[20]~84_combout\ & (\inst10|LPM_MUX_component|auto_generated|result_node[20]~22_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[20]~84_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[20]~22_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~39\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~40_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~41\);

-- Location: LCCOMB_X28_Y20_N8
\inst6|regs[30][20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][20]~69_combout\ = (\inst6|regs[30][20]~regout\ & (!\inst6|regs[30][19]~68\)) # (!\inst6|regs[30][20]~regout\ & ((\inst6|regs[30][19]~68\) # (GND)))
-- \inst6|regs[30][20]~70\ = CARRY((!\inst6|regs[30][19]~68\) # (!\inst6|regs[30][20]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][20]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][19]~68\,
	combout => \inst6|regs[30][20]~69_combout\,
	cout => \inst6|regs[30][20]~70\);

-- Location: LCFF_X28_Y20_N11
\inst6|regs[30][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][21]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][21]~regout\);

-- Location: LCCOMB_X27_Y22_N26
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[23]~23\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a55~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a23~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[23]~23_combout\);

-- Location: LCFF_X25_Y22_N19
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[24]~24_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~56_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(24));

-- Location: LCCOMB_X21_Y23_N6
\inst5|pc[20]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[20]~66_combout\ = (\inst5|pc\(20) & (\inst5|pc[19]~65\ $ (GND))) # (!\inst5|pc\(20) & (!\inst5|pc[19]~65\ & VCC))
-- \inst5|pc[20]~67\ = CARRY((\inst5|pc\(20) & !\inst5|pc[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(20),
	datad => VCC,
	cin => \inst5|pc[19]~65\,
	combout => \inst5|pc[20]~66_combout\,
	cout => \inst5|pc[20]~67\);

-- Location: LCFF_X21_Y23_N9
\inst5|pc[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[21]~68_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~42_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(21));

-- Location: LCCOMB_X22_Y23_N10
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~42_combout\ = (\inst11|LPM_MUX_component|auto_generated|result_node[21]~88_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[21]~23_combout\ & 
-- (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~41\ & VCC)) # (!\inst10|LPM_MUX_component|auto_generated|result_node[21]~23_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~41\)))) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[21]~88_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[21]~23_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~41\)) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[21]~23_combout\ & ((\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~41\) # (GND)))))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~43\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[21]~88_combout\ & (!\inst10|LPM_MUX_component|auto_generated|result_node[21]~23_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~41\)) # (!\inst11|LPM_MUX_component|auto_generated|result_node[21]~88_combout\ & ((!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~41\) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[21]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[21]~88_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[21]~23_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~41\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~42_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~43\);

-- Location: LCCOMB_X28_Y20_N10
\inst6|regs[30][21]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][21]~71_combout\ = (\inst6|regs[30][21]~regout\ & (\inst6|regs[30][20]~70\ $ (GND))) # (!\inst6|regs[30][21]~regout\ & (!\inst6|regs[30][20]~70\ & VCC))
-- \inst6|regs[30][21]~72\ = CARRY((\inst6|regs[30][21]~regout\ & !\inst6|regs[30][20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][21]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][20]~70\,
	combout => \inst6|regs[30][21]~71_combout\,
	cout => \inst6|regs[30][21]~72\);

-- Location: LCFF_X28_Y20_N13
\inst6|regs[30][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][22]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][22]~regout\);

-- Location: LCCOMB_X25_Y22_N18
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[24]~24\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a56~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a24~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[24]~24_combout\);

-- Location: LCFF_X25_Y22_N15
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[25]~25_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~57_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(25));

-- Location: LCCOMB_X21_Y23_N8
\inst5|pc[21]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[21]~68_combout\ = (\inst5|pc\(21) & (!\inst5|pc[20]~67\)) # (!\inst5|pc\(21) & ((\inst5|pc[20]~67\) # (GND)))
-- \inst5|pc[21]~69\ = CARRY((!\inst5|pc[20]~67\) # (!\inst5|pc\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(21),
	datad => VCC,
	cin => \inst5|pc[20]~67\,
	combout => \inst5|pc[21]~68_combout\,
	cout => \inst5|pc[21]~69\);

-- Location: LCFF_X21_Y23_N11
\inst5|pc[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[22]~70_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~44_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(22));

-- Location: LCCOMB_X22_Y23_N12
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~44_combout\ = ((\inst10|LPM_MUX_component|auto_generated|result_node[22]~24_combout\ $ (\inst11|LPM_MUX_component|auto_generated|result_node[22]~92_combout\ $ 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~43\)))) # (GND)
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~45\ = CARRY((\inst10|LPM_MUX_component|auto_generated|result_node[22]~24_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[22]~92_combout\) # 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~43\))) # (!\inst10|LPM_MUX_component|auto_generated|result_node[22]~24_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[22]~92_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_MUX_component|auto_generated|result_node[22]~24_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[22]~92_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~43\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~44_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~45\);

-- Location: LCCOMB_X28_Y20_N12
\inst6|regs[30][22]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][22]~73_combout\ = (\inst6|regs[30][22]~regout\ & (!\inst6|regs[30][21]~72\)) # (!\inst6|regs[30][22]~regout\ & ((\inst6|regs[30][21]~72\) # (GND)))
-- \inst6|regs[30][22]~74\ = CARRY((!\inst6|regs[30][21]~72\) # (!\inst6|regs[30][22]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][22]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][21]~72\,
	combout => \inst6|regs[30][22]~73_combout\,
	cout => \inst6|regs[30][22]~74\);

-- Location: LCFF_X28_Y20_N15
\inst6|regs[30][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][23]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][23]~regout\);

-- Location: LCCOMB_X25_Y22_N14
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[25]~25\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a57~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a25~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[25]~25_combout\);

-- Location: LCFF_X25_Y22_N27
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[26]~26_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~58_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(26));

-- Location: LCCOMB_X21_Y23_N10
\inst5|pc[22]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[22]~70_combout\ = (\inst5|pc\(22) & (\inst5|pc[21]~69\ $ (GND))) # (!\inst5|pc\(22) & (!\inst5|pc[21]~69\ & VCC))
-- \inst5|pc[22]~71\ = CARRY((\inst5|pc\(22) & !\inst5|pc[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(22),
	datad => VCC,
	cin => \inst5|pc[21]~69\,
	combout => \inst5|pc[22]~70_combout\,
	cout => \inst5|pc[22]~71\);

-- Location: LCFF_X21_Y23_N13
\inst5|pc[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[23]~72_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~46_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(23));

-- Location: LCCOMB_X22_Y23_N14
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~46_combout\ = (\inst10|LPM_MUX_component|auto_generated|result_node[23]~25_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[23]~96_combout\ & 
-- (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~45\ & VCC)) # (!\inst11|LPM_MUX_component|auto_generated|result_node[23]~96_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~45\)))) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[23]~25_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[23]~96_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~45\)) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[23]~96_combout\ & ((\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~45\) # (GND)))))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~47\ = CARRY((\inst10|LPM_MUX_component|auto_generated|result_node[23]~25_combout\ & (!\inst11|LPM_MUX_component|auto_generated|result_node[23]~96_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~45\)) # (!\inst10|LPM_MUX_component|auto_generated|result_node[23]~25_combout\ & ((!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~45\) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[23]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_MUX_component|auto_generated|result_node[23]~25_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[23]~96_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~45\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~46_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~47\);

-- Location: LCCOMB_X28_Y20_N14
\inst6|regs[30][23]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][23]~75_combout\ = (\inst6|regs[30][23]~regout\ & (\inst6|regs[30][22]~74\ $ (GND))) # (!\inst6|regs[30][23]~regout\ & (!\inst6|regs[30][22]~74\ & VCC))
-- \inst6|regs[30][23]~76\ = CARRY((\inst6|regs[30][23]~regout\ & !\inst6|regs[30][22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][23]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][22]~74\,
	combout => \inst6|regs[30][23]~75_combout\,
	cout => \inst6|regs[30][23]~76\);

-- Location: LCFF_X28_Y20_N17
\inst6|regs[30][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][24]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][24]~regout\);

-- Location: LCCOMB_X25_Y22_N26
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[26]~26\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a26~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a58~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[26]~26_combout\);

-- Location: LCFF_X25_Y22_N11
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~27_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~59_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(27));

-- Location: LCCOMB_X21_Y23_N12
\inst5|pc[23]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[23]~72_combout\ = (\inst5|pc\(23) & (!\inst5|pc[22]~71\)) # (!\inst5|pc\(23) & ((\inst5|pc[22]~71\) # (GND)))
-- \inst5|pc[23]~73\ = CARRY((!\inst5|pc[22]~71\) # (!\inst5|pc\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(23),
	datad => VCC,
	cin => \inst5|pc[22]~71\,
	combout => \inst5|pc[23]~72_combout\,
	cout => \inst5|pc[23]~73\);

-- Location: LCFF_X21_Y23_N15
\inst5|pc[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[24]~74_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~48_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(24));

-- Location: LCCOMB_X22_Y23_N16
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~48_combout\ = ((\inst11|LPM_MUX_component|auto_generated|result_node[24]~100_combout\ $ (\inst10|LPM_MUX_component|auto_generated|result_node[24]~26_combout\ $ 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~47\)))) # (GND)
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~49\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[24]~100_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[24]~26_combout\) # 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~47\))) # (!\inst11|LPM_MUX_component|auto_generated|result_node[24]~100_combout\ & (\inst10|LPM_MUX_component|auto_generated|result_node[24]~26_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[24]~100_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[24]~26_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~47\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~48_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~49\);

-- Location: LCCOMB_X28_Y20_N16
\inst6|regs[30][24]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][24]~77_combout\ = (\inst6|regs[30][24]~regout\ & (!\inst6|regs[30][23]~76\)) # (!\inst6|regs[30][24]~regout\ & ((\inst6|regs[30][23]~76\) # (GND)))
-- \inst6|regs[30][24]~78\ = CARRY((!\inst6|regs[30][23]~76\) # (!\inst6|regs[30][24]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][24]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][23]~76\,
	combout => \inst6|regs[30][24]~77_combout\,
	cout => \inst6|regs[30][24]~78\);

-- Location: LCFF_X28_Y20_N19
\inst6|regs[30][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][25]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][25]~regout\);

-- Location: LCCOMB_X25_Y22_N10
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~27\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a59~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a27~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[27]~27_combout\);

-- Location: LCFF_X25_Y22_N29
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[28]~28_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~60_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(28));

-- Location: LCCOMB_X21_Y23_N14
\inst5|pc[24]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[24]~74_combout\ = (\inst5|pc\(24) & (\inst5|pc[23]~73\ $ (GND))) # (!\inst5|pc\(24) & (!\inst5|pc[23]~73\ & VCC))
-- \inst5|pc[24]~75\ = CARRY((\inst5|pc\(24) & !\inst5|pc[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(24),
	datad => VCC,
	cin => \inst5|pc[23]~73\,
	combout => \inst5|pc[24]~74_combout\,
	cout => \inst5|pc[24]~75\);

-- Location: LCFF_X21_Y23_N17
\inst5|pc[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[25]~76_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~50_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(25));

-- Location: LCCOMB_X22_Y23_N18
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~50_combout\ = (\inst11|LPM_MUX_component|auto_generated|result_node[25]~104_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[25]~27_combout\ & 
-- (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~49\ & VCC)) # (!\inst10|LPM_MUX_component|auto_generated|result_node[25]~27_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~49\)))) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[25]~104_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[25]~27_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~49\)) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[25]~27_combout\ & ((\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~49\) # (GND)))))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~51\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[25]~104_combout\ & (!\inst10|LPM_MUX_component|auto_generated|result_node[25]~27_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~49\)) # (!\inst11|LPM_MUX_component|auto_generated|result_node[25]~104_combout\ & ((!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~49\) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[25]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[25]~104_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[25]~27_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~49\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~50_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~51\);

-- Location: LCCOMB_X28_Y20_N18
\inst6|regs[30][25]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][25]~79_combout\ = (\inst6|regs[30][25]~regout\ & (\inst6|regs[30][24]~78\ $ (GND))) # (!\inst6|regs[30][25]~regout\ & (!\inst6|regs[30][24]~78\ & VCC))
-- \inst6|regs[30][25]~80\ = CARRY((\inst6|regs[30][25]~regout\ & !\inst6|regs[30][24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][25]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][24]~78\,
	combout => \inst6|regs[30][25]~79_combout\,
	cout => \inst6|regs[30][25]~80\);

-- Location: LCFF_X28_Y20_N21
\inst6|regs[30][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][26]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][26]~regout\);

-- Location: LCCOMB_X25_Y22_N28
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[28]~28\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a28~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a60~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[28]~28_combout\);

-- Location: LCFF_X25_Y22_N13
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[29]~29_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~61_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(29));

-- Location: LCCOMB_X21_Y23_N16
\inst5|pc[25]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[25]~76_combout\ = (\inst5|pc\(25) & (!\inst5|pc[24]~75\)) # (!\inst5|pc\(25) & ((\inst5|pc[24]~75\) # (GND)))
-- \inst5|pc[25]~77\ = CARRY((!\inst5|pc[24]~75\) # (!\inst5|pc\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(25),
	datad => VCC,
	cin => \inst5|pc[24]~75\,
	combout => \inst5|pc[25]~76_combout\,
	cout => \inst5|pc[25]~77\);

-- Location: LCFF_X21_Y23_N19
\inst5|pc[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[26]~78_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~52_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(26));

-- Location: LCCOMB_X22_Y23_N20
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~52_combout\ = ((\inst11|LPM_MUX_component|auto_generated|result_node[26]~107_combout\ $ (\inst10|LPM_MUX_component|auto_generated|result_node[26]~28_combout\ $ 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~51\)))) # (GND)
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~53\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[26]~107_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[26]~28_combout\) # 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~51\))) # (!\inst11|LPM_MUX_component|auto_generated|result_node[26]~107_combout\ & (\inst10|LPM_MUX_component|auto_generated|result_node[26]~28_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[26]~107_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[26]~28_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~51\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~52_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~53\);

-- Location: LCCOMB_X28_Y20_N20
\inst6|regs[30][26]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][26]~81_combout\ = (\inst6|regs[30][26]~regout\ & (!\inst6|regs[30][25]~80\)) # (!\inst6|regs[30][26]~regout\ & ((\inst6|regs[30][25]~80\) # (GND)))
-- \inst6|regs[30][26]~82\ = CARRY((!\inst6|regs[30][25]~80\) # (!\inst6|regs[30][26]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][26]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][25]~80\,
	combout => \inst6|regs[30][26]~81_combout\,
	cout => \inst6|regs[30][26]~82\);

-- Location: LCFF_X28_Y20_N23
\inst6|regs[30][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][27]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][27]~regout\);

-- Location: LCCOMB_X25_Y22_N12
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[29]~29\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a29~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a61~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[29]~29_combout\);

-- Location: LCFF_X25_Y22_N3
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[30]~30_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~62_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(30));

-- Location: LCCOMB_X21_Y23_N18
\inst5|pc[26]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[26]~78_combout\ = (\inst5|pc\(26) & (\inst5|pc[25]~77\ $ (GND))) # (!\inst5|pc\(26) & (!\inst5|pc[25]~77\ & VCC))
-- \inst5|pc[26]~79\ = CARRY((\inst5|pc\(26) & !\inst5|pc[25]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(26),
	datad => VCC,
	cin => \inst5|pc[25]~77\,
	combout => \inst5|pc[26]~78_combout\,
	cout => \inst5|pc[26]~79\);

-- Location: LCFF_X21_Y23_N21
\inst5|pc[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[27]~80_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~54_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(27));

-- Location: LCCOMB_X22_Y23_N22
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~54_combout\ = (\inst10|LPM_MUX_component|auto_generated|result_node[27]~29_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[27]~111_combout\ & 
-- (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~53\ & VCC)) # (!\inst11|LPM_MUX_component|auto_generated|result_node[27]~111_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~53\)))) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[27]~29_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[27]~111_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~53\)) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[27]~111_combout\ & ((\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~53\) # (GND)))))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~55\ = CARRY((\inst10|LPM_MUX_component|auto_generated|result_node[27]~29_combout\ & (!\inst11|LPM_MUX_component|auto_generated|result_node[27]~111_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~53\)) # (!\inst10|LPM_MUX_component|auto_generated|result_node[27]~29_combout\ & ((!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~53\) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[27]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_MUX_component|auto_generated|result_node[27]~29_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[27]~111_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~53\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~54_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~55\);

-- Location: LCCOMB_X28_Y20_N22
\inst6|regs[30][27]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][27]~83_combout\ = (\inst6|regs[30][27]~regout\ & (\inst6|regs[30][26]~82\ $ (GND))) # (!\inst6|regs[30][27]~regout\ & (!\inst6|regs[30][26]~82\ & VCC))
-- \inst6|regs[30][27]~84\ = CARRY((\inst6|regs[30][27]~regout\ & !\inst6|regs[30][26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][27]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][26]~82\,
	combout => \inst6|regs[30][27]~83_combout\,
	cout => \inst6|regs[30][27]~84\);

-- Location: LCFF_X28_Y20_N25
\inst6|regs[30][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][28]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][28]~regout\);

-- Location: LCCOMB_X25_Y22_N2
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[30]~30\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a30~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a62~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[30]~30_combout\);

-- Location: LCFF_X25_Y22_N23
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~31_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~63_combout\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(31));

-- Location: LCCOMB_X21_Y23_N20
\inst5|pc[27]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[27]~80_combout\ = (\inst5|pc\(27) & (!\inst5|pc[26]~79\)) # (!\inst5|pc\(27) & ((\inst5|pc[26]~79\) # (GND)))
-- \inst5|pc[27]~81\ = CARRY((!\inst5|pc[26]~79\) # (!\inst5|pc\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(27),
	datad => VCC,
	cin => \inst5|pc[26]~79\,
	combout => \inst5|pc[27]~80_combout\,
	cout => \inst5|pc[27]~81\);

-- Location: LCFF_X21_Y23_N23
\inst5|pc[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[28]~82_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~56_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(28));

-- Location: LCCOMB_X22_Y23_N24
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~56_combout\ = ((\inst11|LPM_MUX_component|auto_generated|result_node[28]~115_combout\ $ (\inst10|LPM_MUX_component|auto_generated|result_node[28]~30_combout\ $ 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~55\)))) # (GND)
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~57\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[28]~115_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[28]~30_combout\) # 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~55\))) # (!\inst11|LPM_MUX_component|auto_generated|result_node[28]~115_combout\ & (\inst10|LPM_MUX_component|auto_generated|result_node[28]~30_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[28]~115_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[28]~30_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~55\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~56_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~57\);

-- Location: LCCOMB_X28_Y20_N24
\inst6|regs[30][28]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][28]~85_combout\ = (\inst6|regs[30][28]~regout\ & (!\inst6|regs[30][27]~84\)) # (!\inst6|regs[30][28]~regout\ & ((\inst6|regs[30][27]~84\) # (GND)))
-- \inst6|regs[30][28]~86\ = CARRY((!\inst6|regs[30][27]~84\) # (!\inst6|regs[30][28]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][28]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][27]~84\,
	combout => \inst6|regs[30][28]~85_combout\,
	cout => \inst6|regs[30][28]~86\);

-- Location: LCFF_X28_Y20_N27
\inst6|regs[30][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][29]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][29]~regout\);

-- Location: LCCOMB_X25_Y22_N22
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~31\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a31~PORTBDATAOUT0\,
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a63~PORTBDATAOUT0\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[31]~31_combout\);

-- Location: LCCOMB_X21_Y23_N22
\inst5|pc[28]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[28]~82_combout\ = (\inst5|pc\(28) & (\inst5|pc[27]~81\ $ (GND))) # (!\inst5|pc\(28) & (!\inst5|pc[27]~81\ & VCC))
-- \inst5|pc[28]~83\ = CARRY((\inst5|pc\(28) & !\inst5|pc[27]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(28),
	datad => VCC,
	cin => \inst5|pc[27]~81\,
	combout => \inst5|pc[28]~82_combout\,
	cout => \inst5|pc[28]~83\);

-- Location: LCFF_X21_Y23_N25
\inst5|pc[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[29]~84_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~58_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(29));

-- Location: LCCOMB_X22_Y23_N26
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~58_combout\ = (\inst10|LPM_MUX_component|auto_generated|result_node[29]~31_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[29]~119_combout\ & 
-- (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~57\ & VCC)) # (!\inst11|LPM_MUX_component|auto_generated|result_node[29]~119_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~57\)))) # 
-- (!\inst10|LPM_MUX_component|auto_generated|result_node[29]~31_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[29]~119_combout\ & (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~57\)) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[29]~119_combout\ & ((\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~57\) # (GND)))))
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~59\ = CARRY((\inst10|LPM_MUX_component|auto_generated|result_node[29]~31_combout\ & (!\inst11|LPM_MUX_component|auto_generated|result_node[29]~119_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~57\)) # (!\inst10|LPM_MUX_component|auto_generated|result_node[29]~31_combout\ & ((!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~57\) # 
-- (!\inst11|LPM_MUX_component|auto_generated|result_node[29]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_MUX_component|auto_generated|result_node[29]~31_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[29]~119_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~57\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~58_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~59\);

-- Location: LCCOMB_X28_Y20_N26
\inst6|regs[30][29]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][29]~87_combout\ = (\inst6|regs[30][29]~regout\ & (\inst6|regs[30][28]~86\ $ (GND))) # (!\inst6|regs[30][29]~regout\ & (!\inst6|regs[30][28]~86\ & VCC))
-- \inst6|regs[30][29]~88\ = CARRY((\inst6|regs[30][29]~regout\ & !\inst6|regs[30][28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][29]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][28]~86\,
	combout => \inst6|regs[30][29]~87_combout\,
	cout => \inst6|regs[30][29]~88\);

-- Location: LCFF_X28_Y20_N29
\inst6|regs[30][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][30]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][30]~regout\);

-- Location: LCCOMB_X21_Y23_N24
\inst5|pc[29]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[29]~84_combout\ = (\inst5|pc\(29) & (!\inst5|pc[28]~83\)) # (!\inst5|pc\(29) & ((\inst5|pc[28]~83\) # (GND)))
-- \inst5|pc[29]~85\ = CARRY((!\inst5|pc[28]~83\) # (!\inst5|pc\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(29),
	datad => VCC,
	cin => \inst5|pc[28]~83\,
	combout => \inst5|pc[29]~84_combout\,
	cout => \inst5|pc[29]~85\);

-- Location: LCFF_X21_Y23_N27
\inst5|pc[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[30]~86_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~60_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(30));

-- Location: LCCOMB_X22_Y23_N28
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~60_combout\ = ((\inst11|LPM_MUX_component|auto_generated|result_node[30]~123_combout\ $ (\inst10|LPM_MUX_component|auto_generated|result_node[30]~32_combout\ $ 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~59\)))) # (GND)
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~61\ = CARRY((\inst11|LPM_MUX_component|auto_generated|result_node[30]~123_combout\ & ((\inst10|LPM_MUX_component|auto_generated|result_node[30]~32_combout\) # 
-- (!\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~59\))) # (!\inst11|LPM_MUX_component|auto_generated|result_node[30]~123_combout\ & (\inst10|LPM_MUX_component|auto_generated|result_node[30]~32_combout\ & 
-- !\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[30]~123_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[30]~32_combout\,
	datad => VCC,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~59\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~60_combout\,
	cout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~61\);

-- Location: LCCOMB_X28_Y20_N28
\inst6|regs[30][30]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][30]~89_combout\ = (\inst6|regs[30][30]~regout\ & (!\inst6|regs[30][29]~88\)) # (!\inst6|regs[30][30]~regout\ & ((\inst6|regs[30][29]~88\) # (GND)))
-- \inst6|regs[30][30]~90\ = CARRY((!\inst6|regs[30][29]~88\) # (!\inst6|regs[30][30]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[30][30]~regout\,
	datad => VCC,
	cin => \inst6|regs[30][29]~88\,
	combout => \inst6|regs[30][30]~89_combout\,
	cout => \inst6|regs[30][30]~90\);

-- Location: LCFF_X28_Y20_N31
\inst6|regs[30][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][31]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][31]~regout\);

-- Location: LCCOMB_X21_Y23_N26
\inst5|pc[30]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[30]~86_combout\ = (\inst5|pc\(30) & (\inst5|pc[29]~85\ $ (GND))) # (!\inst5|pc\(30) & (!\inst5|pc[29]~85\ & VCC))
-- \inst5|pc[30]~87\ = CARRY((\inst5|pc\(30) & !\inst5|pc[29]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(30),
	datad => VCC,
	cin => \inst5|pc[29]~85\,
	combout => \inst5|pc[30]~86_combout\,
	cout => \inst5|pc[30]~87\);

-- Location: LCFF_X21_Y23_N29
\inst5|pc[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[31]~88_combout\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~62_combout\,
	sload => \inst8|a_sel~1_combout\,
	ena => \inst20|control_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(31));

-- Location: LCCOMB_X22_Y23_N30
\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~62_combout\ = \inst10|LPM_MUX_component|auto_generated|result_node[31]~33_combout\ $ (\inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~61\ $ 
-- (\inst11|LPM_MUX_component|auto_generated|result_node[31]~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LPM_MUX_component|auto_generated|result_node[31]~33_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[31]~127_combout\,
	cin => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~61\,
	combout => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~62_combout\);

-- Location: LCCOMB_X28_Y20_N30
\inst6|regs[30][31]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][31]~91_combout\ = \inst6|regs[30][30]~90\ $ (!\inst6|regs[30][31]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|regs[30][31]~regout\,
	cin => \inst6|regs[30][30]~90\,
	combout => \inst6|regs[30][31]~91_combout\);

-- Location: LCCOMB_X21_Y23_N28
\inst5|pc[31]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[31]~88_combout\ = \inst5|pc[30]~87\ $ (\inst5|pc\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|pc\(31),
	cin => \inst5|pc[30]~87\,
	combout => \inst5|pc[31]~88_combout\);

-- Location: LCFF_X15_Y22_N13
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\,
	ena => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(0));

-- Location: LCFF_X18_Y21_N29
\inst14|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~regout\);

-- Location: LCCOMB_X18_Y21_N6
\inst14|altsyncram_component|auto_generated|mgl_prim2|tdo~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|tdo~0_combout\);

-- Location: LCCOMB_X15_Y21_N24
\inst14|altsyncram_component|auto_generated|mgl_prim2|tdo~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(0),
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|tdo~0_combout\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|tdo~1_combout\);

-- Location: LCFF_X15_Y22_N25
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\,
	ena => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(1));

-- Location: LCCOMB_X15_Y22_N30
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\);

-- Location: LCFF_X14_Y22_N21
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~0_combout\,
	ena => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1));

-- Location: LCFF_X14_Y22_N27
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~2_combout\,
	ena => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0));

-- Location: LCFF_X14_Y22_N1
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~3_combout\,
	ena => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4));

-- Location: LCFF_X14_Y22_N31
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~4_combout\,
	ena => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2));

-- Location: LCFF_X14_Y22_N5
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~5_combout\,
	ena => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3));

-- Location: LCCOMB_X14_Y22_N24
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\);

-- Location: LCCOMB_X14_Y22_N18
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~0_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\);

-- Location: LCCOMB_X15_Y22_N12
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~1_combout\,
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~2_combout\);

-- Location: LCCOMB_X15_Y22_N6
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\,
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\);

-- Location: LCFF_X25_Y20_N25
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b\(0));

-- Location: LCCOMB_X27_Y20_N4
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~32\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~32_combout\);

-- Location: LCCOMB_X19_Y21_N0
\inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\);

-- Location: LCCOMB_X18_Y21_N28
\inst14|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~0_combout\);

-- Location: LCFF_X15_Y22_N11
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\,
	ena => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(2));

-- Location: LCCOMB_X14_Y22_N28
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\);

-- Location: LCCOMB_X14_Y22_N22
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~4_combout\,
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\);

-- Location: LCCOMB_X15_Y22_N24
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(2),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~5_combout\,
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~6_combout\);

-- Location: LCCOMB_X14_Y22_N20
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~2_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~0_combout\);

-- Location: LCCOMB_X15_Y22_N2
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\,
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~1_combout\);

-- Location: LCCOMB_X14_Y22_N16
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Equal0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y22_N26
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~0_combout\,
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Equal0~0_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~2_combout\);

-- Location: LCCOMB_X14_Y22_N0
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Equal0~0_combout\,
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~8_combout\,
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~3_combout\);

-- Location: LCCOMB_X14_Y22_N30
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~4_combout\,
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Equal0~0_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|clear_signal~combout\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~4_combout\);

-- Location: LCCOMB_X14_Y22_N4
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Add0~6_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter~5_combout\);

-- Location: LCFF_X25_Y20_N3
\inst1|memwrite_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst1|memwrite_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|memwrite_out~regout\);

-- Location: LCCOMB_X18_Y21_N0
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|decode6|eq_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|decode6|eq_node[0]~0_combout\ = (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5) & (\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\ & 
-- (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\ & !\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	combout => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|decode6|eq_node[0]~0_combout\);

-- Location: LCFF_X25_Y20_N11
\inst1|rs2_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(0));

-- Location: LCFF_X25_Y21_N15
\inst1|alu_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(0));

-- Location: LCFF_X25_Y24_N21
\inst1|alu_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(1));

-- Location: LCFF_X22_Y24_N5
\inst1|alu_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(2));

-- Location: LCFF_X22_Y24_N7
\inst1|alu_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(3));

-- Location: LCFF_X22_Y24_N9
\inst1|alu_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(4));

-- Location: LCFF_X22_Y24_N11
\inst1|alu_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(5));

-- Location: LCFF_X22_Y24_N13
\inst1|alu_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(6));

-- Location: LCCOMB_X18_Y21_N4
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|decode6|eq_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|decode6|eq_node[1]~1_combout\ = (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5) & (\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\ & 
-- (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\ & \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	combout => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|decode6|eq_node[1]~1_combout\);

-- Location: LCCOMB_X27_Y20_N20
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~33\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~33_combout\);

-- Location: LCFF_X16_Y22_N31
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\,
	ena => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(3));

-- Location: LCCOMB_X14_Y22_N2
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Mux1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(1),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(2),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(3),
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(0),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y22_N0
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|Mux1~0_combout\,
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR\(3),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|word_counter\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\);

-- Location: LCCOMB_X15_Y22_N10
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~7_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~8_combout\);

-- Location: LCFF_X21_Y24_N1
\inst5|pc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[2]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(2));

-- Location: LCCOMB_X20_Y24_N6
\inst|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux27~0_combout\ = (\inst5|pc\(2) & (\inst5|pc\(3) & ((\inst5|pc\(4)) # (\inst5|pc\(5))))) # (!\inst5|pc\(2) & (\inst5|pc\(4) & ((\inst5|pc\(5)) # (!\inst5|pc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(4),
	datab => \inst5|pc\(2),
	datac => \inst5|pc\(5),
	datad => \inst5|pc\(3),
	combout => \inst|Mux27~0_combout\);

-- Location: LCCOMB_X20_Y23_N10
\inst|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux27~1_combout\ = (\inst|Mux27~0_combout\) # (\inst5|pc\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux27~0_combout\,
	datad => \inst5|pc\(6),
	combout => \inst|Mux27~1_combout\);

-- Location: LCCOMB_X20_Y24_N18
\inst|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux26~0_combout\ = (\inst5|pc\(4) & (((!\inst5|pc\(3))))) # (!\inst5|pc\(4) & (\inst5|pc\(5) $ (((\inst5|pc\(2) & !\inst5|pc\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(4),
	datab => \inst5|pc\(2),
	datac => \inst5|pc\(5),
	datad => \inst5|pc\(3),
	combout => \inst|Mux26~0_combout\);

-- Location: LCCOMB_X20_Y24_N8
\inst|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux30~0_combout\ = (\inst5|pc\(6)) # ((\inst5|pc\(4) & (\inst5|pc\(5) & \inst5|pc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(4),
	datab => \inst5|pc\(5),
	datac => \inst5|pc\(6),
	datad => \inst5|pc\(3),
	combout => \inst|Mux30~0_combout\);

-- Location: LCCOMB_X20_Y23_N6
\inst8|a_sel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|a_sel~0_combout\ = (!\inst|Mux30~0_combout\ & (\inst|Mux26~0_combout\ & !\inst5|pc\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux30~0_combout\,
	datab => \inst|Mux26~0_combout\,
	datad => \inst5|pc\(6),
	combout => \inst8|a_sel~0_combout\);

-- Location: LCCOMB_X20_Y24_N16
\inst|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux25~0_combout\ = (\inst5|pc\(5) & (!\inst5|pc\(6) & !\inst5|pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(5),
	datac => \inst5|pc\(6),
	datad => \inst5|pc\(3),
	combout => \inst|Mux25~0_combout\);

-- Location: LCCOMB_X20_Y23_N0
\inst|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux25~1_combout\ = (\inst5|pc\(4) & (\inst|Mux25~0_combout\ & \inst5|pc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(4),
	datac => \inst|Mux25~0_combout\,
	datad => \inst5|pc\(2),
	combout => \inst|Mux25~1_combout\);

-- Location: LCFF_X20_Y23_N23
\inst1|memread_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst8|mem_read~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|memread_out~regout\);

-- Location: LCCOMB_X20_Y24_N12
\inst|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (\inst5|pc\(2)) # ((\inst5|pc\(3)) # (\inst5|pc\(4) $ (\inst5|pc\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(4),
	datab => \inst5|pc\(2),
	datac => \inst5|pc\(5),
	datad => \inst5|pc\(3),
	combout => \inst|Mux8~0_combout\);

-- Location: LCCOMB_X20_Y24_N24
\inst|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = (\inst5|pc\(4) & (!\inst5|pc\(2) & (!\inst5|pc\(5) & !\inst5|pc\(3)))) # (!\inst5|pc\(4) & ((\inst5|pc\(5) & (\inst5|pc\(2))) # (!\inst5|pc\(5) & ((\inst5|pc\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(4),
	datab => \inst5|pc\(2),
	datac => \inst5|pc\(5),
	datad => \inst5|pc\(3),
	combout => \inst|Mux11~0_combout\);

-- Location: LCFF_X20_Y22_N25
\inst1|dst_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst|Mux24~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dst_out\(0));

-- Location: LCCOMB_X20_Y22_N12
\inst20|control_sel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|control_sel~0_combout\ = (\inst5|pc\(6) & (((!\inst1|dst_out\(0))))) # (!\inst5|pc\(6) & (\inst|Mux8~0_combout\ & (\inst1|dst_out\(0) $ (!\inst|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst|Mux8~0_combout\,
	datac => \inst1|dst_out\(0),
	datad => \inst|Mux11~0_combout\,
	combout => \inst20|control_sel~0_combout\);

-- Location: LCCOMB_X20_Y24_N22
\inst|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = (\inst5|pc\(2) & ((\inst5|pc\(4)) # ((!\inst5|pc\(3)) # (!\inst5|pc\(5))))) # (!\inst5|pc\(2) & (\inst5|pc\(5) $ (((\inst5|pc\(4) & !\inst5|pc\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(4),
	datab => \inst5|pc\(2),
	datac => \inst5|pc\(5),
	datad => \inst5|pc\(3),
	combout => \inst|Mux10~0_combout\);

-- Location: LCFF_X20_Y22_N1
\inst1|dst_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dst_out\(1));

-- Location: LCFF_X20_Y22_N29
\inst1|dst_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst|Mux7~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|dst_out\(2));

-- Location: LCCOMB_X20_Y22_N24
\inst6|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~0_combout\ = (!\inst1|dst_out\(1) & (!\inst1|dst_out\(0) & !\inst1|dst_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dst_out\(1),
	datac => \inst1|dst_out\(0),
	datad => \inst1|dst_out\(2),
	combout => \inst6|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y22_N18
\inst20|control_sel~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|control_sel~1_combout\ = (!\inst6|Equal0~0_combout\ & (\inst1|dst_out\(1) $ (((\inst5|pc\(6)) # (\inst|Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst1|dst_out\(1),
	datac => \inst6|Equal0~0_combout\,
	datad => \inst|Mux10~0_combout\,
	combout => \inst20|control_sel~1_combout\);

-- Location: LCCOMB_X20_Y24_N28
\inst|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (!\inst5|pc\(2) & (\inst|Mux25~0_combout\ & \inst5|pc\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(2),
	datac => \inst|Mux25~0_combout\,
	datad => \inst5|pc\(4),
	combout => \inst|Mux7~0_combout\);

-- Location: LCCOMB_X20_Y22_N4
\inst20|control_sel~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|control_sel~2_combout\ = (\inst20|control_sel~0_combout\ & (!\inst1|dst_out\(2) & (!\inst|Mux7~0_combout\ & \inst20|control_sel~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|control_sel~0_combout\,
	datab => \inst1|dst_out\(2),
	datac => \inst|Mux7~0_combout\,
	datad => \inst20|control_sel~1_combout\,
	combout => \inst20|control_sel~2_combout\);

-- Location: LCCOMB_X20_Y23_N26
\inst|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = (!\inst5|pc\(4) & (\inst|Mux25~0_combout\ & \inst5|pc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(4),
	datac => \inst|Mux25~0_combout\,
	datad => \inst5|pc\(2),
	combout => \inst|Mux15~0_combout\);

-- Location: LCCOMB_X20_Y24_N14
\inst|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = (!\inst5|pc\(4) & ((\inst5|pc\(2) & (\inst5|pc\(5) & !\inst5|pc\(3))) # (!\inst5|pc\(2) & (!\inst5|pc\(5) & \inst5|pc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(4),
	datab => \inst5|pc\(2),
	datac => \inst5|pc\(5),
	datad => \inst5|pc\(3),
	combout => \inst|Mux16~0_combout\);

-- Location: LCCOMB_X20_Y22_N2
\inst20|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|Equal1~0_combout\ = \inst1|dst_out\(0) $ (((!\inst5|pc\(6) & \inst|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst|Mux16~0_combout\,
	datac => \inst1|dst_out\(0),
	combout => \inst20|Equal1~0_combout\);

-- Location: LCCOMB_X20_Y22_N6
\inst20|control_sel~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|control_sel~3_combout\ = (!\inst6|Equal0~0_combout\ & (!\inst20|Equal1~0_combout\ & (\inst|Mux15~0_combout\ $ (!\inst1|dst_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~0_combout\,
	datab => \inst20|Equal1~0_combout\,
	datac => \inst|Mux15~0_combout\,
	datad => \inst1|dst_out\(1),
	combout => \inst20|control_sel~3_combout\);

-- Location: LCCOMB_X20_Y22_N26
\inst20|control_sel~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|control_sel~4_combout\ = ((!\inst20|control_sel~2_combout\ & ((\inst1|dst_out\(2)) # (!\inst20|control_sel~3_combout\)))) # (!\inst1|memread_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|control_sel~3_combout\,
	datab => \inst20|control_sel~2_combout\,
	datac => \inst1|memread_out~regout\,
	datad => \inst1|dst_out\(2),
	combout => \inst20|control_sel~4_combout\);

-- Location: LCCOMB_X20_Y23_N30
\inst8|mem_write~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|mem_write~0_combout\ = (\inst|Mux27~1_combout\ & (!\inst|Mux25~1_combout\ & (\inst20|control_sel~4_combout\ & \inst8|a_sel~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux27~1_combout\,
	datab => \inst|Mux25~1_combout\,
	datac => \inst20|control_sel~4_combout\,
	datad => \inst8|a_sel~0_combout\,
	combout => \inst8|mem_write~0_combout\);

-- Location: LCFF_X20_Y23_N25
\inst1|wbselect_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst8|wb_sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|wbselect_out\(0));

-- Location: LCCOMB_X25_Y20_N18
\inst15|LPM_MUX_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~0_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(0))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|alu_out\(0),
	datab => \inst1|wbselect_out\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a0~portadataout\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X20_Y22_N20
\inst6|Mux63~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux63~0_combout\ = \inst|Mux7~0_combout\ $ (((\inst5|pc\(6)) # (\inst|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst|Mux8~0_combout\,
	datac => \inst|Mux7~0_combout\,
	combout => \inst6|Mux63~0_combout\);

-- Location: LCFF_X28_Y21_N1
\inst6|regs[30][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[30][0]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[30][0]~regout\);

-- Location: LCFF_X21_Y20_N3
\inst6|regs[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~0_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][0]~regout\);

-- Location: LCCOMB_X21_Y22_N20
\inst23|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = (\inst|Mux10~0_combout\ & (\inst|Mux11~0_combout\ & (!\inst5|pc\(6) & \inst|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~0_combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst5|pc\(6),
	datad => \inst|Mux8~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X21_Y22_N24
\inst23|LPM_MUX_component|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ = (!\inst|Mux10~0_combout\ & (!\inst|Mux11~0_combout\ & (!\inst5|pc\(6) & !\inst|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~0_combout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst5|pc\(6),
	datad => \inst|Mux8~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X24_Y20_N20
\inst23|LPM_MUX_component|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst6|regs[1][0]~regout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & 
-- \inst6|regs[30][0]~regout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datac => \inst6|regs[1][0]~regout\,
	datad => \inst6|regs[30][0]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[0]~2_combout\);

-- Location: LCFF_X20_Y20_N19
\inst6|regs[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[3][0]~feeder_combout\,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][0]~regout\);

-- Location: LCFF_X20_Y20_N13
\inst6|regs[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[2][0]~94_combout\,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][0]~regout\);

-- Location: LCCOMB_X20_Y20_N30
\inst23|LPM_MUX_component|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ = (\inst5|pc\(6) & (((!\inst6|regs[2][0]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & (\inst6|regs[3][0]~regout\)) # (!\inst|Mux11~0_combout\ & 
-- ((!\inst6|regs[2][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst6|regs[3][0]~regout\,
	datac => \inst|Mux11~0_combout\,
	datad => \inst6|regs[2][0]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[0]~3_combout\);

-- Location: LCCOMB_X20_Y22_N16
\inst23|LPM_MUX_component|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ = (\inst|Mux8~0_combout\ & (!\inst5|pc\(6) & !\inst|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux8~0_combout\,
	datac => \inst5|pc\(6),
	datad => \inst|Mux10~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X24_Y20_N28
\inst23|LPM_MUX_component|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~2_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~2_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~3_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[0]~5_combout\);

-- Location: LCFF_X20_Y23_N19
\inst1|regwrite_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst8|reg_write~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|regwrite_out~regout\);

-- Location: LCCOMB_X20_Y22_N22
\inst3|b_select~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|b_select~0_combout\ = (\inst20|control_sel~2_combout\ & \inst1|regwrite_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|control_sel~2_combout\,
	datac => \inst1|regwrite_out~regout\,
	combout => \inst3|b_select~0_combout\);

-- Location: LCCOMB_X25_Y20_N10
\inst23|LPM_MUX_component|auto_generated|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~0_combout\)))) # (!\inst3|b_select~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst6|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datab => \inst6|Mux63~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~0_combout\,
	datad => \inst3|b_select~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[0]~6_combout\);

-- Location: LCFF_X21_Y21_N17
\inst5|pc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	sload => VCC,
	ena => \inst8|a_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(0));

-- Location: LCCOMB_X20_Y20_N8
\inst|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux16~1_combout\ = (\inst|Mux16~0_combout\ & !\inst5|pc\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux16~0_combout\,
	datad => \inst5|pc\(6),
	combout => \inst|Mux16~1_combout\);

-- Location: LCCOMB_X20_Y20_N2
\inst11|LPM_MUX_component|auto_generated|result_node[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ = (\inst|Mux16~1_combout\ & ((\inst|Mux15~0_combout\ & ((\inst6|regs[3][0]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[1][0]~regout\,
	datab => \inst|Mux15~0_combout\,
	datac => \inst|Mux16~1_combout\,
	datad => \inst6|regs[3][0]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[0]~10_combout\);

-- Location: LCCOMB_X20_Y22_N10
\inst3|a_select~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|a_select~0_combout\ = (\inst20|control_sel~3_combout\ & (\inst1|regwrite_out~regout\ & !\inst1|dst_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|control_sel~3_combout\,
	datac => \inst1|regwrite_out~regout\,
	datad => \inst1|dst_out\(2),
	combout => \inst3|a_select~0_combout\);

-- Location: LCCOMB_X20_Y20_N22
\inst11|LPM_MUX_component|auto_generated|result_node[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[0]~11_combout\ = (\inst3|a_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~0_combout\)))) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[0]~10_combout\) # ((\inst11|LPM_MUX_component|auto_generated|result_node[0]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|a_select~0_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[0]~10_combout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[0]~128_combout\,
	datad => \inst15|LPM_MUX_component|auto_generated|_~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[0]~11_combout\);

-- Location: LCCOMB_X20_Y23_N8
\inst|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux26~1_combout\ = (!\inst5|pc\(6) & \inst|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datad => \inst|Mux26~0_combout\,
	combout => \inst|Mux26~1_combout\);

-- Location: LCCOMB_X20_Y23_N16
\inst8|a_sel~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|a_sel~1_combout\ = (\inst20|control_sel~4_combout\ & (\inst|Mux26~1_combout\ & (!\inst|Mux30~0_combout\ & \inst|Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|control_sel~4_combout\,
	datab => \inst|Mux26~1_combout\,
	datac => \inst|Mux30~0_combout\,
	datad => \inst|Mux25~1_combout\,
	combout => \inst8|a_sel~1_combout\);

-- Location: LCCOMB_X21_Y21_N16
\inst11|LPM_MUX_component|auto_generated|result_node[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ = (\inst8|a_sel~1_combout\ & ((\inst5|pc\(0)))) # (!\inst8|a_sel~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[0]~11_combout\,
	datac => \inst5|pc\(0),
	datad => \inst8|a_sel~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[0]~12_combout\);

-- Location: LCCOMB_X20_Y23_N14
\inst8|Decoder2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Decoder2~0_combout\ = (!\inst|Mux30~0_combout\ & (((!\inst5|pc\(2)) # (!\inst|Mux25~0_combout\)) # (!\inst5|pc\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux30~0_combout\,
	datab => \inst5|pc\(4),
	datac => \inst|Mux25~0_combout\,
	datad => \inst5|pc\(2),
	combout => \inst8|Decoder2~0_combout\);

-- Location: LCCOMB_X20_Y23_N28
\inst8|b_sel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|b_sel~0_combout\ = ((\inst|Mux26~1_combout\ & (\inst8|Decoder2~0_combout\ & !\inst|Mux27~1_combout\))) # (!\inst20|control_sel~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|control_sel~4_combout\,
	datab => \inst|Mux26~1_combout\,
	datac => \inst8|Decoder2~0_combout\,
	datad => \inst|Mux27~1_combout\,
	combout => \inst8|b_sel~0_combout\);

-- Location: LCCOMB_X22_Y21_N22
\inst|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux11~1_combout\ = (\inst|Mux11~0_combout\ & !\inst5|pc\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~0_combout\,
	datad => \inst5|pc\(6),
	combout => \inst|Mux11~1_combout\);

-- Location: LCCOMB_X20_Y23_N2
\inst8|mem_write~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|mem_write~1_combout\ = (\inst20|control_sel~4_combout\ & (\inst|Mux26~1_combout\ & (!\inst|Mux30~0_combout\ & \inst|Mux27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|control_sel~4_combout\,
	datab => \inst|Mux26~1_combout\,
	datac => \inst|Mux30~0_combout\,
	datad => \inst|Mux27~1_combout\,
	combout => \inst8|mem_write~1_combout\);

-- Location: LCCOMB_X20_Y24_N10
\inst|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux24~0_combout\ = (\inst5|pc\(5) & ((\inst5|pc\(4)) # ((\inst5|pc\(3)) # (!\inst5|pc\(2))))) # (!\inst5|pc\(5) & (\inst5|pc\(3) $ (((\inst5|pc\(4)) # (\inst5|pc\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(4),
	datab => \inst5|pc\(2),
	datac => \inst5|pc\(5),
	datad => \inst5|pc\(3),
	combout => \inst|Mux24~0_combout\);

-- Location: LCCOMB_X20_Y24_N20
\inst|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux24~1_combout\ = (!\inst5|pc\(6) & !\inst|Mux24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|pc\(6),
	datad => \inst|Mux24~0_combout\,
	combout => \inst|Mux24~1_combout\);

-- Location: LCCOMB_X20_Y24_N2
\inst10|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = (\inst8|mem_write~1_combout\ & (\inst|Mux24~1_combout\ & (!\inst|Mux25~1_combout\))) # (!\inst8|mem_write~1_combout\ & (((\inst|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux24~1_combout\,
	datab => \inst|Mux25~1_combout\,
	datac => \inst8|mem_write~1_combout\,
	datad => \inst|Mux11~1_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X23_Y24_N26
\inst10|LPM_MUX_component|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ = (\inst8|b_sel~0_combout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~6_combout\))) # (!\inst8|b_sel~0_combout\ & 
-- (\inst10|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|b_sel~0_combout\,
	datab => \inst10|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X25_Y21_N26
\inst15|LPM_MUX_component|auto_generated|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~1_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(1))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|alu_out\(1),
	datac => \inst1|wbselect_out\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a1\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~1_combout\);

-- Location: LCFF_X25_Y21_N13
\inst6|regs[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[1][1]~feeder_combout\,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][1]~regout\);

-- Location: LCCOMB_X24_Y21_N14
\inst23|LPM_MUX_component|auto_generated|result_node[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[1]~7_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][1]~regout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- \inst6|regs[1][1]~regout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst6|regs[1][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst6|regs[1][1]~regout\,
	datad => \inst6|regs[30][1]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[1]~7_combout\);

-- Location: LCFF_X24_Y21_N21
\inst6|regs[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~1_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][1]~regout\);

-- Location: LCFF_X24_Y21_N29
\inst6|regs[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[2][1]~95_combout\,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][1]~regout\);

-- Location: LCCOMB_X24_Y21_N20
\inst23|LPM_MUX_component|auto_generated|result_node[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[1]~8_combout\ = (\inst5|pc\(6) & (((!\inst6|regs[2][1]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & (\inst6|regs[3][1]~regout\)) # (!\inst|Mux11~0_combout\ & 
-- ((!\inst6|regs[2][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst|Mux11~0_combout\,
	datac => \inst6|regs[3][1]~regout\,
	datad => \inst6|regs[2][1]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[1]~8_combout\);

-- Location: LCCOMB_X24_Y21_N30
\inst23|LPM_MUX_component|auto_generated|result_node[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[1]~9_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[1]~7_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[1]~8_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[1]~7_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[1]~8_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[1]~9_combout\);

-- Location: LCCOMB_X25_Y21_N10
\inst23|LPM_MUX_component|auto_generated|result_node[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~1_combout\)))) # (!\inst3|b_select~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[1]~9_combout\ & (\inst6|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[1]~9_combout\,
	datab => \inst6|Mux63~0_combout\,
	datac => \inst3|b_select~0_combout\,
	datad => \inst15|LPM_MUX_component|auto_generated|_~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[1]~10_combout\);

-- Location: LCCOMB_X20_Y24_N30
\inst|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux23~0_combout\ = (\inst5|pc\(5) & (!\inst5|pc\(4) & (\inst5|pc\(2) & !\inst5|pc\(3)))) # (!\inst5|pc\(5) & (\inst5|pc\(3) & ((\inst5|pc\(2)) # (!\inst5|pc\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(4),
	datab => \inst5|pc\(2),
	datac => \inst5|pc\(5),
	datad => \inst5|pc\(3),
	combout => \inst|Mux23~0_combout\);

-- Location: LCCOMB_X20_Y24_N26
\inst10|LPM_MUX_component|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ = (\inst|Mux25~1_combout\ & (((!\inst|Mux10~0_combout\)))) # (!\inst|Mux25~1_combout\ & ((\inst8|mem_write~1_combout\ & (\inst|Mux23~0_combout\)) # (!\inst8|mem_write~1_combout\ & 
-- ((!\inst|Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux23~0_combout\,
	datab => \inst|Mux25~1_combout\,
	datac => \inst8|mem_write~1_combout\,
	datad => \inst|Mux10~0_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X20_Y24_N0
\inst10|LPM_MUX_component|auto_generated|result_node[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ = (\inst8|b_sel~0_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[1]~10_combout\)) # (!\inst8|b_sel~0_combout\ & (((!\inst5|pc\(6) & 
-- \inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[1]~10_combout\,
	datab => \inst8|b_sel~0_combout\,
	datac => \inst5|pc\(6),
	datad => \inst10|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[1]~3_combout\);

-- Location: LCFF_X24_Y24_N31
\inst5|pc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst5|pc[1]~feeder_combout\,
	ena => \inst8|a_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|pc\(1));

-- Location: LCCOMB_X24_Y21_N18
\inst11|LPM_MUX_component|auto_generated|result_node[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[1]~13_combout\ = (\inst|Mux15~0_combout\ & ((\inst6|regs[3][1]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux15~0_combout\,
	datac => \inst6|regs[1][1]~regout\,
	datad => \inst6|regs[3][1]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[1]~13_combout\);

-- Location: LCCOMB_X24_Y21_N22
\inst11|LPM_MUX_component|auto_generated|result_node[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[1]~14_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[1]~13_combout\)))) # (!\inst|Mux16~1_combout\ & (!\inst6|regs[2][1]~regout\ & 
-- ((\inst|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~1_combout\,
	datab => \inst6|regs[2][1]~regout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[1]~13_combout\,
	datad => \inst|Mux15~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[1]~14_combout\);

-- Location: LCCOMB_X24_Y21_N12
\inst11|LPM_MUX_component|auto_generated|result_node[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[1]~15_combout\ = (\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~1_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LPM_MUX_component|auto_generated|_~1_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[1]~14_combout\,
	datad => \inst3|a_select~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[1]~15_combout\);

-- Location: LCCOMB_X23_Y24_N2
\inst11|LPM_MUX_component|auto_generated|result_node[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[1]~16_combout\ = (\inst8|a_sel~1_combout\ & ((\inst5|pc\(1)))) # (!\inst8|a_sel~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[1]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|a_sel~1_combout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[1]~15_combout\,
	datad => \inst5|pc\(1),
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[1]~16_combout\);

-- Location: LCCOMB_X25_Y21_N14
\inst15|LPM_MUX_component|auto_generated|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~2_combout\ = (\inst1|wbselect_out\(0) & ((\inst1|alu_out\(2)))) # (!\inst1|wbselect_out\(0) & (\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a2\,
	datab => \inst1|wbselect_out\(0),
	datad => \inst1|alu_out\(2),
	combout => \inst15|LPM_MUX_component|auto_generated|_~2_combout\);

-- Location: LCFF_X24_Y21_N13
\inst6|regs[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~2_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][2]~regout\);

-- Location: LCFF_X25_Y21_N25
\inst6|regs[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~2_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][2]~regout\);

-- Location: LCCOMB_X24_Y21_N0
\inst11|LPM_MUX_component|auto_generated|result_node[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[2]~17_combout\ = (\inst|Mux15~0_combout\ & (\inst6|regs[3][2]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[3][2]~regout\,
	datab => \inst|Mux15~0_combout\,
	datad => \inst6|regs[1][2]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[2]~17_combout\);

-- Location: LCFF_X23_Y21_N29
\inst6|regs[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[2][2]~96_combout\,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][2]~regout\);

-- Location: LCCOMB_X23_Y21_N0
\inst11|LPM_MUX_component|auto_generated|result_node[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[2]~18_combout\ = (\inst|Mux16~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[2]~17_combout\)) # (!\inst|Mux16~1_combout\ & (((!\inst6|regs[2][2]~regout\ & \inst|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[2]~17_combout\,
	datab => \inst6|regs[2][2]~regout\,
	datac => \inst|Mux15~0_combout\,
	datad => \inst|Mux16~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[2]~18_combout\);

-- Location: LCCOMB_X23_Y21_N18
\inst11|LPM_MUX_component|auto_generated|result_node[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[2]~19_combout\ = (\inst8|a_sel~1_combout\) # ((\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~2_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LPM_MUX_component|auto_generated|_~2_combout\,
	datab => \inst8|a_sel~1_combout\,
	datac => \inst3|a_select~0_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[2]~18_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[2]~19_combout\);

-- Location: LCCOMB_X24_Y21_N6
\inst23|LPM_MUX_component|auto_generated|result_node[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[2]~11_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][2]~regout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- \inst6|regs[1][2]~regout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst6|regs[1][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst6|regs[30][2]~regout\,
	datad => \inst6|regs[1][2]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[2]~11_combout\);

-- Location: LCCOMB_X24_Y21_N4
\inst23|LPM_MUX_component|auto_generated|result_node[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[2]~12_combout\ = (\inst|Mux11~0_combout\ & ((\inst5|pc\(6) & ((!\inst6|regs[2][2]~regout\))) # (!\inst5|pc\(6) & (\inst6|regs[3][2]~regout\)))) # (!\inst|Mux11~0_combout\ & 
-- (((!\inst6|regs[2][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[3][2]~regout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst6|regs[2][2]~regout\,
	datad => \inst5|pc\(6),
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[2]~12_combout\);

-- Location: LCCOMB_X24_Y21_N16
\inst23|LPM_MUX_component|auto_generated|result_node[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[2]~13_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[2]~11_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[2]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[2]~12_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[2]~11_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[2]~13_combout\);

-- Location: LCCOMB_X25_Y21_N2
\inst23|LPM_MUX_component|auto_generated|result_node[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[2]~14_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~2_combout\)))) # (!\inst3|b_select~0_combout\ & (\inst6|Mux63~0_combout\ & 
-- ((\inst23|LPM_MUX_component|auto_generated|result_node[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|b_select~0_combout\,
	datab => \inst6|Mux63~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~2_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[2]~13_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[2]~14_combout\);

-- Location: LCCOMB_X25_Y24_N30
\inst10|LPM_MUX_component|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[2]~4_combout\ = (\inst8|b_sel~0_combout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[2]~14_combout\))) # (!\inst8|b_sel~0_combout\ & (\inst|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|b_sel~0_combout\,
	datab => \inst|Mux7~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[2]~14_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X25_Y21_N20
\inst15|LPM_MUX_component|auto_generated|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~3_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(3))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|alu_out\(3),
	datac => \inst1|wbselect_out\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a3\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~3_combout\);

-- Location: LCFF_X24_Y22_N5
\inst6|regs[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~3_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][3]~regout\);

-- Location: LCFF_X25_Y21_N9
\inst6|regs[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~3_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][3]~regout\);

-- Location: LCCOMB_X24_Y22_N14
\inst11|LPM_MUX_component|auto_generated|result_node[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[3]~20_combout\ = (\inst|Mux15~0_combout\ & (\inst6|regs[3][3]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datac => \inst6|regs[3][3]~regout\,
	datad => \inst6|regs[1][3]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[3]~20_combout\);

-- Location: LCFF_X24_Y22_N17
\inst6|regs[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[2][3]~97_combout\,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][3]~regout\);

-- Location: LCCOMB_X24_Y22_N12
\inst11|LPM_MUX_component|auto_generated|result_node[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[3]~21_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[3]~20_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst|Mux15~0_combout\ & 
-- ((!\inst6|regs[2][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[3]~20_combout\,
	datac => \inst6|regs[2][3]~regout\,
	datad => \inst|Mux16~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[3]~21_combout\);

-- Location: LCCOMB_X24_Y22_N0
\inst11|LPM_MUX_component|auto_generated|result_node[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[3]~22_combout\ = (!\inst8|a_sel~1_combout\ & ((\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~3_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[3]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|a_select~0_combout\,
	datab => \inst8|a_sel~1_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~3_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[3]~21_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[3]~22_combout\);

-- Location: LCCOMB_X25_Y21_N8
\inst23|LPM_MUX_component|auto_generated|result_node[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[3]~15_combout\ = (\inst6|regs[30][3]~regout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- \inst6|regs[1][3]~regout\)))) # (!\inst6|regs[30][3]~regout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst6|regs[1][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][3]~regout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst6|regs[1][3]~regout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[3]~15_combout\);

-- Location: LCCOMB_X24_Y22_N30
\inst23|LPM_MUX_component|auto_generated|result_node[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[3]~16_combout\ = (\inst|Mux11~0_combout\ & ((\inst5|pc\(6) & (!\inst6|regs[2][3]~regout\)) # (!\inst5|pc\(6) & ((\inst6|regs[3][3]~regout\))))) # (!\inst|Mux11~0_combout\ & (!\inst6|regs[2][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[2][3]~regout\,
	datab => \inst6|regs[3][3]~regout\,
	datac => \inst|Mux11~0_combout\,
	datad => \inst5|pc\(6),
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[3]~16_combout\);

-- Location: LCCOMB_X24_Y20_N26
\inst23|LPM_MUX_component|auto_generated|result_node[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[3]~17_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[3]~15_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[3]~16_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[3]~16_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[3]~15_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[3]~17_combout\);

-- Location: LCCOMB_X25_Y20_N14
\inst23|LPM_MUX_component|auto_generated|result_node[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[3]~18_combout\ = (\inst3|b_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~3_combout\)) # (!\inst3|b_select~0_combout\ & 
-- (((\inst23|LPM_MUX_component|auto_generated|result_node[3]~17_combout\ & \inst6|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LPM_MUX_component|auto_generated|_~3_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[3]~17_combout\,
	datac => \inst6|Mux63~0_combout\,
	datad => \inst3|b_select~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[3]~18_combout\);

-- Location: LCCOMB_X21_Y22_N28
\inst|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux8~1_combout\ = (\inst5|pc\(6)) # (\inst|Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|pc\(6),
	datad => \inst|Mux8~0_combout\,
	combout => \inst|Mux8~1_combout\);

-- Location: LCCOMB_X25_Y20_N28
\inst10|LPM_MUX_component|auto_generated|result_node[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ = (\inst8|b_sel~0_combout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[3]~18_combout\)))) # (!\inst8|b_sel~0_combout\ & (!\inst8|mem_write~0_combout\ & 
-- ((!\inst|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|mem_write~0_combout\,
	datab => \inst8|b_sel~0_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[3]~18_combout\,
	datad => \inst|Mux8~1_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[3]~5_combout\);

-- Location: LCCOMB_X25_Y21_N24
\inst15|LPM_MUX_component|auto_generated|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~4_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(4))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|alu_out\(4),
	datab => \inst1|wbselect_out\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a4\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~4_combout\);

-- Location: LCFF_X23_Y23_N1
\inst6|regs[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~4_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][4]~regout\);

-- Location: LCFF_X24_Y23_N15
\inst6|regs[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~4_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][4]~regout\);

-- Location: LCCOMB_X24_Y23_N2
\inst11|LPM_MUX_component|auto_generated|result_node[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[4]~23_combout\ = (\inst|Mux15~0_combout\ & ((\inst6|regs[3][4]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst6|regs[1][4]~regout\,
	datac => \inst6|regs[3][4]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[4]~23_combout\);

-- Location: LCFF_X23_Y23_N23
\inst6|regs[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[2][4]~98_combout\,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][4]~regout\);

-- Location: LCCOMB_X24_Y23_N8
\inst11|LPM_MUX_component|auto_generated|result_node[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[4]~24_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[4]~23_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst|Mux15~0_combout\ & 
-- ((!\inst6|regs[2][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[4]~23_combout\,
	datac => \inst|Mux16~1_combout\,
	datad => \inst6|regs[2][4]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[4]~24_combout\);

-- Location: LCCOMB_X23_Y23_N12
\inst11|LPM_MUX_component|auto_generated|result_node[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[4]~25_combout\ = (\inst8|a_sel~1_combout\) # ((\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~4_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[4]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LPM_MUX_component|auto_generated|_~4_combout\,
	datab => \inst8|a_sel~1_combout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[4]~24_combout\,
	datad => \inst3|a_select~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[4]~25_combout\);

-- Location: LCCOMB_X24_Y22_N20
\inst23|LPM_MUX_component|auto_generated|result_node[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[4]~19_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst6|regs[1][4]~regout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & 
-- \inst6|regs[30][4]~regout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datac => \inst6|regs[1][4]~regout\,
	datad => \inst6|regs[30][4]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[4]~19_combout\);

-- Location: LCCOMB_X24_Y23_N18
\inst23|LPM_MUX_component|auto_generated|result_node[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[4]~20_combout\ = (\inst|Mux11~0_combout\ & ((\inst5|pc\(6) & ((!\inst6|regs[2][4]~regout\))) # (!\inst5|pc\(6) & (\inst6|regs[3][4]~regout\)))) # (!\inst|Mux11~0_combout\ & 
-- (((!\inst6|regs[2][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[3][4]~regout\,
	datab => \inst|Mux11~0_combout\,
	datac => \inst5|pc\(6),
	datad => \inst6|regs[2][4]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[4]~20_combout\);

-- Location: LCCOMB_X24_Y22_N6
\inst23|LPM_MUX_component|auto_generated|result_node[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[4]~21_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[4]~19_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[4]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[4]~20_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[4]~19_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[4]~21_combout\);

-- Location: LCCOMB_X25_Y21_N4
\inst23|LPM_MUX_component|auto_generated|result_node[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[4]~22_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~4_combout\)))) # (!\inst3|b_select~0_combout\ & (\inst6|Mux63~0_combout\ & 
-- ((\inst23|LPM_MUX_component|auto_generated|result_node[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|b_select~0_combout\,
	datab => \inst6|Mux63~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~4_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[4]~21_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[4]~22_combout\);

-- Location: LCCOMB_X20_Y24_N4
\inst10|LPM_MUX_component|auto_generated|result_node[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[4]~6_combout\ = (\inst8|b_sel~0_combout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[4]~22_combout\)))) # (!\inst8|b_sel~0_combout\ & (\inst|Mux7~0_combout\ & 
-- (!\inst8|mem_write~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \inst8|mem_write~1_combout\,
	datac => \inst8|b_sel~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[4]~22_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[4]~6_combout\);

-- Location: LCCOMB_X24_Y22_N4
\inst15|LPM_MUX_component|auto_generated|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~5_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(5))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wbselect_out\(0),
	datab => \inst1|alu_out\(5),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a5\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~5_combout\);

-- Location: LCFF_X24_Y22_N29
\inst6|regs[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~5_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][5]~regout\);

-- Location: LCFF_X23_Y24_N15
\inst6|regs[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~5_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][5]~regout\);

-- Location: LCCOMB_X24_Y22_N8
\inst11|LPM_MUX_component|auto_generated|result_node[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[5]~26_combout\ = (\inst|Mux15~0_combout\ & ((\inst6|regs[3][5]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[1][5]~regout\,
	datac => \inst|Mux15~0_combout\,
	datad => \inst6|regs[3][5]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[5]~26_combout\);

-- Location: LCFF_X24_Y22_N19
\inst6|regs[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[2][5]~99_combout\,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][5]~regout\);

-- Location: LCCOMB_X24_Y22_N10
\inst11|LPM_MUX_component|auto_generated|result_node[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[5]~27_combout\ = (\inst|Mux16~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[5]~26_combout\)) # (!\inst|Mux16~1_combout\ & (((\inst|Mux15~0_combout\ & !\inst6|regs[2][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~1_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[5]~26_combout\,
	datac => \inst|Mux15~0_combout\,
	datad => \inst6|regs[2][5]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[5]~27_combout\);

-- Location: LCCOMB_X24_Y22_N24
\inst11|LPM_MUX_component|auto_generated|result_node[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[5]~28_combout\ = (\inst8|a_sel~1_combout\) # ((\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~5_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|a_select~0_combout\,
	datab => \inst8|a_sel~1_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~5_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[5]~27_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[5]~28_combout\);

-- Location: LCCOMB_X24_Y22_N26
\inst23|LPM_MUX_component|auto_generated|result_node[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[5]~23_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst6|regs[1][5]~regout\) # ((\inst6|regs[30][5]~regout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (((\inst6|regs[30][5]~regout\ & \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst6|regs[1][5]~regout\,
	datac => \inst6|regs[30][5]~regout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[5]~23_combout\);

-- Location: LCCOMB_X24_Y22_N22
\inst23|LPM_MUX_component|auto_generated|result_node[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[5]~24_combout\ = (\inst5|pc\(6) & (!\inst6|regs[2][5]~regout\)) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & ((\inst6|regs[3][5]~regout\))) # (!\inst|Mux11~0_combout\ & (!\inst6|regs[2][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst6|regs[2][5]~regout\,
	datac => \inst|Mux11~0_combout\,
	datad => \inst6|regs[3][5]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[5]~24_combout\);

-- Location: LCCOMB_X24_Y22_N2
\inst23|LPM_MUX_component|auto_generated|result_node[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[5]~25_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[5]~23_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[5]~24_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[5]~24_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[5]~23_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[5]~25_combout\);

-- Location: LCCOMB_X23_Y24_N24
\inst23|LPM_MUX_component|auto_generated|result_node[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[5]~26_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~5_combout\)))) # (!\inst3|b_select~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[5]~25_combout\ & (\inst6|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[5]~25_combout\,
	datab => \inst3|b_select~0_combout\,
	datac => \inst6|Mux63~0_combout\,
	datad => \inst15|LPM_MUX_component|auto_generated|_~5_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[5]~26_combout\);

-- Location: LCCOMB_X23_Y24_N8
\inst10|LPM_MUX_component|auto_generated|result_node[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[5]~26_combout\ & \inst8|b_sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[5]~26_combout\,
	datad => \inst8|b_sel~0_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[5]~7_combout\);

-- Location: LCCOMB_X25_Y21_N30
\inst15|LPM_MUX_component|auto_generated|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~6_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(6))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|alu_out\(6),
	datab => \inst1|wbselect_out\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a6\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~6_combout\);

-- Location: LCFF_X24_Y21_N3
\inst6|regs[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~6_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][6]~regout\);

-- Location: LCFF_X25_Y21_N1
\inst6|regs[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~6_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][6]~regout\);

-- Location: LCCOMB_X24_Y21_N2
\inst11|LPM_MUX_component|auto_generated|result_node[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[6]~29_combout\ = (\inst|Mux15~0_combout\ & ((\inst6|regs[3][6]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][6]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[1][6]~regout\,
	datac => \inst6|regs[3][6]~regout\,
	datad => \inst|Mux15~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[6]~29_combout\);

-- Location: LCFF_X24_Y21_N9
\inst6|regs[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[2][6]~100_combout\,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][6]~regout\);

-- Location: LCCOMB_X24_Y21_N24
\inst11|LPM_MUX_component|auto_generated|result_node[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[6]~30_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[6]~29_combout\)))) # (!\inst|Mux16~1_combout\ & (!\inst6|regs[2][6]~regout\ & 
-- ((\inst|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[2][6]~regout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[6]~29_combout\,
	datac => \inst|Mux16~1_combout\,
	datad => \inst|Mux15~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[6]~30_combout\);

-- Location: LCCOMB_X23_Y21_N4
\inst11|LPM_MUX_component|auto_generated|result_node[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[6]~31_combout\ = (!\inst8|a_sel~1_combout\ & ((\inst3|a_select~0_combout\ & ((\inst15|LPM_MUX_component|auto_generated|_~6_combout\))) # (!\inst3|a_select~0_combout\ & 
-- (\inst11|LPM_MUX_component|auto_generated|result_node[6]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|a_select~0_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[6]~30_combout\,
	datac => \inst8|a_sel~1_combout\,
	datad => \inst15|LPM_MUX_component|auto_generated|_~6_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[6]~31_combout\);

-- Location: LCCOMB_X24_Y21_N26
\inst23|LPM_MUX_component|auto_generated|result_node[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[6]~27_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][6]~regout\) # ((\inst6|regs[1][6]~regout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (\inst6|regs[1][6]~regout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst6|regs[1][6]~regout\,
	datac => \inst6|regs[30][6]~regout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[6]~27_combout\);

-- Location: LCCOMB_X24_Y21_N10
\inst23|LPM_MUX_component|auto_generated|result_node[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[6]~28_combout\ = (\inst5|pc\(6) & (((!\inst6|regs[2][6]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & (\inst6|regs[3][6]~regout\)) # (!\inst|Mux11~0_combout\ & 
-- ((!\inst6|regs[2][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst|Mux11~0_combout\,
	datac => \inst6|regs[3][6]~regout\,
	datad => \inst6|regs[2][6]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[6]~28_combout\);

-- Location: LCCOMB_X23_Y21_N6
\inst23|LPM_MUX_component|auto_generated|result_node[6]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[6]~29_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[6]~27_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[6]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[6]~27_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[6]~28_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[6]~29_combout\);

-- Location: LCCOMB_X23_Y24_N20
\inst23|LPM_MUX_component|auto_generated|result_node[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[6]~30_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~6_combout\)))) # (!\inst3|b_select~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[6]~29_combout\ & (\inst6|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[6]~29_combout\,
	datab => \inst3|b_select~0_combout\,
	datac => \inst6|Mux63~0_combout\,
	datad => \inst15|LPM_MUX_component|auto_generated|_~6_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[6]~30_combout\);

-- Location: LCCOMB_X23_Y24_N22
\inst10|LPM_MUX_component|auto_generated|result_node[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[6]~8_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[6]~30_combout\ & \inst8|b_sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[6]~30_combout\,
	datad => \inst8|b_sel~0_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[6]~8_combout\);

-- Location: LCFF_X25_Y21_N17
\inst1|rs2_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst23|LPM_MUX_component|auto_generated|result_node[1]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(1));

-- Location: LCCOMB_X27_Y20_N16
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~34\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~34_combout\);

-- Location: LCCOMB_X16_Y22_N30
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:name_gen:info_rom_sr|WORD_SR~9_combout\);

-- Location: LCCOMB_X21_Y24_N0
\inst5|pc[2]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[2]~39_combout\ = (\inst20|control_sel~4_combout\ & (((\inst8|a_sel~1_combout\ & \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\)) # (!\inst5|pc\(2)))) # (!\inst20|control_sel~4_combout\ & (((\inst5|pc\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|control_sel~4_combout\,
	datab => \inst8|a_sel~1_combout\,
	datac => \inst5|pc\(2),
	datad => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	combout => \inst5|pc[2]~39_combout\);

-- Location: LCCOMB_X20_Y23_N22
\inst8|mem_read~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|mem_read~0_combout\ = (\inst20|control_sel~4_combout\ & (!\inst|Mux26~1_combout\ & (\inst8|Decoder2~0_combout\ & \inst|Mux27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|control_sel~4_combout\,
	datab => \inst|Mux26~1_combout\,
	datac => \inst8|Decoder2~0_combout\,
	datad => \inst|Mux27~1_combout\,
	combout => \inst8|mem_read~0_combout\);

-- Location: LCCOMB_X20_Y22_N0
\inst|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux23~1_combout\ = (!\inst5|pc\(6) & \inst|Mux23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datac => \inst|Mux23~0_combout\,
	combout => \inst|Mux23~1_combout\);

-- Location: LCCOMB_X20_Y23_N24
\inst8|wb_sel[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|wb_sel[0]~0_combout\ = (\inst20|control_sel~4_combout\ & (\inst8|Decoder2~0_combout\ & (!\inst|Mux27~0_combout\ & !\inst5|pc\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|control_sel~4_combout\,
	datab => \inst8|Decoder2~0_combout\,
	datac => \inst|Mux27~0_combout\,
	datad => \inst5|pc\(6),
	combout => \inst8|wb_sel[0]~0_combout\);

-- Location: LCCOMB_X20_Y22_N14
\inst6|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~0_combout\ = (\inst1|regwrite_out~regout\ & (!\inst1|dst_out\(2) & (\inst1|dst_out\(0) & !\inst1|dst_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|regwrite_out~regout\,
	datab => \inst1|dst_out\(2),
	datac => \inst1|dst_out\(0),
	datad => \inst1|dst_out\(1),
	combout => \inst6|Decoder0~0_combout\);

-- Location: LCCOMB_X20_Y22_N8
\inst6|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~1_combout\ = (\inst1|regwrite_out~regout\ & (!\inst1|dst_out\(2) & (\inst1|dst_out\(0) & \inst1|dst_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|regwrite_out~regout\,
	datab => \inst1|dst_out\(2),
	datac => \inst1|dst_out\(0),
	datad => \inst1|dst_out\(1),
	combout => \inst6|Decoder0~1_combout\);

-- Location: LCCOMB_X20_Y22_N30
\inst6|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~2_combout\ = (\inst1|regwrite_out~regout\ & (!\inst1|dst_out\(2) & (!\inst1|dst_out\(0) & \inst1|dst_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|regwrite_out~regout\,
	datab => \inst1|dst_out\(2),
	datac => \inst1|dst_out\(0),
	datad => \inst1|dst_out\(1),
	combout => \inst6|Decoder0~2_combout\);

-- Location: LCCOMB_X20_Y23_N20
\inst8|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|WideOr2~0_combout\ = (!\inst|Mux30~0_combout\ & (\inst|Mux25~1_combout\ $ (((!\inst|Mux26~1_combout\) # (!\inst|Mux27~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux27~1_combout\,
	datab => \inst|Mux26~1_combout\,
	datac => \inst|Mux30~0_combout\,
	datad => \inst|Mux25~1_combout\,
	combout => \inst8|WideOr2~0_combout\);

-- Location: LCCOMB_X20_Y23_N18
\inst8|reg_write~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|reg_write~0_combout\ = (\inst20|control_sel~4_combout\ & \inst8|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|control_sel~4_combout\,
	datac => \inst8|WideOr2~0_combout\,
	combout => \inst8|reg_write~0_combout\);

-- Location: LCFF_X25_Y21_N31
\inst1|rs2_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst23|LPM_MUX_component|auto_generated|result_node[2]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(2));

-- Location: LCFF_X25_Y20_N15
\inst1|rs2_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(3));

-- Location: LCFF_X25_Y21_N5
\inst1|rs2_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(4));

-- Location: LCFF_X23_Y24_N27
\inst1|rs2_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst23|LPM_MUX_component|auto_generated|result_node[5]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(5));

-- Location: LCFF_X23_Y24_N31
\inst1|rs2_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst23|LPM_MUX_component|auto_generated|result_node[6]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(6));

-- Location: LCCOMB_X27_Y20_N24
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~35\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~35_combout\);

-- Location: LCCOMB_X27_Y20_N14
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~36\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~36_combout\);

-- Location: LCCOMB_X27_Y20_N8
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~37\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~37_combout\);

-- Location: LCCOMB_X27_Y20_N12
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~38\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~38_combout\);

-- Location: LCCOMB_X27_Y20_N30
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~39\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~39_combout\);

-- Location: LCFF_X23_Y20_N1
\inst1|rs2_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst23|LPM_MUX_component|auto_generated|result_node[7]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(7));

-- Location: LCCOMB_X27_Y21_N4
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~40\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~40_combout\);

-- Location: LCFF_X22_Y24_N15
\inst1|alu_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(7));

-- Location: LCCOMB_X23_Y20_N18
\inst15|LPM_MUX_component|auto_generated|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~7_combout\ = (\inst1|wbselect_out\(0) & ((\inst1|alu_out\(7)))) # (!\inst1|wbselect_out\(0) & (\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a7\,
	datac => \inst1|wbselect_out\(0),
	datad => \inst1|alu_out\(7),
	combout => \inst15|LPM_MUX_component|auto_generated|_~7_combout\);

-- Location: LCFF_X21_Y20_N31
\inst6|regs[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~7_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][7]~regout\);

-- Location: LCCOMB_X21_Y20_N28
\inst23|LPM_MUX_component|auto_generated|result_node[7]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[7]~31_combout\ = (\inst6|regs[30][7]~regout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- \inst6|regs[1][7]~regout\)))) # (!\inst6|regs[30][7]~regout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst6|regs[1][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][7]~regout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datad => \inst6|regs[1][7]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[7]~31_combout\);

-- Location: LCFF_X20_Y20_N21
\inst6|regs[3][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~7_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][7]~regout\);

-- Location: LCFF_X20_Y20_N27
\inst6|regs[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[2][7]~101_combout\,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][7]~regout\);

-- Location: LCCOMB_X20_Y20_N14
\inst23|LPM_MUX_component|auto_generated|result_node[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[7]~32_combout\ = (\inst5|pc\(6) & (((!\inst6|regs[2][7]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & (\inst6|regs[3][7]~regout\)) # (!\inst|Mux11~0_combout\ & 
-- ((!\inst6|regs[2][7]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst|Mux11~0_combout\,
	datac => \inst6|regs[3][7]~regout\,
	datad => \inst6|regs[2][7]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[7]~32_combout\);

-- Location: LCCOMB_X21_Y20_N12
\inst23|LPM_MUX_component|auto_generated|result_node[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[7]~33_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[7]~31_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[7]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[7]~31_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[7]~32_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[7]~33_combout\);

-- Location: LCCOMB_X23_Y20_N6
\inst23|LPM_MUX_component|auto_generated|result_node[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[7]~34_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~7_combout\)))) # (!\inst3|b_select~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[7]~33_combout\ & (\inst6|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[7]~33_combout\,
	datab => \inst6|Mux63~0_combout\,
	datac => \inst3|b_select~0_combout\,
	datad => \inst15|LPM_MUX_component|auto_generated|_~7_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[7]~34_combout\);

-- Location: LCFF_X23_Y20_N23
\inst1|rs2_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(8));

-- Location: LCCOMB_X27_Y21_N8
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~41\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~41_combout\);

-- Location: LCCOMB_X23_Y24_N14
\inst10|LPM_MUX_component|auto_generated|result_node[7]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[7]~9_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[7]~34_combout\ & \inst8|b_sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[7]~34_combout\,
	datad => \inst8|b_sel~0_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[7]~9_combout\);

-- Location: LCCOMB_X20_Y20_N10
\inst11|LPM_MUX_component|auto_generated|result_node[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[7]~32_combout\ = (\inst|Mux15~0_combout\ & (\inst6|regs[3][7]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[3][7]~regout\,
	datab => \inst6|regs[1][7]~regout\,
	datad => \inst|Mux15~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[7]~32_combout\);

-- Location: LCCOMB_X20_Y20_N4
\inst11|LPM_MUX_component|auto_generated|result_node[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[7]~33_combout\ = (\inst|Mux16~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[7]~32_combout\)) # (!\inst|Mux16~1_combout\ & (((!\inst6|regs[2][7]~regout\ & \inst|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[7]~32_combout\,
	datab => \inst6|regs[2][7]~regout\,
	datac => \inst|Mux16~1_combout\,
	datad => \inst|Mux15~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[7]~33_combout\);

-- Location: LCCOMB_X20_Y20_N28
\inst11|LPM_MUX_component|auto_generated|result_node[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[7]~34_combout\ = (\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~7_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[7]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LPM_MUX_component|auto_generated|_~7_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[7]~33_combout\,
	datac => \inst3|a_select~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[7]~34_combout\);

-- Location: LCCOMB_X20_Y20_N6
\inst11|LPM_MUX_component|auto_generated|result_node[7]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[7]~35_combout\ = (\inst8|a_sel~1_combout\ & ((\inst5|pc\(7)))) # (!\inst8|a_sel~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[7]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[7]~34_combout\,
	datac => \inst5|pc\(7),
	datad => \inst8|a_sel~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[7]~35_combout\);

-- Location: LCFF_X22_Y24_N17
\inst1|alu_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(8));

-- Location: LCCOMB_X23_Y20_N26
\inst15|LPM_MUX_component|auto_generated|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~8_combout\ = (\inst1|wbselect_out\(0) & ((\inst1|alu_out\(8)))) # (!\inst1|wbselect_out\(0) & (\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a8\,
	datac => \inst1|wbselect_out\(0),
	datad => \inst1|alu_out\(8),
	combout => \inst15|LPM_MUX_component|auto_generated|_~8_combout\);

-- Location: LCFF_X23_Y20_N27
\inst6|regs[1][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst15|LPM_MUX_component|auto_generated|_~8_combout\,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][8]~regout\);

-- Location: LCCOMB_X23_Y20_N12
\inst23|LPM_MUX_component|auto_generated|result_node[8]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[8]~35_combout\ = (\inst6|regs[30][8]~regout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\) # ((\inst6|regs[1][8]~regout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))) # (!\inst6|regs[30][8]~regout\ & (\inst6|regs[1][8]~regout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][8]~regout\,
	datab => \inst6|regs[1][8]~regout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[8]~35_combout\);

-- Location: LCFF_X22_Y20_N27
\inst6|regs[2][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~8_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][8]~regout\);

-- Location: LCFF_X22_Y20_N31
\inst6|regs[3][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~8_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][8]~regout\);

-- Location: LCCOMB_X22_Y20_N26
\inst23|LPM_MUX_component|auto_generated|result_node[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[8]~36_combout\ = (\inst5|pc\(6) & (((\inst6|regs[2][8]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & ((\inst6|regs[3][8]~regout\))) # (!\inst|Mux11~0_combout\ & 
-- (\inst6|regs[2][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst|Mux11~0_combout\,
	datac => \inst6|regs[2][8]~regout\,
	datad => \inst6|regs[3][8]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[8]~36_combout\);

-- Location: LCCOMB_X23_Y20_N24
\inst23|LPM_MUX_component|auto_generated|result_node[8]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[8]~37_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[8]~35_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[8]~36_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[8]~35_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[8]~36_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[8]~37_combout\);

-- Location: LCCOMB_X23_Y20_N22
\inst23|LPM_MUX_component|auto_generated|result_node[8]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[8]~38_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~8_combout\)))) # (!\inst3|b_select~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[8]~37_combout\ & (\inst6|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[8]~37_combout\,
	datab => \inst6|Mux63~0_combout\,
	datac => \inst3|b_select~0_combout\,
	datad => \inst15|LPM_MUX_component|auto_generated|_~8_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[8]~38_combout\);

-- Location: LCFF_X23_Y24_N19
\inst1|rs2_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(9));

-- Location: LCCOMB_X27_Y21_N20
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~42\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~42_combout\);

-- Location: LCCOMB_X23_Y24_N30
\inst10|LPM_MUX_component|auto_generated|result_node[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[8]~10_combout\ = (\inst8|b_sel~0_combout\ & \inst23|LPM_MUX_component|auto_generated|result_node[8]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|b_sel~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[8]~38_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[8]~10_combout\);

-- Location: LCCOMB_X22_Y20_N30
\inst11|LPM_MUX_component|auto_generated|result_node[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[8]~36_combout\ = (\inst|Mux15~0_combout\ & (\inst6|regs[3][8]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datac => \inst6|regs[3][8]~regout\,
	datad => \inst6|regs[1][8]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[8]~36_combout\);

-- Location: LCCOMB_X22_Y20_N0
\inst11|LPM_MUX_component|auto_generated|result_node[8]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[8]~37_combout\ = (\inst|Mux16~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[8]~36_combout\)) # (!\inst|Mux16~1_combout\ & (((\inst6|regs[2][8]~regout\ & \inst|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[8]~36_combout\,
	datab => \inst6|regs[2][8]~regout\,
	datac => \inst|Mux15~0_combout\,
	datad => \inst|Mux16~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[8]~37_combout\);

-- Location: LCCOMB_X22_Y20_N4
\inst11|LPM_MUX_component|auto_generated|result_node[8]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[8]~38_combout\ = (\inst3|a_select~0_combout\ & ((\inst15|LPM_MUX_component|auto_generated|_~8_combout\))) # (!\inst3|a_select~0_combout\ & 
-- (\inst11|LPM_MUX_component|auto_generated|result_node[8]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[8]~37_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~8_combout\,
	datad => \inst3|a_select~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[8]~38_combout\);

-- Location: LCCOMB_X22_Y20_N16
\inst11|LPM_MUX_component|auto_generated|result_node[8]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[8]~39_combout\ = (\inst8|a_sel~1_combout\ & ((\inst5|pc\(8)))) # (!\inst8|a_sel~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[8]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|a_sel~1_combout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[8]~38_combout\,
	datad => \inst5|pc\(8),
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[8]~39_combout\);

-- Location: LCFF_X22_Y24_N19
\inst1|alu_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(9));

-- Location: LCCOMB_X23_Y24_N10
\inst15|LPM_MUX_component|auto_generated|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~9_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(9))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wbselect_out\(0),
	datab => \inst1|alu_out\(9),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a9\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~9_combout\);

-- Location: LCFF_X23_Y24_N11
\inst6|regs[1][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst15|LPM_MUX_component|auto_generated|_~9_combout\,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][9]~regout\);

-- Location: LCCOMB_X23_Y21_N22
\inst23|LPM_MUX_component|auto_generated|result_node[9]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[9]~39_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][9]~regout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- \inst6|regs[1][9]~regout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \inst6|regs[1][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst6|regs[30][9]~regout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst6|regs[1][9]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[9]~39_combout\);

-- Location: LCFF_X23_Y21_N17
\inst6|regs[2][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~9_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][9]~regout\);

-- Location: LCFF_X23_Y21_N21
\inst6|regs[3][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~9_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][9]~regout\);

-- Location: LCCOMB_X23_Y21_N16
\inst23|LPM_MUX_component|auto_generated|result_node[9]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[9]~40_combout\ = (\inst5|pc\(6) & (((\inst6|regs[2][9]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & (\inst6|regs[3][9]~regout\)) # (!\inst|Mux11~0_combout\ & 
-- ((\inst6|regs[2][9]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst6|regs[3][9]~regout\,
	datac => \inst6|regs[2][9]~regout\,
	datad => \inst|Mux11~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[9]~40_combout\);

-- Location: LCCOMB_X23_Y21_N10
\inst23|LPM_MUX_component|auto_generated|result_node[9]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[9]~41_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[9]~39_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[9]~40_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[9]~40_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[9]~39_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[9]~41_combout\);

-- Location: LCCOMB_X23_Y24_N18
\inst23|LPM_MUX_component|auto_generated|result_node[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[9]~42_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~9_combout\)))) # (!\inst3|b_select~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[9]~41_combout\ & (\inst6|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[9]~41_combout\,
	datab => \inst3|b_select~0_combout\,
	datac => \inst6|Mux63~0_combout\,
	datad => \inst15|LPM_MUX_component|auto_generated|_~9_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[9]~42_combout\);

-- Location: LCFF_X25_Y24_N31
\inst1|rs2_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst23|LPM_MUX_component|auto_generated|result_node[10]~46_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(10));

-- Location: LCCOMB_X27_Y21_N24
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~43\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~43_combout\);

-- Location: LCCOMB_X23_Y24_N0
\inst10|LPM_MUX_component|auto_generated|result_node[9]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[9]~11_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[9]~42_combout\ & \inst8|b_sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[9]~42_combout\,
	datad => \inst8|b_sel~0_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[9]~11_combout\);

-- Location: LCCOMB_X23_Y21_N20
\inst11|LPM_MUX_component|auto_generated|result_node[9]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[9]~40_combout\ = (\inst|Mux15~0_combout\ & (\inst6|regs[3][9]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][9]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux15~0_combout\,
	datac => \inst6|regs[3][9]~regout\,
	datad => \inst6|regs[1][9]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[9]~40_combout\);

-- Location: LCCOMB_X23_Y21_N12
\inst11|LPM_MUX_component|auto_generated|result_node[9]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[9]~41_combout\ = (\inst|Mux16~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[9]~40_combout\)) # (!\inst|Mux16~1_combout\ & (((\inst|Mux15~0_combout\ & \inst6|regs[2][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[9]~40_combout\,
	datab => \inst|Mux16~1_combout\,
	datac => \inst|Mux15~0_combout\,
	datad => \inst6|regs[2][9]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[9]~41_combout\);

-- Location: LCCOMB_X23_Y24_N28
\inst11|LPM_MUX_component|auto_generated|result_node[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[9]~42_combout\ = (\inst3|a_select~0_combout\ & ((\inst15|LPM_MUX_component|auto_generated|_~9_combout\))) # (!\inst3|a_select~0_combout\ & 
-- (\inst11|LPM_MUX_component|auto_generated|result_node[9]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[9]~41_combout\,
	datab => \inst3|a_select~0_combout\,
	datad => \inst15|LPM_MUX_component|auto_generated|_~9_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[9]~42_combout\);

-- Location: LCCOMB_X23_Y24_N6
\inst11|LPM_MUX_component|auto_generated|result_node[9]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[9]~43_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(9))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[9]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|a_sel~1_combout\,
	datac => \inst5|pc\(9),
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[9]~42_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[9]~43_combout\);

-- Location: LCFF_X22_Y24_N21
\inst1|alu_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(10));

-- Location: LCCOMB_X22_Y21_N8
\inst15|LPM_MUX_component|auto_generated|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~10_combout\ = (\inst1|wbselect_out\(0) & ((\inst1|alu_out\(10)))) # (!\inst1|wbselect_out\(0) & (\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wbselect_out\(0),
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a10\,
	datac => \inst1|alu_out\(10),
	combout => \inst15|LPM_MUX_component|auto_generated|_~10_combout\);

-- Location: LCFF_X22_Y21_N9
\inst6|regs[1][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst15|LPM_MUX_component|auto_generated|_~10_combout\,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][10]~regout\);

-- Location: LCCOMB_X22_Y21_N20
\inst23|LPM_MUX_component|auto_generated|result_node[10]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[10]~43_combout\ = (\inst6|regs[1][10]~regout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & 
-- \inst6|regs[30][10]~regout\)))) # (!\inst6|regs[1][10]~regout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][10]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[1][10]~regout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst6|regs[30][10]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[10]~43_combout\);

-- Location: LCFF_X21_Y21_N23
\inst6|regs[2][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~10_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][10]~regout\);

-- Location: LCFF_X22_Y21_N1
\inst6|regs[3][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~10_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][10]~regout\);

-- Location: LCCOMB_X21_Y21_N6
\inst23|LPM_MUX_component|auto_generated|result_node[10]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[10]~44_combout\ = (\inst5|pc\(6) & (((\inst6|regs[2][10]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & (\inst6|regs[3][10]~regout\)) # (!\inst|Mux11~0_combout\ & 
-- ((\inst6|regs[2][10]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst|Mux11~0_combout\,
	datac => \inst6|regs[3][10]~regout\,
	datad => \inst6|regs[2][10]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[10]~44_combout\);

-- Location: LCCOMB_X21_Y21_N8
\inst23|LPM_MUX_component|auto_generated|result_node[10]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[10]~45_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[10]~43_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[10]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[10]~43_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[10]~44_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[10]~45_combout\);

-- Location: LCCOMB_X21_Y21_N24
\inst23|LPM_MUX_component|auto_generated|result_node[10]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[10]~46_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~10_combout\)))) # (!\inst3|b_select~0_combout\ & (\inst6|Mux63~0_combout\ & 
-- ((\inst23|LPM_MUX_component|auto_generated|result_node[10]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|b_select~0_combout\,
	datab => \inst6|Mux63~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~10_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[10]~45_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[10]~46_combout\);

-- Location: LCFF_X25_Y20_N9
\inst1|rs2_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst23|LPM_MUX_component|auto_generated|result_node[11]~50_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(11));

-- Location: LCCOMB_X27_Y21_N26
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~44\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~44_combout\);

-- Location: LCCOMB_X25_Y24_N26
\inst10|LPM_MUX_component|auto_generated|result_node[10]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[10]~12_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[10]~46_combout\ & \inst8|b_sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[10]~46_combout\,
	datad => \inst8|b_sel~0_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[10]~12_combout\);

-- Location: LCCOMB_X22_Y21_N0
\inst11|LPM_MUX_component|auto_generated|result_node[10]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[10]~44_combout\ = (\inst|Mux16~1_combout\ & ((\inst|Mux15~0_combout\ & (\inst6|regs[3][10]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][10]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~1_combout\,
	datab => \inst|Mux15~0_combout\,
	datac => \inst6|regs[3][10]~regout\,
	datad => \inst6|regs[1][10]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[10]~44_combout\);

-- Location: LCCOMB_X21_Y21_N18
\inst11|LPM_MUX_component|auto_generated|result_node[10]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[10]~45_combout\ = (\inst3|a_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~10_combout\)))) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[10]~44_combout\) # ((\inst11|LPM_MUX_component|auto_generated|result_node[10]~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[10]~44_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[10]~129_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~10_combout\,
	datad => \inst3|a_select~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[10]~45_combout\);

-- Location: LCCOMB_X21_Y21_N26
\inst11|LPM_MUX_component|auto_generated|result_node[10]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[10]~46_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(10))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[10]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|a_sel~1_combout\,
	datac => \inst5|pc\(10),
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[10]~45_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[10]~46_combout\);

-- Location: LCFF_X22_Y24_N23
\inst1|alu_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(11));

-- Location: LCCOMB_X22_Y21_N16
\inst15|LPM_MUX_component|auto_generated|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~11_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(11))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|alu_out\(11),
	datac => \inst1|wbselect_out\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a11\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~11_combout\);

-- Location: LCFF_X22_Y21_N17
\inst6|regs[1][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst15|LPM_MUX_component|auto_generated|_~11_combout\,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][11]~regout\);

-- Location: LCCOMB_X25_Y21_N22
\inst23|LPM_MUX_component|auto_generated|result_node[11]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[11]~47_combout\ = (\inst6|regs[30][11]~regout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- \inst6|regs[1][11]~regout\)))) # (!\inst6|regs[30][11]~regout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst6|regs[1][11]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][11]~regout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst6|regs[1][11]~regout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[11]~47_combout\);

-- Location: LCFF_X21_Y21_N9
\inst6|regs[2][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~11_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][11]~regout\);

-- Location: LCFF_X22_Y21_N7
\inst6|regs[3][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~11_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][11]~regout\);

-- Location: LCCOMB_X21_Y21_N0
\inst23|LPM_MUX_component|auto_generated|result_node[11]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[11]~48_combout\ = (\inst5|pc\(6) & (((\inst6|regs[2][11]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & (\inst6|regs[3][11]~regout\)) # (!\inst|Mux11~0_combout\ & 
-- ((\inst6|regs[2][11]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst6|regs[3][11]~regout\,
	datac => \inst6|regs[2][11]~regout\,
	datad => \inst|Mux11~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[11]~48_combout\);

-- Location: LCCOMB_X21_Y21_N20
\inst23|LPM_MUX_component|auto_generated|result_node[11]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[11]~49_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[11]~47_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[11]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[11]~47_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[11]~48_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[11]~49_combout\);

-- Location: LCCOMB_X21_Y20_N24
\inst23|LPM_MUX_component|auto_generated|result_node[11]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[11]~50_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~11_combout\)))) # (!\inst3|b_select~0_combout\ & (\inst6|Mux63~0_combout\ & 
-- ((\inst23|LPM_MUX_component|auto_generated|result_node[11]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux63~0_combout\,
	datab => \inst15|LPM_MUX_component|auto_generated|_~11_combout\,
	datac => \inst3|b_select~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[11]~49_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[11]~50_combout\);

-- Location: LCFF_X25_Y24_N15
\inst1|rs2_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst1|rs2_out[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(12));

-- Location: LCCOMB_X27_Y21_N16
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~45\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~45_combout\);

-- Location: LCCOMB_X20_Y23_N12
\inst8|imm_sel[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|imm_sel[2]~0_combout\ = (\inst|Mux27~1_combout\ & (\inst|Mux25~1_combout\ & (\inst20|control_sel~4_combout\ & \inst8|a_sel~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux27~1_combout\,
	datab => \inst|Mux25~1_combout\,
	datac => \inst20|control_sel~4_combout\,
	datad => \inst8|a_sel~0_combout\,
	combout => \inst8|imm_sel[2]~0_combout\);

-- Location: LCCOMB_X21_Y20_N4
\inst10|LPM_MUX_component|auto_generated|result_node[11]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[11]~13_combout\ = (\inst8|b_sel~0_combout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[11]~50_combout\)))) # (!\inst8|b_sel~0_combout\ & (\inst8|imm_sel[2]~0_combout\ & 
-- ((\inst|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|imm_sel[2]~0_combout\,
	datab => \inst8|b_sel~0_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[11]~50_combout\,
	datad => \inst|Mux11~1_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[11]~13_combout\);

-- Location: LCCOMB_X22_Y21_N6
\inst11|LPM_MUX_component|auto_generated|result_node[11]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[11]~47_combout\ = (\inst|Mux16~1_combout\ & ((\inst|Mux15~0_combout\ & ((\inst6|regs[3][11]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~1_combout\,
	datab => \inst6|regs[1][11]~regout\,
	datac => \inst6|regs[3][11]~regout\,
	datad => \inst|Mux15~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[11]~47_combout\);

-- Location: LCCOMB_X22_Y21_N24
\inst11|LPM_MUX_component|auto_generated|result_node[11]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[11]~48_combout\ = (\inst3|a_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~11_combout\)))) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[11]~47_combout\) # ((\inst11|LPM_MUX_component|auto_generated|result_node[11]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[11]~47_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[11]~130_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~11_combout\,
	datad => \inst3|a_select~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[11]~48_combout\);

-- Location: LCCOMB_X23_Y24_N4
\inst11|LPM_MUX_component|auto_generated|result_node[11]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[11]~49_combout\ = (\inst8|a_sel~1_combout\ & ((\inst5|pc\(11)))) # (!\inst8|a_sel~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[11]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|a_sel~1_combout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[11]~48_combout\,
	datad => \inst5|pc\(11),
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[11]~49_combout\);

-- Location: LCFF_X22_Y24_N25
\inst1|alu_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(12));

-- Location: LCCOMB_X25_Y21_N28
\inst15|LPM_MUX_component|auto_generated|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~12_combout\ = (\inst1|wbselect_out\(0) & ((\inst1|alu_out\(12)))) # (!\inst1|wbselect_out\(0) & (\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a12\,
	datab => \inst1|wbselect_out\(0),
	datad => \inst1|alu_out\(12),
	combout => \inst15|LPM_MUX_component|auto_generated|_~12_combout\);

-- Location: LCFF_X25_Y21_N29
\inst6|regs[1][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst15|LPM_MUX_component|auto_generated|_~12_combout\,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][12]~regout\);

-- Location: LCCOMB_X25_Y21_N6
\inst23|LPM_MUX_component|auto_generated|result_node[12]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[12]~51_combout\ = (\inst6|regs[30][12]~regout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- \inst6|regs[1][12]~regout\)))) # (!\inst6|regs[30][12]~regout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \inst6|regs[1][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][12]~regout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst6|regs[1][12]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[12]~51_combout\);

-- Location: LCFF_X25_Y23_N25
\inst6|regs[2][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~12_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][12]~regout\);

-- Location: LCFF_X25_Y23_N9
\inst6|regs[3][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~12_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][12]~regout\);

-- Location: LCCOMB_X25_Y23_N20
\inst23|LPM_MUX_component|auto_generated|result_node[12]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[12]~52_combout\ = (\inst|Mux11~0_combout\ & ((\inst5|pc\(6) & ((\inst6|regs[2][12]~regout\))) # (!\inst5|pc\(6) & (\inst6|regs[3][12]~regout\)))) # (!\inst|Mux11~0_combout\ & 
-- (((\inst6|regs[2][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~0_combout\,
	datab => \inst6|regs[3][12]~regout\,
	datac => \inst6|regs[2][12]~regout\,
	datad => \inst5|pc\(6),
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[12]~52_combout\);

-- Location: LCCOMB_X25_Y23_N6
\inst23|LPM_MUX_component|auto_generated|result_node[12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[12]~53_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[12]~51_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[12]~52_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[12]~52_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[12]~51_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[12]~53_combout\);

-- Location: LCCOMB_X25_Y23_N12
\inst23|LPM_MUX_component|auto_generated|result_node[12]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[12]~54_combout\ = (\inst3|b_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~12_combout\)) # (!\inst3|b_select~0_combout\ & (((\inst6|Mux63~0_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[12]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|b_select~0_combout\,
	datab => \inst15|LPM_MUX_component|auto_generated|_~12_combout\,
	datac => \inst6|Mux63~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[12]~53_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[12]~54_combout\);

-- Location: LCFF_X23_Y24_N29
\inst1|rs2_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst23|LPM_MUX_component|auto_generated|result_node[13]~58_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(13));

-- Location: LCCOMB_X27_Y21_N18
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~46\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~46_combout\);

-- Location: LCCOMB_X25_Y24_N20
\inst10|LPM_MUX_component|auto_generated|result_node[12]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[12]~14_combout\ = (\inst8|b_sel~0_combout\ & \inst23|LPM_MUX_component|auto_generated|result_node[12]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|b_sel~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[12]~54_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[12]~14_combout\);

-- Location: LCCOMB_X25_Y23_N8
\inst11|LPM_MUX_component|auto_generated|result_node[12]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[12]~50_combout\ = (\inst|Mux15~0_combout\ & (\inst6|regs[3][12]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][12]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux15~0_combout\,
	datac => \inst6|regs[3][12]~regout\,
	datad => \inst6|regs[1][12]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[12]~50_combout\);

-- Location: LCCOMB_X25_Y23_N22
\inst11|LPM_MUX_component|auto_generated|result_node[12]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[12]~51_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[12]~50_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst6|regs[2][12]~regout\ & 
-- (\inst|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[2][12]~regout\,
	datab => \inst|Mux15~0_combout\,
	datac => \inst|Mux16~1_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[12]~50_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[12]~51_combout\);

-- Location: LCCOMB_X25_Y23_N0
\inst11|LPM_MUX_component|auto_generated|result_node[12]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[12]~52_combout\ = (\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~12_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[12]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|a_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~12_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[12]~51_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[12]~52_combout\);

-- Location: LCCOMB_X24_Y24_N6
\inst11|LPM_MUX_component|auto_generated|result_node[12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[12]~53_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(12))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[12]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|a_sel~1_combout\,
	datab => \inst5|pc\(12),
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[12]~52_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[12]~53_combout\);

-- Location: LCFF_X22_Y24_N27
\inst1|alu_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(13));

-- Location: LCCOMB_X22_Y21_N14
\inst15|LPM_MUX_component|auto_generated|_~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~13_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(13))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|alu_out\(13),
	datac => \inst1|wbselect_out\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a13\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~13_combout\);

-- Location: LCFF_X22_Y21_N15
\inst6|regs[1][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst15|LPM_MUX_component|auto_generated|_~13_combout\,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][13]~regout\);

-- Location: LCCOMB_X23_Y21_N24
\inst23|LPM_MUX_component|auto_generated|result_node[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[13]~55_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][13]~regout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- \inst6|regs[1][13]~regout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \inst6|regs[1][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst6|regs[30][13]~regout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst6|regs[1][13]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[13]~55_combout\);

-- Location: LCFF_X23_Y21_N9
\inst6|regs[2][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~13_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][13]~regout\);

-- Location: LCFF_X23_Y21_N15
\inst6|regs[3][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~13_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][13]~regout\);

-- Location: LCCOMB_X23_Y21_N8
\inst23|LPM_MUX_component|auto_generated|result_node[13]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[13]~56_combout\ = (\inst5|pc\(6) & (((\inst6|regs[2][13]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & (\inst6|regs[3][13]~regout\)) # (!\inst|Mux11~0_combout\ & 
-- ((\inst6|regs[2][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst6|regs[3][13]~regout\,
	datac => \inst6|regs[2][13]~regout\,
	datad => \inst|Mux11~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[13]~56_combout\);

-- Location: LCCOMB_X23_Y21_N26
\inst23|LPM_MUX_component|auto_generated|result_node[13]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[13]~57_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[13]~55_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[13]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[13]~55_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[13]~56_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[13]~57_combout\);

-- Location: LCCOMB_X23_Y21_N30
\inst23|LPM_MUX_component|auto_generated|result_node[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[13]~58_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~13_combout\)))) # (!\inst3|b_select~0_combout\ & (\inst6|Mux63~0_combout\ & 
-- ((\inst23|LPM_MUX_component|auto_generated|result_node[13]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux63~0_combout\,
	datab => \inst3|b_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~13_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[13]~57_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[13]~58_combout\);

-- Location: LCFF_X23_Y20_N17
\inst1|rs2_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[14]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(14));

-- Location: LCCOMB_X27_Y21_N14
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~47\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(16),
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~47_combout\);

-- Location: LCCOMB_X23_Y24_N12
\inst10|LPM_MUX_component|auto_generated|result_node[13]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[13]~15_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[13]~58_combout\ & \inst8|b_sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[13]~58_combout\,
	datad => \inst8|b_sel~0_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[13]~15_combout\);

-- Location: LCCOMB_X22_Y21_N18
\inst11|LPM_MUX_component|auto_generated|result_node[13]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[13]~54_combout\ = (\inst|Mux15~0_combout\ & (\inst6|regs[3][13]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][13]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst6|regs[3][13]~regout\,
	datad => \inst6|regs[1][13]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[13]~54_combout\);

-- Location: LCCOMB_X23_Y21_N2
\inst11|LPM_MUX_component|auto_generated|result_node[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[13]~55_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[13]~54_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst|Mux15~0_combout\ & 
-- (\inst6|regs[2][13]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst|Mux16~1_combout\,
	datac => \inst6|regs[2][13]~regout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[13]~54_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[13]~55_combout\);

-- Location: LCCOMB_X23_Y21_N14
\inst11|LPM_MUX_component|auto_generated|result_node[13]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[13]~56_combout\ = (\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~13_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[13]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|a_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~13_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[13]~55_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[13]~56_combout\);

-- Location: LCCOMB_X23_Y24_N16
\inst11|LPM_MUX_component|auto_generated|result_node[13]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[13]~57_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(13))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[13]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(13),
	datab => \inst8|a_sel~1_combout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[13]~56_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[13]~57_combout\);

-- Location: LCFF_X22_Y24_N29
\inst1|alu_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(14));

-- Location: LCCOMB_X23_Y20_N0
\inst15|LPM_MUX_component|auto_generated|_~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~14_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(14))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|alu_out\(14),
	datab => \inst1|wbselect_out\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a14\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~14_combout\);

-- Location: LCFF_X22_Y21_N19
\inst6|regs[1][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~14_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][14]~regout\);

-- Location: LCFF_X20_Y21_N5
\inst6|regs[3][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~14_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][14]~regout\);

-- Location: LCCOMB_X20_Y21_N0
\inst23|LPM_MUX_component|auto_generated|result_node[14]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[14]~59_combout\ = (\inst5|pc\(6) & (\inst6|regs[1][14]~regout\)) # (!\inst5|pc\(6) & ((\inst|Mux10~0_combout\ & (\inst6|regs[1][14]~regout\)) # (!\inst|Mux10~0_combout\ & 
-- ((\inst6|regs[3][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst6|regs[1][14]~regout\,
	datac => \inst6|regs[3][14]~regout\,
	datad => \inst|Mux10~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[14]~59_combout\);

-- Location: LCCOMB_X20_Y21_N30
\inst|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux10~1_combout\ = (!\inst5|pc\(6) & !\inst|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datad => \inst|Mux10~0_combout\,
	combout => \inst|Mux10~1_combout\);

-- Location: LCFF_X20_Y21_N11
\inst6|regs[2][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~14_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][14]~regout\);

-- Location: LCCOMB_X20_Y21_N10
\inst23|LPM_MUX_component|auto_generated|result_node[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[14]~60_combout\ = (\inst|Mux11~1_combout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[14]~59_combout\)))) # (!\inst|Mux11~1_combout\ & (\inst|Mux10~1_combout\ & 
-- ((\inst6|regs[2][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~1_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[14]~59_combout\,
	datac => \inst6|regs[2][14]~regout\,
	datad => \inst|Mux11~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[14]~60_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst23|LPM_MUX_component|auto_generated|result_node[14]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[14]~61_combout\ = (\inst|Mux8~1_combout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[14]~60_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & 
-- \inst6|regs[30][14]~regout\)))) # (!\inst|Mux8~1_combout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & \inst6|regs[30][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~1_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[14]~60_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datad => \inst6|regs[30][14]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[14]~61_combout\);

-- Location: LCCOMB_X23_Y20_N16
\inst23|LPM_MUX_component|auto_generated|result_node[14]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[14]~62_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~14_combout\)))) # (!\inst3|b_select~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[14]~61_combout\ & (\inst6|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[14]~61_combout\,
	datab => \inst6|Mux63~0_combout\,
	datac => \inst3|b_select~0_combout\,
	datad => \inst15|LPM_MUX_component|auto_generated|_~14_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[14]~62_combout\);

-- Location: LCFF_X25_Y20_N23
\inst1|rs2_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst1|rs2_out[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(15));

-- Location: LCCOMB_X27_Y22_N4
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~48\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(17),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(16),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~48_combout\);

-- Location: LCCOMB_X23_Y20_N20
\inst10|LPM_MUX_component|auto_generated|result_node[14]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[14]~16_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[14]~62_combout\ & \inst8|b_sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[14]~62_combout\,
	datac => \inst8|b_sel~0_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[14]~16_combout\);

-- Location: LCCOMB_X20_Y21_N20
\inst11|LPM_MUX_component|auto_generated|result_node[14]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[14]~58_combout\ = (\inst|Mux15~0_combout\ & (\inst6|regs[3][14]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][14]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst6|regs[3][14]~regout\,
	datad => \inst6|regs[1][14]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[14]~58_combout\);

-- Location: LCCOMB_X20_Y21_N28
\inst11|LPM_MUX_component|auto_generated|result_node[14]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[14]~59_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[14]~58_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst|Mux15~0_combout\ & 
-- ((\inst6|regs[2][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst|Mux16~1_combout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[14]~58_combout\,
	datad => \inst6|regs[2][14]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[14]~59_combout\);

-- Location: LCCOMB_X20_Y21_N4
\inst11|LPM_MUX_component|auto_generated|result_node[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[14]~60_combout\ = (\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~14_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[14]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|a_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~14_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[14]~59_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[14]~60_combout\);

-- Location: LCCOMB_X21_Y21_N14
\inst11|LPM_MUX_component|auto_generated|result_node[14]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[14]~61_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(14))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[14]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(14),
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[14]~60_combout\,
	datad => \inst8|a_sel~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[14]~61_combout\);

-- Location: LCFF_X22_Y24_N31
\inst1|alu_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(15));

-- Location: LCCOMB_X25_Y21_N16
\inst15|LPM_MUX_component|auto_generated|_~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~15_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(15))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|alu_out\(15),
	datab => \inst1|wbselect_out\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a15\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~15_combout\);

-- Location: LCFF_X21_Y20_N13
\inst6|regs[1][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~15_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][15]~regout\);

-- Location: LCCOMB_X21_Y20_N18
\inst23|LPM_MUX_component|auto_generated|result_node[15]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[15]~63_combout\ = (\inst6|regs[30][15]~regout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- \inst6|regs[1][15]~regout\)))) # (!\inst6|regs[30][15]~regout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst6|regs[1][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][15]~regout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datad => \inst6|regs[1][15]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[15]~63_combout\);

-- Location: LCFF_X21_Y21_N29
\inst6|regs[2][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~15_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][15]~regout\);

-- Location: LCFF_X20_Y21_N27
\inst6|regs[3][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~15_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][15]~regout\);

-- Location: LCCOMB_X21_Y21_N28
\inst23|LPM_MUX_component|auto_generated|result_node[15]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[15]~64_combout\ = (\inst5|pc\(6) & (((\inst6|regs[2][15]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & (\inst6|regs[3][15]~regout\)) # (!\inst|Mux11~0_combout\ & 
-- ((\inst6|regs[2][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst6|regs[3][15]~regout\,
	datac => \inst6|regs[2][15]~regout\,
	datad => \inst|Mux11~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[15]~64_combout\);

-- Location: LCCOMB_X21_Y20_N10
\inst23|LPM_MUX_component|auto_generated|result_node[15]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[15]~65_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[15]~63_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[15]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[15]~64_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[15]~63_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[15]~65_combout\);

-- Location: LCCOMB_X21_Y20_N0
\inst23|LPM_MUX_component|auto_generated|result_node[15]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[15]~66_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~15_combout\)))) # (!\inst3|b_select~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[15]~65_combout\ & ((\inst6|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[15]~65_combout\,
	datab => \inst3|b_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~15_combout\,
	datad => \inst6|Mux63~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[15]~66_combout\);

-- Location: LCFF_X23_Y20_N11
\inst1|rs2_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[16]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(16));

-- Location: LCCOMB_X27_Y22_N14
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~49\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(18),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(17),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~49_combout\);

-- Location: LCCOMB_X21_Y20_N14
\inst10|LPM_MUX_component|auto_generated|result_node[15]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[15]~17_combout\ = (\inst8|b_sel~0_combout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[15]~66_combout\)))) # (!\inst8|b_sel~0_combout\ & (\inst8|imm_sel[2]~0_combout\ & 
-- ((\inst|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|imm_sel[2]~0_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[15]~66_combout\,
	datac => \inst|Mux16~1_combout\,
	datad => \inst8|b_sel~0_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[15]~17_combout\);

-- Location: LCCOMB_X20_Y21_N14
\inst11|LPM_MUX_component|auto_generated|result_node[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[15]~62_combout\ = (\inst|Mux16~1_combout\ & ((\inst|Mux15~0_combout\ & (\inst6|regs[3][15]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst6|regs[3][15]~regout\,
	datac => \inst6|regs[1][15]~regout\,
	datad => \inst|Mux16~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[15]~62_combout\);

-- Location: LCCOMB_X21_Y21_N4
\inst11|LPM_MUX_component|auto_generated|result_node[15]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[15]~63_combout\ = (\inst3|a_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~15_combout\)))) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[15]~131_combout\) # ((\inst11|LPM_MUX_component|auto_generated|result_node[15]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[15]~131_combout\,
	datab => \inst3|a_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~15_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[15]~62_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[15]~63_combout\);

-- Location: LCCOMB_X21_Y21_N22
\inst11|LPM_MUX_component|auto_generated|result_node[15]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[15]~64_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(15))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[15]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(15),
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[15]~63_combout\,
	datad => \inst8|a_sel~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[15]~64_combout\);

-- Location: LCFF_X22_Y23_N1
\inst1|alu_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(16));

-- Location: LCCOMB_X23_Y20_N14
\inst15|LPM_MUX_component|auto_generated|_~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~16_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(16))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|alu_out\(16),
	datac => \inst1|wbselect_out\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a16\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~16_combout\);

-- Location: LCFF_X23_Y20_N15
\inst6|regs[1][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst15|LPM_MUX_component|auto_generated|_~16_combout\,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][16]~regout\);

-- Location: LCFF_X24_Y20_N27
\inst6|regs[3][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~16_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][16]~regout\);

-- Location: LCCOMB_X24_Y20_N10
\inst23|LPM_MUX_component|auto_generated|result_node[16]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[16]~67_combout\ = (\inst|Mux10~0_combout\ & (\inst6|regs[1][16]~regout\)) # (!\inst|Mux10~0_combout\ & ((\inst5|pc\(6) & (\inst6|regs[1][16]~regout\)) # (!\inst5|pc\(6) & 
-- ((\inst6|regs[3][16]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[1][16]~regout\,
	datab => \inst6|regs[3][16]~regout\,
	datac => \inst|Mux10~0_combout\,
	datad => \inst5|pc\(6),
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[16]~67_combout\);

-- Location: LCFF_X24_Y20_N23
\inst6|regs[2][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~16_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][16]~regout\);

-- Location: LCCOMB_X24_Y20_N2
\inst23|LPM_MUX_component|auto_generated|result_node[16]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[16]~68_combout\ = (\inst|Mux11~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[16]~67_combout\)) # (!\inst|Mux11~1_combout\ & (((\inst6|regs[2][16]~regout\ & 
-- \inst|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[16]~67_combout\,
	datab => \inst6|regs[2][16]~regout\,
	datac => \inst|Mux10~1_combout\,
	datad => \inst|Mux11~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[16]~68_combout\);

-- Location: LCCOMB_X24_Y20_N0
\inst23|LPM_MUX_component|auto_generated|result_node[16]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[16]~69_combout\ = (\inst|Mux8~1_combout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[16]~68_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & 
-- \inst6|regs[30][16]~regout\)))) # (!\inst|Mux8~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (\inst6|regs[30][16]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~1_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datac => \inst6|regs[30][16]~regout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[16]~68_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[16]~69_combout\);

-- Location: LCCOMB_X23_Y20_N10
\inst23|LPM_MUX_component|auto_generated|result_node[16]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[16]~70_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~16_combout\)))) # (!\inst3|b_select~0_combout\ & (\inst6|Mux63~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[16]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux63~0_combout\,
	datab => \inst3|b_select~0_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[16]~69_combout\,
	datad => \inst15|LPM_MUX_component|auto_generated|_~16_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[16]~70_combout\);

-- Location: LCFF_X25_Y20_N1
\inst1|rs2_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(17));

-- Location: LCCOMB_X27_Y22_N20
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~50\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(19),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(18),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~50_combout\);

-- Location: LCCOMB_X23_Y20_N30
\inst10|LPM_MUX_component|auto_generated|result_node[16]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[16]~18_combout\ = (\inst8|b_sel~0_combout\ & \inst23|LPM_MUX_component|auto_generated|result_node[16]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|b_sel~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[16]~70_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[16]~18_combout\);

-- Location: LCCOMB_X24_Y20_N8
\inst11|LPM_MUX_component|auto_generated|result_node[16]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[16]~65_combout\ = (\inst|Mux15~0_combout\ & ((\inst6|regs[3][16]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][16]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[1][16]~regout\,
	datab => \inst|Mux15~0_combout\,
	datad => \inst6|regs[3][16]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[16]~65_combout\);

-- Location: LCCOMB_X24_Y20_N6
\inst11|LPM_MUX_component|auto_generated|result_node[16]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[16]~66_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[16]~65_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst|Mux15~0_combout\ & 
-- ((\inst6|regs[2][16]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~1_combout\,
	datab => \inst|Mux15~0_combout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[16]~65_combout\,
	datad => \inst6|regs[2][16]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[16]~66_combout\);

-- Location: LCCOMB_X23_Y20_N28
\inst11|LPM_MUX_component|auto_generated|result_node[16]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[16]~67_combout\ = (\inst3|a_select~0_combout\ & ((\inst15|LPM_MUX_component|auto_generated|_~16_combout\))) # (!\inst3|a_select~0_combout\ & 
-- (\inst11|LPM_MUX_component|auto_generated|result_node[16]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[16]~66_combout\,
	datab => \inst15|LPM_MUX_component|auto_generated|_~16_combout\,
	datad => \inst3|a_select~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[16]~67_combout\);

-- Location: LCCOMB_X22_Y20_N28
\inst11|LPM_MUX_component|auto_generated|result_node[16]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[16]~68_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(16))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[16]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|a_sel~1_combout\,
	datab => \inst5|pc\(16),
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[16]~67_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[16]~68_combout\);

-- Location: LCFF_X22_Y23_N3
\inst1|alu_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(17));

-- Location: LCCOMB_X25_Y21_N0
\inst15|LPM_MUX_component|auto_generated|_~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~17_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(17))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|alu_out\(17),
	datab => \inst1|wbselect_out\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a17\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~17_combout\);

-- Location: LCFF_X25_Y21_N19
\inst6|regs[1][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst6|regs[1][17]~feeder_combout\,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][17]~regout\);

-- Location: LCFF_X20_Y21_N25
\inst6|regs[3][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~17_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][17]~regout\);

-- Location: LCCOMB_X20_Y21_N24
\inst23|LPM_MUX_component|auto_generated|result_node[17]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[17]~71_combout\ = (\inst5|pc\(6) & (\inst6|regs[1][17]~regout\)) # (!\inst5|pc\(6) & ((\inst|Mux10~0_combout\ & (\inst6|regs[1][17]~regout\)) # (!\inst|Mux10~0_combout\ & 
-- ((\inst6|regs[3][17]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst6|regs[1][17]~regout\,
	datac => \inst6|regs[3][17]~regout\,
	datad => \inst|Mux10~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[17]~71_combout\);

-- Location: LCFF_X20_Y21_N3
\inst6|regs[2][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~17_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][17]~regout\);

-- Location: LCCOMB_X20_Y21_N2
\inst23|LPM_MUX_component|auto_generated|result_node[17]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[17]~72_combout\ = (\inst|Mux11~1_combout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[17]~71_combout\)))) # (!\inst|Mux11~1_combout\ & (\inst|Mux10~1_combout\ & 
-- ((\inst6|regs[2][17]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~1_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[17]~71_combout\,
	datac => \inst6|regs[2][17]~regout\,
	datad => \inst|Mux11~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[17]~72_combout\);

-- Location: LCCOMB_X25_Y20_N12
\inst23|LPM_MUX_component|auto_generated|result_node[17]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[17]~73_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][17]~regout\) # ((\inst|Mux8~1_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[17]~72_combout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (\inst|Mux8~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[17]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst|Mux8~1_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[17]~72_combout\,
	datad => \inst6|regs[30][17]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[17]~73_combout\);

-- Location: LCCOMB_X25_Y20_N0
\inst23|LPM_MUX_component|auto_generated|result_node[17]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[17]~74_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~17_combout\)))) # (!\inst3|b_select~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[17]~73_combout\ & (\inst6|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[17]~73_combout\,
	datab => \inst3|b_select~0_combout\,
	datac => \inst6|Mux63~0_combout\,
	datad => \inst15|LPM_MUX_component|auto_generated|_~17_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[17]~74_combout\);

-- Location: LCFF_X23_Y20_N29
\inst1|rs2_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst23|LPM_MUX_component|auto_generated|result_node[18]~78_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(18));

-- Location: LCCOMB_X27_Y22_N24
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~51\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(20),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(19),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~51_combout\);

-- Location: LCCOMB_X25_Y20_N6
\inst10|LPM_MUX_component|auto_generated|result_node[17]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[17]~19_combout\ = (\inst8|b_sel~0_combout\ & \inst23|LPM_MUX_component|auto_generated|result_node[17]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|b_sel~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[17]~74_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[17]~19_combout\);

-- Location: LCCOMB_X20_Y21_N22
\inst11|LPM_MUX_component|auto_generated|result_node[17]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[17]~69_combout\ = (\inst|Mux15~0_combout\ & (\inst6|regs[3][17]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][17]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datac => \inst6|regs[3][17]~regout\,
	datad => \inst6|regs[1][17]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[17]~69_combout\);

-- Location: LCCOMB_X20_Y21_N6
\inst11|LPM_MUX_component|auto_generated|result_node[17]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[17]~70_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[17]~69_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst|Mux15~0_combout\ & 
-- (\inst6|regs[2][17]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst6|regs[2][17]~regout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[17]~69_combout\,
	datad => \inst|Mux16~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[17]~70_combout\);

-- Location: LCCOMB_X20_Y21_N26
\inst11|LPM_MUX_component|auto_generated|result_node[17]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[17]~71_combout\ = (\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~17_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[17]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|a_select~0_combout\,
	datab => \inst15|LPM_MUX_component|auto_generated|_~17_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[17]~70_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[17]~71_combout\);

-- Location: LCCOMB_X20_Y23_N4
\inst11|LPM_MUX_component|auto_generated|result_node[17]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[17]~72_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(17))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[17]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(17),
	datac => \inst8|a_sel~1_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[17]~71_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[17]~72_combout\);

-- Location: LCFF_X22_Y23_N5
\inst1|alu_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(18));

-- Location: LCCOMB_X23_Y20_N4
\inst15|LPM_MUX_component|auto_generated|_~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~18_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(18))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|alu_out\(18),
	datac => \inst1|wbselect_out\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a18~portadataout\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~18_combout\);

-- Location: LCFF_X23_Y20_N31
\inst6|regs[1][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~18_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][18]~regout\);

-- Location: LCFF_X24_Y20_N29
\inst6|regs[3][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~18_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][18]~regout\);

-- Location: LCCOMB_X24_Y20_N24
\inst23|LPM_MUX_component|auto_generated|result_node[18]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[18]~75_combout\ = (\inst5|pc\(6) & (\inst6|regs[1][18]~regout\)) # (!\inst5|pc\(6) & ((\inst|Mux10~0_combout\ & (\inst6|regs[1][18]~regout\)) # (!\inst|Mux10~0_combout\ & 
-- ((\inst6|regs[3][18]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[1][18]~regout\,
	datab => \inst5|pc\(6),
	datac => \inst|Mux10~0_combout\,
	datad => \inst6|regs[3][18]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[18]~75_combout\);

-- Location: LCFF_X24_Y20_N15
\inst6|regs[2][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~18_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][18]~regout\);

-- Location: LCCOMB_X24_Y20_N12
\inst23|LPM_MUX_component|auto_generated|result_node[18]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[18]~76_combout\ = (\inst|Mux11~1_combout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[18]~75_combout\)))) # (!\inst|Mux11~1_combout\ & (\inst|Mux10~1_combout\ & 
-- (\inst6|regs[2][18]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~1_combout\,
	datab => \inst6|regs[2][18]~regout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[18]~75_combout\,
	datad => \inst|Mux11~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[18]~76_combout\);

-- Location: LCCOMB_X24_Y20_N16
\inst23|LPM_MUX_component|auto_generated|result_node[18]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[18]~77_combout\ = (\inst|Mux8~1_combout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[18]~76_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & 
-- \inst6|regs[30][18]~regout\)))) # (!\inst|Mux8~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (\inst6|regs[30][18]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~1_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datac => \inst6|regs[30][18]~regout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[18]~76_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[18]~77_combout\);

-- Location: LCCOMB_X23_Y20_N2
\inst23|LPM_MUX_component|auto_generated|result_node[18]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[18]~78_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~18_combout\)))) # (!\inst3|b_select~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[18]~77_combout\ & ((\inst6|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[18]~77_combout\,
	datab => \inst15|LPM_MUX_component|auto_generated|_~18_combout\,
	datac => \inst3|b_select~0_combout\,
	datad => \inst6|Mux63~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[18]~78_combout\);

-- Location: LCFF_X25_Y20_N27
\inst1|rs2_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[19]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(19));

-- Location: LCCOMB_X27_Y22_N22
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~52\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(20),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(21),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~52_combout\);

-- Location: LCCOMB_X23_Y23_N14
\inst10|LPM_MUX_component|auto_generated|result_node[18]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[18]~20_combout\ = (\inst8|b_sel~0_combout\ & \inst23|LPM_MUX_component|auto_generated|result_node[18]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|b_sel~0_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[18]~78_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[18]~20_combout\);

-- Location: LCCOMB_X24_Y20_N30
\inst11|LPM_MUX_component|auto_generated|result_node[18]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[18]~73_combout\ = (\inst|Mux15~0_combout\ & ((\inst6|regs[3][18]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][18]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux15~0_combout\,
	datac => \inst6|regs[1][18]~regout\,
	datad => \inst6|regs[3][18]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[18]~73_combout\);

-- Location: LCCOMB_X24_Y20_N18
\inst11|LPM_MUX_component|auto_generated|result_node[18]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[18]~74_combout\ = (\inst|Mux16~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[18]~73_combout\)) # (!\inst|Mux16~1_combout\ & (((\inst6|regs[2][18]~regout\ & 
-- \inst|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~1_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[18]~73_combout\,
	datac => \inst6|regs[2][18]~regout\,
	datad => \inst|Mux15~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[18]~74_combout\);

-- Location: LCCOMB_X23_Y20_N8
\inst11|LPM_MUX_component|auto_generated|result_node[18]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[18]~75_combout\ = (\inst3|a_select~0_combout\ & ((\inst15|LPM_MUX_component|auto_generated|_~18_combout\))) # (!\inst3|a_select~0_combout\ & 
-- (\inst11|LPM_MUX_component|auto_generated|result_node[18]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[18]~74_combout\,
	datab => \inst3|a_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~18_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[18]~75_combout\);

-- Location: LCCOMB_X23_Y23_N30
\inst11|LPM_MUX_component|auto_generated|result_node[18]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[18]~76_combout\ = (\inst8|a_sel~1_combout\ & ((\inst5|pc\(18)))) # (!\inst8|a_sel~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[18]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[18]~75_combout\,
	datab => \inst5|pc\(18),
	datad => \inst8|a_sel~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[18]~76_combout\);

-- Location: LCFF_X22_Y23_N7
\inst1|alu_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(19));

-- Location: LCCOMB_X24_Y22_N28
\inst15|LPM_MUX_component|auto_generated|_~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~19_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(19))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wbselect_out\(0),
	datab => \inst1|alu_out\(19),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a19\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~19_combout\);

-- Location: LCFF_X22_Y21_N23
\inst6|regs[1][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~19_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][19]~regout\);

-- Location: LCFF_X20_Y21_N19
\inst6|regs[3][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~19_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][19]~regout\);

-- Location: LCCOMB_X20_Y21_N18
\inst23|LPM_MUX_component|auto_generated|result_node[19]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[19]~79_combout\ = (\inst|Mux10~0_combout\ & (\inst6|regs[1][19]~regout\)) # (!\inst|Mux10~0_combout\ & ((\inst5|pc\(6) & (\inst6|regs[1][19]~regout\)) # (!\inst5|pc\(6) & 
-- ((\inst6|regs[3][19]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[1][19]~regout\,
	datab => \inst|Mux10~0_combout\,
	datac => \inst6|regs[3][19]~regout\,
	datad => \inst5|pc\(6),
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[19]~79_combout\);

-- Location: LCFF_X20_Y21_N17
\inst6|regs[2][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~19_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][19]~regout\);

-- Location: LCCOMB_X20_Y21_N16
\inst23|LPM_MUX_component|auto_generated|result_node[19]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[19]~80_combout\ = (\inst|Mux11~1_combout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[19]~79_combout\)))) # (!\inst|Mux11~1_combout\ & (\inst|Mux10~1_combout\ & 
-- ((\inst6|regs[2][19]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~1_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[19]~79_combout\,
	datac => \inst6|regs[2][19]~regout\,
	datad => \inst|Mux11~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[19]~80_combout\);

-- Location: LCCOMB_X25_Y20_N4
\inst23|LPM_MUX_component|auto_generated|result_node[19]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[19]~81_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][19]~regout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[19]~80_combout\ & 
-- \inst|Mux8~1_combout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[19]~80_combout\ & \inst|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst6|regs[30][19]~regout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[19]~80_combout\,
	datad => \inst|Mux8~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[19]~81_combout\);

-- Location: LCCOMB_X25_Y20_N26
\inst23|LPM_MUX_component|auto_generated|result_node[19]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[19]~82_combout\ = (\inst3|b_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~19_combout\)) # (!\inst3|b_select~0_combout\ & 
-- (((\inst23|LPM_MUX_component|auto_generated|result_node[19]~81_combout\ & \inst6|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LPM_MUX_component|auto_generated|_~19_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[19]~81_combout\,
	datac => \inst6|Mux63~0_combout\,
	datad => \inst3|b_select~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[19]~82_combout\);

-- Location: LCFF_X21_Y20_N17
\inst1|rs2_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[20]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(20));

-- Location: LCCOMB_X27_Y22_N16
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~53\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(21),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(22),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~53_combout\);

-- Location: LCCOMB_X25_Y20_N16
\inst10|LPM_MUX_component|auto_generated|result_node[19]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[19]~21_combout\ = (\inst8|b_sel~0_combout\ & \inst23|LPM_MUX_component|auto_generated|result_node[19]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|b_sel~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[19]~82_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[19]~21_combout\);

-- Location: LCCOMB_X20_Y21_N8
\inst11|LPM_MUX_component|auto_generated|result_node[19]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[19]~77_combout\ = (\inst|Mux15~0_combout\ & ((\inst6|regs[3][19]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][19]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[1][19]~regout\,
	datac => \inst6|regs[3][19]~regout\,
	datad => \inst|Mux15~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[19]~77_combout\);

-- Location: LCCOMB_X20_Y21_N12
\inst11|LPM_MUX_component|auto_generated|result_node[19]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[19]~78_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[19]~77_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst6|regs[2][19]~regout\ & 
-- ((\inst|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[2][19]~regout\,
	datab => \inst|Mux16~1_combout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[19]~77_combout\,
	datad => \inst|Mux15~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[19]~78_combout\);

-- Location: LCCOMB_X21_Y21_N30
\inst11|LPM_MUX_component|auto_generated|result_node[19]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[19]~79_combout\ = (\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~19_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[19]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|a_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~19_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[19]~78_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[19]~79_combout\);

-- Location: LCCOMB_X21_Y21_N10
\inst11|LPM_MUX_component|auto_generated|result_node[19]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[19]~80_combout\ = (\inst8|a_sel~1_combout\ & ((\inst5|pc\(19)))) # (!\inst8|a_sel~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[19]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[19]~79_combout\,
	datac => \inst5|pc\(19),
	datad => \inst8|a_sel~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[19]~80_combout\);

-- Location: LCFF_X22_Y23_N9
\inst1|alu_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(20));

-- Location: LCCOMB_X22_Y22_N8
\inst15|LPM_MUX_component|auto_generated|_~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~20_combout\ = (\inst1|wbselect_out\(0) & ((\inst1|alu_out\(20)))) # (!\inst1|wbselect_out\(0) & (\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|wbselect_out\(0),
	datac => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a20\,
	datad => \inst1|alu_out\(20),
	combout => \inst15|LPM_MUX_component|auto_generated|_~20_combout\);

-- Location: LCFF_X21_Y22_N27
\inst6|regs[2][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~20_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][20]~regout\);

-- Location: LCFF_X21_Y22_N13
\inst6|regs[3][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~20_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][20]~regout\);

-- Location: LCCOMB_X21_Y22_N12
\inst23|LPM_MUX_component|auto_generated|result_node[20]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[20]~83_combout\ = (\inst5|pc\(6) & (((\inst6|regs[2][20]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & (\inst6|regs[3][20]~regout\)) # (!\inst|Mux11~0_combout\ & 
-- ((\inst6|regs[2][20]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst|Mux11~0_combout\,
	datac => \inst6|regs[3][20]~regout\,
	datad => \inst6|regs[2][20]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[20]~83_combout\);

-- Location: LCFF_X22_Y22_N13
\inst6|regs[1][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~20_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][20]~regout\);

-- Location: LCCOMB_X22_Y22_N10
\inst23|LPM_MUX_component|auto_generated|result_node[20]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[20]~84_combout\ = (\inst|Mux10~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[20]~83_combout\)) # (!\inst|Mux10~1_combout\ & (((\inst|Mux11~1_combout\ & 
-- \inst6|regs[1][20]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[20]~83_combout\,
	datab => \inst|Mux11~1_combout\,
	datac => \inst|Mux10~1_combout\,
	datad => \inst6|regs[1][20]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[20]~84_combout\);

-- Location: LCCOMB_X21_Y20_N8
\inst23|LPM_MUX_component|auto_generated|result_node[20]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[20]~85_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[20]~84_combout\ & ((\inst|Mux8~1_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & 
-- \inst6|regs[30][20]~regout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[20]~84_combout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & \inst6|regs[30][20]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[20]~84_combout\,
	datab => \inst|Mux8~1_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datad => \inst6|regs[30][20]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[20]~85_combout\);

-- Location: LCCOMB_X21_Y20_N16
\inst23|LPM_MUX_component|auto_generated|result_node[20]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[20]~86_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~20_combout\)))) # (!\inst3|b_select~0_combout\ & (\inst6|Mux63~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[20]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux63~0_combout\,
	datab => \inst3|b_select~0_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[20]~85_combout\,
	datad => \inst15|LPM_MUX_component|auto_generated|_~20_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[20]~86_combout\);

-- Location: LCFF_X25_Y24_N9
\inst1|rs2_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[21]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(21));

-- Location: LCCOMB_X27_Y22_N30
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~54\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(23),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(22),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~54_combout\);

-- Location: LCCOMB_X21_Y20_N30
\inst10|LPM_MUX_component|auto_generated|result_node[20]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[20]~22_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[20]~86_combout\ & \inst8|b_sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[20]~86_combout\,
	datab => \inst8|b_sel~0_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[20]~22_combout\);

-- Location: LCCOMB_X21_Y22_N10
\inst11|LPM_MUX_component|auto_generated|result_node[20]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[20]~81_combout\ = (\inst|Mux15~0_combout\ & ((\inst6|regs[3][20]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][20]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[1][20]~regout\,
	datac => \inst|Mux15~0_combout\,
	datad => \inst6|regs[3][20]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[20]~81_combout\);

-- Location: LCCOMB_X21_Y22_N16
\inst11|LPM_MUX_component|auto_generated|result_node[20]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[20]~82_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[20]~81_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst|Mux15~0_combout\ & 
-- (\inst6|regs[2][20]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst6|regs[2][20]~regout\,
	datac => \inst|Mux16~1_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[20]~81_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[20]~82_combout\);

-- Location: LCCOMB_X21_Y22_N4
\inst11|LPM_MUX_component|auto_generated|result_node[20]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[20]~83_combout\ = (\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~20_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[20]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|a_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~20_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[20]~82_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[20]~83_combout\);

-- Location: LCCOMB_X21_Y22_N26
\inst11|LPM_MUX_component|auto_generated|result_node[20]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[20]~84_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(20))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[20]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(20),
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[20]~83_combout\,
	datad => \inst8|a_sel~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[20]~84_combout\);

-- Location: LCFF_X22_Y23_N11
\inst1|alu_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(21));

-- Location: LCCOMB_X23_Y22_N26
\inst15|LPM_MUX_component|auto_generated|_~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~21_combout\ = (\inst1|wbselect_out\(0) & ((\inst1|alu_out\(21)))) # (!\inst1|wbselect_out\(0) & (\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wbselect_out\(0),
	datac => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a21\,
	datad => \inst1|alu_out\(21),
	combout => \inst15|LPM_MUX_component|auto_generated|_~21_combout\);

-- Location: LCFF_X22_Y20_N29
\inst6|regs[2][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~21_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][21]~regout\);

-- Location: LCFF_X22_Y20_N25
\inst6|regs[3][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~21_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][21]~regout\);

-- Location: LCCOMB_X22_Y20_N24
\inst23|LPM_MUX_component|auto_generated|result_node[21]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[21]~87_combout\ = (\inst5|pc\(6) & (((\inst6|regs[2][21]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & (\inst6|regs[3][21]~regout\)) # (!\inst|Mux11~0_combout\ & 
-- ((\inst6|regs[2][21]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst|Mux11~0_combout\,
	datac => \inst6|regs[3][21]~regout\,
	datad => \inst6|regs[2][21]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[21]~87_combout\);

-- Location: LCFF_X25_Y24_N23
\inst6|regs[1][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~21_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][21]~regout\);

-- Location: LCCOMB_X25_Y24_N22
\inst23|LPM_MUX_component|auto_generated|result_node[21]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[21]~88_combout\ = (\inst|Mux10~1_combout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[21]~87_combout\)))) # (!\inst|Mux10~1_combout\ & (\inst|Mux11~1_combout\ & 
-- (\inst6|regs[1][21]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~1_combout\,
	datab => \inst|Mux11~1_combout\,
	datac => \inst6|regs[1][21]~regout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[21]~87_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[21]~88_combout\);

-- Location: LCCOMB_X25_Y24_N4
\inst23|LPM_MUX_component|auto_generated|result_node[21]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[21]~89_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][21]~regout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[21]~88_combout\ & 
-- \inst|Mux8~1_combout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[21]~88_combout\ & ((\inst|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[21]~88_combout\,
	datac => \inst6|regs[30][21]~regout\,
	datad => \inst|Mux8~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[21]~89_combout\);

-- Location: LCCOMB_X25_Y24_N8
\inst23|LPM_MUX_component|auto_generated|result_node[21]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[21]~90_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~21_combout\)))) # (!\inst3|b_select~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[21]~89_combout\ & (\inst6|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|b_select~0_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[21]~89_combout\,
	datac => \inst6|Mux63~0_combout\,
	datad => \inst15|LPM_MUX_component|auto_generated|_~21_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[21]~90_combout\);

-- Location: LCFF_X25_Y24_N3
\inst1|rs2_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[22]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(22));

-- Location: LCCOMB_X27_Y22_N8
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~55\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(24),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(23),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~55_combout\);

-- Location: LCCOMB_X25_Y24_N0
\inst10|LPM_MUX_component|auto_generated|result_node[21]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[21]~23_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[21]~90_combout\ & \inst8|b_sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[21]~90_combout\,
	datad => \inst8|b_sel~0_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[21]~23_combout\);

-- Location: LCCOMB_X22_Y20_N6
\inst11|LPM_MUX_component|auto_generated|result_node[21]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[21]~85_combout\ = (\inst|Mux15~0_combout\ & (\inst6|regs[3][21]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][21]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[3][21]~regout\,
	datac => \inst|Mux15~0_combout\,
	datad => \inst6|regs[1][21]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[21]~85_combout\);

-- Location: LCCOMB_X22_Y20_N22
\inst11|LPM_MUX_component|auto_generated|result_node[21]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[21]~86_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[21]~85_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst6|regs[2][21]~regout\ & 
-- (\inst|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~1_combout\,
	datab => \inst6|regs[2][21]~regout\,
	datac => \inst|Mux15~0_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[21]~85_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[21]~86_combout\);

-- Location: LCCOMB_X22_Y20_N20
\inst11|LPM_MUX_component|auto_generated|result_node[21]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[21]~87_combout\ = (\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~21_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[21]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|a_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~21_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[21]~86_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[21]~87_combout\);

-- Location: LCCOMB_X22_Y20_N18
\inst11|LPM_MUX_component|auto_generated|result_node[21]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[21]~88_combout\ = (\inst8|a_sel~1_combout\ & ((\inst5|pc\(21)))) # (!\inst8|a_sel~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[21]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|a_sel~1_combout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[21]~87_combout\,
	datad => \inst5|pc\(21),
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[21]~88_combout\);

-- Location: LCFF_X22_Y23_N13
\inst1|alu_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(22));

-- Location: LCCOMB_X23_Y23_N16
\inst15|LPM_MUX_component|auto_generated|_~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~22_combout\ = (\inst1|wbselect_out\(0) & ((\inst1|alu_out\(22)))) # (!\inst1|wbselect_out\(0) & (\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|wbselect_out\(0),
	datac => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a22\,
	datad => \inst1|alu_out\(22),
	combout => \inst15|LPM_MUX_component|auto_generated|_~22_combout\);

-- Location: LCFF_X23_Y23_N17
\inst6|regs[2][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst15|LPM_MUX_component|auto_generated|_~22_combout\,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][22]~regout\);

-- Location: LCFF_X23_Y23_N31
\inst6|regs[3][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~22_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][22]~regout\);

-- Location: LCCOMB_X24_Y23_N24
\inst23|LPM_MUX_component|auto_generated|result_node[22]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[22]~91_combout\ = (\inst5|pc\(6) & (((\inst6|regs[2][22]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & (\inst6|regs[3][22]~regout\)) # (!\inst|Mux11~0_combout\ & 
-- ((\inst6|regs[2][22]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst6|regs[3][22]~regout\,
	datac => \inst|Mux11~0_combout\,
	datad => \inst6|regs[2][22]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[22]~91_combout\);

-- Location: LCFF_X25_Y24_N7
\inst6|regs[1][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~22_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][22]~regout\);

-- Location: LCCOMB_X25_Y24_N6
\inst23|LPM_MUX_component|auto_generated|result_node[22]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[22]~92_combout\ = (\inst|Mux10~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[22]~91_combout\)) # (!\inst|Mux10~1_combout\ & (((\inst6|regs[1][22]~regout\ & 
-- \inst|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~1_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[22]~91_combout\,
	datac => \inst6|regs[1][22]~regout\,
	datad => \inst|Mux11~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[22]~92_combout\);

-- Location: LCCOMB_X25_Y24_N12
\inst23|LPM_MUX_component|auto_generated|result_node[22]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[22]~93_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[22]~92_combout\ & ((\inst|Mux8~1_combout\) # ((\inst6|regs[30][22]~regout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[22]~92_combout\ & (((\inst6|regs[30][22]~regout\ & \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[22]~92_combout\,
	datab => \inst|Mux8~1_combout\,
	datac => \inst6|regs[30][22]~regout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[22]~93_combout\);

-- Location: LCCOMB_X25_Y24_N2
\inst23|LPM_MUX_component|auto_generated|result_node[22]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[22]~94_combout\ = (\inst3|b_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~22_combout\)) # (!\inst3|b_select~0_combout\ & (((\inst6|Mux63~0_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[22]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|b_select~0_combout\,
	datab => \inst15|LPM_MUX_component|auto_generated|_~22_combout\,
	datac => \inst6|Mux63~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[22]~93_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[22]~94_combout\);

-- Location: LCFF_X22_Y22_N31
\inst1|rs2_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst23|LPM_MUX_component|auto_generated|result_node[23]~98_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(23));

-- Location: LCCOMB_X25_Y22_N24
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~56\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(25),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(24),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~56_combout\);

-- Location: LCCOMB_X25_Y24_N10
\inst10|LPM_MUX_component|auto_generated|result_node[22]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[22]~24_combout\ = (\inst8|b_sel~0_combout\ & \inst23|LPM_MUX_component|auto_generated|result_node[22]~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|b_sel~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[22]~94_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[22]~24_combout\);

-- Location: LCCOMB_X24_Y23_N14
\inst11|LPM_MUX_component|auto_generated|result_node[22]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[22]~89_combout\ = (\inst|Mux15~0_combout\ & ((\inst6|regs[3][22]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][22]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst6|regs[1][22]~regout\,
	datad => \inst6|regs[3][22]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[22]~89_combout\);

-- Location: LCCOMB_X24_Y23_N30
\inst11|LPM_MUX_component|auto_generated|result_node[22]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[22]~90_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[22]~89_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst|Mux15~0_combout\ & 
-- ((\inst6|regs[2][22]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[22]~89_combout\,
	datac => \inst|Mux16~1_combout\,
	datad => \inst6|regs[2][22]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[22]~90_combout\);

-- Location: LCCOMB_X23_Y23_N2
\inst11|LPM_MUX_component|auto_generated|result_node[22]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[22]~91_combout\ = (\inst3|a_select~0_combout\ & ((\inst15|LPM_MUX_component|auto_generated|_~22_combout\))) # (!\inst3|a_select~0_combout\ & 
-- (\inst11|LPM_MUX_component|auto_generated|result_node[22]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[22]~90_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~22_combout\,
	datad => \inst3|a_select~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[22]~91_combout\);

-- Location: LCCOMB_X23_Y23_N10
\inst11|LPM_MUX_component|auto_generated|result_node[22]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[22]~92_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(22))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[22]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(22),
	datab => \inst8|a_sel~1_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[22]~91_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[22]~92_combout\);

-- Location: LCFF_X22_Y23_N15
\inst1|alu_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(23));

-- Location: LCCOMB_X22_Y22_N26
\inst15|LPM_MUX_component|auto_generated|_~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~23_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(23))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|wbselect_out\(0),
	datac => \inst1|alu_out\(23),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a23\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~23_combout\);

-- Location: LCFF_X21_Y22_N31
\inst6|regs[2][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~23_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][23]~regout\);

-- Location: LCFF_X21_Y22_N1
\inst6|regs[3][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~23_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][23]~regout\);

-- Location: LCCOMB_X21_Y22_N0
\inst23|LPM_MUX_component|auto_generated|result_node[23]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[23]~95_combout\ = (\inst5|pc\(6) & (((\inst6|regs[2][23]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & (\inst6|regs[3][23]~regout\)) # (!\inst|Mux11~0_combout\ & 
-- ((\inst6|regs[2][23]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst|Mux11~0_combout\,
	datac => \inst6|regs[3][23]~regout\,
	datad => \inst6|regs[2][23]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[23]~95_combout\);

-- Location: LCFF_X22_Y22_N15
\inst6|regs[1][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~23_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][23]~regout\);

-- Location: LCCOMB_X22_Y22_N14
\inst23|LPM_MUX_component|auto_generated|result_node[23]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[23]~96_combout\ = (\inst|Mux10~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[23]~95_combout\)) # (!\inst|Mux10~1_combout\ & (((\inst6|regs[1][23]~regout\ & 
-- \inst|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[23]~95_combout\,
	datab => \inst|Mux10~1_combout\,
	datac => \inst6|regs[1][23]~regout\,
	datad => \inst|Mux11~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[23]~96_combout\);

-- Location: LCCOMB_X21_Y22_N6
\inst23|LPM_MUX_component|auto_generated|result_node[23]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[23]~97_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][23]~regout\) # ((\inst|Mux8~1_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[23]~96_combout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (((\inst|Mux8~1_combout\ & \inst23|LPM_MUX_component|auto_generated|result_node[23]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst6|regs[30][23]~regout\,
	datac => \inst|Mux8~1_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[23]~96_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[23]~97_combout\);

-- Location: LCCOMB_X21_Y22_N30
\inst23|LPM_MUX_component|auto_generated|result_node[23]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[23]~98_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~23_combout\)))) # (!\inst3|b_select~0_combout\ & (\inst6|Mux63~0_combout\ & 
-- ((\inst23|LPM_MUX_component|auto_generated|result_node[23]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux63~0_combout\,
	datab => \inst3|b_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~23_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[23]~97_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[23]~98_combout\);

-- Location: LCFF_X22_Y22_N1
\inst1|rs2_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[24]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(24));

-- Location: LCCOMB_X25_Y22_N4
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~57\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(25),
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(26),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~57_combout\);

-- Location: LCCOMB_X22_Y22_N12
\inst10|LPM_MUX_component|auto_generated|result_node[23]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[23]~25_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[23]~98_combout\ & \inst8|b_sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[23]~98_combout\,
	datad => \inst8|b_sel~0_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[23]~25_combout\);

-- Location: LCCOMB_X21_Y22_N22
\inst11|LPM_MUX_component|auto_generated|result_node[23]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[23]~93_combout\ = (\inst|Mux15~0_combout\ & ((\inst6|regs[3][23]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][23]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|regs[1][23]~regout\,
	datac => \inst|Mux15~0_combout\,
	datad => \inst6|regs[3][23]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[23]~93_combout\);

-- Location: LCCOMB_X21_Y22_N8
\inst11|LPM_MUX_component|auto_generated|result_node[23]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[23]~94_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[23]~93_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst|Mux15~0_combout\ & 
-- (\inst6|regs[2][23]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst6|regs[2][23]~regout\,
	datac => \inst|Mux16~1_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[23]~93_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[23]~94_combout\);

-- Location: LCCOMB_X21_Y22_N14
\inst11|LPM_MUX_component|auto_generated|result_node[23]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[23]~95_combout\ = (\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~23_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[23]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LPM_MUX_component|auto_generated|_~23_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[23]~94_combout\,
	datad => \inst3|a_select~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[23]~95_combout\);

-- Location: LCCOMB_X21_Y22_N2
\inst11|LPM_MUX_component|auto_generated|result_node[23]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[23]~96_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(23))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[23]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(23),
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[23]~95_combout\,
	datad => \inst8|a_sel~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[23]~96_combout\);

-- Location: LCFF_X22_Y23_N17
\inst1|alu_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(24));

-- Location: LCCOMB_X22_Y22_N20
\inst15|LPM_MUX_component|auto_generated|_~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~24_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(24))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|alu_out\(24),
	datac => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a24\,
	datad => \inst1|wbselect_out\(0),
	combout => \inst15|LPM_MUX_component|auto_generated|_~24_combout\);

-- Location: LCFF_X23_Y23_N29
\inst6|regs[2][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~24_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][24]~regout\);

-- Location: LCFF_X23_Y23_N21
\inst6|regs[3][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~24_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][24]~regout\);

-- Location: LCCOMB_X23_Y23_N20
\inst23|LPM_MUX_component|auto_generated|result_node[24]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[24]~99_combout\ = (\inst5|pc\(6) & (\inst6|regs[2][24]~regout\)) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & ((\inst6|regs[3][24]~regout\))) # (!\inst|Mux11~0_combout\ & 
-- (\inst6|regs[2][24]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst6|regs[2][24]~regout\,
	datac => \inst6|regs[3][24]~regout\,
	datad => \inst|Mux11~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[24]~99_combout\);

-- Location: LCFF_X22_Y22_N5
\inst6|regs[1][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~24_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][24]~regout\);

-- Location: LCCOMB_X22_Y22_N4
\inst23|LPM_MUX_component|auto_generated|result_node[24]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[24]~100_combout\ = (\inst|Mux10~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[24]~99_combout\)) # (!\inst|Mux10~1_combout\ & (((\inst6|regs[1][24]~regout\ & 
-- \inst|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[24]~99_combout\,
	datab => \inst|Mux10~1_combout\,
	datac => \inst6|regs[1][24]~regout\,
	datad => \inst|Mux11~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[24]~100_combout\);

-- Location: LCCOMB_X21_Y22_N18
\inst23|LPM_MUX_component|auto_generated|result_node[24]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[24]~101_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][24]~regout\) # ((\inst|Mux8~1_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[24]~100_combout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (((\inst|Mux8~1_combout\ & \inst23|LPM_MUX_component|auto_generated|result_node[24]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst6|regs[30][24]~regout\,
	datac => \inst|Mux8~1_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[24]~100_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[24]~101_combout\);

-- Location: LCCOMB_X22_Y22_N0
\inst23|LPM_MUX_component|auto_generated|result_node[24]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[24]~102_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~24_combout\)))) # (!\inst3|b_select~0_combout\ & (\inst6|Mux63~0_combout\ & 
-- ((\inst23|LPM_MUX_component|auto_generated|result_node[24]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|b_select~0_combout\,
	datab => \inst6|Mux63~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~24_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[24]~101_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[24]~102_combout\);

-- Location: LCFF_X24_Y23_N7
\inst1|rs2_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[25]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(25));

-- Location: LCCOMB_X25_Y22_N20
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~58\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(27),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(26),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~58_combout\);

-- Location: LCCOMB_X22_Y22_N30
\inst10|LPM_MUX_component|auto_generated|result_node[24]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[24]~26_combout\ = (\inst8|b_sel~0_combout\ & \inst23|LPM_MUX_component|auto_generated|result_node[24]~102_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|b_sel~0_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[24]~102_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[24]~26_combout\);

-- Location: LCCOMB_X23_Y23_N28
\inst11|LPM_MUX_component|auto_generated|result_node[24]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[24]~97_combout\ = (\inst|Mux15~0_combout\ & (\inst6|regs[3][24]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][24]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[3][24]~regout\,
	datab => \inst|Mux15~0_combout\,
	datad => \inst6|regs[1][24]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[24]~97_combout\);

-- Location: LCCOMB_X23_Y23_N18
\inst11|LPM_MUX_component|auto_generated|result_node[24]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[24]~98_combout\ = (\inst|Mux16~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[24]~97_combout\)) # (!\inst|Mux16~1_combout\ & (((\inst|Mux15~0_combout\ & 
-- \inst6|regs[2][24]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[24]~97_combout\,
	datab => \inst|Mux16~1_combout\,
	datac => \inst|Mux15~0_combout\,
	datad => \inst6|regs[2][24]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[24]~98_combout\);

-- Location: LCCOMB_X23_Y23_N8
\inst11|LPM_MUX_component|auto_generated|result_node[24]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[24]~99_combout\ = (\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~24_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[24]~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|a_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~24_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[24]~98_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[24]~99_combout\);

-- Location: LCCOMB_X23_Y23_N6
\inst11|LPM_MUX_component|auto_generated|result_node[24]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[24]~100_combout\ = (\inst8|a_sel~1_combout\ & ((\inst5|pc\(24)))) # (!\inst8|a_sel~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[24]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|a_sel~1_combout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[24]~99_combout\,
	datad => \inst5|pc\(24),
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[24]~100_combout\);

-- Location: LCFF_X22_Y23_N19
\inst1|alu_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(25));

-- Location: LCCOMB_X25_Y23_N10
\inst15|LPM_MUX_component|auto_generated|_~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~25_combout\ = (\inst1|wbselect_out\(0) & ((\inst1|alu_out\(25)))) # (!\inst1|wbselect_out\(0) & (\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wbselect_out\(0),
	datac => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a25\,
	datad => \inst1|alu_out\(25),
	combout => \inst15|LPM_MUX_component|auto_generated|_~25_combout\);

-- Location: LCFF_X25_Y23_N11
\inst6|regs[2][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst15|LPM_MUX_component|auto_generated|_~25_combout\,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][25]~regout\);

-- Location: LCFF_X25_Y23_N29
\inst6|regs[3][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~25_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][25]~regout\);

-- Location: LCCOMB_X25_Y23_N28
\inst23|LPM_MUX_component|auto_generated|result_node[25]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[25]~103_combout\ = (\inst|Mux11~0_combout\ & ((\inst5|pc\(6) & ((\inst6|regs[2][25]~regout\))) # (!\inst5|pc\(6) & (\inst6|regs[3][25]~regout\)))) # (!\inst|Mux11~0_combout\ & 
-- (((\inst6|regs[2][25]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~0_combout\,
	datab => \inst5|pc\(6),
	datac => \inst6|regs[3][25]~regout\,
	datad => \inst6|regs[2][25]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[25]~103_combout\);

-- Location: LCFF_X24_Y23_N11
\inst6|regs[1][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~25_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][25]~regout\);

-- Location: LCCOMB_X24_Y23_N10
\inst23|LPM_MUX_component|auto_generated|result_node[25]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[25]~104_combout\ = (\inst|Mux10~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[25]~103_combout\)) # (!\inst|Mux10~1_combout\ & (((\inst|Mux11~1_combout\ & 
-- \inst6|regs[1][25]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[25]~103_combout\,
	datab => \inst|Mux11~1_combout\,
	datac => \inst6|regs[1][25]~regout\,
	datad => \inst|Mux10~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[25]~104_combout\);

-- Location: LCCOMB_X24_Y23_N12
\inst23|LPM_MUX_component|auto_generated|result_node[25]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[25]~105_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[25]~104_combout\ & ((\inst|Mux8~1_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & 
-- \inst6|regs[30][25]~regout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[25]~104_combout\ & (((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & \inst6|regs[30][25]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[25]~104_combout\,
	datab => \inst|Mux8~1_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datad => \inst6|regs[30][25]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[25]~105_combout\);

-- Location: LCCOMB_X24_Y23_N6
\inst23|LPM_MUX_component|auto_generated|result_node[25]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[25]~106_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~25_combout\)))) # (!\inst3|b_select~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[25]~105_combout\ & (\inst6|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[25]~105_combout\,
	datab => \inst6|Mux63~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~25_combout\,
	datad => \inst3|b_select~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[25]~106_combout\);

-- Location: LCFF_X25_Y20_N31
\inst1|rs2_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[26]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(26));

-- Location: LCCOMB_X25_Y22_N8
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~59\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(28),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(27),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~59_combout\);

-- Location: LCCOMB_X23_Y23_N0
\inst10|LPM_MUX_component|auto_generated|result_node[25]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[25]~27_combout\ = (\inst8|b_sel~0_combout\ & \inst23|LPM_MUX_component|auto_generated|result_node[25]~106_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|b_sel~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[25]~106_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[25]~27_combout\);

-- Location: LCCOMB_X25_Y23_N30
\inst11|LPM_MUX_component|auto_generated|result_node[25]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[25]~101_combout\ = (\inst|Mux15~0_combout\ & ((\inst6|regs[3][25]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][25]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[1][25]~regout\,
	datab => \inst|Mux15~0_combout\,
	datad => \inst6|regs[3][25]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[25]~101_combout\);

-- Location: LCCOMB_X25_Y23_N4
\inst11|LPM_MUX_component|auto_generated|result_node[25]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[25]~102_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[25]~101_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst6|regs[2][25]~regout\ & 
-- (\inst|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[2][25]~regout\,
	datab => \inst|Mux15~0_combout\,
	datac => \inst|Mux16~1_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[25]~101_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[25]~102_combout\);

-- Location: LCCOMB_X24_Y23_N22
\inst11|LPM_MUX_component|auto_generated|result_node[25]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[25]~103_combout\ = (\inst3|a_select~0_combout\ & ((\inst15|LPM_MUX_component|auto_generated|_~25_combout\))) # (!\inst3|a_select~0_combout\ & 
-- (\inst11|LPM_MUX_component|auto_generated|result_node[25]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[25]~102_combout\,
	datab => \inst15|LPM_MUX_component|auto_generated|_~25_combout\,
	datad => \inst3|a_select~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[25]~103_combout\);

-- Location: LCCOMB_X23_Y23_N4
\inst11|LPM_MUX_component|auto_generated|result_node[25]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[25]~104_combout\ = (\inst8|a_sel~1_combout\ & ((\inst5|pc\(25)))) # (!\inst8|a_sel~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[25]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[25]~103_combout\,
	datac => \inst5|pc\(25),
	datad => \inst8|a_sel~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[25]~104_combout\);

-- Location: LCFF_X22_Y23_N21
\inst1|alu_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(26));

-- Location: LCCOMB_X25_Y23_N24
\inst15|LPM_MUX_component|auto_generated|_~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~26_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(26))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|alu_out\(26),
	datab => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a26\,
	datad => \inst1|wbselect_out\(0),
	combout => \inst15|LPM_MUX_component|auto_generated|_~26_combout\);

-- Location: LCFF_X23_Y21_N11
\inst6|regs[2][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~26_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][26]~regout\);

-- Location: LCFF_X22_Y21_N29
\inst6|regs[3][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~26_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][26]~regout\);

-- Location: LCCOMB_X22_Y21_N28
\inst23|LPM_MUX_component|auto_generated|result_node[26]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[26]~107_combout\ = (\inst|Mux11~0_combout\ & ((\inst5|pc\(6) & (\inst6|regs[2][26]~regout\)) # (!\inst5|pc\(6) & ((\inst6|regs[3][26]~regout\))))) # (!\inst|Mux11~0_combout\ & 
-- (\inst6|regs[2][26]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~0_combout\,
	datab => \inst6|regs[2][26]~regout\,
	datac => \inst6|regs[3][26]~regout\,
	datad => \inst5|pc\(6),
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[26]~107_combout\);

-- Location: LCFF_X22_Y21_N5
\inst6|regs[1][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~26_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][26]~regout\);

-- Location: LCCOMB_X22_Y21_N4
\inst23|LPM_MUX_component|auto_generated|result_node[26]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[26]~108_combout\ = (\inst|Mux10~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[26]~107_combout\)) # (!\inst|Mux10~1_combout\ & (((\inst|Mux11~1_combout\ & 
-- \inst6|regs[1][26]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[26]~107_combout\,
	datab => \inst|Mux11~1_combout\,
	datac => \inst6|regs[1][26]~regout\,
	datad => \inst|Mux10~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[26]~108_combout\);

-- Location: LCCOMB_X25_Y20_N20
\inst23|LPM_MUX_component|auto_generated|result_node[26]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[26]~109_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][26]~regout\) # ((\inst|Mux8~1_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[26]~108_combout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (\inst|Mux8~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[26]~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst|Mux8~1_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[26]~108_combout\,
	datad => \inst6|regs[30][26]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[26]~109_combout\);

-- Location: LCCOMB_X25_Y20_N30
\inst23|LPM_MUX_component|auto_generated|result_node[26]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[26]~110_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~26_combout\)))) # (!\inst3|b_select~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[26]~109_combout\ & (\inst6|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[26]~109_combout\,
	datab => \inst3|b_select~0_combout\,
	datac => \inst6|Mux63~0_combout\,
	datad => \inst15|LPM_MUX_component|auto_generated|_~26_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[26]~110_combout\);

-- Location: LCFF_X24_Y23_N17
\inst1|rs2_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[27]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(27));

-- Location: LCCOMB_X25_Y22_N16
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~60\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(29),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(28),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~60_combout\);

-- Location: LCCOMB_X25_Y20_N8
\inst10|LPM_MUX_component|auto_generated|result_node[26]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[26]~28_combout\ = (\inst8|b_sel~0_combout\ & \inst23|LPM_MUX_component|auto_generated|result_node[26]~110_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|b_sel~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[26]~110_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[26]~28_combout\);

-- Location: LCCOMB_X22_Y21_N12
\inst11|LPM_MUX_component|auto_generated|result_node[26]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[26]~105_combout\ = (\inst|Mux16~1_combout\ & ((\inst|Mux15~0_combout\ & (\inst6|regs[3][26]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][26]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst6|regs[3][26]~regout\,
	datac => \inst6|regs[1][26]~regout\,
	datad => \inst|Mux16~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[26]~105_combout\);

-- Location: LCCOMB_X22_Y21_N30
\inst11|LPM_MUX_component|auto_generated|result_node[26]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[26]~106_combout\ = (\inst3|a_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~26_combout\)))) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[26]~105_combout\) # ((\inst11|LPM_MUX_component|auto_generated|result_node[26]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[26]~105_combout\,
	datab => \inst3|a_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~26_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[26]~132_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[26]~106_combout\);

-- Location: LCCOMB_X22_Y21_N2
\inst11|LPM_MUX_component|auto_generated|result_node[26]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[26]~107_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(26))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[26]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(26),
	datab => \inst8|a_sel~1_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[26]~106_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[26]~107_combout\);

-- Location: LCFF_X22_Y23_N23
\inst1|alu_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(27));

-- Location: LCCOMB_X23_Y22_N20
\inst15|LPM_MUX_component|auto_generated|_~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~27_combout\ = (\inst1|wbselect_out\(0) & ((\inst1|alu_out\(27)))) # (!\inst1|wbselect_out\(0) & (\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a27\,
	datab => \inst1|alu_out\(27),
	datac => \inst1|wbselect_out\(0),
	combout => \inst15|LPM_MUX_component|auto_generated|_~27_combout\);

-- Location: LCFF_X23_Y22_N21
\inst6|regs[2][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst15|LPM_MUX_component|auto_generated|_~27_combout\,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][27]~regout\);

-- Location: LCFF_X23_Y22_N23
\inst6|regs[3][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~27_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][27]~regout\);

-- Location: LCCOMB_X23_Y22_N22
\inst23|LPM_MUX_component|auto_generated|result_node[27]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[27]~111_combout\ = (\inst5|pc\(6) & (\inst6|regs[2][27]~regout\)) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & ((\inst6|regs[3][27]~regout\))) # (!\inst|Mux11~0_combout\ & 
-- (\inst6|regs[2][27]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[2][27]~regout\,
	datab => \inst5|pc\(6),
	datac => \inst6|regs[3][27]~regout\,
	datad => \inst|Mux11~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[27]~111_combout\);

-- Location: LCFF_X24_Y23_N29
\inst6|regs[1][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~27_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][27]~regout\);

-- Location: LCCOMB_X24_Y23_N28
\inst23|LPM_MUX_component|auto_generated|result_node[27]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[27]~112_combout\ = (\inst|Mux10~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[27]~111_combout\)) # (!\inst|Mux10~1_combout\ & (((\inst|Mux11~1_combout\ & 
-- \inst6|regs[1][27]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[27]~111_combout\,
	datab => \inst|Mux11~1_combout\,
	datac => \inst6|regs[1][27]~regout\,
	datad => \inst|Mux10~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[27]~112_combout\);

-- Location: LCCOMB_X24_Y23_N0
\inst23|LPM_MUX_component|auto_generated|result_node[27]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[27]~113_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][27]~regout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[27]~112_combout\ & 
-- \inst|Mux8~1_combout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[27]~112_combout\ & (\inst|Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[27]~112_combout\,
	datac => \inst|Mux8~1_combout\,
	datad => \inst6|regs[30][27]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[27]~113_combout\);

-- Location: LCCOMB_X24_Y23_N16
\inst23|LPM_MUX_component|auto_generated|result_node[27]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[27]~114_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~27_combout\)))) # (!\inst3|b_select~0_combout\ & (\inst6|Mux63~0_combout\ & 
-- ((\inst23|LPM_MUX_component|auto_generated|result_node[27]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|b_select~0_combout\,
	datab => \inst6|Mux63~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~27_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[27]~113_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[27]~114_combout\);

-- Location: LCFF_X24_Y23_N5
\inst1|rs2_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[28]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(28));

-- Location: LCCOMB_X25_Y22_N0
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~61\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(30),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(29),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~61_combout\);

-- Location: LCCOMB_X23_Y23_N26
\inst10|LPM_MUX_component|auto_generated|result_node[27]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[27]~29_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[27]~114_combout\ & \inst8|b_sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[27]~114_combout\,
	datad => \inst8|b_sel~0_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[27]~29_combout\);

-- Location: LCCOMB_X23_Y22_N4
\inst11|LPM_MUX_component|auto_generated|result_node[27]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[27]~108_combout\ = (\inst|Mux15~0_combout\ & ((\inst6|regs[3][27]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][27]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux15~0_combout\,
	datac => \inst6|regs[1][27]~regout\,
	datad => \inst6|regs[3][27]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[27]~108_combout\);

-- Location: LCCOMB_X23_Y22_N18
\inst11|LPM_MUX_component|auto_generated|result_node[27]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[27]~109_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[27]~108_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst6|regs[2][27]~regout\ & 
-- (\inst|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[2][27]~regout\,
	datab => \inst|Mux15~0_combout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[27]~108_combout\,
	datad => \inst|Mux16~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[27]~109_combout\);

-- Location: LCCOMB_X23_Y22_N2
\inst11|LPM_MUX_component|auto_generated|result_node[27]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[27]~110_combout\ = (\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~27_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[27]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LPM_MUX_component|auto_generated|_~27_combout\,
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[27]~109_combout\,
	datad => \inst3|a_select~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[27]~110_combout\);

-- Location: LCCOMB_X22_Y22_N2
\inst11|LPM_MUX_component|auto_generated|result_node[27]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[27]~111_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(27))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[27]~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(27),
	datac => \inst8|a_sel~1_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[27]~110_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[27]~111_combout\);

-- Location: LCFF_X22_Y23_N25
\inst1|alu_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(28));

-- Location: LCCOMB_X23_Y22_N30
\inst15|LPM_MUX_component|auto_generated|_~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~28_combout\ = (\inst1|wbselect_out\(0) & ((\inst1|alu_out\(28)))) # (!\inst1|wbselect_out\(0) & (\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a28\,
	datac => \inst1|wbselect_out\(0),
	datad => \inst1|alu_out\(28),
	combout => \inst15|LPM_MUX_component|auto_generated|_~28_combout\);

-- Location: LCFF_X23_Y22_N31
\inst6|regs[2][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst15|LPM_MUX_component|auto_generated|_~28_combout\,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][28]~regout\);

-- Location: LCFF_X23_Y22_N11
\inst6|regs[3][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~28_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][28]~regout\);

-- Location: LCCOMB_X23_Y22_N10
\inst23|LPM_MUX_component|auto_generated|result_node[28]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[28]~115_combout\ = (\inst5|pc\(6) & (((\inst6|regs[2][28]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & (\inst6|regs[3][28]~regout\)) # (!\inst|Mux11~0_combout\ & 
-- ((\inst6|regs[2][28]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst|Mux11~0_combout\,
	datac => \inst6|regs[3][28]~regout\,
	datad => \inst6|regs[2][28]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[28]~115_combout\);

-- Location: LCFF_X24_Y23_N21
\inst6|regs[1][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~28_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][28]~regout\);

-- Location: LCCOMB_X24_Y23_N20
\inst23|LPM_MUX_component|auto_generated|result_node[28]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[28]~116_combout\ = (\inst|Mux10~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[28]~115_combout\)) # (!\inst|Mux10~1_combout\ & (((\inst|Mux11~1_combout\ & 
-- \inst6|regs[1][28]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[28]~115_combout\,
	datab => \inst|Mux11~1_combout\,
	datac => \inst6|regs[1][28]~regout\,
	datad => \inst|Mux10~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[28]~116_combout\);

-- Location: LCCOMB_X24_Y23_N26
\inst23|LPM_MUX_component|auto_generated|result_node[28]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[28]~117_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[28]~116_combout\ & ((\inst|Mux8~1_combout\) # ((\inst6|regs[30][28]~regout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[28]~116_combout\ & (\inst6|regs[30][28]~regout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[28]~116_combout\,
	datab => \inst6|regs[30][28]~regout\,
	datac => \inst|Mux8~1_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[28]~117_combout\);

-- Location: LCCOMB_X24_Y23_N4
\inst23|LPM_MUX_component|auto_generated|result_node[28]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[28]~118_combout\ = (\inst3|b_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~28_combout\)) # (!\inst3|b_select~0_combout\ & (((\inst6|Mux63~0_combout\ & 
-- \inst23|LPM_MUX_component|auto_generated|result_node[28]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LPM_MUX_component|auto_generated|_~28_combout\,
	datab => \inst6|Mux63~0_combout\,
	datac => \inst3|b_select~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[28]~117_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[28]~118_combout\);

-- Location: LCFF_X22_Y22_N23
\inst1|rs2_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[29]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(29));

-- Location: LCCOMB_X25_Y22_N6
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~62\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(30),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(31),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~62_combout\);

-- Location: LCCOMB_X23_Y23_N24
\inst10|LPM_MUX_component|auto_generated|result_node[28]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[28]~30_combout\ = (\inst8|b_sel~0_combout\ & \inst23|LPM_MUX_component|auto_generated|result_node[28]~118_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|b_sel~0_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[28]~118_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[28]~30_combout\);

-- Location: LCCOMB_X23_Y22_N14
\inst11|LPM_MUX_component|auto_generated|result_node[28]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[28]~112_combout\ = (\inst|Mux15~0_combout\ & ((\inst6|regs[3][28]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][28]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[1][28]~regout\,
	datab => \inst|Mux15~0_combout\,
	datad => \inst6|regs[3][28]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[28]~112_combout\);

-- Location: LCCOMB_X23_Y22_N0
\inst11|LPM_MUX_component|auto_generated|result_node[28]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[28]~113_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[28]~112_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst6|regs[2][28]~regout\ & 
-- ((\inst|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~1_combout\,
	datab => \inst6|regs[2][28]~regout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[28]~112_combout\,
	datad => \inst|Mux15~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[28]~113_combout\);

-- Location: LCCOMB_X23_Y22_N24
\inst11|LPM_MUX_component|auto_generated|result_node[28]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[28]~114_combout\ = (\inst3|a_select~0_combout\ & ((\inst15|LPM_MUX_component|auto_generated|_~28_combout\))) # (!\inst3|a_select~0_combout\ & 
-- (\inst11|LPM_MUX_component|auto_generated|result_node[28]~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_MUX_component|auto_generated|result_node[28]~113_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~28_combout\,
	datad => \inst3|a_select~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[28]~114_combout\);

-- Location: LCCOMB_X22_Y22_N16
\inst11|LPM_MUX_component|auto_generated|result_node[28]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[28]~115_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(28))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[28]~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|a_sel~1_combout\,
	datac => \inst5|pc\(28),
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[28]~114_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[28]~115_combout\);

-- Location: LCFF_X22_Y23_N27
\inst1|alu_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(29));

-- Location: LCCOMB_X23_Y22_N12
\inst15|LPM_MUX_component|auto_generated|_~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~29_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(29))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wbselect_out\(0),
	datab => \inst1|alu_out\(29),
	datac => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a29\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~29_combout\);

-- Location: LCFF_X23_Y22_N13
\inst6|regs[2][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst15|LPM_MUX_component|auto_generated|_~29_combout\,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][29]~regout\);

-- Location: LCFF_X23_Y22_N17
\inst6|regs[3][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~29_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][29]~regout\);

-- Location: LCCOMB_X23_Y22_N16
\inst23|LPM_MUX_component|auto_generated|result_node[29]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[29]~119_combout\ = (\inst5|pc\(6) & (((\inst6|regs[2][29]~regout\)))) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & (\inst6|regs[3][29]~regout\)) # (!\inst|Mux11~0_combout\ & 
-- ((\inst6|regs[2][29]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst|Mux11~0_combout\,
	datac => \inst6|regs[3][29]~regout\,
	datad => \inst6|regs[2][29]~regout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[29]~119_combout\);

-- Location: LCFF_X22_Y22_N19
\inst6|regs[1][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~29_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][29]~regout\);

-- Location: LCCOMB_X22_Y22_N18
\inst23|LPM_MUX_component|auto_generated|result_node[29]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[29]~120_combout\ = (\inst|Mux10~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[29]~119_combout\)) # (!\inst|Mux10~1_combout\ & (((\inst6|regs[1][29]~regout\ & 
-- \inst|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[29]~119_combout\,
	datab => \inst|Mux10~1_combout\,
	datac => \inst6|regs[1][29]~regout\,
	datad => \inst|Mux11~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[29]~120_combout\);

-- Location: LCCOMB_X22_Y22_N6
\inst23|LPM_MUX_component|auto_generated|result_node[29]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[29]~121_combout\ = (\inst6|regs[30][29]~regout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[29]~120_combout\ & 
-- \inst|Mux8~1_combout\)))) # (!\inst6|regs[30][29]~regout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[29]~120_combout\ & (\inst|Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][29]~regout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[29]~120_combout\,
	datac => \inst|Mux8~1_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[29]~121_combout\);

-- Location: LCCOMB_X22_Y22_N22
\inst23|LPM_MUX_component|auto_generated|result_node[29]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[29]~122_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~29_combout\)))) # (!\inst3|b_select~0_combout\ & (\inst6|Mux63~0_combout\ & 
-- ((\inst23|LPM_MUX_component|auto_generated|result_node[29]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|b_select~0_combout\,
	datab => \inst6|Mux63~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~29_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[29]~121_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[29]~122_combout\);

-- Location: LCFF_X25_Y24_N25
\inst1|rs2_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst23|LPM_MUX_component|auto_generated|result_node[30]~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(30));

-- Location: LCCOMB_X25_Y22_N30
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~63\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(31),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg~63_combout\);

-- Location: LCCOMB_X22_Y22_N24
\inst10|LPM_MUX_component|auto_generated|result_node[29]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[29]~31_combout\ = (\inst8|b_sel~0_combout\ & \inst23|LPM_MUX_component|auto_generated|result_node[29]~122_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|b_sel~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[29]~122_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[29]~31_combout\);

-- Location: LCCOMB_X23_Y22_N8
\inst11|LPM_MUX_component|auto_generated|result_node[29]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[29]~116_combout\ = (\inst|Mux15~0_combout\ & (\inst6|regs[3][29]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][29]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux15~0_combout\,
	datac => \inst6|regs[3][29]~regout\,
	datad => \inst6|regs[1][29]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[29]~116_combout\);

-- Location: LCCOMB_X23_Y22_N28
\inst11|LPM_MUX_component|auto_generated|result_node[29]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[29]~117_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[29]~116_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst|Mux15~0_combout\ & 
-- ((\inst6|regs[2][29]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~1_combout\,
	datab => \inst|Mux15~0_combout\,
	datac => \inst11|LPM_MUX_component|auto_generated|result_node[29]~116_combout\,
	datad => \inst6|regs[2][29]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[29]~117_combout\);

-- Location: LCCOMB_X23_Y22_N6
\inst11|LPM_MUX_component|auto_generated|result_node[29]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[29]~118_combout\ = (\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~29_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[29]~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|a_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~29_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[29]~117_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[29]~118_combout\);

-- Location: LCCOMB_X22_Y22_N28
\inst11|LPM_MUX_component|auto_generated|result_node[29]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[29]~119_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(29))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[29]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pc\(29),
	datac => \inst8|a_sel~1_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[29]~118_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[29]~119_combout\);

-- Location: LCFF_X22_Y23_N29
\inst1|alu_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(30));

-- Location: LCCOMB_X25_Y23_N18
\inst15|LPM_MUX_component|auto_generated|_~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~30_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(30))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wbselect_out\(0),
	datac => \inst1|alu_out\(30),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a30\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~30_combout\);

-- Location: LCFF_X25_Y23_N19
\inst6|regs[2][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst15|LPM_MUX_component|auto_generated|_~30_combout\,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][30]~regout\);

-- Location: LCFF_X25_Y23_N3
\inst6|regs[3][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~30_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][30]~regout\);

-- Location: LCCOMB_X25_Y23_N2
\inst23|LPM_MUX_component|auto_generated|result_node[30]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[30]~123_combout\ = (\inst|Mux11~0_combout\ & ((\inst5|pc\(6) & (\inst6|regs[2][30]~regout\)) # (!\inst5|pc\(6) & ((\inst6|regs[3][30]~regout\))))) # (!\inst|Mux11~0_combout\ & 
-- (\inst6|regs[2][30]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~0_combout\,
	datab => \inst6|regs[2][30]~regout\,
	datac => \inst6|regs[3][30]~regout\,
	datad => \inst5|pc\(6),
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[30]~123_combout\);

-- Location: LCFF_X25_Y24_N19
\inst6|regs[1][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~30_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][30]~regout\);

-- Location: LCCOMB_X25_Y24_N18
\inst23|LPM_MUX_component|auto_generated|result_node[30]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[30]~124_combout\ = (\inst|Mux10~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[30]~123_combout\)) # (!\inst|Mux10~1_combout\ & (((\inst6|regs[1][30]~regout\ & 
-- \inst|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~1_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[30]~123_combout\,
	datac => \inst6|regs[1][30]~regout\,
	datad => \inst|Mux11~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[30]~124_combout\);

-- Location: LCCOMB_X25_Y24_N28
\inst23|LPM_MUX_component|auto_generated|result_node[30]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[30]~125_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & ((\inst6|regs[30][30]~regout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[30]~124_combout\ & 
-- \inst|Mux8~1_combout\)))) # (!\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[30]~124_combout\ & ((\inst|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[30]~124_combout\,
	datac => \inst6|regs[30][30]~regout\,
	datad => \inst|Mux8~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[30]~125_combout\);

-- Location: LCCOMB_X25_Y24_N24
\inst23|LPM_MUX_component|auto_generated|result_node[30]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[30]~126_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~30_combout\)))) # (!\inst3|b_select~0_combout\ & (\inst6|Mux63~0_combout\ & 
-- ((\inst23|LPM_MUX_component|auto_generated|result_node[30]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|b_select~0_combout\,
	datab => \inst6|Mux63~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~30_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[30]~125_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[30]~126_combout\);

-- Location: LCFF_X25_Y20_N19
\inst1|rs2_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst23|LPM_MUX_component|auto_generated|result_node[31]~130_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|rs2_out\(31));

-- Location: LCCOMB_X25_Y24_N16
\inst10|LPM_MUX_component|auto_generated|result_node[30]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[30]~32_combout\ = (\inst23|LPM_MUX_component|auto_generated|result_node[30]~126_combout\ & \inst8|b_sel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[30]~126_combout\,
	datad => \inst8|b_sel~0_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[30]~32_combout\);

-- Location: LCCOMB_X25_Y23_N16
\inst11|LPM_MUX_component|auto_generated|result_node[30]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[30]~120_combout\ = (\inst|Mux15~0_combout\ & ((\inst6|regs[3][30]~regout\))) # (!\inst|Mux15~0_combout\ & (\inst6|regs[1][30]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux15~0_combout\,
	datac => \inst6|regs[1][30]~regout\,
	datad => \inst6|regs[3][30]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[30]~120_combout\);

-- Location: LCCOMB_X25_Y23_N26
\inst11|LPM_MUX_component|auto_generated|result_node[30]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[30]~121_combout\ = (\inst|Mux16~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[30]~120_combout\)) # (!\inst|Mux16~1_combout\ & (((\inst|Mux15~0_combout\ & 
-- \inst6|regs[2][30]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[30]~120_combout\,
	datab => \inst|Mux15~0_combout\,
	datac => \inst|Mux16~1_combout\,
	datad => \inst6|regs[2][30]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[30]~121_combout\);

-- Location: LCCOMB_X25_Y23_N14
\inst11|LPM_MUX_component|auto_generated|result_node[30]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[30]~122_combout\ = (\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~30_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[30]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LPM_MUX_component|auto_generated|_~30_combout\,
	datac => \inst3|a_select~0_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[30]~121_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[30]~122_combout\);

-- Location: LCCOMB_X21_Y23_N30
\inst11|LPM_MUX_component|auto_generated|result_node[30]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[30]~123_combout\ = (\inst8|a_sel~1_combout\ & ((\inst5|pc\(30)))) # (!\inst8|a_sel~1_combout\ & (\inst11|LPM_MUX_component|auto_generated|result_node[30]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_MUX_component|auto_generated|result_node[30]~122_combout\,
	datab => \inst5|pc\(30),
	datad => \inst8|a_sel~1_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[30]~123_combout\);

-- Location: LCFF_X22_Y23_N31
\inst1|alu_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	datain => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|alu_out\(31));

-- Location: LCCOMB_X22_Y20_N14
\inst15|LPM_MUX_component|auto_generated|_~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|LPM_MUX_component|auto_generated|_~31_combout\ = (\inst1|wbselect_out\(0) & (\inst1|alu_out\(31))) # (!\inst1|wbselect_out\(0) & ((\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|alu_out\(31),
	datac => \inst1|wbselect_out\(0),
	datad => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|ram_block4a31\,
	combout => \inst15|LPM_MUX_component|auto_generated|_~31_combout\);

-- Location: LCFF_X22_Y20_N13
\inst6|regs[2][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~31_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[2][31]~regout\);

-- Location: LCFF_X22_Y20_N11
\inst6|regs[3][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~31_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[3][31]~regout\);

-- Location: LCCOMB_X22_Y20_N10
\inst23|LPM_MUX_component|auto_generated|result_node[31]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[31]~127_combout\ = (\inst5|pc\(6) & (\inst6|regs[2][31]~regout\)) # (!\inst5|pc\(6) & ((\inst|Mux11~0_combout\ & ((\inst6|regs[3][31]~regout\))) # (!\inst|Mux11~0_combout\ & 
-- (\inst6|regs[2][31]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst6|regs[2][31]~regout\,
	datac => \inst6|regs[3][31]~regout\,
	datad => \inst|Mux11~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[31]~127_combout\);

-- Location: LCFF_X21_Y20_N27
\inst6|regs[1][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst16|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \inst15|LPM_MUX_component|auto_generated|_~31_combout\,
	sload => VCC,
	ena => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|regs[1][31]~regout\);

-- Location: LCCOMB_X21_Y20_N26
\inst23|LPM_MUX_component|auto_generated|result_node[31]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[31]~128_combout\ = (\inst|Mux10~1_combout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[31]~127_combout\)) # (!\inst|Mux10~1_combout\ & (((\inst6|regs[1][31]~regout\ & 
-- \inst|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~1_combout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[31]~127_combout\,
	datac => \inst6|regs[1][31]~regout\,
	datad => \inst|Mux11~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[31]~128_combout\);

-- Location: LCCOMB_X21_Y20_N20
\inst23|LPM_MUX_component|auto_generated|result_node[31]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[31]~129_combout\ = (\inst6|regs[30][31]~regout\ & ((\inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\) # ((\inst23|LPM_MUX_component|auto_generated|result_node[31]~128_combout\ & 
-- \inst|Mux8~1_combout\)))) # (!\inst6|regs[30][31]~regout\ & (\inst23|LPM_MUX_component|auto_generated|result_node[31]~128_combout\ & ((\inst|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[30][31]~regout\,
	datab => \inst23|LPM_MUX_component|auto_generated|result_node[31]~128_combout\,
	datac => \inst23|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datad => \inst|Mux8~1_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[31]~129_combout\);

-- Location: LCCOMB_X21_Y20_N6
\inst23|LPM_MUX_component|auto_generated|result_node[31]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|LPM_MUX_component|auto_generated|result_node[31]~130_combout\ = (\inst3|b_select~0_combout\ & (((\inst15|LPM_MUX_component|auto_generated|_~31_combout\)))) # (!\inst3|b_select~0_combout\ & 
-- (\inst23|LPM_MUX_component|auto_generated|result_node[31]~129_combout\ & ((\inst6|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|LPM_MUX_component|auto_generated|result_node[31]~129_combout\,
	datab => \inst3|b_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~31_combout\,
	datad => \inst6|Mux63~0_combout\,
	combout => \inst23|LPM_MUX_component|auto_generated|result_node[31]~130_combout\);

-- Location: LCCOMB_X21_Y20_N2
\inst10|LPM_MUX_component|auto_generated|result_node[31]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|LPM_MUX_component|auto_generated|result_node[31]~33_combout\ = (\inst8|b_sel~0_combout\ & \inst23|LPM_MUX_component|auto_generated|result_node[31]~130_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|b_sel~0_combout\,
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[31]~130_combout\,
	combout => \inst10|LPM_MUX_component|auto_generated|result_node[31]~33_combout\);

-- Location: LCCOMB_X21_Y20_N22
\inst11|LPM_MUX_component|auto_generated|result_node[31]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[31]~124_combout\ = (\inst|Mux15~0_combout\ & (\inst6|regs[3][31]~regout\)) # (!\inst|Mux15~0_combout\ & ((\inst6|regs[1][31]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|regs[3][31]~regout\,
	datab => \inst|Mux15~0_combout\,
	datad => \inst6|regs[1][31]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[31]~124_combout\);

-- Location: LCCOMB_X22_Y20_N2
\inst11|LPM_MUX_component|auto_generated|result_node[31]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[31]~125_combout\ = (\inst|Mux16~1_combout\ & (((\inst11|LPM_MUX_component|auto_generated|result_node[31]~124_combout\)))) # (!\inst|Mux16~1_combout\ & (\inst6|regs[2][31]~regout\ & 
-- (\inst|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~1_combout\,
	datab => \inst6|regs[2][31]~regout\,
	datac => \inst|Mux15~0_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[31]~124_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[31]~125_combout\);

-- Location: LCCOMB_X22_Y20_N12
\inst11|LPM_MUX_component|auto_generated|result_node[31]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[31]~126_combout\ = (\inst3|a_select~0_combout\ & (\inst15|LPM_MUX_component|auto_generated|_~31_combout\)) # (!\inst3|a_select~0_combout\ & 
-- ((\inst11|LPM_MUX_component|auto_generated|result_node[31]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|a_select~0_combout\,
	datac => \inst15|LPM_MUX_component|auto_generated|_~31_combout\,
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[31]~125_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[31]~126_combout\);

-- Location: LCCOMB_X22_Y20_N8
\inst11|LPM_MUX_component|auto_generated|result_node[31]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[31]~127_combout\ = (\inst8|a_sel~1_combout\ & (\inst5|pc\(31))) # (!\inst8|a_sel~1_combout\ & ((\inst11|LPM_MUX_component|auto_generated|result_node[31]~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|a_sel~1_combout\,
	datac => \inst5|pc\(31),
	datad => \inst11|LPM_MUX_component|auto_generated|result_node[31]~126_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[31]~127_combout\);

-- Location: LCCOMB_X20_Y20_N24
\inst11|LPM_MUX_component|auto_generated|result_node[0]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[0]~128_combout\ = (\inst|Mux15~0_combout\ & (!\inst6|regs[2][0]~regout\ & ((\inst5|pc\(6)) # (!\inst|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst|Mux15~0_combout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst6|regs[2][0]~regout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[0]~128_combout\);

-- Location: LCCOMB_X21_Y21_N12
\inst11|LPM_MUX_component|auto_generated|result_node[10]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[10]~129_combout\ = (\inst6|regs[2][10]~regout\ & (\inst|Mux15~0_combout\ & ((\inst5|pc\(6)) # (!\inst|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \inst6|regs[2][10]~regout\,
	datac => \inst|Mux15~0_combout\,
	datad => \inst5|pc\(6),
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[10]~129_combout\);

-- Location: LCCOMB_X22_Y21_N26
\inst11|LPM_MUX_component|auto_generated|result_node[11]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[11]~130_combout\ = (\inst6|regs[2][11]~regout\ & (\inst|Mux15~0_combout\ & ((\inst5|pc\(6)) # (!\inst|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pc\(6),
	datab => \inst6|regs[2][11]~regout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst|Mux15~0_combout\,
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[11]~130_combout\);

-- Location: LCCOMB_X21_Y21_N2
\inst11|LPM_MUX_component|auto_generated|result_node[15]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[15]~131_combout\ = (\inst6|regs[2][15]~regout\ & (\inst|Mux15~0_combout\ & ((\inst5|pc\(6)) # (!\inst|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \inst6|regs[2][15]~regout\,
	datac => \inst|Mux15~0_combout\,
	datad => \inst5|pc\(6),
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[15]~131_combout\);

-- Location: LCCOMB_X22_Y21_N10
\inst11|LPM_MUX_component|auto_generated|result_node[26]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_MUX_component|auto_generated|result_node[26]~132_combout\ = (\inst|Mux15~0_combout\ & (\inst6|regs[2][26]~regout\ & ((\inst5|pc\(6)) # (!\inst|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst6|regs[2][26]~regout\,
	datac => \inst|Mux16~0_combout\,
	datad => \inst5|pc\(6),
	combout => \inst11|LPM_MUX_component|auto_generated|result_node[26]~132_combout\);

-- Location: LCCOMB_X28_Y21_N0
\inst6|regs[30][0]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[30][0]~93_combout\ = !\inst6|regs[30][0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|regs[30][0]~regout\,
	combout => \inst6|regs[30][0]~93_combout\);

-- Location: LCCOMB_X20_Y20_N12
\inst6|regs[2][0]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[2][0]~94_combout\ = !\inst15|LPM_MUX_component|auto_generated|_~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|LPM_MUX_component|auto_generated|_~0_combout\,
	combout => \inst6|regs[2][0]~94_combout\);

-- Location: LCCOMB_X24_Y21_N28
\inst6|regs[2][1]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[2][1]~95_combout\ = !\inst15|LPM_MUX_component|auto_generated|_~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|LPM_MUX_component|auto_generated|_~1_combout\,
	combout => \inst6|regs[2][1]~95_combout\);

-- Location: LCCOMB_X23_Y21_N28
\inst6|regs[2][2]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[2][2]~96_combout\ = !\inst15|LPM_MUX_component|auto_generated|_~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|LPM_MUX_component|auto_generated|_~2_combout\,
	combout => \inst6|regs[2][2]~96_combout\);

-- Location: LCCOMB_X24_Y22_N16
\inst6|regs[2][3]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[2][3]~97_combout\ = !\inst15|LPM_MUX_component|auto_generated|_~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|LPM_MUX_component|auto_generated|_~3_combout\,
	combout => \inst6|regs[2][3]~97_combout\);

-- Location: LCCOMB_X23_Y23_N22
\inst6|regs[2][4]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[2][4]~98_combout\ = !\inst15|LPM_MUX_component|auto_generated|_~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|LPM_MUX_component|auto_generated|_~4_combout\,
	combout => \inst6|regs[2][4]~98_combout\);

-- Location: LCCOMB_X24_Y22_N18
\inst6|regs[2][5]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[2][5]~99_combout\ = !\inst15|LPM_MUX_component|auto_generated|_~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|LPM_MUX_component|auto_generated|_~5_combout\,
	combout => \inst6|regs[2][5]~99_combout\);

-- Location: LCCOMB_X24_Y21_N8
\inst6|regs[2][6]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[2][6]~100_combout\ = !\inst15|LPM_MUX_component|auto_generated|_~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|LPM_MUX_component|auto_generated|_~6_combout\,
	combout => \inst6|regs[2][6]~100_combout\);

-- Location: LCCOMB_X20_Y20_N26
\inst6|regs[2][7]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[2][7]~101_combout\ = !\inst15|LPM_MUX_component|auto_generated|_~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|LPM_MUX_component|auto_generated|_~7_combout\,
	combout => \inst6|regs[2][7]~101_combout\);

-- Location: JTAG_X1_Y19_N0
altera_internal_jtag : cycloneii_jtag
PORT MAP (
	tms => \altera_reserved_tms~combout\,
	tck => \altera_reserved_tck~combout\,
	tdi => \altera_reserved_tdi~combout\,
	tdouser => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCFF_X17_Y22_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2));

-- Location: LCFF_X11_Y21_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\,
	sdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1));

-- Location: LCFF_X10_Y21_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~5_combout\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1));

-- Location: LCFF_X17_Y22_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X11_Y21_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\);

-- Location: LCCOMB_X10_Y21_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|Mux2~0_combout\,
	datad => \auto_hub|Mux2~2_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\);

-- Location: LCFF_X10_Y21_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2));

-- Location: LCCOMB_X10_Y21_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|Mux1~0_combout\,
	datad => \auto_hub|Mux1~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\);

-- Location: LCFF_X10_Y21_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3));

-- Location: LCCOMB_X10_Y21_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|Mux0~2_combout\,
	datad => \auto_hub|Mux0~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\);

-- Location: LCFF_X17_Y21_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15));

-- Location: LCCOMB_X15_Y21_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|tdo~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\);

-- Location: LCCOMB_X14_Y21_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\);

-- Location: LCFF_X14_Y21_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~3_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1));

-- Location: LCFF_X17_Y20_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0));

-- Location: LCFF_X12_Y21_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0));

-- Location: LCCOMB_X12_Y21_N26
\auto_hub|Mux3~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|Mux3~1_combout\);

-- Location: LCCOMB_X16_Y22_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Mux3~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y21_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X16_Y21_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X14_Y21_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X14_Y21_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~2_combout\);

-- Location: LCCOMB_X14_Y21_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~3_combout\);

-- Location: LCCOMB_X14_Y21_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~4_combout\);

-- Location: LCFF_X17_Y22_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X17_Y22_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\);

-- Location: LCCOMB_X11_Y21_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal7~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal7~0_combout\);

-- Location: LCFF_X12_Y21_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X14_Y21_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X12_Y21_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\);

-- Location: LCCOMB_X11_Y21_N14
\auto_hub|Mux2~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|Mux2~0_combout\);

-- Location: LCFF_X12_Y21_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1));

-- Location: LCCOMB_X12_Y21_N12
\auto_hub|Mux2~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|Mux2~1_combout\);

-- Location: LCCOMB_X11_Y21_N6
\auto_hub|Mux2~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|Mux2~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|Mux2~2_combout\);

-- Location: LCCOMB_X10_Y21_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~5_combout\);

-- Location: LCCOMB_X15_Y21_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\);

-- Location: LCFF_X15_Y20_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X17_Y22_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\);

-- Location: LCCOMB_X17_Y22_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\);

-- Location: LCFF_X12_Y21_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X12_Y21_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\);

-- Location: LCCOMB_X11_Y21_N30
\auto_hub|Mux1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y21_N6
\auto_hub|Mux3~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|Mux3~3_combout\);

-- Location: LCFF_X12_Y21_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2));

-- Location: LCCOMB_X12_Y21_N20
\auto_hub|Mux1~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Mux3~3_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	combout => \auto_hub|Mux1~1_combout\);

-- Location: LCCOMB_X10_Y21_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\);

-- Location: LCFF_X15_Y20_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X15_Y20_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\);

-- Location: LCFF_X12_Y21_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X11_Y21_N4
\auto_hub|Mux0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|Mux0~0_combout\);

-- Location: LCFF_X12_Y21_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3));

-- Location: LCCOMB_X12_Y21_N30
\auto_hub|Mux0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|Mux0~1_combout\);

-- Location: LCCOMB_X11_Y21_N0
\auto_hub|Mux0~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|Mux0~1_combout\,
	combout => \auto_hub|Mux0~2_combout\);

-- Location: LCCOMB_X10_Y21_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\);

-- Location: LCCOMB_X15_Y20_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X16_Y22_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\);

-- Location: LCFF_X12_Y21_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X17_Y20_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G3
\inst16|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst16|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst16|altpll_component|_clk0~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\altera_internal_jtag~TCKUTAPclkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X25_Y20_N24
\inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b[0]~feeder_combout\ = \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	combout => \inst14|altsyncram_component|auto_generated|altsyncram1|altsyncram3|address_reg_b[0]~feeder_combout\);

-- Location: LCCOMB_X24_Y24_N30
\inst5|pc[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|pc[1]~feeder_combout\ = \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|inst2|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	combout => \inst5|pc[1]~feeder_combout\);

-- Location: LCCOMB_X25_Y20_N2
\inst1|memwrite_out~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|memwrite_out~feeder_combout\ = \inst8|mem_write~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|mem_write~0_combout\,
	combout => \inst1|memwrite_out~feeder_combout\);

-- Location: LCCOMB_X20_Y20_N18
\inst6|regs[3][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[3][0]~feeder_combout\ = \inst15|LPM_MUX_component|auto_generated|_~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|LPM_MUX_component|auto_generated|_~0_combout\,
	combout => \inst6|regs[3][0]~feeder_combout\);

-- Location: LCCOMB_X25_Y21_N12
\inst6|regs[1][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[1][1]~feeder_combout\ = \inst15|LPM_MUX_component|auto_generated|_~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|LPM_MUX_component|auto_generated|_~1_combout\,
	combout => \inst6|regs[1][1]~feeder_combout\);

-- Location: LCCOMB_X25_Y24_N14
\inst1|rs2_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|rs2_out[12]~feeder_combout\ = \inst23|LPM_MUX_component|auto_generated|result_node[12]~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[12]~54_combout\,
	combout => \inst1|rs2_out[12]~feeder_combout\);

-- Location: LCCOMB_X25_Y20_N22
\inst1|rs2_out[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|rs2_out[15]~feeder_combout\ = \inst23|LPM_MUX_component|auto_generated|result_node[15]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst23|LPM_MUX_component|auto_generated|result_node[15]~66_combout\,
	combout => \inst1|rs2_out[15]~feeder_combout\);

-- Location: LCCOMB_X25_Y21_N18
\inst6|regs[1][17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|regs[1][17]~feeder_combout\ = \inst15|LPM_MUX_component|auto_generated|_~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|LPM_MUX_component|auto_generated|_~17_combout\,
	combout => \inst6|regs[1][17]~feeder_combout\);

-- Location: LCCOMB_X12_Y21_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\altera_reserved_tms~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_altera_reserved_tms,
	combout => \altera_reserved_tms~combout\);

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\altera_reserved_tck~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_altera_reserved_tck,
	combout => \altera_reserved_tck~combout\);

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\altera_reserved_tdi~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_altera_reserved_tdi,
	combout => \altera_reserved_tdi~combout\);

-- Location: LCCOMB_X11_Y21_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~6\);

-- Location: LCCOMB_X11_Y21_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\);

-- Location: LCCOMB_X11_Y21_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\);

-- Location: LCCOMB_X11_Y21_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\);

-- Location: LCCOMB_X17_Y20_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]~feeder_combout\);

-- Location: LCCOMB_X16_Y21_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\);

-- Location: LCFF_X16_Y21_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3));

-- Location: LCCOMB_X17_Y21_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\);

-- Location: LCFF_X17_Y21_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5));

-- Location: LCCOMB_X17_Y21_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\);

-- Location: LCCOMB_X17_Y21_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[8]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[8]~feeder_combout\);

-- Location: LCFF_X17_Y21_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8));

-- Location: LCCOMB_X17_Y21_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\);

-- Location: LCFF_X17_Y21_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1));

-- Location: LCCOMB_X17_Y21_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\);

-- Location: LCFF_X17_Y21_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2));

-- Location: LCCOMB_X16_Y21_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\);

-- Location: LCFF_X16_Y21_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9));

-- Location: LCCOMB_X17_Y21_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\);

-- Location: LCFF_X17_Y21_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0));

-- Location: CLKCTRL_G10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y21_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\);

-- Location: LCFF_X17_Y21_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10));

-- Location: LCCOMB_X17_Y21_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\);

-- Location: LCFF_X17_Y21_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12));

-- Location: LCCOMB_X17_Y21_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\);

-- Location: LCFF_X17_Y21_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13));

-- Location: LCCOMB_X17_Y21_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\);

-- Location: LCFF_X17_Y21_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14));

-- Location: LCCOMB_X17_Y21_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\);

-- Location: LCFF_X17_Y21_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11));

-- Location: LCFF_X17_Y20_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9));

-- Location: LCCOMB_X17_Y20_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\);

-- Location: LCFF_X17_Y20_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8));

-- Location: LCCOMB_X17_Y20_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\);

-- Location: LCFF_X17_Y20_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7));

-- Location: LCCOMB_X17_Y20_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\);

-- Location: LCFF_X17_Y20_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6));

-- Location: LCCOMB_X17_Y20_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]~feeder_combout\);

-- Location: LCFF_X17_Y20_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5));

-- Location: LCCOMB_X17_Y20_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\);

-- Location: LCFF_X17_Y20_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4));

-- Location: LCCOMB_X17_Y20_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\);

-- Location: LCFF_X17_Y20_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3));

-- Location: LCCOMB_X17_Y20_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\);

-- Location: LCFF_X17_Y20_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2));

-- Location: LCCOMB_X17_Y20_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y20_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\);

-- Location: LCFF_X17_Y20_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1));

-- Location: LCCOMB_X17_Y20_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y21_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCFF_X17_Y20_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\);

-- Location: LCCOMB_X17_Y20_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\);

-- Location: LCFF_X17_Y20_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state[0]~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\);

-- Location: LCCOMB_X11_Y21_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~8_combout\);

-- Location: LCFF_X11_Y21_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\,
	sdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4));

-- Location: LCCOMB_X11_Y21_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal7~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~7_combout\);

-- Location: LCFF_X11_Y21_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~5_combout\,
	sdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0));

-- Location: LCFF_X11_Y21_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\,
	sdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2));

-- Location: LCFF_X11_Y21_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\,
	sdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~7_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3));

-- Location: LCCOMB_X11_Y21_N8
\auto_hub|Mux3~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y21_N28
\auto_hub|Mux3~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Mux3~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	combout => \auto_hub|Mux3~2_combout\);

-- Location: LCCOMB_X10_Y21_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datab => \auto_hub|Mux3~0_combout\,
	datad => \auto_hub|Mux3~2_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X17_Y21_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\);

-- Location: LCFF_X17_Y21_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6));

-- Location: LCCOMB_X17_Y21_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\);

-- Location: LCFF_X17_Y21_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7));

-- Location: LCCOMB_X17_Y21_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\);

-- Location: LCFF_X17_Y21_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4));

-- Location: LCCOMB_X10_Y21_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~4_combout\);

-- Location: LCCOMB_X10_Y21_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\);

-- Location: LCFF_X10_Y21_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~4_combout\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0));

-- Location: LCCOMB_X17_Y21_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X15_Y20_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\);

-- Location: LCCOMB_X15_Y20_N4
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X14_Y21_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~0_combout\);

-- Location: LCFF_X16_Y21_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~regout\);

-- Location: LCCOMB_X14_Y21_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~4_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~5_combout\);

-- Location: LCFF_X14_Y21_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~5_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2));

-- Location: LCCOMB_X14_Y18_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\);

-- Location: LCFF_X14_Y18_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\);

-- Location: CLKCTRL_G1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\);

-- Location: LCFF_X15_Y20_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\,
	sdata => \~GND~combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5));

-- Location: LCCOMB_X16_Y21_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~6_combout\);

-- Location: LCFF_X16_Y21_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~6_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0));

-- Location: LCCOMB_X16_Y21_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~1_combout\);

-- Location: LCCOMB_X16_Y21_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\);

-- Location: LCCOMB_X16_Y21_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\,
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\);

-- Location: LCCOMB_X16_Y21_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\);

-- Location: LCCOMB_X16_Y21_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\);

-- Location: LCCOMB_X16_Y21_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\);

-- Location: LCFF_X16_Y21_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\);

-- Location: LCCOMB_X16_Y21_N2
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\);

-- Location: LCCOMB_X15_Y21_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X14_Y21_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\);

-- Location: LCFF_X15_Y21_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\);

-- Location: LCCOMB_X15_Y21_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\);

-- Location: LCFF_X15_Y21_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\);

-- Location: LCCOMB_X18_Y21_N8
\inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\);

-- Location: LCCOMB_X19_Y21_N6
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	datad => VCC,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~6_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~7\);

-- Location: LCCOMB_X19_Y21_N8
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datad => VCC,
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~7\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~8_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~9\);

-- Location: LCFF_X15_Y21_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	sdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\);

-- Location: CLKCTRL_G8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y21_N10
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datad => VCC,
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~9\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~10_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~11\);

-- Location: LCFF_X19_Y21_N11
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]~10_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~clkctrl_outclk\,
	sclr => \inst14|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2));

-- Location: LCFF_X19_Y21_N15
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~14_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~clkctrl_outclk\,
	sclr => \inst14|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4));

-- Location: LCFF_X19_Y21_N7
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]~6_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~clkctrl_outclk\,
	sclr => \inst14|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0));

-- Location: LCCOMB_X19_Y21_N26
\inst14|altsyncram_component|auto_generated|mgl_prim2|Equal1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4),
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y21_N28
\inst14|altsyncram_component|auto_generated|mgl_prim2|Equal1~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(5),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\);

-- Location: LCFF_X19_Y21_N9
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]~8_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~clkctrl_outclk\,
	sclr => \inst14|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1));

-- Location: LCCOMB_X19_Y21_N30
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1_combout\);

-- Location: LCCOMB_X18_Y21_N2
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~1_combout\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~combout\);

-- Location: LCCOMB_X18_Y21_N12
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0),
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_incr_addr~combout\,
	datad => VCC,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\);

-- Location: LCCOMB_X18_Y21_N14
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	datad => VCC,
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~9\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~10_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~11\);

-- Location: LCCOMB_X15_Y21_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\);

-- Location: LCFF_X15_Y21_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\);

-- Location: CLKCTRL_G0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y21_N10
\inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\);

-- Location: LCFF_X18_Y21_N15
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~10_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~clkctrl_outclk\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1));

-- Location: LCCOMB_X18_Y21_N16
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~12\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	datad => VCC,
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~11\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~12_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~13\);

-- Location: LCCOMB_X18_Y21_N18
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~14\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	datad => VCC,
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~13\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~14_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~15\);

-- Location: LCCOMB_X18_Y21_N20
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~16\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	datad => VCC,
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~15\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~16_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~17\);

-- Location: LCCOMB_X18_Y21_N22
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~18\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	datad => VCC,
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~17\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~18_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~19\);

-- Location: LCCOMB_X18_Y21_N24
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~20\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	datad => VCC,
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~19\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~20_combout\,
	cout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~21\);

-- Location: LCCOMB_X18_Y21_N26
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~22\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	cin => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~21\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~22_combout\);

-- Location: LCFF_X18_Y21_N27
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~22_combout\,
	sdata => \altera_internal_jtag~TDIUTAP\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~clkctrl_outclk\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7));

-- Location: LCFF_X18_Y21_N25
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~20_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~clkctrl_outclk\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6));

-- Location: LCFF_X18_Y21_N23
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~18_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~clkctrl_outclk\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5));

-- Location: LCFF_X18_Y21_N21
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~16_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~clkctrl_outclk\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4));

-- Location: LCFF_X18_Y21_N19
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~14_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~clkctrl_outclk\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3));

-- Location: LCFF_X18_Y21_N17
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~12_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~clkctrl_outclk\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2));

-- Location: LCCOMB_X19_Y21_N18
\inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\);

-- Location: LCCOMB_X19_Y21_N24
\inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y21_N30
\inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\);

-- Location: LCFF_X19_Y21_N25
\inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]~feeder_combout\,
	aclr => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~0clkctrl_outclk\,
	ena => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3));

-- Location: LCCOMB_X16_Y21_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~10\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~10_combout\);

-- Location: LCCOMB_X16_Y21_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~2_combout\);

-- Location: LCFF_X16_Y21_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~10_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4));

-- Location: LCCOMB_X15_Y21_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder_combout\);

-- Location: LCFF_X15_Y21_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~feeder_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\);

-- Location: LCCOMB_X15_Y22_N22
\inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\);

-- Location: CLKCTRL_G9
\inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~0clkctrl_outclk\);

-- Location: LCFF_X19_Y21_N19
\inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]~feeder_combout\,
	aclr => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~0clkctrl_outclk\,
	ena => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2));

-- Location: LCCOMB_X16_Y21_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~1_combout\,
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X16_Y21_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\);

-- Location: LCFF_X16_Y21_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~9_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3));

-- Location: LCCOMB_X19_Y21_N20
\inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder_combout\);

-- Location: LCFF_X19_Y21_N21
\inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]~feeder_combout\,
	aclr => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~0clkctrl_outclk\,
	ena => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1));

-- Location: LCCOMB_X15_Y21_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\);

-- Location: LCFF_X15_Y21_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~3_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2));

-- Location: LCFF_X18_Y21_N13
\inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~8_combout\,
	sdata => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~clkctrl_outclk\,
	sload => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

-- Location: LCCOMB_X19_Y21_N2
\inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0),
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\);

-- Location: LCFF_X19_Y21_N3
\inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]~feeder_combout\,
	aclr => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~0clkctrl_outclk\,
	ena => \inst14|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0));

-- Location: LCCOMB_X15_Y21_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[1]~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[1]~5_combout\);

-- Location: LCFF_X15_Y21_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[1]~5_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1));

-- Location: LCCOMB_X15_Y22_N16
\inst14|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\,
	combout => \inst14|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\);

-- Location: LCFF_X15_Y22_N17
\inst14|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \inst14|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~0_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~regout\);

-- Location: LCCOMB_X15_Y21_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \inst14|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~0_combout\);

-- Location: LCFF_X15_Y21_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~0_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~clkctrl_outclk\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0));

-- Location: LCCOMB_X10_Y21_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\);

-- Location: LCFF_X10_Y21_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\);

-- Location: LCCOMB_X16_Y22_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~0_combout\);

-- Location: LCCOMB_X16_Y22_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X16_Y22_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X16_Y22_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~3_combout\);

-- Location: LCFF_X16_Y22_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X17_Y22_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~3\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~4_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~5\);

-- Location: LCCOMB_X17_Y22_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~5\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~6_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~7\);

-- Location: LCCOMB_X17_Y22_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~8\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~7\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~8_combout\);

-- Location: LCCOMB_X17_Y22_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Equal0~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~8_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~0_combout\);

-- Location: LCCOMB_X16_Y22_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~1_combout\);

-- Location: LCFF_X17_Y22_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X17_Y22_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Equal0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y22_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Equal0~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Equal0~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y22_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~0_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~1\);

-- Location: LCCOMB_X17_Y22_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Equal0~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~2_combout\);

-- Location: LCFF_X17_Y22_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~2_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X17_Y22_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~1\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~2_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~3\);

-- Location: LCCOMB_X17_Y22_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~3_combout\);

-- Location: LCFF_X17_Y22_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~3_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1));

-- Location: LCCOMB_X17_Y22_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~4_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~4_combout\);

-- Location: LCFF_X17_Y22_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~4_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X17_Y22_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Add0~6_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~5_combout\);

-- Location: LCFF_X17_Y22_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~5_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X16_Y22_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Mux1~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y22_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Mux1~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCFF_X16_Y22_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X16_Y22_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\);

-- Location: LCCOMB_X16_Y22_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~4_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCFF_X16_Y22_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~5_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X16_Y22_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~1_combout\);

-- Location: LCCOMB_X16_Y22_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~2\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|Mux3~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~2_combout\);

-- Location: LCFF_X16_Y22_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~2_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X15_Y20_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\);

-- Location: LCCOMB_X15_Y20_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\);

-- Location: LCFF_X15_Y20_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X15_Y20_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\);

-- Location: LCFF_X15_Y20_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X15_Y21_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\);

-- Location: LCCOMB_X14_Y21_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\);

-- Location: LCCOMB_X14_Y21_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\);

-- Location: LCCOMB_X11_Y21_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\);

-- Location: LCFF_X11_Y21_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	datain => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~regout\);

-- Location: LCCOMB_X10_Y21_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\);

-- Location: LCCOMB_X55_Y33_N0
\auto_hub|~GND\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X12_Y18_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X29_Y34_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell\ : cycloneii_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\altera_reserved_tdo~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \altera_internal_jtag~TDO\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_altera_reserved_tdo);
END structure;


