----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.03.2021 20:19:03
-- Design Name: 
-- Module Name: sum_1bit - Behavioral
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

entity sum_1bit is
  port (
    a_1 : in std_logic;
    b_1 : in std_logic;
    c_in_1 : in std_logic;
    s_1 : out std_logic;
    c_out_1 : out std_logic
  );
end sum_1bit;

architecture Behavioral of sum_1bit is

signal aux : std_logic_vector (2 downto 0);

begin

aux(0) <= a_1 xor b_1;
aux(1) <= a_1 and b_1;
aux(2) <= aux(0) and c_in_1;
s_1 <= aux(0) xor c_in_1;
c_out_1 <= aux(1) or aux(2);

end Behavioral;
