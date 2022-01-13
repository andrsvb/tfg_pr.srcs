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

entity eID_WB is
    Port ( 
                    -- señales de reloj y reset
        idwb_clk1, idwb_clk2, idwb_reset : in STD_LOGIC;
                    -- ID instruccion a decodificar
        id_instr : in std_logic_vector (31 downto 0);
                    -- ID contador de programa +4
        id_PC : in std_logic_vector (31 downto 0);
                    -- ID registros leidos
        id_rs : out std_logic_vector (31 downto 0);
        id_rt : out std_logic_vector (31 downto 0);
                    -- ID shift amount
        id_sa : out std_logic_vector (4 downto 0);
                    -- ID sign extended immediate
        id_imm : out std_logic_vector (31 downto 0);
                    -- ID direccion de registro a escribir (o no) en WB
        id_rwrite_addr : out std_logic_vector (4 downto 0);
                    -- ID direccion de salto
        id_jump_addr : out std_logic_vector (31 downto 0);
                    -- ID señales de control
        id_jump : out std_logic;
        id_branch : out std_logic;
        id_memread : out std_logic;
        id_memwrite : out std_logic;
        id_regsrc : out std_logic;
        id_aluop : out std_logic_vector (3 downto 0);
        id_alusrc : out std_logic;
        id_regwrite : out std_logic;
                    -- WB señal para escribir o no en el registro
        wb_regwrite : in std_logic;
                    -- WB direccion del registro en el que escribir
        wb_rwrite_addr : in std_logic_vector (4 downto 0);
                    -- WB datos a escribir en el registro
        wb_rwrite_data : in std_logic_vector (31 downto 0)
    );
end eID_WB;

architecture Behavioral of eID_WB is

component reg_file is
    Port ( 
        rf_clk1, rf_clk2, rf_reset : in STD_LOGIC;
        rf_rs_addr : in std_logic_vector (4 downto 0);
        rf_rt_addr : in std_logic_vector (4 downto 0);
        rf_write : in std_logic;
        rf_write_addr : in std_logic_vector (4 downto 0);
        rf_write_data : in std_logic_vector (31 downto 0);
        rf_rs : out std_logic_vector (31 downto 0);
        rf_rt : out std_logic_vector (31 downto 0)
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
        cu_memwrite : out std_logic;
        cu_regsrc : out std_logic;
        cu_aluop : out std_logic_vector (3 downto 0);
        cu_alusrc : out std_logic;
        cu_regwrite : out std_logic
    );
end component;

signal s_write_data : std_logic_vector (31 downto 0);
signal s_regdst : std_logic;

begin

regs : reg_file
    Port map (
        rf_clk1 => idwb_clk1,
        rf_clk2 => idwb_clk2,
        rf_reset => idwb_reset,
        rf_rs_addr => id_instr(25 downto 21),
        rf_rt_addr => id_instr(20 downto 16),
        rf_write => wb_regwrite,
        rf_write_addr => wb_rwrite_addr,
        rf_write_data => s_write_data,
        rf_rs => id_rs,
        rf_rt => id_rt
    );

ctrl_unit : control_unit
    port map (
        cu_opcode => id_instr(31 downto 26),
        cu_funct => id_instr(5 downto 0),
        cu_regdst => s_regdst,
        cu_jump => id_jump,
        cu_branch => id_branch,
        cu_memread => id_memread,
        cu_memwrite => id_memwrite,
        cu_regsrc => id_regsrc,
        cu_aluop => id_aluop,
        cu_alusrc => id_alusrc,
        cu_regwrite => id_regwrite
    );

        -- segun la señal s_regdst se escribira o en el registro rd o rt
id_rwrite_addr <= id_instr(15 downto 11) when s_regdst = '0' else id_instr(20 downto 16);

id_sa <= id_instr(10 downto 6);

id_jump_addr <= id_pc(31 downto 28) & id_instr(25 downto 0) & "00";

        -- valor inmediato:
                -- primeros 16 bits sing-extended
id_imm(31 downto 16) <= id_instr(15 downto 15) & id_instr(15 downto 15) & id_instr(15 downto 15) & id_instr(15 downto 15)
                      & id_instr(15 downto 15) & id_instr(15 downto 15) & id_instr(15 downto 15) & id_instr(15 downto 15)
                      & id_instr(15 downto 15) & id_instr(15 downto 15) & id_instr(15 downto 15) & id_instr(15 downto 15)
                      & id_instr(15 downto 15) & id_instr(15 downto 15) & id_instr(15 downto 15) & id_instr(15 downto 15);
                -- ultimos 16 bits de la instruccion
id_imm(15 downto 0) <= id_instr(15 downto 0);

end Behavioral;
