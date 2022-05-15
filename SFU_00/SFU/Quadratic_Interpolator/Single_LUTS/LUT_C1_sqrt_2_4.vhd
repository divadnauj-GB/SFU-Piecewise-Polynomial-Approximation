library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LUT_C1_sqrt_2_4 is
	generic(
		word_bits	:natural:=13;
		bus_bits	:natural:=20;
		add_bits	:natural:=6
	);
	port(
		addr		:in std_logic_vector(add_bits-1 downto 0);
		data		:out std_logic_vector(bus_bits-1 downto 0)
	);
end entity;

architecture behav of LUT_C1_sqrt_2_4 is
	type storage is array (0 to 2**add_bits-1) of std_logic_vector(word_bits-1 downto 0);
	signal rom:storage:=(
		"1101010000010",
		"1100111001111",
		"1100100100000",
		"1100001110101",
		"1011111001110",
		"1011100101010",
		"1011010001010",
		"1010111101110",
		"1010101010101",
		"1010010111110",
		"1010000101011",
		"1001110011011",
		"1001100001110",
		"1001010000011",
		"1000111111100",
		"1000101110110",
		"1000011110100",
		"1000001110011",
		"0111111110101",
		"0111101111010",
		"0111100000000",
		"0111010001001",
		"0111000010100",
		"0110110100000",
		"0110100101111",
		"0110011000000",
		"0110001010010",
		"0101111100111",
		"0101101111101",
		"0101100010101",
		"0101010101110",
		"0101001001001",
		"0100111100110",
		"0100110000100",
		"0100100100100",
		"0100011000101",
		"0100001101000",
		"0100000001100",
		"0011110110001",
		"0011101011000",
		"0011100000000",
		"0011010101001",
		"0011001010100",
		"0010111111111",
		"0010110101100",
		"0010101011010",
		"0010100001001",
		"0010010111001",
		"0010001101011",
		"0010000011101",
		"0001111010000",
		"0001110000101",
		"0001100111010",
		"0001011110000",
		"0001010101000",
		"0001001100000",
		"0001000011001",
		"0000111010011",
		"0000110001101",
		"0000101001001",
		"0000100000110",
		"0000011000011",
		"0000010000001",
		"0000001000000"
	);
begin
	data <= "0010"&rom(to_integer(unsigned(addr)))&"000";
end architecture;