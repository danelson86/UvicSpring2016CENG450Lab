LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY control_tb IS
END control_tb;
 
ARCHITECTURE behavior OF control_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control
    PORT(
         --Control Unit Inputs
			  INSTR : in  STD_LOGIC_VECTOR (15 downto 0);
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;	
			  
			  --Incoming WB Signals
			  WB_Data : in  STD_LOGIC_VECTOR (15 downto 0);
			  WB_Addr : in  STD_LOGIC_VECTOR (2 downto 0);
			  wb_en : in std_logic;
			  WB_AddrX : out  STD_LOGIC_VECTOR (2 downto 0);
			
			  
			  --Enable Process flags
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
			  Data_2 : out  STD_LOGIC_VECTOR (15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal INSTR : std_logic_vector(15 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
	signal WB_Data : STD_LOGIC_VECTOR (15 downto 0);
	signal  WB_Addr :  STD_LOGIC_VECTOR (2 downto 0);
	signal  wb_en :  std_logic;
	signal  WB_AddrX :   STD_LOGIC_VECTOR (2 downto 0);

 	--Outputs
	signal add_en :  std_logic;
	signal sub_en :  std_logic;
	signal mul_en :  std_logic;
	signal nand_en :  std_logic;
	signal shl_en :  std_logic;
	signal shr_en :  std_logic;
	signal load_en : std_logic;
	signal loadimm_en :  std_logic;
	signal mov_en : std_logic;
	signal in_en :   std_logic;
	signal out_en :  std_logic;
	signal store_en : std_logic;
	signal branchTaken : STD_LOGIC;
	signal BranchPC : STD_LOGIC_VECTOR (15 downto 0);
	signal CurrentPC : STD_LOGIC_VECTOR (15 downto 0);
	signal Data1 : STD_LOGIC_VECTOR (15 downto 0);
	signal Data2 : STD_LOGIC_VECTOR (15 downto 0);
	signal In_Data : STD_LOGIC_VECTOR (15 downto 0);

	
   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control PORT MAP (
          INSTR => INSTR,
          CLK => CLK,
          RST => RST,
			 WB_data => WB_data,
			 WB_Addr => WB_Addr,
			 wb_en => WB_en,
			 wb_addrx => WB_Addrx,
			 
			 add_en =>	add_en,
			 sub_en => sub_en,
			 mul_en => mul_en, 
			 nand_en => nand_en,
			 shl_en =>shl_en,
			 shr_en => shr_en, 
			 load_en => load_en ,
			 loadimm_en => loadimm_en,
			  mov_en => mov_en ,
			  in_en  => in_en,
			  out_en => out_en ,
			  store_en => store_en,
			  branchTaken => branchTaken,
			  BranchPC => BranchPC,
			  CurrentPC => BranchPC,
			  
			  
			In_Data => In_Data,
			  Data_1 => Data1,
			  Data_2 => data2
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      wait for CLK_period*10;
		RST <= '0'; 

		--Add r3,r2,r1
		CurrentPC <= X"000A";
		wait for CLK_period;	 
		
		INSTR <=   "1000000111111100"; --"0000111001000000"; --Test R1
		wait for CLK_period;	
		INSTR <= "1000000000000011"; --Branch relative by 3
		wait for CLK_period;	
		
		INSTR <= "1000000111111100"; -- Branch relative by -4 (i think)
		

      wait;
   end process;

END;
