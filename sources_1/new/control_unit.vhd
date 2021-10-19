----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.06.2021 19:15:05
-- Design Name: 
-- Module Name: control_unit - Behavioral
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

entity control_unit is
    Port ( 
        cu_opcode : in std_logic_vector (5 downto 0);
        cu_funct : in std_logic_vector (5 downto 0);
        cu_regdst : out std_logic;                             -- para indicar en que registro escribe la operacion, rd (0) o rt (1)
        cu_jump : out std_logic;                               -- para operaciones de salto
        cu_branch : out std_logic;                             -- para operaciones de branch
        cu_memread : out std_logic;                            -- para leer de memoria
        cu_memwrite : out std_logic_vector (0 downto 0);       -- para escribir en memoria
        cu_regsrc : out std_logic;                             -- origen de los datos a escribir en registro, ALU (0) o memoria (1)
        cu_aluop : out std_logic_vector (3 downto 0);          -- para indicar qué operacion que ejecuta la ALU
        cu_alusrc : out std_logic;                             -- origen del segundo parámetro de la ALU, rt (0) o imm (1)
        cu_regwrite : out std_logic                            -- para escribir en registro
    );
end control_unit;

architecture Behavioral of control_unit is

begin

cu_regdst <= '0' when cu_opcode = "000000" else '1';

cu_jump <= '1' when cu_opcode = "000010" else '0';

cu_branch <= '1' when cu_opcode = "000100" else '0';

cu_memread <= '1' when cu_opcode = "100011" else '0';

cu_memwrite <= "1" when cu_opcode = "101011" else "0";

cu_regsrc <= '1' when cu_opcode = "100011" else '0';

cu_alusrc <= '1' when cu_opcode = "001100" or cu_opcode = "001101" or cu_opcode = "001110" or cu_opcode = "001000" 
                   or cu_opcode = "001010" or cu_opcode = "100011" or cu_opcode = "101011" else '0';

cu_regwrite <= '1' when not(cu_opcode = "101011" or cu_opcode = "000010" or (cu_opcode = "000000" and cu_funct = "001000")) else '0';

cu_aluop <= "0000" when cu_opcode = "001100" or (cu_opcode = "000000" and cu_funct = "100100") else
            "1000" when cu_opcode = "000000" and cu_funct = "100111" else
            "0001" when cu_opcode = "001101" or (cu_opcode = "000000" and cu_funct = "100101") else
            "0010" when cu_opcode = "001000" or cu_opcode = "100011" or cu_opcode = "101011" or (cu_opcode = "000000" and cu_funct = "100000") else
            "1010" when cu_opcode = "000100" or cu_opcode = "000101" or (cu_opcode = "000000" and cu_funct = "100010") else
            "0011" when cu_opcode = "001010" or (cu_opcode = "000000" and cu_funct = "101010") else
            "0100" when cu_opcode = "001110" or (cu_opcode = "000000" and cu_funct = "100110") else
            "0101" when cu_opcode = "000000" and cu_funct = "000000" else
            "0110" when cu_opcode = "000000" and cu_funct = "000010" else
            "1110" when cu_opcode = "000000" and cu_funct = "000011" else
            "0111";

-- and: 0-000  -- nor: 1-000
-- or:  0-001
-- add: 0-010  -- sub: 1-010
-- slt: 0-011
-- xor: 0-100
-- sll: 0-101
-- srl: 0-110  -- sra: 1-110
-- nop: 0-111

end Behavioral;
