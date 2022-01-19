----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2021 18:48:11
-- Design Name: 
-- Module Name: eMEM - Behavioral
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

entity eMEM is
    Port ( 
        mem_clk, mem_reset : in STD_LOGIC;
                    -- señal de control para escribir
        mem_write : in std_logic;
                    -- señal de control para leer
        mem_read : in std_logic;
                    -- datos a escribir en memoria, del registro rt
        mem_rt : in std_logic_vector (31 downto 0);
                    -- resultado de la ALU:
                        -- sALU(6..2): direccion de memoria que escribir/leer
                        -- segun el valor de regsrc, se lleva a mem_regw_data
        mem_sALU : in std_logic_vector (31 downto 0);
                    -- señal que indica de que datos escribir (ALU / memoria)
        mem_regsrc : in std_logic;
                    -- datos a escribir en los registros
        mem_regw_data : out std_logic_vector (31 downto 0)
    );
end eMEM;

architecture Behavioral of eMEM is

component mem_data is
    Port ( 
        md_clk, md_reset : in STD_LOGIC;
        md_addr : in std_logic_vector (4 downto 0);
        md_write : in std_logic;
        md_read : in std_logic;
        md_data_in : in std_logic_vector (31 downto 0);
        md_data_out : out std_logic_vector (31 downto 0)
    );
end component;

signal s_mem_data_out : std_logic_vector (31 downto 0);

begin


 MEM_DataMem: mem_data
  port map(
      md_clk => mem_clk,
      md_reset => mem_reset,
      md_addr => mem_sALU(6 downto 2),
      md_write => mem_write,
      md_read => mem_read,
      md_data_in => mem_rt,
      md_data_out => s_mem_data_out
  );

-- escoge el origen de los datos a escribir en los registros
mem_regw_data <= s_mem_data_out when mem_regsrc = '1' else mem_sALU;

end Behavioral;
