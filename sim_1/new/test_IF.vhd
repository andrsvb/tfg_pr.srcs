----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.06.2021 19:29:20
-- Design Name: 
-- Module Name: test_IF - Behavioral
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

entity test_IF is
--  Port ( );
end test_IF;

architecture Behavioral of test_IF is

component eIF IS
  PORT (
        if_clk1, if_clk2, if_reset : in STD_LOGIC;
        if_branch : in std_logic;
        if_branch_addr : in std_logic_vector (31 downto 0);
        if_jump : in std_logic;
        if_jump_addr : in std_logic_vector (31 downto 0);
        if_PC : out std_logic_vector (31 downto 0);
        if_instr : out std_logic_vector (31 downto 0)
  );
end component;

signal s_clk1 : std_logic;
signal s_clk2 : std_logic;
signal s_reset : std_logic;
signal s_branch : std_logic;
signal s_branch_addr : std_logic_vector (31 downto 0);
signal s_jump : std_logic;
signal s_jump_addr : std_logic_vector (31 downto 0);
signal s_PC4 : std_logic_vector (31 downto 0);
signal s_PC4_aux : std_logic_vector (4 downto 0);
signal s_instr : std_logic_vector (31 downto 0);

begin

e_IF: eIF
  PORT MAP(
        if_clk1 => s_clk1,
        if_clk2 => s_clk2,
        if_reset => s_reset,
        if_branch => s_branch,
        if_branch_addr => s_branch_addr,
        if_jump => s_jump,
        if_jump_addr => s_jump_addr,
        if_PC => s_PC4,
        if_instr => s_instr
  );
  
  s_PC4_aux <= s_PC4 (6 downto 2);
  
  t_process : process
  begin
  
-- TEST INSTRUCTION FETCH
--            SETUP

    s_reset <= '1';
    s_clk1 <= '0';
    s_clk2 <= '0';
    s_branch <= '0';
    s_branch_addr <= x"00000028";       -- 25 bits que no usa .. 10/d .. 2 bits que no usa
    s_jump <= '0';
    s_jump_addr <= x"00000050";         -- 25 bits que no usa .. 20/d .. 2 bits que no usa
    wait for 100 ns;

--            NORMAL

    s_reset <= '0';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;

--            BRANCH

    s_branch <= '1';
    s_clk1 <= '0';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_branch <= '0';
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;

--            JUMP

    s_jump <= '1';
    s_clk1 <= '0';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_jump <= '0';
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    
  end process;


end Behavioral;
