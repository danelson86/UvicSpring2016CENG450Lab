library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.MicroprocessorMisc.ALL;

entity Control is
	Port(		CLK : in std_logic:= '0';
				RST : in std_logic:= '0';
				FetchDataIn: in FetchData :=(Instr=>X"0000",PC=>X"0000");
				InPortData  : in  STD_LOGIC_VECTOR (15 downto 0):= X"0000";
				DataIn : in DataBus := NULL_DATA_BUS;
				DataOut : out DataBus := NULL_DATA_BUS;
				dataHazard : out std_logic := '0';
				BranchEvent : out BranchData :=(detect=>'1', PC =>X"0000"));
end Control;
 
architecture Behavioral of Control is
--------------------------------------Main Register ----------------------------------------------------------------
component register_file is
		port(
				rst : in std_logic;
				clk : in std_logic;
				--read signals
				rd_index1: in std_logic_vector(3 downto 0);
				rd_data1: out std_logic_vector(15 downto 0);
				rd_index2: in std_logic_vector(3 downto 0);
				rd_data2: out std_logic_vector(15 downto 0);
				--write signals
				wr_index: in std_logic_vector(3 downto 0);
				wr_data: in std_logic_vector(15 downto 0));
	end component;
	
	-- Signals for Register File
	signal rd_index1 : std_logic_vector(3 downto 0);
	signal rd_data1 : std_logic_vector(15 downto 0);
	signal rd_index2 : std_logic_vector(3 downto 0);
	signal rd_data2 : std_logic_vector(15 downto 0);
	signal wr_index : std_logic_vector(3 downto 0);
	signal wr_data : std_logic_vector(15 downto 0);
----------------------------------------- Dependency Detection -----------------------------------------------------------
	component DependencyDetector is
	Port (CLK:std_logic;
			RST : std_logic;
			rd_index1 : in std_logic_vector( 3 downto 0);
			rd_index2: in std_logic_vector( 3 downto 0);
			WbAddr : in std_logic_vector( 3 downto 0);
			RqstAddr: in std_logic_vector( 3 downto 0);
			dataHazard : out std_logic);
	end component;
--------------------------------------------Signals for Data Control----------------------------------------------------------------------------
	signal OPCODE : STD_LOGIC_VECTOR (6 downto 0);			
	signal ra : STD_LOGIC_VECTOR (2 downto 0);
	signal rb :  STD_LOGIC_VECTOR (2 downto 0);
	signal rc :  STD_LOGIC_VECTOR (2 downto 0);
	signal c1 : STD_LOGIC_VECTOR (15 downto 0);
	signal imm : STD_LOGIC_VECTOR (7 downto 0);	
	signal m1 : std_logic;
	signal disp1 : std_logic_vector(8 downto 0);
	signal disps : std_logic_vector(5 downto 0);
-----------------------------------------------Signals for Branch Control ---------------------------------------------------
	signal z_flag :std_logic :='0';
	signal n_flag :std_logic :='0';
	signal n_bit :std_logic_vector(15 downto 15);
	signal BRR_PC : STD_LOGIC_VECTOR (15 downto 0):= X"0000";
	signal BR_PC : STD_LOGIC_VECTOR (15 downto 0):= X"0000";
	signal NB_PC : STD_LOGIC_VECTOR (15 downto 0):= X"0000";
	signal BranchEventTemp : BranchData;
	signal DataOutTemp : DataBus;
	signal dataHazardLocal : std_logic := '0';
	signal CLKt : std_logic := '0';	
	
begin

	MainRegister: register_file port map(rst, clk, rd_index1,rd_data1,rd_index2,rd_data2, wr_index,wr_data);
	DataHazardDetector : DependencyDetector port map(CLK, rst, rd_index1, rd_index2,DataIn.Addr,DataOutTemp.Addr, dataHazardLocal);
	dataHazard<= dataHazardLocal;
	
	--Decode Instruction
	opcode <= FetchDataIn.INSTR(15 downto 9);
	ra <= FetchDataIn.INSTR(8 downto 6);
	rb <= FetchDataIn.INSTR(5 downto 3);
	rc <= FetchDataIn.INSTR(2 downto 0);
	c1 <= std_logic_vector(resize(unsigned(FetchDataIn.INSTR(3 downto 0)), 16));
	imm <= (FetchDataIn.INSTR(7 downto 0));
	m1 <= (FetchDataIn.INSTR(8));
	disp1 <= FetchDataIn.INSTR(8 downto 0);
	disps  <= FetchDataIn.INSTR(5 downto 0);
	
------------------------------------------- Write MainReg Operations ---------------------------------------------------------------------
	
	wr_index  <= 		 ("1111") when (OPCODE = oBRSUB) else
							 ("1111") when (OPCODE = oLOADIMM) else DataIn.addr;

	wr_data	 <= 		 NB_PC when (OPCODE = oBRSUB) else DataIn.Data1;
							 	 
--------------------------------------------Read Main Reg Port1  --------------------------------------------------------

	rd_index1   <=		 ('1' & ra) when (OPCODE =  oSHL) else 
							 ('1' & ra) when (OPCODE =  oSHR) else 
							 ('1' & ra) when (OPCODE =  oOUT) else 
							 ('1' & ra) when (OPCODE =  oNAND) else 
							 ('1' & ra) when (OPCODE =  oSTORE) else 
							 ('1' & ra) when (OPCODE =  oTEST) else 
							 ('1' & ra) when (OPCODE =   oBR) else 
							 ('1' & ra) when (OPCODE =  oBRN) else 
							 ('1' & ra) when (OPCODE =  oBRZ) else 
							 ('1' & ra) when (OPCODE =  oLOAD) else 
							 ('1' & ra) when (OPCODE =  oBRSUB) else 
							 ('1' & rb) when (OPCODE =  oADD) else 
							 ('1' & rb) when (OPCODE =  oSUB) else 
							 ('1' & rb) when (OPCODE =  oMUL) else 
							 ('1' & rb) when (OPCODE =  oMOV) else 
							 "1111" when (OPCODE =  oRETURN) else "0000";
							 			 
