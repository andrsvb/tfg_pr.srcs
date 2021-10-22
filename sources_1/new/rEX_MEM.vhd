----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2021 18:54:17
-- Design Name: 
-- Module Name: rEX_MEM - Behavioral
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

entity rEX_MEM is
    Port (
        -- IN
                -- señal de reloj y reset
        xm_clk, xm_reset : in STD_LOGIC;
                -- datos recibidos de la etapa ex
        xm_branch_in : in std_logic;
        xm_branch_addr_in : in std_logic_vector (31 downto 0);
        xm_sALU_in : in std_logic_vector (31 downto 0);
                -- datos recibidos del registro id_ex
        xm_rt_in : in std_logic_vector (31 downto 0);
        xm_rwrite_addr_in : in std_logic_vector (4 downto 0);
        xm_memread_in : in std_logic;
        xm_memwrite_in : in std_logic_vector (0 downto 0);
        xm_regsrc_in : in std_logic;
        xm_regwrite_in : in std_logic;
        -- OUT
                -- datos enviados a etapa mem
        xm_rt_out : out std_logic_vector (31 downto 0);
        xm_sALU_out : out std_logic_vector (31 downto 0);
        xm_memread_out : out std_logic;
        xm_memwrite_out : out std_logic_vector (0 downto 0);
        xm_regsrc_out : out std_logic;
                -- datos enviados a registro mem_wb
        xm_rwrite_addr_out : out std_logic_vector (4 downto 0);
        xm_regwrite_out : out std_logic;
                -- datos enviados a etapa if
        xm_branch_out : out std_logic;
        xm_branch_addr_out : out std_logic_vector (31 downto 0)
    );
end rEX_MEM;

architecture Behavioral of rEX_MEM is

begin

process (xm_clk, xm_reset)
begin
    if (xm_reset = '1') then
        xm_rt_out <= x"00000000";
        xm_sALU_out <= x"00000000";
        xm_memread_out <= '0';
        xm_memwrite_out <= "0";
        xm_regsrc_out <= '0';
        xm_rwrite_addr_out <= "00000";
        xm_regwrite_out <= '0';
        xm_branch_out <= '0';
        xm_branch_addr_out <= x"00000000";
        
    elsif (xm_clk'event and xm_clk = '1') then
        xm_rt_out <= xm_rt_in;
        xm_sALU_out <= xm_sALU_in;
        xm_memread_out <= xm_memread_in;
        xm_memwrite_out <= xm_memwrite_in;
        xm_regsrc_out <= xm_regsrc_in;
        xm_rwrite_addr_out <= xm_rwrite_addr_in;
        xm_regwrite_out <= xm_regwrite_in;
        xm_branch_out <= xm_branch_in;
        xm_branch_addr_out <= xm_branch_addr_in;
    end if;
end process;

end Behavioral;
