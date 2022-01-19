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
                        "000000" & "00000" & "00100" & "0000000000000001",                -- aux2 = 1
                        "101011" & "00001" & "00011" & "0000000000000000",                -- mem[i] = aux1
                        "101011" & "00001" & "00011" & "0000000000000100",                -- mem[i+1] = aux2
                        "001000" & "00010" & "00010" & "0000000000000010",                -- do { i += 2               salta con beq a esta linea  <---
                        "000000" & "00011" & "00100" & "00011" & "00000" & "100000",      -- 	aux1 += aux2
                        "000000" & "00011" & "00100" & "00100" & "00000" & "100000",      -- 	aux2 += aux1
                        "101011" & "00010" & "00011" & "0000000000000000",                -- 	mem[i] = aux1
                        "101011" & "00010" & "00100" & "0000000000000100",                -- 	mem[i+1] = aux2
                        "001010" & "00010" & "00101" & "0000000000010100",                -- } while (i < 20)          compara con slti cond i 20
                        "000100" & "00101" & "00001" & "1111111111111010",                --   ..                      salta si cond = 1           ---> 
                        x"00000000",                                                      --   ..
                        x"00000000",                                                      --   ..                      beq necesita 2 ciclos de reloj para propagarse
                        "100011" & "00000" & "00110" & "0000000001001100",                -- fib20 = mem[19]
                        "100011" & "00000" & "00111" & "0000000000110000",                -- fib13 = mem[12]
                        "000000" & "00111" & "00110" & "01000" & "00000" & "100010",      -- resta_fib = fib13 - fib20
                        "101011" & "00000" & "01000" & "0000000001010000",                -- mem[20] = resta_fib
                        "001101" & "00000" & "01001" & "0000000001010101",                -- aux3 = x"00555FFF"        carga los 1os 16 bits
                        "000000" & "00000" & "01001" & "01001" & "10000" & "000000",      --  ..                       mueve 16 bits a la izquierda
                        "001101" & "00000" & "01001" & "0101111111111111",                --  ..                       carga los ultimos 16 bits
                        "000000" & "01001" & "00110" & "01010" & "00000" & "100100",      -- fib_and = aux3 AND fib20
                        "101011" & "00000" & "01010" & "0000000001010100",                -- mem[21] = fib_and
                        "000000" & "01001" & "00110" & "01011" & "00000" & "100111",      -- fib_nor = aux3 NOR fib20
                        "101011" & "00000" & "01011" & "0000000001011000",                -- mem[22] = fib_nor
                        "000000" & "01001" & "00110" & "01100" & "00000" & "100101",      -- fib_or = aux3 OR fib20
                        "101011" & "00000" & "01100" & "0000000001011100",                -- mem[23] = fib_or
                        "000000" & "01001" & "00110" & "01101" & "00000" & "100110",      -- fib_xor = aux3 XOR fib20
                        "101011" & "00000" & "01101" & "0000000001100000",                -- mem[24] = fib_xor
                        x"00000000",                                                      -- nop
                        x"00000000",                                                      -- nop
                        x"00000000"                                                       -- nop
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
