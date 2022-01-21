----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.01.2022 11:59:40
-- Design Name: 
-- Module Name: test_reg_IF_ID - Behavioral
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

entity test_reg_IF_ID is
--  Port ( );
end test_reg_IF_ID;

architecture Behavioral of test_reg_IF_ID is

component rIF_ID is
    Port (
        fd_clk, fd_reset : in STD_LOGIC;
        fd_PC_in : in std_logic_vector (31 downto 0);
        fd_instr_in : in std_logic_vector (31 downto 0);
        fd_PC_out : out std_logic_vector (31 downto 0);
        fd_instr_out : out std_logic_vector (31 downto 0)
    );
end component;

signal s_clk : std_logic;
signal s_reset : std_logic;
signal s_pc_in : std_logic_vector (31 downto 0);
signal s_instr_in : std_logic_vector (31 downto 0);
signal s_pc_out : std_logic_vector (31 downto 0);
signal s_instr_out : std_logic_vector (31 downto 0);

begin

reg_fd: rIF_ID
  PORT MAP(
        fd_clk => s_clk,
        fd_reset => s_reset,
        fd_PC_in => s_pc_in,
        fd_instr_in => s_instr_in,
        fd_PC_out => s_pc_out,
        fd_instr_out => s_instr_out
  );

t_process : process
begin
  
-- TEST 

    s_pc_in <= x"13579BDF";
    s_instr_in <= x"02468ACE";
    s_reset <= '0';
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= not s_clk;
    wait for 100 ns;
    s_reset <= '1';
    s_clk <= not s_clk;
    wait for 100 ns;
    s_clk <= not s_clk;
    wait for 100 ns;
    s_reset <= '0';
    s_clk <= not s_clk;
    wait for 100 ns;
    s_clk <= not s_clk;
    wait for 100 ns;
    s_pc_in <= x"FDB97531";
    s_instr_in <= x"ECA86420";
    s_clk <= not s_clk;
    wait for 100 ns;
    s_clk <= not s_clk;
    wait for 100 ns;
    s_pc_in <= x"3E3E3E3E";
    s_instr_in <= x"25252525";
    s_clk <= not s_clk;
    wait for 100 ns;
    s_clk <= not s_clk;
    wait for 100 ns;
    
end process;


end Behavioral;
