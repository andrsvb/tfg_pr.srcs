----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.03.2021 13:50:06
-- Design Name: 
-- Module Name: test_ALU_shift - Behavioral
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

entity test_ALU_shift is
--  Port ( );
end test_ALU_shift;

architecture Behavioral of test_ALU_shift is

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

signal s_b : std_logic_vector (31 downto 0);
signal s_sa : std_logic_vector (4 downto 0);
signal s_alu_op : std_logic_vector (2 downto 0);
signal s_aux : std_logic;
signal s_s : std_logic_vector (31 downto 0);

begin

t_ALU : ALU 
  port map (
    a => x"00000000",
    b => s_b,
    sa => s_sa,
    alu_op => s_alu_op,
    aux => s_aux,
    s => s_s
  );
  t_process : process
  begin
    
-- TEST SHIFT: SLL, SRL, SRA
    -- test sll
    s_alu_op <= "101";
    s_aux <= '0';
    s_b <= "10000000000000001010101010101010";
    s_sa <= "00001";
    wait for 100 ns;
    s_sa <= "00100";
    wait for 100 ns;
    s_sa <= "10000";
    wait for 100 ns;
    s_b <= "00000000000000001010101010101010";
    s_sa <= "00001";
    wait for 100 ns;
    s_sa <= "00100";
    wait for 100 ns;
    s_sa <= "10000";
    wait for 100 ns;
    -- test srl
    s_alu_op <= "110";
    s_aux <= '0';
    s_b <= "10000000000000001010101010101010";
    s_sa <= "00001";
    wait for 100 ns;
    s_sa <= "00100";
    wait for 100 ns;
    s_sa <= "10000";
    wait for 100 ns;
    s_b <= "00000000000000001010101010101010";
    s_sa <= "00001";
    wait for 100 ns;
    s_sa <= "00100";
    wait for 100 ns;
    s_sa <= "10000";
    wait for 100 ns;
    -- test sra
    s_alu_op <= "110";
    s_aux <= '1';
    s_b <= "10000000000000001010101010101010";
    s_sa <= "00001";
    wait for 100 ns;
    s_sa <= "00100";
    wait for 100 ns;
    s_sa <= "10000";
    wait for 100 ns;
    s_b <= "00000000000000001010101010101010";
    s_sa <= "00001";
    wait for 100 ns;
    s_sa <= "00100";
    wait for 100 ns;
    s_sa <= "10000";
    wait for 100 ns;
    
  end process;

end Behavioral;
