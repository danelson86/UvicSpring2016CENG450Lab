library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity control is
    Port ( 
			  --Control Unit Inputs
			  INSTR : in  STD_LOGIC_VECTOR (15 downto 0);
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;	
			  
			  --Incoming WB Signals
			  WB_Data : in  STD_LOGIC_VECTOR (15 downto 0);
			  WB_Addr : in  STD_LOGIC_VECTOR (2 downto 0);
			  wb_en : in std_logic;
			  WB_AddrX : out  STD_LOGIC_VECTOR (2 downto 0);
			
			  --Enable Flags
			  add_en : out std_logic;
			  sub_en : out std_logic;
			  mul_en : out std_logic;
			  nand_en : out std_logic;
			  shl_en : out std_logic;
			  shr_en : out std_logic;
			  load_en : out std_logic;
			  loadimm_en : out std_logic;
			  mov_en : out std_logic;
			  in_en :  out std_logic;
			  out_en : out std_logic;
			  store_en :out std_logic;
	
			  -- Branch Instruction Data in and Out
			  BranchTaken : out std_logic;
			  BranchPC : out  STD_LOGIC_VECTOR (15 downto 0);			  
			  CurrentPC : in STD_LOGIC_VECTOR (15 downto 0);
			  
			  --Data Signals
			  In_Data : in STD_LOGIC_VECTOR(15 downto 0);
			  Data_1 : out  STD_LOGIC_VECTOR (15 downto 0);
			  Data_2 : out  STD_LOGIC_VECTOR (15 downto 0));
end control;
 
architecture Behavioral of control is

----------------------------------------------- Constants for decoding OPCODE------------------------------------------------
	--A Format instructions
	constant ADD : std_logic_vector (6 downto 0) := "0000001";
	constant SUB : std_logic_vector (6 downto 0) := "0000010";
	constant MUL : std_logic_vector (6 downto 0) := "0000011";
	constant OP_NAND : std_logic_vector (6 downto 0) := "0000100";
	constant SHL : std_logic_vector (6 downto 0) := "0000101";
	constant SHR : std_logic_vector (6 downto 0) := "0000110";
	constant TEST : std_logic_vector (6 downto 0) := "0000111";
	constant OP_OUT : std_logic_vector (6 downto 0) := "0100000";
	constant OP_IN  : std_logic_vector (6 downto 0) := "0100001";
	
	--Format B Instructioms
	constant BRR : std_logic_vector (6 downto 0) := "1000000";
	constant BRRN : std_logic_vector (6 downto 0) := "1000010";
	constant BRRZ : std_logic_vector (6 downto 0) := "1000011";
	constant BR : std_logic_vector (6 downto 0) := "1000011";
	constant BRN : std_logic_vector (6 downto 0) := "1000100";
	constant BRZ : std_logic_vector (6 downto 0) := "1000101";
	constant BRSUB : std_logic_vector (6 downto 0) := "1000110";
	constant OP_RETURN : std_logic_vector (6 downto 0) := "1000111";
	
	--Format L Instructions
	constant LOAD :  std_logic_vector(6 downto 0):= "0010000";
	constant STORE :  std_logic_vector(6 downto 0):= "0010001";
	constant LOADIMM :  std_logic_vector(6 downto 0):= "0010010";
	constant MOV :  std_logic_vector(6 downto 0):= "0010011";
	
	
--------------------------------------Begin Register instantiation---------------------------------------------

	component register_file is
		port(
				rst : in std_logic;
				clk : in std_logic;
				--read signals
				rd_index1: in std_logic_vector(2 downto 0);
				rd_data1: out std_logic_vector(15 downto 0);
				rd_index2: in std_logic_vector(2 downto 0);
				rd_data2: out std_logic_vector(15 downto 0);
				--write signals
				wr_index: in std_logic_vector(2 downto 0);
				wr_data: in std_logic_vector(15 downto 0);
				wr_enable: in std_logic				
				);
	end component;
	
	-- Signals for MainRegister File
	signal Mrd_index1 : std_logic_vector(2 downto 0);
	signal Mrd_data1 : std_logic_vector(15 downto 0);
	signal Mrd_index2 : std_logic_vector(2 downto 0);
	signal Mrd_data2 : std_logic_vector(15 downto 0);
	signal Mwr_index : std_logic_vector(2 downto 0);
	signal Mwr_data : std_logic_vector(15 downto 0);
	signal Mwr_enable : std_logic;
	
	signal Srd_index1 : std_logic_vector(2 downto 0);
	signal Srd_data1 : std_logic_vector(15 downto 0);
	signal Srd_index2 : std_logic_vector(2 downto 0);
	signal Srd_data2 : std_logic_vector(15 downto 0);
	signal Swr_index : std_logic_vector(2 downto 0);
	signal Swr_data : std_logic_vector(15 downto 0);
	signal Swr_enable : std_logic;
	
	----------------------------------------- Format-A and common Fields -----------------------------------------------------------
	signal opcode :  STD_LOGIC_VECTOR (6 downto 0);
	signal ra :  STD_LOGIC_VECTOR (2 downto 0);
	signal rb :  STD_LOGIC_VECTOR (2 downto 0);
	signal rc :  STD_LOGIC_VECTOR (2 downto 0);
	signal c1 :  STD_LOGIC_VECTOR (15 downto 0);
	
	----------------------------------------Format B fields and intermediate signals ---------------------------------------------------
	signal n_flag : STD_LOGIC;
	signal z_flag : STD_LOGIC;
	signal n_bit : std_logic_vector(1 downto 1);
	signal sign_extended_disp1 : signed(15 downto 0);
	signal sign_extended_disps : signed(15 downto 0);
	signal signed_PC : signed (15 downto 0);
	signal BR_PC : std_logic_vector (15 downto 0);
	signal BRR_PC : std_logic_vector (15 downto 0);
	signal NB_PC : std_logic_vector (15 downto 0);
	
	--------------------------------------Format-L fields and itermediate signal---------------------------------------------------------

	signal imm :  STD_LOGIC_VECTOR (7 downto 0);
	signal m1 :std_logic;
	
	signal R7 : std_logic_vector (15 downto 0);
	
