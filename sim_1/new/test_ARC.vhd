----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.01.2022 14:19:50
-- Design Name: 
-- Module Name: test_ARC - Behavioral
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

entity test_ARC is
--  Port ( );
end test_ARC;

architecture Behavioral of test_ARC is

component ARC is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC
    );
end component;

signal s_clk : std_logic;
signal s_reset : std_logic;

begin

tARC: ARC
  PORT MAP(
        clk => s_clk,
        reset => s_reset
  );    
  
  t_process : process
  begin
  
    s_clk <= '0';
    s_reset <= '0';
    wait for 100 ns;
    s_reset <= '1';
    wait for 100 ns;
    s_reset <= '0';
    wait for 100 ns;
  
    l_test_if: loop
        s_clk <= not s_clk;
        wait for 100 ns;
    end loop l_test_if;
    
  end process;

end Behavioral;
