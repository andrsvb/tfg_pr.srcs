----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.01.2022 14:19:50
-- Design Name: 
-- Module Name: test_todos - Behavioral
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

entity test_todos is
--  Port ( );
end test_todos;

architecture Behavioral of test_todos is

begin

t_arc : entity work.test_ARC;
t_if : entity work.test_IF;
t_rfd : entity work.test_reg_IF_ID;
t_id : entity work.test_ID;
t_rdex : entity work.test_reg_ID_EX;
t_ex : entity work.test_EX;
t_alu : entity work.test_ALU;
t_regs : entity work.test_reg_file;
t_rxm : entity work.test_reg_EX_MEM;
t_mem : entity work.test_MEM;
t_rmw : entity work.test_reg_MEM_WB;
t_wb : entity work.test_WB;

end Behavioral;