begin

	MainRegister : register_file port map(rst, clk, Mrd_index1, Mrd_data1, Mrd_index2, Mrd_data2, Mwr_index,Mwr_data,Mwr_enable);
	ShadowRegister : register_file port map(rst, clk, Srd_index1,Srd_data1,Srd_index2,Srd_data2, Swr_index, Swr_data,Swr_enable);
												
	--Break up the entire instruction into potential fields 
	opcode <= INSTR(15 downto 9);
	
	-------------------------------------Format A Intermediate Values 	---------------------------------------------------------------
	ra <= INSTR(8 downto 6);
	rb <= INSTR(5 downto 3);
	rc <= INSTR(2 downto 0);
	c1 <= std_logic_vector(resize(unsigned(INSTR(3 downto 0)), 15));
	
	-------------------------------------- Format B Intermediate Values ----------------------------------------------------------------
	n_bit <=  (rd_data1 (15 downto 15));
	sign_extended_disp1 <= resize(signed(INSTR(8 downto 0)), 16 );
	sign_extended_disps  <= resize(signed(INSTR(5 downto 0)), 16 );
	signed_PC <= signed(CurrentPC);
	
	BRR_PC <= std_logic_vector( to_unsigned(to_integer(signed_PC) + to_integer(sign_extended_disp1 ), 16 ));
	BR_PC  <= std_logic_vector( to_unsigned(to_integer(signed(rd_data1)) + to_integer(sign_extended_disps ), 16 )) ;
	NB_PC <= std_logic_vector( to_unsigned(to_integer(signed_PC) + 2 , 16));
	
	-------------------------------------Format L  Intermediate Values -----------------------------------------------------------------
	imm <= (INSTR(7 downto 0));
	m1 <= (INSTR(8));
	
	------------------------------------------- Write Operations ---------------------------------------------------------------------
	Mwr_index  <=  WB_Addr when ( wb_en = '1' ) else
					  ("111") when (OPCODE = BRSUB) else
					  ("111") when (OPCODE = LOADIMM) else "000";

	--Need to implement LOADIMM
	Mwr_data	 <=  WB_Data when ( wb_en = '1' ) else
					  NB_PC when (OPCODE = BRSUB) else X"0000";
				  

	Mwr_enable<= '1' when (wb_en = '1') else
					 '1' when (OPCODE = BRSUB) else
					 '1' when (OPCODE = LOADIMM) else '0';

	WB_AddrX <=  ra when (OPCODE =  ADD) else
					 ra when (OPCODE =  SUB) else
					 ra when (OPCODE =  MUL) else
					 ra when (OPCODE =  OP_NAND) else
					 ra when (OPCODE =  SHL) else
					 ra when (OPCODE =  SHR) else
					 ra when (OPCODE =  OP_IN) else
					 ra when (OPCODE =  MOV) else
					 ra when (OPCODE =  LOAD) else "000";
					 
					 
