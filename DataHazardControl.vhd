------------------------------------------------------------------------------------
---- Company: 
---- Engineer: 
---- 
---- Create Date:    03:01:05 03/06/2016 
---- Design Name: 
---- Module Name:    DataHazardControl - Behavioral 
---- Project Name: 
---- Target Devices: 
---- Tool versions: 
---- Description: 
----
---- Dependencies: 
----
---- Revision: 
---- Revision 0.01 - File Created
---- Additional Comments: 
----
------------------------------------------------------------------------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use work.MicroprocessConstants.ALL;
--
--entity DataHazardControl is
--	Port(CLK : in std_logic:= '0';
--		  RST : in std_logic:= '0';
--		  Instr : in DecodedInstruction;
--		  DataIn : in DataBus;
--		  DataOut : out DataBus;
--		  dataHazard : out std_logic := '0');
--		  
--end DataHazardControl;
--
--
--architecture Behavioral of DataHazardControl is	
--
--	component DataControl is
--		Port(	CLK : in std_logic:= '0';
--				RST : in std_logic:= '0';
--				Instr : in DecodedInstruction;
--				InPortData  : in  STD_LOGIC_VECTOR (15 downto 0):= X"0000";
--				DataIn : in DataBus;
--				DataOut : out DataBus);
--	end component;
--	
--	
--	component BusyStatusRegister is
--	Port( rst : in std_logic := '0';
--			clk : in std_logic  := '0';
--			--read signals
--			rd_index1: in std_logic_vector(2 downto 0):= "000";
--			rd_data1: out std_logic  := '0';
--			rd_index2: in std_logic_vector(2 downto 0):= "000";
--			rd_data2: out std_logic  := '0';
--			
--			--write signals
--			wb_rqst_addr: in std_logic_vector(2 downto 0):= "000";
--			wb_rqst : in std_logic := '0';
--			wb_addr: in std_logic_vector(2 downto 0):= "000";
--			wb_enable: in std_logic := '0');
--	end component;
--	
--	--read signals
--	signal brd_index1:  std_logic_vector(2 downto 0):= "000";
--	signal brd_data1:  std_logic := '0';
--	signal brd_index2:  std_logic_vector(2 downto 0):= "000";
--	signal brd_data2:  std_logic := '0';
--	
--	signal dataHazardLocal : std_logic := '0';
--	
--	signal DataOutTemp : DataBus;
--
--	
--	 	
--begin
--	DataController : DataControl port map(CLK,RST,Instr,DataIn,DataOutTemp);
--
--BusyRegister : BusyStatusRegister port map (rst, clk, brd_index1, brd_data1, brd_index2, brd_data2, WbRqstAddrT, WbRqst,DataIn.Addr,DataIn.WrEn);	
--
--	brd_index1 <= Instr.ra when (Instr.OPCODE = oNAND) else
--					 Instr.ra when (Instr.OPCODE = oSHR) else
--					 Instr.ra when (Instr.OPCODE = oSHL) else
--					 Instr.ra when (Instr.OPCODE = oTEST) else
--					 Instr.ra when (Instr.OPCODE = oMOV) else
--					 Instr.ra when (Instr.OPCODE = oLOAD) else
--					 Instr.ra when (Instr.OPCODE = oSTORE) else
--					 Instr.ra when (Instr.OPCODE = oBR) else
--					 Instr.ra when (Instr.OPCODE = oBRN) else
--					 Instr.ra when (Instr.OPCODE = oBRZ) else
--					 Instr.ra when (Instr.OPCODE = oBRSUB) else
--					 Instr.ra when (Instr.OPCODE = oRETURN) else
--					 Instr.rb when (Instr.OPCODE = oMOV) else
--					 Instr.rb when (Instr.OPCODE = oLOAD) else
--					 Instr.rb when (Instr.OPCODE = oSTORE) else
--					 Instr.rb when (Instr.OPCODE = oOUT) else
--					 Instr.rb when (Instr.OPCODE = oNAND) else
--					 Instr.rb when (Instr.OPCODE = oMUL) else
--					 Instr.rb when (Instr.OPCODE = oSUB) else
--					 Instr.rb when (Instr.OPCODE = oADD) else "000";
--	
--	brd_index2 <= Instr.rc when (Instr.OPCODE = oMOV) else
--					 Instr.rc when (Instr.OPCODE = oLOAD) else
--					 Instr.rc when (Instr.OPCODE = oSTORE) else
--					 Instr.rc when (Instr.OPCODE = oOUT) else
--					 Instr.rc when (Instr.OPCODE = oNAND) else
--					 Instr.rc when (Instr.OPCODE = oMUL) else
--					 Instr.rc when (Instr.OPCODE = oSUB) else
--					 Instr.rc when (Instr.OPCODE = oADD) else "000";				 
--					 
--   DataOutTemp.WrEn  <=  '1' when (Instr.OPCODE =  oADD and dataHazardLocal= '0') else
--					 '1' when (Instr.OPCODE =  oSUB and dataHazardLocal= '0') else
--					 '1' when (Instr.OPCODE =  oMUL and dataHazardLocal= '0') else
--					 '1' when (Instr.OPCODE =  oNAND and dataHazardLocal= '0') else
--					 '1' when (Instr.OPCODE =  oSHL and dataHazardLocal= '0') else
--					 '1' when (Instr.OPCODE =  oSHR and dataHazardLocal= '0') else
--					 '1' when (Instr.OPCODE =  oIN and dataHazardLocal= '0') else
--					 '1' when (Instr.OPCODE =  oMOV and dataHazardLocal= '0') else
--					 '1' when (Instr.OPCODE =  oLOAD and dataHazardLocal= '0') else '0';
--					 
--   DataTemp.Addr <=  Instr.ra when (OPCODE =  oADD and dataHazardLocal= '0') else
--					 Instr.ra when (OPCODE =  oSUB and dataHazardLocal= '0') else
--					 Instr.ra when (OPCODE =  oMUL and dataHazardLocal= '0') else
--					 Instr.ra when (OPCODE =  oNAND and dataHazardLocal= '0') else
--					 Instr.ra when (OPCODE =  oSHL and dataHazardLocal= '0') else
--					 Instr.ra when (OPCODE =  oSHR and dataHazardLocal= '0') else
--					 Instr.ra when (OPCODE =  oIN and dataHazardLocal= '0') else
--					 Instr.ra when (OPCODE =  oMOV and dataHazardLocal= '0') else
--					 Instr.ra when (OPCODE =  oLOAD and dataHazardLocal= '0') else "000";
--	
--	DataTemp.Microcode  <= mADD when (OPCODE = oADD and dataHazardLocal= '0') else
--						mSUB when (OPCODE = oSUB and dataHazardLocal= '0') else
--						mMUL when (OPCODE = oMUL and dataHazardLocal= '0') else
--						mNAND when (OPCODE = oNAND and dataHazardLocal= '0') else
--						mSHL when (OPCODE = oSHL and dataHazardLocal= '0') else
--						mSHR when (OPCODE = oSHR and dataHazardLocal= '0') else
--						mLOAD when (OPCODE = oLOAD and dataHazardLocal= '0') else
--						mLOADIMM when (OPCODE = oLOADIMM and dataHazardLocal= '0') else
--						mMOV when (OPCODE = oMOV and dataHazardLocal= '0') else
--						mIN when (OPCODE = oIN and dataHazardLocal= '0') else
--						mOUT when (OPCODE = oOUT and dataHazardLocal= '0') else
--						mOUT when (OPCODE = oSTORE and dataHazardLocal= '0') else X"0";
--					 
--	dataHazardLocal <= '1' when(brd_data1 = '1' or brd_data2 = '1') else '0';
--	  
--
--
--	process(clk)
--	begin
--		if falling_edge(clk) then
--			dataHazard<= dataHazardLocal;
--		end if;
--	end process;
--
--end Behavioral;
--