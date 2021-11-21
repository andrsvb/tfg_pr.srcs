----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.11.2021 20:41:04
-- Design Name: 
-- Module Name: test_rID_EX - Behavioral
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

entity test_rID_EX is
--  Port ( );
end test_rID_EX;

architecture Behavioral of test_rID_EX is

component rID_EX is
    Port (
        dex_clk, dex_reset : in STD_LOGIC;
        dex_PC_in : in std_logic_vector (31 downto 0);
        dex_rs_in : in std_logic_vector (31 downto 0);
        dex_rt_in : in std_logic_vector (31 downto 0);
        dex_imm_in : in std_logic_vector (31 downto 0);
        dex_rwrite_addr_in : in std_logic_vector (4 downto 0);
        dex_jump_in : in std_logic;
        dex_jump_addr_in : in std_logic_vector (31 downto 0);
        dex_branch_in : in std_logic;
        dex_memread_in : in std_logic;
        dex_memwrite_in : in std_logic_vector (0 downto 0);
        dex_regsrc_in : in std_logic;
        dex_aluop_in : in std_logic_vector (3 downto 0);
        dex_alusrc_in : in std_logic;
        dex_regwrite_in : in std_logic;
        dex_PC_out : out std_logic_vector (31 downto 0);
        dex_rs_out : out std_logic_vector (31 downto 0);
        dex_rt_out : out std_logic_vector (31 downto 0);
        dex_imm_out : out std_logic_vector (31 downto 0);
        dex_branch_out : out std_logic;
        dex_aluop_out : out std_logic_vector (3 downto 0);
        dex_alusrc_out : out std_logic;
        dex_rwrite_addr_out : out std_logic_vector (4 downto 0);
        dex_memread_out : out std_logic;
        dex_memwrite_out : out std_logic_vector (0 downto 0);
        dex_regsrc_out : out std_logic;
        dex_regwrite_out : out std_logic;
        dex_jump_out : out std_logic;
        dex_jump_addr_out : out std_logic_vector (31 downto 0)
    );
end component;

signal s_clk, s_reset : STD_LOGIC;
signal s_PC_in : std_logic_vector (31 downto 0);
signal s_rs_in : std_logic_vector (31 downto 0);
signal s_rt_in : std_logic_vector (31 downto 0);
signal s_imm_in : std_logic_vector (31 downto 0);
signal s_rwrite_addr_in : std_logic_vector (4 downto 0);
signal s_jump_in : std_logic;
signal s_jump_addr_in : std_logic_vector (31 downto 0);
signal s_branch_in : std_logic;
signal s_memread_in : std_logic;
signal s_memwrite_in : std_logic_vector (0 downto 0);
signal s_regsrc_in : std_logic;
signal s_aluop_in : std_logic_vector (3 downto 0);
signal s_alusrc_in : std_logic;
signal s_regwrite_in : std_logic;
signal s_PC_out : std_logic_vector (31 downto 0);
signal s_rs_out : std_logic_vector (31 downto 0);
signal s_rt_out : std_logic_vector (31 downto 0);
signal s_imm_out : std_logic_vector (31 downto 0);
signal s_branch_out : std_logic;
signal s_aluop_out : std_logic_vector (3 downto 0);
signal s_alusrc_out : std_logic;
signal s_rwrite_addr_out : std_logic_vector (4 downto 0);
signal s_memread_out : std_logic;
signal s_memwrite_out : std_logic_vector (0 downto 0);
signal s_regsrc_out : std_logic;
signal s_regwrite_out : std_logic;
signal s_jump_out : std_logic;
signal s_jump_addr_out : std_logic_vector (31 downto 0);

begin

