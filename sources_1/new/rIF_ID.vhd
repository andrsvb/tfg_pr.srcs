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
        fd_PC_in : in std_logic_vector (31 downto 0);
        fd_instr_in : in std_logic_vector (31 downto 0);
        fd_PC_out : out std_logic_vector (31 downto 0);
        fd_instr_out : out std_logic_vector (31 downto 0)
    );
end rIF_ID;

architecture Behavioral of rIF_ID is

begin

process (fd_clk, fd_reset)
begin
    if (fd_reset = '1') then
        fd_PC_out <= x"00000000";
        fd_instr_out <= x"00000000";
    elsif (fd_clk'event and fd_clk = '1') then
        fd_PC_out <= fd_PC_in;
        fd_instr_out <= fd_instr_in;
    end if;
end process;

end Behavioral;
