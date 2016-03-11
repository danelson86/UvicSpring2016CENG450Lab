--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MicroprocessConstants is

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

end MicroprocessConstants;

package body MicroprocessConstants is

end MicroprocessConstants;