r_ID_EX: rID_EX
  PORT MAP(
        dex_clk => s_clk,
        dex_reset => s_reset,
        dex_PC_in => s_PC_in,
        dex_rs_in => s_rs_in,
        dex_rt_in => s_rt_in,
        dex_imm_in => s_imm_in,
        dex_rwrite_addr_in => s_rwrite_addr_in,
        dex_jump_in => s_jump_in,
        dex_jump_addr_in => s_jump_addr_in,
        dex_branch_in => s_branch_in,
        dex_memread_in => s_memread_in,
        dex_memwrite_in => s_memwrite_in,
        dex_regsrc_in => s_regsrc_in,
        dex_aluop_in => s_aluop_in,
        dex_alusrc_in => s_alusrc_in,
        dex_regwrite_in => s_regwrite_in,
        dex_PC_out => s_PC_out,
        dex_rs_out => s_rs_out,
        dex_rt_out => s_rt_out,
        dex_imm_out => s_imm_out,
        dex_rwrite_addr_out => s_rwrite_addr_out,
        dex_branch_out => s_branch_out,
        dex_memread_out => s_memread_out,
        dex_memwrite_out => s_memwrite_out,
        dex_regsrc_out => s_regsrc_out,
        dex_aluop_out => s_aluop_out,
        dex_alusrc_out => s_alusrc_out,
        dex_regwrite_out => s_regwrite_out,
        dex_jump_out => s_jump_out,
        dex_jump_addr_out => s_jump_addr_out
  );
  
  t_process : process
  begin
  
-- TEST REGISTRO ETAPAS IF - ID
  
--                                                    SETUP
    s_clk <= '0';
    s_reset <= '1';
    
--   SEÑALES DE 32 BITS
    s_PC_in <= x"11111111";
    s_rs_in <= x"22222222";
    s_rt_in <= x"33333333";
    s_imm_in <= x"44444444";
    s_jump_addr_in <= x"55555555";
--   SEÑAL DE 4 BITS
    s_aluop_in <= "1111";
--   SEÑAL DE 5 BITS
    s_rwrite_addr_in <= "00000";
--   SEÑALES DE 1 BIT
    s_jump_in <= '0';
    s_branch_in <= '0';
    s_memread_in <= '0';
    s_regsrc_in <= '1';
    s_alusrc_in <= '1';
    s_regwrite_in <= '1';
    wait for 100 ns;
    
    s_reset <= '0';
    wait for 100 ns;
    
--                                                    TICK 1
    s_clk <= '1';
    wait for 100 ns;
    
    s_clk <= '0';
--   SEÑALES DE 32 BITS
    s_PC_in <= x"10101010";
    s_rs_in <= x"20202020";
    s_rt_in <= x"30303030";
    s_imm_in <= x"40404040";
    s_jump_addr_in <= x"50505050";
--   SEÑAL DE 4 BITS
    s_aluop_in <= "1010";
--   SEÑAL DE 5 BITS
    s_rwrite_addr_in <= "01010";
--   SEÑALES DE 1 BIT
    s_jump_in <= '0';
    s_branch_in <= '0';
    s_memread_in <= '1';
    s_regsrc_in <= '1';
    s_alusrc_in <= '1';
    s_regwrite_in <= '0';
    wait for 100 ns;
    
    
--                                                    TICK 2
    s_clk <= '1';
    wait for 100 ns;
    
    s_clk <= '0';
--   SEÑALES DE 32 BITS
    s_PC_in <= x"11111111";
    s_rs_in <= x"22222222";
    s_rt_in <= x"33333333";
    s_imm_in <= x"44444444";
    s_jump_addr_in <= x"55555555";
--   SEÑAL DE 4 BITS
    s_aluop_in <= "1100";
--   SEÑAL DE 5 BITS
    s_rwrite_addr_in <= "10101";
--   SEÑALES DE 1 BIT
    s_jump_in <= '0';
    s_branch_in <= '1';
    s_memread_in <= '1';
    s_regsrc_in <= '1';
    s_alusrc_in <= '0';
    s_regwrite_in <= '0';
    wait for 100 ns;
--                                                    TICK 3
    s_clk <= '1';
    wait for 100 ns;
    
    s_clk <= '0';
--   SEÑALES DE 32 BITS
    s_PC_in <= x"11111111";
    s_rs_in <= x"22222222";
    s_rt_in <= x"33333333";
    s_imm_in <= x"44444444";
    s_jump_addr_in <= x"55555555";
--   SEÑAL DE 4 BITS
    s_aluop_in <= "0011";
--   SEÑAL DE 5 BITS
    s_rwrite_addr_in <= "10110";
--   SEÑALES DE 1 BIT
    s_jump_in <= '1';
    s_branch_in <= '1';
    s_memread_in <= '1';
    s_regsrc_in <= '0';
    s_alusrc_in <= '0';
    s_regwrite_in <= '0';
    wait for 100 ns;
    
  end process;


end Behavioral;
