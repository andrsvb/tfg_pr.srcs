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


component eIF IS
  PORT (
        if_clk, if_reset : in STD_LOGIC;
        if_branch : in std_logic;
        if_branch_addr : in std_logic_vector (31 downto 0);
        if_jump : in std_logic;
        if_jump_addr : in std_logic_vector (31 downto 0);
        if_PC : out std_logic_vector (31 downto 0);
        if_instr : out std_logic_vector (31 downto 0)
  );
end component;

component rIF_ID IS
  PORT (
        fd_clk, fd_reset : in STD_LOGIC;
        fd_PC_in : in std_logic_vector (31 downto 0);
        fd_instr_in : in std_logic_vector (31 downto 0);
        fd_PC_out : out std_logic_vector (31 downto 0);
        fd_instr_out : out std_logic_vector (31 downto 0)
  );
end component;

component eID_WB IS
  PORT (
        idwb_clk, idwb_reset : in STD_LOGIC;
        id_instr : in std_logic_vector (31 downto 0);
        id_PC : in std_logic_vector (31 downto 0);
        id_rs : out std_logic_vector (31 downto 0);
        id_rt : out std_logic_vector (31 downto 0);
        id_sa : out std_logic_vector (4 downto 0);
        id_imm : out std_logic_vector (31 downto 0);
        id_rwrite_addr : out std_logic_vector (4 downto 0);
        id_jump_addr : out std_logic_vector (31 downto 0);
        id_jump : out std_logic;
        id_branch : out std_logic;
        id_memread : out std_logic;
        id_memwrite : out std_logic;
        id_aluop : out std_logic_vector (3 downto 0);
        id_alusrc : out std_logic;
        id_regwrite : out std_logic;
        wb_regwrite : in std_logic;
        wb_rwrite_addr : in std_logic_vector (4 downto 0);
        wb_rwrite_data : in std_logic_vector (31 downto 0)
  );
end component;

component rID_EX IS
  PORT (
        dex_clk, dex_reset : in STD_LOGIC;
        dex_PC_in : in std_logic_vector (31 downto 0);
        dex_rs_in : in std_logic_vector (31 downto 0);
        dex_rt_in : in std_logic_vector (31 downto 0);
        dex_sa_in : in std_logic_vector (4 downto 0);
        dex_imm_in : in std_logic_vector (31 downto 0);
        dex_rwrite_addr_in : in std_logic_vector (4 downto 0);
        dex_jump_in : in std_logic;
        dex_jump_addr_in : in std_logic_vector (31 downto 0);
        dex_branch_in : in std_logic;
        dex_memread_in : in std_logic;
        dex_memwrite_in : in std_logic;
        dex_aluop_in : in std_logic_vector (3 downto 0);
        dex_alusrc_in : in std_logic;
        dex_regwrite_in : in std_logic;
        dex_PC_out : out std_logic_vector (31 downto 0);
        dex_rs_out : out std_logic_vector (31 downto 0);
        dex_rt_out : out std_logic_vector (31 downto 0);
        dex_sa_out : out std_logic_vector (4 downto 0);
        dex_imm_out : out std_logic_vector (31 downto 0);
        dex_rwrite_addr_out : out std_logic_vector (4 downto 0);
        dex_jump_out : out std_logic;
        dex_jump_addr_out : out std_logic_vector (31 downto 0);
        dex_branch_out : out std_logic;
        dex_memread_out : out std_logic;
        dex_memwrite_out : out std_logic;
        dex_aluop_out : out std_logic_vector (3 downto 0);
        dex_alusrc_out : out std_logic;
        dex_regwrite_out : out std_logic
  );
end component;

component eEX IS
  PORT (
    ex_clk, ex_reset : in STD_LOGIC;
    ex_pc : in std_logic_vector (31 downto 0);
    ex_rs : in std_logic_vector (31 downto 0);
    ex_rt : in std_logic_vector (31 downto 0);
    ex_sa : in std_logic_vector (4 downto 0);
    ex_imm : in std_logic_vector (31 downto 0);
    ex_aluop : in std_logic_vector (3 downto 0);
    ex_alusrc : in std_logic;
    ex_branch_in : in std_logic;
    ex_branch_out : out std_logic;
    ex_branch_addr : out std_logic_vector (31 downto 0);
    ex_sALU : out std_logic_vector (31 downto 0)
  );
end component;

component rEX_MEM IS
  PORT (
        xm_clk, xm_reset : in STD_LOGIC;
        xm_branch_in : in std_logic;
        xm_branch_addr_in : in std_logic_vector (31 downto 0);
        xm_sALU_in : in std_logic_vector (31 downto 0);
        xm_rt_in : in std_logic_vector (31 downto 0);
        xm_rwrite_addr_in : in std_logic_vector (4 downto 0);
        xm_memread_in : in std_logic;
        xm_memwrite_in : in std_logic;
        xm_regwrite_in : in std_logic;
        xm_rt_out : out std_logic_vector (31 downto 0);
        xm_sALU_out : out std_logic_vector (31 downto 0);
        xm_memread_out : out std_logic;
        xm_memwrite_out : out std_logic;
        xm_rwrite_addr_out : out std_logic_vector (4 downto 0);
        xm_regwrite_out : out std_logic;
        xm_branch_out : out std_logic;
        xm_branch_addr_out : out std_logic_vector (31 downto 0)
  );
