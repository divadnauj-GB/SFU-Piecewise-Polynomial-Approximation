library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LUT_C1_ln2e0 is
	generic(
		word_bits	:natural:=15;
		bus_bits	:natural:=20;
		add_bits	:natural:=6
	);
	port(
		addr		:in std_logic_vector(add_bits-1 downto 0);
		data		:out std_logic_vector(bus_bits-1 downto 0)
	);
end entity;

architecture behav of LUT_C1_ln2e0 is
	type storage is array (0 to 2**add_bits-1) of std_logic_vector(word_bits-1 downto 0);
	signal rom:storage:=(
		"101110001010011",
		"101101001101111",
		"101100010011100",
		"101011011011000",
		"101010100100011",
		"101001101111101",
		"101000111100100",
		"101000001011000",
		"100111011011001",
		"100110101100101",
		"100101111111101",
		"100101010011111",
		"100100101001100",
		"100100000000011",
		"100011011000100",
		"100010110001110",
		"100010001100000",
		"100001100111011",
		"100001000011110",
		"100000100001001",
		"011111111111100",
		"011111011110101",
		"011110111110110",
		"011110011111101",
		"011110000001011",
		"011101100011111",
		"011101000111001",
		"011100101011001",
		"011100001111110",
		"011011110101000",
		"011011011011000",
		"011011000001101",
		"011010101000111",
		"011010010000101",
		"011001111001000",
		"011001100010000",
		"011001001011011",
		"011000110101011",
		"011000011111111",
		"011000001010110",
		"010111110110001",
		"010111100010000",
		"010111001110011",
		"010110111011000",
		"010110101000001",
		"010110010101110",
		"010110000011101",
		"010101110001111",
		"010101100000101",
		"010101001111101",
		"010100111111000",
		"010100101110101",
		"010100011110101",
		"010100001111000",
		"010011111111101",
		"010011110000101",
		"010011100001111",
		"010011010011011",
		"010011000101001",
		"010010110111010",
		"010010101001100",
		"010010011100001",
		"010010001110111",
		"010010000010000"
	);
begin
	data <= "10"&rom(to_integer(unsigned(addr)))&"000";
end architecture;