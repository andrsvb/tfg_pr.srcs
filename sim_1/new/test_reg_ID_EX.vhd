----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.01.2022 11:59:40
-- Design Name: 
-- Module Name: test_reg_ID_EX - Behavioral
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

entity test_reg_ID_EX is
--  Port ( );
end test_reg_ID_EX;

architecture Behavioral of test_reg_ID_EX is

component rID_EX is
    Port (
        dex_clk, dex_reset : in STD_LOGIC;
        dex_PC_in : in std_logic_vector (31 downto 0);
        dex_rs_in : in std_logic_vector (31 downto 0);
        dex_rt_in : in std_logic_vector (31 downto 0);
        dex_sa_in : in std_logic_vector (4 downto 0);
        dex_imm_in : in std_logic_vector (31 downto 0);
        dex_rwrite_addr_in : in std_logic_vector (4 downto 0);
        dex_jump_in : in std_logic;
        dex_jump_addr_in : in std_logic_vector (31 downto 0);
        dex_branch_in : in std_logic;
        dex_memread_in : in std_logic;
        dex_memwrite_in : in std_logic;
        dex_aluop_in : in std_logic_vector (3 downto 0);
        dex_alusrc_in : in std_logic;
        dex_regwrite_in : in std_logic;
        dex_PC_out : out std_logic_vector (31 downto 0);
        dex_rs_out : out std_logic_vector (31 downto 0);
        dex_rt_out : out std_logic_vector (31 downto 0);
        dex_sa_out : out std_logic_vector (4 downto 0);
        dex_imm_out : out std_logic_vector (31 downto 0);
        dex_branch_out : out std_logic;
        dex_aluop_out : out std_logic_vector (3 downto 0);
        dex_alusrc_out : out std_logic;
        dex_rwrite_addr_out : out std_logic_vector (4 downto 0);
        dex_memread_out : out std_logic;
        dex_memwrite_out : out std_logic;
        dex_regwrite_out : out std_logic;
        dex_jump_out : out std_logic;
        dex_jump_addr_out : out std_logic_vector (31 downto 0)
    );
end component;

signal s_clk : std_logic;
signal s_reset : std_logic;
signal s_pc_in : std_logic_vector (31 downto 0);
signal s_rs_in : std_logic_vector (31 downto 0);
signal s_rt_in : std_logic_vector (31 downto 0);
signal s_sa_in : std_logic_vector (4 downto 0);
signal s_imm_in : std_logic_vector (31 downto 0);
signal s_rwrite_addr_in : std_logic_vector (4 downto 0);
signal s_jump_in : std_logic;
signal s_jump_addr_in : std_logic_vector (31 downto 0);
signal s_branch_in : std_logic;
signal s_memread_in : std_logic;
signal s_memwrite_in : std_logic;
signal s_aluop_in : std_logic_vector (3 downto 0);
signal s_alusrc_in : std_logic;
signal s_regwrite_in : std_logic;
signal s_pc_out : std_logic_vector (31 downto 0);
signal s_rs_out : std_logic_vector (31 downto 0);
signal s_rt_out : std_logic_vector (31 downto 0);
signal s_sa_out : std_logic_vector (4 downto 0);
signal s_imm_out : std_logic_vector (31 downto 0);
signal s_rwrite_addr_out : std_logic_vector (4 downto 0);
signal s_jump_out : std_logic;
signal s_jump_addr_out : std_logic_vector (31 downto 0);
signal s_branch_out : std_logic;
signal s_memread_out : std_logic;
signal s_memwrite_out : std_logic;
signal s_aluop_out : std_logic_vector (3 downto 0);
signal s_alusrc_out : std_logic;
signal s_regwrite_out : std_logic;


begin

reg_dex: rID_EX
  PORT MAP(
        dex_clk => s_clk,
        dex_reset => s_reset,
        dex_PC_in => s_pc_in,
        dex_rs_in => s_rs_in,
        dex_rt_in => s_rt_in,
        dex_sa_in => s_sa_in,
        dex_imm_in => s_imm_in,
        dex_rwrite_addr_in => s_rwrite_addr_in,
        dex_jump_in => s_jump_in,
        dex_jump_addr_in => s_jump_addr_in,
        dex_branch_in => s_branch_in,
        dex_memread_in => s_memread_in,
        dex_memwrite_in => s_memwrite_in,
        dex_aluop_in => s_aluop_in,
        dex_alusrc_in => s_alusrc_in,
        dex_regwrite_in => s_regwrite_in,
        dex_PC_out => s_pc_out,
        dex_rs_out => s_rs_out,
        dex_rt_out => s_rt_out,
        dex_sa_out => s_sa_out,
        dex_imm_out => s_imm_out,
        dex_rwrite_addr_out => s_rwrite_addr_out,
        dex_branch_out => s_branch_out,
        dex_memread_out => s_memread_out,
        dex_memwrite_out => s_memwrite_out,
        dex_aluop_out => s_aluop_out,
        dex_alusrc_out => s_alusrc_out,
        dex_regwrite_out => s_regwrite_out,
        dex_jump_out => s_jump_out,
        dex_jump_addr_out => s_jump_addr_out
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
    
    s_pc_in <= x"01234567";
    s_sa_in <= "11001";
    s_memread_in <= '0';
    s_memwrite_in <= '1';
    
    s_imm_in <= x"34343434";
    s_rwrite_addr_in <= "01010";
    s_jump_in <= '0';
    s_jump_addr_in <= x"78787878";
    
    s_clk <= not s_clk;
    wait for 100 ns;
    s_clk <= not s_clk;
    wait for 100 ns;
    
    
--      TEST 2
    
    s_imm_in <= x"43434343";
    s_rwrite_addr_in <= "10101";
    s_jump_in <= '1';
    s_jump_addr_in <= x"87878787";
    
    s_branch_in <= '1';
    s_rs_in <= x"89ABCDEF";
    s_rt_in <= x"12121212";
    
    s_clk <= not s_clk;
    wait for 100 ns;
    s_clk <= not s_clk;
    wait for 100 ns;
    
    
--      TEST 3

    s_branch_in <= '0';
    s_rs_in <= x"FEDCBA98";
    s_rt_in <= x"21212121";
    
    s_aluop_in <= "0110";
    s_alusrc_in <= '0';
    s_regwrite_in <= '1';
    
    s_clk <= not s_clk;
    wait for 100 ns;
    s_clk <= not s_clk;
    wait for 100 ns;

    
--      TEST 4    
    
    s_aluop_in <= "1001";
    s_alusrc_in <= '1';
    s_regwrite_in <= '0';
    
    s_pc_in <= x"76543210";
    s_sa_in <= "00110";
    s_memread_in <= '1';
    s_memwrite_in <= '0';
    
    s_clk <= not s_clk;
    wait for 100 ns;
    s_clk <= not s_clk;
    wait for 100 ns;
    
    end loop;
    
end process;

end Behavioral;
