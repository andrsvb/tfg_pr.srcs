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
        opcode : in std_logic_vector (4 downto 0);
        regdst : out std_logic;
        jump : out std_logic;
        branch : out std_logic;
        memread : out std_logic;
        memtoreg : out std_logic;
        aluop : out std_logic_vector (3 downto 0);
        memwrite : out std_logic_vector (0 downto 0);
        alusrc : out std_logic;
        regwrite : out std_logic
    );
end control_unit;

architecture Behavioral of control_unit is

begin

--    regdst: 
--         en qué registro se va a escribir:
--           - instr (20..16)
--           - instr (15..11)
--    jump: 
--         si es una operacion de salto
--    branch: 
--         si es una operacion de branch
--    memread: 
--         para leer de memoria
--    memtoreg: 
--         de donde se sacan los datos a escribir en registro:
--           - resultado de la ALU
--           - memoria
--    aluop: 
--         operacion a realizar por la ALU:
--           - and/nor
--           - or
--           - add/sub
--           - slt
--           - sll
--           - srl/sra
--    memwrite: 
--         para escribir en memoria
--         tiene que ser un bus de 1 bit por la ip
--    alusrc: 
--         de donde saca el segundo operando la ALU:
--           - registro
--           - immediate / sign extend
--    regwrite: 
--         para escribir en registro

--    R format
--        opcode rs rt rd shamt funct
--             reg_source (operacion) reg_target => reg_destination
--             opcode = 0, funct => operacion
--             shamt : shift amount
--    I format
--        opcode rs rt imm
--             reg_source (operacion) reg_target => reg_destination
--    J format
--        opcode pseudoaddr
        

-- hacer                 instruction                         type        opcode (hex)    funct (hex)
--  o      add	Add	 	                                      R             0x00	          0x20	           
--         addu	Add Unsigned	                              R             0x00	          0x21	           
--  o      and	Bitwise AND		                              R             0x00	          0x24	           
--         div	Divide		                                  R             0x00	          0x1A	           
--         divu	Unsigned Divide		                          R             0x00	          0x1B	           
--         jalr	Jump and Link Register		                  J             0x00	          0x09	           
--  o      jr	Jump to Address in Register		              R             0x00	          0x08	           
--         mfhi	Move from HI Register		                  R             0x00	          0x10	           
--         mthi	Move to HI Register		                      R             0x00	          0x11	           
--         mflo	Move from LO Register		                  R             0x00	          0x12	           
--         mtlo	Move to LO Register		                      R             0x00	          0x13	           
--         mult	Multiply		                              R             0x00	          0x18	           
--         multu	Unsigned Multiply		                  R             0x00	          0x19	           
--  o      nor	Bitwise NOR (NOT-OR)		                  R             0x00	          0x27	           
--  o      xor	Bitwise XOR (Exclusive-OR)		              R             0x00	          0x26	           
--  o      or	Bitwise OR		                              R             0x00	          0x25	           
--  o      slt	Set to 1 if Less Than		                  R             0x00	          0x2A	           
--         sltu	Set to 1 if Less Than Unsigned	              R           	0x00	          0x2B	           
--  o      sll	Logical Shift Left		                      R             0x00	          0x00	           
--  o      srl	Logical Shift Right (0-extended)	          R	            0x00	          0x02	           
--  o      sra	Arithmetic Shift Right (sign-extended)	      R	            0x00	          0x03	           
--  o      sub	Subtract		                              R             0x00	          0x22	           
--         subu	Unsigned Subtract		                      R             0x00	          0x23	           
--  o      j	Jump to Address		                          J             0x02	           NA	           
--         jal	Jump and Link		                          J             0x03	           NA	           
--  o      beq	Branch if Equal		                          I             0x04	           NA	           
--  o      bne	Branch if Not Equal		                      I             0x05	           NA	           
--         blez	Branch if Less Than or Equal to Zero	      I	            0x06	           NA	           
--         bgtz	Branch on Greater Than Zero		              I             0x07	           NA	           
--  o      addi	Add Immediate	I	                          I             0x08	           NA	           
--         addiu	Add Unsigned Immediate		              I             0x09	           NA	           
--  o      slti	Set to 1 if Less Than Immediate		          I             0x0A	           NA	           
--         sltiu	Set to 1 if Less Than U. Imm	          I	            0x0B	           NA	           
--  o      andi	Bitwise AND Immediate		                  I             0x0C	           NA	           
--  o      ori	Bitwise OR Immediate		                  I             0x0D	           NA	           
--         lui	Load Upper Immediate		                  I             0x0F	           NA	           
--         mfc0	Move from Coprocessor 0		                  R             0x10	           NA	           
--         lb	Load Byte		                              I             0x20	           NA	           
--  o      lw	Load Word		                              I             0x23	           NA	           
--         lbu	Load Byte Unsigned		                      I             0x24	           NA	           
--         lhu	Load Halfword Unsigned		                  I             0x25	           NA	           
--         sb	Store Byte		                              I             0x28	           NA	           
--         sh	Store Halfword		                          I             0x29	           NA	           
--  o      sw	Store Word		                              I             0x2B	           NA	           


end Behavioral;
