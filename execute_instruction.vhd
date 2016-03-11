----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:35:47 02/26/2016 
-- Design Name: 
-- Module Name:    execute_instruction - Behavioral 
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

entity execute_instruction is
	Port(
			CLK : in STD_LOGIC;
			RST : in STD_LOGIC; 
			
			Data_1_IN : in 	STD_LOGIC_VECTOR (15 downto 0);
			Data_2_IN  : in 	STD_LOGIC_VECTOR (15 downto 0);

			Data_1_OUT : in 	STD_LOGIC_VECTOR (15 downto 0);
			Data_2_OUT  : in 	STD_LOGIC_VECTOR (15 downto 0);
			
			WB_ADDR_IN : in	STD_LOGIC_VECTOR (3 downto 0);
			WB_ADDR_OUT :  out	STD_LOGIC_VECTOR (3 downto 0);	
			
			OPCODE_IN : in	STD_LOGIC_VECTOR (6 downto 0);
			OPCODE_OUT : in	STD_LOGIC_VECTOR (6 downto 0);

			);
			 
end execute_instruction;

architecture Behavioral of execute_instruction is


	--ALU Wires
	signal alu_result : STD_LOGIC_VECTOR (15 downto 0); -- send dat to result_out
	signal alu_in1 : STD_LOGIC_VECTOR (15 downto 0);
	signal alu_in2 : STD_LOGIC_VECTOR (15 downto 0);
	signal OPCODE_TO_ALU : STD_LOGIC_VECTOR (6 downto 0);



begin 

end Behavioral;

