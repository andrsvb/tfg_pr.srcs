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
    -- reg0
    op1 : in std_logic_vector (31 downto 0);
    -- reg1
    op2 : in std_logic_vector (31 downto 0);
    -- program counter
    pc : in std_logic_vector (31 downto 0);
    -- branch target / funct field
    inst_low : in std_logic_vector (31 downto 0);
    op_code : in std_logic_vector (5 downto 0);
    branch_target : out std_logic_vector (31 downto 0);
    sal : out std_logic_vector (31 downto 0)
  );
end eEX;

architecture Behavioral of eEX is

component ALU is
  port ( 
    a : in std_logic_vector (31 downto 0);
    b : in std_logic_vector (31 downto 0);
    alu_op : in std_logic_vector (2 downto 0);
    aux : in std_logic;
    s : out std_logic_vector(31 downto 0);
    overflow : out std_logic;
    c_out : out std_logic
  );
end component;

component ALU_ctrl is
  port ( 
    op_code : in std_logic_vector (5 downto 0);
    funct : in std_logic_vector (5 downto 0);
    alu_op : out std_logic_vector (2 downto 0);
    aux : out std_logic
  );
end component;

component sum_32bits is
  port (
    a_32 : in std_logic_vector (31 downto 0);
    b_32 : in std_logic_vector (31 downto 0);
    c_in_32 : in std_logic;
    s_32 : out std_logic_vector (31 downto 0);
    c_out_32 : out std_logic
  );
end component;

signal s_alu_op : std_logic_vector (2 downto 0);
signal s_a : std_logic_vector (31 downto 0);
signal s_b : std_logic_vector (31 downto 0);
signal s_aux : std_logic;
signal s_s : std_logic_vector (31 downto 0);
signal s_overflow : std_logic;
signal s_c_out : std_logic;
signal s_zero : std_logic;
signal s_pc_add : std_logic_vector (31 downto 0);
signal s_pc_out : std_logic;

begin

EX_ALU : ALU
  port map (
    a => s_a,
    b => s_b,
    alu_op => s_alu_op,
    aux => s_aux,
    s => s_s,
    overflow => s_overflow,
    c_out => s_c_out
  );

-- s_zero <= '1' when s_s = "00000000000000000000000000000000" else '0';
s_zero <= not ( s_s(0) or s_s(1) or s_s(2) or s_s(3) or s_s(4) or s_s(5) or s_s(6) or s_s(7)
             or s_s(8) or s_s(9) or s_s(10) or s_s(11) or s_s(12) or s_s(13) or s_s(14) or s_s(15)
             or s_s(16) or s_s(17) or s_s(18) or s_s(19) or s_s(20) or s_s(21) or s_s(22) or s_s(23)
             or s_s(24) or s_s(25) or s_s(26) or s_s(27) or s_s(28) or s_s(29) or s_s(30) or s_s(31));

EX_ctrlALU : ALU_ctrl
  port map (
    op_code => op_code,
    funct => inst_low(5 downto 0),
    alu_op => s_alu_op,
    aux => s_aux
  );

-- shift left 2
s_pc_add <= inst_low(29 downto 0) & "00";

-- pc + branch => target
suma : sum_32bits
  port map(
    a_32 => pc,
    b_32 => s_pc_add,
    c_in_32 => '0',
    s_32 => branch_target,
    c_out_32 => s_pc_out
  );

end Behavioral;
