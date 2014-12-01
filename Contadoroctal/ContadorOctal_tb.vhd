--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:18:46 12/01/2014
-- Design Name:   
-- Module Name:   C:/Users/Gonzalo/Desktop/TRABAJO SED/Contadoroctal/ContadorOctal_tb.vhd
-- Project Name:  Contadoroctal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: contador5
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
ENTITY contador5_tb_vhd IS
END contador5_tb_vhd;
ARCHITECTURE behavior OF contador5_tb_vhd IS
-- Component Declaration for the Unit Under Test (UUT)
COMPONENT contador5
PORT(
clk : IN std_logic;
cuenta : OUT std_logic_vector(4 downto 0)
);
END COMPONENT;
--Inputs
SIGNAL clk : std_logic := '0';
--Outputs
SIGNAL cuenta : std_logic_vector(4 downto 0) := (others => '0');
BEGIN
-- Instantiate the Unit Under Test (UUT)
uut: contador5 PORT MAP(
		clk => clk,
		cuenta => cuenta
	);
	tb : PROCESS
	BEGIN
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	END PROCESS;
END;
-----------