end component;

component eMEM IS
  PORT (
        mem_clk, mem_reset : in STD_LOGIC;
        mem_write : in std_logic;
        mem_read : in std_logic;
        mem_rt : in std_logic_vector (31 downto 0);
        mem_sALU : in std_logic_vector (31 downto 0);
        mem_regw_data : out std_logic_vector (31 downto 0)
  );
end component;

component rMEM_WB IS
  PORT (
        mw_clk, mw_reset : in STD_LOGIC;
        mw_regw_data_in : in std_logic_vector (31 downto 0);
        mw_rwrite_addr_in : in std_logic_vector (4 downto 0);
        mw_regwrite_in : in std_logic;
        mw_regw_data_out : out std_logic_vector (31 downto 0);
        mw_rwrite_addr_out : out std_logic_vector (4 downto 0);
        mw_regwrite_out : out std_logic
  );
end component;

        -- SIGNALS

            --señal de reloj negada
signal s_clk : std_logic;

            
            --señales de instruction fetch
signal s_if_branch : std_logic;
signal s_if_branch_addr : std_logic_vector (31 downto 0);
signal s_if_jump : std_logic;
signal s_if_jump_addr : std_logic_vector (31 downto 0);
signal s_if_PC : std_logic_vector (31 downto 0);
signal s_if_instr : std_logic_vector (31 downto 0);

            --señales de instruction decode
signal s_id_PC : std_logic_vector (31 downto 0);
signal s_id_instr : std_logic_vector (31 downto 0);
signal s_id_rs : std_logic_vector (31 downto 0);
signal s_id_rt : std_logic_vector (31 downto 0);
signal s_id_sa : std_logic_vector (4 downto 0);
signal s_id_imm : std_logic_vector (31 downto 0);
signal s_id_rwrite_addr : std_logic_vector (4 downto 0);
signal s_id_jump_addr : std_logic_vector (31 downto 0);
signal s_id_jump : std_logic;
signal s_id_branch : std_logic;
signal s_id_memread : std_logic;
signal s_id_memwrite : std_logic;
signal s_id_aluop : std_logic_vector (3 downto 0);
signal s_id_alusrc : std_logic;
signal s_id_regwrite : std_logic;

            --señales de execute
signal s_ex_PC : std_logic_vector (31 downto 0);
signal s_ex_rs : std_logic_vector (31 downto 0);
signal s_ex_rt : std_logic_vector (31 downto 0);
signal s_ex_sa : std_logic_vector (4 downto 0);
signal s_ex_imm : std_logic_vector (31 downto 0);
signal s_ex_rwrite_addr : std_logic_vector (4 downto 0);
signal s_ex_branch_in : std_logic;
signal s_ex_branch_out : std_logic;
signal s_ex_branch_addr : std_logic_vector (31 downto 0);
signal s_ex_sALU : std_logic_vector (31 downto 0);
signal s_ex_memread : std_logic;
signal s_ex_memwrite : std_logic;
signal s_ex_aluop : std_logic_vector (3 downto 0);
signal s_ex_alusrc : std_logic;
signal s_ex_regwrite : std_logic;

            --señales de memory
signal s_mem_rt : std_logic_vector (31 downto 0);
signal s_mem_rwrite_addr : std_logic_vector (4 downto 0);
signal s_mem_sALU : std_logic_vector (31 downto 0);
signal s_mem_memread : std_logic;
signal s_mem_memwrite : std_logic;
signal s_mem_regwrite : std_logic;
signal s_mem_regw_data : std_logic_vector (31 downto 0);


            --señales de write back
signal s_wb_regwrite : std_logic;
signal s_wb_rwrite_addr : std_logic_vector (4 downto 0);
signal s_wb_rwrite_data : std_logic_vector (31 downto 0);



begin

--                                                                                    BEGIN
s_clk <= not clk;


e_IF: eIF
  PORT MAP(
        if_clk => clk,
        if_reset => reset,
        if_branch => s_if_branch,
        if_branch_addr => s_if_branch_addr,
        if_jump => s_if_jump,
        if_jump_addr => s_if_jump_addr,
        if_PC => s_if_PC,
        if_instr => s_if_instr
  );

r_IF_ID: rIF_ID
  PORT MAP(
        fd_clk => s_clk,
        fd_reset => reset,
        fd_PC_in => s_if_PC,
        fd_instr_in => s_if_instr,
        fd_PC_out => s_id_PC,
        fd_instr_out => s_id_instr
  );

