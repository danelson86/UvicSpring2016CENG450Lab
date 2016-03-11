----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:04:06 03/06/2016 
-- Design Name: 
-- Module Name:    BranchControl - Behavioral 
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
use work.MicroprocessConstants.ALL;

entity BranchControl is
	Port(
			CLK : in std_logic:= '0';
			INSTR : in  STD_LOGIC_VECTOR (15 downto 0):= X"0000";
			OPCODE :  in STD_LOGIC_VECTOR (6 downto 0):="0000000";
			CurrentPC : in STD_LOGIC_VECTOR (15 downto 0) := X"0000";
			disp1 : in std_logic_vector(8 downto 0):= "000000000";
			disps : in std_logic_vector(5 downto 0):= "000000";
			Data1 : in  STD_LOGIC_VECTOR (15 downto 0):= X"0000";
			BranchDetected : out std_logic := '0';
			BranchPC : out  STD_LOGIC_VECTOR (15 downto 0) := X"0000");
end BranchControl;

architecture Behavioral of BranchControl is

	signal z_flag :std_logic :='0';
	signal n_flag :std_logic :='0';
	signal n_bit :std_logic_vector(0 downto 0);
	signal BRR_PC : STD_LOGIC_VECTOR (15 downto 0):= X"0000";
	signal BR_PC : STD_LOGIC_VECTOR (15 downto 0):= X"0000";
	signal NB_PC : STD_LOGIC_VECTOR (15 downto 0):= X"0000";
	signal BranchPCt : STD_LOGIC_VECTOR (15 downto 0):= X"0000";
	signal BranchDetectedt : std_logic:='0';
begin
	n_bit <=  (Data1 (15 downto 15));
	BRR_PC <= std_logic_vector(signed(CurrentPC) + resize(signed(disp1), 16) );
	BR_PC  <= std_logic_vector( signed(Data1) + resize(signed(disps), 16) );
	NB_PC <= std_logic_vector( signed(CurrentPC) + 1 );

	n_flag <= '1' when ( n_bit = "1" and OPCODE = oTEST ) else
				 '0' when ( n_bit = "0" and OPCODE = oTEST );
				 
	
	z_flag <= '1' when (Data1 =  X"0000" and OPCODE = oTEST ) else 
				 '0' when (Data1 /=  X"0000" and OPCODE = oTEST  );
	
	
	BranchDetectedt <= '1'  when (OPCODE = oBRR ) else
							 '1'  when (OPCODE = oBRRN and n_flag = '1' ) else
						    '1'  when (OPCODE = oBRRZ and z_flag = '1') else 
							 '1'  when (OPCODE = oBR ) else 
							 '1'  when (OPCODE = oBRN  and  n_flag = '1') else 
							 '1'  when (OPCODE = oBRZ and z_flag = '1' ) else 
							 '1'  when (OPCODE = oBRSUB ) else
							 '1'  when (OPCODE = oRETURN ) else  '0';
	
	BranchPCt <= BRR_PC   when (OPCODE = oBRR ) else
					 BRR_PC   when (OPCODE = oBRRN and n_flag = '1' ) else
					 BRR_PC   when (OPCODE = oBRRZ and z_flag = '1') else 
					 BR_PC    when (OPCODE = oBR ) else 
					 BR_PC    when (OPCODE = oBRN and n_flag = '1') else 
					 BR_PC    when (OPCODE = oBRZ and z_flag = '1') else 
--					 Data_1   when (OPCODE = oBRSUB ) else --Need intermediate signal
					 Data1 when (OPCODE = oRETURN ) else  NB_PC;					
	process(clk)
	begin
		if falling_edge(clk) then
			BranchDetected <= BranchDetectedt;
		end if;
	end process;
	
	process(clk)
	begin
		if falling_edge(clk) then
			BranchPC <= BranchPCt;
		end if;
	end process;


end Behavioral;

