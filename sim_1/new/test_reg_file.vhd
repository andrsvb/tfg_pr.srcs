----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.06.2021 14:27:13
-- Design Name: 
-- Module Name: test_reg_file - Behavioral
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

entity test_reg_file is
--  Port ( );
end test_reg_file;

architecture Behavioral of test_reg_file is

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

signal s_clk1 : std_logic;
signal s_clk2 : std_logic;
signal s_reset : std_logic;
signal s_reg1_addr : std_logic_vector (4 downto 0);
signal s_reg2_addr : std_logic_vector (4 downto 0);
signal s_write : std_logic;
signal s_write_addr : std_logic_vector (4 downto 0);
signal s_write_data : std_logic_vector (31 downto 0);
signal s_reg1 : std_logic_vector (31 downto 0);
signal s_reg2 : std_logic_vector (31 downto 0);

begin

regs : reg_file
    Port map ( 
        rf_clk1 => s_clk1,
        rf_clk2 => s_clk2,
        rf_reset => s_reset,
        rf_reg1_addr => s_reg1_addr,
        rf_reg2_addr => s_reg2_addr,
        rf_write => s_write,
        rf_write_addr => s_write_addr,
        rf_write_data => s_write_data,
        rf_reg1 => s_reg1,
        rf_reg2 => s_reg2
    );
  
  t_process : process
  begin
  
-- TEST REGISTER FILE
--            SETUP
  
    s_clk1 <= '0';
    s_clk2 <= '0';
    s_reset <= '1';
    s_reg1_addr <= "00000";
    s_reg2_addr <= "00001";
    s_write <= '0';
    s_write_addr <= "00001";
    s_write_data <= x"00000000";
    wait for 100 ns;
    s_reset <= '0';
    wait for 100 ns;

--            READ REGISTERS
    s_reg1_addr <= "00010";
    s_reg2_addr <= "00011";
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk2 <= '0';
    wait for 100 ns;
    s_reg1_addr <= "00100";
    s_reg2_addr <= "00101";
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk2 <= '0';
    wait for 100 ns;
    s_reg1_addr <= "00110";
    s_reg2_addr <= "00111";
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk2 <= '0';
    wait for 100 ns;
    s_reg1_addr <= "01000";
    s_reg2_addr <= "01001";
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk2 <= '0';
    wait for 100 ns;
    s_reg1_addr <= "01010";
    s_reg2_addr <= "01011";
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk2 <= '0';
    wait for 100 ns;
    s_reg1_addr <= "01100";
    s_reg2_addr <= "01101";
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk2 <= '0';
    wait for 100 ns;
    s_reg1_addr <= "01110";
    s_reg2_addr <= "01111";
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk2 <= '0';
    wait for 100 ns;
    s_reg1_addr <= "10000";
    s_reg2_addr <= "10001";
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '0';
    wait for 100 ns;
    
--            WRITE & READ REGISTERS

    s_reg1_addr <= "11111";
    s_reg2_addr <= "00001";
    s_write_addr <= "00001";
    s_write_data <= x"00000064";                               -- 100/d
    s_write <= '1';
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_reg2_addr <= "00010";
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '0';
    s_write_addr <= "00010";
    s_write_data <= x"000000C8";
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_reg2_addr <= "00011";
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '0';
    s_write_addr <= "00011";
    s_write_data <= x"0000012C";
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_reg2_addr <= "00100";
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '0';
    s_write_addr <= "00100";
    s_write_data <= x"00000190";
    wait for 100 ns;
    s_clk1 <= '1';
    s_clk2 <= '0';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '1';
    wait for 100 ns;
    s_clk1 <= '0';
    s_clk2 <= '0';
    wait for 200 ns;
    
  end process;

end Behavioral;
