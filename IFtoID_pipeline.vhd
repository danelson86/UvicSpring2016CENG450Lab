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

--Note reset is BranchDetected
entity IFtoID_pipeline is
	Port(
			clk : in STD_LOGIC := '0';
			rst : in STD_LOGIC := '0';
			Instr : in STD_LOGIC_VECTOR(15 downto 0):= X"0000";
			InstrX : out STD_LOGIC_VECTOR(15 downto 0):= X"0000";
			PC_in : in STD_LOGIC_VECTOR(15 downto 0):= X"0000";
			PC_out : out STD_LOGIC_VECTOR(15 downto 0):= X"0000");
			
end IFtoID_pipeline;

architecture Behavioral of IFtoID_pipeline is

	component pipeline_16bit is
		Port(
			clk : in STD_LOGIC:= '0';
			rst : in STD_LOGIC := '0';
			input : in STD_LOGIC_VECTOR(15 downto 0):= X"0000"; 
			output : out STD_LOGIC_VECTOR(15 downto 0):= X"0000");
	end component;

signal reset : std_logic := '0';

signal Instr1X :  STD_LOGIC_VECTOR(15 downto 0):= X"0000";

signal PC1x :  STD_LOGIC_VECTOR(15 downto 0):= X"0000";

begin

	insrtPipe : pipeline_16bit port map (CLK,reset,Instr,Instr1X);

	pcPipe : pipeline_16bit port map (CLK,rst,PC_in,PC1X);
	
	InstrX <=  Instr1X when (rst = '0') else X"0000";
	PC_out <=  PC1x when (rst = '0') else X"0000";
 

end Behavioral;

