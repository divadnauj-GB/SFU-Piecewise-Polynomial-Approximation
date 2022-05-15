library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LUT_C0_sqrt_1_2 is
	generic(
		word_bits	:natural:=24;
		bus_bits	:natural:=29;
		add_bits	:natural:=6
	);
	port(
		addr		:in std_logic_vector(add_bits-1 downto 0);
		data		:out std_logic_vector(bus_bits-1 downto 0)
	);
end entity;

architecture behav of LUT_C0_sqrt_1_2 is
	type storage is array (0 to 2**add_bits-1) of std_logic_vector(word_bits-1 downto 0);
	signal rom:storage:=(
		"000000000000000000000000",
		"000000111111110000001000",
		"000001111111000000111110",
		"000010111101110011010010",
		"000011111100000111101101",
		"000100111001111110111001",
		"000101110111011001100001",
		"000110110100011000001001",
		"000111110000111011011001",
		"001000101101000011110101",
		"001001101000110001111111",
		"001010100100000110011010",
		"001011011111000001100110",
		"001100011001100100000100",
		"001101010011101110010010",
		"001110001101100000101101",
		"001111000110111011110011",
		"010000000000000000000000",
		"010000111000101101101110",
		"010001110001000101011000",
		"010010101001000111010111",
		"010011100000110100000100",
		"010100011000001011110111",
		"010101001111001111000111",
		"010110000101111110001011",
		"010110111100011001011000",
		"010111110010100001000101",
		"011000101000010101100110",
		"011001011101110111001110",
		"011010010011000110010011",
		"011011001000000011000110",
		"011011111100101101111010",
		"011100110001000111000010",
		"011101100101001110101111",
		"011110011001000101010011",
		"011111001100101010111101",
		"100000000000000000000000",
		"100000110011000100101001",
		"100001100101111001001010",
		"100010011000011101110000",
		"100011001010110010101011",
		"100011111100111000001010",
		"100100101110101110011010",
		"100101100000010101101001",
		"100110010001101110000101",
		"100111000010110111111011",
		"100111110011110011010111",
		"101000100100100000100110",
		"101001010100111111110101",
		"101010000101010001001111",
		"101010110101010101000000",
		"101011100101001011010011",
		"101100010100110100010100",
		"101101000100010000001110",
		"101101110011011111001011",
		"101110100010100001010110",
		"101111010001010110111010",
		"110000000000000000000000",
		"110000101110011100110001",
		"110001011100101101011001",
		"110010001010110010000000",
		"110010111000101010110000",
		"110011100110010111110001",
		"110100010011111001001101"
	);
begin
	data <= "010"&rom(to_integer(unsigned(addr)))&"00";
end architecture;