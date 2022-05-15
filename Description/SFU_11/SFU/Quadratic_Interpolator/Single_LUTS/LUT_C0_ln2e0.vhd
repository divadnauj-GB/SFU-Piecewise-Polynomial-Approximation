library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LUT_C0_ln2e0 is
	generic(
		word_bits	:natural:=26;
		bus_bits	:natural:=29;
		add_bits	:natural:=6
	);
	port(
		addr		:in std_logic_vector(add_bits-1 downto 0);
		data		:out std_logic_vector(bus_bits-1 downto 0)
	);
end entity;

architecture behav of LUT_C0_ln2e0 is
	type storage is array (0 to 2**add_bits-1) of std_logic_vector(word_bits-1 downto 0);
	signal rom:storage:=(
		"11100010101010001110101100",
		"11011100111100101100111100",
		"11010111010110100110110100",
		"11010001110111101100010000",
		"11001100011111101101111000",
		"11000111001110011101001000",
		"11000010000011101100000100",
		"10111100111111001101011000",
		"10111000000000110100011000",
		"10110011001000010100111100",
		"10101110010101100011011010",
		"10101001101000010100101110",
		"10100101000000011110001110",
		"10100000011101110101101110",
		"10011100000000010001011110",
		"10010111100111101000000100",
		"10010011010011110000100010",
		"10001111000100100010010000",
		"10001010111001110100111100",
		"10000110110011100000100110",
		"10000010110001011101100110",
		"01111110110011100100100110",
		"01111010111001101110011100",
		"01110111000011110100011000",
		"01110011010001101111110010",
		"01101111100011011010011000",
		"01101011111000101110000000",
		"01101000010001100100110100",
		"01100100101101111001000110",
		"01100001001101100101011100",
		"01011101110000100100011110",
		"01011010010110110001001010",
		"01010111000000000110100010",
		"01010011101100011111110100",
		"01010000011011111000011010",
		"01001101001110001011110110",
		"01001010000011010101110100",
		"01000110111011010010001100",
		"01000011110101111100110110",
		"01000000110011010001111100",
		"00111101110011001101101010",
		"00111010110101101100010100",
		"00110111111010101010011000",
		"00110101000010000100011010",
		"00110010001011110111000000",
		"00101111010111111110111110",
		"00101100100110011001001000",
		"00101001110111000010011100",
		"00100111001001110111111110",
		"00100100011110110110110000",
		"00100001110101111100000110",
		"00011111001111000101001100",
		"00011100101010001111011100",
		"00011010000111011000010000",
		"00010111100110011101001010",
		"00010101000111011011110000",
		"00010010101010010001100110",
		"00010000001110111100011110",
		"00001101110101011010000110",
		"00001011011101101000010100",
		"00001001000111100101000000",
		"00000110110011001110000110",
		"00000100100000100001100100",
		"00000010001111011101100000"
	);
begin
	data <= "010"&rom(to_integer(unsigned(addr)));
end architecture;