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
        mem_clk1, mem_reset : in STD_LOGIC;
                    -- se�al de control para escribir
        mem_write : in std_logic_vector (0 downto 0);
                    -- se�al de control para leer
        mem_read : in std_logic;
                    -- datos a escribir en memoria, del registro rt
        mem_rt : in std_logic_vector (31 downto 0);
                    -- resultado de la ALU:
                        -- sALU(6..2): direccion de memoria que escribir/leer
                        -- segun el valor de regsrc, se lleva a mem_regw_data
        mem_sALU : in std_logic_vector (31 downto 0);
                    -- se�al que indica de que datos escribir (ALU / memoria)
        mem_regsrc : in std_logic;
                    -- datos a escribir en los registros
        mem_regw_data : out std_logic_vector (31 downto 0)
    );
end eMEM;

architecture Behavioral of eMEM is

component mem_ram IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;                                 -- enable read & write a
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);              -- write enable a
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);            -- address a
    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);            -- data in a
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)           -- data out a
  );
end component;

signal s_enable : std_logic;
signal s_mem_data_out : std_logic_vector (31 downto 0);

begin

-- se�al enable de escritura o lectura
s_enable <= mem_write(0) or mem_read;

 MEM_DataMem: mem_ram
  port map(
      clka => mem_clk1,
      ena => s_enable,
      wea => mem_write,
      addra => mem_sALU(6 downto 2),
      dina => mem_rt,
      douta => s_mem_data_out
  );

-- escoge el origen de los datos a escribir en los registros
mem_regw_data <= s_mem_data_out when mem_regsrc = '1' else mem_sALU;

end Behavioral;
