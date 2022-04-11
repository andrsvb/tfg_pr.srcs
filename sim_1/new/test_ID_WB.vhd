----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.03.2022 15:24:33
-- Design Name: 
-- Module Name: test_ID_WB - Behavioral
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

entity test_ID_WB is
--  Port ( );
end test_ID_WB;

architecture Behavioral of test_ID_WB is

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

-- clock and reset
signal s_clk : std_logic;
signal s_reset : std_logic;

-- instruction decode inputs
signal s_instr : std_logic_vector (31 downto 0);
signal s_PC : std_logic_vector (31 downto 0);

-- aux instruction signals
signal s_str_instr : string(1 to 5);
signal s_ins_opcode : std_logic_vector (5 downto 0);
signal s_ins_rs : std_logic_vector (4 downto 0);
signal s_ins_rt : std_logic_vector (4 downto 0);
signal s_ins_rd : std_logic_vector (4 downto 0);
signal s_ins_sa : std_logic_vector (4 downto 0);
signal s_ins_funct : std_logic_vector (5 downto 0);
signal s_ins_imm : std_logic_vector (15 downto 0);
signal s_ins_index : std_logic_vector (25 downto 0);

-- outputs for execution
signal s_rs : std_logic_vector (31 downto 0);
signal s_rt : std_logic_vector (31 downto 0);
signal s_sa : std_logic_vector (4 downto 0);
signal s_imm : std_logic_vector (31 downto 0);

-- jump signal
signal s_jump_addr : std_logic_vector (31 downto 0);
signal s_jump : std_logic;

-- control signals and jump
signal s_id_rwrite_addr : std_logic_vector (4 downto 0);
signal s_branch : std_logic;
signal s_memread : std_logic;
signal s_memwrite : std_logic;
signal s_aluop : std_logic_vector (3 downto 0);
signal s_alusrc : std_logic;
signal s_id_regwrite : std_logic;

-- write back inputs
signal s_wb_regwrite : std_logic;
signal s_wb_rwrite_addr : std_logic_vector (4 downto 0);
signal s_wb_rwrite_data : std_logic_vector (31 downto 0);

begin

e_ID_WB: eID_WB
  PORT MAP(
        idwb_clk => s_clk,
        idwb_reset => s_reset,
        id_instr => s_instr,
        id_PC => s_PC,
        id_rs => s_rs,
        id_rt => s_rt,
        id_sa => s_sa,
        id_imm => s_imm,
        id_jump_addr => s_jump_addr,
        id_rwrite_addr => s_id_rwrite_addr,
        id_jump => s_jump,
        id_branch => s_branch,
        id_memread => s_memread,
        id_memwrite => s_memwrite,
        id_aluop => s_aluop,
        id_alusrc => s_alusrc,
        id_regwrite => s_id_regwrite,
        wb_regwrite => s_wb_regwrite,
        wb_rwrite_addr => s_wb_rwrite_addr,
        wb_rwrite_data => s_wb_rwrite_data
  );

s_ins_opcode <= s_instr(31 downto 26);
s_ins_rs  <= s_instr(25 downto 21);
s_ins_rt  <= s_instr(20 downto 16);
s_ins_rd  <= s_instr(15 downto 11);
s_ins_sa  <= s_instr(10 downto 6);
s_ins_funct  <= s_instr(5 downto 0);
s_ins_imm  <= s_instr(15 downto 0);
s_ins_index  <= s_instr(25 downto 0);
  
  t_process : process
  begin
  
-- TEST INSTRUCTION DECODE
--            SETUP

    s_str_instr <= "SETUP";
    s_reset <= '1';
    s_clk <= '0';
    s_wb_regwrite <= '0';
    s_wb_rwrite_addr <= "00000";
    s_wb_rwrite_data <= x"00000000";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    s_clk <= '0';
    s_reset <= '0';
    wait for 100 ns;
    
--        AND
    
    s_str_instr <= "AND  ";
--            | OPCODE  |   RS    |   RT    |   RD    |   SA    |   FUNCT  |
    s_instr <= "000000" & "00000" & "00001" & "00010" & "00000" & "100100";
    s_PC <= x"00000000";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
    
--        NOR
    
    s_clk <= '0';
    s_str_instr <= "NOR  ";
--            | OPCODE  |   RS    |   RT    |   RD    |   SA    |   FUNCT  |
    s_instr <= "000000" & "00011" & "00100" & "00101" & "00000" & "100111";
    s_PC <= x"00000004";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        OR
    
    s_clk <= '0';
    s_str_instr <= "OR   ";
--            | OPCODE  |   RS    |   RT    |   RD    |   SA    |   FUNCT  |
    s_instr <= "000000" & "00110" & "00111" & "01000" & "00000" & "100101";
    s_PC <= x"00000008";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        XOR
    
    s_clk <= '0';
    s_str_instr <= "XOR  ";
--            | OPCODE  |   RS    |   RT    |   RD    |   SA    |   FUNCT  |
    s_instr <= "000000" & "00000" & "00001" & "00010" & "00000" & "100110";
    s_PC <= x"0000000C";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        ADD
    
    s_clk <= '0';
    s_str_instr <= "ADD  ";
--            | OPCODE  |   RS    |   RT    |   RD    |   SA    |   FUNCT  |
    s_instr <= "000000" & "00011" & "00100" & "00101" & "00000" & "100000";
    s_PC <= x"00000010";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        SUB
    
    s_clk <= '0';
    s_str_instr <= "SUB  ";
