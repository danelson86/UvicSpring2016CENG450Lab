----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:33:29 03/01/2016 
-- Design Name: 
-- Module Name:    cpu_top_level - Behavioral 
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
use work.MicroprocessorMisc.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cpu_top_level is
	Port(
			CLK : in  STD_LOGIC := '0';
			RST : in  STD_LOGIC:= '0';
			InData : in std_logic_vector(15 downto 0);
			FetchDataOutx: out FetchData;
			CtrlDatax : out  DataBus;
			AluDatax : out DataBus;
			MemDatax : out DataBus;
			WbDatax : out DataBus;
			OutData : out  std_logic_vector(15 downto 0);
			BranchEventx : out BranchData;
			dataHazardx : out  std_logic := '0' );
end cpu_top_level;

architecture Behavioral of cpu_top_level is

	component instruction_fetch is
		 Port ( CLK : in  STD_LOGIC:= '0';
				  RST : in  STD_LOGIC := '0';
				  BranchEvent : in BranchData := (detect => '0', PC => X"0000");
				  dataHazard : in STD_LOGIC:= '0';
				  FetchDataOut : out FetchData:=(PC => X"0000", INSTR => X"0000"));
	end component;

	component Control is 
		Port(		CLK : in std_logic:= '0';
					RST : in std_logic:= '0';
					FetchDataIn: in FetchData:=(PC => X"0000", INSTR => X"0000");
					InPortData  : in  STD_LOGIC_VECTOR (15 downto 0):= X"0000";
					DataIn : in DataBus := NULL_DATA_BUS;
					DataOut : out DataBus:= NULL_DATA_BUS;
					dataHazard : out std_logic := '0';
					BranchEvent : out BranchData:= (detect => '0', PC => X"0000"));
	end component;
 
	component ALU is
    Port ( 			
			CLK : in STD_LOGIC := '0';
			RST : in STD_LOGIC := '0';
			DataIn : in DataBus:= NULL_DATA_BUS;
			DataOut : out DataBus:=NULL_DATA_BUS);
	end component;
	
	component memory is
	 Port (  CLK : in  STD_LOGIC := '0';
				RST : in  STD_LOGIC := '0';
				DataIn : in DataBus:=NULL_DATA_BUS;
				DataOut : out DataBus:= NULL_DATA_BUS);
	end component;
	
	component writeback is
			Port( CLK : in std_logic;
					RST : in std_logic := '0';
					DataIn : in DataBus:= NULL_DATA_BUS;
					DataOut : out DataBus:= NULL_DATA_BUS;
					OutDataX : out std_logic_vector(15 downto 0));			
	end component;
	
	signal FetchDataOut: FetchData := FETCH_NOP;
	signal CtrlData : DataBus:= NULL_DATA_BUS;
	signal AluData : DataBus:= NULL_DATA_BUS;
	signal MemData : DataBus:= NULL_DATA_BUS;
	signal WbData : DataBus:= NULL_DATA_BUS;
	signal dataHazard :  std_logic := '0';
	signal BranchEvent : BranchData:= (detect => '0', PC => X"0000");

begin
	IF_Stage : instruction_fetch port map (CLK,RST,BranchEvent,dataHazard,FetchDataOut);
	ID_Stage : Control port map (CLK,RST, FetchDataOut,InData,WBData,CtrlData,dataHazard, BranchEvent );
	EX_Stage : ALU port map (CLK,RST,CtrlData,AluData);
	MEM_Stage : memory port map(CLK, RST, AluData, MemData);
	WB_Stage : writeback port map(CLK,RST,MemData,WbData, OutData);
	
	FetchDataOutx <= FetchDataOut;
	CtrlDatax <= CtrlData;
	dataHazardx <= dataHazard;
	BranchEventx <= BranchEvent;
	AluDatax <= AluData;
	MemDatax <= MemData; 
	WbDatax <=WbData;
	
end Behavioral;

