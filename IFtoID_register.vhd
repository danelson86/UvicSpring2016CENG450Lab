----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:37:36 02/26/2016 
-- Design Name: 
-- Module Name:    IFtoID_register - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity IFtoID_register is
	Port(
			clk : in STD_LOGIC;
			rst : in STD_LOGIC;
			instruction_in : in STD_LOGIC_VECTOR(15 downto 0);
			insturction_out : out STD_LOGIC_VECTOR(15 downto 0);
			PC_in : in STD_LOGIC_VECTOR(15 downto 0);
			PC_out : out STD_LOGIC_VECTOR(15 downto 0));
			
end IFtoID_register;

architecture Behavioral of IFtoID_register is


	component pipeline_16bit is
		Port(
			clk : in STD_LOGIC;
			rst : in STD_LOGIC;
			input : in STD_LOGIC_VECTOR(15 downto 0);
			output : out STD_LOGIC_VECTOR(15 downto 0));
	end component;


begin

	instrPipe : pipeline_16bit port map (clk,rst,instruction_in,insturction_out);
	pcPipe : pipeline_16bit port map (clk,rst,PC_in,PC_out);

end Behavioral;