DataOutTemp.Data1  <=	InPortData   when (OPCODE = oIN)	else
								NB_PC        when (OPCODE = oBRSUB)	else rd_data1;							 		 				 	

-------------------------------------------- Read Main Reg Port2  --------------------------------------------------------	
	rd_index2 <= 		 ('1' & rc) when (OPCODE = oADD ) else
							 ('1' & rc) when (OPCODE = oSUB ) else
							 ('1' & rc) when (OPCODE = oMUL ) else 
							 ('1' & rb) when (OPCODE = oLOAD ) else
							 ('1' & rb) when (OPCODE = oSTORE ) else
							 ('1' & rb) when (OPCODE = oNAND ) else "0000";
							 
DataOutTemp.Data2  <=	c1  when (OPCODE = oSHL) else	
							   c1	 when (OPCODE = oSHR) else	rd_data2;							 
	 
------------------------------------WB Addr, Wb enable, and microcode ----------------------------------------------------------
					 
   DataOutTemp.Addr <=   ('1' & ra) when (OPCODE =  oADD ) else
								 ('1' & ra) when (OPCODE =  oSUB ) else
								 ('1' & ra) when (OPCODE =  oMUL ) else
								 ('1' & ra) when (OPCODE =  oNAND) else
								 ('1' & ra) when (OPCODE =  oSHL ) else
								 ('1' & ra) when (OPCODE =  oSHR ) else
								 ('1' & ra) when (OPCODE =  oIN  ) else
								 ('1' & ra) when (OPCODE =  oMOV ) else
								 ('1' & ra) when (OPCODE =  oLOAD) else
								 ( "1111" ) when (OPCODE =  oBRSUB) else "0000";
				
	DataOutTemp.Microcode  <= 	mADD when (OPCODE = oADD ) else
										mSUB when (OPCODE = oSUB ) else
										mMUL when (OPCODE = oMUL ) else
										mNAND when(OPCODE = oNAND) else
										mSHL when (OPCODE = oSHL ) else
										mSHR when (OPCODE = oSHR ) else
										mLOAD when(OPCODE = oLOAD) else
										mLOADIMM when (OPCODE = oLOADIMM ) else
										mMOV when (OPCODE = oMOV ) else
										mIN when  (OPCODE = oIN  ) else
										mOUT when (OPCODE = oOUT ) else
										mOUT when (OPCODE = oSTORE) else NULL_MICRO;
							   
---------------------------------------------------------Branch Handling ---------------------------------------------------------------------------
	n_bit <=  (DataOutTemp.Data1 (15 downto 15));
	BRR_PC <= std_logic_vector(signed(FetchDataIn.PC) + resize(signed(disp1), 16)-1);
	BR_PC  <= std_logic_vector( signed(DataOutTemp.Data1) + resize(signed(disps), 16) );
	NB_PC <= std_logic_vector( signed(FetchDataIn.PC) + 1 );

	n_flag <= '1' when ( n_bit = "1" and OPCODE = oTEST ) else
				 '0' when ( n_bit = "0" and OPCODE = oTEST );
				 
	z_flag <= '1' when (DataOutTemp.Data1 =  X"0000" and OPCODE = oTEST ) else 
				 '0' when (DataOutTemp.Data1 /=  X"0000" and OPCODE = oTEST  );
	
	BranchEventTemp.detect <= '1'  when (OPCODE = oBRR ) else
								  	  '1'  when (OPCODE = oBRRN and n_flag = '1' ) else
									  '1'  when (OPCODE = oBRRZ and z_flag = '1') else 
									  '1'  when (OPCODE = oBR ) else 
									  '1'  when (OPCODE = oBRN  and  n_flag = '1') else 
									  '1'  when (OPCODE = oBRZ and z_flag = '1' ) else 
									  '1'  when (OPCODE = oBRSUB ) else
									  '1'  when (OPCODE = oRETURN ) else '0';
	
	BranchEventTemp.PC <= BRR_PC   when (OPCODE = oBRR ) else
								 BRR_PC   when (OPCODE = oBRRN and n_flag = '1' ) else
								 BRR_PC   when (OPCODE = oBRRZ and z_flag = '1') else 
								 BR_PC    when (OPCODE = oBR ) else 
								 BR_PC    when (OPCODE = oBRN and n_flag = '1') else 
								 BR_PC    when (OPCODE = oBRZ and z_flag = '1') else 
								 BR_PC    when (OPCODE = oBRSUB ) else
								 DataOutTemp.Data1   when (OPCODE = oRETURN ) else NB_PC;					
	
----------------------------------------------Synchronous Events -------------------------------------------------------------------------------------
	
	process(clk)
	begin
		if falling_edge(clk) then
			BranchEvent <= BranchEventTemp;
		end if;
	end process;
	
	process(CLK,dataHazardLocal) 
	begin
		if rising_edge(CLK) then  
			if(dataHazardLocal = '0') then
				DataOut<= DataOutTemp;
			else
				DataOut <= NULL_DATA_BUS;
			end if; 
		end if;
	end process;
	
end Behavioral;
 
