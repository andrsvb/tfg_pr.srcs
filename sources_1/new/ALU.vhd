----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.03.2021 20:03:05
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
  port ( 
    a : in std_logic_vector (31 downto 0);         -- rs
    b : in std_logic_vector (31 downto 0);         -- rt o imm
    sa : in std_logic_vector (4 downto 0);         -- shift amount
    alu_op : in std_logic_vector (2 downto 0);
    aux : in std_logic;
    s : out std_logic_vector(31 downto 0);
    overflow : out std_logic;
    c_out : out std_logic
  );
end ALU;

architecture Behavioral of ALU is

component sum_32bits is
  port (
    a_32 : in std_logic_vector (31 downto 0);
    b_32 : in std_logic_vector (31 downto 0);
    c_in_32 : in std_logic;
    s_32 : out std_logic_vector (31 downto 0);
    c_out_32 : out std_logic
  );
end component;

component SL is
  port (
    s_in : in std_logic_vector(31 downto 0);
    s_sel : in std_logic_vector(4 downto 0);
    s_out : out std_logic_vector(31 downto 0)
  );
end component;

component SR is
  port (
    s_in : in std_logic_vector(31 downto 0);
    s_sel : in std_logic_vector(4 downto 0);
    s_ari : in std_logic;
    s_out : out std_logic_vector(31 downto 0)
  );
end component;

signal s_na : std_logic_vector (31 downto 0);
signal s_nb : std_logic_vector (31 downto 0);
signal s_and : std_logic_vector (31 downto 0);
signal s_or : std_logic_vector (31 downto 0);
signal s_xor : std_logic_vector (31 downto 0);
signal s_sum : std_logic_vector (31 downto 0);
signal s_of_add : std_logic;
signal s_of_sub : std_logic;
signal s_overflow : std_logic;
signal s_less : std_logic_vector (31 downto 0);
signal s_sl : std_logic_vector (31 downto 0);
signal s_sr : std_logic_vector (31 downto 0);

begin

gen_a : for i in 0 to 31 generate
  s_na(i) <= a(i) xor aux;
end generate;

gen_b : for i in 0 to 31 generate
  s_nb(i) <= b(i) xor aux;
end generate;

-- AND si aux = 0; NOR si aux = 1
s_and <= s_na and s_nb;

-- OR
s_or <= a or b;

-- XOR
s_xor <= a xor b;

-- ADD si aux = 0; SUB si aux = 1
suma : sum_32bits
  port map(
    a_32 => a,
    b_32 => s_nb,
    c_in_32 => aux,
    s_32 => s_sum,
    c_out_32 => c_out
  );

-- overflow cuando:
--   a b s  operacion

--   + + -  suma
--   - - +  suma
s_of_add <= (not a(31) and  not b(31) and s_sum(31))
         or (a(31) and b(31) and not s_sum(31));

--   + - -  resta
--   - + +  resta
s_of_sub <= (not a(31) and b(31) and s_sum(31))
         or (a(31) and  not b(31) and not s_sum(31));

--   suma cuando aux = 0, resta cuando aux = 1
s_overflow <= (s_of_add and not aux) or (s_of_sub and aux);

-- SLT
  -- (a < b) => ((a - b) < 0)
  -- si se produce overflow el signo del resultado no es correcto
  -- como usa la resta, overflow solo si a y b de distintos signos
  -- si se da overflow, a < b si a < 0
s_less <= "0000000000000000000000000000000" & ((s_sum(31) and not s_overflow) or (a(31) and s_overflow));

-- SLL
sh_left : SL
  port map(
    s_in => b,
    s_sel => sa,
    s_out => s_sl
  );

-- SRL si aux = 0 ; SRA si aux = 1
sh_right : SR
  port map(
    s_in => b,
    s_sel => sa,
    s_ari => aux,
    s_out => s_sr
  );

-- selecciona operación
with alu_op select s <=
  s_and when "000",
  s_or when "001",
  s_sum when "010",
  s_less when "011",
  s_xor when "100",
  s_sl when "101",
  s_sr when "110",
  x"00000000" when others;

 -- solo producen overflow ADD/SUB
with alu_op select overflow <=
  s_overflow when "010",
  '0' when others;

end Behavioral;
