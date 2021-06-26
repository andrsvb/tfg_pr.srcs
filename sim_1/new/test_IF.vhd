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
        if_clk, if_reset : in STD_LOGIC;
        if_branch : in std_logic;
        if_branchADDR : in std_logic_vector (31 downto 0);
        if_jump : in std_logic;
        if_jumpADDR : in std_logic_vector (31 downto 0);
        if_PC4 : out std_logic_vector (31 downto 0);
        if_instr : out std_logic_vector (31 downto 0)
  );
end component;

signal s_clk : std_logic;
signal s_reset : std_logic;
signal s_if_branch : std_logic;
signal s_if_branchADDR : std_logic_vector (31 downto 0);
signal s_if_jump : std_logic;
signal s_if_jumpADDR : std_logic_vector (31 downto 0);
signal s_if_PC4 : std_logic_vector (31 downto 0);
signal s_if_instr : std_logic_vector (31 downto 0);

begin

e_IF: eIF
  PORT MAP(
        if_clk => s_clk,
        if_reset => s_reset,
        if_branch => s_if_branch,
        if_branchADDR => s_if_branchADDR,
        if_jump => s_if_jump,
        if_jumpADDR => s_if_jumpADDR,
        if_PC4 => s_if_PC4,
        if_instr => s_if_instr
  );
  
  t_process : process
  begin
  
-- TEST INSTRUCTION FETCH
--            SETUP

    s_reset <= '1';
    s_clk <= '0';
    s_if_branch <= '0';
    s_if_branchADDR <= x"00000028";       -- 25 bits que no usa .. 10/d .. 2 bits que no usa
    s_if_jump <= '0';
    s_if_jumpADDR <= x"00000014";          -- 25 bits que no usa .. 20/d .. 2 bits que no usa
    wait for 100 ns;

--            NORMAL

    s_reset <= '0';
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

--            BRANCH

    s_if_branch <= '1';
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    s_if_branch <= '0';
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
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

--            JUMP

    s_if_jump <= '1';
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    s_if_jump <= '0';
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= '1';
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
