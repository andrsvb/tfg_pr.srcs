----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2021 18:54:17
-- Design Name: 
-- Module Name: rIF_ID - Behavioral
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

entity rIF_ID is
    Port (
        fd_clk, fd_reset : in STD_LOGIC;
        in_PC4 : in std_logic_vector (31 downto 0);
        in_instr : in std_logic_vector (31 downto 0);
        out_PC4 : out std_logic_vector (31 downto 0);
        out_instr : out std_logic_vector (31 downto 0)
    );
end rIF_ID;

architecture Behavioral of rIF_ID is

begin

process (fd_clk, fd_reset)
begin
    if (fd_reset = '1') then
        out_PC4 <= x"00000000";
        out_instr <= x"00000000";
    elsif (fd_clk'event and fd_clk = '1') then
        out_PC4 <= in_PC4;
        out_instr <= in_instr;
    end if;
end process;

end Behavioral;
