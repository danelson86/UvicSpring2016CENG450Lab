-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
use work.MicroprocessorMisc.ALL;

  ENTITY cpu_top_level_tb IS
  END cpu_top_level_tb;

  ARCHITECTURE behavior OF cpu_top_level_tb IS 

  -- Component Declaration
          COMPONENT cpu_top_level
          PORT(
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
          END COMPONENT;
			 
	SIGNAL CLK	:	STD_LOGIC;
   SIGNAL RST	:	STD_LOGIC;
   SIGNAL InData	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL OutData	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
	signal FetchDataOutx: FetchData;
	signal CtrlDatax : DataBus;
	signal AluDatax : DataBus;
	signal MemDatax : DataBus;
	signal WbDatax : DataBus;
	signal dataHazardx :  std_logic := '0';
	signal BranchEventx : BranchData;
	
	constant clk_period : time := 20 ns;

BEGIN
 

	uut: cpu_top_level PORT MAP(
	CLK => CLK,
	RST => RST,
	InData=> InData,
	OutData => OutData,
	FetchDataOutx => FetchDataOutx,
	AluDatax => AluDatax,
	MemDatax => MemDatax,
	WbDatax => WbDatax,
	CtrlDatax => CtrlDatax,
	dataHazardx => dataHazardx,
	BranchEventx => BranchEventx
	
	);
 
	clk_process :process 
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;


  --  Test Bench Statements
     tb : PROCESS
     BEGIN
		  Rst <='0';
		InData <= X"0002";
		wait for clk_period*1.5;	
		   
		--in r0
		InData <= X"0002";
		wait for clk_period;	
		
		InData <= X"0002"; 
		wait for clk_period;	
		
		InData <= X"0003";
		wait for clk_period;	
		
		InData <= X"0001";
		wait for clk_period;	
		
		InData <= X"0005";
		wait for clk_period;

		InData <= X"0000";
		wait for clk_period;

		InData <= X"0001";
		wait for clk_period;

		InData <= X"0005";
		wait for clk_period;
		
		InData <= X"0000";
		wait for clk_period;



        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
