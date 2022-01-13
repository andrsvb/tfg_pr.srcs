----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.01.2022 20:54:08
-- Design Name: 
-- Module Name: mem_data - Behavioral
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

entity mem_data is
    Port ( 
        md_clk1, md_clk2, md_reset : in STD_LOGIC;
        md_addr : in std_logic_vector (4 downto 0);
        md_write : in std_logic;
        md_read : in std_logic;
        md_data_in : in std_logic_vector (31 downto 0);
        md_data_out : out std_logic_vector (31 downto 0)
    );
end mem_data;

architecture Behavioral of mem_data is

type reg is array (0 to 31) of std_logic_vector(31 downto 0);
signal s_reg : reg := (x"00000000", x"00000001", x"00000002", x"00000003", x"00000004", x"00000005", x"00000006", x"00000007",
                       x"00000008", x"00000009", x"0000000A", x"0000000B", x"0000000C", x"0000000D", x"0000000E", x"0000000F",
                       x"00000010", x"00000011", x"00000012", x"00000013", x"00000014", x"00000015", x"00000016", x"00000017",
                       x"00000018", x"00000019", x"0000001A", x"0000001B", x"0000001C", x"0000001D", x"0000001E", x"0000001F");
signal s_data_out : std_logic_vector (31 downto 0);
signal sel : integer range 0 to 31;

begin

sel <= to_integer(unsigned(md_addr));
s_data_out <= s_reg(sel);

process (md_clk1, md_clk2, md_reset)
begin
    if (md_reset = '1') then
        s_reg <= (x"00000000", x"00000001", x"00000002", x"00000003", x"00000004", x"00000005", x"00000006", x"00000007",
                  x"00000008", x"00000009", x"0000000A", x"0000000B", x"0000000C", x"0000000D", x"0000000E", x"0000000F",
                  x"00000010", x"00000011", x"00000012", x"00000013", x"00000014", x"00000015", x"00000016", x"00000017",
                  x"00000018", x"00000019", x"0000001A", x"0000001B", x"0000001C", x"0000001D", x"0000001E", x"0000001F");
        md_data_out <= x"00000000";
    else
        if (md_clk1'event and md_clk1 = '1' and md_write = '1') then
            s_reg(sel) <= md_data_in;
        end if;
        if (md_clk2'event and md_clk2 = '1' and md_read = '1') then
            md_data_out <= s_data_out;
        else
            md_data_out <= x"00000000";
        end if;
    end if;
end process;

end Behavioral;
