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
        if_clk, if_reset : in STD_LOGIC;
        if_branch : in std_logic;
        if_branchADDR : in std_logic_vector (31 downto 0);
        if_jump : in std_logic;
        if_jumpADDR : in std_logic_vector (31 downto 0);
        if_PC4 : out std_logic_vector (31 downto 0)
    );
end eIF;

architecture Behavioral of eIF is

component PC is
    Port ( 
        pc_clk, pc_reset : in STD_LOGIC;
        pc_branch : in std_logic;
        pc_branchADDR : in std_logic_vector (31 downto 0);
        pc_jump : in std_logic;
        pc_jumpADDR : in std_logic_vector (31 downto 0);
        pc_PC4 : out std_logic_vector (31 downto 0);
        pc_PC : out std_logic_vector (31 downto 0)
    );
end component;

component InstrMem is
    Port ( 
        im_clk : in STD_LOGIC
    );
end component;

signal s_pc: std_logic_vector (31 downto 0);

begin

bPC: PC
  port map(
      pc_clk => if_clk,
      pc_reset => if_reset,
      pc_branch => if_branch,
      pc_branchADDR => if_branchADDR,
      pc_jump => if_jump,
      pc_jumpADDR => if_jumpADDR,
      pc_PC4 => if_pc4,
      pc_PC => s_pc
  );

end Behavioral;
