----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.06.2021 13:27:21
-- Design Name: 
-- Module Name: test_clk_div - Behavioral
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

entity test_clk_div is
--  Port ( );
end test_clk_div;

architecture Behavioral of test_clk_div is

component clk_div is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk0 : out STD_LOGIC;
           clk1 : out STD_LOGIC;
           clk2 : out STD_LOGIC);
end component;

signal s_clk : std_logic;
signal s_reset : std_logic;
signal s_clk0 : std_logic;
signal s_clk1 : std_logic;
signal s_clk2 : std_logic;

begin

div: clk_div
    port map ( 
        clk => s_clk,
        reset => s_reset,
        clk0 => s_clk0,
        clk1 => s_clk1,
        clk2 => s_clk2
     );
  
  t_process : process
  begin
  
    s_reset <= '1';
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    s_reset <= '0';
    wait for 100 ns;
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
  end process;

end Behavioral;
