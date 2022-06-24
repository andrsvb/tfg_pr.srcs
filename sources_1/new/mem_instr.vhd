----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.01.2022 20:54:08
-- Design Name: 
-- Module Name: mem_instr - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mem_instr is
    Port ( 
        mi_reset : in STD_LOGIC;
        mi_pc : in std_logic_vector (4 downto 0);
        mi_instr : out std_logic_vector (31 downto 0)
    );
end mem_instr;

architecture Behavioral of mem_instr is

type reg is array (0 to 31) of std_logic_vector(31 downto 0);
signal s_reg : reg := ( "000000" & "00000" & "00000" & "00010" & "00000" & "100101",      -- i = 0
                        "000000" & "00000" & "00000" & "00011" & "00000" & "100101",      -- aux1 = 0
                        "001101" & "00000" & "00100" & "0000000000000001",                -- aux2 = 1
                        x"00000000",                                                      --                        nop para que de tiempo a escribir
                        "101011" & "00010" & "00011" & "0000000000000000",                -- mem[i] = aux1
                        "101011" & "00010" & "00100" & "0000000000000100",                -- mem[i+1] = aux2
                        "001000" & "00010" & "00010" & "0000000000001000",                -- do { i += 2x4 (8)               salta con beq a esta linea  <---
                        "000000" & "00011" & "00100" & "00011" & "00000" & "100000",      -- 	aux1 += aux2
                        x"00000000",                                                      --                        nop para que de tiempo a escribir
                        "001010" & "00010" & "00101" & "0000000001001000",                --    (i < 72)? -> cond : 1 ; 0
                        "000000" & "00011" & "00100" & "00100" & "00000" & "100000",      -- 	aux2 += aux1
                        "101011" & "00010" & "00011" & "0000000000000000",                -- 	mem[i] = aux1
                        "000100" & "00101" & "00001" & "1111111111111010",                --   ..                      salta si cond = 1                 ---> 
                        "101011" & "00010" & "00100" & "0000000000000100",                -- 	mem[i+1] = aux2
                        x"00000000",                                                      --                        nop ya que beq necesita 2 ciclos de reloj para propagarse
                        "001101" & "00000" & "01001" & "1111111111110101",                -- aux3 = x"FFF55500" 1            [aux3]: carga los 1os 16 bits
                        "100011" & "00000" & "00111" & "0000000000110000",                -- fib13 = mem[12]
                        "100011" & "00000" & "00110" & "0000000001001100",                -- fib20 = mem[19]
                        "000000" & "00000" & "01001" & "01001" & "10000" & "000000",      -- aux3 = x"FFF55500" 2            [aux3]: mueve 16 bits a la izquierda
                        x"00000000",                                                      --                        nop para que de tiempo a escribir
                        "000000" & "00111" & "00110" & "01000" & "00000" & "100010",      -- resta_fib = fib13 - fib20
                        "001101" & "01001" & "01001" & "0101010100000000",                -- aux3 = x"FFF55500" 3            [aux3]: carga los ultimos 16 bits
                        x"00000000",                                                      --                        nop para que de tiempo a escribir
                        "101011" & "00000" & "01000" & "0000000001010000",                -- mem[20] = resta_fib
                        "000000" & "01001" & "00110" & "01010" & "00000" & "100100",      -- fib_and = aux3 AND fib20
                        "000000" & "01001" & "00110" & "01011" & "00000" & "100111",      -- fib_nor = aux3 NOR fib20
                        "000000" & "01001" & "00110" & "01100" & "00000" & "100101",      -- fib_or = aux3 OR fib20
                        "000000" & "01001" & "00110" & "01101" & "00000" & "100110",      -- fib_xor = aux3 XOR fib20
                        "101011" & "00000" & "01010" & "0000000001010100",                -- mem[21] = fib_and
                        "101011" & "00000" & "01011" & "0000000001011000",                -- mem[22] = fib_nor
                        "101011" & "00000" & "01100" & "0000000001011100",                -- mem[23] = fib_or
                        "101011" & "00000" & "01101" & "0000000001100000"                 -- mem[24] = fib_xor
                      );


-- Valores en los registros:
    -- 0: 0
    -- 1: 1
    -- 2: i
    -- 3: aux1
    -- 4: aux2
    -- 5: cond
    -- 6: fib20
    -- 7: fib13
    -- 8: resta
    -- 9: aux3
    -- 10: fib_and
    -- 11: fib_nor
    -- 12: fib_or
    -- 13: fib_xor
    
signal sel_instr : integer range 0 to 31;

begin

sel_instr <= to_integer(unsigned(mi_pc));
mi_instr <= s_reg(sel_instr);

end Behavioral;
