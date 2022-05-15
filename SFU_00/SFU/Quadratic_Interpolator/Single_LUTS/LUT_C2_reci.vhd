library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LUT_C2_reci is
	generic(
		word_bits	:natural:=10;
		bus_bits	:natural:=14;
		add_bits	:natural:=7
	);
	port(
		addr		:in std_logic_vector(add_bits-1 downto 0);
		data		:out std_logic_vector(bus_bits-1 downto 0)
	);
end entity;

architecture behav of LUT_C2_reci is
	type storage is array (0 to 2**add_bits-1) of std_logic_vector(word_bits-1 downto 0);
	signal rom:storage:=(
		"1111110100",
		"1111011100",
		"1111000110",
		"1110110000",
		"1110011011",
		"1110000110",
		"1101110010",
		"1101011111",
		"1101001100",
		"1100111010",
		"1100101000",
		"1100010111",
		"1100000110",
		"1011110101",
		"1011100110",
		"1011010110",
		"1011000111",
		"1010111001",
		"1010101011",
		"1010011101",
		"1010001111",
		"1010000010",
		"1001110101",
		"1001101001",
		"1001011101",
		"1001010001",
		"1001000110",
		"1000111011",
		"1000110000",
		"1000100101",
		"1000011011",
		"1000010001",
		"1000000111",
		"0111111101",
		"0111110100",
		"0111101011",
		"0111100010",
		"0111011001",
		"0111010001",
		"0111001000",
		"0111000000",
		"0110111000",
		"0110110001",
		"0110101001",
		"0110100010",
		"0110011011",
		"0110010100",
		"0110001101",
		"0110000110",
		"0110000000",
		"0101111001",
		"0101110011",
		"0101101101",
		"0101100111",
		"0101100001",
		"0101011011",
		"0101010101",
		"0101010000",
		"0101001011",
		"0101000101",
		"0101000000",
		"0100111011",
		"0100110110",
		"0100110001",
		"0100101101",
		"0100101000",
		"0100100011",
		"0100011111",
		"0100011011",
		"0100010110",
		"0100010010",
		"0100001110",
		"0100001010",
		"0100000110",
		"0100000010",
		"0011111110",
		"0011111011",
		"0011110111",
		"0011110011",
		"0011110000",
		"0011101100",
		"0011101001",
		"0011100110",
		"0011100010",
		"0011011111",
		"0011011100",
		"0011011001",
		"0011010110",
		"0011010011",
		"0011010000",
		"0011001101",
		"0011001011",
		"0011001000",
		"0011000101",
		"0011000010",
		"0011000000",
		"0010111101",
		"0010111011",
		"0010111000",
		"0010110110",
		"0010110100",
		"0010110001",
		"0010101111",
		"0010101101",
		"0010101010",
		"0010101000",
		"0010100110",
		"0010100100",
		"0010100010",
		"0010100000",
		"0010011110",
		"0010011100",
		"0010011010",
		"0010011000",
		"0010010110",
		"0010010100",
		"0010010010",
		"0010010001",
		"0010001111",
		"0010001101",
		"0010001011",
		"0010001010",
		"0010001000",
		"0010000110",
		"0010000101",
		"0010000011",
		"0010000010",
		"0010000000"
	);
begin
	data <= "0"&rom(to_integer(unsigned(addr)))&"000";
end architecture;