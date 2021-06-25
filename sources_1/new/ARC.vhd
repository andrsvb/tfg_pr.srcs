----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.06.2021 18:45:06
-- Design Name: 
-- Module Name: ARC - Behavioral
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

entity ARC is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC);
end ARC;

architecture Behavioral of ARC is

component eIF IS
  PORT (
        if_clk, if_reset : in STD_LOGIC
  );
end component;

component rIF_ID IS
  PORT (
        fd_clk, fd_reset : in STD_LOGIC
  );
end component;

component eID IS
  PORT (
        id_clk, id_reset : in STD_LOGIC
  );
end component;

component rID_EX IS
  PORT (
        dx_clk, dx_reset : in STD_LOGIC
  );
end component;

component eEX IS
  PORT (
        ex_clk, ex_reset : in STD_LOGIC
  );
end component;

component rEX_MEM IS
  PORT (
        xm_clk, xm_reset : in STD_LOGIC
  );
end component;

component eMEM IS
  PORT (
        mem_clk, mem_reset : in STD_LOGIC
  );
end component;

component rMEM_WB IS
  PORT (
        mw_clk, mw_reset : in STD_LOGIC
  );
end component;

component eWB IS
  PORT (
        wb_clk, wb_reset : in STD_LOGIC
  );
end component;

begin

e_IF: eIF
  PORT MAP(
        if_clk => clk,
        if_reset => reset
  );

r_IF_ID: rIF_ID
  PORT MAP(
        fd_clk => clk,
        fd_reset => reset
  );

e_ID: eID
  PORT MAP(
        id_clk => clk,
        id_reset => reset
  );

r_ID_EX: rID_EX
  PORT MAP(
        dx_clk => clk,
        dx_reset => reset
  );

e_EX: eEX
  PORT MAP(
        ex_clk => clk,
        ex_reset => reset
  );

r_EX_MEM: rEX_MEM
  PORT MAP(
        xm_clk => clk,
        xm_reset => reset
  );

e_MEM: eMEM
  PORT MAP(
        mem_clk => clk,
        mem_reset => reset
  );

r_MEM_WB: rMEM_WB
  PORT MAP(
        mw_clk => clk,
        mw_reset => reset
  );

e_WB: eWB
  PORT MAP(
        wb_clk => clk,
        wb_reset => reset
  );

end Behavioral;