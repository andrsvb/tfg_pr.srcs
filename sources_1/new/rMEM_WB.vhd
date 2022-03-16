----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2021 18:54:17
-- Design Name: 
-- Module Name: rMEM_WB - Behavioral
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

entity rMEM_WB is
    Port (
        -- IN
                -- señal de reloj y reset
        mw_clk, mw_reset : in STD_LOGIC;
                -- datos recibidos de la etapa mem
        mw_regw_data_in : in std_logic_vector (31 downto 0);
                -- datos recibidos del registro ex_mem
        mw_rwrite_addr_in : in std_logic_vector (4 downto 0);
        mw_regwrite_in : in std_logic;
        -- OUT
                -- datos enviados a etaba wb
        mw_regw_data_out : out std_logic_vector (31 downto 0);
        mw_rwrite_addr_out : out std_logic_vector (4 downto 0);
        mw_regwrite_out : out std_logic
    );
end rMEM_WB;

architecture Behavioral of rMEM_WB is

begin

process (mw_clk, mw_reset)
begin
    if (mw_reset = '1') then
        mw_regw_data_out <= x"00000000";
        mw_rwrite_addr_out <= "00000";
        mw_regwrite_out <= '0';
        
    elsif (mw_clk'event and mw_clk = '1') then
        mw_regw_data_out <= mw_regw_data_in;
        mw_rwrite_addr_out <= mw_rwrite_addr_in;
        mw_regwrite_out <= mw_regwrite_in;
    end if;
end process;

end Behavioral;
