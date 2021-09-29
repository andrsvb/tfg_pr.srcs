----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.06.2021 18:45:06
-- Design Name: 
-- Module Name: ARC - Behavioral
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

entity ARC is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC);
end ARC;

architecture Behavioral of ARC is

                                                        -- COMPONENTS

component clk_div is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk0 : out STD_LOGIC;
           clk1 : out STD_LOGIC;
           clk2 : out STD_LOGIC);
end component;

component eIF IS
  PORT (
        if_clk1, if_clk2, if_reset : in STD_LOGIC;
        if_branch : in std_logic;
        if_branchADDR : in std_logic_vector (31 downto 0);
        if_jump : in std_logic;
        if_jumpADDR : in std_logic_vector (31 downto 0);
        if_PC4 : out std_logic_vector (31 downto 0);
        if_instr : out std_logic_vector (31 downto 0)
  );
end component;

component rIF_ID IS
  PORT (
        fd_clk, fd_reset : in STD_LOGIC;
        fd_PC4_in : in std_logic_vector (31 downto 0);
        fd_instr_in : in std_logic_vector (31 downto 0);
        fd_PC4_out : out std_logic_vector (31 downto 0);
        fd_instr_out : out std_logic_vector (31 downto 0)
  );
end component;

component eID_WB IS
  PORT (
        idwb_clk1, idwb_clk2, idwb_reset : in STD_LOGIC;
        id_instr : in std_logic_vector (31 downto 0);
        id_rs : out std_logic_vector (31 downto 0);
        id_rt : out std_logic_vector (31 downto 0);
        id_imm : out std_logic_vector (31 downto 0);
        id_write_addr : out std_logic_vector (4 downto 0);
        id_jump : out std_logic;
        id_branch : out std_logic;
        id_memread : out std_logic;
        id_memwrite : out std_logic_vector (0 downto 0);
        id_regsrc : out std_logic;
        id_aluop : out std_logic_vector (3 downto 0);
        id_alusrc : out std_logic;
        id_regwrite : out std_logic;
        wb_regwrite : in std_logic;
        wb_write_addr : in std_logic_vector (4 downto 0);
        wb_regsrc : in std_logic;
        wb_alu : in std_logic_vector (31 downto 0);
        wb_mem : in std_logic_vector (31 downto 0)
  );
end component;

component rID_EX IS
  PORT (
        dx_clk, dx_reset : in STD_LOGIC
  );
end component;

component eEX IS
  PORT (
        ex_clk, ex_reset : in STD_LOGIC
  );
end component;

component rEX_MEM IS
  PORT (
        xm_clk, xm_reset : in STD_LOGIC
  );
end component;

component eMEM IS
  PORT (
        mem_clk, mem_reset : in STD_LOGIC
  );
end component;

component rMEM_WB IS
  PORT (
        mw_clk, mw_reset : in STD_LOGIC
  );
end component;

--                                                                                    SIGNALS

signal s_clk0 : std_logic;
signal s_clk1 : std_logic;
signal s_clk2 : std_logic;

signal s_if_branch : std_logic;
signal s_if_branchADDR : std_logic_vector (31 downto 0);
signal s_if_jump : std_logic;
signal s_if_jumpADDR : std_logic_vector (31 downto 0);
signal s_if_PC4 : std_logic_vector (31 downto 0);
signal s_if_instr : std_logic_vector (31 downto 0);

signal s_id_instr : std_logic_vector (31 downto 0);
signal s_id_rs : std_logic_vector (31 downto 0);
signal s_id_rt : std_logic_vector (31 downto 0);
signal s_id_imm : std_logic_vector (31 downto 0);
signal s_id_write_addr : std_logic_vector (4 downto 0);
signal s_id_jump : std_logic;
signal s_id_branch : std_logic;
signal s_id_memread : std_logic;
signal s_id_memwrite : std_logic_vector (0 downto 0);
signal s_id_regsrc : std_logic;
signal s_id_aluop : std_logic_vector (3 downto 0);
signal s_id_alusrc : std_logic;
signal s_id_regwrite : std_logic;
signal s_id_PC4 : std_logic_vector (31 downto 0);

signal s_wb_regwrite : std_logic;
signal s_wb_write_addr : std_logic_vector (4 downto 0);
signal s_wb_regsrc : std_logic;
signal s_wb_alu : std_logic_vector (31 downto 0);
signal s_wb_mem : std_logic_vector (31 downto 0);



begin

--                                                                                    BEGIN

clock: clk_div
  PORT MAP(
        clk => clk,
        reset => reset,
        clk0 => s_clk0,
        clk1 => s_clk1,
        clk2 => s_clk2
  );

e_IF: eIF
  PORT MAP(
        if_clk1 => s_clk1,
        if_clk2 => s_clk2,
        if_reset => reset,
        if_branch => s_if_branch,
        if_branchADDR => s_if_branchADDR,
        if_jump => s_if_jump,
        if_jumpADDR => s_if_jumpADDR,
        if_PC4 => s_if_PC4,
        if_instr => s_if_instr
  );

r_IF_ID: rIF_ID
  PORT MAP(
        fd_clk => clk,
        fd_reset => reset,
        fd_PC4_in => s_if_PC4,
        fd_instr_in => s_if_instr,
        fd_PC4_out => s_id_PC4,
        fd_instr_out => s_id_instr
  );

e_ID_WB: eID_WB
  PORT MAP(
        idwb_clk1 => s_clk1,
        idwb_clk2 => s_clk2,
        idwb_reset => reset,
        id_instr => s_id_instr,
        id_rs => s_id_rs,
        id_rt => s_id_rt,
        id_imm => s_id_imm,
        id_write_addr => s_id_write_addr,
        id_jump => s_id_jump,
        id_branch => s_id_branch,
        id_memread => s_id_memread,
        id_memwrite => s_id_memwrite,
        id_regsrc => s_id_regsrc,
        id_aluop => s_id_aluop,
        id_alusrc => s_id_alusrc,
        id_regwrite => s_id_regwrite,
        wb_regwrite => s_wb_regwrite,
        wb_write_addr => s_wb_write_addr,
        wb_regsrc => s_wb_regsrc,
        wb_alu => s_wb_alu,
        wb_mem => s_wb_mem
  );

r_ID_EX: rID_EX
  PORT MAP(
        dx_clk => clk,
        dx_reset => reset
  );

e_EX: eEX
  PORT MAP(
        ex_clk => clk,
        ex_reset => reset
  );

r_EX_MEM: rEX_MEM
  PORT MAP(
        xm_clk => clk,
        xm_reset => reset
  );

e_MEM: eMEM
  PORT MAP(
        mem_clk => clk,
        mem_reset => reset
  );

r_MEM_WB: rMEM_WB
  PORT MAP(
        mw_clk => clk,
        mw_reset => reset
  );

end Behavioral;
