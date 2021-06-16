----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.03.2021 23:11:38
-- Design Name: 
-- Module Name: ALU_ctrl - Behavioral
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

entity ALU_ctrl is
  port ( 
    op_code : in std_logic_vector (5 downto 0);
    funct : in std_logic_vector (5 downto 0);
    alu_op : out std_logic_vector (2 downto 0);
    aux : out std_logic
  );
end ALU_ctrl;

architecture Behavioral of ALU_ctrl is

begin

-- and alu_op = 000, aux = 0
  -- AND
  -- ANDI

-- nor alu_op = 000, aux = 1
  -- NOR

-- or  alu_op = 001, aux = 0
  -- OR
  -- ORI

-- add alu_op = 010, aux = 0
    -- add
  -- ADD
  -- ADDI
  -- ADDIU
  -- ADDU
    -- load
  -- LB
  -- LBU
  -- LHU
  -- LUI
  -- LW
    -- store
  -- SB
  -- SH
  -- SW

-- sub alu_op = 010, aux = 1
    -- subtract
  -- SUB
  -- SUBU
    -- branch eq/n
  -- BEQ
  -- BNE
    -- move eq/n
  -- MOVN
  -- MOVZ

-- slt alu_op = 011, aux = 1
    --set on less than
  -- SLT
  -- SLTI
    -- slt unsigned                 ??????????????????????????????
  -- SLTIU
  -- SLTU
    -- branch <=/>=
  -- ? BGTZ
  -- ? BLEZ

-- xor alu_op = 100, aux = 0
  -- XOR

-- sll alu_op = 101, aux = 0
  -- SLL

-- srl alu_op = 110, aux = 0
  -- SRL

-- sra alu_op = 110, aux = 1
  -- SRA

-- mul/div                          ??????????????????????????????
  -- MULT
  -- MULTU
  -- DIV
  -- DIVU
  
-- NOP                              ??????????????????????????????

end Behavioral;
