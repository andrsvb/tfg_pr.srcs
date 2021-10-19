----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2021 18:48:11
-- Design Name: 
-- Module Name: eIF - Behavioral
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

entity eIF is
    Port ( 
        if_clk1, if_clk2, if_reset : in STD_LOGIC;
        if_branch : in std_logic;
        if_branch_addr : in std_logic_vector (31 downto 0);
        if_jump : in std_logic;
        if_jump_addr : in std_logic_vector (31 downto 0);
        if_PC : out std_logic_vector (31 downto 0);
        if_instr : out std_logic_vector (31 downto 0)
    );
end eIF;

architecture Behavioral of eIF is

component PC is
    Port ( 
        pc_clk, pc_reset : in STD_LOGIC;
        pc_branch : in std_logic;
        pc_branch_addr : in std_logic_vector (31 downto 0);
        pc_jump : in std_logic;
        pc_jump_addr : in std_logic_vector (31 downto 0);
        pc_PC4 : out std_logic_vector (31 downto 0);
        pc_PC : out std_logic_vector (31 downto 0)
    );
end component;

component instr_rom IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
end component;

signal s_pc: std_logic_vector (31 downto 0);

begin

IF_ProgramCounter: PC
  port map(
      pc_clk => if_clk1,
      pc_reset => if_reset,
      pc_branch => if_branch,
      pc_branch_addr => if_branch_addr,
      pc_jump => if_jump,
      pc_jump_addr => if_jump_addr,
      pc_PC => s_pc
  );

if_pc <= s_pc;

 IF_InstrMem: instr_rom
  port map(
      clka => if_clk2,
      ena => '1',
      addra => s_pc(6 downto 2),
      douta => if_instr
  );

end Behavioral;