e_ID_WB: eID_WB
  PORT MAP(
        idwb_clk => clk,
        idwb_reset => reset,
        id_instr => s_id_instr,
        id_PC => s_id_PC,
        id_rs => s_id_rs,
        id_rt => s_id_rt,
        id_sa => s_id_sa,
        id_imm => s_id_imm,
        id_jump_addr => s_id_jump_addr,
        id_rwrite_addr => s_id_rwrite_addr,
        id_jump => s_id_jump,
        id_branch => s_id_branch,
        id_memread => s_id_memread,
        id_memwrite => s_id_memwrite,
        id_aluop => s_id_aluop,
        id_alusrc => s_id_alusrc,
        id_regwrite => s_id_regwrite,
        wb_regwrite => s_wb_regwrite,
        wb_rwrite_addr => s_wb_rwrite_addr,
        wb_rwrite_data => s_wb_rwrite_data
  );

r_ID_EX: rID_EX
  PORT MAP(
        dex_clk => s_clk,
        dex_reset => reset,
        dex_PC_in => s_id_PC,
        dex_rs_in => s_id_rs,
        dex_rt_in => s_id_rt,
        dex_sa_in => s_id_sa,
        dex_imm_in => s_id_imm,
        dex_rwrite_addr_in => s_id_rwrite_addr,
        dex_jump_in => s_id_jump,
        dex_jump_addr_in => s_id_jump_addr,
        dex_branch_in => s_id_branch,
        dex_memread_in => s_id_memread,
        dex_memwrite_in => s_id_memwrite,
        dex_aluop_in => s_id_aluop,
        dex_alusrc_in => s_id_alusrc,
        dex_regwrite_in => s_id_regwrite,
        dex_PC_out => s_ex_PC,
        dex_rs_out => s_ex_rs,
        dex_rt_out => s_ex_rt,
        dex_sa_out => s_ex_sa,
        dex_imm_out => s_ex_imm,
        dex_rwrite_addr_out => s_ex_rwrite_addr,
        dex_branch_out => s_ex_branch_in,
        dex_memread_out => s_ex_memread,
        dex_memwrite_out => s_ex_memwrite,
        dex_aluop_out => s_ex_aluop,
        dex_alusrc_out => s_ex_alusrc,
        dex_regwrite_out => s_ex_regwrite,
        dex_jump_out => s_if_jump,
        dex_jump_addr_out => s_if_jump_addr
  );

e_EX: eEX
  PORT MAP(
        ex_clk => clk,
        ex_reset => reset,
        ex_pc => s_ex_PC,
        ex_rs => s_ex_rs,
        ex_rt => s_ex_rt,
        ex_sa => s_ex_sa,
        ex_imm => s_ex_imm,
        ex_aluop => s_ex_aluop,
        ex_alusrc => s_ex_alusrc,
        ex_branch_in => s_ex_branch_in,
        ex_branch_out => s_ex_branch_out,
        ex_branch_addr => s_ex_branch_addr,
        ex_sALU => s_ex_sALU
  );

r_EX_MEM: rEX_MEM
  PORT MAP(
        xm_clk => s_clk,
        xm_reset => reset,
        xm_branch_in => s_ex_branch_out,
        xm_branch_addr_in => s_ex_branch_addr,
        xm_sALU_in => s_ex_sALU,
        xm_rt_in => s_ex_rt,
        xm_rwrite_addr_in => s_ex_rwrite_addr,
        xm_memread_in => s_ex_memread,
        xm_memwrite_in => s_ex_memwrite,
        xm_regwrite_in => s_ex_regwrite,
        xm_rt_out => s_mem_rt,
        xm_sALU_out => s_mem_sALU,
        xm_memread_out => s_mem_memread,
        xm_memwrite_out => s_mem_memwrite,
        xm_rwrite_addr_out => s_mem_rwrite_addr,
        xm_regwrite_out => s_mem_regwrite,
        xm_branch_out => s_if_branch,
        xm_branch_addr_out => s_if_branch_addr
  );

e_MEM: eMEM
  PORT MAP(
        mem_clk => clk,
        mem_reset => reset,
        mem_write => s_mem_memwrite,
        mem_read => s_mem_memread,
        mem_rt => s_mem_rt,
        mem_sALU => s_mem_sALU,
        mem_regw_data => s_mem_regw_data
  );

r_MEM_WB: rMEM_WB
  PORT MAP(
        mw_clk => s_clk,
        mw_reset => reset,
        mw_regw_data_in => s_mem_regw_data,
        mw_rwrite_addr_in => s_mem_rwrite_addr,
        mw_regwrite_in => s_mem_regwrite,
        mw_regw_data_out => s_wb_rwrite_data,
        mw_rwrite_addr_out => s_wb_rwrite_addr,
        mw_regwrite_out => s_wb_regwrite
  );

end Behavioral;
