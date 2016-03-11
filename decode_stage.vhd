----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:25:03 02/27/2016 
-- Design Name: 
-- Module Name:    decode_instruction - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decode_stage is
	Port(		  
			INSTR : in  STD_LOGIC_VECTOR (15 downto 0);
			CLK : in  STD_LOGIC;
			RST : in  STD_LOGIC;	

			CurrentPC : in STD_LOGIC_VECTOR (6 downto 0);
			BranchTaken : out std_logic;
			BranchPC : out  STD_LOGIC_VECTOR (6 downto 0);
			
			ALUMode : out  STD_LOGIC_VECTOR (2 downto 0);
			ALUIN2Src : out  STD_LOGIC_VECTOR (1 downto 0);
			ALU_Dest : out STD_LOGIC_VECTOR (1 downto 0);
			ImmData :out STD_LOGIC_VECTOR (15 downto 0);

			RegReadData1 : out STD_LOGIC_VECTOR (15 downto 0);
			RegReadData1 : out STD_LOGIC_VECTOR (15 downto 0);
			
		   MemMode : out STD_LOGIC_VECTOR (1 downto 0);
		   Mem_Dest_Addr : out STD_LOGIC_VECTOR (2 downto 0);
		   Mem_Src_Addr : out STD_LOGIC_VECTOR (2 downto 0);
			
			--Register Writeback data
			RegWriteData : in STD_LOGIC_VECTOR (15 downto 0)
	);
end decode_stage;     

architecture Behavioral of decode_stage is

	------------------------------Begin Control -----------------------------------------------
	component control is
	    Port ( 
				  --Control Unit Inputs
				  INSTR : in  STD_LOGIC_VECTOR (15 downto 0);
				  CLK : in  STD_LOGIC;
				  RST : in  STD_LOGIC;			   
				  
				  --Outputs for ALU use
				  ALUMode : out  STD_LOGIC_VECTOR (2 downto 0);
				  ALUIN2Src : out  STD_LOGIC_VECTOR (1 downto 0);
				  ALU_Dest : out STD_LOGIC_VECTOR (1 downto 0);
				  
				  ImmData : out  STD_LOGIC_VECTOR (15 downto 0);

				  --Outputs for MEM us
				  MemMode : out STD_LOGIC_VECTOR (1 downto 0);
				  Mem_Dest_Addr : out STD_LOGIC_VECTOR (2 downto 0);
				  Mem_Src_Addr : out STD_LOGIC_VECTOR (2 downto 0);
				  M1 : out STD_LOGIC_VECTOR;
				  
				  --Address Index By 
				  ReadIndex1 : out STD_LOGIC_VECTOR (2 downto 0);
				  ReadIndex2 : out STD_LOGIC_VECTOR (2 downto 0);
				  WriteIndex : out STD_LOGIC_VECTOR (2 downto 0);
				  WriteEnable : out STD_LOGIC);
	end component;

		signal ALUMode_intern :  STD_LOGIC_VECTOR (2 downto 0);
		signal ALUIN2Src_intern :  STD_LOGIC_VECTOR (1 downto 0);
		signal ALU_Dest_intern :  STD_LOGIC_VECTOR (1 downto 0);

		signal ImmData :   STD_LOGIC_VECTOR (15 downto 0);

		--Outputs for MEM us
		signal  MemMode_intern :  STD_LOGIC_VECTOR (1 downto 0);
		signal  Mem_Dest_Addr_intern :  STD_LOGIC_VECTOR (2 downto 0);
		signal Mem_Src_Addr_intern :  STD_LOGIC_VECTOR (2 downto 0);
		signal  M1 : STD_LOGIC_VECTOR;

		signal ReadIndex1 :  STD_LOGIC_VECTOR (2 downto 0);
		signal ReadIndex2 :  STD_LOGIC_VECTOR (2 downto 0);
		signal WriteIndex :  STD_LOGIC_VECTOR (2 downto 0);
		signal WriteEnable :  STD_LOGIC;
			
	------------------------------End Control -----------------------------------------------
	
	------------------------------Begin Branch Control -----------------------------------------------
		
	component branch_handler is
	Port(
			--Inputs
			CLK : in std_logic;
			INSTR : in std_logic_vector( 15 downto 0);
			
			current_pc : in  std_logic_vector(6 downto 0);
			addr_in : in  std_logic_vector(15 downto 0);
			r7_in  : in  std_logic_vector(15 downto 0);
			
			--Outputs
			BranchTaken : out  std_logic;
			next_pc	: out  std_logic_vector(6 downto 0);
			r7_out  : out  std_logic_vector(15 downto 0));
			
	end component;	
	
	signal current_pc_intern : std_logic_vector ( 6 downto 0); 
	signal addr_in_intern :std_logic_vector(15 downto 0);
	signal r7_in_intern  : std_logic_vector(15 downto 0);

	signal BranchTaken_intern : std_logic;
	signal next_pc_intern : std_logic_vector (6 downto 0);
	signal r7_out_intern : std_logic_vector(15 downto 0);
	
	------------------------------End Branch Control -----------------------------------------------

begin
	
	

	ALUMode <=  ALUMode_intern;
	ALUIN2Src <= ALUIN2Src_intern; 
	ALU_Dest <= ALU_Dest_intern;
	ImmData <= ImmData_intern;
	
	current_pc_intern <= CurrentPC;
	BranchTaken <= BranchTaken_intern;
	BranchPC <= next_pc;
	
	Mem_Dest_Addr <= Mem_Dest_Addr_intern;
	Mem_Src_Addr <= Mem_Src_Addr_intern;
	MemMode <= MemMode_intern;
	
		--Memory instructions introduce a clear data hazard and a challenge to this design
	-- For example and instruction could arrive and set the write index when the MOV
	-- operation is trying to write back to the register 
--					case m1 is
--					when '1' => 
--						imm_temp_data(15 downto 8) <= imm;
--					when others =>
--						imm_temp_data(7 downto 0) <= imm;
--						wr_data <= imm_temp_data;
--						wr_index <= "111";
--				end case;
--				
--			--MOV



end Behavioral;

