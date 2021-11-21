----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.11.2021 20:41:04
-- Design Name: 
-- Module Name: test_regs_etapas - Behavioral
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

entity test_regs_etapas is
--  Port ( );
end test_regs_etapas;

architecture Behavioral of test_regs_etapas is

begin

test_if_id : entity work.test_rIF_ID;
test_id_ex : entity work.test_rID_EX;
test_ex_mem : entity work.test_rEX_MEM;
test_mem_wb : entity work.test_rMEM_WB;

end Behavioral;
