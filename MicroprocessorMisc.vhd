
library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MicroprocessorMisc is

 type DataBus is
  record
	  Data1 :  STD_LOGIC_VECTOR (15 downto 0);
	  Data2 :  STD_LOGIC_VECTOR (15 downto 0);		  
	  Addr :  STD_LOGIC_VECTOR (3 downto 0);
	  Microcode :  std_logic_vector(3 downto 0); 
 end record;
 
 type DecodedInstruction is
	record
			OPCODE : STD_LOGIC_VECTOR (6 downto 0);			
			ra : STD_LOGIC_VECTOR (2 downto 0);
			rb :  STD_LOGIC_VECTOR (2 downto 0);
			rc :  STD_LOGIC_VECTOR (2 downto 0);
			c1 : STD_LOGIC_VECTOR (15 downto 0);
			imm : STD_LOGIC_VECTOR (7 downto 0);	
			m1 : std_logic;
			disp1 : std_logic_vector(8 downto 0);
			disps : std_logic_vector(5 downto 0);
	end record;
	
	type BranchData is 
	record
		detect :  std_logic;
		PC :   STD_LOGIC_VECTOR (15 downto 0);
	end record;
	
	type FetchData is 
	record
	  Instr :  STD_LOGIC_VECTOR (15 downto 0);
	  PC :  STD_LOGIC_VECTOR (15 downto 0);
	end record;
 
---A Format instructions
	constant oADD : std_logic_vector (6 downto 0) := "0000001";
	constant oSUB : std_logic_vector (6 downto 0) := "0000010";
	constant oMUL : std_logic_vector (6 downto 0) := "0000011";
	constant oNAND : std_logic_vector (6 downto 0) := "0000100";
	constant oSHL : std_logic_vector (6 downto 0) := "0000101";
	constant oSHR : std_logic_vector (6 downto 0) := "0000110";
	constant oTEST : std_logic_vector (6 downto 0) := "0000111";
	constant oOUT : std_logic_vector (6 downto 0) := "0100000";
	constant oIN  : std_logic_vector (6 downto 0) := "0100001";
	
	--Format B Instructioms
	constant oBRR : std_logic_vector (6 downto 0) := "1000000";
	constant oBRRN : std_logic_vector (6 downto 0) := "1000001";
	constant oBRRZ : std_logic_vector (6 downto 0) := "1000010";
	constant oBR : std_logic_vector (6 downto 0) := "1000011";
	constant oBRN : std_logic_vector (6 downto 0) := "1000100";
	constant oBRZ : std_logic_vector (6 downto 0) := "1000101";
	constant oBRSUB : std_logic_vector (6 downto 0) := "1000110";
	constant oRETURN : std_logic_vector (6 downto 0) := "1000111";
	
	--Format L Instructions
	constant oLOAD :  std_logic_vector(6 downto 0):= "0010000";
	constant oSTORE :  std_logic_vector(6 downto 0):= "0010001";
	constant oLOADIMM :  std_logic_vector(6 downto 0):= "0010010";
	constant oMOV :  std_logic_vector(6 downto 0):= "0010011";
			  
	--MicroCode
	constant mADD : std_logic_vector (3 downto 0) := "0001";
	constant mSUB : std_logic_vector (3 downto 0) := "0010";
	constant mMUL : std_logic_vector (3 downto 0) := "0011";
	constant mNAND : std_logic_vector (3 downto 0) := "0100";
	constant mSHL : std_logic_vector (3 downto 0) := "0101";
	constant mSHR : std_logic_vector (3 downto 0) := "0110";
	constant mLOAD : std_logic_vector (3 downto 0) := "0111";
	constant mLOADIMM : std_logic_vector (3 downto 0) := "1000";
	constant mMOV  : std_logic_vector (3 downto 0) := "1001";
	constant mIN : std_logic_vector (3 downto 0) := "1010";
	constant mOUT : std_logic_vector (3 downto 0) := "1011";
	constant mSTORE : std_logic_vector (3 downto 0) := "1100";
	
	constant NULL_ADDR : std_logic_vector (4 downto 0) := (others=> '0'); 
	constant NULL_MICRO : std_logic_vector (3 downto 0) := (others=> '0'); 
	constant NULL_DATA_BUS : DataBus :=(Data1=>(others=> '0'),Data2=> (others=> '0'), Addr=>(others=> '0'),Microcode => (others=> '0'));
	constant FETCH_NOP : FetchData := (INSTR=>(others=> '0'),PC=>(others=> '0'));


end MicroprocessorMisc; 

package body MicroprocessorMisc is


 
end MicroprocessorMisc;
