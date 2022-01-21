----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.03.2021 13:50:06
-- Design Name: 
-- Module Name: test_ALU_logic - Behavioral
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

entity test_ALU_logic is
--  Port ( );
end test_ALU_logic;

architecture Behavioral of test_ALU_logic is

component ALU is
  port ( 
    a : in std_logic_vector (31 downto 0);
    b : in std_logic_vector (31 downto 0);
    sa : in std_logic_vector (4 downto 0);
    alu_op : in std_logic_vector (2 downto 0);
    aux : in std_logic;
    s : out std_logic_vector(31 downto 0)
  );
end component;

signal s_a : std_logic_vector (31 downto 0);
signal s_b : std_logic_vector (31 downto 0);
signal s_alu_op : std_logic_vector (2 downto 0);
signal s_aux : std_logic;
signal s_s : std_logic_vector (31 downto 0);

begin

t_ALU : ALU 
  port map (
    a => s_a,
    b => s_b,
    sa => "00000",
    alu_op => s_alu_op,
    aux => s_aux,
    s => s_s
  );
  t_process : process
  begin
  
-- TEST LOGIC: AND, NOR, OR, XOR
    -- test and
    s_alu_op <= "000";
    s_aux <= '0';
    s_a <= "10101010101010101010101010101010";
    s_b <= "10101010101010101010101010101010";
    wait for 100 ns;
    s_a <= "10101010101010101010101010101010";
    s_b <= "01010101010101010101010101010101";
    wait for 100 ns;
    s_a <= "10101010101010101010101010101010";
    s_b <= "11111111111111111111111111111111";
    wait for 100 ns;
    -- test nor
    s_alu_op <= "000";
    s_aux <= '1';
    s_a <= "10101010101010101010101010101010";
    s_b <= "10101010101010101010101010101010";
    wait for 100 ns;
    s_a <= "10101010101010101010101010101010";
    s_b <= "01010101010101010101010101010101";
    wait for 100 ns;
    s_a <= "10101010101010101010101010101010";
    s_b <= "11111111111111111111111111111111";
    wait for 100 ns;
    -- test or
    s_alu_op <= "001";
    s_aux <= '0';
    s_a <= "10101010101010101010101010101010";
    s_b <= "10101010101010101010101010101010";
    wait for 100 ns;
    s_a <= "10101010101010101010101010101010";
    s_b <= "01010101010101010101010101010101";
    wait for 100 ns;
    s_a <= "10101010101010101010101010101010";
    s_b <= "11111111111111111111111111111111";
    wait for 100 ns;
    -- test xor
    s_alu_op <= "100";
    s_aux <= '0';
    s_a <= "10101010101010101010101010101010";
    s_b <= "10101010101010101010101010101010";
    wait for 100 ns;
    s_a <= "10101010101010101010101010101010";
    s_b <= "01010101010101010101010101010101";
    wait for 100 ns;
    s_a <= "10101010101010101010101010101010";
    s_b <= "11111111111111111111111111111111";
    wait for 100 ns;
    
  end process;

end Behavioral;
