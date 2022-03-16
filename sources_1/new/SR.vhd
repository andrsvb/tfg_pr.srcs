----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2021 01:07:35
-- Design Name: 
-- Module Name: SR - Behavioral
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

entity SR is
  port (
    s_in : in std_logic_vector(31 downto 0);
    s_sel : in std_logic_vector(4 downto 0);
    -- s_ari : 0 - logic shift right ; 1 - arithmetic shift right
    s_ari : in std_logic;
    s_out : out std_logic_vector(31 downto 0)
  );
end SR;

architecture Behavioral of SR is

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
signal sh_aux : std_logic;

begin

sh_aux <= s_in(31) and s_ari;

sh01 <= sh_aux & s_in(31 downto 1);
sh02 <= sh_aux & "0" & s_in(31 downto 2);
sh03 <= sh_aux & "00" & s_in(31 downto 3);
sh04 <= sh_aux & "000" & s_in(31 downto 4);
sh05 <= sh_aux & "0000" & s_in(31 downto 5);
sh06 <= sh_aux & "00000" & s_in(31 downto 6);
sh07 <= sh_aux & "000000" & s_in(31 downto 7);
sh08 <= sh_aux & "0000000" & s_in(31 downto 8);
sh09 <= sh_aux & "00000000" & s_in(31 downto 9);
sh10 <= sh_aux & "000000000" & s_in(31 downto 10);
sh11 <= sh_aux & "0000000000" & s_in(31 downto 11);
sh12 <= sh_aux & "00000000000" & s_in(31 downto 12);
sh13 <= sh_aux & "000000000000" & s_in(31 downto 13);
sh14 <= sh_aux & "0000000000000" & s_in(31 downto 14);
sh15 <= sh_aux & "00000000000000" & s_in(31 downto 15);
sh16 <= sh_aux & "000000000000000" & s_in(31 downto 16);
sh17 <= sh_aux & "0000000000000000" & s_in(31 downto 17);
sh18 <= sh_aux & "00000000000000000" & s_in(31 downto 18);
sh19 <= sh_aux & "000000000000000000" & s_in(31 downto 19);
sh20 <= sh_aux & "0000000000000000000" & s_in(31 downto 20);
sh21 <= sh_aux & "00000000000000000000" & s_in(31 downto 21);
sh22 <= sh_aux & "000000000000000000000" & s_in(31 downto 22);
sh23 <= sh_aux & "0000000000000000000000" & s_in(31 downto 23);
sh24 <= sh_aux & "00000000000000000000000" & s_in(31 downto 24);
sh25 <= sh_aux & "000000000000000000000000" & s_in(31 downto 25);
sh26 <= sh_aux & "0000000000000000000000000" & s_in(31 downto 26);
sh27 <= sh_aux & "00000000000000000000000000" & s_in(31 downto 27);
sh28 <= sh_aux & "000000000000000000000000000" & s_in(31 downto 28);
sh29 <= sh_aux & "0000000000000000000000000000" & s_in(31 downto 29);
sh30 <= sh_aux & "00000000000000000000000000000" & s_in(31 downto 30);
sh31 <= sh_aux & "000000000000000000000000000000" & s_in(31);

with s_sel select s_out(31 downto 0) <=
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
  sh31 when "11111",
  s_in when others;

end Behavioral;
