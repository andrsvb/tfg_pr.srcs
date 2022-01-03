----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.06.2021 14:20:24
-- Design Name: 
-- Module Name: decoder32 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder32 is
    Port ( 
        bits : in std_logic_vector (4 downto 0);
        int : out integer range 0 to 31
    );
end decoder32;

architecture Behavioral of decoder32 is

begin

int <= to_integer(unsigned(bits));

--with bits select
--int <=
--     0 when "00000",
--     1 when "00001",
--     2 when "00010",
--     3 when "00011",
--     4 when "00100",
--     5 when "00101",
--     6 when "00110",
--     7 when "00111",
--     8 when "01000",
--     9 when "01001",
--    10 when "01010",
--    11 when "01011",
--    12 when "01100",
--    13 when "01101",
--    14 when "01110",
--    15 when "01111",
--    16 when "10000",
--    17 when "10001",
--    18 when "10010",
--    19 when "10011",
--    20 when "10100",
--    21 when "10101",
--    22 when "10110",
--    23 when "10111",
--    24 when "11000",
--    25 when "11001",
--    26 when "11010",
--    27 when "11011",
--    28 when "11100",
--    29 when "11101",
--    30 when "11110",
--    31 when "11111",
--     0 when others;

end Behavioral;
