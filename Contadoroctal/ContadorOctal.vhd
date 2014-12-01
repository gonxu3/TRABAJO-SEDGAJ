----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:08:39 12/01/2014 
-- Design Name: 
-- Module Name:    ContadorOctal - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador5 is
	Port ( clk : in STD_LOGIC;
		cuenta : out STD_LOGIC_VECTOR (4 downto 0));
end contador5;

architecture Behavioral of contador5 is
	signal cuenta_int : std_logic_vector(4 downto 0) := (others => '0');
begin

	P1: process (clk)
	begin
		if (clk = '1' and clk'event) then cuenta_int <= cuenta_int+1;
		end if;
	end process;
	cuenta <= cuenta_int;
end Behavioral;
---------------------------------------------------

