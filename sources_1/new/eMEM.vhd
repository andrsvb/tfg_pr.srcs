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
        mem_clk1, if_reset : in STD_LOGIC;
        mem_memADDR : in std_logic_vector (31 downto 0);
        mem_write : in std_logic_vector (0 downto 0);
        mem_data_in : in std_logic_vector (31 downto 0);
        mem_data_out : out std_logic_vector (31 downto 0)
    );
end eMEM;

architecture Behavioral of eMEM is

component mem_ram IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
end component;

begin

 MEM_DataMem: mem_ram
  port map(
      clka => mem_clk1,
      ena => '1',
      wea => "0",
      addra => mem_memADDR(6 downto 2),
      dina => mem_data_in,
      douta => mem_data_out
  );


end Behavioral;
