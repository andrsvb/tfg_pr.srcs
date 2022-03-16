----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.06.2021 14:02:38
-- Design Name: 
-- Module Name: reg_file - Behavioral
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

entity reg_file is
    Port ( 
        rf_clk, rf_reset : in STD_LOGIC;
        rf_rs_addr : in std_logic_vector (4 downto 0);
        rf_rt_addr : in std_logic_vector (4 downto 0);
        rf_write : in std_logic;
        rf_write_addr : in std_logic_vector (4 downto 0);
        rf_write_data : in std_logic_vector (31 downto 0);
        rf_rs : out std_logic_vector (31 downto 0);
        rf_rt : out std_logic_vector (31 downto 0)
    );
end reg_file;

architecture Behavioral of reg_file is

type reg is array (0 to 31) of std_logic_vector(31 downto 0);
signal s_reg : reg := (x"00000000", x"00000001", x"00000002", x"00000003", x"00000004", x"00000005", x"00000006", x"00000007",
                       x"00000008", x"00000009", x"0000000A", x"0000000B", x"0000000C", x"0000000D", x"0000000E", x"0000000F",
                       x"00000010", x"00000011", x"00000012", x"00000013", x"00000014", x"00000015", x"00000016", x"00000017",
                       x"00000018", x"00000019", x"0000001A", x"0000001B", x"0000001C", x"0000001D", x"0000001E", x"0000001F");
signal sel_rs : integer range 0 to 31;
signal sel_rt : integer range 0 to 31;
signal sel_write : integer range 0 to 31;

begin

sel_rs <= to_integer(unsigned(rf_rs_addr));
rf_rs <= s_reg(sel_rs);

sel_rt <= to_integer(unsigned(rf_rt_addr));
rf_rt <= s_reg(sel_rt);

sel_write <= to_integer(unsigned(rf_write_addr));

process (rf_clk, rf_reset)
begin
    if (rf_reset = '1') then
        s_reg <= (x"00000000", x"00000001", x"00000002", x"00000003", x"00000004", x"00000005", x"00000006", x"00000007",
                  x"00000008", x"00000009", x"0000000A", x"0000000B", x"0000000C", x"0000000D", x"0000000E", x"0000000F",
                  x"00000010", x"00000011", x"00000012", x"00000013", x"00000014", x"00000015", x"00000016", x"00000017",
                  x"00000018", x"00000019", x"0000001A", x"0000001B", x"0000001C", x"0000001D", x"0000001E", x"0000001F");
    elsif (rising_edge(rf_clk)) then
        if (rf_write = '1') then
            s_reg(sel_write) <= rf_write_data;
        end if;
    end if;
end process;

end Behavioral;
