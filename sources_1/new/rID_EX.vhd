----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2021 18:54:17
-- Design Name: 
-- Module Name: rID_EX - Behavioral
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

entity rID_EX is
    Port (
                -- señal de reloj y reset
        dex_clk, dex_reset : in STD_LOGIC;
                -- datos recibidos de la etapa id
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
                -- datos enviados a etapa ex
        dex_PC_out : out std_logic_vector (31 downto 0);
        dex_rs_out : out std_logic_vector (31 downto 0);
        dex_rt_out : out std_logic_vector (31 downto 0);
        dex_imm_out : out std_logic_vector (31 downto 0);
        dex_rwrite_addr_out : out std_logic_vector (4 downto 0);
        dex_branch_out : out std_logic;
        dex_memread_out : out std_logic;
        dex_memwrite_out : out std_logic_vector (0 downto 0);
        dex_regsrc_out : out std_logic;
        dex_aluop_out : out std_logic_vector (3 downto 0);
        dex_alusrc_out : out std_logic;
        dex_regwrite_out : out std_logic;
                -- datos enviados a etapa if
        dex_jump_out : out std_logic;
        dex_jump_addr_out : out std_logic_vector (31 downto 0)
    );
end rID_EX;

architecture Behavioral of rID_EX is

begin

process (dex_clk, dex_reset)
begin
    if (dex_reset = '1') then
        dex_PC_out <= x"00000000";
        dex_rs_out <= x"00000000";
        dex_rt_out <= x"00000000";
        dex_imm_out <= x"00000000";
        dex_rwrite_addr_out <= x"00000000";
        dex_jump_out <= '0';
        dex_branch_out <= '0';
        dex_memread_out <= '0';
        dex_memwrite_out <= "0";
        dex_regsrc_out <= '0';
        dex_aluop_out <= "0111";
        dex_alusrc_out <= '0';
        dex_regwrite_out <= '0';
    elsif (dex_clk'event and dex_clk = '1') then
        dex_PC_out <= dex_PC_in;
        dex_rs_out <= dex_rs_in;
        dex_rt_out <= dex_rt_in;
        dex_imm_out <= dex_imm_in;
        dex_rwrite_addr_out <= dex_rwrite_addr_in;
        dex_jump_out <= dex_jump_in;
        dex_branch_out <= dex_branch_in;
        dex_memread_out <= dex_memread_in;
        dex_memwrite_out <= dex_memwrite_in;
        dex_regsrc_out <= dex_regsrc_in;
        dex_aluop_out <= dex_aluop_in;
        dex_alusrc_out <= dex_alusrc_in;
        dex_regwrite_out <= dex_regwrite_in;
    end if;
end process;


end Behavioral;
