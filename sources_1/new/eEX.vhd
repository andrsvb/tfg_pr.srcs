----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.03.2021 23:01:00
-- Design Name: 
-- Module Name: eEX - Behavioral
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

entity eEX is
  port (
        -- clock and reset signals
    ex_clk1, ex_clk2, ex_reset : in STD_LOGIC;
        -- program counter (for branch)
    ex_pc : in std_logic_vector (31 downto 0);
        -- register data
    ex_rs : in std_logic_vector (31 downto 0);
    ex_rt : in std_logic_vector (31 downto 0);
        -- shift amount
    ex_sa : in std_logic_vector (31 downto 0);
        -- immediate value
    ex_imm : in std_logic_vector (31 downto 0);
        -- control signal for ALU operation
    ex_aluop : in std_logic_vector (3 downto 0);
        -- control signal for ALU's second input's source
    ex_alusrc : in std_logic;
        -- control signal for branch operations, in : branch op ; out : take branch
    ex_branch_in : in std_logic;
    ex_branch_out : out std_logic;
        -- address to branch program counter to
    ex_branch_addr : out std_logic_vector (31 downto 0);
        -- result of the ALU operation
    ex_sALU : out std_logic_vector (31 downto 0)
  );
end eEX;

architecture Behavioral of eEX is

component ALU is
  port ( 
    a : in std_logic_vector (31 downto 0);
    b : in std_logic_vector (31 downto 0);
    sa : in std_logic_vector (4 downto 0);
    alu_op : in std_logic_vector (2 downto 0);
    aux : in std_logic;
    s : out std_logic_vector(31 downto 0);
    overflow : out std_logic;
    c_out : out std_logic
  );
end component;

component sum_32bits is
  port (
    a_32 : in std_logic_vector (31 downto 0);
    b_32 : in std_logic_vector (31 downto 0);
    c_in_32 : in std_logic;
    s_32 : out std_logic_vector (31 downto 0)
  );
end component;

signal s_b : std_logic_vector (31 downto 0);
signal s_aux : std_logic;
signal s_sALU : std_logic_vector (31 downto 0);
signal s_overflow : std_logic;
signal s_c_out : std_logic;
signal s_zero : std_logic;
signal s_branch : std_logic;
signal s_pc_add : std_logic_vector (31 downto 0);

begin

s_b <= ex_imm when ex_alusrc = '1' else ex_rt;

EX_ALU : ALU
  port map (
    a => ex_rs,
    b => s_b,
    sa => ex_sa,
    alu_op => ex_aluop(2 downto 0),
    aux => ex_aluop(0),
    s => s_sALU,
    overflow => s_overflow,
    c_out => s_c_out
  );

ex_sALU <= s_sALU;

-- BRANCH control:
    
    -- decides if it takes a branch (only implemented branch equal)
    
s_zero <= '1' when s_sALU = x"00000000" else '0';
ex_branch_out <= ex_branch_in and s_zero;

    -- branch address : PC + (offset & 00)
    
s_pc_add <= ex_imm(29 downto 0) & "00";

suma_branch : sum_32bits
  port map(
    a_32 => ex_pc,
    b_32 => s_pc_add,
    c_in_32 => '0',
    s_32 => ex_branch_addr
  );

end Behavioral;