--            | OPCODE  |   RS    |   RT    |   RD    |   SA    |   FUNCT  |
    s_instr <= "000000" & "00110" & "00111" & "01000" & "00000" & "100010";
    s_PC <= x"00000014";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        SLT
    
    s_clk <= '0';
    s_str_instr <= "SLT  ";
--            | OPCODE  |   RS    |   RT    |   RD    |   SA    |   FUNCT  |
    s_instr <= "000000" & "00000" & "00001" & "00010" & "00000" & "101010";
    s_PC <= x"00000018";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        SLL
    
    s_clk <= '0';
    s_str_instr <= "SLL  ";
--            | OPCODE  |   RS    |   RT    |   RD    |   SA    |   FUNCT  |
    s_instr <= "000000" & "00000" & "00011" & "00100" & "00001" & "000000";
    s_PC <= x"0000001C";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        SRL
    
    s_clk <= '0';
    s_str_instr <= "SRL  ";
--            | OPCODE  |   RS    |   RT    |   RD    |   SA    |   FUNCT  |
    s_instr <= "000000" & "00000" & "00101" & "00110" & "00010" & "000010";
    s_PC <= x"00000020";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        SRA
    
    s_clk <= '0';
    s_str_instr <= "SRA  ";
--            | OPCODE  |   RS    |   RT    |   RD    |   SA    |   FUNCT  |
    s_instr <= "000000" & "00000" & "00111" & "01000" & "00100" & "000011";
    s_PC <= x"00000024";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        ANDI
    
    s_clk <= '0';
    s_str_instr <= "ANDI ";
--            | OPCODE  |   RS    |   RT    |     IMMEDIATE      |
    s_instr <= "001100" & "10000" & "10001" & x"0001";
    s_PC <= x"00000028";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        ORI
    
    s_clk <= '0';
    s_str_instr <= "ORI  ";
--            | OPCODE  |   RS    |   RT    |     IMMEDIATE      |
    s_instr <= "001101" & "10010" & "10011" & x"0002";
    s_PC <= x"0000002C";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        XORI
    
    s_clk <= '0';
    s_str_instr <= "XORI ";
--            | OPCODE  |   RS    |   RT    |     IMMEDIATE      |
    s_instr <= "001110" & "10100" & "10101" & x"0003";
    s_PC <= x"00000030";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        ADDI
    
    s_clk <= '0';
    s_str_instr <= "ADDI ";
--            | OPCODE  |   RS    |   RT    |     IMMEDIATE      |
    s_instr <= "001000" & "10000" & "10001" & x"0004";
    s_PC <= x"00000034";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        SLTI
    
    s_clk <= '0';
    s_str_instr <= "SLTI ";
--            | OPCODE  |   RS    |   RT    |     IMMEDIATE      |
    s_instr <= "001010" & "10010" & "10011" & x"0005";
    s_PC <= x"0000003C";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        LW
    
    s_clk <= '0';
    s_str_instr <= "LW   ";
--            | OPCODE  |  BASE   |   RT    |     IMMEDIATE      |
    s_instr <= "100011" & "10100" & "10101" & x"0006";
    s_PC <= x"00000040";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        SW
    
    s_clk <= '0';
    s_str_instr <= "SW   ";
--            | OPCODE  |  BASE   |   RT    |     IMMEDIATE      |
    s_instr <= "101011" & "10000" & "10001" & x"0007";
    s_PC <= x"00000044";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        J
    
    s_clk <= '0';
    s_str_instr <= "J    ";
--            | OPCODE  |      INSTRUCTION INDEX       |
    s_instr <= "000010" & "10101010101010101010101010";
    s_PC <= x"0000004C";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        BEQ
    
    s_clk <= '0';
    s_str_instr <= "BEQ  ";
--            | OPCODE  |   RS    |   RT    |       OFFSET       |
    s_instr <= "000100" & "10100" & "10101" & x"0008";
    s_PC <= x"00000050";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
--        WRITE BACK
    
    -- TO SHOW THE CHANGES ID RECEIVES THE INSTRUCTION "AND R0 R1 R2" 
    s_clk <= '0';
    s_str_instr <= "WB 0 ";
    s_instr <= "000000" & "00000" & "00001" & "00010" & "00000" & "100100";
    s_PC <= x"00000054";
    s_wb_regwrite <= '1';
    s_wb_rwrite_addr <= "00000";
    s_wb_rwrite_data <= x"12345678";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
    s_clk <= '0';
    s_str_instr <= "WB 1 ";
    s_instr <= "000000" & "00000" & "00001" & "00010" & "00000" & "100100";
    s_PC <= x"00000058";
    s_wb_rwrite_addr <= "00001";
    s_wb_rwrite_data <= x"87654321";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
    -- TO SHOW THE CHANGES ID RECEIVES THE INSTRUCTION "AND R3 R4 R5" 
    s_clk <= '0';
    s_str_instr <= "WB 3 ";
    s_instr <= "000000" & "00011" & "00100" & "00101" & "00000" & "100100";
    s_PC <= x"00000054";
    s_wb_regwrite <= '1';
    s_wb_rwrite_addr <= "00011";
    s_wb_rwrite_data <= x"AAAAAAAA";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
    s_clk <= '0';
    s_str_instr <= "WB 4 ";
    s_instr <= "000000" & "00011" & "00100" & "00101" & "00000" & "100100";
    s_PC <= x"00000058";
    s_wb_rwrite_addr <= "00100";
    s_wb_rwrite_data <= x"FFFFFFFF";
    wait for 100 ns;
    s_clk <= '1';
    wait for 100 ns;
    
  end process;

end Behavioral;
