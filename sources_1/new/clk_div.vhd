----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.06.2021 13:19:09
-- Design Name: 
-- Module Name: clk_div - Behavioral
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

entity clk_div is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk0 : out STD_LOGIC;
           clk1 : out STD_LOGIC;
           clk2 : out STD_LOGIC);
end clk_div;

architecture Behavioral of clk_div is

signal conta1 : std_logic := '0';
signal conta2 : std_logic := '0';

begin

process ( clk, reset )
	begin
	if  clk'event then
         if reset = '1' then
            conta1 <= '1';
            conta2 <= '1';
         elsif conta1 = '1' and conta2 = '0' then
            conta1 <= '0';
            conta2 <= '0';
         elsif conta1 = '0' and conta2 = '1' then
            conta1 <= '1';
            conta2 <= '0';
         else
            conta1 <= '0';
            conta2 <= '1';
         end if;
	end if;
end process;

clk0 <= '1' when (conta1 = '0' and conta2 = '1') else '0';
clk1 <= '1' when (conta1 = '1' and conta2 = '0') else '0';
clk2 <= '1' when (conta1 = '0' and conta2 = '0') else '0';


end Behavioral;
