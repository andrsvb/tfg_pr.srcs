----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2021 01:07:35
-- Design Name: 
-- Module Name: SL - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SL is
  port (
    s_in : in std_logic_vector(31 downto 0);
    s_sel : in std_logic_vector(4 downto 0);
    s_out : out std_logic_vector(31 downto 0)
  );
end SL;

architecture Behavioral of SL is

signal sh01 : std_logic_vector(31 downto 0);
signal sh02 : std_logic_vector(31 downto 0);
signal sh03 : std_logic_vector(31 downto 0);
signal sh04 : std_logic_vector(31 downto 0);
signal sh05 : std_logic_vector(31 downto 0);
signal sh06 : std_logic_vector(31 downto 0);
signal sh07 : std_logic_vector(31 downto 0);
signal sh08 : std_logic_vector(31 downto 0);
signal sh09 : std_logic_vector(31 downto 0);
signal sh10 : std_logic_vector(31 downto 0);
signal sh11 : std_logic_vector(31 downto 0);
signal sh12 : std_logic_vector(31 downto 0);
signal sh13 : std_logic_vector(31 downto 0);
signal sh14 : std_logic_vector(31 downto 0);
signal sh15 : std_logic_vector(31 downto 0);
signal sh16 : std_logic_vector(31 downto 0);
signal sh17 : std_logic_vector(31 downto 0);
signal sh18 : std_logic_vector(31 downto 0);
signal sh19 : std_logic_vector(31 downto 0);
signal sh20 : std_logic_vector(31 downto 0);
signal sh21 : std_logic_vector(31 downto 0);
signal sh22 : std_logic_vector(31 downto 0);
signal sh23 : std_logic_vector(31 downto 0);
signal sh24 : std_logic_vector(31 downto 0);
signal sh25 : std_logic_vector(31 downto 0);
signal sh26 : std_logic_vector(31 downto 0);
signal sh27 : std_logic_vector(31 downto 0);
signal sh28 : std_logic_vector(31 downto 0);
signal sh29 : std_logic_vector(31 downto 0);
signal sh30 : std_logic_vector(31 downto 0);
signal sh31 : std_logic_vector(31 downto 0);

begin

sh01 <= s_in(30 downto 0) & "0";
sh02 <= s_in(29 downto 0) & "00";
sh03 <= s_in(28 downto 0) & "000";
sh04 <= s_in(27 downto 0) & "0000";
sh05 <= s_in(26 downto 0) & "00000";
sh06 <= s_in(25 downto 0) & "000000";
sh07 <= s_in(24 downto 0) & "0000000";
sh08 <= s_in(23 downto 0) & "00000000";
sh09 <= s_in(22 downto 0) & "000000000";
sh10 <= s_in(21 downto 0) & "0000000000";
sh11 <= s_in(20 downto 0) & "00000000000";
sh12 <= s_in(19 downto 0) & "000000000000";
sh13 <= s_in(18 downto 0) & "0000000000000";
sh14 <= s_in(17 downto 0) & "00000000000000";
sh15 <= s_in(16 downto 0) & "000000000000000";
sh16 <= s_in(15 downto 0) & "0000000000000000";
sh17 <= s_in(14 downto 0) & "00000000000000000";
sh18 <= s_in(13 downto 0) & "000000000000000000";
sh19 <= s_in(12 downto 0) & "0000000000000000000";
sh20 <= s_in(11 downto 0) & "00000000000000000000";
sh21 <= s_in(10 downto 0) & "000000000000000000000";
sh22 <= s_in(9 downto 0) & "0000000000000000000000";
sh23 <= s_in(8 downto 0) & "00000000000000000000000";
sh24 <= s_in(7 downto 0) & "000000000000000000000000";
sh25 <= s_in(6 downto 0) & "0000000000000000000000000";
sh26 <= s_in(5 downto 0) & "00000000000000000000000000";
sh27 <= s_in(4 downto 0) & "000000000000000000000000000";
sh28 <= s_in(3 downto 0) & "0000000000000000000000000000";
sh29 <= s_in(2 downto 0) & "00000000000000000000000000000";
sh30 <= s_in(1 downto 0) & "000000000000000000000000000000";
sh31 <= s_in(0) & "0000000000000000000000000000000";

with s_sel select s_out <=
  s_in when "00000",
  sh01 when "00001",
  sh02 when "00010",
  sh03 when "00011",
  sh04 when "00100",
  sh05 when "00101",
  sh06 when "00110",
  sh07 when "00111",
  sh08 when "01000",
  sh09 when "01001",
  sh10 when "01010",
  sh11 when "01011",
  sh12 when "01100",
  sh13 when "01101",
  sh14 when "01110",
  sh15 when "01111",
  sh16 when "10000",
  sh17 when "10001",
  sh18 when "10010",
  sh19 when "10011",
  sh20 when "10100",
  sh21 when "10101",
  sh22 when "10110",
  sh23 when "10111",
  sh24 when "11000",
  sh25 when "11001",
  sh26 when "11010",
  sh27 when "11011",
  sh28 when "11100",
  sh29 when "11101",
  sh30 when "11110",
  sh31 when others;

end Behavioral;
