----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2021 18:56:59
-- Design Name: 
-- Module Name: PC - Behavioral
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

entity PC is
    Port ( 
        pc_clk, pc_reset : in STD_LOGIC;
        pc_branch : in std_logic;
        pc_branch_addr : in std_logic_vector (31 downto 0);
        pc_jump : in std_logic;
        pc_jump_addr : in std_logic_vector (31 downto 0);
        pc_PC : out std_logic_vector (31 downto 0)
    );
end PC;

architecture Behavioral of PC is

component sum_32bits is
  port (
    a_32 : in std_logic_vector (31 downto 0);
    b_32 : in std_logic_vector (31 downto 0);
    c_in_32 : in std_logic;
    s_32 : out std_logic_vector (31 downto 0);
    c_out_32 : out std_logic
  );
end component;

signal s_nextPC : std_logic_vector (31 downto 0);
signal s_PC : std_logic_vector (31 downto 0) := x"00000000";
signal s_PC4 : std_logic_vector (31 downto 0);
signal s_hold : std_logic := '1';

begin

pc_PC <= s_PC;

sumPC4 : sum_32bits
  port map(
    a_32 => s_PC,
    b_32 => x"00000004",
    c_in_32 => '0',
    s_32 => s_PC4
  );

s_nextPC <= pc_branch_addr when (pc_branch = '1')
       else pc_jump_addr when (pc_jump = '1')
       else s_PC4;

process (pc_clk, pc_reset)
begin
    if (pc_reset = '1') then
        s_PC <= x"00000000";
        s_hold <= '1';
    elsif (pc_clk'event and pc_clk = '1') then
        if (s_hold = '1') then
            s_hold <= '0';
        else
            s_PC <= s_nextPC;
        end if;
    end if;
end process;

end Behavioral;
