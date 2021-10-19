----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.03.2021 20:19:03
-- Design Name: 
-- Module Name: sum_32bits - Behavioral
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

entity sum_32bits is
  port (
    a_32 : in std_logic_vector (31 downto 0);
    b_32 : in std_logic_vector (31 downto 0);
    c_in_32 : in std_logic;
    s_32 : out std_logic_vector (31 downto 0);
    c_out_32 : out std_logic
  );
end sum_32bits;

architecture Behavioral of sum_32bits is

component sum_1bit is
  port (
    a_1 : in std_logic;
    b_1 : in std_logic;
    c_in_1 : in std_logic;
    s_1 : out std_logic;
    c_out_1 : out std_logic
  );
end component;

signal c_aux : std_logic_vector (30 downto 0);

begin

sum0 : sum_1bit 
  port map(
    a_1 => a_32(0),
    b_1 => b_32(0),
    c_in_1 => c_in_32,
    s_1 => s_32(0),
    c_out_1 => c_aux(0)
  );
	
gen_sum : for i in 1 to 30 generate
  sum_x : sum_1bit port map(
    a_1 => a_32(i),
    b_1 => b_32(i),
    c_in_1 => c_aux(i-1),
    s_1 => s_32(i),
    c_out_1 => c_aux(i)
  );
end generate;

sum31 : sum_1bit 
  port map(
    a_1 => a_32(31),
    b_1 => b_32(31),
    c_in_1 => c_aux(30),
    s_1 => s_32(31),
    c_out_1 => c_out_32
  );

end Behavioral;
