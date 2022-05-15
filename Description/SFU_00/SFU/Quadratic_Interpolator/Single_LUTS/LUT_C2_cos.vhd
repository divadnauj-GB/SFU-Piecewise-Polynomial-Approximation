library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LUT_C2_cos is
	generic(
		word_bits	:natural:=11;
		bus_bits	:natural:=14;
		add_bits	:natural:=6
	);
	port(
		addr		:in std_logic_vector(add_bits-1 downto 0);
		data		:out std_logic_vector(bus_bits-1 downto 0)
	);
end entity;

architecture behav of LUT_C2_cos is
	type storage is array (0 to 2**add_bits-1) of std_logic_vector(word_bits-1 downto 0);
	signal rom:storage:=(
		"11111111111",
		"11111111110",
		"11111111100",
		"11111111001",
		"11111110101",
		"11111110000",
		"11111101010",
		"11111100011",
		"11111011011",
		"11111010010",
		"11111001000",
		"11110111110",
		"11110110010",
		"11110100101",
		"11110010111",
		"11110001000",
		"11101111000",
		"11101100111",
		"11101010110",
		"11101000011",
		"11100101111",
		"11100011011",
		"11100000101",
		"11011101110",
		"11011010111",
		"11010111111",
		"11010100101",
		"11010001011",
		"11001110000",
		"11001010100",
		"11000110111",
		"11000011001",
		"10111111011",
		"10111011011",
		"10110111011",
		"10110011001",
		"10101110111",
		"10101010100",
		"10100110000",
		"10100001100",
		"10011100110",
		"10011000000",
		"10010011001",
		"10001110001",
		"10001001001",
		"10000011111",
		"01111110101",
		"01111001010",
		"01110011111",
		"01101110010",
		"01101000101",
		"01100010111",
		"01011101001",
		"01010111010",
		"01010001010",
		"01001011001",
		"01000101000",
		"00111110111",
		"00111000100",
		"00110010001",
		"00101011110",
		"00100101001",
		"00011110101",
		"00010111111"
	);
begin
	data <= "101"&rom(to_integer(unsigned(addr)));
end architecture;