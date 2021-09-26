----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2021 18:48:11
-- Design Name: 
-- Module Name: eID - Behavioral
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

entity eID is
    Port ( 
        id_clk1, id_clk2, id_reset : in STD_LOGIC;
        id_write_addr : in std_logic_vector (31 downto 0);
        id_instr : in std_logic_vector (31 downto 0);
        id_write_data : in std_logic_vector (31 downto 0);
        id_reg1 : out std_logic_vector (31 downto 0);
        id_reg2 : out std_logic_vector (31 downto 0);
        id_regdst : out std_logic;
        id_jump : out std_logic;
        id_branch : out std_logic;
        id_memread : out std_logic;
        id_memwrite : out std_logic_vector (0 downto 0);
        id_aluop : out std_logic_vector (3 downto 0);
        id_alusrc : out std_logic;
        id_regwrite : out std_logic
    );
end eID;

architecture Behavioral of eID is

component reg_file is
    Port ( 
        rf_clk1, rf_clk2, rf_reset : in STD_LOGIC;
        rf_reg1_addr : in std_logic_vector (4 downto 0);
        rf_reg2_addr : in std_logic_vector (4 downto 0);
        rf_write : in std_logic;
        rf_write_addr : in std_logic_vector (4 downto 0);
        rf_write_data : in std_logic_vector (31 downto 0);
        rf_reg1 : out std_logic_vector (31 downto 0);
        rf_reg2 : out std_logic_vector (31 downto 0)
    );
end component;

component control_unit is
    Port ( 
        cu_opcode : in std_logic_vector (5 downto 0);
        cu_funct : in std_logic_vector (5 downto 0);
        cu_regdst : out std_logic;
        cu_jump : out std_logic;
        cu_branch : out std_logic;
        cu_memread : out std_logic;
        cu_memwrite : out std_logic_vector (0 downto 0);
        cu_aluop : out std_logic_vector (3 downto 0);
        cu_alusrc : out std_logic;
        cu_regwrite : out std_logic
    );
end component;

signal s_reg1_addr : std_logic_vector (31 downto 0);
signal s_reg2_addr : std_logic_vector (31 downto 0);
signal s_write : std_logic;

begin

regs : reg_file
    Port map ( 
        rf_clk1 => id_clk1,
        rf_clk2 => id_clk2,
        rf_reset => id_reset,
        rf_reg1_addr => s_reg1_addr,
        rf_reg2_addr => s_reg2_addr,
        rf_write => s_write,
        rf_write_addr => id_write_addr,
        rf_write_data => id_write_data,
        rf_reg1 => id_reg1,
        rf_reg2 => id_reg2
    );

ctrl_unit : control_unit
    port map (
        cu_opcode => id_instr(31 downto 26),
        cu_funct => id_instr(5 downto 0),
        cu_regdst => id_regdst,
        cu_jump => id_jump,
        cu_branch => id_branch,
        cu_memread => id_memread,
        cu_memwrite => id_memwrite,
        cu_aluop => id_aluop,
        cu_alusrc => id_alusrc,
        cu_regwrite => id_regwrite
    );

end Behavioral;
