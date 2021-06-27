----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.06.2021 14:26:09
-- Design Name: 
-- Module Name: test_decoder32 - Behavioral
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

entity test_decoder32 is
--  Port ( );
end test_decoder32;

architecture Behavioral of test_decoder32 is

component decoder32 is
    Port ( 
        bits : in std_logic_vector (4 downto 0);
        int : out integer range 0 to 31
    );
end component;

signal s_bits : std_logic_vector (4 downto 0);
signal s_int : integer range 0 to 31;

begin
  
decode : decoder32 port map (
      bits => s_bits,
      int => s_int
  );
  
  t_process : process
  begin
  
    s_bits <= "00000";
    wait for 100 ns;
    s_bits <= "00001";
    wait for 100 ns;
    s_bits <= "00010";
    wait for 100 ns;
    s_bits <= "00011";
    wait for 100 ns;
    s_bits <= "00100";
    wait for 100 ns;
    s_bits <= "00101";
    wait for 100 ns;
    s_bits <= "00110";
    wait for 100 ns;
    s_bits <= "00111";
    wait for 100 ns;
    s_bits <= "01000";
    wait for 100 ns;
    s_bits <= "01001";
    wait for 100 ns;
    s_bits <= "01010";
    wait for 100 ns;
    s_bits <= "01011";
    wait for 100 ns;
    s_bits <= "01100";
    wait for 100 ns;
    s_bits <= "01101";
    wait for 100 ns;
    s_bits <= "01110";
    wait for 100 ns;
    s_bits <= "01111";
    wait for 100 ns;
    s_bits <= "10000";
    wait for 100 ns;
    s_bits <= "10001";
    wait for 100 ns;
    s_bits <= "10010";
    wait for 100 ns;
    s_bits <= "10011";
    wait for 100 ns;
    s_bits <= "10100";
    wait for 100 ns;
    s_bits <= "10101";
    wait for 100 ns;
    s_bits <= "10110";
    wait for 100 ns;
    s_bits <= "10111";
    wait for 100 ns;
    s_bits <= "11000";
    wait for 100 ns;
    s_bits <= "11001";
    wait for 100 ns;
    s_bits <= "11010";
    wait for 100 ns;
    s_bits <= "11011";
    wait for 100 ns;
    s_bits <= "11100";
    wait for 100 ns;
    s_bits <= "11101";
    wait for 100 ns;
    s_bits <= "11110";
    wait for 100 ns;
    s_bits <= "11111";
    wait for 100 ns;
    
  end process;


end Behavioral;
