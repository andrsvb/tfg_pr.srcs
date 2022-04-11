----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.01.2022 11:59:40
-- Design Name: 
-- Module Name: test_reg_EX_MEM - Behavioral
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

entity test_reg_EX_MEM is
--  Port ( );
end test_reg_EX_MEM;

architecture Behavioral of test_reg_EX_MEM is

component rEX_MEM IS
  PORT (
        xm_clk, xm_reset : in STD_LOGIC;
        xm_branch_in : in std_logic;
        xm_branch_addr_in : in std_logic_vector (31 downto 0);
        xm_sALU_in : in std_logic_vector (31 downto 0);
        xm_rt_in : in std_logic_vector (31 downto 0);
        xm_rwrite_addr_in : in std_logic_vector (4 downto 0);
        xm_memread_in : in std_logic;
        xm_memwrite_in : in std_logic;
        xm_regwrite_in : in std_logic;
        xm_rt_out : out std_logic_vector (31 downto 0);
        xm_sALU_out : out std_logic_vector (31 downto 0);
        xm_memread_out : out std_logic;
        xm_memwrite_out : out std_logic;
        xm_rwrite_addr_out : out std_logic_vector (4 downto 0);
        xm_regwrite_out : out std_logic;
        xm_branch_out : out std_logic;
        xm_branch_addr_out : out std_logic_vector (31 downto 0)
  );
end component;

signal s_clk : std_logic;
signal s_reset : std_logic;

signal s_branch_in : std_logic;
signal s_branch_addr_in : std_logic_vector (31 downto 0);
signal s_sALU_in : std_logic_vector (31 downto 0);
signal s_rt_in : std_logic_vector (31 downto 0);
signal s_rwrite_addr_in : std_logic_vector (4 downto 0);
signal s_memread_in : std_logic;
signal s_memwrite_in : std_logic;
signal s_regwrite_in : std_logic;

signal s_rt_out : std_logic_vector (31 downto 0);
signal s_sALU_out : std_logic_vector (31 downto 0);
signal s_memread_out : std_logic;
signal s_memwrite_out : std_logic;
signal s_rwrite_addr_out : std_logic_vector (4 downto 0);
signal s_regwrite_out : std_logic;
signal s_branch_out : std_logic;
signal s_branch_addr_out : std_logic_vector (31 downto 0);

begin

r_EX_MEM: rEX_MEM
  PORT MAP(
        xm_clk => s_clk,
        xm_reset => s_reset,
        xm_branch_in => s_branch_in,
        xm_branch_addr_in => s_branch_addr_in,
        xm_sALU_in => s_sALU_in,
        xm_rt_in => s_rt_in,
        xm_rwrite_addr_in => s_rwrite_addr_in,
        xm_memread_in => s_memread_in,
        xm_memwrite_in => s_memwrite_in,
        xm_regwrite_in => s_regwrite_in,
        xm_rt_out => s_rt_out,
        xm_sALU_out => s_sALU_out,
        xm_memread_out => s_memread_out,
        xm_memwrite_out => s_memwrite_out,
        xm_rwrite_addr_out => s_rwrite_addr_out,
        xm_regwrite_out => s_regwrite_out,
        xm_branch_out => s_branch_out,
        xm_branch_addr_out => s_branch_addr_out
  );

t_process : process
begin
  
-- TEST

--      RESET

    s_reset <= '1';
    s_clk <= '0';
    wait for 100 ns;
    s_clk <= not s_clk;
    wait for 100 ns;
    s_reset <= '0';
    s_clk <= not s_clk;
    wait for 100 ns;
    s_clk <= not s_clk;
    wait for 100 ns;
    
    l_test_if: loop
    
--      TEST 1
    
    s_branch_in <= '0';
    s_branch_addr_in <= x"12344321";
    s_sALU_in <= x"56788765";
    
    s_rt_in <= x"9ABCCBA9";
    s_memread_in <= '1';
    s_memwrite_in <= '0';
    
    s_clk <= not s_clk;
    wait for 100 ns;
    s_clk <= not s_clk;
    wait for 100 ns;
    
--      TEST 2
    
    s_rt_in <= x"CBA99ABC";
    s_memread_in <= '0';
    s_memwrite_in <= '1';
    
    s_rwrite_addr_in <= "01010";
    s_regwrite_in <= '0';
    
    s_clk <= not s_clk;
    wait for 100 ns;
    s_clk <= not s_clk;
    wait for 100 ns;
    
--      TEST 2
    
    s_rwrite_addr_in <= "10101";
    s_regwrite_in <= '1';
    
    s_branch_in <= '1';
    s_branch_addr_in <= x"43211234";
    s_sALU_in <= x"87655678";
    
    s_clk <= not s_clk;
    wait for 100 ns;
    s_clk <= not s_clk;
    wait for 100 ns;
    
    end loop;
    
end process;


end Behavioral;