-------------------------------------------- Get data from Reg port 1 --------------------------------------------------------

	Mrd_index1<= ra when (OPCODE =  SHL) else 
					 ra when (OPCODE =  SHR) else 
					 ra when (OPCODE =  OP_OUT) else 
					 ra when (OPCODE =  OP_OUT) else 
					 ra when (OPCODE =  OP_NAND) else 
					 ra when (OPCODE =  STORE) else 
					 ra when (OPCODE =   BR) else 
					 ra when (OPCODE =  BRN) else 
					 ra when (OPCODE =  BRZ) else 
					 ra when (OPCODE =  LOAD) else 
					 ra when (OPCODE =  BRSUB) else 
					 rb when (OPCODE =  ADD) else 
					 rb when (OPCODE =  SUB) else 
					 rb when (OPCODE =  MUL) else 
					 rb when (OPCODE =  MOV) else 
					 "111" when (OPCODE =  OP_RETURN) else "000";
					 
	Data_1   <=  Mrd_data1 when (OPCODE = SHL)	else
					 Mrd_data1 when (OPCODE = SHR)	else
					 Mrd_data1 when (OPCODE = OP_OUT)	else
					 Mrd_data1 when (OPCODE = OP_NAND)	else
					 Mrd_data1 when (OPCODE = ADD)	else
					 Mrd_data1 when (OPCODE = MOV)	else
					 Mrd_data1 when (OPCODE = STORE)	else
					 Mrd_data1 when (OPCODE = MUL)	else
					 Mrd_data1 when (OPCODE = OP_RETURN)	else
					 In_Data   when (OPCODE = OP_IN)	else X"0000";
					 
	R7			<=  Mrd_data1 when (OPCODE = OP_RETURN)	else X"0000";
	

-------------------------------------------- Get data from Reg port 2 --------------------------------------------------------	
	Mrd_index2<= rb when (OPCODE = LOAD ) else
					 rb when (OPCODE = STORE ) else
					 rb when (OPCODE = OP_NAND ) else
					 rc when (OPCODE = ADD ) else
					 rc when (OPCODE = SUB ) else
					 rc when (OPCODE = MUL ) else "000";		 
	 
	Data_2   <=	 Mrd_data2 when (OPCODE = LOAD) else	 
					 Mrd_data2 when (OPCODE = STORE) else	
					 Mrd_data2 when (OPCODE = OP_NAND) else	
					 Mrd_data2 when (OPCODE =  ADD) else	
					 Mrd_data2 when (OPCODE = SUB) else	
					 Mrd_data2 when (OPCODE = MUL) else	
					 c1		  when (OPCODE = SHL) else	
					 c1		  when (OPCODE = SHR) else	X"0000";

	-------------------------------------------- Set enable bits  --------------------------------------------------------
	
	add_en 		<= '1' when (OPCODE = ADD) else '0';
	sub_en 		<= '1' when (OPCODE = SUB) else '0';
	mul_en 		<= '1' when (OPCODE = MUL) else '0';
	nand_en 		<= '1' when (OPCODE = OP_NAND) else '0';
	shl_en 		<= '1' when (OPCODE = SHL) else '0';
	shr_en 		<= '1' when (OPCODE = SHR) else '0';
	store_en 	<= '1' when (OPCODE = STORE) else '0';
	load_en 		<= '1' when (OPCODE = LOAD) else '0';
	loadimm_en	<= '1' when (OPCODE = LOADIMM) else '0';
	mov_en 		<= '1' when (OPCODE = MOV) else '0';
	out_en 		<= '1' when (OPCODE = OP_OUT) else '0';
	in_en 		<= '1' when (OPCODE = OP_IN) else '0';

----------------------------------------------- Format B Branch handling -------------------------------------------------------------------

	
	n_flag <= '1' when ( n_bit = "1" ) else '0';
	z_flag <= '1' when (Mrd_data1 =  X"0000") else '0';

	BranchPC <= BRR_PC  when (OPCODE = BRR ) else
					BRR_PC  when (OPCODE = BRRN and n_flag = '1' ) else
					BRR_PC  when (OPCODE = BRRZ and z_flag = '1') else 
					BR_PC   when (OPCODE = BR ) else 
					BR_PC   when (OPCODE = BRN and n_flag = '1') else 
					BR_PC   when (OPCODE = BRZ and z_flag = '1') else 
--					Data_1  when (OPCODE = BRSUB ) else --Need intermediate signal
					R7      when (OPCODE = OP_RETURN ) else NB_PC;
	
	BranchTaken <= '1'  when (OPCODE = BRR ) else
						'1'  when (OPCODE = BRRN and n_flag = '1' ) else
						'1'  when (OPCODE = BRRZ and z_flag = '1') else 
						'1'  when (OPCODE = BR ) else 
						'1'  when (OPCODE = BRN and n_flag = '1') else 
						'1'  when (OPCODE = BRZ and z_flag = '1') else 
						'1'  when (OPCODE = BRSUB ) else 
						'1'  when (OPCODE = OP_RETURN ) else '0';
					
					--Need to handle NOP insertion when branch taken....
					
-----------------------------RAW Hazard Detection and Prevention Data Forwarding and NOPS ------------------------------------------------------
-- Intermediate signals for both Data_1 and Data_2
-- ALU Fowards Data to Shadow Register
-- Read operation will have three case Read Main, Read Shadow, Generate NOP 
----------------------------------------------------------------------------------------------------

				
end Behavioral;

